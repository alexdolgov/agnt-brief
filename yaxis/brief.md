# Agentic Audit Brief: yAxis

## Project Overview

- Project: yAxis (`yaxis`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:13.731Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 67 unique implementations (67 raw deployments)
- DeFi Llama TVL: $384,671.85
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 34 project-authored contract(s) across 1 chain(s); 7 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 4 common project-authored base contract(s) (owned, linkerc20, erc677token). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 67; live-surface contracts included: 67 (67 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/66 (0.0%)
- Deployed-live implementations: 67 of 67 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/67
- Verified + Unaudited implementations: 67
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 67
- Raw deployments: 67
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (67)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggMonetaryPolicy-monetarypolicybasedonaggregatedpricesforcrvUSD | unknown | ethereum | n/a | [`0x0901b5...48e62b`](./contracts/ethereum-1/0x0901b541beff2cd44859701619e245e82f48e62b/) | ⚠️ Unaudited |
| AggregatorStablePrice-aggregatorofstablecoinpricesforcrvUSD | unknown | ethereum | n/a | [`0x18672b...0e4e62`](./contracts/ethereum-1/0x18672b1b0c623a30089a280ed9256379fb0e4e62/) | ⚠️ Unaudited |
| Controller | unknown | ethereum | n/a | [`0x834ebc...31ac60`](./contracts/ethereum-1/0x834ebce3b3fb5b9647d9398a1f6f44a2e831ac60/) | ⚠️ Unaudited |
| CRVDisperse | unknown | ethereum | n/a | [`0x53e6c8...65dcde`](./contracts/ethereum-1/0x53e6c8a06f831c3281ccca5f0e349bbe0a65dcde/) | ⚠️ Unaudited |
| crvUSD Controller | unknown | ethereum | n/a | [`0x17c6e1...41f4d4`](./contracts/ethereum-1/0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4/) | ⚠️ Unaudited |
| crvUSDControllerFactory | unknown | ethereum | n/a | [`0xc9332f...0738bc`](./contracts/ethereum-1/0xc9332fdcb1c491dcc683bae86fe3cb70360738bc/) | ⚠️ Unaudited |
| crvUSDdeleveragezap | unknown | ethereum | n/a | [`0x2bc706...f81d74`](./contracts/ethereum-1/0x2bc706b83ab08d0437b8a397242c3284b5f81d74/) | ⚠️ Unaudited |
| crvUSDStablecoin | unknown | ethereum | n/a | [`0xf939e0...ac1b4e`](./contracts/ethereum-1/0xf939e0a03fb07f59a73314e73794be0e57ac1b4e/) | ⚠️ Unaudited |
| CryptoFromPool | unknown | ethereum | n/a | [`0x3b38ce...db7a25`](./contracts/ethereum-1/0x3b38ce23799dc56664ff6048892510abffdb7a25/) | ⚠️ Unaudited |
| CryptoFromPoolsRate | unknown | ethereum | n/a | [`0x38e762...3ba2f8`](./contracts/ethereum-1/0x38e7627eb98a40e7528bcce709a80083093ba2f8/) | ⚠️ Unaudited |
| CryptoFromPoolsRateWAgg | unknown | ethereum | n/a | [`0x0a9ae9...c91aab`](./contracts/ethereum-1/0x0a9ae947495034c0bbbab845fd75b5bbafc91aab/) | ⚠️ Unaudited |
| CryptoFromPoolVaultWAgg | unknown | ethereum | n/a | [`0x002688...1b09be`](./contracts/ethereum-1/0x002688c4296a2c4d800f271fe6f01741111b09be/) | ⚠️ Unaudited |
| CryptoFromPoolWAgg | unknown | ethereum | n/a | [`0x2d89d8...e1d5ca`](./contracts/ethereum-1/0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca/) | ⚠️ Unaudited |
| CryptoWithStablePriceETH | unknown | ethereum | n/a | [`0x966cbd...32ca06`](./contracts/ethereum-1/0x966cbdecefb60a289b0460f7638f4a75f432ca06/) | ⚠️ Unaudited |
| CryptoWithStablePriceSfrxeth | unknown | ethereum | n/a | [`0x28d788...113c29`](./contracts/ethereum-1/0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29/) | ⚠️ Unaudited |
| CryptoWithStablePriceTBTC | unknown | ethereum | n/a | [`0xbef434...fc4217`](./contracts/ethereum-1/0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217/) | ⚠️ Unaudited |
| CryptoWithStablePriceWBTC | unknown | ethereum | n/a | [`0x07374b...3e46fa`](./contracts/ethereum-1/0x07374b547cae235227635c13266c69847a3e46fa/) | ⚠️ Unaudited |
| CryptoWithStablePriceWsteth | unknown | ethereum | n/a | [`0x21f5f6...51b304`](./contracts/ethereum-1/0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304/) | ⚠️ Unaudited |
| FeeDistributor | unknown | ethereum | n/a | [`0xda3a06...8b6eab`](./contracts/ethereum-1/0xda3a068428a2a04d21dd628a4479f95bc98b6eab/) | ⚠️ Unaudited |
| Harvester | unknown | ethereum | n/a | [`0xc0ff76...75927e`](./contracts/ethereum-1/0xc0ff761a9d4f4e5036cf3d0e1a02b0a7b275927e/) | ⚠️ Unaudited |
| HealthcalculatorzapforcrvUSDcontroller | unknown | ethereum | n/a | [`0xcf61ee...830d6a`](./contracts/ethereum-1/0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a/) | ⚠️ Unaudited |
| LeveragezapforcrvUSDcontroller(sfrxETHmarket) | unknown | ethereum | n/a | [`0xb556fa...7f2eac`](./contracts/ethereum-1/0xb556fa4c4752321b3154f08dfbdfcf34847f2eac/) | ⚠️ Unaudited |
| LinkswapPair | unknown | ethereum | n/a | [`0x21dee3...2b6961`](./contracts/ethereum-1/0x21dee38170f1e1f26baff2c30c0fc8f8362b6961/) | ⚠️ Unaudited |
| LiquidityGaugeV6 | unknown | ethereum | n/a | [`0x00b71a...a2de99`](./contracts/ethereum-1/0x00b71a425db7c8b65a46cf39c23a188e10a2de99/) | ⚠️ Unaudited |
| LLAMMA - crvUSD AMM | unknown | ethereum | n/a | [`0x0ec8e0...dbd93a`](./contracts/ethereum-1/0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a/) | ⚠️ Unaudited |
| Manager | unknown | ethereum | n/a | [`0xab72cc...aadc2d`](./contracts/ethereum-1/0xab72cc293b63f6477baf9d514da735cf6caadc2d/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | ethereum | n/a | [`0xd0c943...31ae96`](./contracts/ethereum-1/0xd0c9432625a181c823b3e63d5e6656f87231ae96/) | ⚠️ Unaudited |
| MinterWrapper | unknown | ethereum | n/a | [`0x0167f8...e3aac1`](./contracts/ethereum-1/0x0167f82398775c1a1175d73e86ce06bfcfe3aac1/) | ⚠️ Unaudited |
| MultiClaim | unknown | ethereum | n/a | [`0x32facb...203a5f`](./contracts/ethereum-1/0x32facb5a46e02decaf5f939ab12c123eee203a5f/) | ⚠️ Unaudited |
| MultiRewards | unknown | ethereum | n/a | [`0x3547df...6b0043`](./contracts/ethereum-1/0x3547dfca04358540891149559e691b146c6b0043/) | ⚠️ Unaudited |
| OneWayLendingFactory | unknown | ethereum | n/a | [`0x34024b...41f38c`](./contracts/ethereum-1/0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c/) | ⚠️ Unaudited |
| PegKeeper | unknown | ethereum | n/a | [`0x1ef89e...4dccae`](./contracts/ethereum-1/0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae/) | ⚠️ Unaudited |
| PegPrice | unknown | ethereum | n/a | [`0x226845...6c5445`](./contracts/ethereum-1/0x226845c2ba216b8bb1aaadfd4e14de69426c5445/) | ⚠️ Unaudited |
| RewardClaimer | unknown | ethereum | n/a | [`0x8fcfd0...998884`](./contracts/ethereum-1/0x8fcfd0eec0cca95b5bcebd33a076b29fd8998884/) | ⚠️ Unaudited |
| Rewards | unknown | ethereum | n/a | [`0x226f99...630e14`](./contracts/ethereum-1/0x226f9954a1221cde805c76cfb312a5d761630e14/) | ⚠️ Unaudited |
| Secondarymonetarypolicy | unknown | ethereum | n/a | [`0x188041...8aeaf8`](./contracts/ethereum-1/0x188041ad83145351ef45f4bb91d08886648aeaf8/) | ⚠️ Unaudited |
| SecondarymonetarypolicyforWBTC | unknown | ethereum | n/a | [`0x4e1f16...b10f9c`](./contracts/ethereum-1/0x4e1f162fd143e4a829341efd6dd451b018b10f9c/) | ⚠️ Unaudited |
| SemiLog monetary policy | unknown | ethereum | n/a | [`0x2a2878...5b40dd`](./contracts/ethereum-1/0x2a28789645776eaa95f6d491ff375781ea5b40dd/) | ⚠️ Unaudited |
| sfrxETH2crvUSDleveragezap | unknown | ethereum | n/a | [`0x43ecff...ce11bc`](./contracts/ethereum-1/0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc/) | ⚠️ Unaudited |
| SmartWalletChecker | unknown | ethereum | n/a | [`0x840231...6b4910`](./contracts/ethereum-1/0x840231204dd17a57b44cb803843363ba926b4910/) | ⚠️ Unaudited |
| StableSwap3PoolConverter | unknown | ethereum | n/a | [`0x2e9324...9b0281`](./contracts/ethereum-1/0x2e93242202a13dd451c3147fc417ce95d49b0281/) | ⚠️ Unaudited |
| StableSwap3PoolNonConverter | unknown | ethereum | n/a | [`0x9354b0...511aee`](./contracts/ethereum-1/0x9354b082e5cedb41422fb9d4669ab8b7f8511aee/) | ⚠️ Unaudited |
| StableSwap3PoolOracle | unknown | ethereum | n/a | [`0x2a0939...45ea35`](./contracts/ethereum-1/0x2a09392a6fbe7c5b9ca686a5f89387cd0045ea35/) | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | [`0x0a758a...e3e9a6`](./contracts/ethereum-1/0x0a758a25997167762e187f960dd0539a4ae3e9a6/) | ⚠️ Unaudited |
| StrategyControllerV1 | unknown | ethereum | n/a | [`0x2ebe14...ba49b6`](./contracts/ethereum-1/0x2ebe1461d2fc6dabf079882cfc51e5013bba49b6/) | ⚠️ Unaudited |
| StrategyControllerV2 | unknown | ethereum | n/a | [`0x0d8576...c5a790`](./contracts/ethereum-1/0x0d857688d6a223a2f4e58cdd44119abb7dc5a790/) | ⚠️ Unaudited |
| StrategyPickle3Crv | unknown | ethereum | n/a | [`0x22f72d...000b3e`](./contracts/ethereum-1/0x22f72d1d79259ce8489e912f4bf613d192000b3e/) | ⚠️ Unaudited |
| SusdeMonetaryPolicy | unknown | ethereum | n/a | [`0xf574cb...6efef7`](./contracts/ethereum-1/0xf574cbebbd549273af82b42cd0230de9ea6efef7/) | ⚠️ Unaudited |
| Swap | unknown | ethereum | n/a | [`0xcdf398...f8c64b`](./contracts/ethereum-1/0xcdf398537adbf8617a8401b14dcee7f67cf8c64b/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0x87ee9b...e658eb`](./contracts/ethereum-1/0x87ee9bdb7241ebd95b22c0237e7bbc5d6be658eb/) | ⚠️ Unaudited |
| TimelockHasOperator | unknown | ethereum | n/a | [`0x66c5c1...74b412`](./contracts/ethereum-1/0x66c5c16d13a38461648c1d097f219762d374b412/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0xf0e3fd...e9cf64`](./contracts/ethereum-1/0xf0e3fdf48661cd10d56692f60bd4eccd01e9cf64/) | ⚠️ Unaudited |
| USD0LpOracle | unknown | ethereum | n/a | [`0x2aeb5c...49ae32`](./contracts/ethereum-1/0x2aeb5c8776567c4eeebda1450e343b1bef49ae32/) | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | [`0x0b42b2...43df8d`](./contracts/ethereum-1/0x0b42b20280216d604bb2b6a8944fb9027b43df8d/) | ⚠️ Unaudited |
| VaultHelper | unknown | ethereum | n/a | [`0x259ac5...9510cf`](./contracts/ethereum-1/0x259ac58aa39a64614af1afe6a4c266cfe09510cf/) | ⚠️ Unaudited |
| VaultToken | unknown | ethereum | n/a | [`0x0c4439...74b2f3`](./contracts/ethereum-1/0x0c44393da03216e934b3a5503decf7f78174b2f3/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x00702b...7f6bdb`](./contracts/ethereum-1/0x00702bbdead24c40647f235f15971db0867f6bdb/) | ⚠️ Unaudited |
| WBTC-crvUSDleveragezap | unknown | ethereum | n/a | [`0xa2518b...2de4d7`](./contracts/ethereum-1/0xa2518b71ee64e910741f5cf480b19e8e402de4d7/) | ⚠️ Unaudited |
| wstETH-crvUSDleveragezap | unknown | ethereum | n/a | [`0x293436...fc74fd`](./contracts/ethereum-1/0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd/) | ⚠️ Unaudited |
| YaxisBar | unknown | ethereum | n/a | [`0xef31cb...7ba7e8`](./contracts/ethereum-1/0xef31cb88048416e301fee1ea13e7664b887ba7e8/) | ⚠️ Unaudited |
| YaxisChef | unknown | ethereum | n/a | [`0xc330e7...8a194f`](./contracts/ethereum-1/0xc330e7e73717cd13fb6ba068ee871584cf8a194f/) | ⚠️ Unaudited |
| yAxisMetaVault | unknown | ethereum | n/a | [`0xbfbec7...79ea6a`](./contracts/ethereum-1/0xbfbec72f2450ef9ab742e4a27441fa06ca79ea6a/) | ⚠️ Unaudited |
| yAxisMetaVaultHarvester | unknown | ethereum | n/a | [`0x18dbef...63ff99`](./contracts/ethereum-1/0x18dbefac8eb66fdf559e31d5c154f4ffbc63ff99/) | ⚠️ Unaudited |
| yAxisMetaVaultManager | unknown | ethereum | n/a | [`0x27762c...09e429`](./contracts/ethereum-1/0x27762c069c897ed2244e3e8164068e5f1f09e429/) | ⚠️ Unaudited |
| yAxisMetaVaultStrategists | unknown | ethereum | n/a | [`0x738080...f92e41`](./contracts/ethereum-1/0x738080868c83d65582d51ba63cc9f23064f92e41/) | ⚠️ Unaudited |
| YaxisToken | unknown | ethereum | n/a | [`0x0ada19...c1fe73`](./contracts/ethereum-1/0x0ada190c81b814548ddc2f6adc4a689ce7c1fe73/) | ⚠️ Unaudited |
| YaxisVotePower | unknown | ethereum | n/a | [`0x01fef0...982c9a`](./contracts/ethereum-1/0x01fef0d5d6fd6b5701ae913cafb11ddaee982c9a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0901b5...48e62b`](./contracts/ethereum-1/0x0901b541beff2cd44859701619e245e82f48e62b/) | AggMonetaryPolicy-monetarypolicybasedonaggregatedpricesforcrvUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18672b...0e4e62`](./contracts/ethereum-1/0x18672b1b0c623a30089a280ed9256379fb0e4e62/) | AggregatorStablePrice-aggregatorofstablecoinpricesforcrvUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x834ebc...31ac60`](./contracts/ethereum-1/0x834ebce3b3fb5b9647d9398a1f6f44a2e831ac60/) | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53e6c8...65dcde`](./contracts/ethereum-1/0x53e6c8a06f831c3281ccca5f0e349bbe0a65dcde/) | CRVDisperse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17c6e1...41f4d4`](./contracts/ethereum-1/0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4/) | crvUSD Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc9332f...0738bc`](./contracts/ethereum-1/0xc9332fdcb1c491dcc683bae86fe3cb70360738bc/) | crvUSDControllerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bc706...f81d74`](./contracts/ethereum-1/0x2bc706b83ab08d0437b8a397242c3284b5f81d74/) | crvUSDdeleveragezap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf939e0...ac1b4e`](./contracts/ethereum-1/0xf939e0a03fb07f59a73314e73794be0e57ac1b4e/) | crvUSDStablecoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b38ce...db7a25`](./contracts/ethereum-1/0x3b38ce23799dc56664ff6048892510abffdb7a25/) | CryptoFromPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38e762...3ba2f8`](./contracts/ethereum-1/0x38e7627eb98a40e7528bcce709a80083093ba2f8/) | CryptoFromPoolsRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a9ae9...c91aab`](./contracts/ethereum-1/0x0a9ae947495034c0bbbab845fd75b5bbafc91aab/) | CryptoFromPoolsRateWAgg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x002688...1b09be`](./contracts/ethereum-1/0x002688c4296a2c4d800f271fe6f01741111b09be/) | CryptoFromPoolVaultWAgg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d89d8...e1d5ca`](./contracts/ethereum-1/0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca/) | CryptoFromPoolWAgg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x966cbd...32ca06`](./contracts/ethereum-1/0x966cbdecefb60a289b0460f7638f4a75f432ca06/) | CryptoWithStablePriceETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28d788...113c29`](./contracts/ethereum-1/0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29/) | CryptoWithStablePriceSfrxeth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbef434...fc4217`](./contracts/ethereum-1/0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217/) | CryptoWithStablePriceTBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07374b...3e46fa`](./contracts/ethereum-1/0x07374b547cae235227635c13266c69847a3e46fa/) | CryptoWithStablePriceWBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21f5f6...51b304`](./contracts/ethereum-1/0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304/) | CryptoWithStablePriceWsteth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda3a06...8b6eab`](./contracts/ethereum-1/0xda3a068428a2a04d21dd628a4479f95bc98b6eab/) | FeeDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0ff76...75927e`](./contracts/ethereum-1/0xc0ff761a9d4f4e5036cf3d0e1a02b0a7b275927e/) | Harvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf61ee...830d6a`](./contracts/ethereum-1/0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a/) | HealthcalculatorzapforcrvUSDcontroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb556fa...7f2eac`](./contracts/ethereum-1/0xb556fa4c4752321b3154f08dfbdfcf34847f2eac/) | LeveragezapforcrvUSDcontroller(sfrxETHmarket) | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21dee3...2b6961`](./contracts/ethereum-1/0x21dee38170f1e1f26baff2c30c0fc8f8362b6961/) | LinkswapPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00b71a...a2de99`](./contracts/ethereum-1/0x00b71a425db7c8b65a46cf39c23a188e10a2de99/) | LiquidityGaugeV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ec8e0...dbd93a`](./contracts/ethereum-1/0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a/) | LLAMMA - crvUSD AMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab72cc...aadc2d`](./contracts/ethereum-1/0xab72cc293b63f6477baf9d514da735cf6caadc2d/) | Manager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0c943...31ae96`](./contracts/ethereum-1/0xd0c9432625a181c823b3e63d5e6656f87231ae96/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0167f8...e3aac1`](./contracts/ethereum-1/0x0167f82398775c1a1175d73e86ce06bfcfe3aac1/) | MinterWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32facb...203a5f`](./contracts/ethereum-1/0x32facb5a46e02decaf5f939ab12c123eee203a5f/) | MultiClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3547df...6b0043`](./contracts/ethereum-1/0x3547dfca04358540891149559e691b146c6b0043/) | MultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34024b...41f38c`](./contracts/ethereum-1/0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c/) | OneWayLendingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ef89e...4dccae`](./contracts/ethereum-1/0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae/) | PegKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x226845...6c5445`](./contracts/ethereum-1/0x226845c2ba216b8bb1aaadfd4e14de69426c5445/) | PegPrice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fcfd0...998884`](./contracts/ethereum-1/0x8fcfd0eec0cca95b5bcebd33a076b29fd8998884/) | RewardClaimer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x226f99...630e14`](./contracts/ethereum-1/0x226f9954a1221cde805c76cfb312a5d761630e14/) | Rewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x188041...8aeaf8`](./contracts/ethereum-1/0x188041ad83145351ef45f4bb91d08886648aeaf8/) | Secondarymonetarypolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e1f16...b10f9c`](./contracts/ethereum-1/0x4e1f162fd143e4a829341efd6dd451b018b10f9c/) | SecondarymonetarypolicyforWBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a2878...5b40dd`](./contracts/ethereum-1/0x2a28789645776eaa95f6d491ff375781ea5b40dd/) | SemiLog monetary policy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43ecff...ce11bc`](./contracts/ethereum-1/0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc/) | sfrxETH2crvUSDleveragezap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x840231...6b4910`](./contracts/ethereum-1/0x840231204dd17a57b44cb803843363ba926b4910/) | SmartWalletChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2e9324...9b0281`](./contracts/ethereum-1/0x2e93242202a13dd451c3147fc417ce95d49b0281/) | StableSwap3PoolConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9354b0...511aee`](./contracts/ethereum-1/0x9354b082e5cedb41422fb9d4669ab8b7f8511aee/) | StableSwap3PoolNonConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a0939...45ea35`](./contracts/ethereum-1/0x2a09392a6fbe7c5b9ca686a5f89387cd0045ea35/) | StableSwap3PoolOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a758a...e3e9a6`](./contracts/ethereum-1/0x0a758a25997167762e187f960dd0539a4ae3e9a6/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ebe14...ba49b6`](./contracts/ethereum-1/0x2ebe1461d2fc6dabf079882cfc51e5013bba49b6/) | StrategyControllerV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d8576...c5a790`](./contracts/ethereum-1/0x0d857688d6a223a2f4e58cdd44119abb7dc5a790/) | StrategyControllerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22f72d...000b3e`](./contracts/ethereum-1/0x22f72d1d79259ce8489e912f4bf613d192000b3e/) | StrategyPickle3Crv | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf574cb...6efef7`](./contracts/ethereum-1/0xf574cbebbd549273af82b42cd0230de9ea6efef7/) | SusdeMonetaryPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcdf398...f8c64b`](./contracts/ethereum-1/0xcdf398537adbf8617a8401b14dcee7f67cf8c64b/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87ee9b...e658eb`](./contracts/ethereum-1/0x87ee9bdb7241ebd95b22c0237e7bbc5d6be658eb/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x66c5c1...74b412`](./contracts/ethereum-1/0x66c5c16d13a38461648c1d097f219762d374b412/) | TimelockHasOperator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2aeb5c...49ae32`](./contracts/ethereum-1/0x2aeb5c8776567c4eeebda1450e343b1bef49ae32/) | USD0LpOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b42b2...43df8d`](./contracts/ethereum-1/0x0b42b20280216d604bb2b6a8944fb9027b43df8d/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x259ac5...9510cf`](./contracts/ethereum-1/0x259ac58aa39a64614af1afe6a4c266cfe09510cf/) | VaultHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c4439...74b2f3`](./contracts/ethereum-1/0x0c44393da03216e934b3a5503decf7f78174b2f3/) | VaultToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00702b...7f6bdb`](./contracts/ethereum-1/0x00702bbdead24c40647f235f15971db0867f6bdb/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2518b...2de4d7`](./contracts/ethereum-1/0xa2518b71ee64e910741f5cf480b19e8e402de4d7/) | WBTC-crvUSDleveragezap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x293436...fc74fd`](./contracts/ethereum-1/0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd/) | wstETH-crvUSDleveragezap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef31cb...7ba7e8`](./contracts/ethereum-1/0xef31cb88048416e301fee1ea13e7664b887ba7e8/) | YaxisBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc330e7...8a194f`](./contracts/ethereum-1/0xc330e7e73717cd13fb6ba068ee871584cf8a194f/) | YaxisChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbfbec7...79ea6a`](./contracts/ethereum-1/0xbfbec72f2450ef9ab742e4a27441fa06ca79ea6a/) | yAxisMetaVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18dbef...63ff99`](./contracts/ethereum-1/0x18dbefac8eb66fdf559e31d5c154f4ffbc63ff99/) | yAxisMetaVaultHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27762c...09e429`](./contracts/ethereum-1/0x27762c069c897ed2244e3e8164068e5f1f09e429/) | yAxisMetaVaultManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x738080...f92e41`](./contracts/ethereum-1/0x738080868c83d65582d51ba63cc9f23064f92e41/) | yAxisMetaVaultStrategists | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ada19...c1fe73`](./contracts/ethereum-1/0x0ada190c81b814548ddc2f6adc4a689ce7c1fe73/) | YaxisToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01fef0...982c9a`](./contracts/ethereum-1/0x01fef0d5d6fd6b5701ae913cafb11ddaee982c9a/) | YaxisVotePower | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 66 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
