# Agentic Audit Brief: BOB Bridge

## Project Overview

- Project: BOB Bridge (`bob-bridge`)
- Website: [https://www.gobob.xyz](https://www.gobob.xyz)
- Lifecycle: active (Tier 1, declining)
- Generated: 2026-06-10T20:59:01.034Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 41 unique implementations (107 raw deployments)
- DeFi Llama TVL: $3,572,188.48
- On-chain TVL (included contracts): $202,895.03
- TVL by chain: Ethereum $202,895.03

## Project Description

The DefiLlama bob-bridge entry tracks TVL associated with bridging into the BOB ecosystem. BOB is a Bitcoin-focused EVM L2 / hybrid chain ecosystem for Bitcoin DeFi, combining OP Stack rollup components with products such as BOB Gateway, native BTC access and bridging, BitVM-based Bitcoin security/interop plans, swaps, earn and borrow use cases, and multichain BTC interoperability. Its bridge surface should therefore be described as BOB bridge/TVL infrastructure within this broader Bitcoin DeFi and EVM L2 ecosystem, not only as a generic Ethereum-to-BOB ERC-20, USDC, and NFT bridge.

### Architecture

The BOB Bridge family relies on the Ethereum (L1) family's OP Stack contracts for cross-chain messaging and asset custody. The L1StandardBridge and OptimismPortal2 are shared between the generic L1 infrastructure and the BOB-specific bridge components, while the L2 network uses the L1 dispute and messaging contracts for security.

## Audit Coverage Summary

- Verified implementations audited: 1/39 (2.6%)
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 41
- Raw deployments: 107
- Audits discovered: 9
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $202,895.03
- Latest audit: 2025-10 (fresh)
- Staleness: 1 fresh, 4 aging, 4 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 1 | 2.6% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| L1UsdcBridge | bridge_template | ethereum | [`0x450d55...4facbb`](./contracts/ethereum-1/0x450d55a4b4136805b0e5a6bb59377c71fc4facbb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SideToken | token | ethereum | 2 deployments: ethereum [`0xbdab72...b8f7a5`](./contracts/ethereum-1/0xbdab72602e9ad40fc6a6852caf43258113b8f7a5/); ethereum `0xbdbb63...323dd1` | ⚠️ Unaudited |
| AddressManager | governance | ethereum | [`0xf2dc77...3dfdc7`](./contracts/ethereum-1/0xf2dc77c697e892542cc53336178a78bb313dfdc7/) | ⚠️ Unaudited |
| AnchorStateRegistry | registry | ethereum | 3 deployments: ethereum [`0x7b4653...d3f8d2`](./contracts/ethereum-1/0x7b465370bb7a333f99edd19599eb7fb1c2d3f8d2/); ethereum `0xd0216b...535431`; ethereum `0xeba14d...e43fef` | ⚠️ Unaudited |
| BridgeEndpoint | operational_periphery | ethereum | 6 deployments: ethereum [`0x1279cd...96a3a4`](./contracts/ethereum-1/0x1279cd478838875f4ced1c25a0db99037996a3a4/); ethereum `0x1ee901...ea2aea`; ethereum `0x3439e4...283625`; ethereum `0x626812...869add`; ethereum `0xb39553...52b13b`; ethereum `0xcbce91...f21ad3` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | ethereum | 3 deployments: ethereum [`0x86760e...72126a`](./contracts/ethereum-1/0x86760eb2b9947b70ce613491cf7a216c2872126a/); ethereum `0x9fabf9...326fba`; ethereum `0xe7c375...7e0923` | ⚠️ Unaudited |
| DelayedWETH | token | ethereum | 2 deployments: ethereum [`0x3a1d54...ea3c13`](./contracts/ethereum-1/0x3a1d54496cf461ffc96d3b1a8a0b43b091ea3c13/); ethereum `0x5e40b9...ed3d9e` | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | 2 deployments: ethereum [`0x4bba75...74e4a0`](./contracts/ethereum-1/0x4bba758f006ef09402ef31724203f316ab74e4a0/); ethereum `0x96123d...9b1079` | ⚠️ Unaudited |
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
| OPContractsManager | governance | ethereum | [`0xdfe652...96ee3c`](./contracts/ethereum-1/0xdfe652fb94eb26c0f343d1c0273bfee78596ee3c/) | ⚠️ Unaudited |
| OPSuccinctDisputeGame | unknown | ethereum | [`0x2c2da5...2fea6d`](./contracts/ethereum-1/0x2c2da5effabda3a9ffe8e3d526c5b1f3b42fea6d/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | ethereum | 3 deployments: ethereum [`0x0640c9...5fbd76`](./contracts/ethereum-1/0x0640c9377a4fac00225097eacbb0295f4d5fbd76/); ethereum `0x5493f4...63988f`; ethereum `0x555740...b09cb6` | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | [`0x994e3b...959fec`](./contracts/ethereum-1/0x994e3b01d130944a3e67bfd3b8fc73069b959fec/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | 4 deployments: ethereum [`0x3c8776...c43287`](./contracts/ethereum-1/0x3c877699263119022cdaa251058c1bac8fc43287/); ethereum `0x5b172b...415514`; ethereum `0x8adee1...e65a3e`; ethereum `0xb443da...0d6fb4` | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | ethereum | 16 deployments: ethereum [`0x0605f3...8cb27c`](./contracts/ethereum-1/0x0605f3bf6de982f4b7e24b150a54c694f88cb27c/); ethereum `0x07e50a...1ab70b`; ethereum `0x1ffc35...e996a5`; ethereum `0x2dd081...6f15b2`; ethereum `0x33f9c5...a710a3`; ethereum `0x469593...e05dad`; ethereum `0x6753df...2f6776`; ethereum `0x6a3868...21b05e`; ethereum `0x703db8...4914ca`; ethereum `0x7342e0...3ec237`; ethereum `0x7fe001...7d87db`; ethereum `0x82e562...26c8e1`; ethereum `0xa5d58a...e39084`; ethereum `0xbcee72...16fb8b`; ethereum `0xc7bef1...8bc630`; ethereum `0xe3bd00...38702a` | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0x1fb8cd...87add3`](./contracts/ethereum-1/0x1fb8cdfc6831fc866ed9c51af8817da5c287add3/); ethereum `0xee74fd...79fa7a` | ⚠️ Unaudited |
| ProtocolVersions | unknown | ethereum | 3 deployments: ethereum [`0x0dd8ed...bd97d2`](./contracts/ethereum-1/0x0dd8ed2f044fde13be5d28d51b29e87e22bd97d2/); ethereum `0x37e15e...3cb76c`; ethereum `0x87692b...b3eff2` | ⚠️ Unaudited |
| Proxy | proxy | ethereum | 2 deployments: ethereum [`0x11c03c...5f8acf`](./contracts/ethereum-1/0x11c03c11ba32fede01fb870ed35ecb0f3d5f8acf/); ethereum `0xb9d8f5...17aad4` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 5 deployments: ethereum [`0x0d9f41...957cd0`](./contracts/ethereum-1/0x0d9f416260598313be6fdf6b010f2fbc34957cd0/); ethereum `0x43ca78...89d12f`; ethereum `0x87e65e...aed7ec`; ethereum `0xa70ddf...703e1c`; ethereum `0xb4899f...fad0b5` | ⚠️ Unaudited |
| RiscZeroGroth16Verifier | periphery | ethereum | 3 deployments: ethereum [`0x5a9946...fd965e`](./contracts/ethereum-1/0x5a99469f18a5863d3258e577892589386dfd965e/); ethereum `0x94a468...43c622`; ethereum `0xf70aba...7de93c` | ⚠️ Unaudited |
| RiscZeroVerifierEmergencyStop | periphery | ethereum | 3 deployments: ethereum [`0x08aed6...056e87`](./contracts/ethereum-1/0x08aed6c108e500540a9544bef7a8b8a05e056e87/); ethereum `0x44c220...ea33e7`; ethereum `0xb839ea...3d74f7` | ⚠️ Unaudited |
| RiscZeroVerifierRouter | adapter | ethereum | [`0x8eab2d...93d319`](./contracts/ethereum-1/0x8eab2d97dfce405a1692a21b3ff3a172d593d319/) | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | 4 deployments: ethereum [`0x097f99...9d53cc`](./contracts/ethereum-1/0x097f99768a0a4a0a81babbcb1ea18193ba9d53cc/); ethereum `0x4da82a...7458e7`; ethereum `0x554ffc...c5e667`; ethereum `0xe92520...965c46` | ⚠️ Unaudited |
| SystemConfig | governance | ethereum | 3 deployments: ethereum [`0x340f92...ffe647`](./contracts/ethereum-1/0x340f923e5c7cbb2171146f64169ec9d5a9ffe647/); ethereum `0xaa0a1e...55b590`; ethereum `0xacb886...1c5393` | ⚠️ Unaudited |
| TetherToken | token | ethereum | [`0x687496...782f38`](./contracts/ethereum-1/0x68749665ff8d2d112fa859aa293f07a622782f38/) | ⚠️ Unaudited |
| TimeLock | governance | ethereum | 2 deployments: ethereum [`0x137d16...414218`](./contracts/ethereum-1/0x137d16eba3a679e0f0bae63f0fd05fb061414218/); ethereum `0x1752b4...3e16f7` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | 2 deployments: ethereum [`0x0b144e...6fb711`](./contracts/ethereum-1/0x0b144e07a0826182b6b59788c34b32bfa86fb711/); ethereum `0xdc986a...501d15` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | [`0xfd9f79...36748f`](./contracts/ethereum-1/0xfd9f795b4c15183bdba83da08da02d5f9536748f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0xb5d1f1...4ec491` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd67456...7ca005` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf](https://docs.gobob.xyz/assets/files/BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [BOB-Onramp-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-Onramp-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [BOB-Staking-security-review_2025-10-18.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-Staking-security-review_2025-10-18.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [BOB-USDCBridge-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-USDCBridge-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [BOB-security-review-August.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-August.pdf) | Pashov Audit Group | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [BOB-security-review-June.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-June.pdf) | Pashov Audit Group | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
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
| ethereum | [`0x4bba75...74e4a0`](./contracts/ethereum-1/0x4bba758f006ef09402ef31724203f316ab74e4a0/) | DisputeGameFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x61dc14...ce6ff7`](./contracts/ethereum-1/0x61dc14b28d4dbcd6cf887e9b72018b9da1ce6ff7/) | FusionLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4be239...a492ef`](./contracts/ethereum-1/0x4be239c86364ed73fc244a5f50c8ccb101a492ef/) | KailuaGame | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x993703...02ae53`](./contracts/ethereum-1/0x9937033cc967eed9d753e31c77d2f146d002ae53/) | KailuaTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x237853...158c12`](./contracts/ethereum-1/0x237853621998a33fa5b9b820592f4c6f4c158c12/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x091df5...b95b72`](./contracts/ethereum-1/0x091df5e1284e49fa682407096ad34cfd42b95b72/) | L1ERC20TokenBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59191b...229822`](./contracts/ethereum-1/0x59191bd38eba4a642c9fec308dc188731b229822/) | L2OutputOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x164a68...fce9eb`](./contracts/ethereum-1/0x164a68521386049e23bee8fa879a4e031ffce9eb/) | LockDrop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x994e3b...959fec`](./contracts/ethereum-1/0x994e3b01d130944a3e67bfd3b8fc73069b959fec/) | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c8776...c43287`](./contracts/ethereum-1/0x3c877699263119022cdaa251058c1bac8fc43287/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x340f92...ffe647`](./contracts/ethereum-1/0x340f923e5c7cbb2171146f64169ec9d5a9ffe647/) | SystemConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 9 |
| standard_library | 7 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [2704] BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf
- [2712] BOB-Onramp-security-review.pdf
- [2713] BOB-Staking-security-review_2025-10-18.pdf
- [2715] BOB-security-review-August.pdf
- [2716] BOB-security-review-June.pdf
- [2717] BOB-security-review-September.pdf
- [2718] BOB-security-review_2025-03-17.pdf
- [2719] Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf

Fork inheritance lineage and inherited audits are included when available.
