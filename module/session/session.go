package session

import (
	"github.com/labstack/echo"

	es "github.com/hb-go/echo-web/middleware/session"

	. "github.com/hb-go/echo-web/conf"
)

func Session() echo.MiddlewareFunc {
	switch Conf.SessionStore {
	case REDIS:
		store, err := es.NewRedisStore(10, "tcp", Conf.Redis.Server, Conf.Redis.Pwd, []byte("secret-key"))
		if err != nil {
			panic(err)
		}
		return es.New("sid", store)
	case FILE:
		store := es.NewFilesystemStore("", []byte("secret-key"))
		return es.New("sid", store)
	default:
		store := es.NewCookieStore([]byte("secret-key"))
		return es.New("sid", store)
	}
}
