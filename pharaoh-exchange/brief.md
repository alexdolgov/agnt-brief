# Agentic Audit Brief: Pharaoh Exchange

## Project Overview

- Project: Pharaoh Exchange (`pharaoh-exchange`)
- Website: [https://www.phar.gg/](https://www.phar.gg/)
- Lifecycle: active (Tier 0, 28.6% below peak)
- Generated: 2026-06-17T07:00:36.905Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: avalanche
- Contract surface: 61 unique implementations (101 raw deployments)
- DeFi Llama TVL: $38,708,358.00
- On-chain TVL (included contracts): $15,622,408.70
- TVL by chain: Avalanche $15,622,408.70

## Project Description

Pharaoh Exchange is a decentralized exchange on Avalanche offering token swaps, liquidity provision, incentive mechanisms, and governance features. Its contract surface should be reviewed carefully to distinguish confirmed Pharaoh-owned deployments from Ramses/upstream or other potentially contaminated contracts before making ownership or coverage claims.

### Architecture

The V3 family relies on shared infrastructure contracts like AccessHub for access control, Voter for governance, and Pulse for incentives. The PharaohMigrator and TreasuryHelper support token migration and treasury management across the protocol.

## Contract Surface Quality

- Indexed contracts: 123; live-surface contracts included: 101 (96 live, 5 unknown).
- Excluded by liveness: 0 inactive, 22 singleton, 0 uninitialized.
- Deployment units: 11/22 live.
- Detected codebases: uniswap-v2, uniswap-v3
- Unverified dependencies: 4/22.

## Audit Coverage Summary

- Verified implementations audited: 0/50 (0.0%)
- Verified + Unaudited implementations: 50
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 61
- Raw deployments: 101
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $15,622,408.70
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 2 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (50)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RamsesV3Pool | core_logic | avalanche | n/a | 5 deployments: avalanche [`0x5ca009...3b4af2`](./contracts/avalanche-43114/0x5ca009013f6b898d134b6798b336a4592f3b4af2/); avalanche `0x65b901...8ecbbd`; avalanche `0x9bfe31...c970c0`; avalanche `0xf01449...589534`; avalanche `0xff0855...efbea9` | ⚠️ Unaudited |
| AccessHub | unknown | avalanche | n/a | 9 deployments: avalanche [`0x0253d2...fee4f1`](./contracts/avalanche-43114/0x0253d249a5e16269230fa81a58c104f5aafee4f1/); avalanche `0x081125...e2ebbe`; avalanche `0x272cd3...ea4bfb`; avalanche `0x639c4b...fb2c89`; avalanche `0x6c6fc8...a6eeb0`; avalanche `0x88451a...0c91e6`; avalanche `0xa9bf90...8660f0`; avalanche `0xaa589d...5c92ae`; avalanche `0xc2a104...fc9eba` | ⚠️ Unaudited |
| AccessHubDLMMActions | unknown | avalanche | n/a | [`0x1a4203...5d6cfb`](./contracts/avalanche-43114/0x1a4203a52ceed651d30cb038698382a8905d6cfb/) | ⚠️ Unaudited |
| AccessHubPhar | unknown | avalanche | n/a | 3 deployments: avalanche [`0x06e053...118e1b`](./contracts/avalanche-43114/0x06e05378a63a904afe03a6723cd1cbd9ec118e1b/); avalanche `0x282a4f...c096ec`; avalanche `0x3f3af1...3c9e4f` | ⚠️ Unaudited |
| AutomatedFeeNotifier | unknown | avalanche | n/a | 3 deployments: avalanche [`0x649638...0eaf03`](./contracts/avalanche-43114/0x64963852966aa7ff2258434f361ec933bf0eaf03/); avalanche `0x7d51ed...fb37ab`; avalanche `0xbbe734...1ebb32` | ⚠️ Unaudited |
| AutoVault | core_logic | avalanche | n/a | 4 deployments: avalanche [`0x47a2c1...2c8825`](./contracts/avalanche-43114/0x47a2c15eeeef5018a3e13caf987b235d702c8825/); avalanche `0x4bb193...ab5586`; avalanche `0x51d6ab...9b3d4b`; avalanche `0xa44cb7...299aeb` | ⚠️ Unaudited |
| ClPoolFactory | registry | avalanche | unit-23525 | [`0xaaa329...320c42`](./contracts/avalanche-43114/0xaaa32926fce6be95ea2c51cb4fcb60836d320c42/) | ⚠️ Unaudited |
| DLMMFactory | registry | avalanche | n/a | [`0xeb4800...a23d4d`](./contracts/avalanche-43114/0xeb480050b016f6c6d45203d2346b68bddda23d4d/) | ⚠️ Unaudited |
| DLMMFeeCollector | unknown | avalanche | n/a | [`0x684b34...42289c`](./contracts/avalanche-43114/0x684b340014556d15d754b812ef7d1b134b42289c/) | ⚠️ Unaudited |
| DLMMPool | core_logic | avalanche | n/a | [`0xf41253...26d710`](./contracts/avalanche-43114/0xf41253c1258a7a3c291e695158267b173c26d710/) | ⚠️ Unaudited |
| DLMMQuoter | periphery | avalanche | n/a | [`0xddae0a...5fef40`](./contracts/avalanche-43114/0xddae0aa4e93be4936c1bcc12d3001b35c75fef40/) | ⚠️ Unaudited |
| DLMMRewarder | unknown | avalanche | n/a | 3 deployments: avalanche [`0x015f05...a037b3`](./contracts/avalanche-43114/0x015f051b1fe0df7693a9dc348bc48c608aa037b3/); avalanche `0xa2ab12...059513`; avalanche `0xf1996b...120ab7` | ⚠️ Unaudited |
| DLMMRouter | adapter | avalanche | n/a | [`0xff2bef...f5d93d`](./contracts/avalanche-43114/0xff2befc4ff86cb0f3e8d3d9d6200b7a05bf5d93d/) | ⚠️ Unaudited |
| FeeCollector | unknown | avalanche | n/a | 3 deployments: avalanche [`0x088e2e...53bb64`](./contracts/avalanche-43114/0x088e2efad10f3262e745c6c01f661112f353bb64/); avalanche `0x1e1e2a...8437bc`; avalanche `0x82a411...185222` | ⚠️ Unaudited |
| FeeCollector | unknown | avalanche | unit-23524 | [`0xaaa2a4...e84a2f`](./contracts/avalanche-43114/0xaaa2a49958a443dc9d19fddee873b5d1d6e84a2f/) | ⚠️ Unaudited |
| FeeDistributorFactory | operational_periphery | avalanche | n/a | [`0x5af7fa...5125ac`](./contracts/avalanche-43114/0x5af7fad6e813fb4637e5cfacc7dde6c5445125ac/) | ⚠️ Unaudited |
| FeeRecipientFactory | operational_periphery | avalanche | n/a | [`0x227fab...4de16f`](./contracts/avalanche-43114/0x227fabb4db11cc082ef8cd083cff5d034d4de16f/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | avalanche | n/a | [`0xd9a63c...5906b1`](./contracts/avalanche-43114/0xd9a63c24f69f015ebe3ff61817645dc7cc5906b1/) | ⚠️ Unaudited |
| GaugeV3 | operational_periphery | avalanche | n/a | 3 deployments: avalanche [`0x15c50a...24d292`](./contracts/avalanche-43114/0x15c50acd86be6be893ab57cf4f47d0da7e24d292/); avalanche `0x19ff41...d7fcd8`; avalanche `0xdb7361...0da90e` | ⚠️ Unaudited |
| MevModule | unknown | avalanche | n/a | [`0xab5598...5309d8`](./contracts/avalanche-43114/0xab559850a251a6ebdba31076019ccf44165309d8/) | ⚠️ Unaudited |
| MevModule | unknown | avalanche | unit-23532 | [`0xe7187f...9975c4`](./contracts/avalanche-43114/0xe7187f0d21e1039e8fd8346aa4f9a7c9f99975c4/) | ⚠️ Unaudited |
| Minter | operational_periphery | avalanche | n/a | [`0xd23f12...222fde`](./contracts/avalanche-43114/0xd23f124bbbc958bcddc0ce624042b48154222fde/) | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | avalanche | n/a | [`0x3265d6...99a8a0`](./contracts/avalanche-43114/0x3265d621c7d993151c8eb2acd4902cda0499a8a0/) | ⚠️ Unaudited |
| MockPoolDeployer | core_logic | avalanche | n/a | [`0x491280...4f3e96`](./contracts/avalanche-43114/0x49128053ae71470a6670895bb932ce19384f3e96/) | ⚠️ Unaudited |
| NonfungiblePositionManagerB | governance | avalanche | unit-23527 | [`0xaaa78e...45946a`](./contracts/avalanche-43114/0xaaa78e8c4241990b4ce159e105da08129345946a/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | avalanche | n/a | [`0x6f17db...60a89a`](./contracts/avalanche-43114/0x6f17db548544a19162e82b20c67abee99960a89a/) | ⚠️ Unaudited |
| P33 | unknown | avalanche | n/a | 4 deployments: avalanche [`0x26e9db...926ca9`](./contracts/avalanche-43114/0x26e9dbe75aed331e41272bece932ff1b48926ca9/); avalanche `0x640d2e...8867e6`; avalanche `0xcda419...22ca80`; avalanche `0xd8ee2b...4d4bd8` | ⚠️ Unaudited |
| PairFactory | registry | avalanche | unit-23523 | [`0xaaa16c...b1ab57`](./contracts/avalanche-43114/0xaaa16c016bf556fcd620328f0759252e29b1ab57/) | ⚠️ Unaudited |
| Pharaoh | unknown | avalanche | n/a | [`0x13a466...1f28e7`](./contracts/avalanche-43114/0x13a466998ce03db73abc2d4df3bbd845ed1f28e7/) | ⚠️ Unaudited |
| ProxyAdmin | governance | avalanche | n/a | [`0x3b9197...2b7ee6`](./contracts/avalanche-43114/0x3b91972c1ff63296cb824a30997c7e4a982b7ee6/) | ⚠️ Unaudited |
| Quoter | periphery | avalanche | n/a | [`0xadae75...456465`](./contracts/avalanche-43114/0xadae75447d112cfc401c952744de3e6d32456465/) | ⚠️ Unaudited |
| QuoterV2 | periphery | avalanche | n/a | [`0xb72973...ea2138`](./contracts/avalanche-43114/0xb7297301b7cc659bb96d51754643a0df6eea2138/) | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | avalanche | n/a | 8 deployments: avalanche [`0x00409b...3a4eea`](./contracts/avalanche-43114/0x00409b267f4573f601cbcdf3b9f0b27a263a4eea/); avalanche `0x906b98...81dfdb`; avalanche `0x9e89a0...727e01`; avalanche `0xa47aa2...466de0`; avalanche `0xaf9440...d4c011`; avalanche `0xd57ec4...d057e6`; avalanche `0xec8962...5fdc81`; avalanche `0xf2593b...5984b1` | ⚠️ Unaudited |
| RamsesV3Factory | registry | avalanche | n/a | [`0xae6e5c...157d0d`](./contracts/avalanche-43114/0xae6e5c62328ade73ceefd42228528b70c8157d0d/) | ⚠️ Unaudited |
| RamsesV3PoolDeployer | core_logic | avalanche | n/a | [`0x6a4113...7c66f9`](./contracts/avalanche-43114/0x6a4113ed0915bcf5e48e758e8f4cebffc07c66f9/) | ⚠️ Unaudited |
| RamsesV3PositionManager | governance | avalanche | unit-23515 | [`0x0b4478...ab4f39`](./contracts/avalanche-43114/0x0b4478e810d48b5882d4019d435a2f864bab4f39/) | ⚠️ Unaudited |
| Router | adapter | avalanche | n/a | [`0x9cee04...5e38cc`](./contracts/avalanche-43114/0x9cee04bdce127da7e448a333f006defb3d5e38cc/) | ⚠️ Unaudited |
| Router | adapter | avalanche | unit-23526 | [`0xaaa45c...711faa`](./contracts/avalanche-43114/0xaaa45c8f5ef92a000a121d102f4e89278a711faa/) | ⚠️ Unaudited |
| SafeL2 | unknown | avalanche | unit-23529 | [`0xd1b27c...92d843`](./contracts/avalanche-43114/0xd1b27ccaf2a4ddca0ac32181374c70282492d843/) | ⚠️ Unaudited |
| SwapRouter | adapter | avalanche | unit-23513 | [`0x062c62...b1fab8`](./contracts/avalanche-43114/0x062c62ca66e50cfe277a95564fe5bb504db1fab8/) | ⚠️ Unaudited |
| SwapRouter | adapter | avalanche | n/a | 2 deployments: avalanche [`0x9daea9...90acc5`](./contracts/avalanche-43114/0x9daea9462ff3dd535643e07be587517a9790acc5/); avalanche `0xc8b8fc...d3915c` | ⚠️ Unaudited |
| TickLens | periphery | avalanche | n/a | [`0x3a7aeb...94a100`](./contracts/avalanche-43114/0x3a7aeb3c33922073f4f23207d0ff247e9694a100/) | ⚠️ Unaudited |
| TimeLock | governance | avalanche | n/a | [`0x12d54a...c0ddcf`](./contracts/avalanche-43114/0x12d54ad6daf65d55b029df1b34b260c68fc0ddcf/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | unit-23534 | [`0xfe99e9...131aa0`](./contracts/avalanche-43114/0xfe99e92df71f53a26005d1bfbe54c941a3131aa0/) | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | avalanche | n/a | [`0xf296bb...02b855`](./contracts/avalanche-43114/0xf296bb0eaeab6703d876b1bfe9d5693ef302b855/) | ⚠️ Unaudited |
| UniversalRouter | adapter | avalanche | n/a | [`0x5acc35...8ec6c6`](./contracts/avalanche-43114/0x5acc35397d2ce81ac54a4b1c6d9e1fb29f8ec6c6/) | ⚠️ Unaudited |
| VoteModule | unknown | avalanche | n/a | [`0x34f233...6f846b`](./contracts/avalanche-43114/0x34f233f868cdb42446a18562710ee705d66f846b/) | ⚠️ Unaudited |
| Voter | unknown | avalanche | n/a | 5 deployments: avalanche [`0x31a8a3...925d35`](./contracts/avalanche-43114/0x31a8a3f4ca7b74b098d48a47aaa3f03a49925d35/); avalanche `0x677e39...ab35f2`; avalanche `0x9334f3...45af21`; avalanche `0xaf6c9a...af4019`; avalanche `0xe59b0f...12d82a` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | avalanche | unit-23528 | [`0xaaaea1...b9ce6f`](./contracts/avalanche-43114/0xaaaea1fb9f3de3f70e89f37b69ab11b47eb9ce6f/) | ⚠️ Unaudited |
| XPhar | unknown | avalanche | n/a | [`0xe8164e...736b9a`](./contracts/avalanche-43114/0xe8164ea89665dab7a553e667f81f30cfda736b9a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x15913e...2522bd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x428b74...9534ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x469ab2...cbd534` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d9916...968293` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x638dc9...a1dab8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x71775f...55325a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x81dd8a...783d27` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x85448b...58f8c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe0e637...7c9300` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe63f0d...64ec12` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf31632...66d51b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Report](https://cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c) | Spearbit | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [Report](https://diligence.security/audits/2024/08/ramses-v3) | Consensys Diligence | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Report](https://code4rena.com/reports/2024-10-ramses-exchange) | Code4rena | Contest | 2024-10 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 60 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11649] Report
- [11650] Report
- [11651] Report

Fork inheritance lineage and inherited audits are included when available.
