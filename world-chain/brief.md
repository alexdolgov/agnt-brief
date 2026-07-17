# Agentic Audit Brief: World Chain

## Project Overview

- Project: World Chain (`world-chain`)
- Website: [https://world.org/](https://world.org/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.333Z
- Pipeline run: v2-2026-07-04-7d91d2
- Chains: ethereum
- Contract surface: 38 unique implementations (38 raw deployments)
- DeFi Llama TVL: $381,453,262.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 36 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 20 common project-authored base contract(s) (ownable2step, etherpaymentfallback, singleton). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Mode Bridge** (`mode-bridge`) in the DeputyGuardianModule, PermissionedDisputeGameV2 subsystem.
12 audits inherited from `mode-bridge`, scoped to that subsystem.

Total inherited audits: 12. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 38; live-surface contracts included: 38 (38 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/32 (18.8%)
- Deployed-live implementations: 38 of 38 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/38
- Verified + Unaudited implementations: 32
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 38
- Raw deployments: 38
- Audits discovered: 14 (2 direct, 12 inherited from forked code)
- Scoreable audits (matched contracts): 13
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 4 fresh, 2 aging, 6 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 6 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Nethermind | Tier 2 | 5 | 13.2% | 2023-07 |
| Halborn | Tier 2 | 1 | 2.6% | 2025-01 |
| LLM | Tier 2 | 1 | 2.6% | 2025-08 |
| Solo Review | Tier 2 | 1 | 2.6% | 2024-05 |
| SSC | Tier 2 | 1 | 2.6% | 2025-01 |
| unknown | Tier 2 | 1 | 2.6% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DeputyGuardianModule | unknown | ethereum | n/a | [`0x5dc91d01290af474ce21de14c17335a6dee4d2a8`](./contracts/ethereum-1/0x5dc91d01290af474ce21de14c17335a6dee4d2a8/) | ✅ Audited |
| StateBridge | unknown | ethereum | n/a | [`0x86d26ed31556ea7694bd0cc4e674d7526f70511a`](./contracts/ethereum-1/0x86d26ed31556ea7694bd0cc4e674d7526f70511a/) | ✅ Audited |
| VerifierLookupTable | unknown | ethereum | n/a | [`0x0af990389fc2007cfb31855d6f7dfc383f102fa1`](./contracts/ethereum-1/0x0af990389fc2007cfb31855d6f7dfc383f102fa1/) | ✅ Audited |
| WorldIDIdentityManagerImplV1 | unknown | ethereum | n/a | [`0x2ad412a1df96434eed0779d2db4a8694a06132f8`](./contracts/ethereum-1/0x2ad412a1df96434eed0779d2db4a8694a06132f8/) | ✅ Audited |
| WorldIDIdentityManagerImplV2 | unknown | ethereum | n/a | [`0x521e8fb3a32ea44237dc8b1e506dd78accfdf8bd`](./contracts/ethereum-1/0x521e8fb3a32ea44237dc8b1e506dd78accfdf8bd/) | ✅ Audited |
| WorldIDRouterImplV1 | unknown | ethereum | n/a | [`0x163b09b4fe21177c455d850bd815b6d583732432`](./contracts/ethereum-1/0x163b09b4fe21177c455d850bd815b6d583732432/) | ✅ Audited |

### ⚠️ Verified + Unaudited (32)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressManager | unknown | ethereum | n/a | [`0x5891090d5085679714cb0e62f74950a3c19146a8`](./contracts/ethereum-1/0x5891090d5085679714cb0e62f74950a3c19146a8/) | ⚠️ Unaudited |
| AnchorStateRegistry | unknown | ethereum | n/a | [`0x1325c4966d17038c5592fb38416aee85ee73c0cb`](./contracts/ethereum-1/0x1325c4966d17038c5592fb38416aee85ee73c0cb/) | ⚠️ Unaudited |
| DelayedWETH | unknown | ethereum | n/a | [`0x8ec1111f67dad6b6a93b3f42dfbc92d81c98449a`](./contracts/ethereum-1/0x8ec1111f67dad6b6a93b3f42dfbc92d81c98449a/) | ⚠️ Unaudited |
| DisputeGameFactory | unknown | ethereum | n/a | [`0x069c4c579671f8c120b1327a73217d01ea2ec5ea`](./contracts/ethereum-1/0x069c4c579671f8c120b1327a73217d01ea2ec5ea/) | ⚠️ Unaudited |
| EntryPoint | unknown | ethereum | n/a | [`0x0000000071727de22e5e9d8baf0edac6f37da032`](./contracts/ethereum-1/0x0000000071727de22e5e9d8baf0edac6f37da032/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0xa4fb12d15eb85dc9284a7df0adbc8b696edbbf1d`](./contracts/ethereum-1/0xa4fb12d15eb85dc9284a7df0adbc8b696edbbf1d/) | ⚠️ Unaudited |
| GnosisSafeProxyFactory | unknown | ethereum | n/a | [`0xa6b71e26c5e0845f74c812102ca7114b6a896ab2`](./contracts/ethereum-1/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0xf931a81d18b1766d15695ffc7c1920a62b7e710a`](./contracts/ethereum-1/0xf931a81d18b1766d15695ffc7c1920a62b7e710a/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0x1df436afdb2fbb40f1fe8bed4fc89a0d0990a8e9`](./contracts/ethereum-1/0x1df436afdb2fbb40f1fe8bed4fc89a0d0990a8e9/) | ⚠️ Unaudited |
| L1OpUSDCBridgeAdapter | unknown | ethereum | n/a | [`0x153a69e4bb6fedbbaaf463cb982416316c84b2db`](./contracts/ethereum-1/0x153a69e4bb6fedbbaaf463cb982416316c84b2db/) | ⚠️ Unaudited |
| L1StandardBridge | unknown | ethereum | n/a | [`0x470458c91978d2d929704489ad730dc3e3001113`](./contracts/ethereum-1/0x470458c91978d2d929704489ad730dc3e3001113/) | ⚠️ Unaudited |
| L2OutputOracle | unknown | ethereum | n/a | [`0x19a6d1e9034596196295cf148509796978343c5d`](./contracts/ethereum-1/0x19a6d1e9034596196295cf148509796978343c5d/) | ⚠️ Unaudited |
| LivenessGuard | unknown | ethereum | n/a | [`0x24424336f04440b1c28685a38303ac33c9d14a25`](./contracts/ethereum-1/0x24424336f04440b1c28685a38303ac33c9d14a25/) | ⚠️ Unaudited |
| LivenessModule | unknown | ethereum | n/a | [`0x0454092516c9a4d636d3cafa1e82161376c8a748`](./contracts/ethereum-1/0x0454092516c9a4d636d3cafa1e82161376c8a748/) | ⚠️ Unaudited |
| MIPS | unknown | ethereum | n/a | [`0x16e83ce5ce29bf90ad9da06d2fe6a15d5f344ce4`](./contracts/ethereum-1/0x16e83ce5ce29bf90ad9da06d2fe6a15d5f344ce4/) | ⚠️ Unaudited |
| OpStateBridge | unknown | ethereum | n/a | [`0x0939726264f2667429ef68e2b3734ecfbbad3abb`](./contracts/ethereum-1/0x0939726264f2667429ef68e2b3734ecfbbad3abb/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0x82cb528466cf22412d89bdbe9bcf04856790dd0e`](./contracts/ethereum-1/0x82cb528466cf22412d89bdbe9bcf04856790dd0e/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | [`0xd5ec14a83b7d95be1e2ac12523e2dee12cbeea6c`](./contracts/ethereum-1/0xd5ec14a83b7d95be1e2ac12523e2dee12cbeea6c/) | ⚠️ Unaudited |
| Pairing | unknown | ethereum | n/a | [`0x57f928158c3ee7cdad1e4d8642503c4d0201f611`](./contracts/ethereum-1/0x57f928158c3ee7cdad1e4d8642503c4d0201f611/) | ⚠️ Unaudited |
| PermissionedDisputeGame | unknown | ethereum | n/a | [`0x48cf980849a7eea03180f7dea4e21c112097b03e`](./contracts/ethereum-1/0x48cf980849a7eea03180f7dea4e21c112097b03e/) | ⚠️ Unaudited |
| PolygonStateBridge | unknown | ethereum | n/a | [`0x76db75dc752305e2debd44c479680352f3bb766f`](./contracts/ethereum-1/0x76db75dc752305e2debd44c479680352f3bb766f/) | ⚠️ Unaudited |
| PreimageOracle | unknown | ethereum | n/a | [`0x92240135b46fc1142da181f550ae8f595b858854`](./contracts/ethereum-1/0x92240135b46fc1142da181f550ae8f595b858854/) | ⚠️ Unaudited |
| ProtocolVersions | unknown | ethereum | n/a | [`0x8eef04eef96fef1050702453f75f0fc4f8f70973`](./contracts/ethereum-1/0x8eef04eef96fef1050702453f75f0fc4f8f70973/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x95703e0982140d16f8eba6d158fccede42f04a4c`](./contracts/ethereum-1/0x95703e0982140d16f8eba6d158fccede42f04a4c/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0xf9adf7c9502c5c60352c20a4d22683422dbd061f`](./contracts/ethereum-1/0xf9adf7c9502c5c60352c20a4d22683422dbd061f/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0xd7405be7f3e63b094af6c7c23d5ee33fd82f872d`](./contracts/ethereum-1/0xd7405be7f3e63b094af6c7c23d5ee33fd82f872d/) | ⚠️ Unaudited |
| Safe4337Module | unknown | ethereum | n/a | [`0x75cf11467937ce3f2f357ce24ffc3dbf8fd5c226`](./contracts/ethereum-1/0x75cf11467937ce3f2f357ce24ffc3dbf8fd5c226/) | ⚠️ Unaudited |
| SafeL2 | unknown | ethereum | n/a | [`0x29fcb43b46531bca003ddc8fcb67ffe91900c762`](./contracts/ethereum-1/0x29fcb43b46531bca003ddc8fcb67ffe91900c762/) | ⚠️ Unaudited |
| SafeProxyFactory | unknown | ethereum | n/a | [`0x4e1dcf7ad4e460cfd30791ccc4f9c8a4f820ec67`](./contracts/ethereum-1/0x4e1dcf7ad4e460cfd30791ccc4f9c8a4f820ec67/) | ⚠️ Unaudited |
| SemaphoreVerifier | unknown | ethereum | n/a | [`0x443ad7acf39baa104b2e70fa5cf6fe32cc28abee`](./contracts/ethereum-1/0x443ad7acf39baa104b2e70fa5cf6fe32cc28abee/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0x33a032ec93ec0c492ec4bf0b30d5f51986e5a314`](./contracts/ethereum-1/0x33a032ec93ec0c492ec4bf0b30d5f51986e5a314/) | ⚠️ Unaudited |
| Verifier | unknown | ethereum | n/a | [`0x03ad26786469c1f12595b0309d151fe928db6c4d`](./contracts/ethereum-1/0x03ad26786469c1f12595b0309d151fe928db6c4d/) | ⚠️ Unaudited |

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
| [VE Governance plugin - Audit 4 _ SSC.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/VE%20Governance%20plugin%20-%20Audit%204%20_%20SSC.pdf) | SSC | Audit | 2025-01 | aging | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [halborn-3.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/halborn-3.pdf) | Halborn | Audit | 2025-01 | aging | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [report-mode-lock-solo-review.pdf](https://github.com/mode-network/public-audits/blob/main/reports/report-mode-lock-solo-review.pdf) | Solo Review | Audit | 2024-05 | stale | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [report-mode-governancetoken-solo-review.pdf](https://github.com/mode-network/public-audits/blob/main/reports/report-mode-governancetoken-solo-review.pdf) | Solo Review | Audit | 2024-04 | stale | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [VE Governance Updates _ SSC.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/VE%20Governance%20Updates%20_%20SSC.pdf) | SSC | Audit | 2024-01 | stale | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [audit_halborn.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/audit_halborn.pdf) | Halborn | Audit | 2024-01 | stale | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [AUDIT_2.md](https://github.com/aragon/ve-governance/blob/develop/audits/AUDIT_2.md) | unknown | Audit | n/a | unknown | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [AUDIT_3.md](https://github.com/aragon/ve-governance/blob/develop/audits/AUDIT_3.md) | unknown | Audit | n/a | unknown | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [NM0122-FINAL_WORLDCOIN.pdf](https://github.com/NethermindEth/PublicAuditReports/blob/main/NM0122-FINAL_WORLDCOIN.pdf) | Nethermind | Audit | 2023-07 | stale | Direct | contract_name | 5 | high |
| [leastauthority.com/blog/the-audit-of-worldcoin-protocol-cryptography](https://leastauthority.com/blog/the-audit-of-worldcoin-protocol-cryptography) | Least Authority | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [AUDIT_REPORT_4.md](https://github.com/aragon/ve-governance/blob/develop/audits/AUDIT_REPORT_4.md) | unknown | Audit | 2025-10 | fresh | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [Clock_v1_2_0_audit_report.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/Clock_v1_2_0_audit_report.md) | LLM | Audit | 2025-08 | fresh | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [DynamicExitQueue_audit.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/DynamicExitQueue_audit.md) | LLM | Audit | 2025-08 | fresh | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [Lock_v1_2_0_audit.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/Lock_v1_2_0_audit.md) | LLM | Audit | 2025-08 | fresh | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5891090d5085679714cb0e62f74950a3c19146a8`](./contracts/ethereum-1/0x5891090d5085679714cb0e62f74950a3c19146a8/) | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1325c4966d17038c5592fb38416aee85ee73c0cb`](./contracts/ethereum-1/0x1325c4966d17038c5592fb38416aee85ee73c0cb/) | AnchorStateRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ec1111f67dad6b6a93b3f42dfbc92d81c98449a`](./contracts/ethereum-1/0x8ec1111f67dad6b6a93b3f42dfbc92d81c98449a/) | DelayedWETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x069c4c579671f8c120b1327a73217d01ea2ec5ea`](./contracts/ethereum-1/0x069c4c579671f8c120b1327a73217d01ea2ec5ea/) | DisputeGameFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0000000071727de22e5e9d8baf0edac6f37da032`](./contracts/ethereum-1/0x0000000071727de22e5e9d8baf0edac6f37da032/) | EntryPoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa6b71e26c5e0845f74c812102ca7114b6a896ab2`](./contracts/ethereum-1/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/) | GnosisSafeProxyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf931a81d18b1766d15695ffc7c1920a62b7e710a`](./contracts/ethereum-1/0xf931a81d18b1766d15695ffc7c1920a62b7e710a/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1df436afdb2fbb40f1fe8bed4fc89a0d0990a8e9`](./contracts/ethereum-1/0x1df436afdb2fbb40f1fe8bed4fc89a0d0990a8e9/) | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x153a69e4bb6fedbbaaf463cb982416316c84b2db`](./contracts/ethereum-1/0x153a69e4bb6fedbbaaf463cb982416316c84b2db/) | L1OpUSDCBridgeAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x470458c91978d2d929704489ad730dc3e3001113`](./contracts/ethereum-1/0x470458c91978d2d929704489ad730dc3e3001113/) | L1StandardBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19a6d1e9034596196295cf148509796978343c5d`](./contracts/ethereum-1/0x19a6d1e9034596196295cf148509796978343c5d/) | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24424336f04440b1c28685a38303ac33c9d14a25`](./contracts/ethereum-1/0x24424336f04440b1c28685a38303ac33c9d14a25/) | LivenessGuard | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0454092516c9a4d636d3cafa1e82161376c8a748`](./contracts/ethereum-1/0x0454092516c9a4d636d3cafa1e82161376c8a748/) | LivenessModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16e83ce5ce29bf90ad9da06d2fe6a15d5f344ce4`](./contracts/ethereum-1/0x16e83ce5ce29bf90ad9da06d2fe6a15d5f344ce4/) | MIPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0939726264f2667429ef68e2b3734ecfbbad3abb`](./contracts/ethereum-1/0x0939726264f2667429ef68e2b3734ecfbbad3abb/) | OpStateBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82cb528466cf22412d89bdbe9bcf04856790dd0e`](./contracts/ethereum-1/0x82cb528466cf22412d89bdbe9bcf04856790dd0e/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd5ec14a83b7d95be1e2ac12523e2dee12cbeea6c`](./contracts/ethereum-1/0xd5ec14a83b7d95be1e2ac12523e2dee12cbeea6c/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x57f928158c3ee7cdad1e4d8642503c4d0201f611`](./contracts/ethereum-1/0x57f928158c3ee7cdad1e4d8642503c4d0201f611/) | Pairing | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x48cf980849a7eea03180f7dea4e21c112097b03e`](./contracts/ethereum-1/0x48cf980849a7eea03180f7dea4e21c112097b03e/) | PermissionedDisputeGame | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76db75dc752305e2debd44c479680352f3bb766f`](./contracts/ethereum-1/0x76db75dc752305e2debd44c479680352f3bb766f/) | PolygonStateBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92240135b46fc1142da181f550ae8f595b858854`](./contracts/ethereum-1/0x92240135b46fc1142da181f550ae8f595b858854/) | PreimageOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8eef04eef96fef1050702453f75f0fc4f8f70973`](./contracts/ethereum-1/0x8eef04eef96fef1050702453f75f0fc4f8f70973/) | ProtocolVersions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75cf11467937ce3f2f357ce24ffc3dbf8fd5c226`](./contracts/ethereum-1/0x75cf11467937ce3f2f357ce24ffc3dbf8fd5c226/) | Safe4337Module | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x443ad7acf39baa104b2e70fa5cf6fe32cc28abee`](./contracts/ethereum-1/0x443ad7acf39baa104b2e70fa5cf6fe32cc28abee/) | SemaphoreVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x33a032ec93ec0c492ec4bf0b30d5f51986e5a314`](./contracts/ethereum-1/0x33a032ec93ec0c492ec4bf0b30d5f51986e5a314/) | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03ad26786469c1f12595b0309d151fe928db6c4d`](./contracts/ethereum-1/0x03ad26786469c1f12595b0309d151fe928db6c4d/) | Verifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=5, inherited_name_remap=12

Zero-match audit list:

- [21204] leastauthority.com/blog/the-audit-of-worldcoin-protocol-cryptography

Fork inheritance lineage and inherited audits are included when available.
