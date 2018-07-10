package pprof

import (
	"strings"
	"net/http/pprof"

	"github.com/labstack/echo"
)

// 由于需要"/debug/pprof/"匹配URL.path前缀，如果有RemoveTrailingSlash()，需在此之前加pprof
// e.Pre(pprof.Serve()) 或 e.Use(pprof.Serve())
func Serve() echo.MiddlewareFunc {
	return func(next echo.HandlerFunc) echo.HandlerFunc {
		return func(c echo.Context) error {
			path := c.Request().URL.Path
			if strings.HasPrefix(path, "/debug/pprof/") {
				pprof.Index(c.Response(), c.Request())
			} else {
				return next(c)
			}

			return nil
		}
	}
}
