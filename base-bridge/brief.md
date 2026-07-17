# Agentic Audit Brief: Base Bridge

## Project Overview

- Project: Base Bridge (`base-bridge`)
- Website: [https://docs.base.org/base-chain/network-information/bridges-mainnet](https://docs.base.org/base-chain/network-information/bridges-mainnet)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:05.278Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: base, ethereum
- Contract surface: 56 unique implementations (56 raw deployments)
- DeFi Llama TVL: $2,084,345,126.98
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 56 project-authored contract(s) across 2 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 5 common project-authored base contract(s) (irisczeroverifier, ownable2step, contextupgradeable). Dominant framework: openzeppelin.

## Fork Lineage

This project reuses audited code from **Mode Bridge** (`mode-bridge`) in the PermissionedDisputeGameV2 subsystem.
12 audits inherited from `mode-bridge`, scoped to that subsystem.

This project reuses audited code from **BOB Fusion** (`bob-fusion`) in the PermissionedDisputeGame subsystem.
8 audits inherited from `bob-fusion`, scoped to that subsystem.

Total inherited audits: 20. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 56; live-surface contracts included: 56 (56 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/47 (4.3%)
- Deployed-live implementations: 56 of 56 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/56
- Verified + Unaudited implementations: 54
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 56
- Raw deployments: 56
- Audits discovered: 20 (0 direct, 20 inherited from forked code)
- Scoreable audits (matched contracts): 20
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 7 fresh, 7 aging, 4 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 1 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 2.1% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 1 | 1.8% | 2025-05 |
| Halborn | Tier 2 | 1 | 1.8% | 2025-01 |
| LLM | Tier 2 | 1 | 1.8% | 2025-08 |
| Pashov | Tier 2 | 1 | 1.8% | 2025-10 |
| Pashov Audit Group | Tier 2 | 1 | 1.8% | 2025-10 |
| Solo Review | Tier 2 | 1 | 1.8% | 2024-05 |
| SSC | Tier 2 | 1 | 1.8% | 2025-01 |
| unknown | Tier 2 | 1 | 1.8% | 2025-10 |
| yAudit | Tier 2 | 1 | 1.8% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PermissionedDisputeGame | unknown | ethereum | n/a | [`0x04595c25e4bf27b8176c81c74a0081c7975cfecc`](./contracts/ethereum-1/0x04595c25e4bf27b8176c81c74a0081c7975cfecc/) | ✅ Audited |
| PermissionedDisputeGameV2 | unknown | ethereum | n/a | [`0x58bf355c5d4edfc723ef89d99582eccfd143266a`](./contracts/ethereum-1/0x58bf355c5d4edfc723ef89d99582eccfd143266a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressManager | unknown | ethereum | n/a | [`0x8efb6b5c4767b09dc9aa6af4eaa89f749522bae2`](./contracts/ethereum-1/0x8efb6b5c4767b09dc9aa6af4eaa89f749522bae2/) | ⚠️ Unaudited |
| AggregateVerifier | unknown | ethereum | n/a | [`0x1bd8db5139ba7ac9277684650c15e6e341761919`](./contracts/ethereum-1/0x1bd8db5139ba7ac9277684650c15e6e341761919/) | ⚠️ Unaudited |
| AnchorStateRegistry | unknown | ethereum | n/a | [`0x4483f964f6711cb55f633820ed174e780369b99d`](./contracts/ethereum-1/0x4483f964f6711cb55f633820ed174e780369b99d/) | ⚠️ Unaudited |
| BaseFeeVault | unknown | base | n/a | [`0x4200000000000000000000000000000000000019`](./contracts/base-8453/0x4200000000000000000000000000000000000019/) | ⚠️ Unaudited |
| DelayedWETH | unknown | ethereum | n/a | [`0x3e8a0b63f57e975c268d610ece93da5f78c01321`](./contracts/ethereum-1/0x3e8a0b63f57e975c268d610ece93da5f78c01321/) | ⚠️ Unaudited |
| DisputeGameFactory | unknown | ethereum | n/a | [`0x4018aba1a9eeebf20d79995e54843eee683bda7f`](./contracts/ethereum-1/0x4018aba1a9eeebf20d79995e54843eee683bda7f/) | ⚠️ Unaudited |
| EAS | unknown | base | n/a | [`0x4200000000000000000000000000000000000021`](./contracts/base-8453/0x4200000000000000000000000000000000000021/) | ⚠️ Unaudited |
| ERC20Factory | unknown | base | n/a | [`0xf10122d428b4bc8a9d050d06a2037259b4c4b83b`](./contracts/base-8453/0xf10122d428b4bc8a9d050d06a2037259b4c4b83b/) | ⚠️ Unaudited |
| FaultDisputeGame | unknown | ethereum | n/a | [`0x664569928201d464045aa0a7dd61d517eed5b3d5`](./contracts/ethereum-1/0x664569928201d464045aa0a7dd61d517eed5b3d5/) | ⚠️ Unaudited |
| FaultDisputeGameV2 | unknown | ethereum | n/a | [`0x6ddba09bc4ccb0d6ca9fc5350580f74165707499`](./contracts/ethereum-1/0x6ddba09bc4ccb0d6ca9fc5350580f74165707499/) | ⚠️ Unaudited |
| GasPriceOracle | unknown | base | n/a | [`0x420000000000000000000000000000000000000f`](./contracts/base-8453/0x420000000000000000000000000000000000000f/) | ⚠️ Unaudited |
| GnosisSafe | unknown | ethereum | n/a | [`0x14536667cd30e52c0b458baaccb9fada7046e056`](./contracts/ethereum-1/0x14536667cd30e52c0b458baaccb9fada7046e056/) | ⚠️ Unaudited |
| L1Block | unknown | base | n/a | [`0x4200000000000000000000000000000000000015`](./contracts/base-8453/0x4200000000000000000000000000000000000015/) | ⚠️ Unaudited |
| L1BlockNumber | unknown | base | n/a | [`0x4200000000000000000000000000000000000013`](./contracts/base-8453/0x4200000000000000000000000000000000000013/) | ⚠️ Unaudited |
| L1ChugSplashProxy | unknown | ethereum | n/a | [`0x8a92ad7b599801a776ad7f75b3aab77a3f279e25`](./contracts/ethereum-1/0x8a92ad7b599801a776ad7f75b3aab77a3f279e25/) | ⚠️ Unaudited |
| L1CrossDomainMessenger | unknown | ethereum | n/a | [`0x81c4bd600793ebd1c0323604e1f455fe50a951f8`](./contracts/ethereum-1/0x81c4bd600793ebd1c0323604e1f455fe50a951f8/) | ⚠️ Unaudited |
| L1ERC721Bridge | unknown | ethereum | n/a | [`0x3311ac7f72bb4108d9f4d5d50e7623b1498a9ec0`](./contracts/ethereum-1/0x3311ac7f72bb4108d9f4d5d50e7623b1498a9ec0/) | ⚠️ Unaudited |
| L1FeeVault | unknown | base | n/a | [`0x420000000000000000000000000000000000001a`](./contracts/base-8453/0x420000000000000000000000000000000000001a/) | ⚠️ Unaudited |
| L1StandardBridge | unknown | ethereum | n/a | [`0x3154cf16ccdb4c6d922629664174b904d80f2c35`](./contracts/ethereum-1/0x3154cf16ccdb4c6d922629664174b904d80f2c35/) | ⚠️ Unaudited |
| L2CrossDomainMessenger | unknown | base | n/a | [`0x4200000000000000000000000000000000000007`](./contracts/base-8453/0x4200000000000000000000000000000000000007/) | ⚠️ Unaudited |
| L2ERC721Bridge | unknown | base | n/a | [`0x4200000000000000000000000000000000000014`](./contracts/base-8453/0x4200000000000000000000000000000000000014/) | ⚠️ Unaudited |
| L2OutputOracle | unknown | ethereum | n/a | [`0x43451afd997c79b5b04f17911ec02947913a757f`](./contracts/ethereum-1/0x43451afd997c79b5b04f17911ec02947913a757f/) | ⚠️ Unaudited |
| L2StandardBridge | unknown | base | n/a | [`0x4200000000000000000000000000000000000010`](./contracts/base-8453/0x4200000000000000000000000000000000000010/) | ⚠️ Unaudited |
| L2ToL1MessagePasser | unknown | base | n/a | [`0x4200000000000000000000000000000000000016`](./contracts/base-8453/0x4200000000000000000000000000000000000016/) | ⚠️ Unaudited |
| MIPS64 | unknown | ethereum | n/a | [`0x6463dee3828677f6270d83d45408044fc5edb908`](./contracts/ethereum-1/0x6463dee3828677f6270d83d45408044fc5edb908/) | ⚠️ Unaudited |
| NitroEnclaveVerifier | unknown | ethereum | n/a | [`0x7f3a16e1fe6fda64c5ac4296e13ecb9f7b44f6fb`](./contracts/ethereum-1/0x7f3a16e1fe6fda64c5ac4296e13ecb9f7b44f6fb/) | ⚠️ Unaudited |
| OptimismMintableERC20Factory | unknown | ethereum | n/a | [`0x05cc379ebd9b30bba19c6fa282ab29218ec61d84`](./contracts/ethereum-1/0x05cc379ebd9b30bba19c6fa282ab29218ec61d84/) | ⚠️ Unaudited |
| OptimismMintableERC721Factory | unknown | base | n/a | [`0x4200000000000000000000000000000000000017`](./contracts/base-8453/0x4200000000000000000000000000000000000017/) | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | n/a | [`0x5fb30336a8d0841cf15d452afa297cb6d10877d7`](./contracts/ethereum-1/0x5fb30336a8d0841cf15d452afa297cb6d10877d7/) | ⚠️ Unaudited |
| OptimismPortal2 | unknown | ethereum | n/a | [`0x49048044d57e1c92a77f79988d21fa8faf74e97e`](./contracts/ethereum-1/0x49048044d57e1c92a77f79988d21fa8faf74e97e/) | ⚠️ Unaudited |
| PortalSender | unknown | ethereum | n/a | [`0xb29e5ae7cb209836afde0038e30f0dc4236a2eff`](./contracts/ethereum-1/0xb29e5ae7cb209836afde0038e30f0dc4236a2eff/) | ⚠️ Unaudited |
| PreimageOracle | unknown | ethereum | n/a | [`0x1fb8cdfc6831fc866ed9c51af8817da5c287add3`](./contracts/ethereum-1/0x1fb8cdfc6831fc866ed9c51af8817da5c287add3/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x01cc9bf8388ad0b1d894a5a1db3c192af35bdaa2`](./contracts/ethereum-1/0x01cc9bf8388ad0b1d894a5a1db3c192af35bdaa2/) | ⚠️ Unaudited |
| Proxy | unknown | ethereum | n/a | [`0x1af2a7e537de2ee795de5b8bfbb1ad0dd513a5aa`](./contracts/ethereum-1/0x1af2a7e537de2ee795de5b8bfbb1ad0dd513a5aa/) | ⚠️ Unaudited |
| Proxy | unknown | base | n/a | [`0x4200000000000000000000000000000000000000`](./contracts/base-8453/0x4200000000000000000000000000000000000000/) | ⚠️ Unaudited |
| Proxy | unknown | base | n/a | [`0x4200000000000000000000000000000000000002`](./contracts/base-8453/0x4200000000000000000000000000000000000002/) | ⚠️ Unaudited |
| Proxy | unknown | base | n/a | [`0x420000000000000000000000000000000000001b`](./contracts/base-8453/0x420000000000000000000000000000000000001b/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x0475cbcaebd9ce8afa5025828d5b98dfb67e059e`](./contracts/ethereum-1/0x0475cbcaebd9ce8afa5025828d5b98dfb67e059e/) | ⚠️ Unaudited |
| Recovery | unknown | base | n/a | [`0x0475cbcaebd9ce8afa5025828d5b98dfb67e059e`](./contracts/base-8453/0x0475cbcaebd9ce8afa5025828d5b98dfb67e059e/) | ⚠️ Unaudited |
| ResolvedDelegateProxy | unknown | ethereum | n/a | [`0xdbe6b6ccfa97860780f64ae4de394f6017644f89`](./contracts/ethereum-1/0xdbe6b6ccfa97860780f64ae4de394f6017644f89/) | ⚠️ Unaudited |
| RiscZeroGroth16Verifier | unknown | ethereum | n/a | [`0x5a99469f18a5863d3258e577892589386dfd965e`](./contracts/ethereum-1/0x5a99469f18a5863d3258e577892589386dfd965e/) | ⚠️ Unaudited |
| RiscZeroSetVerifier | unknown | ethereum | n/a | [`0x5005aba3dff7c940fcc1e48dcccad611a80eeb85`](./contracts/ethereum-1/0x5005aba3dff7c940fcc1e48dcccad611a80eeb85/) | ⚠️ Unaudited |
| RiscZeroVerifierEmergencyStop | unknown | ethereum | n/a | [`0x08aed6c108e500540a9544bef7a8b8a05e056e87`](./contracts/ethereum-1/0x08aed6c108e500540a9544bef7a8b8a05e056e87/) | ⚠️ Unaudited |
| RiscZeroVerifierRouter | unknown | base | n/a | [`0x0b144e07a0826182b6b59788c34b32bfa86fb711`](./contracts/base-8453/0x0b144e07a0826182b6b59788c34b32bfa86fb711/) | ⚠️ Unaudited |
| SafeProxy | unknown | ethereum | n/a | [`0x20acf55a3dcfe07fc4cecacfa1628f788ec8a4dd`](./contracts/ethereum-1/0x20acf55a3dcfe07fc4cecacfa1628f788ec8a4dd/) | ⚠️ Unaudited |
| SchemaRegistry | unknown | base | n/a | [`0x4200000000000000000000000000000000000020`](./contracts/base-8453/0x4200000000000000000000000000000000000020/) | ⚠️ Unaudited |
| SequencerFeeVault | unknown | base | n/a | [`0x4200000000000000000000000000000000000011`](./contracts/base-8453/0x4200000000000000000000000000000000000011/) | ⚠️ Unaudited |
| SP1VerifierGateway | unknown | ethereum | n/a | [`0xdc32e228636273285befa5f001dbb5142517c106`](./contracts/ethereum-1/0xdc32e228636273285befa5f001dbb5142517c106/) | ⚠️ Unaudited |
| SystemConfig | unknown | ethereum | n/a | [`0x6481ff79597fe4f77e1063f615ec5bdaddeffd4b`](./contracts/ethereum-1/0x6481ff79597fe4f77e1063f615ec5bdaddeffd4b/) | ⚠️ Unaudited |
| SystemDictator | unknown | ethereum | n/a | [`0x1fe3fdd1f0193dd657c0a9aac37314d6b479e557`](./contracts/ethereum-1/0x1fe3fdd1f0193dd657c0a9aac37314d6b479e557/) | ⚠️ Unaudited |
| TEEVerifier | unknown | ethereum | n/a | [`0x1fba0c57b07af804a9717e51dec9cc27fbc12228`](./contracts/ethereum-1/0x1fba0c57b07af804a9717e51dec9cc27fbc12228/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x0b144e07a0826182b6b59788c34b32bfa86fb711`](./contracts/ethereum-1/0x0b144e07a0826182b6b59788c34b32bfa86fb711/) | ⚠️ Unaudited |
| WETH9 | unknown | base | n/a | [`0x4200000000000000000000000000000000000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| ZkVerifier | unknown | ethereum | n/a | [`0x9e51defb019d1942d1210767f4a21be5e24e3c3b`](./contracts/ethereum-1/0x9e51defb019d1942d1210767f4a21be5e24e3c3b/) | ⚠️ Unaudited |

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
| [VE Governance plugin - Audit 4 _ SSC.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/VE%20Governance%20plugin%20-%20Audit%204%20_%20SSC.pdf) | SSC | Audit | 2025-01 | aging | Inherited from Mode Bridge — forked code, scoped to PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [halborn-3.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/halborn-3.pdf) | Halborn | Audit | 2025-01 | aging | Inherited from Mode Bridge — forked code, scoped to PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [report-mode-lock-solo-review.pdf](https://github.com/mode-network/public-audits/blob/main/reports/report-mode-lock-solo-review.pdf) | Solo Review | Audit | 2024-05 | stale | Inherited from Mode Bridge — forked code, scoped to PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [report-mode-governancetoken-solo-review.pdf](https://github.com/mode-network/public-audits/blob/main/reports/report-mode-governancetoken-solo-review.pdf) | Solo Review | Audit | 2024-04 | stale | Inherited from Mode Bridge — forked code, scoped to PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [VE Governance Updates _ SSC.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/VE%20Governance%20Updates%20_%20SSC.pdf) | SSC | Audit | 2024-01 | stale | Inherited from Mode Bridge — forked code, scoped to PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [audit_halborn.pdf](https://github.com/aragon/ve-governance/blob/develop/audits/audit_halborn.pdf) | Halborn | Audit | 2024-01 | stale | Inherited from Mode Bridge — forked code, scoped to PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [AUDIT_2.md](https://github.com/aragon/ve-governance/blob/develop/audits/AUDIT_2.md) | unknown | Audit | n/a | unknown | Inherited from Mode Bridge — forked code, scoped to PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [AUDIT_3.md](https://github.com/aragon/ve-governance/blob/develop/audits/AUDIT_3.md) | unknown | Audit | n/a | unknown | Inherited from Mode Bridge — forked code, scoped to PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [AUDIT_REPORT_4.md](https://github.com/aragon/ve-governance/blob/develop/audits/AUDIT_REPORT_4.md) | unknown | Audit | 2025-10 | fresh | Inherited from Mode Bridge — forked code, scoped to PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [Clock_v1_2_0_audit_report.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/Clock_v1_2_0_audit_report.md) | LLM | Audit | 2025-08 | fresh | Inherited from Mode Bridge — forked code, scoped to PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [DynamicExitQueue_audit.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/DynamicExitQueue_audit.md) | LLM | Audit | 2025-08 | fresh | Inherited from Mode Bridge — forked code, scoped to PermissionedDisputeGameV2 | inherited | 1 | n/a |
| [Lock_v1_2_0_audit.md](https://github.com/aragon/ve-governance/blob/develop/audits/llm/Lock_v1_2_0_audit.md) | LLM | Audit | 2025-08 | fresh | Inherited from Mode Bridge — forked code, scoped to PermissionedDisputeGameV2 | inherited | 1 | n/a |
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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x8efb6b5c4767b09dc9aa6af4eaa89f749522bae2`](./contracts/ethereum-1/0x8efb6b5c4767b09dc9aa6af4eaa89f749522bae2/) | AddressManager | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bd8db5139ba7ac9277684650c15e6e341761919`](./contracts/ethereum-1/0x1bd8db5139ba7ac9277684650c15e6e341761919/) | AggregateVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4483f964f6711cb55f633820ed174e780369b99d`](./contracts/ethereum-1/0x4483f964f6711cb55f633820ed174e780369b99d/) | AnchorStateRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4200000000000000000000000000000000000019`](./contracts/base-8453/0x4200000000000000000000000000000000000019/) | BaseFeeVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e8a0b63f57e975c268d610ece93da5f78c01321`](./contracts/ethereum-1/0x3e8a0b63f57e975c268d610ece93da5f78c01321/) | DelayedWETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4018aba1a9eeebf20d79995e54843eee683bda7f`](./contracts/ethereum-1/0x4018aba1a9eeebf20d79995e54843eee683bda7f/) | DisputeGameFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4200000000000000000000000000000000000021`](./contracts/base-8453/0x4200000000000000000000000000000000000021/) | EAS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf10122d428b4bc8a9d050d06a2037259b4c4b83b`](./contracts/base-8453/0xf10122d428b4bc8a9d050d06a2037259b4c4b83b/) | ERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x664569928201d464045aa0a7dd61d517eed5b3d5`](./contracts/ethereum-1/0x664569928201d464045aa0a7dd61d517eed5b3d5/) | FaultDisputeGame | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ddba09bc4ccb0d6ca9fc5350580f74165707499`](./contracts/ethereum-1/0x6ddba09bc4ccb0d6ca9fc5350580f74165707499/) | FaultDisputeGameV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x420000000000000000000000000000000000000f`](./contracts/base-8453/0x420000000000000000000000000000000000000f/) | GasPriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4200000000000000000000000000000000000015`](./contracts/base-8453/0x4200000000000000000000000000000000000015/) | L1Block | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4200000000000000000000000000000000000013`](./contracts/base-8453/0x4200000000000000000000000000000000000013/) | L1BlockNumber | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a92ad7b599801a776ad7f75b3aab77a3f279e25`](./contracts/ethereum-1/0x8a92ad7b599801a776ad7f75b3aab77a3f279e25/) | L1ChugSplashProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81c4bd600793ebd1c0323604e1f455fe50a951f8`](./contracts/ethereum-1/0x81c4bd600793ebd1c0323604e1f455fe50a951f8/) | L1CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3311ac7f72bb4108d9f4d5d50e7623b1498a9ec0`](./contracts/ethereum-1/0x3311ac7f72bb4108d9f4d5d50e7623b1498a9ec0/) | L1ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x420000000000000000000000000000000000001a`](./contracts/base-8453/0x420000000000000000000000000000000000001a/) | L1FeeVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3154cf16ccdb4c6d922629664174b904d80f2c35`](./contracts/ethereum-1/0x3154cf16ccdb4c6d922629664174b904d80f2c35/) | L1StandardBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4200000000000000000000000000000000000007`](./contracts/base-8453/0x4200000000000000000000000000000000000007/) | L2CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4200000000000000000000000000000000000014`](./contracts/base-8453/0x4200000000000000000000000000000000000014/) | L2ERC721Bridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43451afd997c79b5b04f17911ec02947913a757f`](./contracts/ethereum-1/0x43451afd997c79b5b04f17911ec02947913a757f/) | L2OutputOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4200000000000000000000000000000000000010`](./contracts/base-8453/0x4200000000000000000000000000000000000010/) | L2StandardBridge | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4200000000000000000000000000000000000016`](./contracts/base-8453/0x4200000000000000000000000000000000000016/) | L2ToL1MessagePasser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6463dee3828677f6270d83d45408044fc5edb908`](./contracts/ethereum-1/0x6463dee3828677f6270d83d45408044fc5edb908/) | MIPS64 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7f3a16e1fe6fda64c5ac4296e13ecb9f7b44f6fb`](./contracts/ethereum-1/0x7f3a16e1fe6fda64c5ac4296e13ecb9f7b44f6fb/) | NitroEnclaveVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x05cc379ebd9b30bba19c6fa282ab29218ec61d84`](./contracts/ethereum-1/0x05cc379ebd9b30bba19c6fa282ab29218ec61d84/) | OptimismMintableERC20Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4200000000000000000000000000000000000017`](./contracts/base-8453/0x4200000000000000000000000000000000000017/) | OptimismMintableERC721Factory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fb30336a8d0841cf15d452afa297cb6d10877d7`](./contracts/ethereum-1/0x5fb30336a8d0841cf15d452afa297cb6d10877d7/) | OptimismPortal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49048044d57e1c92a77f79988d21fa8faf74e97e`](./contracts/ethereum-1/0x49048044d57e1c92a77f79988d21fa8faf74e97e/) | OptimismPortal2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb29e5ae7cb209836afde0038e30f0dc4236a2eff`](./contracts/ethereum-1/0xb29e5ae7cb209836afde0038e30f0dc4236a2eff/) | PortalSender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fb8cdfc6831fc866ed9c51af8817da5c287add3`](./contracts/ethereum-1/0x1fb8cdfc6831fc866ed9c51af8817da5c287add3/) | PreimageOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0475cbcaebd9ce8afa5025828d5b98dfb67e059e`](./contracts/base-8453/0x0475cbcaebd9ce8afa5025828d5b98dfb67e059e/) | Recovery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdbe6b6ccfa97860780f64ae4de394f6017644f89`](./contracts/ethereum-1/0xdbe6b6ccfa97860780f64ae4de394f6017644f89/) | ResolvedDelegateProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a99469f18a5863d3258e577892589386dfd965e`](./contracts/ethereum-1/0x5a99469f18a5863d3258e577892589386dfd965e/) | RiscZeroGroth16Verifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5005aba3dff7c940fcc1e48dcccad611a80eeb85`](./contracts/ethereum-1/0x5005aba3dff7c940fcc1e48dcccad611a80eeb85/) | RiscZeroSetVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08aed6c108e500540a9544bef7a8b8a05e056e87`](./contracts/ethereum-1/0x08aed6c108e500540a9544bef7a8b8a05e056e87/) | RiscZeroVerifierEmergencyStop | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0b144e07a0826182b6b59788c34b32bfa86fb711`](./contracts/base-8453/0x0b144e07a0826182b6b59788c34b32bfa86fb711/) | RiscZeroVerifierRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4200000000000000000000000000000000000020`](./contracts/base-8453/0x4200000000000000000000000000000000000020/) | SchemaRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4200000000000000000000000000000000000011`](./contracts/base-8453/0x4200000000000000000000000000000000000011/) | SequencerFeeVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc32e228636273285befa5f001dbb5142517c106`](./contracts/ethereum-1/0xdc32e228636273285befa5f001dbb5142517c106/) | SP1VerifierGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6481ff79597fe4f77e1063f615ec5bdaddeffd4b`](./contracts/ethereum-1/0x6481ff79597fe4f77e1063f615ec5bdaddeffd4b/) | SystemConfig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fe3fdd1f0193dd657c0a9aac37314d6b479e557`](./contracts/ethereum-1/0x1fe3fdd1f0193dd657c0a9aac37314d6b479e557/) | SystemDictator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fba0c57b07af804a9717e51dec9cc27fbc12228`](./contracts/ethereum-1/0x1fba0c57b07af804a9717e51dec9cc27fbc12228/) | TEEVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4200000000000000000000000000000000000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | WETH9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e51defb019d1942d1210767f4a21be5e24e3c3b`](./contracts/ethereum-1/0x9e51defb019d1942d1210767f4a21be5e24e3c3b/) | ZkVerifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 47 |
| upstream | 0 |
| standard_library | 9 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: inherited_name_remap=20

Fork inheritance lineage and inherited audits are included when available.
