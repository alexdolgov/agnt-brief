# Agentic Audit Brief: Cyber

## Project Overview

- Project: Cyber (`cyber`)
- Website: [https://cyber.co/](https://cyber.co/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.692Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base, ethereum, optimism
- Contract surface: 31 unique implementations (31 raw deployments)
- DeFi Llama TVL: $361,709.66
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Chain. Structurally: 30 project-authored contract(s) across 3 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 3 common project-authored base contract(s) (ownableupgradeable, contextupgradeable, clone). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **BOB Bridge** (`bob-bridge`) in the L1StandardBridge subsystem.
8 audits inherited from `bob-bridge`, scoped to that subsystem.

This project reuses audited code from **BOB Fusion** (`bob-fusion`) in the L1StandardBridge subsystem.
8 audits inherited from `bob-fusion`, scoped to that subsystem.

Total inherited audits: 16. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 31; live-surface contracts included: 31 (31 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/20 (5.0%)
- Deployed-live implementations: 31 of 31 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/31
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 31
- Raw deployments: 31
- Audits discovered: 16 (0 direct, 16 inherited from forked code)
- Scoreable audits (matched contracts): 16
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 4 fresh, 9 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 5.0% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 1 | 3.2% | 2025-05 |
| Pashov | Tier 2 | 1 | 3.2% | 2025-10 |
| Pashov Audit Group | Tier 2 | 1 | 3.2% | 2025-10 |
| yAudit | Tier 2 | 1 | 3.2% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| L1StandardBridge | unknown | ethereum | n/a | [`0x01b46e02fce5fc0731076711affe73beecd87997`](./contracts/ethereum-1/0x01b46e02fce5fc0731076711affe73beecd87997/) | ✅ Audited |

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressManager | unknown | ethereum | n/a | [`0x19b5804b88f10262a55ac731f28a3bbc4209853a`](./contracts/ethereum-1/0x19b5804b88f10262a55ac731f28a3bbc4209853a/) | ⚠️ Unaudited |
| Create2Deployer | unknown | base | n/a | [`0x9b20927a5dbf71d0539d48173c5f5b342bc67798`](./contracts/base-8453/0x9b20927a5dbf71d0539d48173c5f5b342bc67798/) | ⚠️ Unaudited |
| CyberToken | unknown | ethereum | n/a | [`0x14778860e937f509e651192a90589de711fb88a9`](./contracts/ethereum-1/0x14778860e937f509e651192a90589de711fb88a9/) | ⚠️ Unaudited |
| CyberTokenAdapter | unknown | ethereum | n/a | [`0xcb07992de144bdee56fdb66fff2454b43243b052`](./contracts/ethereum-1/0xcb07992de144bdee56fdb66fff2454b43243b052/) | ⚠️ Unaudited |
| CyberTokenController | unknown | optimism | n/a | [`0x9a9d5a29206dde4f70825032df32333de5f63921`](./contracts/optimism-10/0x9a9d5a29206dde4f70825032df32333de5f63921/) | ⚠️ Unaudited |
| CyberVesting | unknown | ethereum | n/a | [`0xb2bbfc07948fedeb5935316203c33ce70bef57d0`](./contracts/ethereum-1/0xb2bbfc07948fedeb5935316203c33ce70bef57d0/) | ⚠️ Unaudited |
| DataAvailabilityChallenge | unknown | ethereum | n/a | [`0x0d93eaa86eb6948b977857750a5512bef6b05c51`](./contracts/ethereum-1/0x0d93eaa86eb6948b977857750a5512bef6b05c51/) | ⚠️ Unaudited |
| DisputeGameFactory | unknown | ethereum | n/a | [`0xb79cf113e524043b3ef9bf7861a05900bb3649a3`](./contracts/ethereum-1/0xb79cf113e524043b3ef9bf7861a05900bb3649a3/) | ⚠️ Unaudited |
| Executor | unknown | ethereum | n/a | [`0x2d034969c3a31f16ae3540c802facdcacfe57eb3`](./contracts/ethereum-1/0x2d034969c3a31f16ae3540c802facdcacfe57eb3/) | ⚠️ Unaudited |
| ExecutorFeeLib | unknown | ethereum | n/a | [`0x8d6023c0d13f2c527818177a913fe7632434c461`](./contracts/ethereum-1/0x8d6023c0d13f2c527818177a913fe7632434c461/) | ⚠️ Unaudited |
| FaultDisputeGame | unknown | ethereum | n/a | [`0x96769a472f1d8e3d2719cc09cf4b4667e8d3bbcc`](./contracts/ethereum-1/0x96769a472f1d8e3d2719cc09cf4b4667e8d3bbcc/) | ⚠️ Unaudited |
| GnosisSafeProxy | unknown | ethereum | n/a | [`0xc2259e7fb719411f97abdcdf449f6ba3b9d75398`](./contracts/ethereum-1/0xc2259e7fb719411f97abdcdf449f6ba3b9d75398/) | ⚠️ Unaudited |
| GnosisSafeProxyFactory | unknown | ethereum | n/a | [`0xa6b71e26c5e0845f74c812102ca7114b6a896ab2`](./contracts/ethereum-1/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0x1234c7a75f40551fce5aff1d58efd72f2ee2afb1`](./contracts/ethereum-1/0x1234c7a75f40551fce5aff1d58efd72f2ee2afb1/) | ⚠️ Unaudited |
| L2OutputOracle | unknown | ethereum | n/a | [`0x93e1c0d8ef27930130fb809ce18ca681a8c32f85`](./contracts/ethereum-1/0x93e1c0d8ef27930130fb809ce18ca681a8c32f85/) | ⚠️ Unaudited |
| MerkleDistributorWithDeadline | unknown | optimism | n/a | [`0xb2bbfc07948fedeb5935316203c33ce70bef57d0`](./contracts/optimism-10/0xb2bbfc07948fedeb5935316203c33ce70bef57d0/) | ⚠️ Unaudited |
| MIPS | unknown | ethereum | n/a | [`0x0048defca9f0da952cfd1ae9f8e962937d3e4143`](./contracts/ethereum-1/0x0048defca9f0da952cfd1ae9f8e962937d3e4143/) | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | n/a | [`0xacfd93b4887cef4f05cf3440d150d2ce97339142`](./contracts/ethereum-1/0xacfd93b4887cef4f05cf3440d150d2ce97339142/) | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | ethereum | n/a | [`0xfe42cc6ac1f47d1b343a631a31b6d242dbf36b0c`](./contracts/ethereum-1/0xfe42cc6ac1f47d1b343a631a31b6d242dbf36b0c/) | ⚠️ Unaudited |
| PreimageOracle | unknown | ethereum | n/a | [`0x0747ef2570e3dbf65f0a12b371f19ca4a66a8dde`](./contracts/ethereum-1/0x0747ef2570e3dbf65f0a12b371f19ca4a66a8dde/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x1aec4c3be47c30d0befa7514cf9d99eac596959d`](./contracts/ethereum-1/0x1aec4c3be47c30d0befa7514cf9d99eac596959d/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x1d59bc9fce6b8e2b1bf86d4777289ffd83d24c99`](./contracts/ethereum-1/0x1d59bc9fce6b8e2b1bf86d4777289ffd83d24c99/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x51a00470eb50d758ecff3b96db0bf4a8e86268f4`](./contracts/ethereum-1/0x51a00470eb50d758ecff3b96db0bf4a8e86268f4/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x588dad44201885ff23068f1142e303d52d103919`](./contracts/ethereum-1/0x588dad44201885ff23068f1142e303d52d103919/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x5d1f4bbaf6d484fa9d5d9705f92de6063bff6055`](./contracts/ethereum-1/0x5d1f4bbaf6d484fa9d5d9705f92de6063bff6055/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0xa1780b58a75816f69ac34d606486d98824d41a73`](./contracts/ethereum-1/0xa1780b58a75816f69ac34d606486d98824d41a73/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x4a7228cb5bd8f811490bf5af6ec4b50740259be3`](./contracts/ethereum-1/0x4a7228cb5bd8f811490bf5af6ec4b50740259be3/) | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | ethereum | n/a | [`0x3c01ebf22e9c111528c1e027d68944edab08dfc9`](./contracts/ethereum-1/0x3c01ebf22e9c111528c1e027d68944edab08dfc9/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x81759adbf5520ad94da10991dfa29ff147d3337b`](./contracts/ethereum-1/0x81759adbf5520ad94da10991dfa29ff147d3337b/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0xa4ccfb0f513e9886743353fcaf6d63bf578199f2`](./contracts/ethereum-1/0xa4ccfb0f513e9886743353fcaf6d63bf578199f2/) | ⚠️ Unaudited |

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
| [BOB-Staking-security-review_2025-10-18.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-Staking-security-review_2025-10-18.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Inherited from BOB Bridge — forked code, scoped to L1StandardBridge | inherited | 1 | n/a |
| [BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf](https://docs.gobob.xyz/assets/files/BobStaking-security-review_2025-03-04-b913a0a31774ad8b252f6548abe624b5.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Inherited from BOB Bridge — forked code, scoped to L1StandardBridge | inherited | 1 | n/a |
| [BOB-security-review-September.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-September.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Inherited from BOB Bridge — forked code, scoped to L1StandardBridge | inherited | 1 | n/a |
| [BOB-security-review_2025-03-17.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review_2025-03-17.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Inherited from BOB Bridge — forked code, scoped to L1StandardBridge | inherited | 1 | n/a |
| [BOB-security-review-August.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-August.pdf) | Pashov Audit Group | Audit | 2024-08 | aging | Inherited from BOB Bridge — forked code, scoped to L1StandardBridge | inherited | 1 | n/a |
| [BOB-security-review-June.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-security-review-June.pdf) | Pashov Audit Group | Audit | 2024-06 | stale | Inherited from BOB Bridge — forked code, scoped to L1StandardBridge | inherited | 1 | n/a |
| [BOB-Onramp-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-Onramp-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Inherited from BOB Bridge — forked code, scoped to L1StandardBridge | inherited | 1 | n/a |
| [BOB-USDCBridge-security-review.pdf](https://github.com/pashov/audits/blob/master/team/pdf/BOB-USDCBridge-security-review.pdf) | Pashov Audit Group | Audit | 2024-04 | stale | Inherited from BOB Bridge — forked code, scoped to L1StandardBridge | inherited | 1 | n/a |
| [BobTokenV2-Pashov-Audit-Report-Oct-2025-0263f8b0c49bf2b75df5b6bcad9fbcc9.pdf](https://docs.gobob.xyz/assets/files/BobTokenV2-Pashov-Audit-Report-Oct-2025-0263f8b0c49bf2b75df5b6bcad9fbcc9.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Inherited from BOB Fusion — forked code, scoped to L1StandardBridge | inherited | 1 | n/a |
| [BobStaking-security-review_2025-10-18-f54577c242e3990575db4789a421c165.pdf](https://docs.gobob.xyz/assets/files/BobStaking-security-review_2025-10-18-f54577c242e3990575db4789a421c165.pdf) | Pashov | Audit | 2025-10 | fresh | Inherited from BOB Fusion — forked code, scoped to L1StandardBridge | inherited | 1 | n/a |
| [Pashov-Audit-Report-2025-offramp-solver-e6126bcad381876b88a6550ddde8aa88.pdf](https://docs.gobob.xyz/assets/files/Pashov-Audit-Report-2025-offramp-solver-e6126bcad381876b88a6550ddde8aa88.pdf) | Pashov Audit Group | Audit | 2025-08 | fresh | Inherited from BOB Fusion — forked code, scoped to L1StandardBridge | inherited | 1 | n/a |
| [veridise-kailua-20250616-92721909a6b90ab336d6fae5365a76d4.pdf](https://docs.gobob.xyz/assets/files/veridise-kailua-20250616-92721909a6b90ab336d6fae5365a76d4.pdf) | yAudit | Audit | 2025-06 | aging | Inherited from BOB Fusion — forked code, scoped to L1StandardBridge | inherited | 1 | n/a |
| [veridise-kailua-20250522-d1dff99d6a1be809bcb27c48671c8b46.pdf](https://docs.gobob.xyz/assets/files/veridise-kailua-20250522-d1dff99d6a1be809bcb27c48671c8b46.pdf) | Code4rena | Contest | 2025-05 | aging | Inherited from BOB Fusion — forked code, scoped to L1StandardBridge | inherited | 1 | n/a |
| [BOB-security-review_2025-03-17-3ab501a0f6519fc8f95c9f285481414b.pdf](https://docs.gobob.xyz/assets/files/BOB-security-review_2025-03-17-3ab501a0f6519fc8f95c9f285481414b.pdf) | Pashov | Audit | 2025-03 | aging | Inherited from BOB Fusion — forked code, scoped to L1StandardBridge | inherited | 1 | n/a |
| [veridise-kailua-20250217-c317614d026618741e34d6a269c5f9e9.pdf](https://docs.gobob.xyz/assets/files/veridise-kailua-20250217-c317614d026618741e34d6a269c5f9e9.pdf) | yAudit | Audit | 2025-02 | aging | Inherited from BOB Fusion — forked code, scoped to L1StandardBridge | inherited | 1 | n/a |
| [BobToken-Pashov-Audit-Report-Feb-2025-9f199a39dec0967a6e789403c9fc896d.pdf](https://docs.gobob.xyz/assets/files/BobToken-Pashov-Audit-Report-Feb-2025-9f199a39dec0967a6e789403c9fc896d.pdf) | Pashov Audit Group | Audit | 2025-02 | aging | Inherited from BOB Fusion — forked code, scoped to L1StandardBridge | inherited | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x19b5804b88f10262a55ac731f28a3bbc4209853a`](./contracts/ethereum-1/0x19b5804b88f10262a55ac731f28a3bbc4209853a/) | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14778860e937f509e651192a90589de711fb88a9`](./contracts/ethereum-1/0x14778860e937f509e651192a90589de711fb88a9/) | CyberToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcb07992de144bdee56fdb66fff2454b43243b052`](./contracts/ethereum-1/0xcb07992de144bdee56fdb66fff2454b43243b052/) | CyberTokenAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9a9d5a29206dde4f70825032df32333de5f63921`](./contracts/optimism-10/0x9a9d5a29206dde4f70825032df32333de5f63921/) | CyberTokenController | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb2bbfc07948fedeb5935316203c33ce70bef57d0`](./contracts/ethereum-1/0xb2bbfc07948fedeb5935316203c33ce70bef57d0/) | CyberVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d93eaa86eb6948b977857750a5512bef6b05c51`](./contracts/ethereum-1/0x0d93eaa86eb6948b977857750a5512bef6b05c51/) | DataAvailabilityChallenge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb79cf113e524043b3ef9bf7861a05900bb3649a3`](./contracts/ethereum-1/0xb79cf113e524043b3ef9bf7861a05900bb3649a3/) | DisputeGameFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d034969c3a31f16ae3540c802facdcacfe57eb3`](./contracts/ethereum-1/0x2d034969c3a31f16ae3540c802facdcacfe57eb3/) | Executor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d6023c0d13f2c527818177a913fe7632434c461`](./contracts/ethereum-1/0x8d6023c0d13f2c527818177a913fe7632434c461/) | ExecutorFeeLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x96769a472f1d8e3d2719cc09cf4b4667e8d3bbcc`](./contracts/ethereum-1/0x96769a472f1d8e3d2719cc09cf4b4667e8d3bbcc/) | FaultDisputeGame | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6b71e26c5e0845f74c812102ca7114b6a896ab2`](./contracts/ethereum-1/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/) | GnosisSafeProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1234c7a75f40551fce5aff1d58efd72f2ee2afb1`](./contracts/ethereum-1/0x1234c7a75f40551fce5aff1d58efd72f2ee2afb1/) | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x93e1c0d8ef27930130fb809ce18ca681a8c32f85`](./contracts/ethereum-1/0x93e1c0d8ef27930130fb809ce18ca681a8c32f85/) | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xb2bbfc07948fedeb5935316203c33ce70bef57d0`](./contracts/optimism-10/0xb2bbfc07948fedeb5935316203c33ce70bef57d0/) | MerkleDistributorWithDeadline | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0048defca9f0da952cfd1ae9f8e962937d3e4143`](./contracts/ethereum-1/0x0048defca9f0da952cfd1ae9f8e962937d3e4143/) | MIPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xacfd93b4887cef4f05cf3440d150d2ce97339142`](./contracts/ethereum-1/0xacfd93b4887cef4f05cf3440d150d2ce97339142/) | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xfe42cc6ac1f47d1b343a631a31b6d242dbf36b0c`](./contracts/ethereum-1/0xfe42cc6ac1f47d1b343a631a31b6d242dbf36b0c/) | PermissionedDisputeGame | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0747ef2570e3dbf65f0a12b371f19ca4a66a8dde`](./contracts/ethereum-1/0x0747ef2570e3dbf65f0a12b371f19ca4a66a8dde/) | PreimageOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c01ebf22e9c111528c1e027d68944edab08dfc9`](./contracts/ethereum-1/0x3c01ebf22e9c111528c1e027d68944edab08dfc9/) | ResolvedDelegateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 11 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=16

Fork inheritance lineage and inherited audits are included when available.
