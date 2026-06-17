# Agentic Audit Brief: Hemi

⚠️ Lifecycle status: DECLINING - TVL dropped 65.3% over 90 days

## Project Overview

- Project: Hemi (`hemi`)
- Website: [https://hemi.xyz/](https://hemi.xyz/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T22:19:46.309Z
- Pipeline run: v2-pipeline-2026-06-17-2a130c-9ddf
- Chains: bsc, ethereum, optimism
- Contract surface: 22 unique implementations (34 raw deployments)
- DeFi Llama TVL: $566,209.89
- On-chain TVL (included contracts): $16,122.30
- TVL by chain: Optimism $16,122.30

## Project Description

Hemi is a Layer 2 blockchain built on the OP Stack that provides a canonical bridge for transferring assets between Ethereum, Optimism, and BSC. It uses a set of L1 and L2 contracts to enable secure cross-chain messaging, token minting, and state verification.

### Architecture

The L1 Hemi Contracts (OptimismPortal and L1StandardBridge) handle asset locking and message passing on Ethereum, while the Hemi family contains the corresponding L2 contracts (L2StandardBridge, L2CrossDomainMessenger) that receive and process those messages. Both families share governance infrastructure like GnosisSafe and ProxyAdmin, and rely on shared registries (OptimismMintableERC20Factory, AnchorStateRegistry) for token and state management.

## Contract Surface Quality

- Indexed contracts: 58; live-surface contracts included: 34 (30 live, 4 unknown).
- Excluded by liveness: 20 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 12/28 live.
- Detected codebases: none
- Unverified dependencies: 2/5.

## Audit Coverage Summary

- Verified implementations audited: 1/21 (4.8%)
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 22
- Raw deployments: 34
- Audits discovered: 6
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $16,122.30
- Latest audit: 2025-10 (fresh)
- Staleness: 3 fresh, 2 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $16,122.30 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 4.8% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Hemi | unknown | ethereum | n/a | [`0xeb964a...4f484d`](./contracts/ethereum-1/0xeb964a1a6fab73b8c72a0d15c7337fa4804f484d/) | ✅ Audited |

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SequencerFeeVault | core_logic | optimism | unit-33268 | [`0x420000...000011`](./contracts/optimism-10/0x4200000000000000000000000000000000000011/) | ⚠️ Unaudited |
| GovernanceToken | token | optimism | n/a | [`0x420000...000042`](./contracts/optimism-10/0x4200000000000000000000000000000000000042/) | ⚠️ Unaudited |
| BinanceHemiOFT | unknown | bsc | n/a | 4 deployments: bsc [`0x5ffd0e...5afc5b`](./contracts/bsc-56/0x5ffd0eadc186af9512542d0d5e5eafc65d5afc5b/); bsc `0xb8dbff...a2c3c3`; bsc `0xd275f9...42506e`; bsc `0xfc5538...e91575` | ⚠️ Unaudited |
| EAS | unknown | optimism | unit-33278 | [`0x420000...000021`](./contracts/optimism-10/0x4200000000000000000000000000000000000021/) | ⚠️ Unaudited |
| GasPriceOracle | operational_periphery | optimism | unit-33266 | [`0x420000...00000f`](./contracts/optimism-10/0x420000000000000000000000000000000000000f/) | ⚠️ Unaudited |
| GnosisSafeProxyFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0xa6b71e...896ab2`](./contracts/ethereum-1/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/); optimism [`0xa6b71e...896ab2`](./contracts/optimism-10/0xa6b71e26c5e0845f74c812102ca7114b6a896ab2/) | ⚠️ Unaudited |
| HemiLock | unknown | bsc | n/a | 4 deployments: bsc [`0x0795a3...ff1026`](./contracts/bsc-56/0x0795a3c4898d823946f953bd1234c0e7b7ff1026/); bsc `0x7070fa...fb89f9`; bsc `0x86bb2b...94046b`; bsc `0xfbe1ba...6eae8b` | ⚠️ Unaudited |
| L1Block | unknown | optimism | unit-33271 | [`0x420000...000015`](./contracts/optimism-10/0x4200000000000000000000000000000000000015/) | ⚠️ Unaudited |
| L1StandardBridge | bridge_template | ethereum | unit-33258 | [`0x5eaa10...9f191e`](./contracts/ethereum-1/0x5eaa10f99e7e6d177ef9f74e519e319aa49f191e/) | ⚠️ Unaudited |
| L2CrossDomainMessenger | unknown | optimism | unit-33265 | [`0x420000...000007`](./contracts/optimism-10/0x4200000000000000000000000000000000000007/) | ⚠️ Unaudited |
| L2OutputOracle | operational_periphery | ethereum | unit-33259 | [`0x6daf3a...9c0d51`](./contracts/ethereum-1/0x6daf3a3497d8abdfe12915add9829f83a79c0d51/) | ⚠️ Unaudited |
| L2StandardBridge | operational_periphery | optimism | unit-33267 | [`0x420000...000010`](./contracts/optimism-10/0x4200000000000000000000000000000000000010/) | ⚠️ Unaudited |
| L2ToL1MessagePasser | unknown | optimism | unit-33272 | [`0x420000...000016`](./contracts/optimism-10/0x4200000000000000000000000000000000000016/) | ⚠️ Unaudited |
| MIPS | unknown | ethereum | n/a | [`0x42ff66...ba9c2a`](./contracts/ethereum-1/0x42ff661af011939f699d67bd021d237ebcba9c2a/) | ⚠️ Unaudited |
| OFT | unknown | bsc | n/a | 6 deployments: bsc [`0x10061d...7b180c`](./contracts/bsc-56/0x10061d0593441ff74536158592e1be3f4c7b180c/); bsc `0x37d8c0...74d931`; bsc `0x64b5bb...609373`; bsc `0x707c24...412075`; bsc `0xa30e1a...076f30`; bsc `0xc141b6...a96515` | ⚠️ Unaudited |
| OptimismMintableERC20Factory | registry | optimism | unit-33269 | [`0x420000...000012`](./contracts/optimism-10/0x4200000000000000000000000000000000000012/) | ⚠️ Unaudited |
| OptimismPortal | unknown | ethereum | unit-33255 | [`0x39a000...3a4d7e`](./contracts/ethereum-1/0x39a0005415256b9863afe2d55edcf75ecc3a4d7e/) | ⚠️ Unaudited |
| PreimageOracle | operational_periphery | ethereum | n/a | [`0x613f36...24ed20`](./contracts/ethereum-1/0x613f36be58ba712b37474f4b82484d680d24ed20/) | ⚠️ Unaudited |
| ProxyAdmin | governance | optimism | unit-33274 | [`0x420000...000018`](./contracts/optimism-10/0x4200000000000000000000000000000000000018/) | ⚠️ Unaudited |
| SchemaRegistry | registry | optimism | unit-33277 | [`0x420000...000020`](./contracts/optimism-10/0x4200000000000000000000000000000000000020/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x04dcfe...ebb634` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit_Report_HEMI-PRO_FINAL_22.pdf](https://github.com/hemilabs/audit-reports/blob/master/Bitcoin_Tunnel/Audit_Report_HEMI-PRO_FINAL_22.pdf) | HEMI-PRO | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Quantstamp - BTC Tunnel - FinalReport (1).pdf](https://github.com/hemilabs/audit-reports/blob/master/Bitcoin_Tunnel/Quantstamp%20-%20BTC%20Tunnel%20-%20FinalReport%20(1).pdf) | Quantstamp | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [Audit_Report_HEMI-TOK_FINAL_21.pdf](https://github.com/hemilabs/audit-reports/blob/master/Hemi_Token/Audit_Report_HEMI-TOK_FINAL_21.pdf) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | 1 | high |
| [HemiToken - Final Report.pdf](https://github.com/hemilabs/audit-reports/blob/master/Hemi_Token/HemiToken%20-%20Final%20Report.pdf) | unknown | Audit | 2025-04 | aging | Direct | contract_name | 1 | high |
| [Audit_Report_HEMI-VOT_FINAL_21.pdf](https://github.com/hemilabs/audit-reports/blob/master/veHEMI/Audit_Report_HEMI-VOT_FINAL_21.pdf) | unknown | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [Audit reports](https://github.com/hemilabs/audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x420000...000011`](./contracts/optimism-10/0x4200000000000000000000000000000000000011/) | SequencerFeeVault | core_logic | $15,829.28 | Verified native implementation with $15,829.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x420000...000042`](./contracts/optimism-10/0x4200000000000000000000000000000000000042/) | GovernanceToken | token | $293.02 | Verified native implementation with $293.02 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5ffd0e...5afc5b`](./contracts/bsc-56/0x5ffd0eadc186af9512542d0d5e5eafc65d5afc5b/) | BinanceHemiOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x420000...000021`](./contracts/optimism-10/0x4200000000000000000000000000000000000021/) | EAS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x420000...00000f`](./contracts/optimism-10/0x420000000000000000000000000000000000000f/) | GasPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0795a3...ff1026`](./contracts/bsc-56/0x0795a3c4898d823946f953bd1234c0e7b7ff1026/) | HemiLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x420000...000015`](./contracts/optimism-10/0x4200000000000000000000000000000000000015/) | L1Block | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5eaa10...9f191e`](./contracts/ethereum-1/0x5eaa10f99e7e6d177ef9f74e519e319aa49f191e/) | L1StandardBridge | bridge_template | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x420000...000007`](./contracts/optimism-10/0x4200000000000000000000000000000000000007/) | L2CrossDomainMessenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x420000...000010`](./contracts/optimism-10/0x4200000000000000000000000000000000000010/) | L2StandardBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x420000...000016`](./contracts/optimism-10/0x4200000000000000000000000000000000000016/) | L2ToL1MessagePasser | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x10061d...7b180c`](./contracts/bsc-56/0x10061d0593441ff74536158592e1be3f4c7b180c/) | OFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x420000...000012`](./contracts/optimism-10/0x4200000000000000000000000000000000000012/) | OptimismMintableERC20Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x420000...000018`](./contracts/optimism-10/0x4200000000000000000000000000000000000018/) | ProxyAdmin | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x420000...000020`](./contracts/optimism-10/0x4200000000000000000000000000000000000020/) | SchemaRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 17 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=2

Zero-match audit list:

- [3137] Audit_Report_HEMI-PRO_FINAL_22.pdf
- [3138] Quantstamp - BTC Tunnel - FinalReport (1).pdf
- [3141] Audit_Report_HEMI-VOT_FINAL_21.pdf
- [14613] Audit reports

Fork inheritance lineage and inherited audits are included when available.
