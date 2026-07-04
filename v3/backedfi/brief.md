# Agentic Audit Brief: BackedFi

⚠️ Lifecycle status: UNKNOWN - TVL dropped 31.7% over 90 days

## Project Overview

- Project: BackedFi (`backedfi`)
- Website: [https://backed.fi](https://backed.fi)
- Lifecycle: unknown (Tier 0, 84% below peak)
- Generated: 2026-07-03T21:05:32.595Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: ethereum
- Contract surface: 5 unique implementations (14 raw deployments)
- DeFi Llama TVL: $7,720,098.84
- On-chain TVL (included contracts): $32,642,910.81
- TVL by chain: Ethereum $32,642,910.81

## Project Description

RWA. Structurally: 3 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 14 (11 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 2 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 5
- Raw deployments: 14
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $32,642,910.81
- Latest audit: 2025 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 3 stale, 3 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $32,642,910.81 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BackedTokenImplementation | token | ethereum | n/a | 10 deployments: ethereum [`0x0f76d3...e17245`](./contracts/ethereum-1/0x0f76d32cdccdcbd602a55af23eaf58fd1ee17245/); ethereum `0x1e2c4f...801d59`; ethereum `0x20c64d...83df7a`; ethereum `0x2f11ee...191b86`; ethereum `0x2f123c...9b45e7`; ethereum `0x3f95aa...9c52c9`; ethereum `0x52d134...fdf9e4`; ethereum `0xade605...995995`; ethereum `0xbbcb03...403ac9`; ethereum `0xca30c9...435fb5` | ⚠️ Unaudited |
| BackedAutoFeeTokenImplementation | token | ethereum | n/a | [`0xa34c5e...bcc495`](./contracts/ethereum-1/0xa34c5e0abe843e10461e2c9586ea03e55dbcc495/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x43624c...6f1e5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f7a4c...ffa2ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3ce78...571a8e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Backed-Token-Bridge-FinalReport-202409.pdf](https://github.com/backed-fi/audits/blob/main/Backed-Token-Bridge-FinalReport-202409.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Omega-Audit-Report-Dec-2022.pdf](https://github.com/backed-fi/audits/blob/main/Omega-Audit-Report-Dec-2022.pdf) | Omega | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [Omega-Audit-Report-July-2023.pdf](https://github.com/backed-fi/audits/blob/main/Omega-Audit-Report-July-2023.pdf) | Omega | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [Omega-Audit-Report-May-2022.pdf](https://github.com/backed-fi/audits/blob/main/Omega-Audit-Report-May-2022.pdf) | Omega | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [Rebasing_Token_Final_Report_20240702.pdf](https://github.com/backed-fi/audits/blob/main/Rebasing_Token_Final_Report_20240702.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Wrapped-Backed-Final-Report-20231015-update20240130.pdf](https://github.com/backed-fi/audits/blob/main/Wrapped-Backed-Final-Report-20231015-update20240130.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [atomic-swap-audit-report-10-2025.pdf](https://github.com/backed-fi/audits/blob/main/atomic-swap-audit-report-10-2025.pdf) | unknown | Audit | 2025 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0f76d3...e17245`](./contracts/ethereum-1/0x0f76d32cdccdcbd602a55af23eaf58fd1ee17245/) | BackedTokenImplementation | token | $30,642,562.21 | Verified native implementation with $30,642,562.21 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa34c5e...bcc495`](./contracts/ethereum-1/0xa34c5e0abe843e10461e2c9586ea03e55dbcc495/) | BackedAutoFeeTokenImplementation | token | $2,000,348.60 | Verified native implementation with $2,000,348.60 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [20642] Backed-Token-Bridge-FinalReport-202409.pdf
- [20643] Omega-Audit-Report-Dec-2022.pdf
- [20644] Omega-Audit-Report-July-2023.pdf
- [20645] Omega-Audit-Report-May-2022.pdf
- [20646] Rebasing_Token_Final_Report_20240702.pdf
- [20647] Wrapped-Backed-Final-Report-20231015-update20240130.pdf
- [20648] atomic-swap-audit-report-10-2025.pdf

Fork inheritance lineage and inherited audits are included when available.
