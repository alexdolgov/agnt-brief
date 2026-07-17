# Agentic Audit Brief: Wasabix

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 4 (2 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Wasabix (`wasabix`)
- Website: [https://wasabix-finance.gitbook.io/wasabix_finance](https://wasabix-finance.gitbook.io/wasabix_finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, polygon
- Contract surface: 105 unique implementations (105 raw deployments)
- Coverage basis: 1/2 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $225,120.24
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Wasabix. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across bsc, ethereum, polygon. Structural roles: 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: supporting (2)
- Contract kinds: contract (2)
- Detected standards: accesscontrol (2), erc20 (2)
- Frameworks: openzeppelin (2)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- BurnableWasabiToken (`0x86e73212002f80c57070efad4765ff0117de5aea`, chain 56)
- WasabiToken (`0x896e145568624a498c5a909187363ae947631503`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/2 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 103 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 105 unique; 103 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/105
- Verified + Unaudited implementations: 104
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 105
- Raw deployments: 105
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 1.0% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| WasabiToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-396604 | `0x896e145568624a498c5a909187363ae947631503` | ✅ Audited |

### ⚠️ Verified + Unaudited (104)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AggMonetaryPolicy-monetarypolicybasedonaggregatedpricesforcrvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0901b541beff2cd44859701619e245e82f48e62b` | ⚠️ Unaudited |
| AggregatorStablePrice-aggregatorofstablecoinpricesforcrvUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x18672b1b0c623a30089a280ed9256379fb0e4e62` | ⚠️ Unaudited |
| AirdropDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x35d9da43a62b509a38c0aa406042baebe8d5d9b1` | ⚠️ Unaudited |
| Alchemist | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cefb9f7c53a1b0c78e239b2445ddd2d362b7076` | ⚠️ Unaudited |
| AlpacaBNBVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x80c6901659b70a79bc55b821e7df81840385abbe` | ⚠️ Unaudited |
| AlpacaBNBVaultAdapterWithIndirection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5cda2a223458316cfe2f829bde7e5581c9d1e4cd` | ⚠️ Unaudited |
| AlpacaVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa33b1b67288e47303ec3612662d00ab489d161dc` | ⚠️ Unaudited |
| AlpacaVaultAdapterWithIndirection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b6ed71fff348d4ece9953955670e37f3809d373` | ⚠️ Unaudited |
| BunnyVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3d244d67d680cadcccf34f8f996cea777b6d9ffe` | ⚠️ Unaudited |
| BurnableWasabiToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-396605 | `0x86e73212002f80c57070efad4765ff0117de5aea` | ⚠️ Unaudited |
| CompetitionDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x59f4090fcf57c355015bcf7805e4e2d6a1958a63` | ⚠️ Unaudited |
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
| HealthcalculatorzapforcrvUSDcontroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a` | ⚠️ Unaudited |
| IdleVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5712c641ca4c0ef4bcf70a7aa53aeb680abf5844` | ⚠️ Unaudited |
| LeveragezapforcrvUSDcontroller(sfrxETHmarket) | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb556fa4c4752321b3154f08dfbdfcf34847f2eac` | ⚠️ Unaudited |
| LiquidityGaugeV6 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00b71a425db7c8b65a46cf39c23a188e10a2de99` | ⚠️ Unaudited |
| LiquityStakingPoolAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc95269c12eeaa8061c03cd2340897d97de885c30` | ⚠️ Unaudited |
| LiquityStakingPoolAdapterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x71b426f51f1ba003836abfb457eb2f90643c504e` | ⚠️ Unaudited |
| LiquityStakingPoolAdapterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x767bdd47880b0533b29abb1e3f9f3e30ce009147` | ⚠️ Unaudited |
| LiquityStakingPoolAdapterV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf56053612090896cfa14b89f32a259faef49fe5a` | ⚠️ Unaudited |
| LiquityStakingPoolAdapterV5 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x834893645f06f7ce32729ea27bb7233157ac1f47` | ⚠️ Unaudited |
| LLAMMA - crvUSD AMM | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a` | ⚠️ Unaudited |
| LockerDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x256f29e1e4fe5fb60d5d01e030d8a74def2329e9` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x06709db1690efbb32ef3fe6addf1fe787e9c8159` | ⚠️ Unaudited |
| MigratableBNBTransmuterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1d5a685a5e6bec8471d6d9ad2d20ac48ecb2109` | ⚠️ Unaudited |
| MigratableBUSDTransmuterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x99b399b4c79b8c51c4bc8c0df4f49a77cfdec340` | ⚠️ Unaudited |
| MigratableLinkTransmuterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60b4b6e42b5f3cab771313d2169a00fb5378fb15` | ⚠️ Unaudited |
| MigratableMUSDTransmuterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb938d8cbf7fc6455d1f2ebede5ff9a8e887493b2` | ⚠️ Unaudited |
| MigratablePUSDTransmuterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbbb26ccd60d1444280875c2f9f22bd8c910ec2eb` | ⚠️ Unaudited |
| MigratableTransmuter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99b399b4c79b8c51c4bc8c0df4f49a77cfdec340` | ⚠️ Unaudited |
| MigratableTransmuterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb208dec45edbd1179d9e275c5d459e6282d606ea` | ⚠️ Unaudited |
| MigratableTransmuterV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe8043ad7b54045619022a4f7c3a596023425540` | ⚠️ Unaudited |
| MigratableWethTransmuter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ee64f74792c307446cd92d23e551efae3172a28` | ⚠️ Unaudited |
| Multicall | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x8b4b559b34c1742dbcf178bfed9bc85f6ece1c7b` | ⚠️ Unaudited |
| MultiClaim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x32facb5a46e02decaf5f939ab12c123eee203a5f` | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x162bda4208e3ee27885fba4c7a3e33303e3cf2b5` | ⚠️ Unaudited |
| MUSDVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc3be5522cfeb6ef612301c3fa2ce84058c74dd2b` | ⚠️ Unaudited |
| MUSDVaultAdapterWithIndirection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x74ea4ce9688622132bc4966544e91ba990f5472a` | ⚠️ Unaudited |
| OneWayLendingFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c` | ⚠️ Unaudited |
| PancakePair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4af56f065fab006721ab686086be206eba9d1abc` | ⚠️ Unaudited |
| PegKeeper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae` | ⚠️ Unaudited |
| PegPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x226845c2ba216b8bb1aaadfd4e14de69426c5445` | ⚠️ Unaudited |
| PickleVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd542b6741b96e703b7e32cca22a94d69ae50cb7a` | ⚠️ Unaudited |
| PolyquityStabilityPoolAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x859d44789d9b3ba4d8085117ea72f7de197af4a4` | ⚠️ Unaudited |
| PolyquityStabilityPoolAdapterWithIndirection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2370b0b9c1b8283d2e9cf4719901ccb21e44a6dc` | ⚠️ Unaudited |
| RewardVesting | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x219de705e6c22d6fbc27446161efcc7d5d055ecb` | ⚠️ Unaudited |
| Secondarymonetarypolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x188041ad83145351ef45f4bb91d08886648aeaf8` | ⚠️ Unaudited |
| SecondarymonetarypolicyforWBTC | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e1f162fd143e4a829341efd6dd451b018b10f9c` | ⚠️ Unaudited |
| SemiLog monetary policy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2a28789645776eaa95f6d491ff375781ea5b40dd` | ⚠️ Unaudited |
| sfrxETH2crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc` | ⚠️ Unaudited |
| StakingPools | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0e38843b6526a4f5e2ea95096a252c15cbea10ef` | ⚠️ Unaudited |
| StakingPoolsV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a8086416c824b03d682d6ba117f2ec759c4a085` | ⚠️ Unaudited |
| StakingPoolsV4 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0eda8090e9a86668484915e5e1856e83480fa010` | ⚠️ Unaudited |
| SusdeMonetaryPolicy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf574cbebbd549273af82b42cd0230de9ea6efef7` | ⚠️ Unaudited |
| Transmuter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x219de705e6c22d6fbc27446161efcc7d5d055ecb` | ⚠️ Unaudited |
| TransmuterD8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68e91df501ab66a0796d0fd164b907acf5f89ad0` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x8f9ef75cd6e610dd8acf8611c344573032fb9c3d` | ⚠️ Unaudited |
| USD0LpOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2aeb5c8776567c4eeebda1450e343b1bef49ae32` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x596f8e49ace6fc8e09b561972360dc216f1c2a1f` | ⚠️ Unaudited |
| VesperLinkVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x599355f4f47b212591514624abecc135fa0c1b16` | ⚠️ Unaudited |
| VesperLinkVaultAdapterWithIndirection | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xba823ebd48df9d303a0821f79ea196840a263988` | ⚠️ Unaudited |
| VesperVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaf1ea5b45498f6c1b457b0e40cfe423e74713b05` | ⚠️ Unaudited |
| VesperWETHVaultAdapter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b276d9b1cbdf7bc9556635059c6ce672e6f4052` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d487aeaf197691aa5645728c54f204be67991ff` | ⚠️ Unaudited |
| Vyper_contract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0145fd99f1dd6e2491e44fca608c481c9c5b97a9` | ⚠️ Unaudited |
| WaBNBToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8ac4041d5801bc7cda5df5fd3af9f14546a9c223` | ⚠️ Unaudited |
| WaBtcToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd8e70e83e399307db3978d3f34b060a06792c36` | ⚠️ Unaudited |
| WaBUSDToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x541f7be45dfb35fe7a246e43cb2bd17953c5e17d` | ⚠️ Unaudited |
| WaEthToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6a1fbefdf67445c7f531b4f3e04ffb37b7b13794` | ⚠️ Unaudited |
| WaLINKToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ddf2c4f1e80dc9e95cc57a9ca03a28e4ab6d6c` | ⚠️ Unaudited |
| WaLUSDToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcbf335bb8ee86a5a88bebcda4506a665aa8d7022` | ⚠️ Unaudited |
| WaMUSDToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b0063dbb53a822f2bf3a50ebe8d2c365392ac5b` | ⚠️ Unaudited |
| WaPUSDToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d244d67d680cadcccf34f8f996cea777b6d9ffe` | ⚠️ Unaudited |
| WaToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2db4c131adaf01c15a1db654c040c8578929d55` | ⚠️ Unaudited |
| WBTC-crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa2518b71ee64e910741f5cf480b19e8e402de4d7` | ⚠️ Unaudited |
| WCToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x337fb95421b69c738ba2914f832455566625238e` | ⚠️ Unaudited |
| WIToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5cefb9f7c53a1b0c78e239b2445ddd2d362b7076` | ⚠️ Unaudited |
| WIZToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x091d07d5f57d27dfadf032965d441b0275eddcb2` | ⚠️ Unaudited |
| wstETH-crvUSDleveragezap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd` | ⚠️ Unaudited |
| WVVToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2f2c3459dae9cf208f5ad6017f9a146382fe5704` | ⚠️ Unaudited |
| YumAlpacaBNBVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb4f52916414119e4212369569d9089f90070b6dc` | ⚠️ Unaudited |
| YumAlpacaBUSDVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84e6fd3595010aa6ee461ea2bffa03776780f412` | ⚠️ Unaudited |
| YumBunnyBUSDVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a676d8ea2e685f46a575a413f8e90ca49614d0a` | ⚠️ Unaudited |
| YumEthVesperVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb642eb5faf7e731ff62823515b3ff82b45d385bc` | ⚠️ Unaudited |
| YumIdleVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x894ccdbed28e294482fecf10eac5962148bf4e15` | ⚠️ Unaudited |
| YumLinkVesperVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4f2030ded976f45fbb23b702ba725d6f88ef142` | ⚠️ Unaudited |
| YumLUSDVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x55c75414f525ef9ccbb8105ce083edbda0075fb5` | ⚠️ Unaudited |
| YumMUSDVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2ff71c31483fb7033c06b6dafe0442f2a5cb5f1a` | ⚠️ Unaudited |
| YumPickleVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2de9441c3e22725474146450fc3467a2c778040f` | ⚠️ Unaudited |
| YumPUSDVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a8086416c824b03d682d6ba117f2ec759c4a085` | ⚠️ Unaudited |
| YumVesperVaultD8 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26a70759222b1842a7c72215f64c7fde8db24856` | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Rendered PDF capture](https://166619442-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MUN3OWWYS40IGKkCepD%2F-McPgoP0AUJ9kjMIoyGS%2F-McQ3GtcUwuBv6u97CwY%2Fpre-wasabix-yum-2021-06-11.pdf) | CertiK | Audit | 2021-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 18 | high |
| [Rendered PDF capture](https://166619442-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MUN3OWWYS40IGKkCepD%2F-MWNsuLL8yoNRHifRZ1c%2F-MWOeaOj-23tsPP3PJr9%2F-1146290826623177881security_assessment_for_wasabi_finance%20(2).pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 4 | high |
| [Rendered PDF capture](https://166619442-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MUN3OWWYS40IGKkCepD%2F-M_eD1DSVTu1RnIHDGIa%2F-M_eDOwmdj22tCQiii-i%2FWasabix%20Finance%20-%20Smart%20Contract%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2021-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [www.certik.org/projects/wasabixfinance](https://skynet.certik.com/projects/wasabixfinance) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18616] Rendered PDF capture — matched: Extracted 19 contracts from the Audit Scope table and findings. The audit date is explicitly stated as 'Delivery Date Jun 11, 2021'.
- [18617] Rendered PDF capture — matched: Contracts in scope explicitly listed in the report.
- [18618] Rendered PDF capture — no match: Five Solidity files explicitly listed in scope table on page 4. Audit date from cover page: 14 May 2021.
- [18619] www.certik.org/projects/wasabixfinance — no match: The provided text is a project dashboard page from CertiK Skynet, not an audit report. It contains no scope section, contract names, or audit date. The only contract address mentioned (0x896e145568624a498c5a909187363ae947631503) is a token contract, but it is not listed as in scope for an audit.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Rendered PDF capture | Alchemist | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | MultiSigWallet | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | MultiSigWalletWithTimelock | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | StakingPools | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | Transmuter | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | TransmuterD8 | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | WIT | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | WIZT | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | WVVT | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | WaBtcToken | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | WaToken | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | WasabiToken | own contract | WasabiToken (selected) `0x896e145568624a498c5a909187363ae947631503` — deployed 2021-03-22 10:57:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | YearnVaultAdapter | unmatched — not counted | — | listed in Audit Scope table | no |
| Rendered PDF capture | IdleVaultAdapter | unmatched — not counted | — | mentioned in findings (IVA-01, IVA-02) | no |
| Rendered PDF capture | PickleVaultAdapter | unmatched — not counted | — | mentioned in findings (PVA-01, PVA-02) | no |
| Rendered PDF capture | VesperVaultAdapter | unmatched — not counted | — | mentioned in findings (VVA-01, VVA-02) | no |
| Rendered PDF capture | YumIdleVault | unmatched — not counted | — | mentioned in findings (YIV-01 through YIV-04) | no |
| Rendered PDF capture | YumPickleVault | unmatched — not counted | — | mentioned in findings (YPV-01 through YPV-05) | no |
| Rendered PDF capture | YumVesperVaultD8 | unmatched — not counted | — | mentioned in findings (YVV-01 through YVV-04) | no |
| Rendered PDF capture | WasabiToken | own contract | WasabiToken (selected) `0x896e145568624a498c5a909187363ae947631503` — deployed 2021-03-22 10:57:00+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Rendered PDF capture | MasterChef | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | ContributorsVault | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | TeamsVault | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | StakedWasabi | unmatched — not counted | — | listed in scope | no |
| Rendered PDF capture | Alchemist | unmatched — not counted | — | listed in scope table and file analysis | no |
| Rendered PDF capture | CDP | unmatched — not counted | — | listed in scope table and file analysis | no |
| Rendered PDF capture | CDPD8 | unmatched — not counted | — | listed in scope table and file analysis | no |
| Rendered PDF capture | Vault | unmatched — not counted | — | listed in scope table and file analysis | no |
| Rendered PDF capture | VaultV2 | unmatched — not counted | — | listed in scope table and file analysis | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x86e73212002f80c57070efad4765ff0117de5aea` | BurnableWasabiToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 103 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 2 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 27 unmatched
- Matched-own operational status: 2 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: unique_name=2

Zero-match audit list:

- [18618] Rendered PDF capture
- [18619] www.certik.org/projects/wasabixfinance

Fork inheritance lineage and inherited audits are included when available.
