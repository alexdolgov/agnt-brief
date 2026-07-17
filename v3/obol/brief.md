# Agentic Audit Brief: Obol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 11 (0 matched; 11 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Obol (`obol`)
- Website: [https://obol.org/](https://obol.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, sepolia
- Contract surface: 14 unique implementations (14 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $553,018,074.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Obol in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 4 contracts are derived from known codebases. 4 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x119acd7844cbdd5fc09b1c6a4408f490c8f7f522`, chain 1)
- UnnamedContract (`0x2fb59065f049e0d0e3180c6312fa0feb5bbf0fe3`, chain 1)
- UnnamedContract (`0xa9d94139a310150ca1163b5e23f3e1dbb7d9e2a6`, chain 1)
- UnnamedContract (`0xe11eabf19a49c389d3e8735c35f8f34f28bdcb22`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 4/8 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 4 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 6 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 4 of 14 unique; 10 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 14
- Raw deployments: 14
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 7 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DepositContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00000000219ab540356cbb839cbe05303d7705fa` | ⚠️ Unaudited |
| ObolOverwhelmingSupportAutoDelegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca28852b6fc15ebd95b17c875d5eb14b08579158` | ⚠️ Unaudited |
| ObolStaker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x30641013934ec7625c9e73a4d63aab4201004259` | ⚠️ Unaudited |
| ObolToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b010000b7624eb9b3dfbc279673c76e9d29d5f7` | ⚠️ Unaudited |
| RebasingStakedObol | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1932e815254c53b3ecd81cecf252a5ac7f0e8bea` | ⚠️ Unaudited |
| TransferRewardNotifier | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x384dd81047f88ee35de75da1149943b8e62d8802` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389900 | `0x119acd7844cbdd5fc09b1c6a4408f490c8f7f522` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-389901 | `0x2c26b5a373294caccbd3de817d9b7c6aea7de584` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389902 | `0x2fb59065f049e0d0e3180c6312fa0feb5bbf0fe3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389903 | `0xa9d94139a310150ca1163b5e23f3e1dbb7d9e2a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-389904 | `0xe11eabf19a49c389d3e8735c35f8f34f28bdcb22` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389905 | `0x99585e71ab1118682d51efefca0a170c70eef0d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389906 | `0xca78f8fda7ec13ae246e4d4cd38b9ce25a12e64a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | sepolia | unit-389907 | `0xf32f8b563d8369d40c45d5d667c2b26937f2a3d3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Sayfer_2024-03_Penetration_Testing_CFD.pdf](https://github.com/ObolNetwork/obol-security/blob/main/audits/Sayfer_2024-03_Penetration_Testing_CFD.pdf) | Sayfer | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Sigma_Prime_Obol_Network_Charon_Security_Assessment_Report_v2_1.pdf (also discovered via alternate URL)](https://github.com/ObolNetwork/obol-security/blob/main/audits/Sigma_Prime_Obol_Network_Charon_Security_Assessment_Report_v2_1.pdf) | Sigma Prime | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [charon_quantstamp_audit.pdf](https://github.com/ObolNetwork/obol-security/blob/main/audits/charon_quantstamp_audit.pdf) | Quantstamp | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [obront_solidity_assessment.pdf](https://github.com/ObolNetwork/obol-security/blob/main/audits/obront_solidity_assessment.pdf) | obront | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [charon_quantstamp_assessment.pdf](https://obol.org/charon_quantstamp_assessment.pdf) | Quantstamp | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025 - Obol Splits V2 Audit - Nethermind.pdf](https://github.com/ObolNetwork/obol-splits/blob/main/audit/2025%20-%20Obol%20Splits%20V2%20Audit%20-%20Nethermind.pdf) | Nethermind Security | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2025 - Obol Splits V3 Audit - Nethermind.pdf](https://github.com/ObolNetwork/obol-splits/blob/main/audit/2025%20-%20Obol%20Splits%20V3%20Audit%20-%20Nethermind.pdf) | Nethermind Security | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [DKG_issues_lido_clusters.pdf](https://github.com/ObolNetwork/obol-security/blob/main/postmortems/DKG_issues_lido_clusters.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [charon_sigma_prime_assessment.pdf](https://obol.org/charon_sigma_prime_assessment.pdf) | Quantstamp | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2023 - Obol Splits V1 Audit - Zach Obront.pdf](https://github.com/ObolNetwork/obol-splits/blob/main/audit/2023%20-%20Obol%20Splits%20V1%20Audit%20-%20Zach%20Obront.pdf) | Zach Obront | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21166] Sayfer_2024-03_Penetration_Testing_CFD.pdf — no match: The report is a penetration testing certificate for Obol's web application, not a smart contract audit. No smart contracts are mentioned in scope.
- [21167] Sigma_Prime_Obol_Network_Charon_Security_Assessment_Report_v2_1.pdf — no match: Audit report for Obol Network's Charon distributed validator client. Scope includes Charon codebase and associated components. Date from cover page: 'June, 2023'.
- [21168] charon_quantstamp_audit.pdf — no match: The audit report focuses on the Charon client, a Go-based middleware. No Solidity contracts are in scope; the scope is the entire Charon client codebase.
- [21169] obront_solidity_assessment.pdf — no match: All contracts explicitly listed in scope section. Audit date from 'Sept18to22,2023' interpreted as end date.
- [21171] charon_quantstamp_assessment.pdf — no match: The audit report focuses on the Charon client, a Go-based HTTP middleware for distributed validator technology. No smart contracts are in scope; the scope is the Charon client source code.
- [21172] 2025 - Obol Splits V2 Audit - Nethermind.pdf — no match: Audit report for Obol Network's Ethereum validator manager smart contracts. Scope includes ObolValidatorManagerFactory, ObolValidatorManager, and IDepositContract interface. Audit date is September 5, 2025 (final report date).
- [21173] 2025 - Obol Splits V3 Audit - Nethermind.pdf — no match: Audit report for Obol Network's Ethereum validator manager smart contracts. Scope includes three files: ObolValidatorManagerFactory, ObolValidatorManager, and IObolValidatorManager interface. Audit date is December 1, 2025 (final report date).
- [21174] DKG_issues_lido_clusters.pdf — no match: The document is a postmortem report about DKG issues in Lido, not a smart contract audit report. No smart contracts are mentioned in scope.
- [21175] charon_sigma_prime_assessment.pdf — no match: Extracted contract names from the audit report scope and findings. The report focuses on the Charon distributed validator client implementation in Go, not smart contracts. The date is June 2023 (month only, used last day).
- [21176] 2023 - Obol Splits V1 Audit - Zach Obront.pdf — no match: Scope section explicitly lists 6 contracts with file paths. Audit date from header: Sept18 to 22, 2023 -> end date 2023-09-22.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Sigma_Prime_Obol_Network_Charon_Security_Assessment_Report_v2_1.pdf | Charon | unmatched — not counted | — | Scope: Obol Network Charon Security Assessment Report; files hosted on Obol Network's Charon repository | no |
| Sigma_Prime_Obol_Network_Charon_Security_Assessment_Report_v2_1.pdf | DistributedValidatorLaunchpad | unmatched — not counted | — | Accompanies Charon for distributed validator key creation | no |
| Sigma_Prime_Obol_Network_Charon_Security_Assessment_Report_v2_1.pdf | FrostDKG | unmatched — not counted | — | Findings OBOL-02, OBOL-09, OBOL-10 reference FrostDKG implementation in dkg/frostp2p.go | no |
| Sigma_Prime_Obol_Network_Charon_Security_Assessment_Report_v2_1.pdf | QBFT | unmatched — not counted | — | Finding OBOL-15 references QBFT message types in core/qbft/qbft.go | no |
| Sigma_Prime_Obol_Network_Charon_Security_Assessment_Report_v2_1.pdf | sigagg | unmatched — not counted | — | Findings OBOL-16 and OBOL-17 reference sigagg module in core/sigagg/sigagg.go | no |
| Sigma_Prime_Obol_Network_Charon_Security_Assessment_Report_v2_1.pdf | AggregateLock | unmatched — not counted | — | Finding OBOL-18 references AggregateLock in dkg/dkg.go | no |
| Sigma_Prime_Obol_Network_Charon_Security_Assessment_Report_v2_1.pdf | CreateDKG | unmatched — not counted | — | Findings OBOL-19 and OBOL-20 reference CreateDKG in cmd/createdkg.go | no |
| charon_quantstamp_audit.pdf | Charon | unmatched — not counted | — | Scope section: 'This security assessment only focuses on the Charon client.' | no |
| obront_solidity_assessment.pdf | ImmutableSplitController | unmatched — not counted | — | listed in scope | no |
| obront_solidity_assessment.pdf | ImmutableSplitControllerFactory | unmatched — not counted | — | listed in scope | no |
| obront_solidity_assessment.pdf | LidoSplit | unmatched — not counted | — | listed in scope | no |
| obront_solidity_assessment.pdf | LidoSplitFactory | unmatched — not counted | — | listed in scope | no |
| obront_solidity_assessment.pdf | OptimisticWithdrawalReceiver | unmatched — not counted | — | listed in scope | no |
| obront_solidity_assessment.pdf | OptimisticWithdrawalReceiverFactory | unmatched — not counted | — | listed in scope | no |
| charon_quantstamp_assessment.pdf | Charon | unmatched — not counted | — | Scope section: 'This security assessment only focuses on the Charon client.' | no |
| 2025 - Obol Splits V2 Audit - Nethermind.pdf | ObolValidatorManagerFactory | unmatched — not counted | — | Listed in Audited Files table and described in System Overview. | no |
| 2025 - Obol Splits V2 Audit - Nethermind.pdf | ObolValidatorManager | unmatched — not counted | — | Listed in Audited Files table and described in System Overview. | no |
| 2025 - Obol Splits V2 Audit - Nethermind.pdf | IDepositContract | unmatched — not counted | — | Listed in Audited Files table. | no |
| 2025 - Obol Splits V3 Audit - Nethermind.pdf | ObolValidatorManagerFactory | unmatched — not counted | — | listed in Audited Files table | no |
| 2025 - Obol Splits V3 Audit - Nethermind.pdf | ObolValidatorManager | unmatched — not counted | — | listed in Audited Files table | no |
| 2025 - Obol Splits V3 Audit - Nethermind.pdf | IObolValidatorManager | unmatched — not counted | — | listed in Audited Files table | no |
| charon_sigma_prime_assessment.pdf | Charon | unmatched — not counted | — | Scope: Obol Network Charon Security Assessment Report; files hosted on Obol Network's Charon repository | no |
| charon_sigma_prime_assessment.pdf | DistributedValidatorLaunchpad | unmatched — not counted | — | Mentioned as a web application accompanying Charon | no |
| charon_sigma_prime_assessment.pdf | FrostDKG | unmatched — not counted | — | Findings OBOL-02, OBOL-09, OBOL-10 reference FrostDKG implementation | no |
| charon_sigma_prime_assessment.pdf | QBFT | unmatched — not counted | — | Finding OBOL-15 references QBFT message types | no |
| charon_sigma_prime_assessment.pdf | sigagg | unmatched — not counted | — | Findings OBOL-16, OBOL-17 reference sigagg module | no |
| charon_sigma_prime_assessment.pdf | AggregateLock | unmatched — not counted | — | Finding OBOL-18 references AggregateLock signature aggregation | no |
| charon_sigma_prime_assessment.pdf | CreateDKG | unmatched — not counted | — | Findings OBOL-19, OBOL-20 reference CreateDKG command | no |
| 2023 - Obol Splits V1 Audit - Zach Obront.pdf | ImmutableSplitController | unmatched — not counted | — | listed in scope | no |
| 2023 - Obol Splits V1 Audit - Zach Obront.pdf | ImmutableSplitControllerFactory | unmatched — not counted | — | listed in scope | no |
| 2023 - Obol Splits V1 Audit - Zach Obront.pdf | LidoSplit | unmatched — not counted | — | listed in scope | no |
| 2023 - Obol Splits V1 Audit - Zach Obront.pdf | LidoSplitFactory | unmatched — not counted | — | listed in scope | no |
| 2023 - Obol Splits V1 Audit - Zach Obront.pdf | OptimisticWithdrawalReceiver | unmatched — not counted | — | listed in scope | no |
| 2023 - Obol Splits V1 Audit - Zach Obront.pdf | OptimisticWithdrawalReceiverFactory | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 34 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8, low=2
- Match method counts: n/a

Zero-match audit list:

- [21166] Sayfer_2024-03_Penetration_Testing_CFD.pdf
- [21167] Sigma_Prime_Obol_Network_Charon_Security_Assessment_Report_v2_1.pdf
- [21168] charon_quantstamp_audit.pdf
- [21169] obront_solidity_assessment.pdf
- [21171] charon_quantstamp_assessment.pdf
- [21172] 2025 - Obol Splits V2 Audit - Nethermind.pdf
- [21173] 2025 - Obol Splits V3 Audit - Nethermind.pdf
- [21174] DKG_issues_lido_clusters.pdf
- [21175] charon_sigma_prime_assessment.pdf
- [21176] 2023 - Obol Splits V1 Audit - Zach Obront.pdf

Fork inheritance lineage and inherited audits are included when available.
