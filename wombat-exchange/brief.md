# Agentic Audit Brief: Wombat Exchange

⚠️ Lifecycle status: DECLINING - TVL dropped 54.5% over 90 days

## Project Overview

- Project: Wombat Exchange (`wombat-exchange`)
- Website: [https://www.wombat.exchange/](https://www.wombat.exchange/)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-18T14:38:02.536Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-4e21
- Chains: arbitrum, avalanche, base, bsc, ethereum, optimism, scroll
- Contract surface: 34 unique implementations (155 raw deployments)
- DeFi Llama TVL: $1,545,841.31
- On-chain TVL (included contracts): $817,605.83
- TVL by chain: Bsc $769,782.30 | Arbitrum $35,281.54 | Ethereum $12,541.99

## Project Description

Wombat Exchange is a multi-chain decentralized exchange and cross-chain swap/bridge platform focused on stablecoin and liquid staking token swaps with low slippage using a single-sided liquidity AMM design. It also supports aggregator-style routing for swaps and uses WOM and veWOM governance with emissions and bribe incentives for liquidity direction.

### Architecture

Pools rely on Governance for parameter control and emission rates, while Bribes and Rewarders incentivize liquidity direction and provider participation. Cross-chain functionality is enabled through WormholeAdaptor and CrossChainPool contracts, with Treasury securing protocol funds.

## Contract Surface Quality

- Indexed contracts: 714; live-surface contracts included: 155 (155 live, 0 unknown).
- Excluded by liveness: 362 inactive, 197 singleton, 0 uninitialized.
- Deployment units: 10/96 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 8/28 (28.6%)
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 6
- Unique implementations: 34
- Raw deployments: 155
- Audits discovered: 14
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $47,823.53
- Latest audit: 2024-08 (aging)
- Staleness: 0 fresh, 1 aging, 11 stale, 2 unknown
- Tier 1 coverage: 7.1% (SlowMist)
- Note: This protocol is classified as [declining]. ASD of $47,823.53 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 6 | 21.4% | 2024-08 |
| Zokyo | Tier 2 | 3 | 10.7% | 2023-09 |
| SlowMist | Tier 1 | 2 | 7.1% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WombatERC20 | token | bsc | n/a | [`0xad6742...b94fb1`](./contracts/bsc-56/0xad6742a35fb341a9cc6ad674738dd8da98b94fb1/) | ✅ Audited |
| Asset | unknown | optimism | n/a | 87 deployments: ethereum `0x3f90a5...3d2d9d`; ethereum `0x5dace2...c7bea7`; ethereum `0x696655...49c7d3`; ethereum `0x752945...601c95`; optimism [`0x0321d1...740f86`](./contracts/optimism-10/0x0321d1d769cc1e81ba21a157992b635363740f86/); optimism `0x124911...ed89d3`; optimism `0x20d7ee...7302f1`; optimism `0x2943f5...72936e`; optimism `0x49db5f...523330`; optimism `0x8f5e6f...3b62de`; optimism `0x96b1b2...69f197`; optimism `0xe314d3...7f9b2c`; optimism `0xe933e2...0f762e`; optimism `0xee9b42...9750cd`; bsc `0x082059...8c9078`; bsc `0x17aded...163500`; bsc `0x184eb7...d96f75`; bsc `0x1f502f...f6723e`; bsc `0x1fa71d...e0d38b`; bsc `0x24a70c...2ba073`; bsc `0x34e109...390b57`; bsc `0x3a29df...de962d`; bsc `0x3ac762...86b490`; bsc `0x3c42e4...78d688`; bsc `0x3c8e74...a05367`; bsc `0x47ab51...c371eb`; bsc `0x4968e2...05d2e6`; bsc `0x4f95fe...b988f7`; bsc `0x591ccb...70ef87`; bsc `0x61e338...345752`; bsc `0x681124...3cd685`; bsc `0x6b6006...a1cc95`; bsc `0x77f645...927391`; bsc `0x791b24...5d7946`; bsc `0x7ff1ae...905e8f`; bsc `0x87073b...c120e4`; bsc `0x8df8b5...67b3ce`; bsc `0x93012a...98abbc`; bsc `0x9d0a46...15dd84`; bsc `0x9f9cea...8fda82`; bsc `0xa393d6...2f1a6e`; bsc `0xa45c0a...ba3800`; bsc `0xa649be...661c1a`; bsc `0xa6ef6c...1603e5`; bsc `0xb43ee2...00b8e2`; bsc `0xb5c936...48bcf8`; bsc `0xc74a9d...1133cb`; bsc `0xcec37c...62279b`; bsc `0xcf4349...efb015`; bsc `0xd55d01...87a521`; bsc `0xeaba29...e68ac2`; bsc `0xf31994...25745a`; bsc `0xf9bdc8...653cac`; base `0x375883...9ac624`; base `0xd05cf2...11e47b`; base `0xe2a60c...9dbc67`; arbitrum `0x06228b...2e48b5`; arbitrum `0x0fa7b7...e73055`; arbitrum `0x2977b0...66cfd9`; arbitrum `0x35876f...dc6563`; arbitrum `0x4552e8...e65c1f`; arbitrum `0x502a88...abd3a2`; arbitrum `0x59d8dc...350769`; arbitrum `0x5ad0b6...b01266`; arbitrum `0x6add07...bf42c8`; arbitrum `0x6b7c9d...18c7b2`; arbitrum `0x75eaa8...6235fe`; arbitrum `0x7a8ce2...d1a59a`; arbitrum `0x85cebd...6af003`; arbitrum `0x878004...5ed525`; arbitrum `0x9121af...3c6be2`; arbitrum `0x9a2405...3e975d`; arbitrum `0xb1ad5c...06c3d9`; arbitrum `0xb4beb0...c336fb`; arbitrum `0xb75ed9...aa0fd9`; arbitrum `0xbcd5e8...1ebd6e`; arbitrum `0xbcf4c3...47a661`; arbitrum `0xc74a9d...1133cb`; arbitrum `0xdce5e1...cf3816`; arbitrum `0xdddc78...900145`; arbitrum `0xe5232c...fb2e43`; arbitrum `0xef9187...df2486`; arbitrum `0xf4b72e...2e4505`; avalanche `0x375883...9ac624`; avalanche `0xd05cf2...11e47b`; scroll `0xe2a60c...9dbc67`; scroll `0xe43c16...553c21` | ✅ Audited |
| GovernedPriceFeed | operational_periphery | arbitrum | n/a | 3 deployments: optimism `0xb98ab9...bc04af`; bsc `0xdd29f2...73fa01`; arbitrum [`0x1d15c4...918797`](./contracts/arbitrum-42161/0x1d15c46e75cc006490c356d29ff357a647918797/) | ✅ Audited |
| PriceFeedAsset | operational_periphery | arbitrum | n/a | 2 deployments: bsc `0xa9a081...cd23cc`; arbitrum [`0x2a2020...346aaa`](./contracts/arbitrum-42161/0x2a20202a6f740200ba188f6d72fa72a08a346aaa/) | ✅ Audited |
| SkimmableAsset | unknown | bsc | n/a | 4 deployments: bsc [`0x88beb1...b87117`](./contracts/bsc-56/0x88beb144352bd3109c79076202fac2bceab87117/); bsc `0xbd459e...c273b1`; arbitrum `0xbd7568...fa35f0`; arbitrum `0xf9c235...82a274` | ✅ Audited |
| VeWom | unknown | bsc | unit-37507 | [`0x3da628...b5b0cc`](./contracts/bsc-56/0x3da62816dd31c56d9cdf22c6771ddb892cb5b0cc/) | ✅ Audited |
| WombatRouter | adapter | scroll | n/a | 7 deployments: ethereum `0x6bb82a...a0f919`; optimism `0x35d531...8bdf79`; bsc `0x19609b...a4add7`; base `0x4a88c4...df76cd`; arbitrum `0xc4b2f9...580668`; avalanche `0x4a88c4...df76cd`; scroll [`0x010931...f78959`](./contracts/scroll-534352/0x010931d4d82ff3f5ae8bd94e0752570711f78959/) | ✅ Audited |
| WormholeAdaptor | unknown | optimism | unit-37489 | [`0x3ccc0d...ff463e`](./contracts/optimism-10/0x3ccc0dc754e380cda16ef94292f278bbc4ff463e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TokenImplementation | token | arbitrum | unit-37549 | [`0x7b5eb3...9ddf96`](./contracts/arbitrum-42161/0x7b5eb3940021ec0e8e463d5dbb4b7b09a89ddf96/) | ⚠️ Unaudited |
| TokenImplementation | token | ethereum | unit-37481 | [`0xc0b314...540cfb`](./contracts/ethereum-1/0xc0b314a8c08637685fc3dafc477b92028c540cfb/) | ⚠️ Unaudited |
| ABnbcAsset | unknown | bsc | n/a | 2 deployments: bsc [`0x9d2dea...96406b`](./contracts/bsc-56/0x9d2dead9547eb65aa78e239647a0c783f296406b/); bsc `0xb6d83f...f8855f` | ⚠️ Unaudited |
| AnkrStakingAsset | unknown | bsc | n/a | 2 deployments: bsc [`0x128fa2...08228b`](./contracts/bsc-56/0x128fa2c0708bd0e357cd97eadaafa3bc9608228b/); arbitrum `0x229028...f3f2c4` | ⚠️ Unaudited |
| BnbxAsset | unknown | bsc | n/a | 3 deployments: bsc [`0x10f7c6...1fc24f`](./contracts/bsc-56/0x10f7c62f47f19e3ce08fef38f74e3c0bb31fc24f/); bsc `0x16b372...a509a7`; bsc `0x5d64ed...060f4a` | ⚠️ Unaudited |
| DynamicAsset | unknown | bsc | n/a | 18 deployments: bsc [`0x0321d1...740f86`](./contracts/bsc-56/0x0321d1d769cc1e81ba21a157992b635363740f86/); bsc `0x0e99fb...cc5760`; bsc `0x4447de...8a5ac6`; bsc `0x4d41e9...b8e67e`; bsc `0x5a65cb...d2de8b`; bsc `0x5d38a3...91df38`; bsc `0x6c7b40...d378ce`; bsc `0x74f019...092c5b`; bsc `0x90f6f0...2b5201`; bsc `0xd67ede...7e5bb9`; bsc `0xdfde04...b2a9b3`; bsc `0xe0e763...ba83ec`; arbitrum `0x35c462...1bc6ac`; arbitrum `0x468830...350978`; arbitrum `0x696655...49c7d3`; arbitrum `0x909715...f19108`; arbitrum `0xe62880...be798d`; avalanche `0x29eeb2...18ec91` | ⚠️ Unaudited |
| ERC4626Asset | unknown | ethereum | n/a | [`0x25c9dd...04c914`](./contracts/ethereum-1/0x25c9dd8a3774ef7c918cd28ff59cf9e29504c914/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | unit-37477 | [`0x5781b4...b353b1`](./contracts/ethereum-1/0x5781b4fe4fadb61ea2483eedd9498388f9b353b1/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | bsc | unit-37524 | [`0xc37a89...aadf48`](./contracts/bsc-56/0xc37a89cdb064ac2921fcc8b3538ac0d6a3aadf48/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | unit-37553 | [`0xc37a89...aadf48`](./contracts/arbitrum-42161/0xc37a89cdb064ac2921fcc8b3538ac0d6a3aadf48/) | ⚠️ Unaudited |
| OptimizedTransparentUpgradeableProxy | unknown | scroll | n/a | 2 deployments: scroll [`0x15dcc2...b1a17f`](./contracts/scroll-534352/0x15dcc2da1a73194c9c5bb83ecda86251f0b1a17f/); scroll `0x80f088...7337ce` | ⚠️ Unaudited |
| rBNBAsset | unknown | bsc | n/a | [`0x56177d...16410c`](./contracts/bsc-56/0x56177d9f2cb78422610ee8263fe9b7231216410c/) | ⚠️ Unaudited |
| sAVAXAsset | unknown | avalanche | n/a | [`0xc096ff...a5a9fa`](./contracts/avalanche-43114/0xc096ff2606152ed2a06dd12f15a3c0466aa5a9fa/) | ⚠️ Unaudited |
| SnBNBAsset | unknown | bsc | n/a | [`0xaa0811...148ee8`](./contracts/bsc-56/0xaa0811aff60fbe2d7d7d0a18f26e584b8c148ee8/) | ⚠️ Unaudited |
| StkbnbAsset | unknown | bsc | n/a | 2 deployments: bsc [`0x0e202a...d0679f`](./contracts/bsc-56/0x0e202a0bcad2712d1fdeeb94ec98c58beed0679f/); bsc `0xc496f4...e0d17f` | ⚠️ Unaudited |
| TokenBridge | operational_periphery | avalanche | unit-37567 | [`0xa15e45...3b3382`](./contracts/avalanche-43114/0xa15e4544d141aa98c4581a1ea10eb9048c3b3382/) | ⚠️ Unaudited |
| TokenImplementation | token | optimism | unit-37495 | [`0xd2612b...13a668`](./contracts/optimism-10/0xd2612b256f6f76fea8c6fbca0bf3166d0d13a668/) | ⚠️ Unaudited |
| TokenImplementation | token | base | unit-37538 | [`0xd9541b...235d64`](./contracts/base-8453/0xd9541b08b375d58ae104ec247d7443d2d7235d64/) | ⚠️ Unaudited |
| WBETHAsset | unknown | bsc | n/a | [`0x975693...51d57f`](./contracts/bsc-56/0x975693afe5bb69088a716e3a7f9bff77ec51d57f/) | ⚠️ Unaudited |
| WstETHAsset | unknown | arbitrum | n/a | [`0xeb7e2f...5f7465`](./contracts/arbitrum-42161/0xeb7e2f8efac7ab8079837417b65cd927f05f7465/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0x2bb4ea...90e29c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcaa5a9...848555` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xef0b4d...6aaf94` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2086dd...c17aa7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2ddfdd...39f37e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x960c66...ace306` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Wombat-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Wombat-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | 88 | high |
| [Hacken](https://hacken.io/audits/wombat-exchange/sca-wombat-exchange-erc20-staking-apr2022) | Hacken | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [Peckshield](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV2-v1.0.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | 7 | high |
| [Peckshield Audit - V3](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV3-v1.1.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | contract_name | 0 | n/a |
| [Slowmist Audit](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/SlowMist%20Audit%20Report%20-%20WombatExchange_en-us.pdf) | SlowMist | Audit | 2023-05 | stale | Direct | contract_name | 3 | high |
| [Zokyo Audit](https://github.com/wombat-exchange/v1-core/blob/master/audits/zokyo/2023-Sep-Wombat_audit_report.pdf) | Zokyo | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-WombatV3-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV3-v1.0.pdf) | PeckShield | Audit | 2022-11 | stale | Direct | contract_name | 0 | n/a |
| [PeckShield-Audit-Report-WombatV4-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WombatV4-v1.0.pdf) | PeckShield | Audit | 2023-04 | stale | Direct | contract_name | 9 | high |
| [PeckShield-Audit-Report-Wombat-VolatilePool-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Wombat-VolatilePool-v1.0.pdf) | PeckShield | Audit | 2024-08 | aging | Direct | contract_name | 0 | n/a |
| [2023-Jun-Wombat_Exchange_Zokyo_audit_report_a68b1ad465.pdf](https://github.com/wombat-exchange/v1-core/blob/master/audits/zokyo/2023-Jun-Wombat_Exchange_Zokyo_audit_report_a68b1ad465.pdf) | Zokyo | Audit | 2023-06 | stale | Direct | contract_name | 1 | high |
| [zokyo_wombat_audit_report.pdf](https://github.com/wombat-exchange/v1-core/blob/master/audits/zokyo/zokyo_wombat_audit_report.pdf) | Zokyo | Audit | 2022-04 | stale | Direct | contract_name | 88 | high |
| [DL audit link](https://hacken.io/audits) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [DIP001_audit_report_2020_03_en_1_0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/DIP001_audit_report_2020_03_en_1_0.pdf) | PeckShield | Audit | 2020-03 | stale | Direct | n/a | 0 | n/a |
| [BitFi - BFBTC - SlowMist Audit Report.pdf](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/BitFi%20-%20BFBTC%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x7b5eb3...9ddf96`](./contracts/arbitrum-42161/0x7b5eb3940021ec0e8e463d5dbb4b7b09a89ddf96/) | TokenImplementation | token | $35,281.54 | Verified native implementation with $35,281.54 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc0b314...540cfb`](./contracts/ethereum-1/0xc0b314a8c08637685fc3dafc477b92028c540cfb/) | TokenImplementation | token | $12,541.99 | Verified native implementation with $12,541.99 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9d2dea...96406b`](./contracts/bsc-56/0x9d2dead9547eb65aa78e239647a0c783f296406b/) | ABnbcAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x128fa2...08228b`](./contracts/bsc-56/0x128fa2c0708bd0e357cd97eadaafa3bc9608228b/) | AnkrStakingAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x10f7c6...1fc24f`](./contracts/bsc-56/0x10f7c62f47f19e3ce08fef38f74e3c0bb31fc24f/) | BnbxAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0321d1...740f86`](./contracts/bsc-56/0x0321d1d769cc1e81ba21a157992b635363740f86/) | DynamicAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25c9dd...04c914`](./contracts/ethereum-1/0x25c9dd8a3774ef7c918cd28ff59cf9e29504c914/) | ERC4626Asset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x56177d...16410c`](./contracts/bsc-56/0x56177d9f2cb78422610ee8263fe9b7231216410c/) | rBNBAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc096ff...a5a9fa`](./contracts/avalanche-43114/0xc096ff2606152ed2a06dd12f15a3c0466aa5a9fa/) | sAVAXAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xaa0811...148ee8`](./contracts/bsc-56/0xaa0811aff60fbe2d7d7d0a18f26e584b8c148ee8/) | SnBNBAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0e202a...d0679f`](./contracts/bsc-56/0x0e202a0bcad2712d1fdeeb94ec98c58beed0679f/) | StkbnbAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa15e45...3b3382`](./contracts/avalanche-43114/0xa15e4544d141aa98c4581a1ea10eb9048c3b3382/) | TokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xd2612b...13a668`](./contracts/optimism-10/0xd2612b256f6f76fea8c6fbca0bf3166d0d13a668/) | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd9541b...235d64`](./contracts/base-8453/0xd9541b08b375d58ae104ec247d7443d2d7235d64/) | TokenImplementation | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x975693...51d57f`](./contracts/bsc-56/0x975693afe5bb69088a716e3a7f9bff77ec51d57f/) | WBETHAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xeb7e2f...5f7465`](./contracts/arbitrum-42161/0xeb7e2f8efac7ab8079837417b65cd927f05f7465/) | WstETHAsset | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 0 |
| standard_library | 5 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=440

Zero-match audit list:

- [3005] Hacken
- [3007] Peckshield Audit - V3
- [3010] Zokyo Audit
- [3011] PeckShield-Audit-Report-WombatV3-v1.0.pdf
- [3013] PeckShield-Audit-Report-Wombat-VolatilePool-v1.0.pdf
- [15386] DL audit link
- [15394] DIP001_audit_report_2020_03_en_1_0.pdf
- [15397] BitFi - BFBTC - SlowMist Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
