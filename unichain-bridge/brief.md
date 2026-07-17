# Agentic Audit Brief: Unichain Bridge

## Project Overview

- Project: Unichain Bridge (`unichain-bridge`)
- Website: [https://www.unichain.org](https://www.unichain.org)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.800Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: ethereum, unichain
- Contract surface: 39 unique implementations (52 raw deployments)
- DeFi Llama TVL: $2,187,994.07
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 38 project-authored contract(s) across 2 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 2 common project-authored base contract(s) (ownableupgradeable, contextupgradeable). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Mode Bridge** (`mode-bridge`) in the DeputyGuardianModule, PermissionedDisputeGameV2 subsystem.
12 audits inherited from `mode-bridge`, scoped to that subsystem.

This project reuses audited code from **BOB Fusion** (`bob-fusion`) in the PermissionedDisputeGame subsystem.
8 audits inherited from `bob-fusion`, scoped to that subsystem.

Total inherited audits: 20. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 53; live-surface contracts included: 52 (52 live, 0 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/33 (6.1%)
- Deployed-live implementations: 39 of 39 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/39
- Verified + Unaudited implementations: 37
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 39
- Raw deployments: 52
- Audits discovered: 20 (0 direct, 20 inherited from forked code)
- Scoreable audits (matched contracts): 20
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 7 fresh, 7 aging, 4 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 3.0% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 1 | 2.6% | 2025-05 |
| Halborn | Tier 2 | 1 | 2.6% | 2025-01 |
| LLM | Tier 2 | 1 | 2.6% | 2025-08 |
| Pashov | Tier 2 | 1 | 2.6% | 2025-10 |
| Pashov Audit Group | Tier 2 | 1 | 2.6% | 2025-10 |
| Solo Review | Tier 2 | 1 | 2.6% | 2024-05 |
| SSC | Tier 2 | 1 | 2.6% | 2025-01 |
| unknown | Tier 2 | 1 | 2.6% | 2025-10 |
| yAudit | Tier 2 | 1 | 2.6% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PermissionedDisputeGame | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa35f3d6b5c1ab1de36fe830fc4288fd585685772`](./contracts/ethereum-1/0xa35f3d6b5c1ab1de36fe830fc4288fd585685772/); ethereum `0xb2872ec9e7074d5838d9a27ae06c53dba8669e8d` | ✅ Audited |
| PermissionedDisputeGameV2 | unknown | ethereum | n/a | [`0x58bf355c5d4edfc723ef89d99582eccfd143266a`](./contracts/ethereum-1/0x58bf355c5d4edfc723ef89d99582eccfd143266a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (37)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressManager | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7e2e1fe92d67f0199708056a22c34d1331b8def6`](./contracts/ethereum-1/0x7e2e1fe92d67f0199708056a22c34d1331b8def6/); ethereum `0x8098f676033a377b9defe302e9fe6877cd63d575`; ethereum `0xc9fd0ff9a7aca948fe21cc515e169795179fce07` | ⚠️ Unaudited |
| AnchorStateRegistry | registry | ethereum | n/a | [`0x27cf508e4e3aa8d30b3226ac3b5ea0e8bcacaff9`](./contracts/ethereum-1/0x27cf508e4e3aa8d30b3226ac3b5ea0e8bcacaff9/) | ⚠️ Unaudited |
| AnchorStateRegistry | unknown | ethereum | n/a | [`0x318a642db9e24a85318b8bf18efd5287ba38643b`](./contracts/ethereum-1/0x318a642db9e24a85318b8bf18efd5287ba38643b/) | ⚠️ Unaudited |
| AnchorStateRegistry | unknown | ethereum | n/a | [`0x40152233ec04c4c9894ab804f7a932ee8dd76e48`](./contracts/ethereum-1/0x40152233ec04c4c9894ab804f7a932ee8dd76e48/) | ⚠️ Unaudited |
| DelayedWETH | token | ethereum | n/a | 2 deployments: ethereum [`0x0bdbec6bd35571f97f96f3ed21822a4f2e071a3c`](./contracts/ethereum-1/0x0bdbec6bd35571f97f96f3ed21822a4f2e071a3c/); ethereum `0xe62b0279f6a466c5e1676f3ea955086300bcd0ac` | ⚠️ Unaudited |
| DelayedWETH | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4755de7b3ea590d76eb15e1217456e948075826f`](./contracts/ethereum-1/0x4755de7b3ea590d76eb15e1217456e948075826f/); ethereum `0x7d8ea656d7417229f420b0c87f6428baa8499d70`; ethereum `0x92ac36624399fa4bacf32bdc0f4f0d50cb04230d`; ethereum `0xc49b2df077ef27847d8ade07fbf734a1fe9a9da2` | ⚠️ Unaudited |
| DisputeGameFactory | registry | ethereum | n/a | [`0x2f12d621a16e2d3285929c9996f478508951dfe4`](./contracts/ethereum-1/0x2f12d621a16e2d3285929c9996f478508951dfe4/) | ⚠️ Unaudited |
| DisputeGameFactory | unknown | ethereum | n/a | [`0x86a380b7ce4f036cf7e1a4fb1dd1ed9349989be9`](./contracts/ethereum-1/0x86a380b7ce4f036cf7e1a4fb1dd1ed9349989be9/) | ⚠️ Unaudited |
| ETHLockbox | unknown | ethereum | n/a | [`0x08ba0023ed60c7bd040716dd13c45fa0062df5c5`](./contracts/ethereum-1/0x08ba0023ed60c7bd040716dd13c45fa0062df5c5/) | ⚠️ Unaudited |
| FaultDisputeGameV2 | unknown | ethereum | n/a | [`0x6ddba09bc4ccb0d6ca9fc5350580f74165707499`](./contracts/ethereum-1/0x6ddba09bc4ccb0d6ca9fc5350580f74165707499/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | 2 deployments: ethereum [`0x847b5c174615b1b7fdf770882256e2d3e95b9d92`](./contracts/ethereum-1/0x847b5c174615b1b7fdf770882256e2d3e95b9d92/); ethereum `0xc2819dc788505aac350142a7a707bf9d03e3bd03` | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x9a3d64e386c18cb1d6d5179a9596a4b5736e98a6`](./contracts/ethereum-1/0x9a3d64e386c18cb1d6d5179a9596a4b5736e98a6/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0x3080177e8503b63aa97f15caba69099d7668f339`](./contracts/ethereum-1/0x3080177e8503b63aa97f15caba69099d7668f339/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0xd04d0d87e0bd4d2e50286760a3ef323fea6849cf`](./contracts/ethereum-1/0xd04d0d87e0bd4d2e50286760a3ef323fea6849cf/) | ⚠️ Unaudited |
| L1LidoTokensBridge | operational_periphery | ethereum | n/a | [`0x755610f5be536ad7afbaa7c10f3e938ea3aa1877`](./contracts/ethereum-1/0x755610f5be536ad7afbaa7c10f3e938ea3aa1877/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | n/a | [`0x81014f44b0a345033bb2b3b21c7a1a308b35feea`](./contracts/ethereum-1/0x81014f44b0a345033bb2b3b21c7a1a308b35feea/) | ⚠️ Unaudited |
| L1StandardBridge | unknown | ethereum | n/a | [`0x9e7569992f417cad770b8114d2df4078f0b98eb5`](./contracts/ethereum-1/0x9e7569992f417cad770b8114d2df4078f0b98eb5/) | ⚠️ Unaudited |
| L2CrossDomainMessenger | unknown | unichain | n/a | [`0x4200000000000000000000000000000000000007`](./contracts/unichain-130/0x4200000000000000000000000000000000000007/) | ⚠️ Unaudited |
| L2StandardBridge | operational_periphery | unichain | n/a | [`0x4200000000000000000000000000000000000010`](./contracts/unichain-130/0x4200000000000000000000000000000000000010/) | ⚠️ Unaudited |
| L2ToL1MessagePasser | unknown | unichain | n/a | [`0x4200000000000000000000000000000000000016`](./contracts/unichain-130/0x4200000000000000000000000000000000000016/) | ⚠️ Unaudited |
| MIPS64 | unknown | ethereum | n/a | [`0x6463dee3828677f6270d83d45408044fc5edb908`](./contracts/ethereum-1/0x6463dee3828677f6270d83d45408044fc5edb908/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0x98742ec6718b49c32aee6daccf5245980fa5d286`](./contracts/ethereum-1/0x98742ec6718b49c32aee6daccf5245980fa5d286/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0xa2b597eaeacb6f627e088cbead319e934ed5edad`](./contracts/ethereum-1/0xa2b597eaeacb6f627e088cbead319e934ed5edad/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | unichain | n/a | [`0x4200000000000000000000000000000000000012`](./contracts/unichain-130/0x4200000000000000000000000000000000000012/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | [`0x0bd48f6b86a26d3a217d0fa6ffe2b491b956a7a2`](./contracts/ethereum-1/0x0bd48f6b86a26d3a217d0fa6ffe2b491b956a7a2/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | [`0xd3a31c6de8f346e5b456fbc3e4b5eabb3a2b3963`](./contracts/ethereum-1/0xd3a31c6de8f346e5b456fbc3e4b5eabb3a2b3963/) | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x1fb8cdfc6831fc866ed9c51af8817da5c287add3`](./contracts/ethereum-1/0x1fb8cdfc6831fc866ed9c51af8817da5c287add3/); ethereum `0x9c065e11870b891d214bc2da7ef1f9ddfa1be277` | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x86b30e3263250c9f947cdb711a2c16cda81d9adf`](./contracts/ethereum-1/0x86b30e3263250c9f947cdb711a2c16cda81d9adf/) | ⚠️ Unaudited |
| Proxy | proxy | unichain | n/a | [`0x420000000000000000000000000000000000000f`](./contracts/unichain-130/0x420000000000000000000000000000000000000f/) | ⚠️ Unaudited |
| Proxy | proxy | unichain | n/a | [`0x4200000000000000000000000000000000000015`](./contracts/unichain-130/0x4200000000000000000000000000000000000015/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3b73fa8d82f511a3cae17b5a26e4e1a2d5e2f2a4`](./contracts/ethereum-1/0x3b73fa8d82f511a3cae17b5a26e4e1a2d5e2f2a4/); ethereum `0x48ff88f3e71c05217f6572b735e1cb5f2a80fa9d`; ethereum `0xb1b8a68841220fa442048f9c2f976315478ab3b9` | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | ethereum | n/a | [`0x374454d6c756c8b594ff9aa799ad8dbfd93f2124`](./contracts/ethereum-1/0x374454d6c756c8b594ff9aa799ad8dbfd93f2124/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | 3 deployments: ethereum [`0x6d5b183f538abb8572f5cd17109c617b994d5833`](./contracts/ethereum-1/0x6d5b183f538abb8572f5cd17109c617b994d5833/); ethereum `0x9245d5d10aa8a842b31530de71ea86c0760ca1b1`; ethereum `0xb0c4c487c5cf6d67807bc2008c66fa7e2ce744ec` | ⚠️ Unaudited |
| SequencerFeeVault | core_logic | unichain | n/a | [`0x4200000000000000000000000000000000000011`](./contracts/unichain-130/0x4200000000000000000000000000000000000011/) | ⚠️ Unaudited |
| SuperchainConfig | governance | ethereum | n/a | [`0x95703e0982140d16f8eba6d158fccede42f04a4c`](./contracts/ethereum-1/0x95703e0982140d16f8eba6d158fccede42f04a4c/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0x1f5ef8626a313a32d314664f6d42431f92f2d6c1`](./contracts/ethereum-1/0x1f5ef8626a313a32d314664f6d42431f92f2d6c1/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0xc407398d063f942febbcc6f80a156b47f3f1bda6`](./contracts/ethereum-1/0xc407398d063f942febbcc6f80a156b47f3f1bda6/) | ⚠️ Unaudited |

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
| [AUDIT_REPORT_4.md](https://github.com/aragon/ve-governance/blob/develop/audits/AUDIT_REPORT_4.md) | unknown | Audit | 2025-10 | fresh | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [Clock_v1_2_0_audit_report.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/Clock_v1_2_0_audit_report.md) | LLM | Audit | 2025-08 | fresh | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [DynamicExitQueue_audit.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/DynamicExitQueue_audit.md) | LLM | Audit | 2025-08 | fresh | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [Lock_v1_2_0_audit.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/Lock_v1_2_0_audit.md) | LLM | Audit | 2025-08 | fresh | Inherited from Mode Bridge — forked code, scoped to DeputyGuardianModule, PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [BobTokenV2-Pashov-Audit-Report-Oct-2025-0263f8b0c49bf2b75df5b6bcad9fbcc9.pdf](https://docs.gobob.xyz/assets/files/BobTokenV2-Pashov-Audit-Report-Oct-2025-0263f8b0c49bf2b75df5b6bcad9fbcc9.pdf) | Pashov Audit Group | Audit | 2025-10 | fresh | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 2 | n/a |
| [BobStaking-security-review_2025-10-18-f54577c242e3990575db4789a421c165.pdf](https://docs.gobob.xyz/assets/files/BobStaking-security-review_2025-10-18-f54577c242e3990575db4789a421c165.pdf) | Pashov | Audit | 2025-10 | fresh | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 2 | n/a |
| [Pashov-Audit-Report-2025-offramp-solver-e6126bcad381876b88a6550ddde8aa88.pdf](https://docs.gobob.xyz/assets/files/Pashov-Audit-Report-2025-offramp-solver-e6126bcad381876b88a6550ddde8aa88.pdf) | Pashov Audit Group | Audit | 2025-08 | fresh | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 2 | n/a |
| [veridise-kailua-20250616-92721909a6b90ab336d6fae5365a76d4.pdf](https://docs.gobob.xyz/assets/files/veridise-kailua-20250616-92721909a6b90ab336d6fae5365a76d4.pdf) | yAudit | Audit | 2025-06 | aging | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 2 | n/a |
| [veridise-kailua-20250522-d1dff99d6a1be809bcb27c48671c8b46.pdf](https://docs.gobob.xyz/assets/files/veridise-kailua-20250522-d1dff99d6a1be809bcb27c48671c8b46.pdf) | Code4rena | Contest | 2025-05 | aging | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 2 | n/a |
| [BOB-security-review_2025-03-17-3ab501a0f6519fc8f95c9f285481414b.pdf](https://docs.gobob.xyz/assets/files/BOB-security-review_2025-03-17-3ab501a0f6519fc8f95c9f285481414b.pdf) | Pashov | Audit | 2025-03 | aging | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 2 | n/a |
| [veridise-kailua-20250217-c317614d026618741e34d6a269c5f9e9.pdf](https://docs.gobob.xyz/assets/files/veridise-kailua-20250217-c317614d026618741e34d6a269c5f9e9.pdf) | yAudit | Audit | 2025-02 | aging | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 2 | n/a |
| [BobToken-Pashov-Audit-Report-Feb-2025-9f199a39dec0967a6e789403c9fc896d.pdf](https://docs.gobob.xyz/assets/files/BobToken-Pashov-Audit-Report-Feb-2025-9f199a39dec0967a6e789403c9fc896d.pdf) | Pashov Audit Group | Audit | 2025-02 | aging | Inherited from BOB Fusion — forked code, scoped to PermissionedDisputeGame | inherited | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x7e2e1fe92d67f0199708056a22c34d1331b8def6`](./contracts/ethereum-1/0x7e2e1fe92d67f0199708056a22c34d1331b8def6/) | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27cf508e4e3aa8d30b3226ac3b5ea0e8bcacaff9`](./contracts/ethereum-1/0x27cf508e4e3aa8d30b3226ac3b5ea0e8bcacaff9/) | AnchorStateRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x318a642db9e24a85318b8bf18efd5287ba38643b`](./contracts/ethereum-1/0x318a642db9e24a85318b8bf18efd5287ba38643b/) | AnchorStateRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x40152233ec04c4c9894ab804f7a932ee8dd76e48`](./contracts/ethereum-1/0x40152233ec04c4c9894ab804f7a932ee8dd76e48/) | AnchorStateRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bdbec6bd35571f97f96f3ed21822a4f2e071a3c`](./contracts/ethereum-1/0x0bdbec6bd35571f97f96f3ed21822a4f2e071a3c/) | DelayedWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4755de7b3ea590d76eb15e1217456e948075826f`](./contracts/ethereum-1/0x4755de7b3ea590d76eb15e1217456e948075826f/) | DelayedWETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f12d621a16e2d3285929c9996f478508951dfe4`](./contracts/ethereum-1/0x2f12d621a16e2d3285929c9996f478508951dfe4/) | DisputeGameFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86a380b7ce4f036cf7e1a4fb1dd1ed9349989be9`](./contracts/ethereum-1/0x86a380b7ce4f036cf7e1a4fb1dd1ed9349989be9/) | DisputeGameFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08ba0023ed60c7bd040716dd13c45fa0062df5c5`](./contracts/ethereum-1/0x08ba0023ed60c7bd040716dd13c45fa0062df5c5/) | ETHLockbox | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ddba09bc4ccb0d6ca9fc5350580f74165707499`](./contracts/ethereum-1/0x6ddba09bc4ccb0d6ca9fc5350580f74165707499/) | FaultDisputeGameV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a3d64e386c18cb1d6d5179a9596a4b5736e98a6`](./contracts/ethereum-1/0x9a3d64e386c18cb1d6d5179a9596a4b5736e98a6/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3080177e8503b63aa97f15caba69099d7668f339`](./contracts/ethereum-1/0x3080177e8503b63aa97f15caba69099d7668f339/) | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd04d0d87e0bd4d2e50286760a3ef323fea6849cf`](./contracts/ethereum-1/0xd04d0d87e0bd4d2e50286760a3ef323fea6849cf/) | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x755610f5be536ad7afbaa7c10f3e938ea3aa1877`](./contracts/ethereum-1/0x755610f5be536ad7afbaa7c10f3e938ea3aa1877/) | L1LidoTokensBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81014f44b0a345033bb2b3b21c7a1a308b35feea`](./contracts/ethereum-1/0x81014f44b0a345033bb2b3b21c7a1a308b35feea/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e7569992f417cad770b8114d2df4078f0b98eb5`](./contracts/ethereum-1/0x9e7569992f417cad770b8114d2df4078f0b98eb5/) | L1StandardBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x4200000000000000000000000000000000000007`](./contracts/unichain-130/0x4200000000000000000000000000000000000007/) | L2CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x4200000000000000000000000000000000000010`](./contracts/unichain-130/0x4200000000000000000000000000000000000010/) | L2StandardBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x4200000000000000000000000000000000000016`](./contracts/unichain-130/0x4200000000000000000000000000000000000016/) | L2ToL1MessagePasser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6463dee3828677f6270d83d45408044fc5edb908`](./contracts/ethereum-1/0x6463dee3828677f6270d83d45408044fc5edb908/) | MIPS64 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98742ec6718b49c32aee6daccf5245980fa5d286`](./contracts/ethereum-1/0x98742ec6718b49c32aee6daccf5245980fa5d286/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa2b597eaeacb6f627e088cbead319e934ed5edad`](./contracts/ethereum-1/0xa2b597eaeacb6f627e088cbead319e934ed5edad/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x4200000000000000000000000000000000000012`](./contracts/unichain-130/0x4200000000000000000000000000000000000012/) | OptimismMintableERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bd48f6b86a26d3a217d0fa6ffe2b491b956a7a2`](./contracts/ethereum-1/0x0bd48f6b86a26d3a217d0fa6ffe2b491b956a7a2/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd3a31c6de8f346e5b456fbc3e4b5eabb3a2b3963`](./contracts/ethereum-1/0xd3a31c6de8f346e5b456fbc3e4b5eabb3a2b3963/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fb8cdfc6831fc866ed9c51af8817da5c287add3`](./contracts/ethereum-1/0x1fb8cdfc6831fc866ed9c51af8817da5c287add3/) | PreimageOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x374454d6c756c8b594ff9aa799ad8dbfd93f2124`](./contracts/ethereum-1/0x374454d6c756c8b594ff9aa799ad8dbfd93f2124/) | ResolvedDelegateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x4200000000000000000000000000000000000011`](./contracts/unichain-130/0x4200000000000000000000000000000000000011/) | SequencerFeeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x95703e0982140d16f8eba6d158fccede42f04a4c`](./contracts/ethereum-1/0x95703e0982140d16f8eba6d158fccede42f04a4c/) | SuperchainConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f5ef8626a313a32d314664f6d42431f92f2d6c1`](./contracts/ethereum-1/0x1f5ef8626a313a32d314664f6d42431f92f2d6c1/) | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc407398d063f942febbcc6f80a156b47f3f1bda6`](./contracts/ethereum-1/0xc407398d063f942febbcc6f80a156b47f3f1bda6/) | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=40

Fork inheritance lineage and inherited audits are included when available.
