package metrics

import (
	"net"
	"strconv"
	"strings"
	"time"

	"github.com/labstack/echo"
	"github.com/rcrowley/go-metrics"
)

func MetricsFunc(m *Metrics) echo.MiddlewareFunc {
	return func(next echo.HandlerFunc) echo.HandlerFunc {
		return func(c echo.Context) error {
			req := c.Request()
			res := c.Response()
			domain := strings.Replace(req.Host, ".", "_", -1)

			//ReqQps
			meter := metrics.GetOrRegisterMeter(m.withPrefix("domain."+domain+".ReqQps"), m.opts.Registry)
			meter.Mark(1)

			//BytesIn
			bytesIn, err := strconv.ParseInt(req.Header.Get(echo.HeaderContentLength), 10, 0)
			if err == nil {
				meter = metrics.GetOrRegisterMeter(m.withPrefix("domain."+domain+".BytesIn"), m.opts.Registry)
				meter.Mark(bytesIn)
			}

			start := time.Now()
			if err := next(c); err != nil {
				c.Error(err)
			}
			stop := time.Now()
			latency := stop.Sub(start)
			status := res.Status

			//Latency
			h := metrics.GetOrRegisterHistogram(m.withPrefix("domain."+domain+"."+strconv.Itoa(status)+".Latency"), m.opts.Registry,
				metrics.NewExpDecaySample(1028, 0.015))
			h.Update(latency.Nanoseconds())

			//BytesOut
			meter = metrics.GetOrRegisterMeter(m.withPrefix("domain."+domain+"."+strconv.Itoa(status)+".BytesOut"), m.opts.Registry)
			meter.Mark(res.Size)

			return nil
		}
	}
}

type Metrics struct {
	opts Options
}

//NewMetrics creates a new Metrics
func NewMetrics(options ...Option) *Metrics {
	opts := applyOptions(options...)
	return &Metrics{opts: opts}
}

func (m *Metrics) withPrefix(s string) string {
	return m.opts.Prefix + s
}

func (m *Metrics) MemStats() {
	metrics.RegisterRuntimeMemStats(m.opts.Registry)
	go metrics.CaptureRuntimeMemStats(m.opts.Registry, 5*time.Second)
}

// Log reports metrics into logs.
//
// m.Log(30*time.Second, e.Logger)
//
func (m *Metrics) Log(freq time.Duration, l metrics.Logger) {
	go metrics.Log(m.opts.Registry, freq, l)
}

// Graphite reports metrics into graphite.
//
// 	addr, _ := net.ResolveTCPAddr("tcp", "127.0.0.1:2003")
//  m.Graphite(10e9, "metrics", addr)
//
func (m *Metrics) Graphite(freq time.Duration, prefix string, addr *net.TCPAddr) {
	go metrics.Graphite(m.opts.Registry, freq, prefix, addr)
}
