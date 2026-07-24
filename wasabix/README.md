# Agentic Audit Brief: Wasabix

## Export Authority

- Production state: **published scope**
- Raw selected rows: 2 across 2 audit(s)
- Eligible audit results: 4 (2 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Wasabix (`wasabix`)
- Website: [https://wasabix-finance.gitbook.io/wasabix_finance](https://wasabix-finance.gitbook.io/wasabix_finance)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: bsc, ethereum, polygon
- Contract surface: 483 unique implementations (483 raw deployments)
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
- Outside the address book: 481 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 483 unique; 481 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/105
- Verified + Unaudited implementations: 104
- Verified by bytecode match: 0
- Unverified implementations: 378
- Unique implementations: 483
- Raw deployments: 483
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

### ❓ Unverified (378)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01c6808eb242c826d32f03712d66d5e613782363` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02152d5edcdba56a55efee36ceb9d9f7e47aeb5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06ce8086965234400fdecab190b115c2c0717047` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b81cff64efc89fcdbe7da78054232daa89d73ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0bdb2ed45ea8337f6437ef193c2ffd32fc9b75e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce41af9dfa0d697da79dd30b8b73bf52a107499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0ce658f9bc3af831271199578449810023dba703` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d5db5a48cba4b48c68494015e75482ea2422a23` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d89774935e3d88b91f0cea0991f4fcd7d9f5470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0d91518d59a6bf5f9b1576edead855c643a70cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0eda8090e9a86668484915e5e1856e83480fa010` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x116f4b7854f07928a3f39bc5f920547947e8b47a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15282d93b1f2c92a034936f6f56a55c0d423e8d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x15d0db34281fbac9763de44e58072b311caafea9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a44e87223e1d982c8584bc4ee236f9f91288d6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a783886f03710abf4a6833f50d5e69047123be6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1d9e59364785ebf00e8ef2c15e132d0f661585ca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1dab6560494b04473a0be3e7d83cf3fdf3a51828` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e7d3bf98d3f8d8ce193236c3e0ec4b00e32daae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x23208ca4f2b30d8f7d54bf2d5a822d1a2f876501` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x271fbe8ab7f1fb262f81c77ea5303f03da9d3d6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2807227adeb8e99812f132417b032f0cc50b94a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2869e74a15d3c0c797b04feaef93734060a4477c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29ec0d55b8f26298a5350c64f56281eb070bf47e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2b7e624bdb839975d56d8428d9f6a4cf1160d3e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2bc2362dca28c49cbded8616fa517c81442bb686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c9b39f4d18e2e19c1f3d2b378128ee7ebe9f372` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d370111f8ffcf5bff0f56ba43c62c2ad98be7a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2e46b45f272308076532332cc8769f534384a83e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2ef4b38a128ecc1ac06b43055553f95af59523de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2efd768fbc2b768bd87320ef4fc2da3a196286f7` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a6968e076856f59cead4a80cff2159e66d8a504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b6831c0077a1e44ed0a21841c3bc4dc11bce833` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3be09dea9ca8b6205d05f196e9c68fc35190a514` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3c08533dbcd0ab64bff5306a9d6d1de912b81b9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3d229e1b4faab62f621ef2f6a610961f7bd7b23b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3da7ff6c15c0c97d9c2df4af82a9910384b372fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f7c29b3a760623ba608f6fc795e72c425546201` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40745803c2faa8e8402e2ae935933d07ca8f355c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x409893c94aad411030e5a78fd39b015221dfb8b7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4169ef3b885416bd553567e78585a97ee52ba700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41d5d78049d44444ac6d5e1ec67990f24efacd58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42b9dea10b51a696949715797bdfd69489fc3b32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42dd7dc055a04c3d795a3dfd2eaaf7d480367a02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4316416f429b04fb12df8952fa1434e6b9d77c3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4519efbcbae2064b8498e61ecd5179e86484de10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4530277855595741b53cac5532b4a6cc9d83d9bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4710a77a0e0f4c7b0e11cdeb74acb042e62b8d22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x47e3492439528fef29bc5da55aa49ed0efa15c6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x480af6d9abe851e2fc4162b2b93fff8cf84ddee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4863c6df17dd59311b7f67e694dd835adc87f2d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x496fa82da20ee4ea92d8f0b13e0f0ded6ec0a8e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x49b74bfda1a89791b89ec954a33148617ada6441` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c18e409dc8619bfb6a1cb56d114c3f592e0ae79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c1d4ad2fa2ba5510acbb0f428ec861e1f7ea3a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4c5d4f542765b66154b2e789abd8e69ed4504112` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca9b3063ec5866a4b82e437059d2c43d1be596f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4cb152b45e667f86a0470776bed0be93a5f1c534` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4efb0e6aba6517ce4fdd3f31013cbbc0bbb8dbfa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f37395bdfbe3a0dca124ad3c9dbfe6a6cbc31d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4f8846ae9380b90d2e71d5e3d042dff3e7ebb40d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x503a241da85f5005513f588e66b3332e952b47da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50996c7e748b1b83130b4854945d86ba6fc81f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50c39ea8f3d72310c8b56a56b333994266e9b477` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x50f35f4fd499898801282a415f4c3a689663719f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x528baca578523855a64ee9c276826f934c86a54c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x52a430b5b7407fa103c5ae974744e4cc945354e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5473b1bcbbc45d38d8fbb50a18a73afb8b0637a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x584b0fd8f038fe8aedf4057ca3cb3d840446fbbf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5852bda4520f1b000c760c1dfb8ba5db8fcbaa90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a0d404d2042b92eb7948ac5943128e1088fd24b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5aa00dce91409b58b6a1338639b9daa63eb22be7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5ac53910dea4779e5ac3a7e997df8e9d5f6a7c9d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5bea27d52e36c58dbce2921773396f33f2bd780a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5cda2a223458316cfe2f829bde7e5581c9d1e4cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5d0f47b32fdd343bfa74ce221808e2abe4a53827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5e0198c158276efaebc5a32c8351fb5d679d4288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x600e571106c31c4ca1bf4177ba808e37146a4a0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x60b1b1f20373005030095fbe7cde032625fc96c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x62191ef48bf8fd7a0e10ecb066b0350e6a9c18a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x627bb157ebc0b77ad9f990dd2ad75878603abf08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6340678b2bab22a37d781cd8da958a3cd1d97cdd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63564e223ba1fdb491c6ca68f63c67a578443ac4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x649e0b707a90f1d73b27f83358c4d9bcc91fd622` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x656dd75d33a6241a0c4c2368eb00441ad3113ec0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x65a8b215f34df5c30c64523d638ea698065ffa15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x665497b72d0857613a29f73b1dd45b0961b14eaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67fe41a94e779ccfa22cff02cc2957dc9c0e4286` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69aafff1218ba086ac782f98cb8399d1226e2af3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69d7469e677e4c8fa4581d36908b0c9c8750baa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6af700a9b52bdea2e33dbdcacae638fd8e118bd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6b765d07cf966c745b340adca67749fe75b5c345` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6c3f90f043a72fa612cbac8115ee7e52bde6e490` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ddd163240c21189ed0c89d30f6681142bf05ffb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6f4e8c8832ed1a1e14e030d56c015196a705fbf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7002b727ef8f5571cb5f9d70d13dbeeb4dfae9d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70a1151e0bb32484e25c107e3a69886a8361482e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x70fc957eb90e37af82acdbd12675699797745f68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x72de985c5af6f96f3be22784b5533218421e6394` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x747459fc40d80a500440f9d650818f7fa5754acc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x752ebeb79963cf0732e9c0fec72a49fd1defaeac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x75933e1cd077df4140ff7d51ab9c10db3f21c217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7624c0dd4f5d06d650ddff25ffec45d032501260` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x767f11f15640fdd2e7a512e1c268db7fbf6c0e3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76f6d33b5c89f8d880f94527368861fb3bdd9335` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x783128730280053ef00f675b777288e80565f26a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x79d584d2d49ec8ce8ea379d69364b700bd35874d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7af331398dc340bf327904077eb68f27f75a9693` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7c868f045a60501a2f4159446545939771dda323` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7d20ecb58d9d661aef2bd0ee953d53567e695dfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7da2ef41913adc5285ffdcfa3622f5f81c946500` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6327cce4bbdb936ee744a7bae6c2978b62183f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e6c50f75badb725fddaa47c063d8f8407defc5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e8cb02f5cf6f777a628f53c25b49c60a57642ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7ec8e02b74cdd1c1c222dbf3bf47f3256b734099` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80333bd8791fee04c4c3e1ca8a524cefa7c94737` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80466c64868e1ab14a1ddf27a676c3fcbe638fe5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x805c76c90d4af4c0a1e32dfa90b0b73ea8b459a2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80bdf509dd4f8114cb05e2ff166a100d3499ef7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x81373aad854e31e6da610b2fa5260c6c60db8dbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x818709b85052ddc521fae9c78737b27316337e3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8282bd15dca2ea2bdf24163e8f2781b30c43a2ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8301ae4fc9c624d1d396cbdaa1ed877821d7c511` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x832f436ad2813c76aae756703cacb5c1028d11da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x847ee1227a9900b73aeeb3a47fac92c52fd54ed9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8484673ca7bff40f82b041916881aea15ee84834` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x856ff1aaff4782eee27d2c6bbad48781f57f88cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x85fd0626e2d7f07a2b08718f2ea2e044b1d5f163` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86b54e036ded4feedd41442f9cd8620feda59dd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89086653f185a0431d24043d92772942c141bab0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ac9a0b48fc66875de710ab7ee53027970064dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89b5daa78847bf168534bd4178b249c1f55dceff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89d32bf7b120630b24fe9edc8c7534a73016c999` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89ea1e4232680a66470a725ffd399082a375d1ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8aeb58603efb7a9f63712a2506df01b685ba1c4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b6861d07d3688103d0ad801fabfc4f6bac231de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8b8dce09b0deb003573215d5be238534b1cf11bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c5a7f011f733fbb0a6c969c058716d5ce9bc933` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8d76f31e7c3b8f637131df15d9b4a3f8ba93bd75` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f300679f893584149af176562abc64f8e3b4476` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f4ef8c623c33cdb6a57c19aecb87e161fa7691f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f68f4810cce3194b6cb6f3d50fa58c2c9bdd1d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x913a3a0d83b87497587e66a7f9603ccd998ba572` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9164e210d123e6566daf113136a73684c4ab01e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x95ecdc6caaf7e4805fcef2679a92338351d24297` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x96d07ff312c56e08462308bca2f5e505e8111a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97f60ffc47fafbcba3ea364bff2abcbabf85c849` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9838eccc42659fa8aa7daf2ad134b53984c9427b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98638facf9a3865cd033f36548713183f6996122` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98a7f18d4e56cfe84e3d081b40001b3d5bd3eb8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99f8dc2eac0940e609a8dcb9fc905f0158af2288` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9bd5b13f51e27b58174968a8983b450a300cda05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9be82cddb5c266e010c97e4b1b5b2df53c16384d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9c2186cabc49782632efd00ba28bdb92086470a7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9dfbf2b2af574ca8ba6dd3fd397287944269f720` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9e291bfbb158ffaaf1c3a8ccd694be0d49d6aada` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa402f9e5015be2de7aed695e47f2729246cc9434` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa504742cefe2f9027328b49c7cffec3d79b5ab1c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa7e98815c0193e01165720c3abea43b885ae67fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa85461afc2deec01bda23b5cd267d51f765fba10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa9ee843c9197a93424d735b7ded92a89bae47f47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa0850ddf8ab99286a473a7d2a96e07cefa89034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa25a6fa9e4dadae0d3ee59bea19fbcf0284830c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaa346781ddd7009caa644a4980f044c50cd2ae22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac288da6a8c5b6406562c27d54ba22666fe3adca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xac8a4d55c1d6ea3f84a6c868f2b5a5ec3cef2800` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad19c0506f5277bbf92d8dfde1a51a15aed42606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xadcfcf9894335dc340f6cd182afa45999f45fc44` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae14b769eac8ddb3caa79bd3d7c21d2986327bce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xaee70429bdfbf599a979f50d5fde5eb0d317e0f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb08eb288c57a37bc82238168ad96e15975602cd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb19059ebb43466c323583928285a49f558e572fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb311acd3eba1acfa29957cad50746738d52070dc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb457b400b817898efe60a614fdbcdf6626026293` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb576491f1e6e5e62f1d8f26062ee822b40b0e0d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb57a959cdb3d5e460f9a7cc48ed05ec29dff049a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb61009896eb35d81d02f15b2a1380252d2141725` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb7055d5ce6522fd009129f22e41db976379035d1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8687d7dc9d8fa32fabde63e19b2dbc9bb8b2138` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8a3f8e783d52cfb9e632276714234661db698e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb911d7e59ba82fdf477a2ab22ff25125072c9282` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb938d8cbf7fc6455d1f2ebede5ff9a8e887493b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb960c386eca71d28c95cb064d2f4720fbad1f8fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb9f861b7755ff09cfd65cfe262d19823607b1f24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbac8459641f765b26e8984f29082629359f084c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbb3fda661149f6e45d829d5dd54a1608577c5fa1` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2e274a3df42ab2299cef032083d5e068ec9d339` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc455e6c7936c2382f04306d329abc5d36444d3f8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc4ad29ba4b3c580e6d59105fff484999997675ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc54106a999bede585c9574f2e4cb31df46cbdd83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc5fa220347375ac4f91f9e4a4aab362f22801504` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc67a44d958eef0ff316c3a7c9e14fb96f6dedaa3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc684432fd6322c6d58b6bc5d28b18569aa0ad0a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc6f851a159b50dcb1961343df63f46bfe9ffa2b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc7bab672806932fcaf918b4318796b02b0832856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc95bd7460ece4007973458d1c0f8ccc46c1880df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca3d75ac011bf5ad07a98d02f18225f9bd9a6bdf` | ❓ Unverified |
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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd3e576b5dcde3580420a5ef78f3639ba9cd1b967` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd446a98f88e1d053d1f64986e3ed083bb1ab7e5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd51a44d3fae010294c616388b506acda1bfaae46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd67a43115b7abd589fbd75da51e625c7250c008a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6953e2c5546860a244aacb0e5af67a16d3725de` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd6b6f9d0d0e68886a9ad98480e79b75bf4d7e478` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd79964c70cb06224fda4c48387b53e9819bcb71c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8f49c747aed8d394f6f1841546e2b83e09a357d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdc892358d55d5ae1ec47a531130d62151eba36e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd05247d34d85bcc145c74e2f1d070352fef83f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdede1cce94cdaa3ce358e561895775db369b72e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdf41e21dae8bf6ae3eddb83337f8364eb7fc1659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe38daa41be7ca22f724b9cf6d13cd920bf18a3d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3e3fb7e9f48d26817b7210c9bd6b22744790415` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3ee57d3fbdbae9b506a92da79ca8454ac288e2c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe55be4c8f2d3c11536f61c8977dac4ad58446059` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5749762f32f6cd98e37ec53123eff402c245e20` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe5afcf332a5457e8fafcd668bce3df953762dfe7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe782adaa40f2148ccd0e181ce090e44900e392ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7cd2b4eb1d98cd6a4a48b6071d46401ac7dc5c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe84f5b1582ba325fdf9ce6b0c1f087ccfc924e54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8b2989276e2ca8fdea2268e3551b2b4b2418950` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe911fa14a49ac37e79ae8a60bd22a5f6a78c85a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe96a9bdb549f4cc4ee8deb7085bd6ffe4b273b1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xea6876dde9e3467564acbee1ed5bac88783205e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeb4480152bef93fa7bd01a7f427f1dd3069fc4d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xed4064f376cb8d68f770fb1ff088a3d0f3ff5c4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef1385d2b5dc6d14d5fecb86d53cdbefeca20fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf113929f69fabe165a2280cac00c5f77196aa34c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf18056bbd320e96a48e3fbf8bc061322531aac99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf194e7706b4cf7561a294fb74c94ab964c6299bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf313a91af8930ae7fe3e6f8ba7ce62024928ee77` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf5e9eb18b3ecdfda07ea55133f427d47add6884f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf71040d20cc3ffbb28c1abcef46134c7936624e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfa3e2db8eb6c646e0d24046c1a185934d41a8f7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfb230bc3de97ee43d2501bcaab9a50bba9b69e1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfbef0cb133e2921aad88bbd993990834ca33bda6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc14a0fb96144dda4d95bfed6e9a63b1be2c526b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc780e0e273098e6efdad6f30caa48ffc659cd6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xff051db87adfb0be398016ee5c68280ad49f1fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x069b46500ce7cc3692aa7168aabd241f0949d450` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x14a7df212a38df518649f4c814daa3ab6c298b5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17365428b95c260e31bab5da4c2c2f48ca5cb64b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x184ed31207877619fc8ffda30530a84158c1f847` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ce66b922a1065591517306bbc171b9eaaf12b46` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x210ba4dfb36704bbf3347155e3712fa7cda35ab5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3527640987c211df03737b2146b160ddbfcc14d2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c227b799591aa9e1abefe5bc7689046e6fba470` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3cfb4735c770b4d660d394710720f3adbcb3ab4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4530277855595741b53cac5532b4a6cc9d83d9bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45cdc928aa9098e88bbb8740df4f67b572c6ba69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48d013c17bc70bfbb8ec0b0f35afbde59833ae27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a33055edda8ed63df6549e07ba588dae22b596b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6a6184f2bed64e2478cfe5e38e966b6a9bcf2547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d897d9c0902ac9399fff708d1c201396342c80c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6dd4fc226a8d517fa8ce1f20c8c5f4d45aa1c3af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6e6a23cfa379c3b4ccd958b1b2cab46cf159e83e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7240b0b7093551bd728c3c82d12adbaa0ffda30a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x742289ca46ca5f2891c39b0c6c462cf0746e5373` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x75933e1cd077df4140ff7d51ab9c10db3f21c217` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x894ccdbed28e294482fecf10eac5962148bf4e15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9278fed9579b9e060ef269026c07842c98441b03` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a148bf1185b755087596ce4f364c0c1dc533b3b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9d89feb83a156330c9588e0fcb2b08bbc25ff827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb208dec45edbd1179d9e275c5d459e6282d606ea` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2bdaa10afa093c9c62f20f0415830aac6df6e61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2db4c131adaf01c15a1db654c040c8578929d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc9595e98cf8e8bb07bcc3a7e75c27acdca950aec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc607dbeea5377ab359f9879fde856d4f3b08146` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3864595cce770f01af443c7103e9f21e5b50162` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd67a43115b7abd589fbd75da51e625c7250c008a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdb4c7cb0091f1d60081c568a1306d6a4fe1bbf38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbc41e2f9493e08fce2e831dfff921feb450acbd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0f6707a45ddeb2e6d9da25b3b2313b5d263b439` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe88c9b20bddbc7ea69e4344621b20d7214ebb736` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea9087fb240fb7f604bca5f9b635b5f8d6900afe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeac3de2221770a2f182743ed69453e7dc9c2f492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xebc6e4f988574be0d432639a86a83441c7b4aee7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf275c87e00ef5aad30c638a188aad0ef18cc381b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa50265e95d072227e51953d9bf5e147916a68c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd76539137333b40ab82e82c8d9d9c4b07b327ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfd8378d266de9170c4f35cfe0b1da8f6545ebe4c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02b21e6b80024970f7eabd3aa628495101ab256a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x126162c97801107e0d7acc7a41c4f98404ccd2ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x17a9629faa848a597ad4107a333dcd1b99e9b7c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1a44e87223e1d982c8584bc4ee236f9f91288d6d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1d1a65a31a1ae57d8143f2f773ce4c9a7df6c488` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ed9791a7e76ba3ffc88293e624f8232f449cf38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x231d218791c4c8d18a5a578047838e9027cefa08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x24f842f0ac1ef4f2eaac4cf2fa865c190c4c8a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x26892531d995b4fbecf8b3a28614a48506c89b8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2b23e13875a9e64c6c5876316c94821c34aa47a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2fbc48b880d9d022339cd355d7328232ece92027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2fdd53648bb83ce1956f441b93083ff8dc755e32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x330cbc8f9dc60160bd5fa87d5d8ba48b24ab9aa6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3569c7cc93c37a94544e6eb09313be3225074a7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38830bdbe79e317113e78eb388ee18baf496d8c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3cfb4735c770b4d660d394710720f3adbcb3ab4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3d0078f81cdd078bcc0844b99174b3c50f866527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3da01dcdfa92ad5896baf83f11ab2f1f411bc35d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4530277855595741b53cac5532b4a6cc9d83d9bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x466bcd6b662357fd05c996311cb489f3a942eff6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4f5429b6d751b96873cfc32b2afb92f516a635c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x52d5ae2fa4edffb5579c18dc6fe520b8c834ff96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x54c57c72668782693a264a8ee989318269724ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x55a6f115c7edaffffc662be5c9fe7620c941b582` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5938f8255af62b7c4e232f1b960eef168d7a7a98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5cefb9f7c53a1b0c78e239b2445ddd2d362b7076` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5d4baaf4bde815226428ff90193b69af27fc783d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x60b4b6e42b5f3cab771313d2169a00fb5378fb15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x63f82adb8c63f80a59300277782770de7bd17d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6a38dcf608754fa8154263b50a73ce100d03010f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6d430be71002da54f189498b86d2df66e652ba3e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7bef2f7af3d43daab393e7e88f0ba6180521793c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ed6901b026f55552b998f42883e0cfb5a042dc9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x80c6901659b70a79bc55b821e7df81840385abbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x87797f8986ed5a5b4a5530fedfe03070c7c5b662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x896e145568624a498c5a909187363ae947631503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8b5fc7e80edd7ac03c10e10c63e08baf7486176e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8d24f63df1ad391288da1053a2b93f0e501c65a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x975716e8937e7dc15895d8670a341ba5158fc527` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9c299912e2483387ee3f846e3bf57aebb11d5360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9d89feb83a156330c9588e0fcb2b08bbc25ff827` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9e4155bd72734d02cca5acf2dd09b639e6f776a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9ebc58f5e1d3a4cf518ac7b669ec4fefd3cc3dda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa24737399b6418f35ae542afa49ef3a7e33201f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa8449e5915e1467bbb93fe515202ba366f57474a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xaa35125cb83d50853d9d79f9b82b162e6bfbc4c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xac69c957d36b6fa8d556221fc725ea364bb8ce98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafa70b9b6cc0bcea2249a7d5bcf134deab80d1eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb08a0a62abd5822ad72f5f020cfe93db40c56fd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb457b400b817898efe60a614fdbcdf6626026293` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb53e66ec90be3b797bcb60fcee884b6668581e81` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc2db4c131adaf01c15a1db654c040c8578929d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc4c010ba0c709e245cb0b43d7d53d75725cbb0ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc87ef1eb3577201c8461387475d953bb5626fc64` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcd160430c3ede61d721f60be601e2129ba4b0b42` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd3ebe0ee0316f5a596c64e7b8099e0b4398e1f61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd3ec97b0413502b914361de86a12f5cfc8f200d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4fb45df14deb58bfa86a96f7d8c093e1bb8a738` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd98b5a0ce00a3fc74463f030c4ba09f16b6d4b9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd9bf627eddba7bc9ce477d4c417251f1c151d168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xdab16f14dcbe479950ae9d81fdca81f84d7c5885` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf345e10585b854aad74e66b6d0abd69e98afcf2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf74f6122f0ad22619011ae99b21a9125f9ba6b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf83cead83f031b275955445909ba7aae2886891a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfabf5534839f6f045b7c2410f67c1f6e358ca371` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfb57cb168330197f1fd0d6a32e6811f3a5d41f40` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 378
- Live contracts: 0
- Unknown liveness contracts: 378
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=378

Showing first 200 of 378 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| bsc | unverified unclassified | UnnamedContract<br>`0x069b46500ce7cc3692aa7168aabd241f0949d450` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x14a7df212a38df518649f4c814daa3ab6c298b5e` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x17365428b95c260e31bab5da4c2c2f48ca5cb64b` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x184ed31207877619fc8ffda30530a84158c1f847` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x1ce66b922a1065591517306bbc171b9eaaf12b46` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x210ba4dfb36704bbf3347155e3712fa7cda35ab5` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3527640987c211df03737b2146b160ddbfcc14d2` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3c227b799591aa9e1abefe5bc7689046e6fba470` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x3cfb4735c770b4d660d394710720f3adbcb3ab4a` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4530277855595741b53cac5532b4a6cc9d83d9bc` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x45cdc928aa9098e88bbb8740df4f67b572c6ba69` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x48d013c17bc70bfbb8ec0b0f35afbde59833ae27` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x4a33055edda8ed63df6549e07ba588dae22b596b` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6a6184f2bed64e2478cfe5e38e966b6a9bcf2547` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6d897d9c0902ac9399fff708d1c201396342c80c` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6dd4fc226a8d517fa8ce1f20c8c5f4d45aa1c3af` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x6e6a23cfa379c3b4ccd958b1b2cab46cf159e83e` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x7240b0b7093551bd728c3c82d12adbaa0ffda30a` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x742289ca46ca5f2891c39b0c6c462cf0746e5373` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x75933e1cd077df4140ff7d51ab9c10db3f21c217` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x894ccdbed28e294482fecf10eac5962148bf4e15` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9278fed9579b9e060ef269026c07842c98441b03` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9a148bf1185b755087596ce4f364c0c1dc533b3b` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9d89feb83a156330c9588e0fcb2b08bbc25ff827` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb208dec45edbd1179d9e275c5d459e6282d606ea` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0xb2bdaa10afa093c9c62f20f0415830aac6df6e61` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc2db4c131adaf01c15a1db654c040c8578929d55` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0xc9595e98cf8e8bb07bcc3a7e75c27acdca950aec` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0xcc607dbeea5377ab359f9879fde856d4f3b08146` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd3864595cce770f01af443c7103e9f21e5b50162` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0xd67a43115b7abd589fbd75da51e625c7250c008a` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdb4c7cb0091f1d60081c568a1306d6a4fe1bbf38` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0xdbc41e2f9493e08fce2e831dfff921feb450acbd` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe0f6707a45ddeb2e6d9da25b3b2313b5d263b439` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0xe88c9b20bddbc7ea69e4344621b20d7214ebb736` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0xea9087fb240fb7f604bca5f9b635b5f8d6900afe` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0xeac3de2221770a2f182743ed69453e7dc9c2f492` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0xebc6e4f988574be0d432639a86a83441c7b4aee7` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0xf275c87e00ef5aad30c638a188aad0ef18cc381b` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfa50265e95d072227e51953d9bf5e147916a68c4` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfd76539137333b40ab82e82c8d9d9c4b07b327ae` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| bsc | unverified unclassified | UnnamedContract<br>`0xfd8378d266de9170c4f35cfe0b1da8f6545ebe4c` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0d5db5a48cba4b48c68494015e75482ea2422a23` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0eda8090e9a86668484915e5e1856e83480fa010` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x116f4b7854f07928a3f39bc5f920547947e8b47a` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x15d0db34281fbac9763de44e58072b311caafea9` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a44e87223e1d982c8584bc4ee236f9f91288d6d` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2807227adeb8e99812f132417b032f0cc50b94a7` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2bc2362dca28c49cbded8616fa517c81442bb686` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2e46b45f272308076532332cc8769f534384a83e` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2efd768fbc2b768bd87320ef4fc2da3a196286f7` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3a6968e076856f59cead4a80cff2159e66d8a504` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3f7c29b3a760623ba608f6fc795e72c425546201` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4519efbcbae2064b8498e61ecd5179e86484de10` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4530277855595741b53cac5532b4a6cc9d83d9bc` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x47e3492439528fef29bc5da55aa49ed0efa15c6e` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x496fa82da20ee4ea92d8f0b13e0f0ded6ec0a8e4` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x49b74bfda1a89791b89ec954a33148617ada6441` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x503a241da85f5005513f588e66b3332e952b47da` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5cda2a223458316cfe2f829bde7e5581c9d1e4cd` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x665497b72d0857613a29f73b1dd45b0961b14eaf` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x75933e1cd077df4140ff7d51ab9c10db3f21c217` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x767f11f15640fdd2e7a512e1c268db7fbf6c0e3a` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x76f6d33b5c89f8d880f94527368861fb3bdd9335` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e8cb02f5cf6f777a628f53c25b49c60a57642ee` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x805c76c90d4af4c0a1e32dfa90b0b73ea8b459a2` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x80bdf509dd4f8114cb05e2ff166a100d3499ef7c` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x86b54e036ded4feedd41442f9cd8620feda59dd3` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x89b5daa78847bf168534bd4178b249c1f55dceff` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xa9ee843c9197a93424d735b7ded92a89bae47f47` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb457b400b817898efe60a614fdbcdf6626026293` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb7055d5ce6522fd009129f22e41db976379035d1` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xb938d8cbf7fc6455d1f2ebede5ff9a8e887493b2` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc2e274a3df42ab2299cef032083d5e068ec9d339` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xc6f851a159b50dcb1961343df63f46bfe9ffa2b8` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd67a43115b7abd589fbd75da51e625c7250c008a` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd6b6f9d0d0e68886a9ad98480e79b75bf4d7e478` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xe5749762f32f6cd98e37ec53123eff402c245e20` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xf194e7706b4cf7561a294fb74c94ab964c6299bc` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xfc14a0fb96144dda4d95bfed6e9a63b1be2c526b` | non_address_book | unknown | unknown | unverified | n/a | `0x68284083acbabcb6da84f62ea341dd8c30500eee` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x01c6808eb242c826d32f03712d66d5e613782363` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x02152d5edcdba56a55efee36ceb9d9f7e47aeb5f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x06ce8086965234400fdecab190b115c2c0717047` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0b81cff64efc89fcdbe7da78054232daa89d73ec` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0bdb2ed45ea8337f6437ef193c2ffd32fc9b75e9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0ce41af9dfa0d697da79dd30b8b73bf52a107499` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0ce658f9bc3af831271199578449810023dba703` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0d89774935e3d88b91f0cea0991f4fcd7d9f5470` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x0d91518d59a6bf5f9b1576edead855c643a70cd5` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x15282d93b1f2c92a034936f6f56a55c0d423e8d4` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1a783886f03710abf4a6833f50d5e69047123be6` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1d9e59364785ebf00e8ef2c15e132d0f661585ca` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1dab6560494b04473a0be3e7d83cf3fdf3a51828` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x1e7d3bf98d3f8d8ce193236c3e0ec4b00e32daae` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x23208ca4f2b30d8f7d54bf2d5a822d1a2f876501` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x271fbe8ab7f1fb262f81c77ea5303f03da9d3d6a` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2869e74a15d3c0c797b04feaef93734060a4477c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x29ec0d55b8f26298a5350c64f56281eb070bf47e` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2b7e624bdb839975d56d8428d9f6a4cf1160d3e9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2c9b39f4d18e2e19c1f3d2b378128ee7ebe9f372` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2d370111f8ffcf5bff0f56ba43c62c2ad98be7a3` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x2ef4b38a128ecc1ac06b43055553f95af59523de` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x30a2f3c3aa6d12c0a36bed210dcf1b32ef6228cc` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x319c06103bc51b3c01a1a121451aa5e2a2a7778f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x31aa15da826da3311788b208d31cae34074d1dc7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x326fe113a130c569b44aff93b3637f3ac956ecdf` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x368440b3121f32df336d393834eafd8fa787c4ec` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x36fb071d5d30e5207ecc010c0ea3cc9ad75838a8` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x387177b33830f48199110f186f47797c66556b3b` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3910dce33441360e4c1d2749afa08e1a59af2546` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3993d34e7e99abf6b6f367309975d1360222d446` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3a283d9c08e8b55966afb64c515f5143cf907611` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3b6831c0077a1e44ed0a21841c3bc4dc11bce833` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3be09dea9ca8b6205d05f196e9c68fc35190a514` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3c08533dbcd0ab64bff5306a9d6d1de912b81b9e` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3d229e1b4faab62f621ef2f6a610961f7bd7b23b` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3da7ff6c15c0c97d9c2df4af82a9910384b372fd` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x40745803c2faa8e8402e2ae935933d07ca8f355c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x409893c94aad411030e5a78fd39b015221dfb8b7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4169ef3b885416bd553567e78585a97ee52ba700` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x41d5d78049d44444ac6d5e1ec67990f24efacd58` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x42b9dea10b51a696949715797bdfd69489fc3b32` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x42dd7dc055a04c3d795a3dfd2eaaf7d480367a02` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4316416f429b04fb12df8952fa1434e6b9d77c3f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4710a77a0e0f4c7b0e11cdeb74acb042e62b8d22` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x480af6d9abe851e2fc4162b2b93fff8cf84ddee7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4863c6df17dd59311b7f67e694dd835adc87f2d3` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c18e409dc8619bfb6a1cb56d114c3f592e0ae79` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c1d4ad2fa2ba5510acbb0f428ec861e1f7ea3a4` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4c5d4f542765b66154b2e789abd8e69ed4504112` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4ca9b3063ec5866a4b82e437059d2c43d1be596f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4cb152b45e667f86a0470776bed0be93a5f1c534` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4efb0e6aba6517ce4fdd3f31013cbbc0bbb8dbfa` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f37395bdfbe3a0dca124ad3c9dbfe6a6cbc31d6` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4f8846ae9380b90d2e71d5e3d042dff3e7ebb40d` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50996c7e748b1b83130b4854945d86ba6fc81f06` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50c39ea8f3d72310c8b56a56b333994266e9b477` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x50f35f4fd499898801282a415f4c3a689663719f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x528baca578523855a64ee9c276826f934c86a54c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x52a430b5b7407fa103c5ae974744e4cc945354e6` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5473b1bcbbc45d38d8fbb50a18a73afb8b0637a7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x584b0fd8f038fe8aedf4057ca3cb3d840446fbbf` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5852bda4520f1b000c760c1dfb8ba5db8fcbaa90` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5a0d404d2042b92eb7948ac5943128e1088fd24b` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5aa00dce91409b58b6a1338639b9daa63eb22be7` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5ac53910dea4779e5ac3a7e997df8e9d5f6a7c9d` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5bea27d52e36c58dbce2921773396f33f2bd780a` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5d0f47b32fdd343bfa74ce221808e2abe4a53827` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5e0198c158276efaebc5a32c8351fb5d679d4288` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x600e571106c31c4ca1bf4177ba808e37146a4a0c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x60b1b1f20373005030095fbe7cde032625fc96c2` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x62191ef48bf8fd7a0e10ecb066b0350e6a9c18a9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x627bb157ebc0b77ad9f990dd2ad75878603abf08` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6340678b2bab22a37d781cd8da958a3cd1d97cdd` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x63564e223ba1fdb491c6ca68f63c67a578443ac4` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x649e0b707a90f1d73b27f83358c4d9bcc91fd622` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x656dd75d33a6241a0c4c2368eb00441ad3113ec0` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x65a8b215f34df5c30c64523d638ea698065ffa15` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x67fe41a94e779ccfa22cff02cc2957dc9c0e4286` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69aafff1218ba086ac782f98cb8399d1226e2af3` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x69d7469e677e4c8fa4581d36908b0c9c8750baa9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6af700a9b52bdea2e33dbdcacae638fd8e118bd1` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6b765d07cf966c745b340adca67749fe75b5c345` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6c3f90f043a72fa612cbac8115ee7e52bde6e490` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6ddd163240c21189ed0c89d30f6681142bf05ffb` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x6f4e8c8832ed1a1e14e030d56c015196a705fbf9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7002b727ef8f5571cb5f9d70d13dbeeb4dfae9d1` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x70a1151e0bb32484e25c107e3a69886a8361482e` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x70fc957eb90e37af82acdbd12675699797745f68` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x72de985c5af6f96f3be22784b5533218421e6394` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x747459fc40d80a500440f9d650818f7fa5754acc` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x752ebeb79963cf0732e9c0fec72a49fd1defaeac` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7624c0dd4f5d06d650ddff25ffec45d032501260` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x783128730280053ef00f675b777288e80565f26a` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x79d584d2d49ec8ce8ea379d69364b700bd35874d` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7af331398dc340bf327904077eb68f27f75a9693` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7c868f045a60501a2f4159446545939771dda323` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7d20ecb58d9d661aef2bd0ee953d53567e695dfb` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7da2ef41913adc5285ffdcfa3622f5f81c946500` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e6327cce4bbdb936ee744a7bae6c2978b62183f` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7e6c50f75badb725fddaa47c063d8f8407defc5c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x7ec8e02b74cdd1c1c222dbf3bf47f3256b734099` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x80333bd8791fee04c4c3e1ca8a524cefa7c94737` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x80466c64868e1ab14a1ddf27a676c3fcbe638fe5` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x81373aad854e31e6da610b2fa5260c6c60db8dbc` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x818709b85052ddc521fae9c78737b27316337e3a` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8282bd15dca2ea2bdf24163e8f2781b30c43a2ef` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8301ae4fc9c624d1d396cbdaa1ed877821d7c511` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x832f436ad2813c76aae756703cacb5c1028d11da` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x847ee1227a9900b73aeeb3a47fac92c52fd54ed9` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8484673ca7bff40f82b041916881aea15ee84834` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x856ff1aaff4782eee27d2c6bbad48781f57f88cc` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x85fd0626e2d7f07a2b08718f2ea2e044b1d5f163` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x89086653f185a0431d24043d92772942c141bab0` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x89ac9a0b48fc66875de710ab7ee53027970064dc` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x89d32bf7b120630b24fe9edc8c7534a73016c999` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x89ea1e4232680a66470a725ffd399082a375d1ed` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8aeb58603efb7a9f63712a2506df01b685ba1c4c` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b6861d07d3688103d0ad801fabfc4f6bac231de` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x8b8dce09b0deb003573215d5be238534b1cf11bd` | non_address_book | unknown | unknown | unverified | n/a | `0xbabe61887f1de2713c6f97e567623453d3c79f67` |

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
| needs_review | 378 |

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
