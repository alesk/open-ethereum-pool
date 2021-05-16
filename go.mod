module github.com/sammy007/open-ethereum-pool

go 1.16

require (
	github.com/ethereum/ethash v0.0.0-20170407112842-f5f0a8b19625
	github.com/ethereum/go-ethereum v1.10.3
	github.com/garyburd/redigo v1.6.2 // indirect
	github.com/gorilla/mux v1.8.0
	github.com/yvasiyarov/go-metrics v0.0.0-20150112132944-c25f46c4b940 // indirect
	github.com/yvasiyarov/gorelic v0.0.7
	github.com/yvasiyarov/newrelic_platform_go v0.0.0-20160601141957-9c099fbc30e9 // indirect
	gopkg.in/bsm/ratelimit.v1 v1.0.0-20160220154919-db14e161995a // indirect
	gopkg.in/redis.v3 v3.6.4
)

replace github.com/sammy007/open-ethereum-pool => ./

replace github.com/ethereum/ethash => github.com/alesk/ethash v0.0.0-20210516073937-6a4adf5c9a54
