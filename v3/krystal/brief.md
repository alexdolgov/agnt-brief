# Agentic Audit Brief: Krystal

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 6 (0 matched; 6 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Krystal (`krystal`)
- Website: [https://krystal.app](https://krystal.app)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 12 unique implementations (12 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $195,491.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Krystal in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xed2bd1...8cd9cc`, chain 1)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 11 discovered implementations excluded (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 1 of 12 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| NFTDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42b24a...0a48ec` | ⚠️ Unaudited |
| NonfungiblePositionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xc36442...11fe88` | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x91ae84...9294f3` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0xb75354...e90cf2` | ⚠️ Unaudited |
| Quoter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb27308...ce5ab6` | ⚠️ Unaudited |
| QuoterV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x61ffe0...30b21e` | ⚠️ Unaudited |
| SwapRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xe59242...861564` | ⚠️ Unaudited |
| SwapRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x075b36...aa8a60` | ⚠️ Unaudited |
| TickLens | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfd813...47f573` | ⚠️ Unaudited |
| V3Migrator | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa5644e...f92b34` | ⚠️ Unaudited |
| VaultFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3a35f9...922cf3` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-244430 | `0xed2bd1...8cd9cc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [code4rena.com/reports/2024-06-krystal-defi](https://code4rena.com/reports/2024-06-krystal-defi) | Code4rena | Contest | 2024-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [Verichains Public Report - Krystal.pdf](https://github.com/KrystalDeFi/krystal-vault-contracts-v2/blob/5e618a9c958cec32df9bb83d35a3bea78446287e/audit/Verichains%20Public%20Report%20-%20Krystal.pdf) | Verichains | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [Verichains Public Audit Report - Krystal - v1.1.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Krystal%20-%20v1.1.pdf) | Verichains | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [4naly3er-report.md](https://github.com/code-423n4/2024-06-krystal-defi/blob/main/4naly3er-report.md) | 4naly3er | Contest | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [bot-report.md](https://github.com/code-423n4/2024-06-krystal-defi/blob/main/bot-report.md) | unknown | Contest | 2024-06 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [PeckShield-Audit-Report-Revert-V3utils-v1.0.pdf](https://github.com/code-423n4/2024-06-krystal-defi/blob/main/audit/PeckShield-Audit-Report-Revert-V3utils-v1.0.pdf) | PeckShield | Contest | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21391] code4rena.com/reports/2024-06-krystal-defi — no match: Scope section states 5 smart contracts; extracted from file paths and contract names in findings.
- [21392] Verichains Public Report - Krystal.pdf — no match: All contracts listed in the scope table (Section 1.2) with SHA256 sums are included. The audit date is explicitly stated as 'Jun 10, 2025' on the cover page and throughout the report.
- [21393] Verichains Public Audit Report - Krystal - v1.1.pdf — no match: Extracted contract names from sections 2.1.1-2.1.4 and file paths mentioned in the report. Audit date from cover page and version history.
- [24113] 4naly3er-report.md — no match: No explicit scope section found; contracts inferred from file paths in findings.
- [24114] bot-report.md — no match: The document is a placeholder for an automated findings report; no audit report content, contract names, or date are present.
- [24115] PeckShield-Audit-Report-Revert-V3utils-v1.0.pdf — no match: The audit report focuses on the V3Utils contract of Revert Finance. No explicit scope table is present, but the contract is consistently referenced as the target in findings and description.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| code4rena.com/reports/2024-06-krystal-defi | Common | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2024-06-krystal-defi | V3Automation | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2024-06-krystal-defi | V3Utils | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2024-06-krystal-defi | StructHash | unmatched — not counted | — | listed in scope | no |
| code4rena.com/reports/2024-06-krystal-defi | EIP712 | unmatched — not counted | — | listed in scope | no |
| Verichains Public Report - Krystal.pdf | ConfigManager | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains Public Report - Krystal.pdf | PoolOptimalSwapper | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains Public Report - Krystal.pdf | Vault | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains Public Report - Krystal.pdf | VaultFactory | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains Public Report - Krystal.pdf | ICommon | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains Public Report - Krystal.pdf | ICreateX | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains Public Report - Krystal.pdf | IWETH9 | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains Public Report - Krystal.pdf | LpUniV3StructHash | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains Public Report - Krystal.pdf | AssetLib | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains Public Report - Krystal.pdf | InventoryLib | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains Public Report - Krystal.pdf | OptimalSwap | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains Public Report - Krystal.pdf | CustomEIP712 | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains Public Report - Krystal.pdf | LpFeeTaker | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains Public Report - Krystal.pdf | LpStrategy | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains Public Report - Krystal.pdf | LpValidator | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains Public Report - Krystal.pdf | VaultAutomator | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains Public Report - Krystal.pdf | MerklAutomator | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains Public Report - Krystal.pdf | MerklStrategy | unmatched — not counted | — | listed in scope table with SHA256 sum | no |
| Verichains Public Audit Report - Krystal - v1.1.pdf | SmartWalletProxy | unmatched — not counted | — | Section 2.1.1 | no |
| Verichains Public Audit Report - Krystal - v1.1.pdf | SmartWalletImplementation | unmatched — not counted | — | Section 2.1.2 | no |
| Verichains Public Audit Report - Krystal - v1.1.pdf | BaseSwap | unmatched — not counted | — | Section 2.1.3 | no |
| Verichains Public Audit Report - Krystal - v1.1.pdf | ISwap | unmatched — not counted | — | Section 2.1.3 | no |
| Verichains Public Audit Report - Krystal - v1.1.pdf | BaseLending | unmatched — not counted | — | Section 2.1.4 | no |
| Verichains Public Audit Report - Krystal - v1.1.pdf | ILending | unmatched — not counted | — | Section 2.1.4 | no |
| Verichains Public Audit Report - Krystal - v1.1.pdf | UniSwap | unmatched — not counted | — | Section 2.1.3 | no |
| Verichains Public Audit Report - Krystal - v1.1.pdf | UniSwapV3 | unmatched — not counted | — | Section 2.1.3 | no |
| Verichains Public Audit Report - Krystal - v1.1.pdf | KyberDmm | unmatched — not counted | — | Section 2.1.3 | no |
| Verichains Public Audit Report - Krystal - v1.1.pdf | KyberProxy | unmatched — not counted | — | Section 2.1.3 | no |
| Verichains Public Audit Report - Krystal - v1.1.pdf | AaveV1Lending | unmatched — not counted | — | Section 2.1.4 | no |
| Verichains Public Audit Report - Krystal - v1.1.pdf | AaveV2Lending | unmatched — not counted | — | Section 2.1.4 | no |
| Verichains Public Audit Report - Krystal - v1.1.pdf | CompoundLending | unmatched — not counted | — | Section 2.1.4 | no |
| 4naly3er-report.md | Common | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | V3Automation | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | V3Utils | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | EIP712 | unmatched — not counted | — | listed in scope | no |
| 4naly3er-report.md | StructHash | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-Revert-V3utils-v1.0.pdf | V3Utils | unmatched — not counted | — | Listed as target in findings (PVE-001, PVE-002, PVE-003) and mentioned as the main contract of the audit. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 42 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [21391] code4rena.com/reports/2024-06-krystal-defi
- [21392] Verichains Public Report - Krystal.pdf
- [21393] Verichains Public Audit Report - Krystal - v1.1.pdf
- [24113] 4naly3er-report.md
- [24114] bot-report.md
- [24115] PeckShield-Audit-Report-Revert-V3utils-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
