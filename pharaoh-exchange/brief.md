# Agentic Audit Brief: Pharaoh Exchange

## Project Overview

- Project: Pharaoh Exchange (`pharaoh-exchange`)
- Website: [https://pharaoh.exchange](https://pharaoh.exchange)
- Lifecycle: active (Tier 0, 28.6% below peak)
- Generated: 2026-05-31T05:40:30.306Z
- Pipeline run: v2-pipeline-2026-05-31-6a3e7e-9cd8
- Chains: avalanche
- Contract surface: 48 unique implementations (95 raw deployments)
- DeFi Llama TVL: $50,255,510.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Pharaoh Exchange is a decentralized exchange (DEX) on Avalanche that facilitates token swaps and liquidity provision. It appears to support both concentrated liquidity (V3) and legacy AMM models, with integrated yield farming and governance features.

### Architecture

The V3 family relies on shared infrastructure contracts like AccessHub for access control, Voter for governance, and Pulse for incentives. The PharaohMigrator and TreasuryHelper support token migration and treasury management across the protocol.

## Audit Coverage Summary

- Verified implementations audited: 0/36 (0.0%)
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 48
- Raw deployments: 95
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AccessHub | unknown | avalanche | 13 deployments: avalanche [`0x0253d2...fee4f1`](./contracts/avalanche-43114/0x0253d249a5e16269230fa81a58c104f5aafee4f1/); avalanche `0x081125...e2ebbe`; avalanche `0x088703...432779`; avalanche `0x272cd3...ea4bfb`; avalanche `0x29cd88...3afb41`; avalanche `0x3c3945...509051`; avalanche `0x639c4b...fb2c89`; avalanche `0x65b8ba...352d29`; avalanche `0x6c6fc8...a6eeb0`; avalanche `0x88451a...0c91e6`; avalanche `0xa9bf90...8660f0`; avalanche `0xaa589d...5c92ae`; avalanche `0xc2a104...fc9eba` | ⚠️ Unaudited |
| AccessHubDLMMActions | unknown | avalanche | [`0x1a4203...5d6cfb`](./contracts/avalanche-43114/0x1a4203a52ceed651d30cb038698382a8905d6cfb/) | ⚠️ Unaudited |
| AccessHubPhar | unknown | avalanche | 5 deployments: avalanche [`0x06e053...118e1b`](./contracts/avalanche-43114/0x06e05378a63a904afe03a6723cd1cbd9ec118e1b/); avalanche `0x282a4f...c096ec`; avalanche `0x3176f6...4bf483`; avalanche `0x3f3af1...3c9e4f`; avalanche `0x973012...d0dd44` | ⚠️ Unaudited |
| AutomatedFeeNotifier | unknown | avalanche | 3 deployments: avalanche [`0x649638...0eaf03`](./contracts/avalanche-43114/0x64963852966aa7ff2258434f361ec933bf0eaf03/); avalanche `0x7d51ed...fb37ab`; avalanche `0xbbe734...1ebb32` | ⚠️ Unaudited |
| AutoVault | core_logic | avalanche | 4 deployments: avalanche [`0x47a2c1...2c8825`](./contracts/avalanche-43114/0x47a2c15eeeef5018a3e13caf987b235d702c8825/); avalanche `0x4bb193...ab5586`; avalanche `0x51d6ab...9b3d4b`; avalanche `0xa44cb7...299aeb` | ⚠️ Unaudited |
| DLMMFactory | registry | avalanche | [`0xeb4800...a23d4d`](./contracts/avalanche-43114/0xeb480050b016f6c6d45203d2346b68bddda23d4d/) | ⚠️ Unaudited |
| DLMMFeeCollector | unknown | avalanche | [`0x684b34...42289c`](./contracts/avalanche-43114/0x684b340014556d15d754b812ef7d1b134b42289c/) | ⚠️ Unaudited |
| DLMMPool | core_logic | avalanche | [`0xf41253...26d710`](./contracts/avalanche-43114/0xf41253c1258a7a3c291e695158267b173c26d710/) | ⚠️ Unaudited |
| DLMMQuoter | periphery | avalanche | [`0xddae0a...5fef40`](./contracts/avalanche-43114/0xddae0aa4e93be4936c1bcc12d3001b35c75fef40/) | ⚠️ Unaudited |
| DLMMRewarder | unknown | avalanche | 5 deployments: avalanche [`0x015f05...a037b3`](./contracts/avalanche-43114/0x015f051b1fe0df7693a9dc348bc48c608aa037b3/); avalanche `0xa2ab12...059513`; avalanche `0xc99757...43d783`; avalanche `0xd28467...88548c`; avalanche `0xf1996b...120ab7` | ⚠️ Unaudited |
| DLMMRouter | adapter | avalanche | [`0xff2bef...f5d93d`](./contracts/avalanche-43114/0xff2befc4ff86cb0f3e8d3d9d6200b7a05bf5d93d/) | ⚠️ Unaudited |
| FeeCollector | unknown | avalanche | 3 deployments: avalanche [`0x088e2e...53bb64`](./contracts/avalanche-43114/0x088e2efad10f3262e745c6c01f661112f353bb64/); avalanche `0x1e1e2a...8437bc`; avalanche `0x82a411...185222` | ⚠️ Unaudited |
| FeeDistributorFactory | operational_periphery | avalanche | [`0x5af7fa...5125ac`](./contracts/avalanche-43114/0x5af7fad6e813fb4637e5cfacc7dde6c5445125ac/) | ⚠️ Unaudited |
| FeeRecipientFactory | operational_periphery | avalanche | [`0x227fab...4de16f`](./contracts/avalanche-43114/0x227fabb4db11cc082ef8cd083cff5d034d4de16f/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | avalanche | [`0xd9a63c...5906b1`](./contracts/avalanche-43114/0xd9a63c24f69f015ebe3ff61817645dc7cc5906b1/) | ⚠️ Unaudited |
| GaugeV3 | operational_periphery | avalanche | 5 deployments: avalanche [`0x031a97...8cd262`](./contracts/avalanche-43114/0x031a975187111afe6b9dc473cd317b00ed8cd262/); avalanche `0x15c50a...24d292`; avalanche `0x19ff41...d7fcd8`; avalanche `0xdb7361...0da90e`; avalanche `0xe56531...07d04e` | ⚠️ Unaudited |
| MevModule | unknown | avalanche | 4 deployments: avalanche [`0x21dadc...261a16`](./contracts/avalanche-43114/0x21dadc5df1dcd425f8a1d936b9b037aa75261a16/); avalanche `0x70fd0f...e39f43`; avalanche `0xab5598...5309d8`; avalanche `0xe7187f...9975c4` | ⚠️ Unaudited |
| Minter | operational_periphery | avalanche | [`0xd23f12...222fde`](./contracts/avalanche-43114/0xd23f124bbbc958bcddc0ce624042b48154222fde/) | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | avalanche | [`0x3265d6...99a8a0`](./contracts/avalanche-43114/0x3265d621c7d993151c8eb2acd4902cda0499a8a0/) | ⚠️ Unaudited |
| MockPoolDeployer | core_logic | avalanche | [`0x491280...4f3e96`](./contracts/avalanche-43114/0x49128053ae71470a6670895bb932ce19384f3e96/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | avalanche | [`0x6f17db...60a89a`](./contracts/avalanche-43114/0x6f17db548544a19162e82b20c67abee99960a89a/) | ⚠️ Unaudited |
| P33 | unknown | avalanche | 4 deployments: avalanche [`0x26e9db...926ca9`](./contracts/avalanche-43114/0x26e9dbe75aed331e41272bece932ff1b48926ca9/); avalanche `0x640d2e...8867e6`; avalanche `0xcda419...22ca80`; avalanche `0xd8ee2b...4d4bd8` | ⚠️ Unaudited |
| Pharaoh | unknown | avalanche | [`0x13a466...1f28e7`](./contracts/avalanche-43114/0x13a466998ce03db73abc2d4df3bbd845ed1f28e7/) | ⚠️ Unaudited |
| PharaohMigrator | periphery | avalanche | 2 deployments: avalanche [`0x1a624b...c66297`](./contracts/avalanche-43114/0x1a624ba3f3928b38990d9cc862ae5fb54ac66297/); avalanche `0x2ca45d...3eac06` | ⚠️ Unaudited |
| Pulse | unknown | avalanche | 2 deployments: avalanche [`0xb98c60...006150`](./contracts/avalanche-43114/0xb98c602d04ba75ccf2337c39156880f757006150/); avalanche `0xfc508b...864c46` | ⚠️ Unaudited |
| Quoter | periphery | avalanche | [`0xadae75...456465`](./contracts/avalanche-43114/0xadae75447d112cfc401c952744de3e6d32456465/) | ⚠️ Unaudited |
| QuoterV2 | periphery | avalanche | [`0xb72973...ea2138`](./contracts/avalanche-43114/0xb7297301b7cc659bb96d51754643a0df6eea2138/) | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | avalanche | [`0x660862...e97882`](./contracts/avalanche-43114/0x660862d49e92f80f29e56c2770027e8d83e97882/) | ⚠️ Unaudited |
| Router | adapter | avalanche | [`0x9cee04...5e38cc`](./contracts/avalanche-43114/0x9cee04bdce127da7e448a333f006defb3d5e38cc/) | ⚠️ Unaudited |
| SwapRouter | adapter | avalanche | 2 deployments: avalanche [`0x9daea9...90acc5`](./contracts/avalanche-43114/0x9daea9462ff3dd535643e07be587517a9790acc5/); avalanche `0xc8b8fc...d3915c` | ⚠️ Unaudited |
| TickLens | periphery | avalanche | [`0x3a7aeb...94a100`](./contracts/avalanche-43114/0x3a7aeb3c33922073f4f23207d0ff247e9694a100/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | 2 deployments: avalanche [`0x065028...349aef`](./contracts/avalanche-43114/0x065028dcf219d8622dd50231f188f2b315349aef/); avalanche `0xfe99e9...131aa0` | ⚠️ Unaudited |
| UniversalRouter | adapter | avalanche | [`0x5acc35...8ec6c6`](./contracts/avalanche-43114/0x5acc35397d2ce81ac54a4b1c6d9e1fb29f8ec6c6/) | ⚠️ Unaudited |
| VoteModule | unknown | avalanche | [`0x34f233...6f846b`](./contracts/avalanche-43114/0x34f233f868cdb42446a18562710ee705d66f846b/) | ⚠️ Unaudited |
| Voter | unknown | avalanche | 7 deployments: avalanche [`0x31a8a3...925d35`](./contracts/avalanche-43114/0x31a8a3f4ca7b74b098d48a47aaa3f03a49925d35/); avalanche `0x5363e3...8f0f7b`; avalanche `0x677e39...ab35f2`; avalanche `0x922b9c...8a2aa7`; avalanche `0x9334f3...45af21`; avalanche `0xaf6c9a...af4019`; avalanche `0xe59b0f...12d82a` | ⚠️ Unaudited |
| XPhar | unknown | avalanche | [`0xe8164e...736b9a`](./contracts/avalanche-43114/0xe8164ea89665dab7a553e667f81f30cfda736b9a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | `0x15913e...2522bd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1a6ed8...d89d6f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x428b74...9534ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x469ab2...cbd534` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5d9916...968293` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x638dc9...a1dab8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x71775f...55325a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x81dd8a...783d27` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x85448b...58f8c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe0e637...7c9300` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe63f0d...64ec12` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf31632...66d51b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x0253d2...fee4f1`](./contracts/avalanche-43114/0x0253d249a5e16269230fa81a58c104f5aafee4f1/) | AccessHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1a4203...5d6cfb`](./contracts/avalanche-43114/0x1a4203a52ceed651d30cb038698382a8905d6cfb/) | AccessHubDLMMActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x06e053...118e1b`](./contracts/avalanche-43114/0x06e05378a63a904afe03a6723cd1cbd9ec118e1b/) | AccessHubPhar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x649638...0eaf03`](./contracts/avalanche-43114/0x64963852966aa7ff2258434f361ec933bf0eaf03/) | AutomatedFeeNotifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x47a2c1...2c8825`](./contracts/avalanche-43114/0x47a2c15eeeef5018a3e13caf987b235d702c8825/) | AutoVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x684b34...42289c`](./contracts/avalanche-43114/0x684b340014556d15d754b812ef7d1b134b42289c/) | DLMMFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x015f05...a037b3`](./contracts/avalanche-43114/0x015f051b1fe0df7693a9dc348bc48c608aa037b3/) | DLMMRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x088e2e...53bb64`](./contracts/avalanche-43114/0x088e2efad10f3262e745c6c01f661112f353bb64/) | FeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5af7fa...5125ac`](./contracts/avalanche-43114/0x5af7fad6e813fb4637e5cfacc7dde6c5445125ac/) | FeeDistributorFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x227fab...4de16f`](./contracts/avalanche-43114/0x227fabb4db11cc082ef8cd083cff5d034d4de16f/) | FeeRecipientFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd9a63c...5906b1`](./contracts/avalanche-43114/0xd9a63c24f69f015ebe3ff61817645dc7cc5906b1/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x031a97...8cd262`](./contracts/avalanche-43114/0x031a975187111afe6b9dc473cd317b00ed8cd262/) | GaugeV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd23f12...222fde`](./contracts/avalanche-43114/0xd23f124bbbc958bcddc0ce624042b48154222fde/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3265d6...99a8a0`](./contracts/avalanche-43114/0x3265d621c7d993151c8eb2acd4902cda0499a8a0/) | MixedRouteQuoterV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x491280...4f3e96`](./contracts/avalanche-43114/0x49128053ae71470a6670895bb932ce19384f3e96/) | MockPoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6f17db...60a89a`](./contracts/avalanche-43114/0x6f17db548544a19162e82b20c67abee99960a89a/) | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x26e9db...926ca9`](./contracts/avalanche-43114/0x26e9dbe75aed331e41272bece932ff1b48926ca9/) | P33 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x13a466...1f28e7`](./contracts/avalanche-43114/0x13a466998ce03db73abc2d4df3bbd845ed1f28e7/) | Pharaoh | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1a624b...c66297`](./contracts/avalanche-43114/0x1a624ba3f3928b38990d9cc862ae5fb54ac66297/) | PharaohMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb98c60...006150`](./contracts/avalanche-43114/0xb98c602d04ba75ccf2337c39156880f757006150/) | Pulse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xadae75...456465`](./contracts/avalanche-43114/0xadae75447d112cfc401c952744de3e6d32456465/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb72973...ea2138`](./contracts/avalanche-43114/0xb7297301b7cc659bb96d51754643a0df6eea2138/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9cee04...5e38cc`](./contracts/avalanche-43114/0x9cee04bdce127da7e448a333f006defb3d5e38cc/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9daea9...90acc5`](./contracts/avalanche-43114/0x9daea9462ff3dd535643e07be587517a9790acc5/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3a7aeb...94a100`](./contracts/avalanche-43114/0x3a7aeb3c33922073f4f23207d0ff247e9694a100/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x34f233...6f846b`](./contracts/avalanche-43114/0x34f233f868cdb42446a18562710ee705d66f846b/) | VoteModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x31a8a3...925d35`](./contracts/avalanche-43114/0x31a8a3f4ca7b74b098d48a47aaa3f03a49925d35/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe8164e...736b9a`](./contracts/avalanche-43114/0xe8164ea89665dab7a553e667f81f30cfda736b9a/) | XPhar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 34 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
