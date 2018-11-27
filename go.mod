module github.com/hb-go/echo-web

require (
	github.com/BurntSushi/toml v0.3.1
	github.com/boj/redistore v0.0.0-20180917114910-cd5dcc76aeff
	github.com/bradfitz/gomemcache v0.0.0-20180710155616-bc664df96737
	github.com/codahale/hdrhistogram v0.0.0-20161010025455-3a0bb77429bd // indirect
	github.com/dchest/captcha v0.0.0-20170622155422-6a29415a8364
	github.com/denisenkom/go-mssqldb v0.0.0-20181014144952-4e0d7dc8888f // indirect
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/erikstmartin/go-testdb v0.0.0-20160219214506-8d10e4a1bae5 // indirect
	github.com/flosch/pongo2 v0.0.0-20180809100617-24195e6d38b0
	github.com/go-sql-driver/mysql v1.4.1
	github.com/gomodule/redigo v2.0.0+incompatible
	github.com/gorilla/context v1.1.1
	github.com/gorilla/mux v1.6.2 // indirect
	github.com/gorilla/sessions v1.1.3
	github.com/hb-go/gorm v1.0.1
	github.com/hb-go/json v0.0.0-20170624084651-15ef86c8b796
	github.com/influxdata/influxdb v1.7.1 // indirect
	github.com/influxdata/platform v0.0.0-20181121005014-21e6c7bdce0d // indirect
	github.com/jinzhu/gorm v1.9.1 // indirect
	github.com/jinzhu/inflection v0.0.0-20180308033659-04140366298a // indirect
	github.com/jinzhu/now v0.0.0-20181116074157-8ec929ed50c3 // indirect
	github.com/juju/errors v0.0.0-20181118221551-089d3ea4e4d5 // indirect
	github.com/juju/loggo v0.0.0-20180524022052-584905176618 // indirect
	github.com/juju/testing v0.0.0-20180920084828-472a3e8b2073 // indirect
	github.com/labstack/echo v0.0.0-20181123063703-c7eb8da9ec73
	github.com/labstack/gommon v0.2.7
	github.com/mattn/go-sqlite3 v1.10.0 // indirect
	github.com/opentracing/basictracer-go v1.0.0 // indirect
	github.com/opentracing/opentracing-go v1.0.2
	github.com/prometheus/client_golang v0.9.1
	github.com/prometheus/common v0.0.0-20181120120127-aeab699e26f4 // indirect
	github.com/rcrowley/go-metrics v0.0.0-20181016184325-3113b8401b8a
	github.com/robfig/go-cache v0.0.0-20130306151617-9fc39e0dbf62
	github.com/shurcooL/httpfs v0.0.0-20171119174359-809beceb2371 // indirect
	github.com/shurcooL/vfsgen v0.0.0-20181020040650-a97a25d856ca // indirect
	github.com/uber-go/atomic v1.3.2 // indirect
	github.com/uber/jaeger-client-go v2.15.0+incompatible
	github.com/uber/jaeger-lib v1.5.0
	github.com/vrischmann/go-metrics-influxdb v0.0.0-20160917065939-43af8332c303
	golang.org/x/net v0.0.0-20181023162649-9b4f9f5ad519
	gopkg.in/mgo.v2 v2.0.0-20180705113604-9856a29383ce // indirect
	sourcegraph.com/sourcegraph/appdash v0.0.0-20180531100431-4c381bd170b4
	sourcegraph.com/sourcegraph/appdash-data v0.0.0-20151005221446-73f23eafcf67 // indirect
)

replace (
	cloud.google.com/go v0.26.0 => github.com/GoogleCloudPlatform/google-cloud-go v0.26.0
	golang.org/x/crypto v0.0.0-20180312195533-182114d58262 => github.com/golang/crypto v0.0.0-20180312195533-182114d58262
	golang.org/x/crypto v0.0.0-20180820150726-614d502a4dac => github.com/golang/crypto v0.0.0-20180820150726-614d502a4dac
	golang.org/x/crypto v0.0.0-20180904163835-0709b304e793 => github.com/golang/crypto v0.0.0-20180904163835-0709b304e793
	golang.org/x/crypto v0.0.0-20181015023909-0c41d7ab0a0e => github.com/golang/crypto v0.0.0-20181015023909-0c41d7ab0a0e
	golang.org/x/crypto v0.0.0-20181106171534-e4dc69e5b2fd => github.com/golang/crypto v0.0.0-20181106171534-e4dc69e5b2fd
	golang.org/x/lint v0.0.0-20180702182130-06c8688daad7 => github.com/golang/lint v0.0.0-20180702182130-06c8688daad7
	golang.org/x/net v0.0.0-20180724234803-3673e40ba225 => github.com/golang/net v0.0.0-20180724234803-3673e40ba225
	golang.org/x/net v0.0.0-20180826012351-8a410e7b638d => github.com/golang/net v0.0.0-20180826012351-8a410e7b638d
	golang.org/x/net v0.0.0-20181011144130-49bb7cea24b1 => github.com/golang/net v0.0.0-20181011144130-49bb7cea24b1
	golang.org/x/net v0.0.0-20181023162649-9b4f9f5ad519 => github.com/golang/net v0.0.0-20181023162649-9b4f9f5ad519
	golang.org/x/oauth2 v0.0.0-20170807180024-9a379c6b3e95 => github.com/golang/oauth2 v0.0.0-20170807180024-9a379c6b3e95
	golang.org/x/oauth2 v0.0.0-20180821212333-d2e6202438be => github.com/golang/oauth2 v0.0.0-20180821212333-d2e6202438be
	golang.org/x/oauth2 v0.0.0-20181017192945-9dcd33a902f4 => github.com/golang/oauth2 v0.0.0-20181017192945-9dcd33a902f4
	golang.org/x/sync v0.0.0-20170927054112-8e0aa688b654 => github.com/golang/sync v0.0.0-20170927054112-8e0aa688b654
	golang.org/x/sync v0.0.0-20180314180146-1d60e4601c6f => github.com/golang/sync v0.0.0-20180314180146-1d60e4601c6f
	golang.org/x/sync v0.0.0-20180828065106-d99a578cf41b => github.com/golang/sync v0.0.0-20180828065106-d99a578cf41b
	golang.org/x/sys v0.0.0-20180312081825-c28acc882ebc => github.com/golang/sys v0.0.0-20180312081825-c28acc882ebc
	golang.org/x/sys v0.0.0-20180823144017-11551d06cbcc => github.com/golang/sys v0.0.0-20180823144017-11551d06cbcc
	golang.org/x/sys v0.0.0-20180828065106-d99a578cf41b => github.com/golang/sys v0.0.0-20180828065106-d99a578cf41b
	golang.org/x/sys v0.0.0-20180830151530-49385e6e1522 => github.com/golang/sys v0.0.0-20180830151530-49385e6e1522
	golang.org/x/sys v0.0.0-20180905080454-ebe1bf3edb33 => github.com/golang/sys v0.0.0-20180905080454-ebe1bf3edb33
	golang.org/x/sys v0.0.0-20180906133057-8cf3aee42992 => github.com/golang/sys v0.0.0-20180906133057-8cf3aee42992
	golang.org/x/sys v0.0.0-20181011152604-fa43e7bc11ba => github.com/golang/sys v0.0.0-20181011152604-fa43e7bc11ba
	golang.org/x/sys v0.0.0-20181023152157-44b849a8bc13 => github.com/golang/sys v0.0.0-20181023152157-44b849a8bc13
	golang.org/x/sys v0.0.0-20181107165924-66b7b1311ac8 => github.com/golang/sys v0.0.0-20181107165924-66b7b1311ac8
	golang.org/x/text v0.3.0 => github.com/golang/text v0.3.0
	golang.org/x/time v0.0.0-20180412165947-fbb02b2291d2 => github.com/golang/time v0.0.0-20180412165947-fbb02b2291d2
	golang.org/x/tools v0.0.0 => github.com/golang/tools v0.0.0
	golang.org/x/tools v0.0.0-20180828015842-6cd1fcedba52 => github.com/golang/tools v0.0.0-20180828015842-6cd1fcedba52
	golang.org/x/tools v0.0.0-20181012181339-19e2aca3fdf9 => github.com/golang/tools v0.0.0-20181012181339-19e2aca3fdf9
	golang.org/x/tools v0.0.0-20181023010539-40a48ad93fbe => github.com/golang/tools v0.0.0-20181023010539-40a48ad93fbe
	google.golang.org/api v0.0.0-20181021000519-a2651947f503 => github.com/googleapis/google-api-go-client v0.0.0-20181021000519-a2651947f503
	google.golang.org/appengine v1.1.0 => github.com/golang/appengine v1.1.0
	google.golang.org/appengine v1.2.0 => github.com/golang/appengine v1.2.0
	google.golang.org/genproto v0.0.0-20180817151627-c66870c02cf8 => github.com/google/go-genproto v0.0.0-20180817151627-c66870c02cf8
	google.golang.org/genproto v0.0.0-20180831171423-11092d34479b => github.com/google/go-genproto v0.0.0-20180831171423-11092d34479b
	google.golang.org/genproto v0.0.0-20181016170114-94acd270e44e => github.com/google/go-genproto v0.0.0-20181016170114-94acd270e44e
	google.golang.org/grpc v1.15.0 => github.com/grpc/grpc-go v1.15.0
	labix.org/v2/mgo v0.0.0-20140701140051-000000000287 => github.com/go-mgo/mgo v0.0.0-20180705113738-7446a0344b78
	launchpad.net/gocheck v0.0.0-20140225173054-000000000087 => github.com/go-check/check v0.0.0-20180628173108-788fd7840127
)
