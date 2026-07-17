# Agentic Audit Brief: BOB Fusion

## Project Overview

- Project: BOB Fusion (`bob-fusion`)
- Website: [https://gobob.xyz](https://gobob.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:07.664Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: ethereum
- Contract surface: 35 unique implementations (35 raw deployments)
- DeFi Llama TVL: $285,350.48
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 35 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 10 common project-authored base contract(s) (semver, irisczeroverifier, ownable2step). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **BOB Bridge** (`bob-bridge`) in the KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame subsystem.
8 audits inherited from `bob-bridge`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 35; live-surface contracts included: 35 (35 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/26 (19.2%)
- Deployed-live implementations: 35 of 35 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/35
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 35
- Raw deployments: 35
- Audits discovered: 27 (19 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 4 fresh, 11 aging, 12 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 7.7% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 5 | 14.3% | 2025-10 |
| Code4rena | Tier 1 | 2 | 5.7% | 2025-05 |
| yAudit | Tier 2 | 1 | 2.9% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BobToken | unknown | ethereum | n/a | [`0x52b5fb4b0f6572b8c44d0251cc224513ac5eb7e7`](./contracts/ethereum-1/0x52b5fb4b0f6572b8c44d0251cc224513ac5eb7e7/) | ✅ Audited |
| KailuaGame | unknown | ethereum | n/a | [`0x296e7ad6d441b0627768bc0650179a4206479444`](./contracts/ethereum-1/0x296e7ad6d441b0627768bc0650179a4206479444/) | ✅ Audited |
| KailuaTreasury | unknown | ethereum | n/a | [`0x9937033cc967eed9d753e31c77d2f146d002ae53`](./contracts/ethereum-1/0x9937033cc967eed9d753e31c77d2f146d002ae53/) | ✅ Audited |
| L1StandardBridge | unknown | ethereum | n/a | [`0x0b09ba359a106c9ea3b181cbc5f394570c7d2a7a`](./contracts/ethereum-1/0x0b09ba359a106c9ea3b181cbc5f394570c7d2a7a/) | ✅ Audited |
| PermissionedDisputeGame | unknown | ethereum | n/a | [`0x0605f3bf6de982f4b7e24b150a54c694f88cb27c`](./contracts/ethereum-1/0x0605f3bf6de982f4b7e24b150a54c694f88cb27c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressManager | unknown | ethereum | n/a | [`0xf2dc77c697e892542cc53336178a78bb313dfdc7`](./contracts/ethereum-1/0xf2dc77c697e892542cc53336178a78bb313dfdc7/) | ⚠️ Unaudited |
| AnchorStateRegistry | unknown | ethereum | n/a | [`0x7b465370bb7a333f99edd19599eb7fb1c2d3f8d2`](./contracts/ethereum-1/0x7b465370bb7a333f99edd19599eb7fb1c2d3f8d2/) | ⚠️ Unaudited |
| DisputeGameFactory | unknown | ethereum | n/a | [`0x4bba758f006ef09402ef31724203f316ab74e4a0`](./contracts/ethereum-1/0x4bba758f006ef09402ef31724203f316ab74e4a0/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x237853621998a33fa5b9b820592f4c6f4c158c12`](./contracts/ethereum-1/0x237853621998a33fa5b9b820592f4c6f4c158c12/) | ⚠️ Unaudited |
| L2OutputOracle | unknown | ethereum | n/a | [`0x59191bd38eba4a642c9fec308dc188731b229822`](./contracts/ethereum-1/0x59191bd38eba4a642c9fec308dc188731b229822/) | ⚠️ Unaudited |
| MiniMeTokenFactory | unknown | ethereum | n/a | [`0x003ea7f54b6dcf6cee86986edc18143a35f15505`](./contracts/ethereum-1/0x003ea7f54b6dcf6cee86986edc18143a35f15505/) | ⚠️ Unaudited |
| MIPS64 | unknown | ethereum | n/a | [`0x17c64e93846935dfbd281a5540a14d4cd67195f7`](./contracts/ethereum-1/0x17c64e93846935dfbd281a5540a14d4cd67195f7/) | ⚠️ Unaudited |
| Multicall3 | unknown | ethereum | n/a | [`0xca11bde05977b3631167028862be2a173976ca11`](./contracts/ethereum-1/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| NEC | unknown | ethereum | n/a | [`0xcc80c051057b774cd75067dc48f8987c4eb97a5e`](./contracts/ethereum-1/0xcc80c051057b774cd75067dc48f8987c4eb97a5e/) | ⚠️ Unaudited |
| NectarController | unknown | ethereum | n/a | [`0x8d5a41e85f4ce2433beef476305d307b9205d98d`](./contracts/ethereum-1/0x8d5a41e85f4ce2433beef476305d307b9205d98d/) | ⚠️ Unaudited |
| OPContractsManager | unknown | ethereum | n/a | [`0xdfe652fb94eb26c0f343d1c0273bfee78596ee3c`](./contracts/ethereum-1/0xdfe652fb94eb26c0f343d1c0273bfee78596ee3c/) | ⚠️ Unaudited |
| OPSuccinctDisputeGame | unknown | ethereum | n/a | [`0x2c2da5effabda3a9ffe8e3d526c5b1f3b42fea6d`](./contracts/ethereum-1/0x2c2da5effabda3a9ffe8e3d526c5b1f3b42fea6d/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0x0640c9377a4fac00225097eacbb0295f4d5fbd76`](./contracts/ethereum-1/0x0640c9377a4fac00225097eacbb0295f4d5fbd76/) | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | n/a | [`0x994e3b01d130944a3e67bfd3b8fc73069b959fec`](./contracts/ethereum-1/0x994e3b01d130944a3e67bfd3b8fc73069b959fec/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | [`0x3c877699263119022cdaa251058c1bac8fc43287`](./contracts/ethereum-1/0x3c877699263119022cdaa251058c1bac8fc43287/) | ⚠️ Unaudited |
| PreimageOracle | unknown | ethereum | n/a | [`0x1fb8cdfc6831fc866ed9c51af8817da5c287add3`](./contracts/ethereum-1/0x1fb8cdfc6831fc866ed9c51af8817da5c287add3/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x097f99768a0a4a0a81babbcb1ea18193ba9d53cc`](./contracts/ethereum-1/0x097f99768a0a4a0a81babbcb1ea18193ba9d53cc/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x0dd8ed2f044fde13be5d28d51b29e87e22bd97d2`](./contracts/ethereum-1/0x0dd8ed2f044fde13be5d28d51b29e87e22bd97d2/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x11c03c11ba32fede01fb870ed35ecb0f3d5f8acf`](./contracts/ethereum-1/0x11c03c11ba32fede01fb870ed35ecb0f3d5f8acf/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x3a1d54496cf461ffc96d3b1a8a0b43b091ea3c13`](./contracts/ethereum-1/0x3a1d54496cf461ffc96d3b1a8a0b43b091ea3c13/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x5ff93263d5181b2a826f8c51d54bc0da2d20d50a`](./contracts/ethereum-1/0x5ff93263d5181b2a826f8c51d54bc0da2d20d50a/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x6b49976a7340d0a3c00d1bebe0e36e2367d89c7c`](./contracts/ethereum-1/0x6b49976a7340d0a3c00d1bebe0e36e2367d89c7c/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x0d9f416260598313be6fdf6b010f2fbc34957cd0`](./contracts/ethereum-1/0x0d9f416260598313be6fdf6b010f2fbc34957cd0/) | ⚠️ Unaudited |
| RiscZeroGroth16Verifier | unknown | ethereum | n/a | [`0x5a99469f18a5863d3258e577892589386dfd965e`](./contracts/ethereum-1/0x5a99469f18a5863d3258e577892589386dfd965e/) | ⚠️ Unaudited |
| RiscZeroVerifierEmergencyStop | unknown | ethereum | n/a | [`0x08aed6c108e500540a9544bef7a8b8a05e056e87`](./contracts/ethereum-1/0x08aed6c108e500540a9544bef7a8b8a05e056e87/) | ⚠️ Unaudited |
| RiscZeroVerifierRouter | unknown | ethereum | n/a | [`0x8eab2d97dfce405a1692a21b3ff3a172d593d319`](./contracts/ethereum-1/0x8eab2d97dfce405a1692a21b3ff3a172d593d319/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0x340f923e5c7cbb2171146f64169ec9d5a9ffe647`](./contracts/ethereum-1/0x340f923e5c7cbb2171146f64169ec9d5a9ffe647/) | ⚠️ Unaudited |
| TetherToken | unknown | ethereum | n/a | [`0x0e98db51010dd1ade14dd3fb164e218805fdba1b`](./contracts/ethereum-1/0x0e98db51010dd1ade14dd3fb164e218805fdba1b/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x0b144e07a0826182b6b59788c34b32bfa86fb711`](./contracts/ethereum-1/0x0b144e07a0826182b6b59788c34b32bfa86fb711/) | ⚠️ Unaudited |
| WrapperLockEth | unknown | ethereum | n/a | [`0x991f0e5c5775ca9dd02e30e67f545c36cff3690e`](./contracts/ethereum-1/0x991f0e5c5775ca9dd02e30e67f545c36cff3690e/) | ⚠️ Unaudited |

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
| [BOB-Staking-security-review_2025-10-18.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-Staking-security-review_2025-10-18.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | inherited | 4 | n/a |
| [BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf](https://docs.gobob.xyz/assets/files/BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | inherited | 4 | n/a |
| [BOB-security-review-September.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-September.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | inherited | 4 | n/a |
| [BOB-security-review_2025-03-17.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review_2025-03-17.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | inherited | 4 | n/a |
| [BOB-security-review-August.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-August.pdf) | Pashov Audit Group | Audit | 2024-08 | aging | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | inherited | 4 | n/a |
| [BOB-security-review-June.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-June.pdf) | Pashov Audit Group | Audit | 2024-06 | stale | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | inherited | 4 | n/a |
| [BOB-Onramp-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-Onramp-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | inherited | 4 | n/a |
| [BOB-USDCBridge-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-USDCBridge-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Inherited from BOB Bridge — forked code, scoped to KailuaGame, KailuaTreasury, L1StandardBridge, PermissionedDisputeGame | inherited | 4 | n/a |
| [Report](https://docs.gobob.xyz/assets/files/veridise-kailua-20250217-c317614d026618741e34d6a269c5f9e9.pdf) | yAudit | Audit | 2025-02 | aging | Direct | contract_name | 1 | high |
| [Report](https://docs.gobob.xyz/assets/files/veridise-kailua-20250522-d1dff99d6a1be809bcb27c48671c8b46.pdf) | Code4rena | Contest | 2025-05 | aging | Direct | contract_name | 2 | high |
| [Report](https://docs.gobob.xyz/assets/files/veridise-kailua-20250616-92721909a6b90ab336d6fae5365a76d4.pdf) | yAudit | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [Report](https://docs.gobob.xyz/assets/files/BobToken-Pashov-Audit-Report-Feb-2025-9f199a39dec0967a6e789403c9fc896d.pdf) | Pashov Audit Group | Audit | 2025-02 | aging | Direct | contract_name | 1 | high |
| [Report](https://docs.gobob.xyz/assets/files/BobTokenV2-Pashov-Audit-Report-Oct-2025-0263f8b0c49bf2b75df5b6bcad9fbcc9.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Report](https://docs.gobob.xyz/assets/files/BobStaking-security-review_2025-10-18-f54577c242e3990575db4789a421c165.pdf) | Pashov | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Report](https://docs.gobob.xyz/assets/files/BOB-02-WP2-report-dcd81ac9bbd6f6efa2addaa189c9dc11.pdf) | Cure53 | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Report](https://docs.gobob.xyz/assets/files/Common-Prefix-Audit-Report-2024-e994b8b30bf329840cf38bc5c4537365.pdf) | Code4rena | Contest | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Report](https://docs.gobob.xyz/assets/files/Pashov-Audit-Report-2024-v1-82d2528b6e9e352b0d6972f399c0d425.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Report](https://docs.gobob.xyz/assets/files/Pashov-Audit-Report-2024-v2-86896538aa291f687a0f6a37446b84a1.pdf) | Pashov Audit Group | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [Report](https://docs.gobob.xyz/assets/files/Pashov-Audit-Report-2024-v3-a63f8cca35682dfec1fb6d814ecd2f42.pdf) | Pashov Audit Group | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Report](https://docs.gobob.xyz/assets/files/BOB-security-review_2025-03-17-3ab501a0f6519fc8f95c9f285481414b.pdf) | Pashov | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [Report](https://docs.gobob.xyz/assets/files/Pashov-Audit-Report-2025-offramp-solver-e6126bcad381876b88a6550ddde8aa88.pdf) | Pashov Audit Group | Audit | 2025-08 | fresh | Direct | n/a | 0 | n/a |
| [BOB-02-WP1-report-b55c983036f11dd6d7c6eecd6a258957.pdf](https://docs.gobob.xyz/assets/files/BOB-02-WP1-report-b55c983036f11dd6d7c6eecd6a258957.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Report](https://docs.gobob.xyz/assets/files/BOB-USDCBridge-security-review-e97c3ee59cc234a9bd75876a86343b6b.pdf) | Pashov | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Report](https://docs.gobob.xyz/assets/files/FusionLock-Ottersec-023eec834a0e03cd844e312523e0a9a2.pdf) | Ottersec | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [Report](https://docs.gobob.xyz/assets/files/FusionLock-Common_Prefix-7d4631fe0288ee12c628ae07a84f7076.pdf) | Common Prefix | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [Report](https://docs.gobob.xyz/assets/files/FusionLock-Trail_of_Bits-4ce7aa57bbf6123a486f4dd2753d4fcd.pdf) | Trail of Bits | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [/URI ()>>](https://github.com/pashov/audits) | Pashov Audit Group | Audit | 2024 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xf2dc77c697e892542cc53336178a78bb313dfdc7`](./contracts/ethereum-1/0xf2dc77c697e892542cc53336178a78bb313dfdc7/) | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7b465370bb7a333f99edd19599eb7fb1c2d3f8d2`](./contracts/ethereum-1/0x7b465370bb7a333f99edd19599eb7fb1c2d3f8d2/) | AnchorStateRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4bba758f006ef09402ef31724203f316ab74e4a0`](./contracts/ethereum-1/0x4bba758f006ef09402ef31724203f316ab74e4a0/) | DisputeGameFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x237853621998a33fa5b9b820592f4c6f4c158c12`](./contracts/ethereum-1/0x237853621998a33fa5b9b820592f4c6f4c158c12/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59191bd38eba4a642c9fec308dc188731b229822`](./contracts/ethereum-1/0x59191bd38eba4a642c9fec308dc188731b229822/) | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x003ea7f54b6dcf6cee86986edc18143a35f15505`](./contracts/ethereum-1/0x003ea7f54b6dcf6cee86986edc18143a35f15505/) | MiniMeTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17c64e93846935dfbd281a5540a14d4cd67195f7`](./contracts/ethereum-1/0x17c64e93846935dfbd281a5540a14d4cd67195f7/) | MIPS64 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc80c051057b774cd75067dc48f8987c4eb97a5e`](./contracts/ethereum-1/0xcc80c051057b774cd75067dc48f8987c4eb97a5e/) | NEC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d5a41e85f4ce2433beef476305d307b9205d98d`](./contracts/ethereum-1/0x8d5a41e85f4ce2433beef476305d307b9205d98d/) | NectarController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdfe652fb94eb26c0f343d1c0273bfee78596ee3c`](./contracts/ethereum-1/0xdfe652fb94eb26c0f343d1c0273bfee78596ee3c/) | OPContractsManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c2da5effabda3a9ffe8e3d526c5b1f3b42fea6d`](./contracts/ethereum-1/0x2c2da5effabda3a9ffe8e3d526c5b1f3b42fea6d/) | OPSuccinctDisputeGame | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0640c9377a4fac00225097eacbb0295f4d5fbd76`](./contracts/ethereum-1/0x0640c9377a4fac00225097eacbb0295f4d5fbd76/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x994e3b01d130944a3e67bfd3b8fc73069b959fec`](./contracts/ethereum-1/0x994e3b01d130944a3e67bfd3b8fc73069b959fec/) | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c877699263119022cdaa251058c1bac8fc43287`](./contracts/ethereum-1/0x3c877699263119022cdaa251058c1bac8fc43287/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fb8cdfc6831fc866ed9c51af8817da5c287add3`](./contracts/ethereum-1/0x1fb8cdfc6831fc866ed9c51af8817da5c287add3/) | PreimageOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a99469f18a5863d3258e577892589386dfd965e`](./contracts/ethereum-1/0x5a99469f18a5863d3258e577892589386dfd965e/) | RiscZeroGroth16Verifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08aed6c108e500540a9544bef7a8b8a05e056e87`](./contracts/ethereum-1/0x08aed6c108e500540a9544bef7a8b8a05e056e87/) | RiscZeroVerifierEmergencyStop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8eab2d97dfce405a1692a21b3ff3a172d593d319`](./contracts/ethereum-1/0x8eab2d97dfce405a1692a21b3ff3a172d593d319/) | RiscZeroVerifierRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x340f923e5c7cbb2171146f64169ec9d5a9ffe647`](./contracts/ethereum-1/0x340f923e5c7cbb2171146f64169ec9d5a9ffe647/) | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e98db51010dd1ade14dd3fb164e218805fdba1b`](./contracts/ethereum-1/0x0e98db51010dd1ade14dd3fb164e218805fdba1b/) | TetherToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x991f0e5c5775ca9dd02e30e67f545c36cff3690e`](./contracts/ethereum-1/0x991f0e5c5775ca9dd02e30e67f545c36cff3690e/) | WrapperLockEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 26 |
| upstream | 0 |
| standard_library | 9 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 16
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=4, inherited_name_remap=32

Zero-match audit list:

- [19586] Report
- [19589] Report
- [19590] Report
- [19591] Report
- [19592] Report
- [19593] Report
- [19594] Report
- [19595] Report
- [19596] Report
- [19597] Report
- [19598] BOB-02-WP1-report-b55c983036f11dd6d7c6eecd6a258957.pdf
- [19599] Report
- [19600] Report
- [19601] Report
- [19602] Report
- [19613] /URI ()>>

Fork inheritance lineage and inherited audits are included when available.
