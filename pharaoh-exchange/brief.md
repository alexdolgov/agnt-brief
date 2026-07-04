# Agentic Audit Brief: Pharaoh Exchange

## Project Overview

- Project: Pharaoh Exchange (`pharaoh-exchange`)
- Website: [https://www.phar.gg/](https://www.phar.gg/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:43.096Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: avalanche
- Contract surface: 87 unique implementations (139 raw deployments)
- DeFi Llama TVL: $41,119,721.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 55 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 3 ERC20 tokens, 1 ERC721 NFT; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 8 common project-authored base contract(s) (peripheryvalidation, blocktimestamp, peripherypaymentswithfee). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 154; live-surface contracts included: 134 (104 live, 30 unknown).
- Excluded by liveness: 20 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/55 (12.7%)
- Deployed-live implementations: 59 of 87 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/61
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 26
- Unique implementations: 87
- Raw deployments: 139
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 7 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 12.7% (Code4rena, ConsenSys Diligence)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 6 | 9.8% | 2024-10 |
| Consensys Diligence | Tier 1 | 3 | 4.9% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeCollector | unknown | avalanche | n/a | 3 deployments: avalanche [`0x088e2e...53bb64`](./contracts/avalanche-43114/0x088e2efad10f3262e745c6c01f661112f353bb64/); avalanche `0x1e1e2a...8437bc`; avalanche `0x82a411...185222` | ✅ Audited |
| FeeCollector | unknown | avalanche | n/a | [`0xaaa2a4...e84a2f`](./contracts/avalanche-43114/0xaaa2a49958a443dc9d19fddee873b5d1d6e84a2f/) | ✅ Audited |
| GaugeV3 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x031a97...8cd262`](./contracts/avalanche-43114/0x031a975187111afe6b9dc473cd317b00ed8cd262/); avalanche `0xe56531...07d04e` | ✅ Audited |
| GaugeV3 | operational_periphery | avalanche | n/a | 3 deployments: avalanche [`0x15c50a...24d292`](./contracts/avalanche-43114/0x15c50acd86be6be893ab57cf4f47d0da7e24d292/); avalanche `0x19ff41...d7fcd8`; avalanche `0xdb7361...0da90e` | ✅ Audited |
| RamsesV3Factory | registry | avalanche | n/a | [`0xae6e5c...157d0d`](./contracts/avalanche-43114/0xae6e5c62328ade73ceefd42228528b70c8157d0d/) | ✅ Audited |
| RamsesV3Pool | core_logic | avalanche | n/a | 5 deployments: avalanche [`0x5ca009...3b4af2`](./contracts/avalanche-43114/0x5ca009013f6b898d134b6798b336a4592f3b4af2/); avalanche `0x65b901...8ecbbd`; avalanche `0x9bfe31...c970c0`; avalanche `0xf01449...589534`; avalanche `0xff0855...efbea9` | ✅ Audited |
| RamsesV3PoolDeployer | core_logic | avalanche | n/a | [`0x6a4113...7c66f9`](./contracts/avalanche-43114/0x6a4113ed0915bcf5e48e758e8f4cebffc07c66f9/) | ✅ Audited |

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessHub | unknown | avalanche | n/a | 9 deployments: avalanche [`0x0253d2...fee4f1`](./contracts/avalanche-43114/0x0253d249a5e16269230fa81a58c104f5aafee4f1/); avalanche `0x081125...e2ebbe`; avalanche `0x272cd3...ea4bfb`; avalanche `0x639c4b...fb2c89`; avalanche `0x6c6fc8...a6eeb0`; avalanche `0x88451a...0c91e6`; avalanche `0xa9bf90...8660f0`; avalanche `0xaa589d...5c92ae`; avalanche `0xc2a104...fc9eba` | ⚠️ Unaudited |
| AccessHub | unknown | avalanche | n/a | 2 deployments: avalanche [`0x088703...432779`](./contracts/avalanche-43114/0x088703700f4fa35bf9eabc8cdbcead3678432779/); avalanche `0x29cd88...3afb41` | ⚠️ Unaudited |
| AccessHub | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3c3945...509051`](./contracts/avalanche-43114/0x3c3945a9537ea1536a28bac135eed6cfb1509051/); avalanche `0x65b8ba...352d29` | ⚠️ Unaudited |
| AccessHubDLMMActions | unknown | avalanche | n/a | [`0x1a4203...5d6cfb`](./contracts/avalanche-43114/0x1a4203a52ceed651d30cb038698382a8905d6cfb/) | ⚠️ Unaudited |
| AccessHubPhar | unknown | avalanche | n/a | 4 deployments: avalanche [`0x06e053...118e1b`](./contracts/avalanche-43114/0x06e05378a63a904afe03a6723cd1cbd9ec118e1b/); avalanche `0x282a4f...c096ec`; avalanche `0x3f3af1...3c9e4f`; avalanche `0xe5be02...a17508` | ⚠️ Unaudited |
| AccessHubPhar | unknown | avalanche | n/a | 2 deployments: avalanche [`0x3176f6...4bf483`](./contracts/avalanche-43114/0x3176f6e4be2448c53edd59c27651edfaa74bf483/); avalanche `0x973012...d0dd44` | ⚠️ Unaudited |
| AutomatedFeeNotifier | unknown | avalanche | n/a | 3 deployments: avalanche [`0x649638...0eaf03`](./contracts/avalanche-43114/0x64963852966aa7ff2258434f361ec933bf0eaf03/); avalanche `0x7d51ed...fb37ab`; avalanche `0xbbe734...1ebb32` | ⚠️ Unaudited |
| AutoVault | core_logic | avalanche | n/a | 4 deployments: avalanche [`0x47a2c1...2c8825`](./contracts/avalanche-43114/0x47a2c15eeeef5018a3e13caf987b235d702c8825/); avalanche `0x4bb193...ab5586`; avalanche `0x51d6ab...9b3d4b`; avalanche `0xa44cb7...299aeb` | ⚠️ Unaudited |
| ClPoolFactory | registry | avalanche | n/a | [`0xaaa329...320c42`](./contracts/avalanche-43114/0xaaa32926fce6be95ea2c51cb4fcb60836d320c42/) | ⚠️ Unaudited |
| DLMMFactory | registry | avalanche | n/a | [`0xeb4800...a23d4d`](./contracts/avalanche-43114/0xeb480050b016f6c6d45203d2346b68bddda23d4d/) | ⚠️ Unaudited |
| DLMMFeeCollector | unknown | avalanche | n/a | [`0x684b34...42289c`](./contracts/avalanche-43114/0x684b340014556d15d754b812ef7d1b134b42289c/) | ⚠️ Unaudited |
| DLMMPool | core_logic | avalanche | n/a | [`0xf41253...26d710`](./contracts/avalanche-43114/0xf41253c1258a7a3c291e695158267b173c26d710/) | ⚠️ Unaudited |
| DLMMQuoter | periphery | avalanche | n/a | [`0xddae0a...5fef40`](./contracts/avalanche-43114/0xddae0aa4e93be4936c1bcc12d3001b35c75fef40/) | ⚠️ Unaudited |
| DLMMRewarder | unknown | avalanche | n/a | 3 deployments: avalanche [`0x015f05...a037b3`](./contracts/avalanche-43114/0x015f051b1fe0df7693a9dc348bc48c608aa037b3/); avalanche `0xa2ab12...059513`; avalanche `0xf1996b...120ab7` | ⚠️ Unaudited |
| DLMMRewarder | unknown | avalanche | n/a | 2 deployments: avalanche [`0xc99757...43d783`](./contracts/avalanche-43114/0xc997575204290ff7106ab8b2bcfa7e7dea43d783/); avalanche `0xd28467...88548c` | ⚠️ Unaudited |
| DLMMRouter | adapter | avalanche | n/a | [`0xff2bef...f5d93d`](./contracts/avalanche-43114/0xff2befc4ff86cb0f3e8d3d9d6200b7a05bf5d93d/) | ⚠️ Unaudited |
| FeeDistributorFactory | operational_periphery | avalanche | n/a | [`0x5af7fa...5125ac`](./contracts/avalanche-43114/0x5af7fad6e813fb4637e5cfacc7dde6c5445125ac/) | ⚠️ Unaudited |
| FeeRecipientFactory | operational_periphery | avalanche | n/a | [`0x227fab...4de16f`](./contracts/avalanche-43114/0x227fabb4db11cc082ef8cd083cff5d034d4de16f/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | avalanche | n/a | [`0xd9a63c...5906b1`](./contracts/avalanche-43114/0xd9a63c24f69f015ebe3ff61817645dc7cc5906b1/) | ⚠️ Unaudited |
| MevModule | unknown | avalanche | n/a | 2 deployments: avalanche [`0x21dadc...261a16`](./contracts/avalanche-43114/0x21dadc5df1dcd425f8a1d936b9b037aa75261a16/); avalanche `0x70fd0f...e39f43` | ⚠️ Unaudited |
| MevModule | unknown | avalanche | n/a | [`0xab5598...5309d8`](./contracts/avalanche-43114/0xab559850a251a6ebdba31076019ccf44165309d8/) | ⚠️ Unaudited |
| MevModule | unknown | avalanche | n/a | [`0xe7187f...9975c4`](./contracts/avalanche-43114/0xe7187f0d21e1039e8fd8346aa4f9a7c9f99975c4/) | ⚠️ Unaudited |
| Minter | operational_periphery | avalanche | n/a | [`0xd23f12...222fde`](./contracts/avalanche-43114/0xd23f124bbbc958bcddc0ce624042b48154222fde/) | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | avalanche | n/a | [`0x3265d6...99a8a0`](./contracts/avalanche-43114/0x3265d621c7d993151c8eb2acd4902cda0499a8a0/) | ⚠️ Unaudited |
| MockPoolDeployer | core_logic | avalanche | n/a | [`0x491280...4f3e96`](./contracts/avalanche-43114/0x49128053ae71470a6670895bb932ce19384f3e96/) | ⚠️ Unaudited |
| NonfungiblePositionManagerB | governance | avalanche | n/a | [`0xaaa78e...45946a`](./contracts/avalanche-43114/0xaaa78e8c4241990b4ce159e105da08129345946a/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | avalanche | n/a | [`0x6f17db...60a89a`](./contracts/avalanche-43114/0x6f17db548544a19162e82b20c67abee99960a89a/) | ⚠️ Unaudited |
| P33 | unknown | avalanche | n/a | 4 deployments: avalanche [`0x26e9db...926ca9`](./contracts/avalanche-43114/0x26e9dbe75aed331e41272bece932ff1b48926ca9/); avalanche `0x640d2e...8867e6`; avalanche `0xcda419...22ca80`; avalanche `0xd8ee2b...4d4bd8` | ⚠️ Unaudited |
| PairFactory | registry | avalanche | n/a | [`0xaaa16c...b1ab57`](./contracts/avalanche-43114/0xaaa16c016bf556fcd620328f0759252e29b1ab57/) | ⚠️ Unaudited |
| Pharaoh | unknown | avalanche | n/a | [`0x13a466...1f28e7`](./contracts/avalanche-43114/0x13a466998ce03db73abc2d4df3bbd845ed1f28e7/) | ⚠️ Unaudited |
| PharaohMigrator | unknown | avalanche | n/a | 2 deployments: avalanche [`0x1a624b...c66297`](./contracts/avalanche-43114/0x1a624ba3f3928b38990d9cc862ae5fb54ac66297/); avalanche `0x2ca45d...3eac06` | ⚠️ Unaudited |
| ProxyAdmin | governance | avalanche | n/a | [`0x3b9197...2b7ee6`](./contracts/avalanche-43114/0x3b91972c1ff63296cb824a30997c7e4a982b7ee6/) | ⚠️ Unaudited |
| Pulse | unknown | avalanche | n/a | 2 deployments: avalanche [`0xb98c60...006150`](./contracts/avalanche-43114/0xb98c602d04ba75ccf2337c39156880f757006150/); avalanche `0xfc508b...864c46` | ⚠️ Unaudited |
| Quoter | periphery | avalanche | n/a | [`0xadae75...456465`](./contracts/avalanche-43114/0xadae75447d112cfc401c952744de3e6d32456465/) | ⚠️ Unaudited |
| QuoterV2 | periphery | avalanche | n/a | [`0xb72973...ea2138`](./contracts/avalanche-43114/0xb7297301b7cc659bb96d51754643a0df6eea2138/) | ⚠️ Unaudited |
| RamsesTreasuryHelper | operational_periphery | avalanche | n/a | 8 deployments: avalanche [`0x00409b...3a4eea`](./contracts/avalanche-43114/0x00409b267f4573f601cbcdf3b9f0b27a263a4eea/); avalanche `0x906b98...81dfdb`; avalanche `0x9e89a0...727e01`; avalanche `0xa47aa2...466de0`; avalanche `0xaf9440...d4c011`; avalanche `0xd57ec4...d057e6`; avalanche `0xec8962...5fdc81`; avalanche `0xf2593b...5984b1` | ⚠️ Unaudited |
| RamsesTreasuryHelper | unknown | avalanche | n/a | 2 deployments: avalanche [`0x660862...e97882`](./contracts/avalanche-43114/0x660862d49e92f80f29e56c2770027e8d83e97882/); avalanche `0xf03ce4...90a1f4` | ⚠️ Unaudited |
| RamsesV3PositionManager | governance | avalanche | n/a | [`0x0b4478...ab4f39`](./contracts/avalanche-43114/0x0b4478e810d48b5882d4019d435a2f864bab4f39/) | ⚠️ Unaudited |
| Router | adapter | avalanche | n/a | [`0x9cee04...5e38cc`](./contracts/avalanche-43114/0x9cee04bdce127da7e448a333f006defb3d5e38cc/) | ⚠️ Unaudited |
| Router | adapter | avalanche | n/a | [`0xaaa45c...711faa`](./contracts/avalanche-43114/0xaaa45c8f5ef92a000a121d102f4e89278a711faa/) | ⚠️ Unaudited |
| SafeL2 | unknown | avalanche | n/a | [`0xd1b27c...92d843`](./contracts/avalanche-43114/0xd1b27ccaf2a4ddca0ac32181374c70282492d843/) | ⚠️ Unaudited |
| SwapRouter | adapter | avalanche | n/a | [`0x062c62...b1fab8`](./contracts/avalanche-43114/0x062c62ca66e50cfe277a95564fe5bb504db1fab8/) | ⚠️ Unaudited |
| SwapRouter | adapter | avalanche | n/a | 2 deployments: avalanche [`0x9daea9...90acc5`](./contracts/avalanche-43114/0x9daea9462ff3dd535643e07be587517a9790acc5/); avalanche `0xc8b8fc...d3915c` | ⚠️ Unaudited |
| TickLens | periphery | avalanche | n/a | [`0x3a7aeb...94a100`](./contracts/avalanche-43114/0x3a7aeb3c33922073f4f23207d0ff247e9694a100/) | ⚠️ Unaudited |
| TimeLock | governance | avalanche | n/a | [`0x12d54a...c0ddcf`](./contracts/avalanche-43114/0x12d54ad6daf65d55b029df1b34b260c68fc0ddcf/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x065028...349aef`](./contracts/avalanche-43114/0x065028dcf219d8622dd50231f188f2b315349aef/); avalanche `0x1a6ed8...d89d6f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | n/a | [`0xfe99e9...131aa0`](./contracts/avalanche-43114/0xfe99e92df71f53a26005d1bfbe54c941a3131aa0/) | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | avalanche | n/a | [`0xf296bb...02b855`](./contracts/avalanche-43114/0xf296bb0eaeab6703d876b1bfe9d5693ef302b855/) | ⚠️ Unaudited |
| UniversalRouter | adapter | avalanche | n/a | [`0x5acc35...8ec6c6`](./contracts/avalanche-43114/0x5acc35397d2ce81ac54a4b1c6d9e1fb29f8ec6c6/) | ⚠️ Unaudited |
| VoteModule | unknown | avalanche | n/a | [`0x34f233...6f846b`](./contracts/avalanche-43114/0x34f233f868cdb42446a18562710ee705d66f846b/) | ⚠️ Unaudited |
| Voter | unknown | avalanche | n/a | 5 deployments: avalanche [`0x31a8a3...925d35`](./contracts/avalanche-43114/0x31a8a3f4ca7b74b098d48a47aaa3f03a49925d35/); avalanche `0x677e39...ab35f2`; avalanche `0x9334f3...45af21`; avalanche `0xaf6c9a...af4019`; avalanche `0xe59b0f...12d82a` | ⚠️ Unaudited |
| Voter | unknown | avalanche | n/a | 2 deployments: avalanche [`0x5363e3...8f0f7b`](./contracts/avalanche-43114/0x5363e33b444ccfd438204266d025a26c048f0f7b/); avalanche `0x922b9c...8a2aa7` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | avalanche | n/a | [`0xaaaea1...b9ce6f`](./contracts/avalanche-43114/0xaaaea1fb9f3de3f70e89f37b69ab11b47eb9ce6f/) | ⚠️ Unaudited |
| XPhar | unknown | avalanche | n/a | [`0xe8164e...736b9a`](./contracts/avalanche-43114/0xe8164ea89665dab7a553e667f81f30cfda736b9a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (26)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x01ed92...5ae9ac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x04c57e...9ba6ac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0788f4...cb9924` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x15913e...2522bd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2a1e57...37f6dd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x342130...1c7ad6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3a1bd9...bfb481` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x428b74...9534ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x469ab2...cbd534` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5629b1...84b6e3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d9916...968293` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x638dc9...a1dab8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6b1996...c400c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x71775f...55325a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x81dd8a...783d27` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x85448b...58f8c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x89bd68...5e43da` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xad8948...7d6318` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb78490...2a5024` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbeebb3...03ef61` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd3865e...0974fa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe0e637...7c9300` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe30ec7...267a1a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe3e118...329608` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe63f0d...64ec12` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf31632...66d51b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c](https://cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c) | Spearbit | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [diligence.security/audits/2024/08/ramses-v3](https://diligence.security/audits/2024/08/ramses-v3) | Consensys Diligence | Audit | 2024-08 | aging | Direct | contract_name | 7 | high |
| [code4rena.com/reports/2024-10-ramses-exchange](https://code4rena.com/reports/2024-10-ramses-exchange) | Code4rena | Contest | 2024-10 | aging | Direct | contract_name | 15 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x0253d2...fee4f1`](./contracts/avalanche-43114/0x0253d249a5e16269230fa81a58c104f5aafee4f1/) | AccessHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x088703...432779`](./contracts/avalanche-43114/0x088703700f4fa35bf9eabc8cdbcead3678432779/) | AccessHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3c3945...509051`](./contracts/avalanche-43114/0x3c3945a9537ea1536a28bac135eed6cfb1509051/) | AccessHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1a4203...5d6cfb`](./contracts/avalanche-43114/0x1a4203a52ceed651d30cb038698382a8905d6cfb/) | AccessHubDLMMActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x06e053...118e1b`](./contracts/avalanche-43114/0x06e05378a63a904afe03a6723cd1cbd9ec118e1b/) | AccessHubPhar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3176f6...4bf483`](./contracts/avalanche-43114/0x3176f6e4be2448c53edd59c27651edfaa74bf483/) | AccessHubPhar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x649638...0eaf03`](./contracts/avalanche-43114/0x64963852966aa7ff2258434f361ec933bf0eaf03/) | AutomatedFeeNotifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x47a2c1...2c8825`](./contracts/avalanche-43114/0x47a2c15eeeef5018a3e13caf987b235d702c8825/) | AutoVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaaa329...320c42`](./contracts/avalanche-43114/0xaaa32926fce6be95ea2c51cb4fcb60836d320c42/) | ClPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xeb4800...a23d4d`](./contracts/avalanche-43114/0xeb480050b016f6c6d45203d2346b68bddda23d4d/) | DLMMFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x684b34...42289c`](./contracts/avalanche-43114/0x684b340014556d15d754b812ef7d1b134b42289c/) | DLMMFeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf41253...26d710`](./contracts/avalanche-43114/0xf41253c1258a7a3c291e695158267b173c26d710/) | DLMMPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xddae0a...5fef40`](./contracts/avalanche-43114/0xddae0aa4e93be4936c1bcc12d3001b35c75fef40/) | DLMMQuoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x015f05...a037b3`](./contracts/avalanche-43114/0x015f051b1fe0df7693a9dc348bc48c608aa037b3/) | DLMMRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc99757...43d783`](./contracts/avalanche-43114/0xc997575204290ff7106ab8b2bcfa7e7dea43d783/) | DLMMRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xff2bef...f5d93d`](./contracts/avalanche-43114/0xff2befc4ff86cb0f3e8d3d9d6200b7a05bf5d93d/) | DLMMRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5af7fa...5125ac`](./contracts/avalanche-43114/0x5af7fad6e813fb4637e5cfacc7dde6c5445125ac/) | FeeDistributorFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x227fab...4de16f`](./contracts/avalanche-43114/0x227fabb4db11cc082ef8cd083cff5d034d4de16f/) | FeeRecipientFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd9a63c...5906b1`](./contracts/avalanche-43114/0xd9a63c24f69f015ebe3ff61817645dc7cc5906b1/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x21dadc...261a16`](./contracts/avalanche-43114/0x21dadc5df1dcd425f8a1d936b9b037aa75261a16/) | MevModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xab5598...5309d8`](./contracts/avalanche-43114/0xab559850a251a6ebdba31076019ccf44165309d8/) | MevModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe7187f...9975c4`](./contracts/avalanche-43114/0xe7187f0d21e1039e8fd8346aa4f9a7c9f99975c4/) | MevModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd23f12...222fde`](./contracts/avalanche-43114/0xd23f124bbbc958bcddc0ce624042b48154222fde/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3265d6...99a8a0`](./contracts/avalanche-43114/0x3265d621c7d993151c8eb2acd4902cda0499a8a0/) | MixedRouteQuoterV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x491280...4f3e96`](./contracts/avalanche-43114/0x49128053ae71470a6670895bb932ce19384f3e96/) | MockPoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaaa78e...45946a`](./contracts/avalanche-43114/0xaaa78e8c4241990b4ce159e105da08129345946a/) | NonfungiblePositionManagerB | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6f17db...60a89a`](./contracts/avalanche-43114/0x6f17db548544a19162e82b20c67abee99960a89a/) | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x26e9db...926ca9`](./contracts/avalanche-43114/0x26e9dbe75aed331e41272bece932ff1b48926ca9/) | P33 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaaa16c...b1ab57`](./contracts/avalanche-43114/0xaaa16c016bf556fcd620328f0759252e29b1ab57/) | PairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x13a466...1f28e7`](./contracts/avalanche-43114/0x13a466998ce03db73abc2d4df3bbd845ed1f28e7/) | Pharaoh | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1a624b...c66297`](./contracts/avalanche-43114/0x1a624ba3f3928b38990d9cc862ae5fb54ac66297/) | PharaohMigrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb98c60...006150`](./contracts/avalanche-43114/0xb98c602d04ba75ccf2337c39156880f757006150/) | Pulse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xadae75...456465`](./contracts/avalanche-43114/0xadae75447d112cfc401c952744de3e6d32456465/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xb72973...ea2138`](./contracts/avalanche-43114/0xb7297301b7cc659bb96d51754643a0df6eea2138/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x00409b...3a4eea`](./contracts/avalanche-43114/0x00409b267f4573f601cbcdf3b9f0b27a263a4eea/) | RamsesTreasuryHelper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x660862...e97882`](./contracts/avalanche-43114/0x660862d49e92f80f29e56c2770027e8d83e97882/) | RamsesTreasuryHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0b4478...ab4f39`](./contracts/avalanche-43114/0x0b4478e810d48b5882d4019d435a2f864bab4f39/) | RamsesV3PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9cee04...5e38cc`](./contracts/avalanche-43114/0x9cee04bdce127da7e448a333f006defb3d5e38cc/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaaa45c...711faa`](./contracts/avalanche-43114/0xaaa45c8f5ef92a000a121d102f4e89278a711faa/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x062c62...b1fab8`](./contracts/avalanche-43114/0x062c62ca66e50cfe277a95564fe5bb504db1fab8/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9daea9...90acc5`](./contracts/avalanche-43114/0x9daea9462ff3dd535643e07be587517a9790acc5/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3a7aeb...94a100`](./contracts/avalanche-43114/0x3a7aeb3c33922073f4f23207d0ff247e9694a100/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x12d54a...c0ddcf`](./contracts/avalanche-43114/0x12d54ad6daf65d55b029df1b34b260c68fc0ddcf/) | TimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5acc35...8ec6c6`](./contracts/avalanche-43114/0x5acc35397d2ce81ac54a4b1c6d9e1fb29f8ec6c6/) | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x34f233...6f846b`](./contracts/avalanche-43114/0x34f233f868cdb42446a18562710ee705d66f846b/) | VoteModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x31a8a3...925d35`](./contracts/avalanche-43114/0x31a8a3f4ca7b74b098d48a47aaa3f03a49925d35/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5363e3...8f0f7b`](./contracts/avalanche-43114/0x5363e33b444ccfd438204266d025a26c048f0f7b/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaaaea1...b9ce6f`](./contracts/avalanche-43114/0xaaaea1fb9f3de3f70e89f37b69ab11b47eb9ce6f/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe8164e...736b9a`](./contracts/avalanche-43114/0xe8164ea89665dab7a553e667f81f30cfda736b9a/) | XPhar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 56 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 26 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=22

Zero-match audit list:

- [11649] cantina.xyz/portfolio/98695d75-ee7d-4e1c-aa96-6379f73c5b2c

Fork inheritance lineage and inherited audits are included when available.
