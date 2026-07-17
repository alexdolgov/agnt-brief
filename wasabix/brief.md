# Agentic Audit Brief: Wasabix

## Project Overview

- Project: Wasabix (`wasabix`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.169Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: bsc, ethereum, polygon
- Contract surface: 105 unique implementations (105 raw deployments)
- DeFi Llama TVL: $225,120.24
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 71 project-authored contract(s) across 3 chain(s); 17 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 10 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 105; live-surface contracts included: 105 (105 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 15/103 (14.6%)
- Deployed-live implementations: 105 of 105 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 15/105
- Verified + Unaudited implementations: 90
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 105
- Raw deployments: 105
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 15 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 14 | 13.3% | 2021-06 |
| yAudit | Tier 2 | 2 | 1.9% | 2021-05 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Alchemist | unknown | ethereum | n/a | [`0x5cefb9f7c53a1b0c78e239b2445ddd2d362b7076`](./contracts/ethereum-1/0x5cefb9f7c53a1b0c78e239b2445ddd2d362b7076/) | ✅ Audited |
| IdleVaultAdapter | unknown | ethereum | n/a | [`0x5712c641ca4c0ef4bcf70a7aa53aeb680abf5844`](./contracts/ethereum-1/0x5712c641ca4c0ef4bcf70a7aa53aeb680abf5844/) | ✅ Audited |
| MultiSigWalletWithTimeLock | unknown | bsc | n/a | [`0x162bda4208e3ee27885fba4c7a3e33303e3cf2b5`](./contracts/bsc-56/0x162bda4208e3ee27885fba4c7a3e33303e3cf2b5/) | ✅ Audited |
| PickleVaultAdapter | unknown | ethereum | n/a | [`0xd542b6741b96e703b7e32cca22a94d69ae50cb7a`](./contracts/ethereum-1/0xd542b6741b96e703b7e32cca22a94d69ae50cb7a/) | ✅ Audited |
| StakingPools | unknown | bsc | n/a | [`0x0e38843b6526a4f5e2ea95096a252c15cbea10ef`](./contracts/bsc-56/0x0e38843b6526a4f5e2ea95096a252c15cbea10ef/) | ✅ Audited |
| Transmuter | unknown | ethereum | n/a | [`0x219de705e6c22d6fbc27446161efcc7d5d055ecb`](./contracts/ethereum-1/0x219de705e6c22d6fbc27446161efcc7d5d055ecb/) | ✅ Audited |
| TransmuterD8 | unknown | ethereum | n/a | [`0x68e91df501ab66a0796d0fd164b907acf5f89ad0`](./contracts/ethereum-1/0x68e91df501ab66a0796d0fd164b907acf5f89ad0/) | ✅ Audited |
| Vault | unknown | ethereum | n/a | [`0x596f8e49ace6fc8e09b561972360dc216f1c2a1f`](./contracts/ethereum-1/0x596f8e49ace6fc8e09b561972360dc216f1c2a1f/) | ✅ Audited |
| VesperVaultAdapter | unknown | ethereum | n/a | [`0xaf1ea5b45498f6c1b457b0e40cfe423e74713b05`](./contracts/ethereum-1/0xaf1ea5b45498f6c1b457b0e40cfe423e74713b05/) | ✅ Audited |
| WaBtcToken | unknown | ethereum | n/a | [`0xfd8e70e83e399307db3978d3f34b060a06792c36`](./contracts/ethereum-1/0xfd8e70e83e399307db3978d3f34b060a06792c36/) | ✅ Audited |
| WasabiToken | unknown | ethereum | n/a | [`0x896e145568624a498c5a909187363ae947631503`](./contracts/ethereum-1/0x896e145568624a498c5a909187363ae947631503/) | ✅ Audited |
| WaToken | unknown | ethereum | n/a | [`0xc2db4c131adaf01c15a1db654c040c8578929d55`](./contracts/ethereum-1/0xc2db4c131adaf01c15a1db654c040c8578929d55/) | ✅ Audited |
| YumIdleVault | unknown | ethereum | n/a | [`0x894ccdbed28e294482fecf10eac5962148bf4e15`](./contracts/ethereum-1/0x894ccdbed28e294482fecf10eac5962148bf4e15/) | ✅ Audited |
| YumPickleVault | unknown | ethereum | n/a | [`0x2de9441c3e22725474146450fc3467a2c778040f`](./contracts/ethereum-1/0x2de9441c3e22725474146450fc3467a2c778040f/) | ✅ Audited |
| YumVesperVaultD8 | unknown | ethereum | n/a | [`0x26a70759222b1842a7c72215f64c7fde8db24856`](./contracts/ethereum-1/0x26a70759222b1842a7c72215f64c7fde8db24856/) | ✅ Audited |

### ⚠️ Verified + Unaudited (90)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AggMonetaryPolicy-monetarypolicybasedonaggregatedpricesforcrvUSD | unknown | ethereum | n/a | [`0x0901b541beff2cd44859701619e245e82f48e62b`](./contracts/ethereum-1/0x0901b541beff2cd44859701619e245e82f48e62b/) | ⚠️ Unaudited |
| AggregatorStablePrice-aggregatorofstablecoinpricesforcrvUSD | unknown | ethereum | n/a | [`0x18672b1b0c623a30089a280ed9256379fb0e4e62`](./contracts/ethereum-1/0x18672b1b0c623a30089a280ed9256379fb0e4e62/) | ⚠️ Unaudited |
| AirdropDistribution | unknown | polygon | n/a | [`0x35d9da43a62b509a38c0aa406042baebe8d5d9b1`](./contracts/polygon-137/0x35d9da43a62b509a38c0aa406042baebe8d5d9b1/) | ⚠️ Unaudited |
| AlpacaBNBVaultAdapter | unknown | bsc | n/a | [`0x80c6901659b70a79bc55b821e7df81840385abbe`](./contracts/bsc-56/0x80c6901659b70a79bc55b821e7df81840385abbe/) | ⚠️ Unaudited |
| AlpacaBNBVaultAdapterWithIndirection | unknown | bsc | n/a | [`0x5cda2a223458316cfe2f829bde7e5581c9d1e4cd`](./contracts/bsc-56/0x5cda2a223458316cfe2f829bde7e5581c9d1e4cd/) | ⚠️ Unaudited |
| AlpacaVaultAdapter | unknown | bsc | n/a | [`0xa33b1b67288e47303ec3612662d00ab489d161dc`](./contracts/bsc-56/0xa33b1b67288e47303ec3612662d00ab489d161dc/) | ⚠️ Unaudited |
| AlpacaVaultAdapterWithIndirection | unknown | bsc | n/a | [`0x1b6ed71fff348d4ece9953955670e37f3809d373`](./contracts/bsc-56/0x1b6ed71fff348d4ece9953955670e37f3809d373/) | ⚠️ Unaudited |
| BunnyVaultAdapter | unknown | bsc | n/a | [`0x3d244d67d680cadcccf34f8f996cea777b6d9ffe`](./contracts/bsc-56/0x3d244d67d680cadcccf34f8f996cea777b6d9ffe/) | ⚠️ Unaudited |
| BurnableWasabiToken | unknown | bsc | n/a | [`0x86e73212002f80c57070efad4765ff0117de5aea`](./contracts/bsc-56/0x86e73212002f80c57070efad4765ff0117de5aea/) | ⚠️ Unaudited |
| CompetitionDistribution | unknown | polygon | n/a | [`0x59f4090fcf57c355015bcf7805e4e2d6a1958a63`](./contracts/polygon-137/0x59f4090fcf57c355015bcf7805e4e2d6a1958a63/) | ⚠️ Unaudited |
| crvUSD Controller | unknown | ethereum | n/a | [`0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4`](./contracts/ethereum-1/0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4/) | ⚠️ Unaudited |
| crvUSDControllerFactory | unknown | ethereum | n/a | [`0xc9332fdcb1c491dcc683bae86fe3cb70360738bc`](./contracts/ethereum-1/0xc9332fdcb1c491dcc683bae86fe3cb70360738bc/) | ⚠️ Unaudited |
| crvUSDdeleveragezap | unknown | ethereum | n/a | [`0x2bc706b83ab08d0437b8a397242c3284b5f81d74`](./contracts/ethereum-1/0x2bc706b83ab08d0437b8a397242c3284b5f81d74/) | ⚠️ Unaudited |
| crvUSDStablecoin | unknown | ethereum | n/a | [`0xf939e0a03fb07f59a73314e73794be0e57ac1b4e`](./contracts/ethereum-1/0xf939e0a03fb07f59a73314e73794be0e57ac1b4e/) | ⚠️ Unaudited |
| CryptoFromPool | unknown | ethereum | n/a | [`0x3b38ce23799dc56664ff6048892510abffdb7a25`](./contracts/ethereum-1/0x3b38ce23799dc56664ff6048892510abffdb7a25/) | ⚠️ Unaudited |
| CryptoFromPoolsRate | unknown | ethereum | n/a | [`0x38e7627eb98a40e7528bcce709a80083093ba2f8`](./contracts/ethereum-1/0x38e7627eb98a40e7528bcce709a80083093ba2f8/) | ⚠️ Unaudited |
| CryptoFromPoolsRateWAgg | unknown | ethereum | n/a | [`0x0a9ae947495034c0bbbab845fd75b5bbafc91aab`](./contracts/ethereum-1/0x0a9ae947495034c0bbbab845fd75b5bbafc91aab/) | ⚠️ Unaudited |
| CryptoFromPoolVaultWAgg | unknown | ethereum | n/a | [`0x002688c4296a2c4d800f271fe6f01741111b09be`](./contracts/ethereum-1/0x002688c4296a2c4d800f271fe6f01741111b09be/) | ⚠️ Unaudited |
| CryptoFromPoolWAgg | unknown | ethereum | n/a | [`0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca`](./contracts/ethereum-1/0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca/) | ⚠️ Unaudited |
| CryptoWithStablePriceETH | unknown | ethereum | n/a | [`0x966cbdecefb60a289b0460f7638f4a75f432ca06`](./contracts/ethereum-1/0x966cbdecefb60a289b0460f7638f4a75f432ca06/) | ⚠️ Unaudited |
| CryptoWithStablePriceSfrxeth | unknown | ethereum | n/a | [`0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29`](./contracts/ethereum-1/0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29/) | ⚠️ Unaudited |
| CryptoWithStablePriceTBTC | unknown | ethereum | n/a | [`0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217`](./contracts/ethereum-1/0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217/) | ⚠️ Unaudited |
| CryptoWithStablePriceWBTC | unknown | ethereum | n/a | [`0x07374b547cae235227635c13266c69847a3e46fa`](./contracts/ethereum-1/0x07374b547cae235227635c13266c69847a3e46fa/) | ⚠️ Unaudited |
| CryptoWithStablePriceWsteth | unknown | ethereum | n/a | [`0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304`](./contracts/ethereum-1/0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304/) | ⚠️ Unaudited |
| HealthcalculatorzapforcrvUSDcontroller | unknown | ethereum | n/a | [`0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a`](./contracts/ethereum-1/0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a/) | ⚠️ Unaudited |
| LeveragezapforcrvUSDcontroller(sfrxETHmarket) | unknown | ethereum | n/a | [`0xb556fa4c4752321b3154f08dfbdfcf34847f2eac`](./contracts/ethereum-1/0xb556fa4c4752321b3154f08dfbdfcf34847f2eac/) | ⚠️ Unaudited |
| LiquidityGaugeV6 | unknown | ethereum | n/a | [`0x00b71a425db7c8b65a46cf39c23a188e10a2de99`](./contracts/ethereum-1/0x00b71a425db7c8b65a46cf39c23a188e10a2de99/) | ⚠️ Unaudited |
| LiquityStakingPoolAdapter | unknown | ethereum | n/a | [`0xc95269c12eeaa8061c03cd2340897d97de885c30`](./contracts/ethereum-1/0xc95269c12eeaa8061c03cd2340897d97de885c30/) | ⚠️ Unaudited |
| LiquityStakingPoolAdapterV2 | unknown | ethereum | n/a | [`0x71b426f51f1ba003836abfb457eb2f90643c504e`](./contracts/ethereum-1/0x71b426f51f1ba003836abfb457eb2f90643c504e/) | ⚠️ Unaudited |
| LiquityStakingPoolAdapterV3 | unknown | ethereum | n/a | [`0x767bdd47880b0533b29abb1e3f9f3e30ce009147`](./contracts/ethereum-1/0x767bdd47880b0533b29abb1e3f9f3e30ce009147/) | ⚠️ Unaudited |
| LiquityStakingPoolAdapterV4 | unknown | ethereum | n/a | [`0xf56053612090896cfa14b89f32a259faef49fe5a`](./contracts/ethereum-1/0xf56053612090896cfa14b89f32a259faef49fe5a/) | ⚠️ Unaudited |
| LiquityStakingPoolAdapterV5 | unknown | ethereum | n/a | [`0x834893645f06f7ce32729ea27bb7233157ac1f47`](./contracts/ethereum-1/0x834893645f06f7ce32729ea27bb7233157ac1f47/) | ⚠️ Unaudited |
| LLAMMA - crvUSD AMM | unknown | ethereum | n/a | [`0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a`](./contracts/ethereum-1/0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a/) | ⚠️ Unaudited |
| LockerDistribution | unknown | polygon | n/a | [`0x256f29e1e4fe5fb60d5d01e030d8a74def2329e9`](./contracts/polygon-137/0x256f29e1e4fe5fb60d5d01e030d8a74def2329e9/) | ⚠️ Unaudited |
| MerkleDistributor | unknown | polygon | n/a | [`0x06709db1690efbb32ef3fe6addf1fe787e9c8159`](./contracts/polygon-137/0x06709db1690efbb32ef3fe6addf1fe787e9c8159/) | ⚠️ Unaudited |
| MigratableBNBTransmuterV2 | unknown | bsc | n/a | [`0xf1d5a685a5e6bec8471d6d9ad2d20ac48ecb2109`](./contracts/bsc-56/0xf1d5a685a5e6bec8471d6d9ad2d20ac48ecb2109/) | ⚠️ Unaudited |
| MigratableBUSDTransmuterV2 | unknown | bsc | n/a | [`0x99b399b4c79b8c51c4bc8c0df4f49a77cfdec340`](./contracts/bsc-56/0x99b399b4c79b8c51c4bc8c0df4f49a77cfdec340/) | ⚠️ Unaudited |
| MigratableLinkTransmuterV2 | unknown | ethereum | n/a | [`0x60b4b6e42b5f3cab771313d2169a00fb5378fb15`](./contracts/ethereum-1/0x60b4b6e42b5f3cab771313d2169a00fb5378fb15/) | ⚠️ Unaudited |
| MigratableMUSDTransmuterV2 | unknown | polygon | n/a | [`0xb938d8cbf7fc6455d1f2ebede5ff9a8e887493b2`](./contracts/polygon-137/0xb938d8cbf7fc6455d1f2ebede5ff9a8e887493b2/) | ⚠️ Unaudited |
| MigratablePUSDTransmuterV2 | unknown | polygon | n/a | [`0xbbb26ccd60d1444280875c2f9f22bd8c910ec2eb`](./contracts/polygon-137/0xbbb26ccd60d1444280875c2f9f22bd8c910ec2eb/) | ⚠️ Unaudited |
| MigratableTransmuter | unknown | ethereum | n/a | [`0x99b399b4c79b8c51c4bc8c0df4f49a77cfdec340`](./contracts/ethereum-1/0x99b399b4c79b8c51c4bc8c0df4f49a77cfdec340/) | ⚠️ Unaudited |
| MigratableTransmuterV2 | unknown | ethereum | n/a | [`0xb208dec45edbd1179d9e275c5d459e6282d606ea`](./contracts/ethereum-1/0xb208dec45edbd1179d9e275c5d459e6282d606ea/) | ⚠️ Unaudited |
| MigratableTransmuterV3 | unknown | ethereum | n/a | [`0xbe8043ad7b54045619022a4f7c3a596023425540`](./contracts/ethereum-1/0xbe8043ad7b54045619022a4f7c3a596023425540/) | ⚠️ Unaudited |
| MigratableWethTransmuter | unknown | ethereum | n/a | [`0x7ee64f74792c307446cd92d23e551efae3172a28`](./contracts/ethereum-1/0x7ee64f74792c307446cd92d23e551efae3172a28/) | ⚠️ Unaudited |
| Multicall | unknown | bsc | n/a | [`0x8b4b559b34c1742dbcf178bfed9bc85f6ece1c7b`](./contracts/bsc-56/0x8b4b559b34c1742dbcf178bfed9bc85f6ece1c7b/) | ⚠️ Unaudited |
| MultiClaim | unknown | ethereum | n/a | [`0x32facb5a46e02decaf5f939ab12c123eee203a5f`](./contracts/ethereum-1/0x32facb5a46e02decaf5f939ab12c123eee203a5f/) | ⚠️ Unaudited |
| MUSDVaultAdapter | unknown | polygon | n/a | [`0xc3be5522cfeb6ef612301c3fa2ce84058c74dd2b`](./contracts/polygon-137/0xc3be5522cfeb6ef612301c3fa2ce84058c74dd2b/) | ⚠️ Unaudited |
| MUSDVaultAdapterWithIndirection | unknown | polygon | n/a | [`0x74ea4ce9688622132bc4966544e91ba990f5472a`](./contracts/polygon-137/0x74ea4ce9688622132bc4966544e91ba990f5472a/) | ⚠️ Unaudited |
| OneWayLendingFactory | unknown | ethereum | n/a | [`0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c`](./contracts/ethereum-1/0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x4af56f065fab006721ab686086be206eba9d1abc`](./contracts/bsc-56/0x4af56f065fab006721ab686086be206eba9d1abc/) | ⚠️ Unaudited |
| PegKeeper | unknown | ethereum | n/a | [`0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae`](./contracts/ethereum-1/0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae/) | ⚠️ Unaudited |
| PegPrice | unknown | ethereum | n/a | [`0x226845c2ba216b8bb1aaadfd4e14de69426c5445`](./contracts/ethereum-1/0x226845c2ba216b8bb1aaadfd4e14de69426c5445/) | ⚠️ Unaudited |
| PolyquityStabilityPoolAdapter | unknown | polygon | n/a | [`0x859d44789d9b3ba4d8085117ea72f7de197af4a4`](./contracts/polygon-137/0x859d44789d9b3ba4d8085117ea72f7de197af4a4/) | ⚠️ Unaudited |
| PolyquityStabilityPoolAdapterWithIndirection | unknown | polygon | n/a | [`0x2370b0b9c1b8283d2e9cf4719901ccb21e44a6dc`](./contracts/polygon-137/0x2370b0b9c1b8283d2e9cf4719901ccb21e44a6dc/) | ⚠️ Unaudited |
| RewardVesting | unknown | polygon | n/a | [`0x219de705e6c22d6fbc27446161efcc7d5d055ecb`](./contracts/polygon-137/0x219de705e6c22d6fbc27446161efcc7d5d055ecb/) | ⚠️ Unaudited |
| Secondarymonetarypolicy | unknown | ethereum | n/a | [`0x188041ad83145351ef45f4bb91d08886648aeaf8`](./contracts/ethereum-1/0x188041ad83145351ef45f4bb91d08886648aeaf8/) | ⚠️ Unaudited |
| SecondarymonetarypolicyforWBTC | unknown | ethereum | n/a | [`0x4e1f162fd143e4a829341efd6dd451b018b10f9c`](./contracts/ethereum-1/0x4e1f162fd143e4a829341efd6dd451b018b10f9c/) | ⚠️ Unaudited |
| SemiLog monetary policy | unknown | ethereum | n/a | [`0x2a28789645776eaa95f6d491ff375781ea5b40dd`](./contracts/ethereum-1/0x2a28789645776eaa95f6d491ff375781ea5b40dd/) | ⚠️ Unaudited |
| sfrxETH2crvUSDleveragezap | unknown | ethereum | n/a | [`0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc`](./contracts/ethereum-1/0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc/) | ⚠️ Unaudited |
| StakingPoolsV2 | unknown | bsc | n/a | [`0x4a8086416c824b03d682d6ba117f2ec759c4a085`](./contracts/bsc-56/0x4a8086416c824b03d682d6ba117f2ec759c4a085/) | ⚠️ Unaudited |
| StakingPoolsV4 | unknown | polygon | n/a | [`0x0eda8090e9a86668484915e5e1856e83480fa010`](./contracts/polygon-137/0x0eda8090e9a86668484915e5e1856e83480fa010/) | ⚠️ Unaudited |
| SusdeMonetaryPolicy | unknown | ethereum | n/a | [`0xf574cbebbd549273af82b42cd0230de9ea6efef7`](./contracts/ethereum-1/0xf574cbebbd549273af82b42cd0230de9ea6efef7/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0x8f9ef75cd6e610dd8acf8611c344573032fb9c3d`](./contracts/ethereum-1/0x8f9ef75cd6e610dd8acf8611c344573032fb9c3d/) | ⚠️ Unaudited |
| USD0LpOracle | unknown | ethereum | n/a | [`0x2aeb5c8776567c4eeebda1450e343b1bef49ae32`](./contracts/ethereum-1/0x2aeb5c8776567c4eeebda1450e343b1bef49ae32/) | ⚠️ Unaudited |
| VesperLinkVaultAdapter | unknown | ethereum | n/a | [`0x599355f4f47b212591514624abecc135fa0c1b16`](./contracts/ethereum-1/0x599355f4f47b212591514624abecc135fa0c1b16/) | ⚠️ Unaudited |
| VesperLinkVaultAdapterWithIndirection | unknown | ethereum | n/a | [`0xba823ebd48df9d303a0821f79ea196840a263988`](./contracts/ethereum-1/0xba823ebd48df9d303a0821f79ea196840a263988/) | ⚠️ Unaudited |
| VesperWETHVaultAdapter | unknown | ethereum | n/a | [`0x0b276d9b1cbdf7bc9556635059c6ce672e6f4052`](./contracts/ethereum-1/0x0b276d9b1cbdf7bc9556635059c6ce672e6f4052/) | ⚠️ Unaudited |
| VotingEscrow | unknown | bsc | n/a | [`0x7d487aeaf197691aa5645728c54f204be67991ff`](./contracts/bsc-56/0x7d487aeaf197691aa5645728c54f204be67991ff/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x0145fd99f1dd6e2491e44fca608c481c9c5b97a9`](./contracts/ethereum-1/0x0145fd99f1dd6e2491e44fca608c481c9c5b97a9/) | ⚠️ Unaudited |
| WaBNBToken | unknown | bsc | n/a | [`0x8ac4041d5801bc7cda5df5fd3af9f14546a9c223`](./contracts/bsc-56/0x8ac4041d5801bc7cda5df5fd3af9f14546a9c223/) | ⚠️ Unaudited |
| WaBUSDToken | unknown | bsc | n/a | [`0x541f7be45dfb35fe7a246e43cb2bd17953c5e17d`](./contracts/bsc-56/0x541f7be45dfb35fe7a246e43cb2bd17953c5e17d/) | ⚠️ Unaudited |
| WaEthToken | unknown | ethereum | n/a | [`0x6a1fbefdf67445c7f531b4f3e04ffb37b7b13794`](./contracts/ethereum-1/0x6a1fbefdf67445c7f531b4f3e04ffb37b7b13794/) | ⚠️ Unaudited |
| WaLINKToken | unknown | ethereum | n/a | [`0x29ddf2c4f1e80dc9e95cc57a9ca03a28e4ab6d6c`](./contracts/ethereum-1/0x29ddf2c4f1e80dc9e95cc57a9ca03a28e4ab6d6c/) | ⚠️ Unaudited |
| WaLUSDToken | unknown | ethereum | n/a | [`0xcbf335bb8ee86a5a88bebcda4506a665aa8d7022`](./contracts/ethereum-1/0xcbf335bb8ee86a5a88bebcda4506a665aa8d7022/) | ⚠️ Unaudited |
| WaMUSDToken | unknown | polygon | n/a | [`0x8b0063dbb53a822f2bf3a50ebe8d2c365392ac5b`](./contracts/polygon-137/0x8b0063dbb53a822f2bf3a50ebe8d2c365392ac5b/) | ⚠️ Unaudited |
| WaPUSDToken | unknown | polygon | n/a | [`0x3d244d67d680cadcccf34f8f996cea777b6d9ffe`](./contracts/polygon-137/0x3d244d67d680cadcccf34f8f996cea777b6d9ffe/) | ⚠️ Unaudited |
| WBTC-crvUSDleveragezap | unknown | ethereum | n/a | [`0xa2518b71ee64e910741f5cf480b19e8e402de4d7`](./contracts/ethereum-1/0xa2518b71ee64e910741f5cf480b19e8e402de4d7/) | ⚠️ Unaudited |
| WCToken | unknown | polygon | n/a | [`0x337fb95421b69c738ba2914f832455566625238e`](./contracts/polygon-137/0x337fb95421b69c738ba2914f832455566625238e/) | ⚠️ Unaudited |
| WIToken | unknown | bsc | n/a | [`0x5cefb9f7c53a1b0c78e239b2445ddd2d362b7076`](./contracts/bsc-56/0x5cefb9f7c53a1b0c78e239b2445ddd2d362b7076/) | ⚠️ Unaudited |
| WIZToken | unknown | bsc | n/a | [`0x091d07d5f57d27dfadf032965d441b0275eddcb2`](./contracts/bsc-56/0x091d07d5f57d27dfadf032965d441b0275eddcb2/) | ⚠️ Unaudited |
| wstETH-crvUSDleveragezap | unknown | ethereum | n/a | [`0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd`](./contracts/ethereum-1/0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd/) | ⚠️ Unaudited |
| WVVToken | unknown | bsc | n/a | [`0x2f2c3459dae9cf208f5ad6017f9a146382fe5704`](./contracts/bsc-56/0x2f2c3459dae9cf208f5ad6017f9a146382fe5704/) | ⚠️ Unaudited |
| YumAlpacaBNBVault | unknown | bsc | n/a | [`0xb4f52916414119e4212369569d9089f90070b6dc`](./contracts/bsc-56/0xb4f52916414119e4212369569d9089f90070b6dc/) | ⚠️ Unaudited |
| YumAlpacaBUSDVault | unknown | bsc | n/a | [`0x84e6fd3595010aa6ee461ea2bffa03776780f412`](./contracts/bsc-56/0x84e6fd3595010aa6ee461ea2bffa03776780f412/) | ⚠️ Unaudited |
| YumBunnyBUSDVault | unknown | bsc | n/a | [`0x1a676d8ea2e685f46a575a413f8e90ca49614d0a`](./contracts/bsc-56/0x1a676d8ea2e685f46a575a413f8e90ca49614d0a/) | ⚠️ Unaudited |
| YumEthVesperVault | unknown | ethereum | n/a | [`0xb642eb5faf7e731ff62823515b3ff82b45d385bc`](./contracts/ethereum-1/0xb642eb5faf7e731ff62823515b3ff82b45d385bc/) | ⚠️ Unaudited |
| YumLinkVesperVault | unknown | ethereum | n/a | [`0xc4f2030ded976f45fbb23b702ba725d6f88ef142`](./contracts/ethereum-1/0xc4f2030ded976f45fbb23b702ba725d6f88ef142/) | ⚠️ Unaudited |
| YumLUSDVault | unknown | ethereum | n/a | [`0x55c75414f525ef9ccbb8105ce083edbda0075fb5`](./contracts/ethereum-1/0x55c75414f525ef9ccbb8105ce083edbda0075fb5/) | ⚠️ Unaudited |
| YumMUSDVault | unknown | polygon | n/a | [`0x2ff71c31483fb7033c06b6dafe0442f2a5cb5f1a`](./contracts/polygon-137/0x2ff71c31483fb7033c06b6dafe0442f2a5cb5f1a/) | ⚠️ Unaudited |
| YumPUSDVault | unknown | polygon | n/a | [`0x4a8086416c824b03d682d6ba117f2ec759c4a085`](./contracts/polygon-137/0x4a8086416c824b03d682d6ba117f2ec759c4a085/) | ⚠️ Unaudited |

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
| [Rendered PDF capture](https://166619442-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MUN3OWWYS40IGKkCepD%2F-McPgoP0AUJ9kjMIoyGS%2F-McQ3GtcUwuBv6u97CwY%2Fpre-wasabix-yum-2021-06-11.pdf) | CertiK | Audit | 2021-06 | stale | Direct | contract_name | 14 | high |
| [Rendered PDF capture](https://166619442-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MUN3OWWYS40IGKkCepD%2F-MWNsuLL8yoNRHifRZ1c%2F-MWOeaOj-23tsPP3PJr9%2F-1146290826623177881security_assessment_for_wasabi_finance%20(2).pdf) | CertiK | Audit | 2021-03 | stale | Direct | contract_name | 1 | high |
| [Rendered PDF capture](https://166619442-files.gitbook.io/~/files/v0/b/gitbook-legacy-files/o/assets%2F-MUN3OWWYS40IGKkCepD%2F-M_eD1DSVTu1RnIHDGIa%2F-M_eDOwmdj22tCQiii-i%2FWasabix%20Finance%20-%20Smart%20Contract%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2021-05 | stale | Direct | contract_name | 2 | high |
| [www.certik.org/projects/wasabixfinance](https://skynet.certik.com/projects/wasabixfinance) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0901b541beff2cd44859701619e245e82f48e62b`](./contracts/ethereum-1/0x0901b541beff2cd44859701619e245e82f48e62b/) | AggMonetaryPolicy-monetarypolicybasedonaggregatedpricesforcrvUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18672b1b0c623a30089a280ed9256379fb0e4e62`](./contracts/ethereum-1/0x18672b1b0c623a30089a280ed9256379fb0e4e62/) | AggregatorStablePrice-aggregatorofstablecoinpricesforcrvUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x35d9da43a62b509a38c0aa406042baebe8d5d9b1`](./contracts/polygon-137/0x35d9da43a62b509a38c0aa406042baebe8d5d9b1/) | AirdropDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x80c6901659b70a79bc55b821e7df81840385abbe`](./contracts/bsc-56/0x80c6901659b70a79bc55b821e7df81840385abbe/) | AlpacaBNBVaultAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5cda2a223458316cfe2f829bde7e5581c9d1e4cd`](./contracts/bsc-56/0x5cda2a223458316cfe2f829bde7e5581c9d1e4cd/) | AlpacaBNBVaultAdapterWithIndirection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xa33b1b67288e47303ec3612662d00ab489d161dc`](./contracts/bsc-56/0xa33b1b67288e47303ec3612662d00ab489d161dc/) | AlpacaVaultAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1b6ed71fff348d4ece9953955670e37f3809d373`](./contracts/bsc-56/0x1b6ed71fff348d4ece9953955670e37f3809d373/) | AlpacaVaultAdapterWithIndirection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3d244d67d680cadcccf34f8f996cea777b6d9ffe`](./contracts/bsc-56/0x3d244d67d680cadcccf34f8f996cea777b6d9ffe/) | BunnyVaultAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x86e73212002f80c57070efad4765ff0117de5aea`](./contracts/bsc-56/0x86e73212002f80c57070efad4765ff0117de5aea/) | BurnableWasabiToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x59f4090fcf57c355015bcf7805e4e2d6a1958a63`](./contracts/polygon-137/0x59f4090fcf57c355015bcf7805e4e2d6a1958a63/) | CompetitionDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4`](./contracts/ethereum-1/0x17c6e1ddf1cce3d33240a53fce8a2ee48541f4d4/) | crvUSD Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc9332fdcb1c491dcc683bae86fe3cb70360738bc`](./contracts/ethereum-1/0xc9332fdcb1c491dcc683bae86fe3cb70360738bc/) | crvUSDControllerFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bc706b83ab08d0437b8a397242c3284b5f81d74`](./contracts/ethereum-1/0x2bc706b83ab08d0437b8a397242c3284b5f81d74/) | crvUSDdeleveragezap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf939e0a03fb07f59a73314e73794be0e57ac1b4e`](./contracts/ethereum-1/0xf939e0a03fb07f59a73314e73794be0e57ac1b4e/) | crvUSDStablecoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b38ce23799dc56664ff6048892510abffdb7a25`](./contracts/ethereum-1/0x3b38ce23799dc56664ff6048892510abffdb7a25/) | CryptoFromPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x38e7627eb98a40e7528bcce709a80083093ba2f8`](./contracts/ethereum-1/0x38e7627eb98a40e7528bcce709a80083093ba2f8/) | CryptoFromPoolsRate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a9ae947495034c0bbbab845fd75b5bbafc91aab`](./contracts/ethereum-1/0x0a9ae947495034c0bbbab845fd75b5bbafc91aab/) | CryptoFromPoolsRateWAgg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x002688c4296a2c4d800f271fe6f01741111b09be`](./contracts/ethereum-1/0x002688c4296a2c4d800f271fe6f01741111b09be/) | CryptoFromPoolVaultWAgg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca`](./contracts/ethereum-1/0x2d89d82ff68bae1357d746b3e8eac520bfe1d5ca/) | CryptoFromPoolWAgg | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x966cbdecefb60a289b0460f7638f4a75f432ca06`](./contracts/ethereum-1/0x966cbdecefb60a289b0460f7638f4a75f432ca06/) | CryptoWithStablePriceETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29`](./contracts/ethereum-1/0x28d7880b5b67fb4a0b1c6ed6c33c33f365113c29/) | CryptoWithStablePriceSfrxeth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217`](./contracts/ethereum-1/0xbef434e2acf0fbad1f0579d2376fed0d1cfc4217/) | CryptoWithStablePriceTBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07374b547cae235227635c13266c69847a3e46fa`](./contracts/ethereum-1/0x07374b547cae235227635c13266c69847a3e46fa/) | CryptoWithStablePriceWBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304`](./contracts/ethereum-1/0x21f5f6d3f90d0f56a6de307a3bd359d0a151b304/) | CryptoWithStablePriceWsteth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a`](./contracts/ethereum-1/0xcf61ee62b136e3553fb545bd8fec11fb7f830d6a/) | HealthcalculatorzapforcrvUSDcontroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb556fa4c4752321b3154f08dfbdfcf34847f2eac`](./contracts/ethereum-1/0xb556fa4c4752321b3154f08dfbdfcf34847f2eac/) | LeveragezapforcrvUSDcontroller(sfrxETHmarket) | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00b71a425db7c8b65a46cf39c23a188e10a2de99`](./contracts/ethereum-1/0x00b71a425db7c8b65a46cf39c23a188e10a2de99/) | LiquidityGaugeV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc95269c12eeaa8061c03cd2340897d97de885c30`](./contracts/ethereum-1/0xc95269c12eeaa8061c03cd2340897d97de885c30/) | LiquityStakingPoolAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x71b426f51f1ba003836abfb457eb2f90643c504e`](./contracts/ethereum-1/0x71b426f51f1ba003836abfb457eb2f90643c504e/) | LiquityStakingPoolAdapterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x767bdd47880b0533b29abb1e3f9f3e30ce009147`](./contracts/ethereum-1/0x767bdd47880b0533b29abb1e3f9f3e30ce009147/) | LiquityStakingPoolAdapterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf56053612090896cfa14b89f32a259faef49fe5a`](./contracts/ethereum-1/0xf56053612090896cfa14b89f32a259faef49fe5a/) | LiquityStakingPoolAdapterV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x834893645f06f7ce32729ea27bb7233157ac1f47`](./contracts/ethereum-1/0x834893645f06f7ce32729ea27bb7233157ac1f47/) | LiquityStakingPoolAdapterV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a`](./contracts/ethereum-1/0x0ec8e0c868541df59ced49b39cc930c3a8dbd93a/) | LLAMMA - crvUSD AMM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x256f29e1e4fe5fb60d5d01e030d8a74def2329e9`](./contracts/polygon-137/0x256f29e1e4fe5fb60d5d01e030d8a74def2329e9/) | LockerDistribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x06709db1690efbb32ef3fe6addf1fe787e9c8159`](./contracts/polygon-137/0x06709db1690efbb32ef3fe6addf1fe787e9c8159/) | MerkleDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf1d5a685a5e6bec8471d6d9ad2d20ac48ecb2109`](./contracts/bsc-56/0xf1d5a685a5e6bec8471d6d9ad2d20ac48ecb2109/) | MigratableBNBTransmuterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x99b399b4c79b8c51c4bc8c0df4f49a77cfdec340`](./contracts/bsc-56/0x99b399b4c79b8c51c4bc8c0df4f49a77cfdec340/) | MigratableBUSDTransmuterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60b4b6e42b5f3cab771313d2169a00fb5378fb15`](./contracts/ethereum-1/0x60b4b6e42b5f3cab771313d2169a00fb5378fb15/) | MigratableLinkTransmuterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xb938d8cbf7fc6455d1f2ebede5ff9a8e887493b2`](./contracts/polygon-137/0xb938d8cbf7fc6455d1f2ebede5ff9a8e887493b2/) | MigratableMUSDTransmuterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbbb26ccd60d1444280875c2f9f22bd8c910ec2eb`](./contracts/polygon-137/0xbbb26ccd60d1444280875c2f9f22bd8c910ec2eb/) | MigratablePUSDTransmuterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99b399b4c79b8c51c4bc8c0df4f49a77cfdec340`](./contracts/ethereum-1/0x99b399b4c79b8c51c4bc8c0df4f49a77cfdec340/) | MigratableTransmuter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb208dec45edbd1179d9e275c5d459e6282d606ea`](./contracts/ethereum-1/0xb208dec45edbd1179d9e275c5d459e6282d606ea/) | MigratableTransmuterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbe8043ad7b54045619022a4f7c3a596023425540`](./contracts/ethereum-1/0xbe8043ad7b54045619022a4f7c3a596023425540/) | MigratableTransmuterV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7ee64f74792c307446cd92d23e551efae3172a28`](./contracts/ethereum-1/0x7ee64f74792c307446cd92d23e551efae3172a28/) | MigratableWethTransmuter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32facb5a46e02decaf5f939ab12c123eee203a5f`](./contracts/ethereum-1/0x32facb5a46e02decaf5f939ab12c123eee203a5f/) | MultiClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc3be5522cfeb6ef612301c3fa2ce84058c74dd2b`](./contracts/polygon-137/0xc3be5522cfeb6ef612301c3fa2ce84058c74dd2b/) | MUSDVaultAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x74ea4ce9688622132bc4966544e91ba990f5472a`](./contracts/polygon-137/0x74ea4ce9688622132bc4966544e91ba990f5472a/) | MUSDVaultAdapterWithIndirection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c`](./contracts/ethereum-1/0x34024ba3b6edaf5cdd1c24fefe1df5d03041f38c/) | OneWayLendingFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4af56f065fab006721ab686086be206eba9d1abc`](./contracts/bsc-56/0x4af56f065fab006721ab686086be206eba9d1abc/) | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae`](./contracts/ethereum-1/0x1ef89ed0edd93d1ec09e4c07373f69c49f4dccae/) | PegKeeper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x226845c2ba216b8bb1aaadfd4e14de69426c5445`](./contracts/ethereum-1/0x226845c2ba216b8bb1aaadfd4e14de69426c5445/) | PegPrice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x859d44789d9b3ba4d8085117ea72f7de197af4a4`](./contracts/polygon-137/0x859d44789d9b3ba4d8085117ea72f7de197af4a4/) | PolyquityStabilityPoolAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2370b0b9c1b8283d2e9cf4719901ccb21e44a6dc`](./contracts/polygon-137/0x2370b0b9c1b8283d2e9cf4719901ccb21e44a6dc/) | PolyquityStabilityPoolAdapterWithIndirection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x219de705e6c22d6fbc27446161efcc7d5d055ecb`](./contracts/polygon-137/0x219de705e6c22d6fbc27446161efcc7d5d055ecb/) | RewardVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x188041ad83145351ef45f4bb91d08886648aeaf8`](./contracts/ethereum-1/0x188041ad83145351ef45f4bb91d08886648aeaf8/) | Secondarymonetarypolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e1f162fd143e4a829341efd6dd451b018b10f9c`](./contracts/ethereum-1/0x4e1f162fd143e4a829341efd6dd451b018b10f9c/) | SecondarymonetarypolicyforWBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a28789645776eaa95f6d491ff375781ea5b40dd`](./contracts/ethereum-1/0x2a28789645776eaa95f6d491ff375781ea5b40dd/) | SemiLog monetary policy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc`](./contracts/ethereum-1/0x43ecffe6c6c1b9f24aeb5c180e659c2a6fce11bc/) | sfrxETH2crvUSDleveragezap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4a8086416c824b03d682d6ba117f2ec759c4a085`](./contracts/bsc-56/0x4a8086416c824b03d682d6ba117f2ec759c4a085/) | StakingPoolsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0eda8090e9a86668484915e5e1856e83480fa010`](./contracts/polygon-137/0x0eda8090e9a86668484915e5e1856e83480fa010/) | StakingPoolsV4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf574cbebbd549273af82b42cd0230de9ea6efef7`](./contracts/ethereum-1/0xf574cbebbd549273af82b42cd0230de9ea6efef7/) | SusdeMonetaryPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2aeb5c8776567c4eeebda1450e343b1bef49ae32`](./contracts/ethereum-1/0x2aeb5c8776567c4eeebda1450e343b1bef49ae32/) | USD0LpOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x599355f4f47b212591514624abecc135fa0c1b16`](./contracts/ethereum-1/0x599355f4f47b212591514624abecc135fa0c1b16/) | VesperLinkVaultAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba823ebd48df9d303a0821f79ea196840a263988`](./contracts/ethereum-1/0xba823ebd48df9d303a0821f79ea196840a263988/) | VesperLinkVaultAdapterWithIndirection | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b276d9b1cbdf7bc9556635059c6ce672e6f4052`](./contracts/ethereum-1/0x0b276d9b1cbdf7bc9556635059c6ce672e6f4052/) | VesperWETHVaultAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7d487aeaf197691aa5645728c54f204be67991ff`](./contracts/bsc-56/0x7d487aeaf197691aa5645728c54f204be67991ff/) | VotingEscrow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0145fd99f1dd6e2491e44fca608c481c9c5b97a9`](./contracts/ethereum-1/0x0145fd99f1dd6e2491e44fca608c481c9c5b97a9/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8ac4041d5801bc7cda5df5fd3af9f14546a9c223`](./contracts/bsc-56/0x8ac4041d5801bc7cda5df5fd3af9f14546a9c223/) | WaBNBToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x541f7be45dfb35fe7a246e43cb2bd17953c5e17d`](./contracts/bsc-56/0x541f7be45dfb35fe7a246e43cb2bd17953c5e17d/) | WaBUSDToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a1fbefdf67445c7f531b4f3e04ffb37b7b13794`](./contracts/ethereum-1/0x6a1fbefdf67445c7f531b4f3e04ffb37b7b13794/) | WaEthToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29ddf2c4f1e80dc9e95cc57a9ca03a28e4ab6d6c`](./contracts/ethereum-1/0x29ddf2c4f1e80dc9e95cc57a9ca03a28e4ab6d6c/) | WaLINKToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcbf335bb8ee86a5a88bebcda4506a665aa8d7022`](./contracts/ethereum-1/0xcbf335bb8ee86a5a88bebcda4506a665aa8d7022/) | WaLUSDToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8b0063dbb53a822f2bf3a50ebe8d2c365392ac5b`](./contracts/polygon-137/0x8b0063dbb53a822f2bf3a50ebe8d2c365392ac5b/) | WaMUSDToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3d244d67d680cadcccf34f8f996cea777b6d9ffe`](./contracts/polygon-137/0x3d244d67d680cadcccf34f8f996cea777b6d9ffe/) | WaPUSDToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2518b71ee64e910741f5cf480b19e8e402de4d7`](./contracts/ethereum-1/0xa2518b71ee64e910741f5cf480b19e8e402de4d7/) | WBTC-crvUSDleveragezap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x337fb95421b69c738ba2914f832455566625238e`](./contracts/polygon-137/0x337fb95421b69c738ba2914f832455566625238e/) | WCToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5cefb9f7c53a1b0c78e239b2445ddd2d362b7076`](./contracts/bsc-56/0x5cefb9f7c53a1b0c78e239b2445ddd2d362b7076/) | WIToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x091d07d5f57d27dfadf032965d441b0275eddcb2`](./contracts/bsc-56/0x091d07d5f57d27dfadf032965d441b0275eddcb2/) | WIZToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd`](./contracts/ethereum-1/0x293436d4e4a15fbc6ccc400c14a01735e5fc74fd/) | wstETH-crvUSDleveragezap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2f2c3459dae9cf208f5ad6017f9a146382fe5704`](./contracts/bsc-56/0x2f2c3459dae9cf208f5ad6017f9a146382fe5704/) | WVVToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb4f52916414119e4212369569d9089f90070b6dc`](./contracts/bsc-56/0xb4f52916414119e4212369569d9089f90070b6dc/) | YumAlpacaBNBVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x84e6fd3595010aa6ee461ea2bffa03776780f412`](./contracts/bsc-56/0x84e6fd3595010aa6ee461ea2bffa03776780f412/) | YumAlpacaBUSDVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1a676d8ea2e685f46a575a413f8e90ca49614d0a`](./contracts/bsc-56/0x1a676d8ea2e685f46a575a413f8e90ca49614d0a/) | YumBunnyBUSDVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb642eb5faf7e731ff62823515b3ff82b45d385bc`](./contracts/ethereum-1/0xb642eb5faf7e731ff62823515b3ff82b45d385bc/) | YumEthVesperVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc4f2030ded976f45fbb23b702ba725d6f88ef142`](./contracts/ethereum-1/0xc4f2030ded976f45fbb23b702ba725d6f88ef142/) | YumLinkVesperVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x55c75414f525ef9ccbb8105ce083edbda0075fb5`](./contracts/ethereum-1/0x55c75414f525ef9ccbb8105ce083edbda0075fb5/) | YumLUSDVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2ff71c31483fb7033c06b6dafe0442f2a5cb5f1a`](./contracts/polygon-137/0x2ff71c31483fb7033c06b6dafe0442f2a5cb5f1a/) | YumMUSDVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4a8086416c824b03d682d6ba117f2ec759c4a085`](./contracts/polygon-137/0x4a8086416c824b03d682d6ba117f2ec759c4a085/) | YumPUSDVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=17

Zero-match audit list:

- [18619] www.certik.org/projects/wasabixfinance

Fork inheritance lineage and inherited audits are included when available.
