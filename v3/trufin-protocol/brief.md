# Agentic Audit Brief: TruStake

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 5 audit(s)
- Eligible audit results: 13 (5 matched; 8 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: TruStake (`trufin-protocol`)
- Website: [https://app.truyields.com](https://app.truyields.com)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, polygon
- Contract surface: 3 unique implementations (3 raw deployments)
- Coverage basis: 2/2 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for TruStake. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 3 contract row(s) across ethereum, polygon. Structural roles: 2 unclassified, 1 infra. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 3
- Structural roles: unclassified (2), infra (1)
- Contract kinds: contract (3)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xf33687...7165a2`, chain 137)
- TransparentUpgradeableProxy (`0xa43a7c...8987ed`, chain 1)

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (2 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 3/3 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/2 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 3 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/2
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 3 fresh, 3 aging, 7 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 50.0% (OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Nethermind | Tier 2 | 2 | 100.0% | 2025-09 |
| OpenZeppelin | Tier 1 | 1 | 50.0% | 2023-07 |
| Zokyo | Tier 2 | 1 | 50.0% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| TruStakeMATICv2 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-394277 | `0xa43a7c...8987ed` | ✅ Audited |
| TruStakePOL | unknown | project_anchor | own_supporting | 1 | ethereum | unit-394278 | `0xc10214...c8e5e8` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-394276 | `0xf33687...7165a2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [TruYields-audit-report-Solana-TruRLP-vaults.pdf](https://truyields.com/audits/TruYields-audit-report-Solana-TruRLP-vaults.pdf) | Unknown | Audit | 2026-02 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [TruPOL-Nethermind-audit-september-2025.pdf](https://truyields.com/audits/TruPOL-Nethermind-audit-september-2025.pdf) | Nethermind | Audit | 2025-09 | fresh | Direct | contract_name | matched | 1 | 1 | 0 | 2 | high |
| [TruFin_Solana_Staker_Solana_Program_Security_Assessment_Report_Halborn_Final.pdf](https://truyields.com/audits/TruFin_Solana_Staker_Solana_Program_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [TruINJ-Zellic-Nov24.pdf](https://truyields.com/audits/TruINJ-Zellic-Nov24.pdf) | Zellic | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [TruNEAR-BlockSec-Sep24.pdf](https://truyields.com/audits/TruNEAR-BlockSec-Sep24.pdf) | BlockSec | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [TruFin Audit Report OtterSec-May24.pdf](https://truyields.com/audits/TruFin%20Audit%20Report%20OtterSec-May24.pdf) | OtterSec | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | medium |
| [Trufin Audit Report MoveBit-Apr24.pdf](https://truyields.com/audits/Trufin%20Audit%20Report%20MoveBit-Apr24.pdf) | MoveBit | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [TruMATIC-Nethermind-Dec23.pdf](https://truyields.com/audits/TruMATIC-Nethermind-Dec23.pdf) | Nethermind | Audit | 2023-12 | stale | Direct | n/a | matched | 1 | 1 | 0 | 10 | n/a |
| [TruMATIC-OpenZeppelin-Audit-Report.pdf](https://truyields.com/audits/TruMATIC-OpenZeppelin-Audit-Report.pdf) | OpenZeppelin | Audit | 2023-07 | stale | Direct | n/a | matched | 1 | 1 | 0 | 7 | n/a |
| [TruMATIC-Nethermind-Jun23.pdf](https://truyields.com/audits/TruMATIC-Nethermind-Jun23.pdf) | Nethermind | Audit | 2023-06 | stale | Direct | n/a | matched | 1 | 1 | 0 | 5 | n/a |
| [TruMATIC-ZokyoAudit-May23.pdf](https://truyields.com/audits/TruMATIC-ZokyoAudit-May23.pdf) | Zokyo | Audit | 2023-05 | stale | Direct | n/a | matched | 1 | 1 | 0 | 3 | n/a |
| [Trufin-audit-report-20230309.pdf](https://truyields.com/audits/Trufin-audit-report-20230309.pdf) | yAudit | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [www.halborn.com/audits/truyields/smart-contract-assessment-954e48](https://www.halborn.com/audits/truyields/smart-contract-assessment-954e48) | Halborn | Audit | 2026-05 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2211] TruYields-audit-report-Solana-TruRLP-vaults.pdf — no match: The audit report covers a single Solana program named 'raydium-vault'. The scope lists multiple source files under raydium-vault/programs/raydium-vault/src/. No individual contract names are extracted as the program is a single unit.
- [2212] TruPOL-Nethermind-audit-september-2025.pdf — matched: Audit report for TruStake POL by Nethermind. Scope clearly defined in 'Audited Files' section with three contracts: TruStakePOLStorage, TruStakePOL, and Types. Final report date is September 19, 2025.
- [2213] TruFin_Solana_Staker_Solana_Program_Security_Assessment_Report_Halborn_Final.pdf — no match: Extracted contract names from scope section and findings. Audit date is the end date of engagement (February 21, 2025).
- [2214] TruINJ-Zellic-Nov24.pdf — no match: Scope section lists 7 Rust source files (constants.rs, contract.rs, error.rs, lib.rs, msg.rs, state.rs, whitelist.rs) as the targets. Audit date is November 19, 2024 from the cover page.
- [2215] TruNEAR-BlockSec-Sep24.pdf — no match: The audit report explicitly states the target is NearStaker. No other contract names are mentioned in scope.
- [2216] TruFin Audit Report OtterSec-May24.pdf — no match: Only one contract name 'Aptos Staker' is explicitly mentioned in scope. No file paths or individual contract names provided.
- [2217] Trufin Audit Report MoveBit-Apr24.pdf — no match: Extracted 4 contracts from the Files in Scope table. Audit date is Tue Apr 30 2024 from the header.
- [2218] TruMATIC-Nethermind-Dec23.pdf — matched: No reason recorded
- [2219] TruMATIC-OpenZeppelin-Audit-Report.pdf — matched: No reason recorded
- [2220] TruMATIC-Nethermind-Jun23.pdf — matched: No reason recorded
- [2221] TruMATIC-ZokyoAudit-May23.pdf — matched: No reason recorded
- [2222] Trufin-audit-report-20230309.pdf — no match: Two contracts in scope: StakerStorage.sol and Staker.sol. Audit date from cover page.
- [15576] www.halborn.com/audits/truyields/smart-contract-assessment-954e48 — no match: The audit covers a single Solana program named 'trubill-vault' (the TRUBILL Solana Program). The scope lists all source files under programs/trubill-vault/src/. No other contract names are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| TruYields-audit-report-Solana-TruRLP-vaults.pdf | raydium-vault | unmatched — not counted | — | listed in scope | no |
| TruPOL-Nethermind-audit-september-2025.pdf | TruStakePOLStorage | unmatched — not counted | — | listed in Audited Files table | no |
| TruPOL-Nethermind-audit-september-2025.pdf | TruStakePOL | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xc10214...c8e5e8` — deployed 2025-09-26 14:17:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| TruPOL-Nethermind-audit-september-2025.pdf | Types | unmatched — not counted | — | listed in Audited Files table | no |
| TruFin_Solana_Staker_Solana_Program_Security_Assessment_Report_Halborn_Final.pdf | AddAgent | unmatched — not counted | — | listed in scope and finding 7.1 | no |
| TruFin_Solana_Staker_Solana_Program_Security_Assessment_Report_Halborn_Final.pdf | RemoveAgent | unmatched — not counted | — | listed in scope and finding 7.1 | no |
| TruFin_Solana_Staker_Solana_Program_Security_Assessment_Report_Halborn_Final.pdf | AddUserToWhitelist | unmatched — not counted | — | listed in scope and finding 7.1 | no |
| TruFin_Solana_Staker_Solana_Program_Security_Assessment_Report_Halborn_Final.pdf | AddUserToBlacklist | unmatched — not counted | — | listed in scope and finding 7.1 | no |
| TruFin_Solana_Staker_Solana_Program_Security_Assessment_Report_Halborn_Final.pdf | ClearUserStatus | unmatched — not counted | — | listed in scope and finding 7.1 | no |
| TruFin_Solana_Staker_Solana_Program_Security_Assessment_Report_Halborn_Final.pdf | InitializeStaker | unmatched — not counted | — | listed in scope and finding 7.2 | no |
| TruFin_Solana_Staker_Solana_Program_Security_Assessment_Report_Halborn_Final.pdf | AddValidator | unmatched — not counted | — | listed in scope and finding 7.3 | no |
| TruFin_Solana_Staker_Solana_Program_Security_Assessment_Report_Halborn_Final.pdf | RemoveValidator | unmatched — not counted | — | listed in scope and finding 7.3 | no |
| TruFin_Solana_Staker_Solana_Program_Security_Assessment_Report_Halborn_Final.pdf | IncreaseValidatorStake | unmatched — not counted | — | listed in scope and finding 7.3 | no |
| TruFin_Solana_Staker_Solana_Program_Security_Assessment_Report_Halborn_Final.pdf | DecreaseValidatorStake | unmatched — not counted | — | listed in scope and finding 7.3 | no |
| TruINJ-Zellic-Nov24.pdf | constants | unmatched — not counted | — | listed in scope table | no |
| TruINJ-Zellic-Nov24.pdf | contract | unmatched — not counted | — | listed in scope table | no |
| TruINJ-Zellic-Nov24.pdf | error | unmatched — not counted | — | listed in scope table | no |
| TruINJ-Zellic-Nov24.pdf | lib | unmatched — not counted | — | listed in scope table | no |
| TruINJ-Zellic-Nov24.pdf | msg | unmatched — not counted | — | listed in scope table | no |
| TruINJ-Zellic-Nov24.pdf | state | unmatched — not counted | — | listed in scope table | no |
| TruINJ-Zellic-Nov24.pdf | whitelist | unmatched — not counted | — | listed in scope table | no |
| TruNEAR-BlockSec-Sep24.pdf | NearStaker | unmatched — not counted | — | The target of this audit is the code repository of NearStaker of TruFin. | no |
| TruFin Audit Report OtterSec-May24.pdf | Aptos Staker | unmatched — not counted | — | listed in scope as 'Aptos Staker' | no |
| Trufin Audit Report MoveBit-Apr24.pdf | master_whitelist | unmatched — not counted | — | listed in scope table | no |
| Trufin Audit Report MoveBit-Apr24.pdf | truAPT | unmatched — not counted | — | listed in scope table | no |
| Trufin Audit Report MoveBit-Apr24.pdf | staker | unmatched — not counted | — | listed in scope table | no |
| Trufin Audit Report MoveBit-Apr24.pdf | staker.spec | unmatched — not counted | — | listed in scope table | no |
| TruMATIC-Nethermind-Dec23.pdf | ERC4626Storage | unmatched — not counted | — | — | no |
| TruMATIC-Nethermind-Dec23.pdf | IMasterWhitelist | unmatched — not counted | — | — | no |
| TruMATIC-Nethermind-Dec23.pdf | IStakeManager | unmatched — not counted | — | — | no |
| TruMATIC-Nethermind-Dec23.pdf | ITruStakeMATICv2 | unmatched — not counted | — | — | no |
| TruMATIC-Nethermind-Dec23.pdf | IValidatorShare | unmatched — not counted | — | — | no |
| TruMATIC-Nethermind-Dec23.pdf | MaliciousValidator_Deposit | unmatched — not counted | — | — | no |
| TruMATIC-Nethermind-Dec23.pdf | MaliciousValidator_Withdraw | unmatched — not counted | — | — | no |
| TruMATIC-Nethermind-Dec23.pdf | MasterWhitelist | unmatched — not counted | — | — | no |
| TruMATIC-Nethermind-Dec23.pdf | TruStakeMATICv2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xa43a7c...8987ed` — deployed 2023-06-14 17:06:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| TruMATIC-Nethermind-Dec23.pdf | TruStakeMATICv2Storage | unmatched — not counted | — | — | no |
| TruMATIC-Nethermind-Dec23.pdf | Types | unmatched — not counted | — | — | no |
| TruMATIC-OpenZeppelin-Audit-Report.pdf | IMasterWhitelist | unmatched — not counted | — | — | no |
| TruMATIC-OpenZeppelin-Audit-Report.pdf | IStakeManager | unmatched — not counted | — | — | no |
| TruMATIC-OpenZeppelin-Audit-Report.pdf | ITruStakeMATICv2 | unmatched — not counted | — | — | no |
| TruMATIC-OpenZeppelin-Audit-Report.pdf | IValidatorShare | unmatched — not counted | — | — | no |
| TruMATIC-OpenZeppelin-Audit-Report.pdf | MasterWhitelist | unmatched — not counted | — | — | no |
| TruMATIC-OpenZeppelin-Audit-Report.pdf | TruStakeMATICv2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xa43a7c...8987ed` — deployed 2023-06-14 17:06:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| TruMATIC-OpenZeppelin-Audit-Report.pdf | TruStakeMATICv2Storage | unmatched — not counted | — | — | no |
| TruMATIC-OpenZeppelin-Audit-Report.pdf | Types | unmatched — not counted | — | — | no |
| TruMATIC-Nethermind-Jun23.pdf | IMasterWhitelist | unmatched — not counted | — | — | no |
| TruMATIC-Nethermind-Jun23.pdf | IStakeManager | unmatched — not counted | — | — | no |
| TruMATIC-Nethermind-Jun23.pdf | IValidatorShare | unmatched — not counted | — | — | no |
| TruMATIC-Nethermind-Jun23.pdf | MasterWhitelist | unmatched — not counted | — | — | no |
| TruMATIC-Nethermind-Jun23.pdf | TruStakeMATICv2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xa43a7c...8987ed` — deployed 2023-06-14 17:06:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| TruMATIC-Nethermind-Jun23.pdf | TruStakeMATICv2Storage | unmatched — not counted | — | — | no |
| TruMATIC-ZokyoAudit-May23.pdf | Staker.sol | unmatched — not counted | — | — | no |
| TruMATIC-ZokyoAudit-May23.pdf | StakerStorage.sol | unmatched — not counted | — | — | no |
| TruMATIC-ZokyoAudit-May23.pdf | TruStakeMATICv2.sol | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xa43a7c...8987ed` — deployed 2023-06-14 17:06:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| TruMATIC-ZokyoAudit-May23.pdf | TruStakeMATICv2Storage.sol | unmatched — not counted | — | — | no |
| Trufin-audit-report-20230309.pdf | StakerStorage | unmatched — not counted | — | listed in scope | no |
| Trufin-audit-report-20230309.pdf | Staker | unmatched — not counted | — | listed in scope | no |
| www.halborn.com/audits/truyields/smart-contract-assessment-954e48 | trubill-vault | unmatched — not counted | — | listed in scope as Solana program | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (5 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 54 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8, medium=1
- Match method counts: unique_name=5

Zero-match audit list:

- [2211] TruYields-audit-report-Solana-TruRLP-vaults.pdf
- [2213] TruFin_Solana_Staker_Solana_Program_Security_Assessment_Report_Halborn_Final.pdf
- [2214] TruINJ-Zellic-Nov24.pdf
- [2215] TruNEAR-BlockSec-Sep24.pdf
- [2216] TruFin Audit Report OtterSec-May24.pdf
- [2217] Trufin Audit Report MoveBit-Apr24.pdf
- [2222] Trufin-audit-report-20230309.pdf
- [15576] www.halborn.com/audits/truyields/smart-contract-assessment-954e48

Fork inheritance lineage and inherited audits are included when available.
