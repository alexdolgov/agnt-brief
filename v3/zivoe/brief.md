# Agentic Audit Brief: Zivoe

## Export Authority

- Production state: **published scope**
- Raw selected rows: 29 across 5 audit(s)
- Eligible audit results: 5 (5 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Zivoe (`zivoe`)
- Website: [https://zivoe.com/](https://zivoe.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 39 unique implementations (47 raw deployments)
- Coverage basis: 19/26 confirmed own live verified implementations (73.1%); conservative 73.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $13,777,805.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Zivoe. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 26 contract row(s) across ethereum. Structural roles: 20 core, 3 supporting, 3 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 26
- Structural roles: core (20), supporting (3), unclassified (3)
- Contract kinds: contract (26)
- Detected standards: ownable (13), erc165 (11), erc20 (4), erc20permit (1), erc4626 (1)
- Frameworks: openzeppelin (23)
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 27 contracts are derived from known codebases. 26 contracts have no detected origin.

### Forked Contracts

**ZivoeGovernorV2** (`0x94ac60...32a71e`, chain 1)
Origin: alongside (`0x774045...2fb45e`)
Containment: 95.5% - 21 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original):
- updateTimelock(TimelockController)

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0df8aa...4b9df6`, chain 1)
- UnnamedContract (`0x2c0508...41e427`, chain 1)
- UnnamedContract (`0xd4b4e6...29c6d2`, chain 1)
- OCC_Cycle (`0x161c42...ccc17f`, chain 1)
- OCC_Modular (`0xfab4e8...262698`, chain 1)
- OCE_ZVE (`0xbe2623...25c7be`, chain 1)
- OCL_ZVE (`0x067683...6b8425`, chain 1)
- OCR_Cycle (`0x12e46e...78ad6f`, chain 1)
- OCT_Convert (`0x6e300a...4b321e`, chain 1)
- OCT_DAO (`0xd70233...78d108`, chain 1)
- OCT_YDL (`0x6172f8...e6ef87`, chain 1)
- OCT_ZVL (`0x79d68d...ce396f`, chain 1)
- OCY_OUSD (`0xdcfb98...6ae1d6`, chain 1)
- ZivoeDAO (`0xb65a66...550dd7`, chain 1)
- ZivoeGlobals (`0xea537e...83da66`, chain 1)
- ZivoeRewards (`0x0d45c2...9ded5d`, chain 1)
- ZivoeRewards (`0xb397aa...6b2dce`, chain 1)
- ZivoeRewards (`0xcacdb1...78aa7c`, chain 1)
- ZivoeRewardsVesting (`0x520f2b...1168f6`, chain 1)
- ZivoeRouter (`0x420909...a2c3b6`, chain 1)
- ZivoeToken (`0xe412d4...19a9d2`, chain 1)
- ZivoeTranches (`0x6282b4...4715a8`, chain 1)
- ZivoeTrancheToken (`0x7aa5bf...ad3bb6`, chain 1)
- ZivoeTrancheToken (`0xa923fa...ab6dd0`, chain 1)
- ZivoeVault (`0x94babe...fbedd4`, chain 1)
- ZivoeYDL (`0xfb7920...474b2b`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 26; live-surface rows included: 26 (26 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 29/29 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 19/26 (73.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 29 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 10 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 29 of 39 unique; 10 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 19/36
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 39
- Raw deployments: 47
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 19 match-unverified
- Tier 1 coverage: 26.9% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 16 | 44.4% | 2023-08 |
| Sherlock | Tier 1 | 7 | 19.4% | 2024-06 |
| Runtime Verification | Tier 2 | 3 | 8.3% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (19)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OCC_Modular | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398258 | `0xfab4e8...262698` | ✅ Audited |
| OCE_ZVE | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398249 | `0xbe2623...25c7be` | ✅ Audited |
| OCL_ZVE | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398231 | `0x067683...6b8425` | ✅ Audited |
| OCT_Convert | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398241 | `0x6e300a...4b321e` | ✅ Audited |
| OCT_DAO | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398252 | `0xd70233...78d108` | ✅ Audited |
| OCT_YDL | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398239 | `0x6172f8...e6ef87` | ✅ Audited |
| OCT_ZVL | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398242 | `0x79d68d...ce396f` | ✅ Audited |
| OCY_OUSD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398253 | `0xdcfb98...6ae1d6` | ✅ Audited |
| ZivoeDAO | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398248 | `0xb65a66...550dd7` | ✅ Audited |
| ZivoeGlobals | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398257 | `0xea537e...83da66` | ✅ Audited |
| ZivoeGovernorV2 | governance | project_anchor | own_supporting | 0 | ethereum | unit-398244 | `0x94ac60...32a71e` | ✅ Audited |
| ZivoeITO | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398256 | `0xe59023...c52aba` | ✅ Audited |
| ZivoeRewardsVesting | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-398238 | `0x520f2b...1168f6` | ✅ Audited |
| ZivoeRouter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-398237 | `0x420909...a2c3b6` | ✅ Audited |
| ZivoeTLC | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398254 | `0xe1a68a...3fc916` | ✅ Audited |
| ZivoeToken | token | project_anchor | own_supporting | 0 | ethereum | unit-398255 | `0xe412d4...19a9d2` | ✅ Audited |
| ZivoeTranches | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-398240 | `0x6282b4...4715a8` | ✅ Audited |
| ZivoeVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-398245 | `0x94babe...fbedd4` | ✅ Audited |
| ZivoeYDL | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398259 | `0xfb7920...474b2b` | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ATokenInstance | token | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x98c23e...e16f5c` | ⚠️ Unaudited |
| FrxUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xcacd6f...586e29` | ⚠️ Unaudited |
| OCC_Cycle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x09c977...ddb69c`; ethereum `0xb63c6a...986573` | ⚠️ Unaudited |
| OCC_Cycle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398235 | `0x161c42...ccc17f` | ⚠️ Unaudited |
| OCC_Modular | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 3 deployments: ethereum `0x5d4c6c...b932b3`; ethereum `0x9d0613...c029b9`; ethereum `0xf02125...bb3341` | ⚠️ Unaudited |
| OCC_Variable | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x26ac86...26f29e` | ⚠️ Unaudited |
| OCR_Cycle | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398234 | `0x12e46e...78ad6f` | ⚠️ Unaudited |
| OCR_CycleV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x060453...0fff3f` | ⚠️ Unaudited |
| OCR_Instant | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 5 deployments: ethereum `0x18e710...fa47eb`; ethereum `0x7720e6...2a89ec`; ethereum `0x90784f...20f737`; ethereum `0xa12d63...2c89ae`; ethereum `0xc25cd3...2be0d1` | ⚠️ Unaudited |
| OCT_Convert | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8c5fa1...951a85` | ⚠️ Unaudited |
| OCY_OUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x373a78...4270bb` | ⚠️ Unaudited |
| Safe | unknown | non_address_book | standard_proxy_or_library (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x50c72f...eb0fd5`; ethereum `0xc8d624...d5f026` | ⚠️ Unaudited |
| ZivoeRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398232 | `0x0d45c2...9ded5d` | ⚠️ Unaudited |
| ZivoeRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398247 | `0xb397aa...6b2dce` | ⚠️ Unaudited |
| ZivoeRewards | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398250 | `0xcacdb1...78aa7c` | ⚠️ Unaudited |
| ZivoeTrancheToken | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-398243 | `0x7aa5bf...ad3bb6` | ⚠️ Unaudited |
| ZivoeTrancheToken | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-398246 | `0xa923fa...ab6dd0` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398233 | `0x0df8aa...4b9df6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398236 | `0x2c0508...41e427` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-398251 | `0xd4b4e6...29c6d2` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [amp.runtimeverification.com/public-report/zivoe-vault](https://amp.runtimeverification.com/public-report/zivoe-vault) | Runtime Verification | Audit | 2025-03 | aging | Direct | n/a | matched | 3 | 0 | 0 | 0 | n/a |
| [2024.04.25 - Final - Zivoe Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.04.25%20-%20Final%20-%20Zivoe%20Audit%20Report.pdf) | Sherlock | Contest | 2024-06 | stale | Direct | contract_name | matched | 7 | 0 | 0 | 4 | high |
| [Zivoe_Core_Contracts.pdf](https://github.com/runtimeverification/publications/blob/main/reports/smart-contracts/Zivoe_Core_Contracts.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | matched | 9 | 0 | 0 | 7 | high |
| [Zivoe_Locker_Contracts.pdf](https://github.com/runtimeverification/publications/blob/main/reports/smart-contracts/Zivoe_Locker_Contracts.pdf) | unknown | Audit | 2023-08 | stale | Direct | n/a | matched | 7 | 0 | 0 | 4 | n/a |
| [Zivoe_Vault_FV_audit_report.pdf](https://github.com/runtimeverification/publications/blob/main/reports/smart-contracts/Zivoe_Vault_FV_audit_report.pdf) | Runtime Verification | Audit | 2025-03 | aging | Direct | n/a | matched | 3 | 0 | 0 | 0 | n/a |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [1985] amp.runtimeverification.com/public-report/zivoe-vault — matched: No reason recorded
- [1986] 2024.04.25 - Final - Zivoe Audit Report.pdf — matched: Extracted 11 contracts from the audit report scope and findings. Audit date is the end of the audit period (April 8-25, 2024).
- [12017] Zivoe_Core_Contracts.pdf — matched: Scope section explicitly lists 12 contracts and 4 libraries. Audit date found on cover page as 'Delivered:2023-07-10'.
- [12018] Zivoe_Locker_Contracts.pdf — matched: No reason recorded
- [15403] Zivoe_Vault_FV_audit_report.pdf — matched: No reason recorded

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| amp.runtimeverification.com/public-report/zivoe-vault | OCT_Convert | own contract | OCT_Convert (selected) `0x6e300a...4b321e` — deployed 2025-05-16 19:59:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| amp.runtimeverification.com/public-report/zivoe-vault | ZivoeRouter | own contract | ZivoeRouter (selected) `0x420909...a2c3b6` — deployed 2025-05-16 19:56:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| amp.runtimeverification.com/public-report/zivoe-vault | ZivoeVault | own contract | ZivoeVault (selected) `0x94babe...fbedd4` — deployed 2025-05-16 19:55:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024.04.25 - Final - Zivoe Audit Report.pdf | ZivoeRewards | ambiguous — not counted | ZivoeRewards (alternative) `0xb397aa...6b2dce` — deployed 2024-07-22 06:40:11+03 — liveness: live (code_present_context)<br>ZivoeRewards (alternative) `0x0d45c2...9ded5d` — deployed 2024-07-22 06:40:11+03 — liveness: live (code_present_context)<br>ZivoeRewards (alternative) `0xcacdb1...78aa7c` — deployed 2024-07-22 06:40:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024.04.25 - Final - Zivoe Audit Report.pdf | ZivoeRewardsVesting | own contract | ZivoeRewardsVesting (selected) `0x520f2b...1168f6` — deployed 2024-07-22 06:40:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024.04.25 - Final - Zivoe Audit Report.pdf | ZivoeITO | own contract | ZivoeITO (selected) `0xe59023...c52aba` — deployed 2024-07-22 06:40:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024.04.25 - Final - Zivoe Audit Report.pdf | ZivoeYDL | own contract | ZivoeYDL (selected) `0xfb7920...474b2b` — deployed 2024-07-22 06:40:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024.04.25 - Final - Zivoe Audit Report.pdf | OCY_Convex_C | unmatched — not counted | — | Listed in scope and findings H-6, H-7 | no |
| 2024.04.25 - Final - Zivoe Audit Report.pdf | OCY_Convex_A | unmatched — not counted | — | Listed in scope and finding H-7 | no |
| 2024.04.25 - Final - Zivoe Audit Report.pdf | OCY_Convex_B | unmatched — not counted | — | Listed in scope and finding H-7 | no |
| 2024.04.25 - Final - Zivoe Audit Report.pdf | OCL_ZVE | own contract | OCL_ZVE (selected) `0x067683...6b8425` — deployed 2024-07-22 06:40:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024.04.25 - Final - Zivoe Audit Report.pdf | OCC_Modular | own contract | OCC_Modular (selected) `0xfab4e8...262698` — deployed 2024-10-15 23:42:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024.04.25 - Final - Zivoe Audit Report.pdf | ZivoeTranches | own contract | ZivoeTranches (selected) `0x6282b4...4715a8` — deployed 2024-07-22 06:40:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024.04.25 - Final - Zivoe Audit Report.pdf | OCE_ZVE | own contract | OCE_ZVE (selected) `0xbe2623...25c7be` — deployed 2024-07-22 06:40:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zivoe_Core_Contracts.pdf | ZivoeDAO | own contract | ZivoeDAO (selected) `0xb65a66...550dd7` — deployed 2024-07-22 06:39:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zivoe_Core_Contracts.pdf | ZivoeGlobals | own contract | ZivoeGlobals (selected) `0xea537e...83da66` — deployed 2024-07-22 06:39:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zivoe_Core_Contracts.pdf | ZivoeGovernorV2 | own contract | ZivoeGovernorV2 (selected) `0x94ac60...32a71e` — deployed 2024-07-22 06:39:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zivoe_Core_Contracts.pdf | ZivoeITO | own contract | ZivoeITO (selected) `0xe59023...c52aba` — deployed 2024-07-22 06:40:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zivoe_Core_Contracts.pdf | ZivoeLocker | unmatched — not counted | — | listed in scope section | no |
| Zivoe_Core_Contracts.pdf | ZivoeMath | unmatched — not counted | — | listed in scope section | no |
| Zivoe_Core_Contracts.pdf | ZivoeRewards | ambiguous — not counted | ZivoeRewards (alternative) `0xb397aa...6b2dce` — deployed 2024-07-22 06:40:11+03 — liveness: live (code_present_context)<br>ZivoeRewards (alternative) `0x0d45c2...9ded5d` — deployed 2024-07-22 06:40:11+03 — liveness: live (code_present_context)<br>ZivoeRewards (alternative) `0xcacdb1...78aa7c` — deployed 2024-07-22 06:40:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Zivoe_Core_Contracts.pdf | ZivoeRewardsVesting | own contract | ZivoeRewardsVesting (selected) `0x520f2b...1168f6` — deployed 2024-07-22 06:40:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zivoe_Core_Contracts.pdf | ZivoeToken | own contract | ZivoeToken (selected) `0xe412d4...19a9d2` — deployed 2024-07-22 06:39:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zivoe_Core_Contracts.pdf | ZivoeTranches | own contract | ZivoeTranches (selected) `0x6282b4...4715a8` — deployed 2024-07-22 06:40:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zivoe_Core_Contracts.pdf | ZivoeTrancheToken | ambiguous — not counted | ZivoeTrancheToken (alternative) `0x7aa5bf...ad3bb6` — deployed 2024-07-22 06:40:11+03 — liveness: live (code_present_context)<br>ZivoeTrancheToken (alternative) `0xa923fa...ab6dd0` — deployed 2024-07-22 06:39:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Zivoe_Core_Contracts.pdf | ZivoeYDL | own contract | ZivoeYDL (selected) `0xfb7920...474b2b` — deployed 2024-07-22 06:40:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zivoe_Core_Contracts.pdf | FloorMath | unmatched — not counted | — | listed in scope section | no |
| Zivoe_Core_Contracts.pdf | OwnableLocked | unmatched — not counted | — | listed in scope section | no |
| Zivoe_Core_Contracts.pdf | ZivoeGTC | unmatched — not counted | — | listed in scope section | no |
| Zivoe_Core_Contracts.pdf | ZivoeTLC | own contract | ZivoeTLC (selected) `0xe1a68a...3fc916` — deployed 2024-07-22 06:39:59+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zivoe_Locker_Contracts.pdf | OCC_Modular | own contract | OCC_Modular (selected) `0xfab4e8...262698` — deployed 2024-10-15 23:42:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zivoe_Locker_Contracts.pdf | OCE_ZVE | own contract | OCE_ZVE (selected) `0xbe2623...25c7be` — deployed 2024-07-22 06:40:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zivoe_Locker_Contracts.pdf | OCL_ZVE | own contract | OCL_ZVE (selected) `0x067683...6b8425` — deployed 2024-07-22 06:40:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zivoe_Locker_Contracts.pdf | OCR_Modular | unmatched — not counted | — | — | no |
| Zivoe_Locker_Contracts.pdf | OCT_DAO | own contract | OCT_DAO (selected) `0xd70233...78d108` — deployed 2024-07-22 06:40:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zivoe_Locker_Contracts.pdf | OCT_YDL | own contract | OCT_YDL (selected) `0x6172f8...e6ef87` — deployed 2024-07-22 06:40:11+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zivoe_Locker_Contracts.pdf | OCT_ZVL | own contract | OCT_ZVL (selected) `0x79d68d...ce396f` — deployed 2024-07-22 06:40:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zivoe_Locker_Contracts.pdf | OCY_Convex_A | unmatched — not counted | — | — | no |
| Zivoe_Locker_Contracts.pdf | OCY_Convex_B | unmatched — not counted | — | — | no |
| Zivoe_Locker_Contracts.pdf | OCY_OUSD | own contract | OCY_OUSD (selected) `0xdcfb98...6ae1d6` — deployed 2024-07-22 07:11:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zivoe_Locker_Contracts.pdf | ZivoeSwapper | unmatched — not counted | — | — | no |
| Zivoe_Vault_FV_audit_report.pdf | OCT_Convert | own contract | OCT_Convert (selected) `0x6e300a...4b321e` — deployed 2025-05-16 19:59:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zivoe_Vault_FV_audit_report.pdf | ZivoeRouter | own contract | ZivoeRouter (selected) `0x420909...a2c3b6` — deployed 2025-05-16 19:56:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zivoe_Vault_FV_audit_report.pdf | ZivoeVault | own contract | ZivoeVault (selected) `0x94babe...fbedd4` — deployed 2025-05-16 19:55:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x161c42...ccc17f` | OCC_Cycle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x12e46e...78ad6f` | OCR_Cycle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0d45c2...9ded5d` | ZivoeRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb397aa...6b2dce` | ZivoeRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xcacdb1...78aa7c` | ZivoeRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7aa5bf...ad3bb6` | ZivoeTrancheToken | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa923fa...ab6dd0` | ZivoeTrancheToken | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 29 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 12 unmatched
- Matched-own operational status: 29 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=29

Fork inheritance lineage and inherited audits are included when available.
