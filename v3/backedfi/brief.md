# Agentic Audit Brief: BackedFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 7 (0 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

⚠️ Lifecycle status: UNKNOWN - TVL dropped 31.7% over 90 days

## Project Overview

- Project: BackedFi (`backedfi`)
- Website: [https://backed.fi](https://backed.fi)
- Lifecycle: unknown (Tier 0, 84% below peak)
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, bsc, ethereum, fantom, gnosis, polygon
- Contract surface: 5 unique implementations (14 raw deployments)
- Coverage basis: not assessable — No eligible owned address-book contracts are available for an operational-liveness denominator.
- DeFi Llama TVL: $7,720,098.84
- On-chain TVL (included contracts): $32,642,910.81
- TVL by chain: Ethereum $32,642,910.81

## ⚠️ Limited Contract Surface

This brief covers only 0 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for BackedFi in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Contract Surface Quality

- Operational liveness prerequisite: not_applicable; 0/0 eligible owned address-book contracts resolved from completed operational-liveness snapshots.
- Logic-topography rows: 0; live/inactive and live-deployment-unit totals are withheld until liveness completes.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No eligible owned address-book contracts are available for an operational-liveness denominator.
- Address-book implementation classification: 0 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 5 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 11
- Operational liveness: not_applicable; 0/0 eligible owned address-book contracts resolved. Deployed-live counts are withheld from coverage.
- All block-explorer-verified implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 5
- Raw deployments: 14
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BackedTokenImplementation | token | non_address_book | non_address_book_inventory (excluded) | 10 | ethereum | n/a | 10 deployments: ethereum `0x0f76d3...e17245`; ethereum `0x1e2c4f...801d59`; ethereum `0x20c64d...83df7a`; ethereum `0x2f11ee...191b86`; ethereum `0x2f123c...9b45e7`; ethereum `0x3f95aa...9c52c9`; ethereum `0x52d134...fdf9e4`; ethereum `0xade605...995995`; ethereum `0xbbcb03...403ac9`; ethereum `0xca30c9...435fb5` | ⚠️ Unaudited |
| BackedAutoFeeTokenImplementation | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa34c5e...bcc495` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x43624c...6f1e5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f7a4c...ffa2ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc3ce78...571a8e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Backed-Token-Bridge-FinalReport-202409.pdf](https://github.com/backed-fi/audits/blob/main/Backed-Token-Bridge-FinalReport-202409.pdf) | unknown | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Omega-Audit-Report-Dec-2022.pdf](https://github.com/backed-fi/audits/blob/main/Omega-Audit-Report-Dec-2022.pdf) | Omega | Audit | 2022-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [Omega-Audit-Report-July-2023.pdf](https://github.com/backed-fi/audits/blob/main/Omega-Audit-Report-July-2023.pdf) | Omega | Audit | 2023-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Omega-Audit-Report-May-2022.pdf](https://github.com/backed-fi/audits/blob/main/Omega-Audit-Report-May-2022.pdf) | Omega | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Rebasing_Token_Final_Report_20240702.pdf](https://github.com/backed-fi/audits/blob/main/Rebasing_Token_Final_Report_20240702.pdf) | unknown | Audit | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Wrapped-Backed-Final-Report-20231015-update20240130.pdf](https://github.com/backed-fi/audits/blob/main/Wrapped-Backed-Final-Report-20231015-update20240130.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [atomic-swap-audit-report-10-2025.pdf](https://github.com/backed-fi/audits/blob/main/atomic-swap-audit-report-10-2025.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20642] Backed-Token-Bridge-FinalReport-202409.pdf — no match: Two contracts in scope: BackedCCIPReceiver.sol and CCIPReceiverUpgradeable.sol. Audit date is the final report date: October 14, 2024.
- [20643] Omega-Audit-Report-Dec-2022.pdf — no match: The report does not list specific contract file names or addresses. The scope is described as changes to the ERC20 token contracts in a repository, but no explicit contract names are given beyond 'Backed ERC20 Token'.
- [20644] Omega-Audit-Report-July-2023.pdf — no match: The scope section mentions a repository and commit range but does not list specific contract names. The report title references 'BackedERC20 SolidityContracts' but no individual contract files are named.
- [20645] Omega-Audit-Report-May-2022.pdf — no match: Scope section explicitly lists four Solidity contracts. Audit date found in header: 'May 3, 2022'.
- [20646] Rebasing_Token_Final_Report_20240702.pdf — no match: Scope section lists three new files: BackedAutoFeeTokenFactory.sol, BackedAutoFeeTokenImplementation.sol, BackedFactory.sol. The WrappedBackedToken.sol is explicitly excluded. Audit date from title: 'July 2, 2024'.
- [20647] Wrapped-Backed-Final-Report-20231015-update20240130.pdf — no match: Audit report covers contracts in the wrapped-tokens repository. Scope section mentions files under contracts folder. Findings sections for each contract confirm they are audited. Audit date is October 15, 2023, updated January 30, 2024.
- [20648] atomic-swap-audit-report-10-2025.pdf — no match: Only one contract explicitly in scope: AtomicSwapUpgradeable.sol. The scope mentions 'Backed token contracts' and 'CCIP bridge' but these are not named contracts in the provided text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Backed-Token-Bridge-FinalReport-202409.pdf | BackedCCIPReceiver | unmatched — not counted | — | listed in scope | no |
| Backed-Token-Bridge-FinalReport-202409.pdf | CCIPReceiverUpgradeable | unmatched — not counted | — | listed in scope | no |
| Omega-Audit-Report-Dec-2022.pdf | Backed ERC20 Token | unmatched — not counted | — | The report states 'Backed Finance has asked Team Omega to audit the contracts that define the behavior of their ERC20 tokens' and 'Omega has audited the Backed Finance ERC20 Token in May 2022.' The scope mentions changes to the contracts in the repository github.com/backed-fi/backed-token-contract. | no |
| Omega-Audit-Report-May-2022.pdf | BackedFactory | unmatched — not counted | — | listed in scope | no |
| Omega-Audit-Report-May-2022.pdf | BackedTokenImplementation | unmatched — not counted | — | listed in scope | no |
| Omega-Audit-Report-May-2022.pdf | BackedTokenImplementationV2 | unmatched — not counted | — | listed in scope | no |
| Omega-Audit-Report-May-2022.pdf | ERC20PermitDelegateTransfer | unmatched — not counted | — | listed in scope | no |
| Rebasing_Token_Final_Report_20240702.pdf | BackedAutoFeeTokenFactory | unmatched — not counted | — | listed in scope | no |
| Rebasing_Token_Final_Report_20240702.pdf | BackedAutoFeeTokenImplementation | unmatched — not counted | — | listed in scope | no |
| Rebasing_Token_Final_Report_20240702.pdf | BackedFactory | unmatched — not counted | — | listed in scope | no |
| Wrapped-Backed-Final-Report-20231015-update20240130.pdf | WhitelistController | unmatched — not counted | — | listed in scope and findings section | no |
| Wrapped-Backed-Final-Report-20231015-update20240130.pdf | WhitelistControllerAggregator | unmatched — not counted | — | listed in scope and findings section | no |
| Wrapped-Backed-Final-Report-20231015-update20240130.pdf | WrappedBackedToken | unmatched — not counted | — | listed in scope and findings section | no |
| Wrapped-Backed-Final-Report-20231015-update20240130.pdf | WrappedBackedTokenFactory | unmatched — not counted | — | listed in scope and findings section | no |
| Wrapped-Backed-Final-Report-20231015-update20240130.pdf | WrappedBackedTokenProxy | unmatched — not counted | — | mentioned in findings WBTF1 | no |
| atomic-swap-audit-report-10-2025.pdf | AtomicSwapUpgradeable | unmatched — not counted | — | listed in scope and findings section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

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
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 16 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5, low=1, medium=1
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
