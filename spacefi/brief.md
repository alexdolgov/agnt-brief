# Agentic Audit Brief: SpaceFi

## Project Overview

- Project: SpaceFi (`spacefi`)
- Website: [https://spacefi.io](https://spacefi.io)
- Lifecycle: active (Tier 0, 86.8% below peak)
- Generated: 2026-06-17T07:00:49.844Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: scroll, zksync-era
- Contract surface: 29 unique implementations (29 raw deployments)
- DeFi Llama TVL: $1,311,602.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

SpaceFi is a cross-chain Web3 and DeFi platform with products including DEX/token swapping, liquidity provision, yield farming, NFTs, Starter, and Spacebase. Current contract and chain coverage should be treated cautiously until deployments are re-resolved and matched to audited scopes; no unified cross-chain architecture should be inferred without supporting evidence.

### Architecture

The product families represent chain-specific deployments of the same SpaceFi DEX protocol, sharing a common architecture but operating independently on Evmos, Scroll, and zkSync Era. No cross-chain infrastructure or shared contracts are evident from the provided data.

## Contract Surface Quality

- Indexed contracts: 43; live-surface contracts included: 29 (22 live, 7 unknown).
- Excluded by liveness: 14 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 29
- Unique implementations: 29
- Raw deployments: 29
- Audits discovered: 5
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-02 (stale)
- Staleness: 0 fresh, 0 aging, 5 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (29)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | zksync-era | n/a | `0x020929...4a998d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x09bd44...811cd5` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x28ef6e...20669c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x307baa...a193ee` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x310cba...dd0281` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x32c8e6...0e8470` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x472600...35f777` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x4c64dd...c8d129` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x525e30...929b10` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x55ca89...34dad2` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x55d35a...8cdfcd` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x60beb3...48fd98` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x6146ad...9cfda6` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x6567a9...48e6b6` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x6af434...5f63b1` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x7cf85f...800add` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x8228f3...6f126b` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x838a66...499a03` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x868a71...c293ee` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xacf5a6...5c3c96` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xb376fc...ea0614` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xbe7d1f...506d1d` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xcb5dc3...c0f5d5` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xd0ce09...5b45ae` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xd283a2...582b7c` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xdb101b...935460` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xe82da1...405a87` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xf25fd3...0e40e1` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0x18b713...0011b6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SpaceFi Smart Contract Audit Report - QuillAudits.pdf (also discovered via alternate URL)](https://github.com/Quillhash/QuillAudit_Reports/blob/master/SpaceFi%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | unknown | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [[Audit Report-5]()](https://scalebit.xyz/reports/zksync-contract-v2-Final-Audit-Report.pdf) | ScaleBit | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [[Audit Report-1](https://github.com/Quillhash/QuillAudit_Reports/blob/master/SpaceFi%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | [Audit Report-2]() | [Audit Report-3](https://github.com/Quillhash/QuillAudit_Reports/blob/master/SpaceFi%20Farm%20Smart%20Contract%20Final%20Audit%20Report%20-%20QuillAudits.pdf) | [Audit Report-4](https://github.com/Quillhash/QuillAudit_Reports/blob/master/xEVMToken_by_SpaceFi_Smart_Contract_Audit_Report_QuillAudits.pdf) &#x20;](https://github.com/Quillhash/QuillAudit_smart_contract_audit_Reports/blob/master/SpaceFi%20Swap%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | QuillAudits | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [[Audit Report-1](https://github.com/Quillhash/QuillAudit_Reports/blob/master/SpaceFi%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | [Audit Report-2](https://github.com/Quillhash/QuillAudit_Reports/blob/master/SpaceFi%20Swap%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | [Audit Report-3]() | [Audit Report-4](https://github.com/Quillhash/QuillAudit_Reports/blob/master/xEVMToken_by_SpaceFi_Smart_Contract_Audit_Report_QuillAudits.pdf) &#x20;](https://github.com/Quillhash/QuillAudit_smart_contract_audit_Reports/blob/master/SpaceFi%20Farm%20Smart%20Contract%20Final%20Audit%20Report%20-%20QuillAudits.pdf) | QuillAudits | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [[Audit Report-1](https://github.com/Quillhash/QuillAudit_Reports/blob/master/SpaceFi%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | [Audit Report-2](https://github.com/Quillhash/QuillAudit_Reports/blob/master/SpaceFi%20Swap%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | [Audit Report-3](https://github.com/Quillhash/QuillAudit_Reports/blob/master/SpaceFi%20Farm%20Smart%20Contract%20Final%20Audit%20Report%20-%20QuillAudits.pdf) | [Audit Report-4]() &#x20;](https://github.com/Quillhash/QuillAudit_smart_contract_audit_Reports/blob/master/xEVMToken_by_SpaceFi_Smart_Contract_Audit_Report_QuillAudits.pdf) | QuillAudits | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3049] SpaceFi Smart Contract Audit Report - QuillAudits.pdf
- [3050] [Audit Report-5]()
- [3052] [Audit Report-1](https://github.com/Quillhash/QuillAudit_Reports/blob/master/SpaceFi%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | [Audit Report-2]() | [Audit Report-3](https://github.com/Quillhash/QuillAudit_Reports/blob/master/SpaceFi%20Farm%20Smart%20Contract%20Final%20Audit%20Report%20-%20QuillAudits.pdf) | [Audit Report-4](https://github.com/Quillhash/QuillAudit_Reports/blob/master/xEVMToken_by_SpaceFi_Smart_Contract_Audit_Report_QuillAudits.pdf) &#x20;
- [3053] [Audit Report-1](https://github.com/Quillhash/QuillAudit_Reports/blob/master/SpaceFi%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | [Audit Report-2](https://github.com/Quillhash/QuillAudit_Reports/blob/master/SpaceFi%20Swap%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | [Audit Report-3]() | [Audit Report-4](https://github.com/Quillhash/QuillAudit_Reports/blob/master/xEVMToken_by_SpaceFi_Smart_Contract_Audit_Report_QuillAudits.pdf) &#x20;
- [3054] [Audit Report-1](https://github.com/Quillhash/QuillAudit_Reports/blob/master/SpaceFi%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | [Audit Report-2](https://github.com/Quillhash/QuillAudit_Reports/blob/master/SpaceFi%20Swap%20Smart%20Contract%20Audit%20Report%20-%20QuillAudits.pdf) | [Audit Report-3](https://github.com/Quillhash/QuillAudit_Reports/blob/master/SpaceFi%20Farm%20Smart%20Contract%20Final%20Audit%20Report%20-%20QuillAudits.pdf) | [Audit Report-4]() &#x20;

Fork inheritance lineage and inherited audits are included when available.
