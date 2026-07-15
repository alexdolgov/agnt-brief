# Agentic Audit Brief: BMX

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: BMX (`bmx`)
- Website: [https://www.bmx.trade/](https://www.bmx.trade/)
- Lifecycle: active (Tier 0, 89.3% below peak)
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, mode, sonic
- Contract surface: 89 unique implementations (89 raw deployments)
- Coverage basis: 6/72 confirmed own live verified implementations (8.3%); conservative 8.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $2,110,605.00
- On-chain TVL (included contracts): $315,365.31
- TVL by chain: Base $315,365.31

## Project Description

This brief describes the observed EVM deployment and audit surface for BMX. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 77 contract row(s) across base, mode, sonic. Structural roles: 57 unclassified, 12 supporting, 8 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 77
- Structural roles: unclassified (57), supporting (12), core (8)
- Contract kinds: contract (74), unclassified (3)
- Detected standards: erc20 (4), accesscontrol (1), erc165 (1), erc20permit (1)
- Frameworks: openzeppelin (19)
- Upgradeable-pattern rows: 0

## Fork Analysis

1 of 22 contracts are derived from known codebases. 21 contracts have no detected origin.

### Forked Contracts

**Timelock** (`0x6c5a77...41bdd5`, chain 34443)
Origin: manta-atlantic-stake (`0x44ed2c...b3bc0e`)
Containment: 100.0% - 40 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- BMX (`0x548f93...f059b7`, chain 8453)
- BMX (`0x66eed5...0657eb`, chain 34443)
- FastPriceFeed (`0x3d220d...c2b0e4`, chain 34443)
- OptionTokenV3 (`0x3ff7ab...f79713`, chain 8453)
- OrderBook (`0xf9fc0b...258178`, chain 8453)
- PositionManager (`0x2ace8f...855c40`, chain 8453)
- PositionManager (`0x3cb54f...46563e`, chain 34443)
- PositionRouter (`0x927f9c...28d443`, chain 8453)
- PositionRouter (`0x6d6ec3...9fae04`, chain 34443)
- RewardDistributorV2 (`0x366152...c72ba3`, chain 34443)
- RewardRouterV3 (`0x49a976...ad124b`, chain 8453)
- RewardRouterV4 (`0x73bf80...42353c`, chain 34443)
- Router (`0xc60818...c3b174`, chain 8453)
- Router (`0xaa4020...82e6e0`, chain 34443)
- StakedGlp (`0x647559...8bc8de`, chain 8453)
- StakedGlp (`0x0eb231...18c12a`, chain 34443)
- Vault (`0xec8d8d...b4272c`, chain 8453)
- Vault (`0xff745b...f1ae49`, chain 34443)
- Vyper_contract (`0x8b2eea...70452c`, chain 34443)
- wSLT (`0x2ddcf8...058630`, chain 146)
- Yearn Token Vault (`0x4e74d4...bb4c7a`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 77; live-surface contracts included: 77 (77 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 89/89 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/72 (8.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 84 own, 5 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (5 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 89 of 89 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 6/72
- Verified + Unaudited implementations: 66
- Verified by bytecode match: 0
- Unverified implementations: 12
- Unique implementations: 89
- Raw deployments: 89
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $315,365.31
- Latest audit: 2025-08 (fresh)
- Audit staleness (calendar age): 1 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 8.3% (Sherlock, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 4 | 5.6% | 2025-07 |
| Spearbit | Tier 1 | 4 | 5.6% | 2025-08 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OrderBook | unknown | project_anchor | own_supporting | 0 | sonic | unit-381436 | `0x7e3f5e...3612a6` | ✅ Audited |
| PositionManager | unknown | project_anchor | own_supporting | 0 | sonic | unit-381430 | `0x620253...89c886` | ✅ Audited |
| PositionRouter | unknown | project_anchor | own_supporting | 0 | sonic | unit-381434 | `0x77f480...488246` | ✅ Audited |
| Router | unknown | project_anchor | own_supporting | 0 | sonic | unit-381417 | `0x0a2653...953169` | ✅ Audited |
| Vault | unknown | project_anchor | own_supporting | 0 | sonic | unit-381443 | `0x9cc4e8...a38acf` | ✅ Audited |
| VaultUtils | unknown | project_anchor | own_supporting | 0 | sonic | unit-381429 | `0x5174c0...f9bad2` | ✅ Audited |

### ⚠️ Verified + Unaudited (71)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Vault | core_logic | project_anchor | own_supporting | 0 | base | unit-381503 | `0xec8d8d...b4272c` | ⚠️ Unaudited |
| BatchSender | unknown | project_anchor | own_supporting | 0 | mode | unit-381465 | `0x4b3491...55f69d` | ⚠️ Unaudited |
| BLT | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-381502 | `0xe771b4...dd0633` | ⚠️ Unaudited |
| BltManager | unknown | project_anchor | own_supporting | 0 | base | unit-381500 | `0x9fac7b...d406c5` | ⚠️ Unaudited |
| BMX | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | base | unit-381497 | `0x548f93...f059b7` | ⚠️ Unaudited |
| BMX | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mode | unit-381467 | `0x66eed5...0657eb` | ⚠️ Unaudited |
| BMX Timelock | unknown | project_anchor | own_supporting | 0 | mode | unit-381478 | `0x7c6012...8ca5e2` | ⚠️ Unaudited |
| bnBMX | unknown | project_anchor | own_supporting | 0 | mode | unit-381484 | `0x9d0bad...92449a` | ⚠️ Unaudited |
| bUSD | unknown | project_anchor | own_supporting | 0 | sonic | unit-381421 | `0x25431f...38c4d6` | ⚠️ Unaudited |
| bUSD | unknown | project_anchor | own_supporting | 0 | mode | unit-381477 | `0x77f480...488246` | ⚠️ Unaudited |
| FastPriceEvents | unknown | project_anchor | own_supporting | 0 | sonic | unit-381447 | `0xc0136b...536df2` | ⚠️ Unaudited |
| FastPriceEvents | unknown | project_anchor | own_supporting | 0 | mode | unit-381453 | `0x005591...c6e36b` | ⚠️ Unaudited |
| FastPriceFeed | unknown | project_anchor | own_supporting | 0 | sonic | unit-381428 | `0x512f8d...dbd543` | ⚠️ Unaudited |
| FastPriceFeed | operational_periphery | project_anchor | own_supporting | 0 | mode | unit-381463 | `0x3d220d...c2b0e4` | ⚠️ Unaudited |
| fMLT (Tracker) | unknown | project_anchor | own_supporting | 0 | mode | unit-381489 | `0xccbf79...842fc3` | ⚠️ Unaudited |
| fSLT (Distributor) | unknown | project_anchor | own_supporting | 0 | sonic | unit-381438 | `0x86c48e...f075cf` | ⚠️ Unaudited |
| fSLT (Tracker) | unknown | project_anchor | own_supporting | 0 | sonic | unit-381424 | `0x3acf67...bce36e` | ⚠️ Unaudited |
| fsMLT (DistributorV2) | unknown | project_anchor | own_supporting | 0 | mode | unit-381475 | `0x749da3...846b9b` | ⚠️ Unaudited |
| fsMLT (Tracker) | unknown | project_anchor | own_supporting | 0 | mode | unit-381469 | `0x6c72ad...972a4f` | ⚠️ Unaudited |
| fsSLT (Tracker) | unknown | project_anchor | own_supporting | 0 | sonic | unit-381450 | `0xd5c313...b80a8e` | ⚠️ Unaudited |
| GlpBalance | unknown | project_anchor | own_supporting | 0 | sonic | unit-381431 | `0x6a24df...111af0` | ⚠️ Unaudited |
| GlpBalance | unknown | project_anchor | own_supporting | 0 | mode | unit-381473 | `0x7278ab...9128a9` | ⚠️ Unaudited |
| GlpManager | unknown | project_anchor | own_supporting | 0 | sonic | unit-381448 | `0xc60818...c3b174` | ⚠️ Unaudited |
| GlpManager | unknown | project_anchor | own_supporting | 0 | mode | unit-381490 | `0xf9fc0b...258178` | ⚠️ Unaudited |
| MLT | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | mode | unit-381483 | `0x952adb...684439` | ⚠️ Unaudited |
| OptionTokenV3 | token | project_anchor | own_supporting | 0 | base | unit-381494 | `0x3ff7ab...f79713` | ⚠️ Unaudited |
| OrderBook | unknown | project_anchor | own_supporting | 0 | base | unit-381504 | `0xf9fc0b...258178` | ⚠️ Unaudited |
| OrderBook | unknown | project_anchor | own_supporting | 0 | mode | unit-381472 | `0x714aad...09fd5d` | ⚠️ Unaudited |
| OrderBookReader | unknown | project_anchor | own_supporting | 0 | mode | unit-381488 | `0xcaf486...909118` | ⚠️ Unaudited |
| PositionManager | governance | project_anchor | own_supporting | 0 | base | unit-381493 | `0x2ace8f...855c40` | ⚠️ Unaudited |
| PositionManager | governance | project_anchor | own_supporting | 0 | mode | unit-381462 | `0x3cb54f...46563e` | ⚠️ Unaudited |
| PositionRouter | adapter | project_anchor | own_supporting | 0 | base | unit-381499 | `0x927f9c...28d443` | ⚠️ Unaudited |
| PositionRouter | adapter | project_anchor | own_supporting | 0 | mode | unit-381470 | `0x6d6ec3...9fae04` | ⚠️ Unaudited |
| Reader | unknown | project_anchor | own_supporting | 0 | mode | unit-381485 | `0xa3ea99...4340e9` | ⚠️ Unaudited |
| ReferralReader | unknown | project_anchor | own_supporting | 0 | mode | unit-381457 | `0x266d4c...a569b8` | ⚠️ Unaudited |
| RewardDistributorV2 | operational_periphery | project_anchor | own_supporting | 0 | mode | unit-381460 | `0x366152...c72ba3` | ⚠️ Unaudited |
| RewardReader | unknown | project_anchor | own_supporting | 0 | mode | unit-381461 | `0x3c293f...673a50` | ⚠️ Unaudited |
| RewardRouterV3 | adapter | project_anchor | own_supporting | 0 | base | unit-381495 | `0x49a976...ad124b` | ⚠️ Unaudited |
| RewardRouterV4 | unknown | project_anchor | own_supporting | 0 | sonic | unit-381418 | `0x0df4db...bb8064` | ⚠️ Unaudited |
| RewardRouterV4 | adapter | project_anchor | own_supporting | 0 | mode | unit-381474 | `0x73bf80...42353c` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | base | unit-381501 | `0xc60818...c3b174` | ⚠️ Unaudited |
| Router | adapter | project_anchor | own_supporting | 0 | mode | unit-381486 | `0xaa4020...82e6e0` | ⚠️ Unaudited |
| sbBMX (BonusDistributor) | unknown | project_anchor | own_supporting | 0 | mode | unit-381455 | `0x0df4db...bb8064` | ⚠️ Unaudited |
| sbBMX (Tracker) | unknown | project_anchor | own_supporting | 0 | sonic | unit-381432 | `0x6d6ec3...9fae04` | ⚠️ Unaudited |
| sbBMX (Tracker) | unknown | project_anchor | own_supporting | 0 | mode | unit-381464 | `0x4a2b3c...944be9` | ⚠️ Unaudited |
| sbfBMX (Distributor) | unknown | project_anchor | own_supporting | 0 | sonic | unit-381446 | `0xb7209e...dbb9a9` | ⚠️ Unaudited |
| sbfBMX (Distributor) | unknown | project_anchor | own_supporting | 0 | mode | unit-381458 | `0x26e6c4...a5e607` | ⚠️ Unaudited |
| sbfBMX (Tracker) | unknown | project_anchor | own_supporting | 0 | sonic | unit-381425 | `0x3cb54f...46563e` | ⚠️ Unaudited |
| sbfBMX (Tracker) | unknown | project_anchor | own_supporting | 0 | mode | unit-381466 | `0x548f93...f059b7` | ⚠️ Unaudited |
| sBMX (Distributor) | unknown | project_anchor | own_supporting | 0 | sonic | unit-381451 | `0xda6a45...42b462` | ⚠️ Unaudited |
| sBMX (Distributor) | unknown | project_anchor | own_supporting | 0 | mode | unit-381459 | `0x338cf5...b1d9c9` | ⚠️ Unaudited |
| sBMX (Tracker) | unknown | project_anchor | own_supporting | 0 | sonic | unit-381437 | `0x7fb62e...811b46` | ⚠️ Unaudited |
| sBMX (Tracker) | unknown | project_anchor | own_supporting | 0 | mode | unit-381476 | `0x773f34...4e00a3` | ⚠️ Unaudited |
| ShortsTracker | unknown | project_anchor | own_supporting | 0 | sonic | unit-381452 | `0xe974a8...0fa5f3` | ⚠️ Unaudited |
| ShortsTracker | unknown | project_anchor | own_supporting | 0 | mode | unit-381471 | `0x6fd75b...08d80d` | ⚠️ Unaudited |
| SLT | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | sonic | unit-381444 | `0x9e462d...3a9e1e` | ⚠️ Unaudited |
| StakedGlp | token | project_anchor | own_supporting | 0 | base | unit-381498 | `0x647559...8bc8de` | ⚠️ Unaudited |
| StakedGlp | token | project_anchor | own_supporting | 0 | mode | unit-381456 | `0x0eb231...18c12a` | ⚠️ Unaudited |
| StakedSlt | unknown | project_anchor | own_supporting | 0 | sonic | unit-381426 | `0x47cd08...bfcfcb` | ⚠️ Unaudited |
| StakeManager | unknown | project_anchor | own_supporting | 0 | mode | unit-381491 | `0xfc9a13...7bf5e0` | ⚠️ Unaudited |
| Timelock | governance | project_anchor | own_supporting | 0 | mode | unit-381468 | `0x6c5a77...41bdd5` | ⚠️ Unaudited |
| Vault | core_logic | project_anchor | own_supporting | 0 | mode | unit-381492 | `0xff745b...f1ae49` | ⚠️ Unaudited |
| VaultErrorController | unknown | project_anchor | own_supporting | 0 | sonic | unit-381423 | `0x31e5ff...c256d4` | ⚠️ Unaudited |
| VaultErrorController | unknown | project_anchor | own_supporting | 0 | mode | unit-381454 | `0x071b4b...94c3e8` | ⚠️ Unaudited |
| VaultPriceFeed | unknown | project_anchor | own_supporting | 0 | sonic | unit-381440 | `0x8e28ed...e0beac` | ⚠️ Unaudited |
| VaultPriceFeed | unknown | project_anchor | own_supporting | 0 | mode | unit-381480 | `0x845349...a1edca` | ⚠️ Unaudited |
| VaultReader | unknown | project_anchor | own_supporting | 0 | mode | unit-381487 | `0xc133f5...7b851a` | ⚠️ Unaudited |
| VaultUtils | unknown | project_anchor | own_supporting | 0 | mode | unit-381479 | `0x7fb62e...811b46` | ⚠️ Unaudited |
| Vyper_contract | unknown | project_anchor | own_supporting | 0 | mode | unit-381482 | `0x8b2eea...70452c` | ⚠️ Unaudited |
| wSLT | unknown | project_anchor | own_supporting | 0 | sonic | unit-381422 | `0x2ddcf8...058630` | ⚠️ Unaudited |
| Yearn Token Vault | core_logic | project_anchor | own_supporting | 0 | base | unit-381496 | `0x4e74d4...bb4c7a` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (12)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BatchSender | unknown | project_anchor | own_supporting | 0 | sonic | unit-381433 | `0x7724df...d61edc` | ❓ Unverified |
| bnBMX | unknown | project_anchor | own_supporting | 0 | sonic | unit-381420 | `0x1861fe...898ae2` | ❓ Unverified |
| fsSLT (DistributorV2) | unknown | project_anchor | own_supporting | 0 | sonic | unit-381427 | `0x4e7624...7c137c` | ❓ Unverified |
| OrderBookReader | unknown | project_anchor | own_supporting | 0 | sonic | unit-381419 | `0x145e8f...a9d587` | ❓ Unverified |
| Reader | unknown | project_anchor | own_supporting | 0 | sonic | unit-381442 | `0x9c959a...441a5e` | ❓ Unverified |
| ReferralReader | unknown | project_anchor | own_supporting | 0 | sonic | unit-381449 | `0xd3c5de...39f905` | ❓ Unverified |
| ReferralStorage | unknown | project_anchor | own_supporting | 0 | sonic | unit-381445 | `0xb677be...741acb` | ❓ Unverified |
| ReferralStorage | unknown | project_anchor | own_supporting | 0 | mode | unit-381481 | `0x88a3c3...ca6210` | ❓ Unverified |
| RewardReader | unknown | project_anchor | own_supporting | 0 | sonic | unit-381435 | `0x7c903c...23feaa` | ❓ Unverified |
| sbBMX (BonusDistributor) | unknown | project_anchor | own_supporting | 0 | sonic | unit-381441 | `0x92c976...6ffd29` | ❓ Unverified |
| StakeManager | unknown | project_anchor | own_supporting | 0 | sonic | unit-381439 | `0x8bc6d6...42ed8d` | ❓ Unverified |
| VaultReader | unknown | project_anchor | own_supporting | 0 | sonic | unit-381416 | `0x071b4b...94c3e8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Cantina_Audit_Jul_2025.pdf](https://github.com/useboardwalk/morphex-contracts/blob/main/audits/Cantina_Audit_Jul_2025.pdf) | Spearbit | Audit | 2025-08 | fresh | Direct | contract_name | matched | 4 | 0 | 0 | 0 | medium |
| [Sherlock_Audit_Jul_2025.pdf](https://github.com/useboardwalk/morphex-contracts/blob/main/audits/Sherlock_Audit_Jul_2025.pdf) | Sherlock | Contest | 2025-07 | aging | Direct | contract_name | matched | 4 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20664] Cantina_Audit_Jul_2025.pdf — matched: No explicit scope section; contracts inferred from findings and summary mentioning 'core BMX contracts (GMX fork)' and specific files.
- [20667] Sherlock_Audit_Jul_2025.pdf — matched: Scope section lists 5 files; audit date is July 24-25, 2025, so end date is July 25.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Cantina_Audit_Jul_2025.pdf | Orderbook | own contract | OrderBook (alternative) `0x714aad...09fd5d` — deployed 2024-07-01 20:04:05+03 — liveness: live (code_present_context)<br>OrderBook (alternative) `0xf9fc0b...258178` — deployed 2023-08-23 18:48:53+03 — liveness: live (code_present_context)<br>OrderBook (selected) `0x7e3f5e...3612a6` — deployed 2025-03-24 04:46:38+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-03-24 was 130d from audit; next candidate 396d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Audit_Jul_2025.pdf | Vault | own contract | Vault (alternative) `0xec8d8d...b4272c` — deployed 2023-08-23 18:21:41+03 — liveness: live (code_present_context)<br>Vault (selected) `0x9cc4e8...a38acf` — deployed 2025-03-24 04:32:18+03 — liveness: live (code_present_context)<br>Vault (alternative) `0xff745b...f1ae49` — deployed 2024-07-01 19:58:57+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-03-24 was 130d from audit; next candidate 396d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Audit_Jul_2025.pdf | PositionRouter | own contract | PositionRouter (selected) `0x77f480...488246` — deployed 2025-03-24 04:54:47+03 — liveness: live (code_present_context)<br>PositionRouter (alternative) `0x927f9c...28d443` — deployed 2023-08-23 18:51:55+03 — liveness: live (current_address_book_code)<br>PositionRouter (alternative) `0x6d6ec3...9fae04` — deployed 2024-07-01 20:06:43+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-03-24 was 130d from audit; next candidate 396d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Cantina_Audit_Jul_2025.pdf | VaultUtils | own contract | VaultUtils (alternative) `0x7fb62e...811b46` — deployed 2024-07-01 20:01:47+03 — liveness: live (code_present_context)<br>VaultUtils (selected) `0x5174c0...f9bad2` — deployed 2025-03-24 04:34:18+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-03-24 was 130d from audit; next candidate 396d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_Audit_Jul_2025.pdf | BasePositionManager | unmatched — not counted | — | listed in scope | no |
| Sherlock_Audit_Jul_2025.pdf | OrderBook | own contract | OrderBook (alternative) `0x714aad...09fd5d` — deployed 2024-07-01 20:04:05+03 — liveness: live (code_present_context)<br>OrderBook (alternative) `0xf9fc0b...258178` — deployed 2023-08-23 18:48:53+03 — liveness: live (code_present_context)<br>OrderBook (selected) `0x7e3f5e...3612a6` — deployed 2025-03-24 04:46:38+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-03-24 was 123d from audit; next candidate 389d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_Audit_Jul_2025.pdf | PositionManager | own contract | PositionManager (alternative) `0x3cb54f...46563e` — deployed 2024-07-01 20:09:43+03 — liveness: live (current_address_book_code)<br>PositionManager (alternative) `0x2ace8f...855c40` — deployed 2023-08-23 19:01:27+03 — liveness: live (current_address_book_code)<br>PositionManager (selected) `0x620253...89c886` — deployed 2025-03-24 04:56:24+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-03-24 was 123d from audit; next candidate 389d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_Audit_Jul_2025.pdf | PositionRouter | own contract | PositionRouter (selected) `0x77f480...488246` — deployed 2025-03-24 04:54:47+03 — liveness: live (code_present_context)<br>PositionRouter (alternative) `0x927f9c...28d443` — deployed 2023-08-23 18:51:55+03 — liveness: live (current_address_book_code)<br>PositionRouter (alternative) `0x6d6ec3...9fae04` — deployed 2024-07-01 20:06:43+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-03-24 was 123d from audit; next candidate 389d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock_Audit_Jul_2025.pdf | Router | own contract | Router (selected) `0x0a2653...953169` — deployed 2025-03-24 04:32:26+03 — liveness: live (code_present_context)<br>Router (alternative) `0xaa4020...82e6e0` — deployed 2024-07-01 19:59:13+03 — liveness: live (code_present_context)<br>Router (alternative) `0xc60818...c3b174` — deployed 2023-08-23 18:21:55+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2025-03-24 was 123d from audit; next candidate 389d; normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0xec8d8d...b4272c` | Vault | core_logic | $315,365.31 | Verified native implementation with $315,365.31 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x3d220d...c2b0e4` | FastPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x3ff7ab...f79713` | OptionTokenV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xf9fc0b...258178` | OrderBook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2ace8f...855c40` | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x3cb54f...46563e` | PositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x927f9c...28d443` | PositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x6d6ec3...9fae04` | PositionRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x366152...c72ba3` | RewardDistributorV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x49a976...ad124b` | RewardRouterV3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x73bf80...42353c` | RewardRouterV4 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xc60818...c3b174` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xaa4020...82e6e0` | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x647559...8bc8de` | StakedGlp | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0x6c5a77...41bdd5` | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | `0xff745b...f1ae49` | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 70 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 8 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 8 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: temporal_name=8

Fork inheritance lineage and inherited audits are included when available.
