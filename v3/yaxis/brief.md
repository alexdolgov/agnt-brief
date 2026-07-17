# Agentic Audit Brief: yAxis

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: yAxis (`yaxis`)
- Website: [https://yaxis.io/](https://yaxis.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 75 unique implementations (75 raw deployments)
- Coverage basis: 0/6 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $384,671.85
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for yAxis. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 6 contract row(s) across ethereum. Structural roles: 5 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 6
- Structural roles: core (5), supporting (1)
- Contract kinds: contract (6)
- Detected standards: erc20 (1), ownable (1)
- Frameworks: openzeppelin (6)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 14 contracts are derived from known codebases. 14 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x2eab685d85aa52e4d8b6699ba5aac3b0c3992c3b`, chain 1)
- UnnamedContract (`0x3b09b9adfe11f92225b4c55de89fa81456595cd9`, chain 1)
- UnnamedContract (`0x443ed48f975e02ea67ca0d2be0b4d4806d1e31f2`, chain 1)
- UnnamedContract (`0x5bbc6ff70680d1dfefd4685cbded5363a4db9b66`, chain 1)
- UnnamedContract (`0x5cd9d7977f9e431399e8186339d9ecbf88ed43f2`, chain 1)
- UnnamedContract (`0xb6c352587f4a92d3c7946bf42fe6d4d3acd1f312`, chain 1)
- UnnamedContract (`0xdb6e6904d50f9d9df5554eb9aace2f95e6712739`, chain 1)
- UnnamedContract (`0xedafe410e2f07ab9d7f1b04316d29c2f49dcb104`, chain 1)
- MerkleDistributor (`0xd0c9432625a181c823b3e63d5e6656f87231ae96`, chain 1)
- Rewards (`0x226f9954a1221cde805c76cfb312a5d761630e14`, chain 1)
- StableSwap3PoolNonConverter (`0x9354b082e5cedb41422fb9d4669ab8b7f8511aee`, chain 1)
- StrategyControllerV2 (`0x0d857688d6a223a2f4e58cdd44119abb7dc5a790`, chain 1)
- Swap (`0xcdf398537adbf8617a8401b14dcee7f67cf8c64b`, chain 1)
- YaxisToken (`0x0ada190c81b814548ddc2f6adc4a689ce7c1fe73`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 6; live-surface rows included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 14/79 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/6 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 61 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 14 of 75 unique; 61 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/67
- Verified + Unaudited implementations: 67
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 75
- Raw deployments: 75
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

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AggMonetaryPolicy-monetarypolicybasedonaggregatedpricesforcrvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0901b541beff2cd44859701619e245e82f48e62b` | ⚠️ Unaudited |
| AggregatorStablePrice-aggregatorofstablecoinpricesforcrvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18672b1b0c623a30089a280ed9256379fb0e4e62` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x834ebce3b3fb5b9647d9398a1f6f44a2e831ac60` | ⚠️ Unaudited |
| CRVDisperse | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53e6c8a06f831c3281ccca5f0e349bbe0a65dcde` | ⚠️ Unaudited |
| crvUSD Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4` | ⚠️ Unaudited |
| crvUSDControllerFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc9332fdcb1c491dcc683bae86fe3cb70360738bc` | ⚠️ Unaudited |
| crvUSDdeleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bc706b83ab08d0437b8a397242c3284b5f81d74` | ⚠️ Unaudited |
| crvUSDStablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf939e0a03fb07f59a73314e73794be0e57ac1b4e` | ⚠️ Unaudited |
| CryptoFromPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b38ce23799dc56664ff6048892510abffdb7a25` | ⚠️ Unaudited |
| CryptoFromPoolsRate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x38e7627eb98a40e7528bcce709a80083093ba2f8` | ⚠️ Unaudited |
| CryptoFromPoolsRateWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a9ae947495034c0bbbab845fd75b5bbafc91aab` | ⚠️ Unaudited |
| CryptoFromPoolVaultWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x002688c4296a2c4d800f271fe6f01741111b09be` | ⚠️ Unaudited |
| CryptoFromPoolWAgg | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca` | ⚠️ Unaudited |
| CryptoWithStablePriceETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x966cbdecefb60a289b0460f7638f4a75f432ca06` | ⚠️ Unaudited |
| CryptoWithStablePriceSfrxeth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29` | ⚠️ Unaudited |
| CryptoWithStablePriceTBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217` | ⚠️ Unaudited |
| CryptoWithStablePriceWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x07374b547cae235227635c13266c69847a3e46fa` | ⚠️ Unaudited |
| CryptoWithStablePriceWsteth | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304` | ⚠️ Unaudited |
| FeeDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xda3a068428a2a04d21dd628a4479f95bc98b6eab` | ⚠️ Unaudited |
| Harvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0ff761a9d4f4e5036cf3d0e1a02b0a7b275927e` | ⚠️ Unaudited |
| HealthcalculatorzapforcrvUSDcontroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a` | ⚠️ Unaudited |
| LeveragezapforcrvUSDcontroller(sfrxETHmarket) | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb556fa4c4752321b3154f08dfbdfcf34847f2eac` | ⚠️ Unaudited |
| LinkswapPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21dee38170f1e1f26baff2c30c0fc8f8362b6961` | ⚠️ Unaudited |
| LiquidityGaugeV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00b71a425db7c8b65a46cf39c23a188e10a2de99` | ⚠️ Unaudited |
| LLAMMA - crvUSD AMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xab72cc293b63f6477baf9d514da735cf6caadc2d` | ⚠️ Unaudited |
| MerkleDistributor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397438 | `0xd0c9432625a181c823b3e63d5e6656f87231ae96` | ⚠️ Unaudited |
| MinterWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0167f82398775c1a1175d73e86ce06bfcfe3aac1` | ⚠️ Unaudited |
| MultiClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32facb5a46e02decaf5f939ab12c123eee203a5f` | ⚠️ Unaudited |
| MultiRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3547dfca04358540891149559e691b146c6b0043` | ⚠️ Unaudited |
| OneWayLendingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c` | ⚠️ Unaudited |
| PegKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae` | ⚠️ Unaudited |
| PegPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226845c2ba216b8bb1aaadfd4e14de69426c5445` | ⚠️ Unaudited |
| RewardClaimer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8fcfd0eec0cca95b5bcebd33a076b29fd8998884` | ⚠️ Unaudited |
| Rewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397389 | `0x226f9954a1221cde805c76cfb312a5d761630e14` | ⚠️ Unaudited |
| Secondarymonetarypolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188041ad83145351ef45f4bb91d08886648aeaf8` | ⚠️ Unaudited |
| SecondarymonetarypolicyforWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1f162fd143e4a829341efd6dd451b018b10f9c` | ⚠️ Unaudited |
| SemiLog monetary policy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a28789645776eaa95f6d491ff375781ea5b40dd` | ⚠️ Unaudited |
| sfrxETH2crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x840231204dd17a57b44cb803843363ba926b4910` | ⚠️ Unaudited |
| StableSwap3PoolConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e93242202a13dd451c3147fc417ce95d49b0281` | ⚠️ Unaudited |
| StableSwap3PoolNonConverter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397422 | `0x9354b082e5cedb41422fb9d4669ab8b7f8511aee` | ⚠️ Unaudited |
| StableSwap3PoolOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a09392a6fbe7c5b9ca686a5f89387cd0045ea35` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0a758a25997167762e187f960dd0539a4ae3e9a6` | ⚠️ Unaudited |
| StrategyControllerV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ebe1461d2fc6dabf079882cfc51e5013bba49b6` | ⚠️ Unaudited |
| StrategyControllerV2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397384 | `0x0d857688d6a223a2f4e58cdd44119abb7dc5a790` | ⚠️ Unaudited |
| StrategyPickle3Crv | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22f72d1d79259ce8489e912f4bf613d192000b3e` | ⚠️ Unaudited |
| SusdeMonetaryPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf574cbebbd549273af82b42cd0230de9ea6efef7` | ⚠️ Unaudited |
| Swap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397437 | `0xcdf398537adbf8617a8401b14dcee7f67cf8c64b` | ⚠️ Unaudited |
| Timelock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x87ee9bdb7241ebd95b22c0237e7bbc5d6be658eb` | ⚠️ Unaudited |
| TimelockHasOperator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66c5c16d13a38461648c1d097f219762d374b412` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xf0e3fdf48661cd10d56692f60bd4eccd01e9cf64` | ⚠️ Unaudited |
| USD0LpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aeb5c8776567c4eeebda1450e343b1bef49ae32` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b42b20280216d604bb2b6a8944fb9027b43df8d` | ⚠️ Unaudited |
| VaultHelper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x259ac58aa39a64614af1afe6a4c266cfe09510cf` | ⚠️ Unaudited |
| VaultToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0c44393da03216e934b3a5503decf7f78174b2f3` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00702bbdead24c40647f235f15971db0867f6bdb` | ⚠️ Unaudited |
| WBTC-crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2518b71ee64e910741f5cf480b19e8e402de4d7` | ⚠️ Unaudited |
| wstETH-crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd` | ⚠️ Unaudited |
| YaxisBar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef31cb88048416e301fee1ea13e7664b887ba7e8` | ⚠️ Unaudited |
| YaxisChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc330e7e73717cd13fb6ba068ee871584cf8a194f` | ⚠️ Unaudited |
| yAxisMetaVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfbec72f2450ef9ab742e4a27441fa06ca79ea6a` | ⚠️ Unaudited |
| yAxisMetaVaultHarvester | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18dbefac8eb66fdf559e31d5c154f4ffbc63ff99` | ⚠️ Unaudited |
| yAxisMetaVaultManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27762c069c897ed2244e3e8164068e5f1f09e429` | ⚠️ Unaudited |
| yAxisMetaVaultStrategists | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x738080868c83d65582d51ba63cc9f23064f92e41` | ⚠️ Unaudited |
| YaxisToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397383 | `0x0ada190c81b814548ddc2f6adc4a689ce7c1fe73` | ⚠️ Unaudited |
| YaxisVotePower | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01fef0d5d6fd6b5701ae913cafb11ddaee982c9a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397397 | `0x2eab685d85aa52e4d8b6699ba5aac3b0c3992c3b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397403 | `0x3b09b9adfe11f92225b4c55de89fa81456595cd9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397406 | `0x443ed48f975e02ea67ca0d2be0b4d4806d1e31f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397411 | `0x5bbc6ff70680d1dfefd4685cbded5363a4db9b66` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397412 | `0x5cd9d7977f9e431399e8186339d9ecbf88ed43f2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397433 | `0xb6c352587f4a92d3c7946bf42fe6d4d3acd1f312` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397442 | `0xdb6e6904d50f9d9df5554eb9aace2f95e6712739` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397450 | `0xedafe410e2f07ab9d7f1b04316d29c2f49dcb104` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

- No persisted address-book scope analysis is available.

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xd0c9432625a181c823b3e63d5e6656f87231ae96` | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x226f9954a1221cde805c76cfb312a5d761630e14` | Rewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9354b082e5cedb41422fb9d4669ab8b7f8511aee` | StableSwap3PoolNonConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0d857688d6a223a2f4e58cdd44119abb7dc5a790` | StrategyControllerV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcdf398537adbf8617a8401b14dcee7f67cf8c64b` | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0ada190c81b814548ddc2f6adc4a689ce7c1fe73` | YaxisToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 66 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 0 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
