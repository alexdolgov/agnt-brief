# Agentic Audit Brief: Hakka Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 11 across 5 audit(s)
- Eligible audit results: 8 (5 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Hakka Finance (`hakka-finance`)
- Website: [https://hakka.finance/](https://hakka.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, ethereum, polygon
- Contract surface: 36 unique implementations (36 raw deployments)
- Coverage basis: 8/32 confirmed own live verified implementations (25.0%); conservative 25.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,500,084.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Hakka Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 32 contract row(s) across bsc, ethereum, polygon. Structural roles: 17 core, 8 unclassified, 7 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 32
- Structural roles: core (17), unclassified (8), supporting (7)
- Contract kinds: contract (32)
- Detected standards: ownable (8), erc20 (7), erc20permit (1)
- Frameworks: openzeppelin (21)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 34 contracts are derived from known codebases. 34 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xae95d3...4a27dd`, chain 1)
- UnnamedContract (`0xb8b84c...5fa6a9`, chain 1)
- UnnamedContract (`0x1d1eb8...89aaac`, chain 56)
- UnnamedContract (`0x978338...f5efb4`, chain 137)
- blackholeswap (`0x35101c...341935`, chain 1)
- blackholeswap (`0x75192d...34ce7e`, chain 56)
- BPool (`0x1b8874...d77016`, chain 1)
- Burner (`0xde0231...c2b16d`, chain 1)
- GnosisSafeProxy (`0xb44c87...46eaa8`, chain 137)
- GuildBank (`0x83d0d8...bec8e7`, chain 1)
- Hakka (`0x0e29e5...de3bcd`, chain 1)
- HakkaHarvester (`0x3792ee...5e00bf`, chain 56)
- HakkaHarvester (`0x4d5054...291c56`, chain 56)
- HakkaHarvester (`0x6a3093...4642c8`, chain 56)
- HakkaHarvester (`0x8ba1c3...c53b96`, chain 56)
- HakkaHarvester (`0x992c01...ed852c`, chain 56)
- HakkaHarvester (`0xcb2131...99888e`, chain 56)
- HakkaRewards1 (`0x6b1ecb...c3ff11`, chain 1)
- HakkaRewards2 (`0x6ee668...e52f27`, chain 1)
- HakkaRewards3 (`0x3792ee...5e00bf`, chain 1)
- HakkaRewards4 (`0x3bd145...a64645`, chain 1)
- HakkaRewards5 (`0x0aa6c4...d11058`, chain 1)
- HakkaRewardsVesting (`0xf4d1f9...5b7977`, chain 1)
- HakkaRewardsVesting (`0x79eb6f...c55f4a`, chain 56)
- ImpermanentGain (`0xbf00da...64b6ab`, chain 1)
- Pot (`0xfd091f...30bd94`, chain 56)
- sHakka (`0xd99588...f15040`, chain 1)
- TFToken (`0xbdda96...e9dee3`, chain 1)
- ThreeFMutual (`0x66be1b...c6cb32`, chain 1)
- TokenFactory (`0x47ca21...0a4e95`, chain 137)
- UniswapV2Pair (`0x9c5999...b9957e`, chain 1)
- VestingVault (`0x51f123...238ed6`, chain 1)
- VestingVault (`0x6dbff2...fa94dc`, chain 56)
- VestingVault (`0xec4b77...b8001a`, chain 137)

## Contract Surface Quality

- Indexed contracts: 32; live-surface contracts included: 32 (32 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 36/37 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 8/32 (25.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 36 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Deployed-live implementations: 36 of 36 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 8/32
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 36
- Raw deployments: 36
- Audits discovered: 8 (8 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 7 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 5 | 15.6% | 2021-03 |
| unknown | Tier 2 | 4 | 12.5% | 2022-01 |
| yAudit | Tier 2 | 2 | 6.3% | 2020-09 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| blackholeswap | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387188 | `0x35101c...341935` | ✅ Audited |
| GuildBank | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387196 | `0x83d0d8...bec8e7` | ✅ Audited |
| Hakka | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387184 | `0x0e29e5...de3bcd` | ✅ Audited |
| HakkaRewardsVesting | unknown | project_anchor | own_supporting | 0 | bsc | unit-387214 | `0x79eb6f...c55f4a` | ✅ Audited |
| ImpermanentGain | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387201 | `0xbf00da...64b6ab` | ✅ Audited |
| ThankYouToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387195 | `0x7f8093...3032d5` | ✅ Audited |
| TokenFactory | registry | project_anchor | own_supporting | 0 | polygon | unit-387205 | `0x47ca21...0a4e95` | ✅ Audited |
| VestingVault | operational_periphery | project_anchor | own_supporting | 0 | bsc | unit-387212 | `0x6dbff2...fa94dc` | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| blackholeswap | unknown | project_anchor | own_supporting | 0 | bsc | unit-387213 | `0x75192d...34ce7e` | ⚠️ Unaudited |
| BPool | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-387186 | `0x1b8874...d77016` | ⚠️ Unaudited |
| Burner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387203 | `0xde0231...c2b16d` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | polygon | unit-387219 | `0xb44c87...46eaa8` | ⚠️ Unaudited |
| HakkaHarvester | unknown | project_anchor | own_supporting | 0 | bsc | unit-387209 | `0x3792ee...5e00bf` | ⚠️ Unaudited |
| HakkaHarvester | unknown | project_anchor | own_supporting | 0 | bsc | unit-387210 | `0x4d5054...291c56` | ⚠️ Unaudited |
| HakkaHarvester | unknown | project_anchor | own_supporting | 0 | bsc | unit-387211 | `0x6a3093...4642c8` | ⚠️ Unaudited |
| HakkaHarvester | unknown | project_anchor | own_supporting | 0 | bsc | unit-387215 | `0x8ba1c3...c53b96` | ⚠️ Unaudited |
| HakkaHarvester | unknown | project_anchor | own_supporting | 0 | bsc | unit-387216 | `0x992c01...ed852c` | ⚠️ Unaudited |
| HakkaHarvester | unknown | project_anchor | own_supporting | 0 | bsc | unit-387217 | `0xcb2131...99888e` | ⚠️ Unaudited |
| HakkaIntelligenceAlpha | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387185 | `0x0f2fd9...43140b` | ⚠️ Unaudited |
| HakkaRewards1 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387193 | `0x6b1ecb...c3ff11` | ⚠️ Unaudited |
| HakkaRewards2 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387194 | `0x6ee668...e52f27` | ⚠️ Unaudited |
| HakkaRewards3 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387189 | `0x3792ee...5e00bf` | ⚠️ Unaudited |
| HakkaRewards4 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387190 | `0x3bd145...a64645` | ⚠️ Unaudited |
| HakkaRewards5 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387183 | `0x0aa6c4...d11058` | ⚠️ Unaudited |
| HakkaRewardsVesting | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-387204 | `0xf4d1f9...5b7977` | ⚠️ Unaudited |
| Pot | unknown | project_anchor | own_supporting | 0 | bsc | unit-387218 | `0xfd091f...30bd94` | ⚠️ Unaudited |
| sHakka | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387202 | `0xd99588...f15040` | ⚠️ Unaudited |
| TFToken | token | project_anchor | own_supporting | 0 | ethereum | unit-387200 | `0xbdda96...e9dee3` | ⚠️ Unaudited |
| ThreeFMutual | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387192 | `0x66be1b...c6cb32` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387197 | `0x9c5999...b9957e` | ⚠️ Unaudited |
| VestingVault | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-387191 | `0x51f123...238ed6` | ⚠️ Unaudited |
| VestingVault | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-387207 | `0xec4b77...b8001a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387198 | `0xae95d3...4a27dd` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387199 | `0xb8b84c...5fa6a9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-387208 | `0x1d1eb8...89aaac` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-387206 | `0x978338...f5efb4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Hakka Finance Urban Giggle Audit.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Hakka%20Finance%20Urban%20Giggle%20Audit.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 2 | high |
| [Hakka Finance Vault contract wHakka audit.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Hakka%20Finance%20Vault%20contract%20wHakka%20audit.pdf) | unknown | Audit | 2021-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Hakka_Finance_iGain_V2_Audit_Report.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Hakka_Finance_iGain_V2_Audit_Report.pdf) | unknown | Audit | 2022-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 5 | high |
| [PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf](https://github.com/hakkafinance/audit-reports/blob/main/PeckShield-Audit-Report-Hakka-3FMutual-v1.0%20(1).pdf) | PeckShield | Audit | 2020-09 | stale | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf](https://github.com/hakkafinance/audit-reports/blob/main/PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf) | PeckShield | Audit | 2021-03 | stale | Direct | n/a | matched | 3 | 0 | 0 | 1 | n/a |
| [Smart Contract Security Audit Report - BlackHoleSwap.pdf](https://github.com/hakkafinance/audit-reports/blob/main/Smart%20Contract%20Security%20Audit%20Report%20-%20BlackHoleSwap.pdf) | yAudit | Audit | 2020-09 | stale | Direct | n/a | matched | 2 | 0 | 0 | 1 | n/a |
| [peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf](https://github.com/hakkafinance/audit-reports/blob/main/peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf) | PeckShield | Audit | 2020-09 | stale | Direct | n/a | matched | 2 | 0 | 0 | 2 | n/a |
| [audit-reports (GitHub directory)](https://github.com/hakkafinance/audit-reports) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2556] Hakka Finance Urban Giggle Audit.pdf — matched: Scope section states all .sol files in the codebase were considered. Five products are listed in Overview. No specific file paths given.
- [2557] Hakka Finance Vault contract wHakka audit.pdf — no match: Audit report for Hakka Finance Vault contract wHakka.sol. Scope explicitly mentions wHakka.sol. Other contracts (Ownable, ERC20, IERC20) are inherited or referenced in findings. Date is April 2021, approximated to last day of month.
- [2558] Hakka_Finance_iGain_V2_Audit_Report.pdf — matched: Scope mentioned v2 folder of iGain codebase; contracts extracted from overview and findings sections.
- [2559] PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf — no match: No reason recorded
- [2560] PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf — matched: No reason recorded
- [2561] Smart Contract Security Audit Report - BlackHoleSwap.pdf — matched: No reason recorded
- [2562] peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf — matched: No reason recorded
- [14453] audit-reports (GitHub directory) — no match: The provided text is a GitHub repository page listing audit report PDFs, not the actual audit report content. No contract names or scope details are extractable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Hakka Finance Urban Giggle Audit.pdf | ThankYouToken | own contract | ThankYouToken (selected) `0x7f8093...3032d5` — deployed 2020-11-19 20:47:28+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Hakka Finance Urban Giggle Audit.pdf | VestingVault | own contract | VestingVault (alternative) `0x51f123...238ed6` — deployed 2020-12-08 18:09:38+03 — liveness: live (current_address_book_code)<br>VestingVault (selected) `0x6dbff2...fa94dc` — deployed 2021-02-26 20:47:58+03 — liveness: live (code_present_context)<br>VestingVault (alternative) `0xec4b77...b8001a` — deployed 2022-01-11 14:34:06+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-02-26 was 56d from audit; next candidate 136d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Hakka Finance Urban Giggle Audit.pdf | VestingRewardContract | unmatched — not counted | — | mentioned in Overview as a product: Vesting Reward Contract | no |
| Hakka Finance Urban Giggle Audit.pdf | HakkaIntelligence | unmatched — not counted | — | mentioned in Overview as a product: Hakka Intelligence | no |
| Hakka Finance Urban Giggle Audit.pdf | ImpermanentGain | own contract | ImpermanentGain (selected) `0xbf00da...64b6ab` — deployed 2021-01-16 22:54:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Hakka Finance Vault contract wHakka audit.pdf | wHakka | unmatched — not counted | — | listed in scope | no |
| Hakka Finance Vault contract wHakka audit.pdf | Ownable | unmatched — not counted | — | referenced in findings | no |
| Hakka Finance Vault contract wHakka audit.pdf | ERC20 | unmatched — not counted | — | referenced in findings | no |
| Hakka Finance Vault contract wHakka audit.pdf | IERC20 | unmatched — not counted | — | referenced in findings | no |
| Hakka_Finance_iGain_V2_Audit_Report.pdf | IGainBase | unmatched — not counted | — | mentioned as base contract in overview | no |
| Hakka_Finance_iGain_V2_Audit_Report.pdf | IGainIL | unmatched — not counted | — | mentioned as contract inheriting IGainBase | no |
| Hakka_Finance_iGain_V2_Audit_Report.pdf | IGainAAVEIRS | unmatched — not counted | — | listed in findings files affected | no |
| Hakka_Finance_iGain_V2_Audit_Report.pdf | TokenFactory | own contract | TokenFactory (selected) `0x47ca21...0a4e95` — deployed 2022-01-11 18:37:20+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Hakka_Finance_iGain_V2_Audit_Report.pdf | IGainYearnIRS | unmatched — not counted | — | listed in findings files affected | no |
| Hakka_Finance_iGain_V2_Audit_Report.pdf | IGainDelta | unmatched — not counted | — | listed in findings files affected | no |
| PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf | 3FMutual | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf | InsuranceImprovementProposalProxy | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf | Ownable | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf | SafeMath | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf | Underwriter | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf | HakkaIntelligence | unmatched — not counted | — | — | no |
| PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf | HakkaRewardsVesting | own contract | HakkaRewardsVesting (selected) `0x79eb6f...c55f4a` — deployed 2021-03-02 16:31:52+03 — liveness: live (current_address_book_code)<br>HakkaRewardsVesting (alternative) `0xf4d1f9...5b7977` — deployed 2021-04-17 02:45:52+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-03-02 was 1d from audit; next candidate 47d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf | ImpermanentGain | own contract | ImpermanentGain (selected) `0xbf00da...64b6ab` — deployed 2021-01-16 22:54:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-Urban-Giggle-v1.0.pdf | VestingVault | own contract | VestingVault (alternative) `0x51f123...238ed6` — deployed 2020-12-08 18:09:38+03 — liveness: live (current_address_book_code)<br>VestingVault (selected) `0x6dbff2...fa94dc` — deployed 2021-02-26 20:47:58+03 — liveness: live (code_present_context)<br>VestingVault (alternative) `0xec4b77...b8001a` — deployed 2022-01-11 14:34:06+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2021-02-26 was 3d from audit; next candidate 83d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart Contract Security Audit Report - BlackHoleSwap.pdf | GuildBank | own contract | GuildBank (selected) `0x83d0d8...bec8e7` — deployed 2020-08-24 00:30:46+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart Contract Security Audit Report - BlackHoleSwap.pdf | Hakka | own contract | Hakka (selected) `0x0e29e5...de3bcd` — deployed 2020-04-14 19:30:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Smart Contract Security Audit Report - BlackHoleSwap.pdf | blackholeswapV1 | unmatched — not counted | — | — | no |
| peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf | BlackHoleSwap | own contract | blackholeswap (alternative) `0x75192d...34ce7e` — deployed 2021-02-20 18:16:54+03 — liveness: live (code_present_context)<br>blackholeswap (selected) `0x35101c...341935` — deployed 2020-08-16 01:04:07+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2020-08-16 was 16d from audit; next candidate 172d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf | Hakka | own contract | Hakka (selected) `0x0e29e5...de3bcd` — deployed 2020-04-14 19:30:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf | Ownable.sol | unmatched — not counted | — | — | no |
| peckshield-audit-report-hakka-blackholeswap-v1.0-p1.pdf | SafeMath | unmatched — not counted | — | — | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x75192d...34ce7e` | blackholeswap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1b8874...d77016` | BPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xde0231...c2b16d` | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3792ee...5e00bf` | HakkaHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x4d5054...291c56` | HakkaHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x6a3093...4642c8` | HakkaHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8ba1c3...c53b96` | HakkaHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x992c01...ed852c` | HakkaHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xcb2131...99888e` | HakkaHarvester | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0f2fd9...43140b` | HakkaIntelligenceAlpha | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6b1ecb...c3ff11` | HakkaRewards1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6ee668...e52f27` | HakkaRewards2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3792ee...5e00bf` | HakkaRewards3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3bd145...a64645` | HakkaRewards4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0aa6c4...d11058` | HakkaRewards5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf4d1f9...5b7977` | HakkaRewardsVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xfd091f...30bd94` | Pot | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd99588...f15040` | sHakka | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbdda96...e9dee3` | TFToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x66be1b...c6cb32` | ThreeFMutual | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x51f123...238ed6` | VestingVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xec4b77...b8001a` | VestingVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 30 |
| upstream | 1 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 11 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 20 unmatched
- Matched-own operational status: 11 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: temporal_name=4, unique_name=7

Zero-match audit list:

- [2557] Hakka Finance Vault contract wHakka audit.pdf
- [2559] PeckShield-Audit-Report-Hakka-3FMutual-v1.0 (1).pdf
- [14453] audit-reports (GitHub directory)

Fork inheritance lineage and inherited audits are included when available.
