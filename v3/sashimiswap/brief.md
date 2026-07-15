# Agentic Audit Brief: SashimiSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 1 (0 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: SashimiSwap (`sashimiswap`)
- Website: [https://sashimi.cool/home/swap](https://sashimi.cool/home/swap)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 20 unique implementations (25 raw deployments)
- Coverage basis: 0/20 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $4,149,650.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SashimiSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 28 contract row(s) across ethereum. Structural roles: 17 unclassified, 10 core, 1 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 28
- Structural roles: unclassified (17), core (10), supporting (1)
- Contract kinds: contract (28)
- Detected standards: erc20 (8), ownable (1)
- Frameworks: openzeppelin (7)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 22 contracts are derived from known codebases. 22 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- SashimiBar (`0x6ed306...b91977`, chain 1)
- SashimiLendingVaultProvider (`0x194402...dcdfcb`, chain 1)
- SashimiLendingVaultProvider (`0x206d84...b60fcc`, chain 1)
- SashimiLendingVaultProvider (`0x33a057...5e72cf`, chain 1)
- SashimiLendingVaultProvider (`0x7bc801...0bce2b`, chain 1)
- SashimiLendingVaultProvider (`0x7cf056...d8b942`, chain 1)
- SashimiLendingVaultProvider (`0xd3d3fc...f891be`, chain 1)
- SashimiLendingVaultProvider (`0xfdedb3...6cf2f4`, chain 1)
- SashimiPlate (`0x422133...541ca6`, chain 1)
- SashimiPlate (`0x56bb94...fd6168`, chain 1)
- SashimiPlate (`0x722669...4edcc2`, chain 1)
- SashimiPlate (`0x81885d...9697fa`, chain 1)
- SashimiPlate (`0x8e95bc...778648`, chain 1)
- SashimiPlate (`0xc5d00a...60de7f`, chain 1)
- SashimiPlate (`0xe6cb94...cfda91`, chain 1)
- SLErc20Delegator (`0x2394de...fe013d`, chain 1)
- SLErc20Delegator (`0x6ddbcb...84f1b0`, chain 1)
- SLErc20Delegator (`0x8ce5aa...6e3af3`, chain 1)
- SLErc20Delegator (`0xbbcc16...01b9ea`, chain 1)
- SLErc20Delegator (`0xdddaf1...c86b45`, chain 1)
- Timelock (`0x84ee34...0224f3`, chain 1)
- Unitroller (`0xb5d53e...32d770`, chain 1)

## Contract Surface Quality

- Indexed contracts: 28; live-surface contracts included: 28 (25 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 20/21 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/20 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 20 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 8
- Deployed-live implementations: 20 of 20 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/20
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 20
- Raw deployments: 25
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2020-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Comptroller | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392034 | `0xb5d53e...32d770` | ⚠️ Unaudited |
| SashimiBar | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392022 | `0x6ed306...b91977` | ⚠️ Unaudited |
| SashimiLendingVaultProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392017 | `0x194402...dcdfcb` | ⚠️ Unaudited |
| SashimiLendingVaultProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392018 | `0x206d84...b60fcc` | ⚠️ Unaudited |
| SashimiLendingVaultProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392019 | `0x33a057...5e72cf` | ⚠️ Unaudited |
| SashimiLendingVaultProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392024 | `0x7bc801...0bce2b` | ⚠️ Unaudited |
| SashimiLendingVaultProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392025 | `0x7cf056...d8b942` | ⚠️ Unaudited |
| SashimiLendingVaultProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392031 | `0xd3d3fc...f891be` | ⚠️ Unaudited |
| SashimiLendingVaultProvider | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392033 | `0xfdedb3...6cf2f4` | ⚠️ Unaudited |
| SashimiPlate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392020 | `0x422133...541ca6` | ⚠️ Unaudited |
| SashimiPlate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392021 | `0x56bb94...fd6168` | ⚠️ Unaudited |
| SashimiPlate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392023 | `0x722669...4edcc2` | ⚠️ Unaudited |
| SashimiPlate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392026 | `0x81885d...9697fa` | ⚠️ Unaudited |
| SashimiPlate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392028 | `0x8e95bc...778648` | ⚠️ Unaudited |
| SashimiPlate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392030 | `0xc5d00a...60de7f` | ⚠️ Unaudited |
| SashimiPlate | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392032 | `0xe6cb94...cfda91` | ⚠️ Unaudited |
| SLDaiDelegate | unknown | project_anchor | own_supporting | 1 | ethereum | unit-392035 | `0x291823...313ea4` | ⚠️ Unaudited |
| SLErc20Delegate | unknown | project_anchor | own_supporting | 6 | ethereum | unit-392036 (6 proxies) | 6 deployments: ethereum `0x09a7fb...fb36f9`; ethereum `0x2394de...fe013d`; ethereum `0x6ddbcb...84f1b0`; ethereum `0x8ce5aa...6e3af3`; ethereum `0xbbcc16...01b9ea`; ethereum `0xdddaf1...c86b45` | ⚠️ Unaudited |
| SLEther | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392029 | `0xc597f8...ca5d82` | ⚠️ Unaudited |
| Timelock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392027 | `0x84ee34...0224f3` | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [sashimi_audit_report.pdf](https://sashimi.cool/files/sashimi_audit_report.pdf) | unknown | Audit | 2020-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2521] sashimi_audit_report.pdf — no match: All contracts listed in the scope table on page 6-7 of the report. Audit date is the end date of testing period: 2020-09-25.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| sashimi_audit_report.pdf | SashimiInvestment | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | Migrations | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | SashimiVault | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | GolffVault | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | IGOFPool | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | ETHCandy | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | MockGolff | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | MockRouter | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | MockToken | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | MockWETH | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | MockYFI | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | WETHVault | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | IWETH | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | IUniswapV2Router01 | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | IUniswapV2Router02 | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | IUniswapV2Factory | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | ISashimiVault | unmatched — not counted | — | listed in scope table | no |
| sashimi_audit_report.pdf | ISashimiInvestment | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xb5d53e...32d770` | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ed306...b91977` | SashimiBar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x194402...dcdfcb` | SashimiLendingVaultProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x206d84...b60fcc` | SashimiLendingVaultProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x33a057...5e72cf` | SashimiLendingVaultProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7bc801...0bce2b` | SashimiLendingVaultProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7cf056...d8b942` | SashimiLendingVaultProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd3d3fc...f891be` | SashimiLendingVaultProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfdedb3...6cf2f4` | SashimiLendingVaultProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x422133...541ca6` | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x56bb94...fd6168` | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x722669...4edcc2` | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x81885d...9697fa` | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x8e95bc...778648` | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc5d00a...60de7f` | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xe6cb94...cfda91` | SashimiPlate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x291823...313ea4` | SLDaiDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x09a7fb...fb36f9` | SLErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xc597f8...ca5d82` | SLEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x84ee34...0224f3` | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 20 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 18 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: n/a

Zero-match audit list:

- [2521] sashimi_audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
