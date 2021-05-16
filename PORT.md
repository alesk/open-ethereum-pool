# Fixing abandoned open-ethereum-pool project

I wanted to run open-ethereum-pool with minimal changes to be able to get to the
proof of context as quick as possible.

## Fork of open-ethereum-pool

I have changed some code but imports refer to this project's code with 
the prefix `github.com/sammy007/open-ethereum-pool`:


```go
package payouts

import "github.com/sammy007/open-ethereum-pool/rpc"
```

In order to avoid changing all references from `github.com/sammy007/open-ethereum-pool/rpc` to
`github.com/alesk/open-etehreum-pool`, use the `replace` directive of `go.mod`  file:

```
replace github.com/sammy007/open-ethereum-pool => ./
```


## Fork of Ethash

To use my fork of ethash do:

1. Add my fork of ethash (branch geth-next-step) to the dependencies list:

```   
go get github.com/alesk/ethash@geth-next-step
```
3. Add `replace` command to `go.mod`

```   
replace github.com/ethereum/ethash => github.com/alesk/ethash v0.0.0-20210516073937-6a4adf5c9a54
``` 

See: https://levelup.gitconnected.com/go-modules-replace-3ea6d0139c91

## Running Open Ethereum pool

I copied `config.example.json` to `config.json` and changed:

- `difficulty` to `20000000`
- `poolFeeAddress` to `0x6d0B398a9225e6A64CB536f27b715e4B155A589B`

## Other observations

> Note that the go package in this repo isn't maintained anymore. We recommend that you switch to
> github.com/ethereum/go-ethereum/consensus/ethash, which is faster and written in pure Go.

See: https://github.com/ethereum/ethash/issues/103

