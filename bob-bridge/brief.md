# Agentic Audit Brief: BOB Bridge

⚠️ Lifecycle status: DECLINING - TVL dropped 18.4% over 90 days

## Project Overview

- Project: BOB Bridge (`bob-bridge`)
- Website: [https://www.gobob.xyz](https://www.gobob.xyz)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-24T03:23:02.894Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 53 unique implementations (225 raw deployments)
- DeFi Llama TVL: $3,606,165.44
- On-chain TVL (included contracts): $202,895.03
- TVL by chain: Ethereum $202,895.03

## Project Description

BOB Bridge is a cross-chain bridge enabling asset transfers between Ethereum and the BOB L2 network. It uses the OP Stack for optimistic rollup bridging, supporting ERC-20 tokens, USDC, and NFTs, with a dispute game mechanism for security.

### Architecture

The BOB Bridge family relies on the Ethereum (L1) family's OP Stack contracts for cross-chain messaging and asset custody. The L1StandardBridge and OptimismPortal2 are shared between the generic L1 infrastructure and the BOB-specific bridge components, while the L2 network uses the L1 dispute and messaging contracts for security.

## Audit Coverage Summary

- Verified implementations audited: 1/49 (2.0%)
- Verified + Unaudited implementations: 48
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 53
- Raw deployments: 225
- Audits discovered: 18
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $202,895.03
- Latest audit: 2025-10 (fresh)
- Staleness: 3 fresh, 11 aging, 3 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $202,895.03 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 1 | 2.0% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| L1UsdcBridge | bridge_template | ethereum | [`0x450d55...4facbb`](./contracts/ethereum-1/0x450d55a4b4136805b0e5a6bb59377c71fc4facbb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (48)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SideToken | token | ethereum | 2 deployments: ethereum [`0xbdab72...b8f7a5`](./contracts/ethereum-1/0xbdab72602e9ad40fc6a6852caf43258113b8f7a5/); ethereum `0xbdbb63...323dd1` | ⚠️ Unaudited |
| AddressManager | governance | ethereum | [`0xf2dc77...3dfdc7`](./contracts/ethereum-1/0xf2dc77c697e892542cc53336178a78bb313dfdc7/) | ⚠️ Unaudited |
| AnchorStateRegistry | registry | ethereum | 3 deployments: ethereum [`0x7b4653...d3f8d2`](./contracts/ethereum-1/0x7b465370bb7a333f99edd19599eb7fb1c2d3f8d2/); ethereum `0xd0216b...535431`; ethereum `0xeba14d...e43fef` | ⚠️ Unaudited |
| BridgeEndpoint | operational_periphery | ethereum | 6 deployments: ethereum [`0x1279cd...96a3a4`](./contracts/ethereum-1/0x1279cd478838875f4ced1c25a0db99037996a3a4/); ethereum `0x1ee901...ea2aea`; ethereum `0x3439e4...283625`; ethereum `0x626812...869add`; ethereum `0xb39553...52b13b`; ethereum `0xcbce91...f21ad3` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | ethereum | 3 deployments: ethereum [`0x86760e...72126a`](./contracts/ethereum-1/0x86760eb2b9947b70ce613491cf7a216c2872126a/); ethereum `0x9fabf9...326fba`; ethereum `0xe7c375...7e0923` | ⚠️ Unaudited |
| DaoModule | unknown | ethereum | [`0x3de7a4...8a398a`](./contracts/ethereum-1/0x3de7a43ec8716126c819c6e4020c9f0a9b8a398a/) | ⚠️ Unaudited |
| DelayedWETH | token | ethereum | 2 deployments: ethereum [`0x3a1d54...ea3c13`](./contracts/ethereum-1/0x3a1d54496cf461ffc96d3b1a8a0b43b091ea3c13/); ethereum `0x5e40b9...ed3d9e` | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | 2 deployments: ethereum [`0x4bba75...74e4a0`](./contracts/ethereum-1/0x4bba758f006ef09402ef31724203f316ab74e4a0/); ethereum `0x96123d...9b1079` | ⚠️ Unaudited |
| DVFInterface2 | unknown | ethereum | 5 deployments: ethereum [`0xbc6197...b684d5`](./contracts/ethereum-1/0xbc619735fdf48bba5e2bb403e42a5d457db684d5/); ethereum `0xd80a88...fe2642`; ethereum `0xe522b3...b6ce94`; ethereum `0xec1fa5...fe24cc`; ethereum `0xed9d63...f21646` | ⚠️ Unaudited |
| DVFInterface3 | unknown | ethereum | [`0xa297ec...319212`](./contracts/ethereum-1/0xa297ec52ac188f98a5b293bca3ff405643319212/) | ⚠️ Unaudited |
| DVFInterface4 | unknown | ethereum | [`0x7de1f0...645a15`](./contracts/ethereum-1/0x7de1f04204ef29229d84e7c0c2d1216c28645a15/) | ⚠️ Unaudited |
| FusionLock | unknown | ethereum | [`0x61dc14...ce6ff7`](./contracts/ethereum-1/0x61dc14b28d4dbcd6cf887e9b72018b9da1ce6ff7/) | ⚠️ Unaudited |
| KailuaGame | unknown | ethereum | 4 deployments: ethereum [`0x4be239...a492ef`](./contracts/ethereum-1/0x4be239c86364ed73fc244a5f50c8ccb101a492ef/); ethereum `0xd37b0b...9e742b`; ethereum `0xe34577...9ca82a`; ethereum `0xe43415...7a053b` | ⚠️ Unaudited |
| KailuaTreasury | operational_periphery | ethereum | 3 deployments: ethereum [`0x993703...02ae53`](./contracts/ethereum-1/0x9937033cc967eed9d753e31c77d2f146d002ae53/); ethereum `0x9b3e16...e9263c`; ethereum `0xe99af5...5fb895` | ⚠️ Unaudited |
| KailuaVerifier | periphery | ethereum | 2 deployments: ethereum [`0xa23bf3...05b97d`](./contracts/ethereum-1/0xa23bf38299bbcbaa01b9ea8a1d3412d9f405b97d/); ethereum `0xf59da2...bfab4e` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | 3 deployments: ethereum [`0x237853...158c12`](./contracts/ethereum-1/0x237853621998a33fa5b9b820592f4c6f4c158c12/); ethereum `0x5d5a09...033e8b`; ethereum `0xe3d981...547eda` | ⚠️ Unaudited |
| L1ERC20TokenBridge | operational_periphery | ethereum | 2 deployments: ethereum [`0x091df5...b95b72`](./contracts/ethereum-1/0x091df5e1284e49fa682407096ad34cfd42b95b72/); ethereum `0xb53144...8c7777` | ⚠️ Unaudited |
| L1ERC721Bridge | operational_periphery | ethereum | 3 deployments: ethereum [`0x5ff932...20d50a`](./contracts/ethereum-1/0x5ff93263d5181b2a826f8c51d54bc0da2d20d50a/); ethereum `0x7ae1d3...c98013`; ethereum `0xa67fc0...734212` | ⚠️ Unaudited |
| L1StandardBridge | operational_periphery | ethereum | 3 deployments: ethereum [`0x0b09ba...7d2a7a`](./contracts/ethereum-1/0x0b09ba359a106c9ea3b181cbc5f394570c7d2a7a/); ethereum `0x3f6ce1...4ac1f7`; ethereum `0xeeafa1...3a8d31` | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x59191b...229822`](./contracts/ethereum-1/0x59191bd38eba4a642c9fec308dc188731b229822/); ethereum `0xdda53e...db11c1` | ⚠️ Unaudited |
| LockDrop | unknown | ethereum | [`0x164a68...fce9eb`](./contracts/ethereum-1/0x164a68521386049e23bee8fa879a4e031ffce9eb/) | ⚠️ Unaudited |
| MIPS64 | unknown | ethereum | 2 deployments: ethereum [`0x17c64e...7195f7`](./contracts/ethereum-1/0x17c64e93846935dfbd281a5540a14d4cd67195f7/); ethereum `0xf027f4...d15dc1` | ⚠️ Unaudited |
| Multicall3 | periphery | ethereum | [`0xca11bd...76ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| NectarController | governance | ethereum | [`0x1fae7b...b851b7`](./contracts/ethereum-1/0x1fae7beed65b3d98ad8f1d5276387b20c6b851b7/) | ⚠️ Unaudited |
| OPContractsManager | governance | ethereum | [`0xdfe652...96ee3c`](./contracts/ethereum-1/0xdfe652fb94eb26c0f343d1c0273bfee78596ee3c/) | ⚠️ Unaudited |
| OPSuccinctDisputeGame | unknown | ethereum | [`0x2c2da5...2fea6d`](./contracts/ethereum-1/0x2c2da5effabda3a9ffe8e3d526c5b1f3b42fea6d/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | 3 deployments: ethereum [`0x0640c9...5fbd76`](./contracts/ethereum-1/0x0640c9377a4fac00225097eacbb0295f4d5fbd76/); ethereum `0x5493f4...63988f`; ethereum `0x555740...b09cb6` | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | [`0x994e3b...959fec`](./contracts/ethereum-1/0x994e3b01d130944a3e67bfd3b8fc73069b959fec/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | 4 deployments: ethereum [`0x3c8776...c43287`](./contracts/ethereum-1/0x3c877699263119022cdaa251058c1bac8fc43287/); ethereum `0x5b172b...415514`; ethereum `0x8adee1...e65a3e`; ethereum `0xb443da...0d6fb4` | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | ethereum | 16 deployments: ethereum [`0x0605f3...8cb27c`](./contracts/ethereum-1/0x0605f3bf6de982f4b7e24b150a54c694f88cb27c/); ethereum `0x07e50a...1ab70b`; ethereum `0x1ffc35...e996a5`; ethereum `0x2dd081...6f15b2`; ethereum `0x33f9c5...a710a3`; ethereum `0x469593...e05dad`; ethereum `0x6753df...2f6776`; ethereum `0x6a3868...21b05e`; ethereum `0x703db8...4914ca`; ethereum `0x7342e0...3ec237`; ethereum `0x7fe001...7d87db`; ethereum `0x82e562...26c8e1`; ethereum `0xa5d58a...e39084`; ethereum `0xbcee72...16fb8b`; ethereum `0xc7bef1...8bc630`; ethereum `0xe3bd00...38702a` | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x1fb8cd...87add3`](./contracts/ethereum-1/0x1fb8cdfc6831fc866ed9c51af8817da5c287add3/); ethereum `0xee74fd...79fa7a` | ⚠️ Unaudited |
| ProtocolVersions | unknown | ethereum | 3 deployments: ethereum [`0x0dd8ed...bd97d2`](./contracts/ethereum-1/0x0dd8ed2f044fde13be5d28d51b29e87e22bd97d2/); ethereum `0x37e15e...3cb76c`; ethereum `0x87692b...b3eff2` | ⚠️ Unaudited |
| Proxy | proxy | ethereum | 2 deployments: ethereum [`0x11c03c...5f8acf`](./contracts/ethereum-1/0x11c03c11ba32fede01fb870ed35ecb0f3d5f8acf/); ethereum `0xb9d8f5...17aad4` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 8 deployments: ethereum [`0x0d9f41...957cd0`](./contracts/ethereum-1/0x0d9f416260598313be6fdf6b010f2fbc34957cd0/); ethereum `0x43ca78...89d12f`; ethereum `0x856fcc...fb873e`; ethereum `0x87e65e...aed7ec`; ethereum `0x963c3c...a8eaa0`; ethereum `0xa70ddf...703e1c`; ethereum `0xb4899f...fad0b5`; ethereum `0xba4eee...133a7e` | ⚠️ Unaudited |
| RevokableVester | operational_periphery | ethereum | 20 deployments: ethereum [`0x0b31b2...1f61e5`](./contracts/ethereum-1/0x0b31b28103754a272d7905240301ec7b2a1f61e5/); ethereum `0x17c3ad...52baef`; ethereum `0x392113...cbbf17`; ethereum `0x46ab89...d42c00`; ethereum `0x48e0d5...22baa6`; ethereum `0x4ca751...02b506`; ethereum `0x4d05fa...903d84`; ethereum `0x540df7...1cc737`; ethereum `0x542ba6...25bcbe`; ethereum `0x735162...9a2552`; ethereum `0x771366...6ea387`; ethereum `0x9a45dc...dfa838`; ethereum `0xaaa46f...1d1e07`; ethereum `0xabe2ac...4ed887`; ethereum `0xb05ad4...523179`; ethereum `0xb9a5d8...848e96`; ethereum `0xb9fe6b...88a676`; ethereum `0xdf79be...bf80a3`; ethereum `0xf1f61f...6107d9`; ethereum `0xf55809...8ad347` | ⚠️ Unaudited |
| RiscZeroGroth16Verifier | periphery | ethereum | 3 deployments: ethereum [`0x5a9946...fd965e`](./contracts/ethereum-1/0x5a99469f18a5863d3258e577892589386dfd965e/); ethereum `0x94a468...43c622`; ethereum `0xf70aba...7de93c` | ⚠️ Unaudited |
| RiscZeroVerifierEmergencyStop | periphery | ethereum | 3 deployments: ethereum [`0x08aed6...056e87`](./contracts/ethereum-1/0x08aed6c108e500540a9544bef7a8b8a05e056e87/); ethereum `0x44c220...ea33e7`; ethereum `0xb839ea...3d74f7` | ⚠️ Unaudited |
| RiscZeroVerifierRouter | adapter | ethereum | [`0x8eab2d...93d319`](./contracts/ethereum-1/0x8eab2d97dfce405a1692a21b3ff3a172d593d319/) | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | 4 deployments: ethereum [`0x097f99...9d53cc`](./contracts/ethereum-1/0x097f99768a0a4a0a81babbcb1ea18193ba9d53cc/); ethereum `0x4da82a...7458e7`; ethereum `0x554ffc...c5e667`; ethereum `0xe92520...965c46` | ⚠️ Unaudited |
| SupporterVester | operational_periphery | ethereum | 53 deployments: ethereum [`0x0302f7...7b63b2`](./contracts/ethereum-1/0x0302f75047aa0935052275e77d15c40bee7b63b2/); ethereum `0x09de35...cfa232`; ethereum `0x140dca...1a1c49`; ethereum `0x153db9...747cb2`; ethereum `0x174da6...ea128b`; ethereum `0x1f3473...1082ed`; ethereum `0x216cef...c7a1e1`; ethereum `0x21ea8b...b4621d`; ethereum `0x273e9a...25d087`; ethereum `0x2f76a1...f29f49`; ethereum `0x333c5c...77bf92`; ethereum `0x4e1adf...1abe02`; ethereum `0x4f1130...8fd0ba`; ethereum `0x59fbb8...e5e7cd`; ethereum `0x5a6d53...f2fbd9`; ethereum `0x5adc09...10ac42`; ethereum `0x5c6a76...d488cf`; ethereum `0x5d1504...07b4b0`; ethereum `0x5e0f9b...5a3e32`; ethereum `0x6a9a90...1f06a6`; ethereum `0x6cba14...a3d956`; ethereum `0x6d9fa9...6d2f32`; ethereum `0x6ed13b...4c584c`; ethereum `0x773b66...ea7744`; ethereum `0x7a06b2...c8cede`; ethereum `0x839fd7...e33d66`; ethereum `0x8aa593...c49a56`; ethereum `0x93a70c...429cf2`; ethereum `0x997793...ecb31f`; ethereum `0x9b1ab2...ecd0c0`; ethereum `0x9cc127...8ec3b0`; ethereum `0x9dda29...245c16`; ethereum `0x9f99e8...3e0c66`; ethereum `0xa7675e...d297bb`; ethereum `0xa8e1b7...d5e9da`; ethereum `0xad8a04...920aa2`; ethereum `0xbe48fb...490164`; ethereum `0xc2391b...4f075c`; ethereum `0xc6441c...73d157`; ethereum `0xcc3eb6...8c30ab`; ethereum `0xcfffbd...a463ab`; ethereum `0xd6acca...7c773f`; ethereum `0xe05685...413ab8`; ethereum `0xe711a0...a75d95`; ethereum `0xe7ef4a...aa6423`; ethereum `0xef0d12...a338d3`; ethereum `0xef98e4...4c587b`; ethereum `0xf12de0...68312e`; ethereum `0xf1b866...6a2b6f`; ethereum `0xf2748c...03c0e0`; ethereum `0xf42326...1e4f22`; ethereum `0xfa1807...498ed7`; ethereum `0xfc19ce...b4cd09` | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | 3 deployments: ethereum [`0x340f92...ffe647`](./contracts/ethereum-1/0x340f923e5c7cbb2171146f64169ec9d5a9ffe647/); ethereum `0xaa0a1e...55b590`; ethereum `0xacb886...1c5393` | ⚠️ Unaudited |
| TetherToken | token | ethereum | 7 deployments: ethereum [`0x354f86...d9ba87`](./contracts/ethereum-1/0x354f861227fc9b7abf55389e0038163047d9ba87/); ethereum `0x4c0d2c...f9e566`; ethereum `0x687496...782f38`; ethereum `0x93d070...fc25e3`; ethereum `0xd131ef...3b36b4`; ethereum `0xd17c11...b91c5e`; ethereum `0xdf601d...f8d1d5` | ⚠️ Unaudited |
| TetherTokenEURTV2 | token | ethereum | [`0xde706e...bd5c7d`](./contracts/ethereum-1/0xde706e90f07ffa15b1783379edab3c21fbbd5c7d/) | ⚠️ Unaudited |
| TimeLock | governance | ethereum | 2 deployments: ethereum [`0x137d16...414218`](./contracts/ethereum-1/0x137d16eba3a679e0f0bae63f0fd05fb061414218/); ethereum `0x1752b4...3e16f7` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | 2 deployments: ethereum [`0x0b144e...6fb711`](./contracts/ethereum-1/0x0b144e07a0826182b6b59788c34b32bfa86fb711/); ethereum `0xdc986a...501d15` | ⚠️ Unaudited |
| TokenVesting | operational_periphery | ethereum | 23 deployments: ethereum [`0x05e364...4c9a27`](./contracts/ethereum-1/0x05e36403584e1f3f004dc516b5375a1e884c9a27/); ethereum `0x0d3cc7...5fea9c`; ethereum `0x137b7b...51700b`; ethereum `0x14c219...5ce481`; ethereum `0x1590d9...4b3c09`; ethereum `0x1f8a9d...ae5c39`; ethereum `0x29706d...3c330b`; ethereum `0x3280b4...36a006`; ethereum `0x337923...1a0075`; ethereum `0x5bdc9b...19cdc1`; ethereum `0x61abc1...7dba37`; ethereum `0x6abb43...66ae0b`; ethereum `0x76dc64...4b8fc9`; ethereum `0x79b2aa...330896`; ethereum `0x94dc11...ce921a`; ethereum `0xa4f32c...6ed11c`; ethereum `0xb28cde...3ff2f8`; ethereum `0xb4da3d...9448c7`; ethereum `0xd3518f...43b578`; ethereum `0xdc5c30...9347e8`; ethereum `0xdf9b32...efcf43`; ethereum `0xe6f3fd...9bab87`; ethereum `0xfd48c0...659751` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | [`0xfd9f79...36748f`](./contracts/ethereum-1/0xfd9f795b4c15183bdba83da08da02d5f9536748f/) | ⚠️ Unaudited |
| TreasuryVester | operational_periphery | ethereum | [`0x65d57b...4c0ce9`](./contracts/ethereum-1/0x65d57b1e6570f5c636b8dd64c186ac304a4c0ce9/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x96c4bf...00159b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb5d1f1...4ec491` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd67456...7ca005` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xde7f57...071e5e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://cdn.prod.website-files.com/6620e8932695794632789d89/675872861db67a29ec01d237_BOB%20Foundation%20-%20Privacy%20Policy.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [/URI ()>>](https://github.com/pashov/audits) | Pashov Audit Group | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf](https://docs.gobob.xyz/assets/files/BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [BOB-Onramp-security-review.md](https://github.com/pashov/audits/blob/master/team/md/BOB-Onramp-security-review.md) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [BOB-Staking-security-review_2025-10-18.md](https://github.com/pashov/audits/blob/master/team/md/BOB-Staking-security-review_2025-10-18.md) | Pashov Audit Group | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [BOB-USDCBridge-security-review.md](https://github.com/pashov/audits/blob/master/team/md/BOB-USDCBridge-security-review.md) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | contract_name | 1 | high |
| [BOB-security-review-August.md](https://github.com/pashov/audits/blob/master/team/md/BOB-security-review-August.md) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [BOB-security-review-June.md](https://github.com/pashov/audits/blob/master/team/md/BOB-security-review-June.md) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [BOB-security-review-September.md](https://github.com/pashov/audits/blob/master/team/md/BOB-security-review-September.md) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [BOB-security-review_2025-03-17.md](https://github.com/pashov/audits/blob/master/team/md/BOB-security-review_2025-03-17.md) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [BOB-Onramp-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-Onramp-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [BOB-Staking-security-review_2025-10-18.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-Staking-security-review_2025-10-18.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [BOB-USDCBridge-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-USDCBridge-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [BOB-security-review-August.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-August.pdf) | Pashov Audit Group | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [BOB-security-review-June.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-June.pdf) | Pashov Audit Group | Audit | 2024-06 | aging | Direct | n/a | 0 | n/a |
| [BOB-security-review-September.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-September.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [BOB-security-review_2025-03-17.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review_2025-03-17.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf](https://docs.gobob.xyz/assets/files/Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf) | Code4rena | Contest | 2024-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xbdab72...b8f7a5`](./contracts/ethereum-1/0xbdab72602e9ad40fc6a6852caf43258113b8f7a5/) | SideToken | token | $202,895.03 | Verified native implementation with $202,895.03 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf2dc77...3dfdc7`](./contracts/ethereum-1/0xf2dc77c697e892542cc53336178a78bb313dfdc7/) | AddressManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b4653...d3f8d2`](./contracts/ethereum-1/0x7b465370bb7a333f99edd19599eb7fb1c2d3f8d2/) | AnchorStateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1279cd...96a3a4`](./contracts/ethereum-1/0x1279cd478838875f4ced1c25a0db99037996a3a4/) | BridgeEndpoint | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86760e...72126a`](./contracts/ethereum-1/0x86760eb2b9947b70ce613491cf7a216c2872126a/) | BridgeToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3de7a4...8a398a`](./contracts/ethereum-1/0x3de7a43ec8716126c819c6e4020c9f0a9b8a398a/) | DaoModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bba75...74e4a0`](./contracts/ethereum-1/0x4bba758f006ef09402ef31724203f316ab74e4a0/) | DisputeGameFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa297ec...319212`](./contracts/ethereum-1/0xa297ec52ac188f98a5b293bca3ff405643319212/) | DVFInterface3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7de1f0...645a15`](./contracts/ethereum-1/0x7de1f04204ef29229d84e7c0c2d1216c28645a15/) | DVFInterface4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61dc14...ce6ff7`](./contracts/ethereum-1/0x61dc14b28d4dbcd6cf887e9b72018b9da1ce6ff7/) | FusionLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4be239...a492ef`](./contracts/ethereum-1/0x4be239c86364ed73fc244a5f50c8ccb101a492ef/) | KailuaGame | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x993703...02ae53`](./contracts/ethereum-1/0x9937033cc967eed9d753e31c77d2f146d002ae53/) | KailuaTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x237853...158c12`](./contracts/ethereum-1/0x237853621998a33fa5b9b820592f4c6f4c158c12/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x091df5...b95b72`](./contracts/ethereum-1/0x091df5e1284e49fa682407096ad34cfd42b95b72/) | L1ERC20TokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59191b...229822`](./contracts/ethereum-1/0x59191bd38eba4a642c9fec308dc188731b229822/) | L2OutputOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x164a68...fce9eb`](./contracts/ethereum-1/0x164a68521386049e23bee8fa879a4e031ffce9eb/) | LockDrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fae7b...b851b7`](./contracts/ethereum-1/0x1fae7beed65b3d98ad8f1d5276387b20c6b851b7/) | NectarController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x994e3b...959fec`](./contracts/ethereum-1/0x994e3b01d130944a3e67bfd3b8fc73069b959fec/) | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c8776...c43287`](./contracts/ethereum-1/0x3c877699263119022cdaa251058c1bac8fc43287/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b31b2...1f61e5`](./contracts/ethereum-1/0x0b31b28103754a272d7905240301ec7b2a1f61e5/) | RevokableVester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0302f7...7b63b2`](./contracts/ethereum-1/0x0302f75047aa0935052275e77d15c40bee7b63b2/) | SupporterVester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x340f92...ffe647`](./contracts/ethereum-1/0x340f923e5c7cbb2171146f64169ec9d5a9ffe647/) | SystemConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x65d57b...4c0ce9`](./contracts/ethereum-1/0x65d57b1e6570f5c636b8dd64c186ac304a4c0ce9/) | TreasuryVester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 11 |
| standard_library | 6 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 16
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=2

Zero-match audit list:

- [2702] Rendered PDF capture
- [2703] /URI ()>>
- [2704] BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf
- [2705] BOB-Onramp-security-review.md
- [2706] BOB-Staking-security-review_2025-10-18.md
- [2708] BOB-security-review-August.md
- [2709] BOB-security-review-June.md
- [2710] BOB-security-review-September.md
- [2711] BOB-security-review_2025-03-17.md
- [2712] BOB-Onramp-security-review.pdf
- [2713] BOB-Staking-security-review_2025-10-18.pdf
- [2715] BOB-security-review-August.pdf
- [2716] BOB-security-review-June.pdf
- [2717] BOB-security-review-September.pdf
- [2718] BOB-security-review_2025-03-17.pdf
- [2719] Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf

Fork inheritance lineage and inherited audits are included when available.
