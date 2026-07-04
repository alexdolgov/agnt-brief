# Agentic Audit Brief: Optimism Bridge

## Project Overview

- Project: Optimism Bridge (`optimism-bridge`)
- Website: [https://app.optimism.io/bridge/deposit](https://app.optimism.io/bridge/deposit)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:38.666Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum, optimism
- Contract surface: 60 unique implementations (60 raw deployments)
- DeFi Llama TVL: $578,975,451.24
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 60 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 4 common project-authored base contract(s) (lib_addressresolver, abs_fraudcontributor, resourcemetering). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Mode Bridge** (`mode-bridge`) in the DeputyGuardianModule, PermissionedDisputeGameV2 subsystem.
12 audits inherited from `mode-bridge`, scoped to that subsystem.

This project reuses audited code from **BOB Fusion** (`bob-fusion`) in the PermissionedDisputeGame subsystem.
8 audits inherited from `bob-fusion`, scoped to that subsystem.

Total inherited audits: 20. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 60; live-surface contracts included: 60 (60 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/60 (5.0%)
- Deployed-live implementations: 60 of 60 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/60
- Verified + Unaudited implementations: 57
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 60
- Raw deployments: 60
- Audits discovered: 20 (0 direct, 20 inherited from forked code)
- Scoreable audits (matched contracts): 20
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 7 fresh, 7 aging, 4 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 1.7% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 2 | 3.3% | 2025-01 |
| LLM | Tier 2 | 2 | 3.3% | 2025-08 |
| Solo Review | Tier 2 | 2 | 3.3% | 2024-05 |
| SSC | Tier 2 | 2 | 3.3% | 2025-01 |
| unknown | Tier 2 | 2 | 3.3% | 2025-10 |
| Code4rena | Tier 1 | 1 | 1.7% | 2025-05 |
| Pashov | Tier 2 | 1 | 1.7% | 2025-10 |
| Pashov Audit Group | Tier 2 | 1 | 1.7% | 2025-10 |
| yAudit | Tier 2 | 1 | 1.7% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DeputyGuardianModule | unknown | ethereum | n/a | [`0x5dc91d...e4d2a8`](./contracts/ethereum-1/0x5dc91d01290af474ce21de14c17335a6dee4d2a8/) | ✅ Audited |
| PermissionedDisputeGame | unknown | ethereum | n/a | [`0xc307e9...57b62f`](./contracts/ethereum-1/0xc307e93a7c530a184c98eade4545a412b857b62f/) | ✅ Audited |
| PermissionedDisputeGameV2 | unknown | ethereum | n/a | [`0x58bf35...43266a`](./contracts/ethereum-1/0x58bf355c5d4edfc723ef89d99582eccfd143266a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (57)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AnchorStateRegistry | unknown | ethereum | n/a | [`0x18dac7...75e443`](./contracts/ethereum-1/0x18dac71c228d1c32c99489b7323d441e1175e443/) | ⚠️ Unaudited |
| DeployerWhitelist | unknown | optimism | n/a | [`0x420000...000002`](./contracts/optimism-10/0x4200000000000000000000000000000000000002/) | ⚠️ Unaudited |
| DisputeGameFactory | unknown | ethereum | n/a | [`0xe5965a...252fa9`](./contracts/ethereum-1/0xe5965ab5962edc7477c8520243a95517cd252fa9/) | ⚠️ Unaudited |
| FaultDisputeGame | unknown | ethereum | n/a | [`0x4146df...65e122`](./contracts/ethereum-1/0x4146df64d83acb0dcb0c1a4884a16f090165e122/) | ⚠️ Unaudited |
| FaultDisputeGameV2 | unknown | ethereum | n/a | [`0x6ddba0...707499`](./contracts/ethereum-1/0x6ddba09bc4ccb0d6ca9fc5350580f74165707499/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x09f715...efdaf2`](./contracts/ethereum-1/0x09f7150d8c019bef34450d6920f6b3608cefdaf2/) | ⚠️ Unaudited |
| GovernanceToken | unknown | optimism | n/a | [`0x420000...000042`](./contracts/optimism-10/0x4200000000000000000000000000000000000042/) | ⚠️ Unaudited |
| L1BlockNumber | unknown | optimism | n/a | [`0x420000...000013`](./contracts/optimism-10/0x4200000000000000000000000000000000000013/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x2150bc...1bfe43`](./contracts/ethereum-1/0x2150bc3c64cbfddbac9815ef615d6ab8671bfe43/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0x3268ed...5ab5c2`](./contracts/ethereum-1/0x3268ed09f76e619331528270b6267d4d2c5ab5c2/) | ⚠️ Unaudited |
| L1StandardBridge | unknown | ethereum | n/a | [`0x99c9fc...884be1`](./contracts/ethereum-1/0x99c9fc46f92e8a1c0dec1b1747d010903e884be1/) | ⚠️ Unaudited |
| L2OutputOracle | unknown | ethereum | n/a | [`0xd2e67b...2c2e00`](./contracts/ethereum-1/0xd2e67b6a032f0a9b1f569e63ad6c38f7342c2e00/) | ⚠️ Unaudited |
| LegacyERC20ETH | unknown | optimism | n/a | [`0xdeadde...ad0000`](./contracts/optimism-10/0xdeaddeaddeaddeaddeaddeaddeaddeaddead0000/) | ⚠️ Unaudited |
| LegacyMessagePasser | unknown | optimism | n/a | [`0x420000...000000`](./contracts/optimism-10/0x4200000000000000000000000000000000000000/) | ⚠️ Unaudited |
| Lib_AddressManager | unknown | ethereum | n/a | [`0xde1fcf...6bd81f`](./contracts/ethereum-1/0xde1fcfb0851916ca5101820a69b13a4e276bd81f/) | ⚠️ Unaudited |
| LivenessGuard | unknown | ethereum | n/a | [`0x244243...d14a25`](./contracts/ethereum-1/0x24424336f04440b1c28685a38303ac33c9d14a25/) | ⚠️ Unaudited |
| LivenessModule | unknown | ethereum | n/a | [`0x045409...c8a748`](./contracts/ethereum-1/0x0454092516c9a4d636d3cafa1e82161376c8a748/) | ⚠️ Unaudited |
| MIPS64 | unknown | ethereum | n/a | [`0x6463de...edb908`](./contracts/ethereum-1/0x6463dee3828677f6270d83d45408044fc5edb908/) | ⚠️ Unaudited |
| mockOVM_BondManager | unknown | ethereum | n/a | [`0xcd76de...c49057`](./contracts/ethereum-1/0xcd76de5c57004d47d0216ec7dabd3c72d8c49057/) | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | n/a | [`0x28a554...0a64ab`](./contracts/ethereum-1/0x28a55488fef40005309e2da0040dbe9d300a64ab/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | [`0xbeb5fc...f106ed`](./contracts/ethereum-1/0xbeb5fc579115071764c7423a4f12edde41f106ed/) | ⚠️ Unaudited |
| OVM_CanonicalTransactionChain | unknown | ethereum | n/a | [`0x4bf681...2f6cf6`](./contracts/ethereum-1/0x4bf681894abec828b212c906082b444ceb2f6cf6/) | ⚠️ Unaudited |
| OVM_ChainStorageContainer | unknown | ethereum | n/a | [`0x3ea1a3...ecc3ee`](./contracts/ethereum-1/0x3ea1a3839d8ca9a7ff3c567a9f36f4c4dbecc3ee/) | ⚠️ Unaudited |
| OVM_ExecutionManager | unknown | ethereum | n/a | [`0x2745c2...5619f5`](./contracts/ethereum-1/0x2745c24822f542bbffb41c6cb20edf766b5619f5/) | ⚠️ Unaudited |
| OVM_FraudVerifier | unknown | ethereum | n/a | [`0x042065...840d15`](./contracts/ethereum-1/0x042065416c5c665dc196076745326af3cd840d15/) | ⚠️ Unaudited |
| OVM_L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x163937...699f1d`](./contracts/ethereum-1/0x16393737d09d2722ad13dca3ca8c3db957699f1d/) | ⚠️ Unaudited |
| OVM_L1MultiMessageRelayer | unknown | ethereum | n/a | [`0xf26391...7ea891`](./contracts/ethereum-1/0xf26391fbb1f77481f80a7d646ac08ba3817ea891/) | ⚠️ Unaudited |
| OVM_SafetyChecker | unknown | ethereum | n/a | [`0xfe1f9c...6035cc`](./contracts/ethereum-1/0xfe1f9cf28ecdb12110aa8086e6fd343ea06035cc/) | ⚠️ Unaudited |
| OVM_StateCommitmentChain | unknown | ethereum | n/a | [`0xe969c2...5998c1`](./contracts/ethereum-1/0xe969c2724d2448f1d1a6189d3e2aa1f37d5998c1/) | ⚠️ Unaudited |
| OVM_StateManagerFactory | unknown | ethereum | n/a | [`0xd0e3e3...6ff98d`](./contracts/ethereum-1/0xd0e3e318154716bd9d007e1e6b021eab246ff98d/) | ⚠️ Unaudited |
| OVM_StateTransitionerFactory | unknown | ethereum | n/a | [`0x38a6ed...782b67`](./contracts/ethereum-1/0x38a6ed6fd76035684cadef38cf49a2fffa782b67/) | ⚠️ Unaudited |
| PortalSender | unknown | ethereum | n/a | [`0x0a893d...e78210`](./contracts/ethereum-1/0x0a893d9576b9cfd9ef78595963dc973238e78210/) | ⚠️ Unaudited |
| PreimageOracle | unknown | ethereum | n/a | [`0x1fb8cd...87add3`](./contracts/ethereum-1/0x1fb8cdfc6831fc866ed9c51af8817da5c287add3/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x322b47...294d43`](./contracts/ethereum-1/0x322b47ff1fa8d5611f761e3e275c45b71b294d43/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x8062ab...93b935`](./contracts/ethereum-1/0x8062abc286f5e7d9428a0ccb9abd71e50d93b935/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x95703e...f04a4c`](./contracts/ethereum-1/0x95703e0982140d16f8eba6d158fccede42f04a4c/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0xd061ab...1e2d0e`](./contracts/ethereum-1/0xd061ab95069987868768818cc1248705351e2d0e/) | ⚠️ Unaudited |
| Proxy | unknown | optimism | n/a | [`0x420000...000001`](./contracts/optimism-10/0x4200000000000000000000000000000000000001/) | ⚠️ Unaudited |
| Proxy | unknown | optimism | n/a | [`0x420000...000007`](./contracts/optimism-10/0x4200000000000000000000000000000000000007/) | ⚠️ Unaudited |
| Proxy | unknown | optimism | n/a | [`0x420000...00000f`](./contracts/optimism-10/0x420000000000000000000000000000000000000f/) | ⚠️ Unaudited |
| Proxy | unknown | optimism | n/a | [`0x420000...000010`](./contracts/optimism-10/0x4200000000000000000000000000000000000010/) | ⚠️ Unaudited |
| Proxy | unknown | optimism | n/a | [`0x420000...000011`](./contracts/optimism-10/0x4200000000000000000000000000000000000011/) | ⚠️ Unaudited |
| Proxy | unknown | optimism | n/a | [`0x420000...000012`](./contracts/optimism-10/0x4200000000000000000000000000000000000012/) | ⚠️ Unaudited |
| Proxy | unknown | optimism | n/a | [`0x420000...000014`](./contracts/optimism-10/0x4200000000000000000000000000000000000014/) | ⚠️ Unaudited |
| Proxy | unknown | optimism | n/a | [`0x420000...000015`](./contracts/optimism-10/0x4200000000000000000000000000000000000015/) | ⚠️ Unaudited |
| Proxy | unknown | optimism | n/a | [`0x420000...000016`](./contracts/optimism-10/0x4200000000000000000000000000000000000016/) | ⚠️ Unaudited |
| Proxy | unknown | optimism | n/a | [`0x420000...000017`](./contracts/optimism-10/0x4200000000000000000000000000000000000017/) | ⚠️ Unaudited |
| Proxy | unknown | optimism | n/a | [`0x420000...000018`](./contracts/optimism-10/0x4200000000000000000000000000000000000018/) | ⚠️ Unaudited |
| Proxy | unknown | optimism | n/a | [`0x420000...000019`](./contracts/optimism-10/0x4200000000000000000000000000000000000019/) | ⚠️ Unaudited |
| Proxy | unknown | optimism | n/a | [`0x420000...00001a`](./contracts/optimism-10/0x420000000000000000000000000000000000001a/) | ⚠️ Unaudited |
| Proxy | unknown | optimism | n/a | [`0x420000...00001b`](./contracts/optimism-10/0x420000000000000000000000000000000000001b/) | ⚠️ Unaudited |
| Proxy | unknown | optimism | n/a | [`0x420000...000020`](./contracts/optimism-10/0x4200000000000000000000000000000000000020/) | ⚠️ Unaudited |
| Proxy | unknown | optimism | n/a | [`0x420000...000021`](./contracts/optimism-10/0x4200000000000000000000000000000000000021/) | ⚠️ Unaudited |
| SaferSafes | unknown | ethereum | n/a | [`0xa84473...9f483a`](./contracts/ethereum-1/0xa8447329e52f64aed2bfc9e7a2506f7d369f483a/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0x229047...9eb290`](./contracts/ethereum-1/0x229047fed2591dbec1ef1118d64f7af3db9eb290/) | ⚠️ Unaudited |
| SystemDictator | unknown | ethereum | n/a | [`0x09e040...83488a`](./contracts/ethereum-1/0x09e040a72fd3492355c5aeedbc3154075f83488a/) | ⚠️ Unaudited |
| WETH9 | unknown | optimism | n/a | [`0x420000...000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |

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
| [VE Governance plugin - Audit 4 _ SSC.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/VE%20Governance%20plugin%20-%20Audit%204%20_%20SSC.pdf) | SSC | Audit | 2025-01 | aging | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 2 | n/a |
| [halborn-3.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/halborn-3.pdf) | Halborn | Audit | 2025-01 | aging | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 2 | n/a |
| [report-mode-lock-solo-review.pdf](https://github.com/mode-network/public-audits/blob/main/reports/report-mode-lock-solo-review.pdf) | Solo Review | Audit | 2024-05 | stale | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 2 | n/a |
| [report-mode-governancetoken-solo-review.pdf](https://github.com/mode-network/public-audits/blob/main/reports/report-mode-governancetoken-solo-review.pdf) | Solo Review | Audit | 2024-04 | stale | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 2 | n/a |
| [VE Governance Updates _ SSC.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/VE%20Governance%20Updates%20_%20SSC.pdf) | SSC | Audit | 2024-01 | stale | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 2 | n/a |
| [audit_halborn.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/audit_halborn.pdf) | Halborn | Audit | 2024-01 | stale | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 2 | n/a |
| [AUDIT_2.md](https://github.com/aragon/ve-governance/blob/develop/audits/AUDIT_2.md) | unknown | Audit | n/a | unknown | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 2 | n/a |
| [AUDIT_3.md](https://github.com/aragon/ve-governance/blob/develop/audits/AUDIT_3.md) | unknown | Audit | n/a | unknown | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 2 | n/a |
| [AUDIT_REPORT_4.md](https://github.com/aragon/ve-governance/blob/develop/audits/AUDIT_REPORT_4.md) | unknown | Audit | 2025-10 | fresh | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 2 | n/a |
| [Clock_v1_2_0_audit_report.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/Clock_v1_2_0_audit_report.md) | LLM | Audit | 2025-08 | fresh | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 2 | n/a |
| [DynamicExitQueue_audit.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/DynamicExitQueue_audit.md) | LLM | Audit | 2025-08 | fresh | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 2 | n/a |
| [Lock_v1_2_0_audit.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/Lock_v1_2_0_audit.md) | LLM | Audit | 2025-08 | fresh | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 2 | n/a |
| [BobTokenV2-Pashov-Audit-Report-Oct-2025-0263f8b0c49bf2b75df5b6bcad9fbcc9.pdf](https://docs.gobob.xyz/assets/files/BobTokenV2-Pashov-Audit-Report-Oct-2025-0263f8b0c49bf2b75df5b6bcad9fbcc9.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 1 | n/a |
| [BobStaking-security-review_2025-10-18-f54577c242e3990575db4789a421c165.pdf](https://docs.gobob.xyz/assets/files/BobStaking-security-review_2025-10-18-f54577c242e3990575db4789a421c165.pdf) | Pashov | Audit | 2025-10 | fresh | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 1 | n/a |
| [Pashov-Audit-Report-2025-offramp-solver-e6126bcad381876b88a6550ddde8aa88.pdf](https://docs.gobob.xyz/assets/files/Pashov-Audit-Report-2025-offramp-solver-e6126bcad381876b88a6550ddde8aa88.pdf) | Pashov Audit Group | Audit | 2025-08 | fresh | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 1 | n/a |
| [veridise-kailua-20250616-92721909a6b90ab336d6fae5365a76d4.pdf](https://docs.gobob.xyz/assets/files/veridise-kailua-20250616-92721909a6b90ab336d6fae5365a76d4.pdf) | yAudit | Audit | 2025-06 | aging | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 1 | n/a |
| [veridise-kailua-20250522-d1dff99d6a1be809bcb27c48671c8b46.pdf](https://docs.gobob.xyz/assets/files/veridise-kailua-20250522-d1dff99d6a1be809bcb27c48671c8b46.pdf) | Code4rena | Contest | 2025-05 | aging | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 1 | n/a |
| [BOB-security-review_2025-03-17-3ab501a0f6519fc8f95c9f285481414b.pdf](https://docs.gobob.xyz/assets/files/BOB-security-review_2025-03-17-3ab501a0f6519fc8f95c9f285481414b.pdf) | Pashov | Audit | 2025-03 | aging | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 1 | n/a |
| [veridise-kailua-20250217-c317614d026618741e34d6a269c5f9e9.pdf](https://docs.gobob.xyz/assets/files/veridise-kailua-20250217-c317614d026618741e34d6a269c5f9e9.pdf) | yAudit | Audit | 2025-02 | aging | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 1 | n/a |
| [BobToken-Pashov-Audit-Report-Feb-2025-9f199a39dec0967a6e789403c9fc896d.pdf](https://docs.gobob.xyz/assets/files/BobToken-Pashov-Audit-Report-Feb-2025-9f199a39dec0967a6e789403c9fc896d.pdf) | Pashov Audit Group | Audit | 2025-02 | aging | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 60 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=32

Fork inheritance lineage and inherited audits are included when available.
