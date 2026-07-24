# Agentic Audit Brief: yAxis

## Export Authority

- Production state: **blocked no audit authority**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 0 (0 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: yAxis (`yaxis`)
- Website: [https://yaxis.io/](https://yaxis.io/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ethereum
- Contract surface: 359 unique implementations (359 raw deployments)
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
- Outside the address book: 345 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 14 of 359 unique; 345 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/67
- Verified + Unaudited implementations: 67
- Verified by bytecode match: 0
- Unverified implementations: 292
- Unique implementations: 359
- Raw deployments: 359
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

### ❓ Unverified (292)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0145fd99f1dd6e2491e44fca608c481c9c5b97a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c6808eb242c826d32f03712d66d5e613782363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02152d5edcdba56a55efee36ceb9d9f7e47aeb5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03481128b92b8ff680e72415512cc20299874f86` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06ce8086965234400fdecab190b115c2c0717047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b81cff64efc89fcdbe7da78054232daa89d73ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bdb2ed45ea8337f6437ef193c2ffd32fc9b75e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce41af9dfa0d697da79dd30b8b73bf52a107499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce658f9bc3af831271199578449810023dba703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d89774935e3d88b91f0cea0991f4fcd7d9f5470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d91518d59a6bf5f9b1576edead855c643a70cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15282d93b1f2c92a034936f6f56a55c0d423e8d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x17f9f0dac5066d43d0875fa08e5757580bbf4c8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a783886f03710abf4a6833f50d5e69047123be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9e59364785ebf00e8ef2c15e132d0f661585ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dab6560494b04473a0be3e7d83cf3fdf3a51828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7d3bf98d3f8d8ce193236c3e0ec4b00e32daae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1f11dcc68f5211d6c2acac20fb2a2ca0d6f16be0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23208ca4f2b30d8f7d54bf2d5a822d1a2f876501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x271fbe8ab7f1fb262f81c77ea5303f03da9d3d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x274dd71dfbea338324242042a841d97246597872` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x27d9a1dc3725fa5e4e7128b1db7e9da75eb3aee5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2869e74a15d3c0c797b04feaef93734060a4477c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ec0d55b8f26298a5350c64f56281eb070bf47e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a2c209b625f01447594ff79ab18813eb73a9a23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b7e624bdb839975d56d8428d9f6a4cf1160d3e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c1e6d004d4f06f92464e0208b04d260b3ef46a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c9b39f4d18e2e19c1f3d2b378128ee7ebe9f372` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d370111f8ffcf5bff0f56ba43c62c2ad98be7a3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397397 | `0x2eab685d85aa52e4d8b6699ba5aac3b0c3992c3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ef4b38a128ecc1ac06b43055553f95af59523de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x305dc8ce1f37a247ecfe77741d1a15e256befca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30a2f3c3aa6d12c0a36bed210dcf1b32ef6228cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x319c06103bc51b3c01a1a121451aa5e2a2a7778f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x31aa15da826da3311788b208d31cae34074d1dc7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x326fe113a130c569b44aff93b3637f3ac956ecdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x368440b3121f32df336d393834eafd8fa787c4ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x36fb071d5d30e5207ecc010c0ea3cc9ad75838a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x387177b33830f48199110f186f47797c66556b3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3910dce33441360e4c1d2749afa08e1a59af2546` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3993d34e7e99abf6b6f367309975d1360222d446` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a283d9c08e8b55966afb64c515f5143cf907611` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397403 | `0x3b09b9adfe11f92225b4c55de89fa81456595cd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b6831c0077a1e44ed0a21841c3bc4dc11bce833` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3be09dea9ca8b6205d05f196e9c68fc35190a514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3be5f25b47233d0c5293ddc0848e1da9399ebbd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c08533dbcd0ab64bff5306a9d6d1de912b81b9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d229e1b4faab62f621ef2f6a610961f7bd7b23b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3da7ff6c15c0c97d9c2df4af82a9910384b372fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e64d8f1fe65055b6a676382fcc310f095cf53a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40745803c2faa8e8402e2ae935933d07ca8f355c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x409893c94aad411030e5a78fd39b015221dfb8b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4169ef3b885416bd553567e78585a97ee52ba700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d5d78049d44444ac6d5e1ec67990f24efacd58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42b9dea10b51a696949715797bdfd69489fc3b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42dd7dc055a04c3d795a3dfd2eaaf7d480367a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43103fe8bd1049f756370f831634812eb4eff7d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4316416f429b04fb12df8952fa1434e6b9d77c3f` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397406 | `0x443ed48f975e02ea67ca0d2be0b4d4806d1e31f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4710a77a0e0f4c7b0e11cdeb74acb042e62b8d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x480af6d9abe851e2fc4162b2b93fff8cf84ddee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4863c6df17dd59311b7f67e694dd835adc87f2d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c18e409dc8619bfb6a1cb56d114c3f592e0ae79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c1d4ad2fa2ba5510acbb0f428ec861e1f7ea3a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c5d4f542765b66154b2e789abd8e69ed4504112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca9b3063ec5866a4b82e437059d2c43d1be596f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cb152b45e667f86a0470776bed0be93a5f1c534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4efb0e6aba6517ce4fdd3f31013cbbc0bbb8dbfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f37395bdfbe3a0dca124ad3c9dbfe6a6cbc31d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8846ae9380b90d2e71d5e3d042dff3e7ebb40d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50996c7e748b1b83130b4854945d86ba6fc81f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50c39ea8f3d72310c8b56a56b333994266e9b477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50f35f4fd499898801282a415f4c3a689663719f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x528baca578523855a64ee9c276826f934c86a54c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52a430b5b7407fa103c5ae974744e4cc945354e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5473b1bcbbc45d38d8fbb50a18a73afb8b0637a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x584b0fd8f038fe8aedf4057ca3cb3d840446fbbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5852bda4520f1b000c760c1dfb8ba5db8fcbaa90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x596f8e49ace6fc8e09b561972360dc216f1c2a1f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a0d404d2042b92eb7948ac5943128e1088fd24b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a1cdcaad1d9bf1e9da7d6df6473091b059daff6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aa00dce91409b58b6a1338639b9daa63eb22be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac33a7fdee633113ee4c002148b469870a17186` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac53910dea4779e5ac3a7e997df8e9d5f6a7c9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397411 | `0x5bbc6ff70680d1dfefd4685cbded5363a4db9b66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bea27d52e36c58dbce2921773396f33f2bd780a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397412 | `0x5cd9d7977f9e431399e8186339d9ecbf88ed43f2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d0f47b32fdd343bfa74ce221808e2abe4a53827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e0198c158276efaebc5a32c8351fb5d679d4288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f6e4dea25086c973c31857a04a73c66ef41e43c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x600e571106c31c4ca1bf4177ba808e37146a4a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60b1b1f20373005030095fbe7cde032625fc96c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60fd915b2251dec19c57edd75b0a688ea0a3bfe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62191ef48bf8fd7a0e10ecb066b0350e6a9c18a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x627bb157ebc0b77ad9f990dd2ad75878603abf08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6340678b2bab22a37d781cd8da958a3cd1d97cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63564e223ba1fdb491c6ca68f63c67a578443ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x649e0b707a90f1d73b27f83358c4d9bcc91fd622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656dd75d33a6241a0c4c2368eb00441ad3113ec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65a8b215f34df5c30c64523d638ea698065ffa15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x666f78524dc82c13e13a7a9c22f35940011f8d61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x66b4c0daa0c65ed1eae84b4d738b9572a79389c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67fe41a94e779ccfa22cff02cc2957dc9c0e4286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6847b84c66c9a227d1a9fe577855b48d9cb03d81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69aafff1218ba086ac782f98cb8399d1226e2af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69d7469e677e4c8fa4581d36908b0c9c8750baa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6af700a9b52bdea2e33dbdcacae638fd8e118bd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b765d07cf966c745b340adca67749fe75b5c345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c3f90f043a72fa612cbac8115ee7e52bde6e490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ddd163240c21189ed0c89d30f6681142bf05ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6e5cf2093aa4dbd22840059241780aab25584ffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f4e8c8832ed1a1e14e030d56c015196a705fbf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7002b727ef8f5571cb5f9d70d13dbeeb4dfae9d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70a1151e0bb32484e25c107e3a69886a8361482e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70fc957eb90e37af82acdbd12675699797745f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72de985c5af6f96f3be22784b5533218421e6394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747459fc40d80a500440f9d650818f7fa5754acc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x752ebeb79963cf0732e9c0fec72a49fd1defaeac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7624c0dd4f5d06d650ddff25ffec45d032501260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x783128730280053ef00f675b777288e80565f26a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79d584d2d49ec8ce8ea379d69364b700bd35874d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7af331398dc340bf327904077eb68f27f75a9693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7b552fd9cf50446d50163f876f23e8756b06fa00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c868f045a60501a2f4159446545939771dda323` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d20ecb58d9d661aef2bd0ee953d53567e695dfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7da2ef41913adc5285ffdcfa3622f5f81c946500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6327cce4bbdb936ee744a7bae6c2978b62183f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6c50f75badb725fddaa47c063d8f8407defc5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec8e02b74cdd1c1c222dbf3bf47f3256b734099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80333bd8791fee04c4c3e1ca8a524cefa7c94737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80466c64868e1ab14a1ddf27a676c3fcbe638fe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81373aad854e31e6da610b2fa5260c6c60db8dbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818709b85052ddc521fae9c78737b27316337e3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8282bd15dca2ea2bdf24163e8f2781b30c43a2ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8301ae4fc9c624d1d396cbdaa1ed877821d7c511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x832f436ad2813c76aae756703cacb5c1028d11da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x847ee1227a9900b73aeeb3a47fac92c52fd54ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8484673ca7bff40f82b041916881aea15ee84834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84b6532a366c9ea7000ed618b9e957defc355242` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x84d40423e66c02689c2c90fbb28213dc06aa6f1a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x856ff1aaff4782eee27d2c6bbad48781f57f88cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85eafd0c294d4ce499af652b0aa8a4c7b206a6e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85fd0626e2d7f07a2b08718f2ea2e044b1d5f163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89086653f185a0431d24043d92772942c141bab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ac9a0b48fc66875de710ab7ee53027970064dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89d32bf7b120630b24fe9edc8c7534a73016c999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ea1e4232680a66470a725ffd399082a375d1ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aeb58603efb7a9f63712a2506df01b685ba1c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b6861d07d3688103d0ad801fabfc4f6bac231de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b8dce09b0deb003573215d5be238534b1cf11bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c5a7f011f733fbb0a6c969c058716d5ce9bc933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d76f31e7c3b8f637131df15d9b4a3f8ba93bd75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8dfddc191c6fd7596deeef52bc783546993962ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f300679f893584149af176562abc64f8e3b4476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4ef8c623c33cdb6a57c19aecb87e161fa7691f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f68f4810cce3194b6cb6f3d50fa58c2c9bdd1d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x913a3a0d83b87497587e66a7f9603ccd998ba572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9164e210d123e6566daf113136a73684c4ab01e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91c5998a0a1a8741f11a311ce45c1154dc589eaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x951e7726d70017e56756a6807886113708a699fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95ecdc6caaf7e4805fcef2679a92338351d24297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96d07ff312c56e08462308bca2f5e505e8111a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9720346ba80b668e50a5560c200180515febb895` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97f60ffc47fafbcba3ea364bff2abcbabf85c849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9838eccc42659fa8aa7daf2ad134b53984c9427b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98638facf9a3865cd033f36548713183f6996122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98a7f18d4e56cfe84e3d081b40001b3d5bd3eb8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9947117ca458385e9ac1b3088f43612846e5251b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99f8dc2eac0940e609a8dcb9fc905f0158af2288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9a4a2a2e8f755b77eb512e8a8fe635b803950d51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9aa02011a90736176f9cdc38ff4d1ed7c90309b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bd5b13f51e27b58174968a8983b450a300cda05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9be82cddb5c266e010c97e4b1b5b2df53c16384d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c2186cabc49782632efd00ba28bdb92086470a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9cd645330e64b07810dde54dee1240060071f6aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dfbf2b2af574ca8ba6dd3fd397287944269f720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e291bfbb158ffaaf1c3a8ccd694be0d49d6aada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa402f9e5015be2de7aed695e47f2729246cc9434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa4ea2fd4a88cb66488109efb8ecd4a96f5376261` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa504742cefe2f9027328b49c7cffec3d79b5ab1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa5c16eb6ebd72bc72c70fca3e4facf389ad4abe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7e98815c0193e01165720c3abea43b885ae67fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa85461afc2deec01bda23b5cd267d51f765fba10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0850ddf8ab99286a473a7d2a96e07cefa89034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa25a6fa9e4dadae0d3ee59bea19fbcf0284830c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa346781ddd7009caa644a4980f044c50cd2ae22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac288da6a8c5b6406562c27d54ba22666fe3adca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac8a4d55c1d6ea3f84a6c868f2b5a5ec3cef2800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad19c0506f5277bbf92d8dfde1a51a15aed42606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadcfcf9894335dc340f6cd182afa45999f45fc44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadf9acf398e5b85d9151b27a3ae2b462409cb780` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae14b769eac8ddb3caa79bd3d7c21d2986327bce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaee70429bdfbf599a979f50d5fde5eb0d317e0f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08eb288c57a37bc82238168ad96e15975602cd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb19059ebb43466c323583928285a49f558e572fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb1dc9124c395c1e97773ab855d66e879f053a289` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb311acd3eba1acfa29957cad50746738d52070dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb576491f1e6e5e62f1d8f26062ee822b40b0e0d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb57a959cdb3d5e460f9a7cc48ed05ec29dff049a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb57eabf6d8cd38408c32972a22da42fb27b8d008` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61009896eb35d81d02f15b2a1380252d2141725` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397433 | `0xb6c352587f4a92d3c7946bf42fe6d4d3acd1f312` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8687d7dc9d8fa32fabde63e19b2dbc9bb8b2138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8a3f8e783d52cfb9e632276714234661db698e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb911d7e59ba82fdf477a2ab22ff25125072c9282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb960c386eca71d28c95cb064d2f4720fbad1f8fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9f861b7755ff09cfd65cfe262d19823607b1f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbac8459641f765b26e8984f29082629359f084c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb3fda661149f6e45d829d5dd54a1608577c5fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbbe412135ff2ad9f3d232cda5ed94adbe2e17b9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc4d0f452b347cf25ee84509ed99bd478ac96b5d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc6977251621591fd3e8222cc89081841510b547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc7507bea8d7bcb49f511cf59651b5114e6e7667` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbcda2acfe820c92b8e0b389733aaaae4f930a9f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe83fd842db4937c0c3d15b2aba6af7e854f8dcb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbebc44782c7db0a1a60cb6fe97d0b483032ff1c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfcf63294ad7105dea65aa58f8ae5be2d9d0952a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc00978c2bfc2c0ac159367080992b287c075164b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc014f34d5ba10b6799d76b0f5acdeee577805085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc08550a4cc5333f40e593ecc4c4724808085d304` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc0bd9eb88840ee181c5cadf0a2914d41a403007a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1793a29609ffff81f10139fa0a7a444c9e106ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1db00a8e5ef7bfa476395cdbcc98235477cde4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc455e6c7936c2382f04306d329abc5d36444d3f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4ad29ba4b3c580e6d59105fff484999997675ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc531d9847367b8b394d3a35b9b32524517c76f59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc54106a999bede585c9574f2e4cb31df46cbdd83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5fa220347375ac4f91f9e4a4aab362f22801504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc67a44d958eef0ff316c3a7c9e14fb96f6dedaa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc684432fd6322c6d58b6bc5d28b18569aa0ad0a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7bab672806932fcaf918b4318796b02b0832856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc95bd7460ece4007973458d1c0f8ccc46c1880df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca3d75ac011bf5ad07a98d02f18225f9bd9a6bdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcab23ca4e75e8a9f12ebca7f51d6b3efe97699e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb08717451aae9ef950a2524e33b6dcaba60147b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb70bbaec89b577617f835e7a2e126da9e5acf21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb8a15af05102713d4e9628f20824111f9331b2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbed82324afcc67e77e9ce9a23d85d49d65cfe90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xccebbf77c3eeb298113392363e0c9863b37111b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdb55051fc792303ddc7c1052cc5161baed88e2a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcfb3cfeae8c3f39aecdf7ec275a00d29eca08535` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0c71ecd0787bb792e2bb8eeef030a66467bba1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0e6bc02657451fe16cddd7cab8cd55e39d25d2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd10d54830714003575d9f472d62268a29c902e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd2c5fe04d97c8c7cea36fbb5016e934c39dce549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3e576b5dcde3580420a5ef78f3639ba9cd1b967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd446a98f88e1d053d1f64986e3ed083bb1ab7e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd51a44d3fae010294c616388b506acda1bfaae46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6953e2c5546860a244aacb0e5af67a16d3725de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd79964c70cb06224fda4c48387b53e9819bcb71c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8f49c747aed8d394f6f1841546e2b83e09a357d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdaaeac14506fbb0dcbac74eff62d7d90685dd664` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397442 | `0xdb6e6904d50f9d9df5554eb9aace2f95e6712739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc892358d55d5ae1ec47a531130d62151eba36e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdce1c4e0ad3bd61788b840cab31d6c80a7958d02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd05247d34d85bcc145c74e2f1d070352fef83f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdede1cce94cdaa3ce358e561895775db369b72e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf33a69a938781e91a15a9bf25e158a3f1b2e7fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf41e21dae8bf6ae3eddb83337f8364eb7fc1659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe0a87e04f8e50b0312715798dc912bc685cf6c50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe38daa41be7ca22f724b9cf6d13cd920bf18a3d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3d32c20be68e6189a52f60148c850df7a2bb5dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3e3fb7e9f48d26817b7210c9bd6b22744790415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3ee57d3fbdbae9b506a92da79ca8454ac288e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe55be4c8f2d3c11536f61c8977dac4ad58446059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5afcf332a5457e8fafcd668bce3df953762dfe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe782adaa40f2148ccd0e181ce090e44900e392ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7cd2b4eb1d98cd6a4a48b6071d46401ac7dc5c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84f5b1582ba325fdf9ce6b0c1f087ccfc924e54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8b2989276e2ca8fdea2268e3551b2b4b2418950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe911fa14a49ac37e79ae8a60bd22a5f6a78c85a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe96a9bdb549f4cc4ee8deb7085bd6ffe4b273b1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe9aeb4482c846e48ca021a75a3e2f492485e881e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea6876dde9e3467564acbee1ed5bac88783205e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb4480152bef93fa7bd01a7f427f1dd3069fc4d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed4064f376cb8d68f770fb1ff088a3d0f3ff5c4d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397450 | `0xedafe410e2f07ab9d7f1b04316d29c2f49dcb104` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef1385d2b5dc6d14d5fecb86d53cdbefeca20fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef84fac432846ad5f6f1bd4caccf2849e2818e66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf113929f69fabe165a2280cac00c5f77196aa34c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf18056bbd320e96a48e3fbf8bc061322531aac99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf313a91af8930ae7fe3e6f8ba7ce62024928ee77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5e9eb18b3ecdfda07ea55133f427d47add6884f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71040d20cc3ffbb28c1abcef46134c7936624e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf87e9a4d3ab7185f54c332941aa7c62a550db7cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf92a829240683948e50e5092cda57bfb125989ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa3e2db8eb6c646e0d24046c1a185934d41a8f7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb230bc3de97ee43d2501bcaab9a50bba9b69e1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb3292cc870292d588b3dd7e03805986451cb1d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbef0cb133e2921aad88bbd993990834ca33bda6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc780e0e273098e6efdad6f30caa48ffc659cd6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff051db87adfb0be398016ee5c68280ad49f1fd8` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 284
- Live contracts: 0
- Unknown liveness contracts: 284
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Classification counts: unverified unclassified=284

Showing first 200 of 284 contracts. The complete deployer expansion list is in `brief.json`.

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| unverified unclassified | UnnamedContract<br>`0x0145fd99f1dd6e2491e44fca608c481c9c5b97a9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x01c6808eb242c826d32f03712d66d5e613782363` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x02152d5edcdba56a55efee36ceb9d9f7e47aeb5f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x03481128b92b8ff680e72415512cc20299874f86` | non_address_book | unknown | unknown | unverified | n/a | `0x65f84a48e640a908d0df7b6f00b871352f77022d` |
| unverified unclassified | UnnamedContract<br>`0x06ce8086965234400fdecab190b115c2c0717047` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x0b81cff64efc89fcdbe7da78054232daa89d73ec` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x0bdb2ed45ea8337f6437ef193c2ffd32fc9b75e9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x0ce41af9dfa0d697da79dd30b8b73bf52a107499` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x0ce658f9bc3af831271199578449810023dba703` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x0d89774935e3d88b91f0cea0991f4fcd7d9f5470` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x0d91518d59a6bf5f9b1576edead855c643a70cd5` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x15282d93b1f2c92a034936f6f56a55c0d423e8d4` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x17f9f0dac5066d43d0875fa08e5757580bbf4c8c` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x1a783886f03710abf4a6833f50d5e69047123be6` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x1d9e59364785ebf00e8ef2c15e132d0f661585ca` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x1dab6560494b04473a0be3e7d83cf3fdf3a51828` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x1e7d3bf98d3f8d8ce193236c3e0ec4b00e32daae` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x1f11dcc68f5211d6c2acac20fb2a2ca0d6f16be0` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x23208ca4f2b30d8f7d54bf2d5a822d1a2f876501` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x271fbe8ab7f1fb262f81c77ea5303f03da9d3d6a` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x274dd71dfbea338324242042a841d97246597872` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x27d9a1dc3725fa5e4e7128b1db7e9da75eb3aee5` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x2869e74a15d3c0c797b04feaef93734060a4477c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x29ec0d55b8f26298a5350c64f56281eb070bf47e` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x2a2c209b625f01447594ff79ab18813eb73a9a23` | non_address_book | unknown | unknown | unverified | n/a | `0x65f84a48e640a908d0df7b6f00b871352f77022d` |
| unverified unclassified | UnnamedContract<br>`0x2b7e624bdb839975d56d8428d9f6a4cf1160d3e9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x2c1e6d004d4f06f92464e0208b04d260b3ef46a5` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x2c9b39f4d18e2e19c1f3d2b378128ee7ebe9f372` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x2d370111f8ffcf5bff0f56ba43c62c2ad98be7a3` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x2ef4b38a128ecc1ac06b43055553f95af59523de` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x305dc8ce1f37a247ecfe77741d1a15e256befca6` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x30a2f3c3aa6d12c0a36bed210dcf1b32ef6228cc` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x319c06103bc51b3c01a1a121451aa5e2a2a7778f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x31aa15da826da3311788b208d31cae34074d1dc7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x326fe113a130c569b44aff93b3637f3ac956ecdf` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x368440b3121f32df336d393834eafd8fa787c4ec` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x36fb071d5d30e5207ecc010c0ea3cc9ad75838a8` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x387177b33830f48199110f186f47797c66556b3b` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x3910dce33441360e4c1d2749afa08e1a59af2546` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x3993d34e7e99abf6b6f367309975d1360222d446` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x3a283d9c08e8b55966afb64c515f5143cf907611` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x3b6831c0077a1e44ed0a21841c3bc4dc11bce833` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x3be09dea9ca8b6205d05f196e9c68fc35190a514` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x3be5f25b47233d0c5293ddc0848e1da9399ebbd9` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x3c08533dbcd0ab64bff5306a9d6d1de912b81b9e` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x3d229e1b4faab62f621ef2f6a610961f7bd7b23b` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x3da7ff6c15c0c97d9c2df4af82a9910384b372fd` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x3e64d8f1fe65055b6a676382fcc310f095cf53a1` | non_address_book | unknown | unknown | unverified | n/a | `0x65f84a48e640a908d0df7b6f00b871352f77022d` |
| unverified unclassified | UnnamedContract<br>`0x40745803c2faa8e8402e2ae935933d07ca8f355c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x409893c94aad411030e5a78fd39b015221dfb8b7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4169ef3b885416bd553567e78585a97ee52ba700` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x41d5d78049d44444ac6d5e1ec67990f24efacd58` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x42b9dea10b51a696949715797bdfd69489fc3b32` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x42dd7dc055a04c3d795a3dfd2eaaf7d480367a02` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x43103fe8bd1049f756370f831634812eb4eff7d3` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x4316416f429b04fb12df8952fa1434e6b9d77c3f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4710a77a0e0f4c7b0e11cdeb74acb042e62b8d22` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x480af6d9abe851e2fc4162b2b93fff8cf84ddee7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4863c6df17dd59311b7f67e694dd835adc87f2d3` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4c18e409dc8619bfb6a1cb56d114c3f592e0ae79` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4c1d4ad2fa2ba5510acbb0f428ec861e1f7ea3a4` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4c5d4f542765b66154b2e789abd8e69ed4504112` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4ca9b3063ec5866a4b82e437059d2c43d1be596f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4cb152b45e667f86a0470776bed0be93a5f1c534` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4efb0e6aba6517ce4fdd3f31013cbbc0bbb8dbfa` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4f37395bdfbe3a0dca124ad3c9dbfe6a6cbc31d6` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x4f8846ae9380b90d2e71d5e3d042dff3e7ebb40d` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x50996c7e748b1b83130b4854945d86ba6fc81f06` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x50c39ea8f3d72310c8b56a56b333994266e9b477` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x50f35f4fd499898801282a415f4c3a689663719f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x528baca578523855a64ee9c276826f934c86a54c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x52a430b5b7407fa103c5ae974744e4cc945354e6` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x5473b1bcbbc45d38d8fbb50a18a73afb8b0637a7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x584b0fd8f038fe8aedf4057ca3cb3d840446fbbf` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x5852bda4520f1b000c760c1dfb8ba5db8fcbaa90` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x596f8e49ace6fc8e09b561972360dc216f1c2a1f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x5a0d404d2042b92eb7948ac5943128e1088fd24b` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x5a1cdcaad1d9bf1e9da7d6df6473091b059daff6` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x5aa00dce91409b58b6a1338639b9daa63eb22be7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x5ac33a7fdee633113ee4c002148b469870a17186` | non_address_book | unknown | unknown | unverified | n/a | `0x65f84a48e640a908d0df7b6f00b871352f77022d` |
| unverified unclassified | UnnamedContract<br>`0x5ac53910dea4779e5ac3a7e997df8e9d5f6a7c9d` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x5bea27d52e36c58dbce2921773396f33f2bd780a` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x5d0f47b32fdd343bfa74ce221808e2abe4a53827` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x5e0198c158276efaebc5a32c8351fb5d679d4288` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x5f6e4dea25086c973c31857a04a73c66ef41e43c` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x600e571106c31c4ca1bf4177ba808e37146a4a0c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x60b1b1f20373005030095fbe7cde032625fc96c2` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x60fd915b2251dec19c57edd75b0a688ea0a3bfe5` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x62191ef48bf8fd7a0e10ecb066b0350e6a9c18a9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x627bb157ebc0b77ad9f990dd2ad75878603abf08` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x6340678b2bab22a37d781cd8da958a3cd1d97cdd` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x63564e223ba1fdb491c6ca68f63c67a578443ac4` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x649e0b707a90f1d73b27f83358c4d9bcc91fd622` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x656dd75d33a6241a0c4c2368eb00441ad3113ec0` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x65a8b215f34df5c30c64523d638ea698065ffa15` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x666f78524dc82c13e13a7a9c22f35940011f8d61` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x66b4c0daa0c65ed1eae84b4d738b9572a79389c4` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x67fe41a94e779ccfa22cff02cc2957dc9c0e4286` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x6847b84c66c9a227d1a9fe577855b48d9cb03d81` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x69aafff1218ba086ac782f98cb8399d1226e2af3` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x69d7469e677e4c8fa4581d36908b0c9c8750baa9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x6af700a9b52bdea2e33dbdcacae638fd8e118bd1` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x6b765d07cf966c745b340adca67749fe75b5c345` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x6c3f90f043a72fa612cbac8115ee7e52bde6e490` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x6ddd163240c21189ed0c89d30f6681142bf05ffb` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x6e5cf2093aa4dbd22840059241780aab25584ffc` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x6f4e8c8832ed1a1e14e030d56c015196a705fbf9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x7002b727ef8f5571cb5f9d70d13dbeeb4dfae9d1` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x70a1151e0bb32484e25c107e3a69886a8361482e` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x70fc957eb90e37af82acdbd12675699797745f68` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x72de985c5af6f96f3be22784b5533218421e6394` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x747459fc40d80a500440f9d650818f7fa5754acc` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x752ebeb79963cf0732e9c0fec72a49fd1defaeac` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x7624c0dd4f5d06d650ddff25ffec45d032501260` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x783128730280053ef00f675b777288e80565f26a` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x79d584d2d49ec8ce8ea379d69364b700bd35874d` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x7af331398dc340bf327904077eb68f27f75a9693` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x7b552fd9cf50446d50163f876f23e8756b06fa00` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x7c868f045a60501a2f4159446545939771dda323` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x7d20ecb58d9d661aef2bd0ee953d53567e695dfb` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x7da2ef41913adc5285ffdcfa3622f5f81c946500` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x7e6327cce4bbdb936ee744a7bae6c2978b62183f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x7e6c50f75badb725fddaa47c063d8f8407defc5c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x7ec8e02b74cdd1c1c222dbf3bf47f3256b734099` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x80333bd8791fee04c4c3e1ca8a524cefa7c94737` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x80466c64868e1ab14a1ddf27a676c3fcbe638fe5` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x81373aad854e31e6da610b2fa5260c6c60db8dbc` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x818709b85052ddc521fae9c78737b27316337e3a` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x8282bd15dca2ea2bdf24163e8f2781b30c43a2ef` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x8301ae4fc9c624d1d396cbdaa1ed877821d7c511` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x832f436ad2813c76aae756703cacb5c1028d11da` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x847ee1227a9900b73aeeb3a47fac92c52fd54ed9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x8484673ca7bff40f82b041916881aea15ee84834` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x84b6532a366c9ea7000ed618b9e957defc355242` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x84d40423e66c02689c2c90fbb28213dc06aa6f1a` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x856ff1aaff4782eee27d2c6bbad48781f57f88cc` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x85eafd0c294d4ce499af652b0aa8a4c7b206a6e5` | non_address_book | unknown | unknown | unverified | n/a | `0x65f84a48e640a908d0df7b6f00b871352f77022d` |
| unverified unclassified | UnnamedContract<br>`0x85fd0626e2d7f07a2b08718f2ea2e044b1d5f163` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x89086653f185a0431d24043d92772942c141bab0` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x89ac9a0b48fc66875de710ab7ee53027970064dc` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x89d32bf7b120630b24fe9edc8c7534a73016c999` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x89ea1e4232680a66470a725ffd399082a375d1ed` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x8aeb58603efb7a9f63712a2506df01b685ba1c4c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x8b6861d07d3688103d0ad801fabfc4f6bac231de` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x8b8dce09b0deb003573215d5be238534b1cf11bd` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x8c5a7f011f733fbb0a6c969c058716d5ce9bc933` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x8d76f31e7c3b8f637131df15d9b4a3f8ba93bd75` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x8dfddc191c6fd7596deeef52bc783546993962ee` | non_address_book | unknown | unknown | unverified | n/a | `0x65f84a48e640a908d0df7b6f00b871352f77022d` |
| unverified unclassified | UnnamedContract<br>`0x8f300679f893584149af176562abc64f8e3b4476` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x8f4ef8c623c33cdb6a57c19aecb87e161fa7691f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x8f68f4810cce3194b6cb6f3d50fa58c2c9bdd1d5` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x913a3a0d83b87497587e66a7f9603ccd998ba572` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x9164e210d123e6566daf113136a73684c4ab01e2` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x91c5998a0a1a8741f11a311ce45c1154dc589eaf` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x951e7726d70017e56756a6807886113708a699fb` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x95ecdc6caaf7e4805fcef2679a92338351d24297` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x96d07ff312c56e08462308bca2f5e505e8111a2b` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x9720346ba80b668e50a5560c200180515febb895` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x97f60ffc47fafbcba3ea364bff2abcbabf85c849` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x9838eccc42659fa8aa7daf2ad134b53984c9427b` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x98638facf9a3865cd033f36548713183f6996122` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x98a7f18d4e56cfe84e3d081b40001b3d5bd3eb8b` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x9947117ca458385e9ac1b3088f43612846e5251b` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x99f8dc2eac0940e609a8dcb9fc905f0158af2288` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x9a4a2a2e8f755b77eb512e8a8fe635b803950d51` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x9aa02011a90736176f9cdc38ff4d1ed7c90309b6` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0x9bd5b13f51e27b58174968a8983b450a300cda05` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x9be82cddb5c266e010c97e4b1b5b2df53c16384d` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x9c2186cabc49782632efd00ba28bdb92086470a7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x9cd645330e64b07810dde54dee1240060071f6aa` | non_address_book | unknown | unknown | unverified | n/a | `0x5661bf295f48f499a70857e8a6450066a8d16400` |
| unverified unclassified | UnnamedContract<br>`0x9dfbf2b2af574ca8ba6dd3fd397287944269f720` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0x9e291bfbb158ffaaf1c3a8ccd694be0d49d6aada` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xa402f9e5015be2de7aed695e47f2729246cc9434` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xa4ea2fd4a88cb66488109efb8ecd4a96f5376261` | non_address_book | unknown | unknown | unverified | n/a | `0x65f84a48e640a908d0df7b6f00b871352f77022d` |
| unverified unclassified | UnnamedContract<br>`0xa504742cefe2f9027328b49c7cffec3d79b5ab1c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xa5c16eb6ebd72bc72c70fca3e4facf389ad4abe7` | non_address_book | unknown | unknown | unverified | n/a | `0x5661bf295f48f499a70857e8a6450066a8d16400` |
| unverified unclassified | UnnamedContract<br>`0xa7e98815c0193e01165720c3abea43b885ae67fd` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xa85461afc2deec01bda23b5cd267d51f765fba10` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xaa0850ddf8ab99286a473a7d2a96e07cefa89034` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xaa25a6fa9e4dadae0d3ee59bea19fbcf0284830c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xaa346781ddd7009caa644a4980f044c50cd2ae22` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xac288da6a8c5b6406562c27d54ba22666fe3adca` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xac8a4d55c1d6ea3f84a6c868f2b5a5ec3cef2800` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xad19c0506f5277bbf92d8dfde1a51a15aed42606` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xadcfcf9894335dc340f6cd182afa45999f45fc44` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xadf9acf398e5b85d9151b27a3ae2b462409cb780` | non_address_book | unknown | unknown | unverified | n/a | `0xdccbf50347e6b7f151ef4ec853c2a6be149a3cda` |
| unverified unclassified | UnnamedContract<br>`0xae14b769eac8ddb3caa79bd3d7c21d2986327bce` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xaee70429bdfbf599a979f50d5fde5eb0d317e0f7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xb08eb288c57a37bc82238168ad96e15975602cd9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xb19059ebb43466c323583928285a49f558e572fd` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xb1dc9124c395c1e97773ab855d66e879f053a289` | non_address_book | unknown | unknown | unverified | n/a | `0x5661bf295f48f499a70857e8a6450066a8d16400` |
| unverified unclassified | UnnamedContract<br>`0xb311acd3eba1acfa29957cad50746738d52070dc` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xb576491f1e6e5e62f1d8f26062ee822b40b0e0d4` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xb57a959cdb3d5e460f9a7cc48ed05ec29dff049a` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xb57eabf6d8cd38408c32972a22da42fb27b8d008` | non_address_book | unknown | unknown | unverified | n/a | `0x65f84a48e640a908d0df7b6f00b871352f77022d` |
| unverified unclassified | UnnamedContract<br>`0xb61009896eb35d81d02f15b2a1380252d2141725` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xb8687d7dc9d8fa32fabde63e19b2dbc9bb8b2138` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xb8a3f8e783d52cfb9e632276714234661db698e6` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xb911d7e59ba82fdf477a2ab22ff25125072c9282` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| unverified unclassified | UnnamedContract<br>`0xb960c386eca71d28c95cb064d2f4720fbad1f8fd` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |

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
| needs_review | 292 |

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
