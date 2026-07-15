# Agentic Audit Brief: Ensuro

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 3 audit(s)
- Eligible audit results: 5 (3 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Ensuro (`ensuro`)
- Website: [https://ensuro.co](https://ensuro.co)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, polygon
- Contract surface: 57 unique implementations (63 raw deployments)
- Coverage basis: 2/19 confirmed own live verified implementations (10.5%); conservative 10.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,102,228.58
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Ensuro. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 116 contract row(s) across ethereum, polygon. Structural roles: 113 unclassified, 2 supporting, 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 116
- Structural roles: unclassified (113), supporting (2), core (1)
- Contract kinds: contract (115), abstract (1)
- Detected standards: erc165 (1), erc1967proxy (1), erc20 (1), multicall (1), pausable (1)
- Frameworks: openzeppelin (3), aave (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Contract Surface Quality

- Indexed contracts: 116; live-surface contracts included: 116 (19 live, 97 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 19/95 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/19 (10.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 19 own, 38 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 60
- Deployed-live implementations: 19 of 57 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 2/19
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 57
- Raw deployments: 63
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 10.5% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 2 | 10.5% | 2025-12 |
| SlowMist | Tier 1 | 2 | 10.5% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LPManualWhitelist | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384384 | `0xca0d8d...28e545` | ✅ Audited |
| PolicyPool | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384382 | `0xd81a8b...9fa0a3` | ✅ Audited |

### ⚠️ Verified + Unaudited (54)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AaveV3InvestStrategy | operational_periphery | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-384356 | `0xd74a28...ac2497` | ⚠️ Unaudited |
| AccessManager | governance | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | ethereum | unit-384335 | `0x47e2af...026544` | ⚠️ Unaudited |
| AccessManager | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384404 | `0x47e2af...026544` | ⚠️ Unaudited |
| CashFlowLender | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384385 | `0x5fe11f...ae33e6` | ⚠️ Unaudited |
| CashFlowLender | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384386 | `0xccd55d...c24982` | ⚠️ Unaudited |
| ERC4626CashFlowLender | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384410 | `0x1858a3...1a85e8` | ⚠️ Unaudited |
| ERC4626CashFlowLender | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384413 | `0xfeddf0...3e1aaf` | ⚠️ Unaudited |
| EToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384381 | `0x12a4f3...9025e7` | ⚠️ Unaudited |
| EToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384373 | `0x176057...5341c2` | ⚠️ Unaudited |
| EToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384383 | `0x2cf13b...5a7387` | ⚠️ Unaudited |
| EToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384377 | `0xa55128...8ad224` | ⚠️ Unaudited |
| EToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384374 | `0xb375f4...4249c7` | ⚠️ Unaudited |
| EToken | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384375 | `0xfa9888...980b34` | ⚠️ Unaudited |
| EToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384397 | `0x1c48ac...52defc` | ⚠️ Unaudited |
| EToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384389 | `0x55bae6...421fb6` | ⚠️ Unaudited |
| EToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 2 | polygon | unit-384401 (2 proxies) | 2 deployments: polygon `0x6229d7...d1528c`; polygon `0xe36d65...74b476` | ⚠️ Unaudited |
| EToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 3 | polygon | unit-384402 (3 proxies) | 3 deployments: polygon `0x6a0e61...b4515e`; polygon `0xbc33c2...88dec6`; polygon `0xf383ef...a9f229` | ⚠️ Unaudited |
| EToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384392 | `0x8d2ee8...9c0274` | ⚠️ Unaudited |
| EToken | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 2 | polygon | unit-384418 (2 proxies) | 2 deployments: polygon `0x9078dd...bfb6f9`; polygon `0x9f967c...f7ec9d` | ⚠️ Unaudited |
| EuroCashFlowLender | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384394 | `0x2bb764...fe4c08` | ⚠️ Unaudited |
| EuroCashFlowLender | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384399 | `0xe7dc8c...3cdeae` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384395 | `0x3eab5b...d6539f` | ⚠️ Unaudited |
| FullSignedBucketRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384409 | `0xe64b6b...d6f460` | ⚠️ Unaudited |
| LPManualWhitelist | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384415 | `0x99b294...6a0c15` | ⚠️ Unaudited |
| MigrateERC4626CFL | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 2 | polygon | unit-384406 (2 proxies) | 2 deployments: polygon `0x48ff8b...958bf4`; polygon `0xf6b7a2...016ce0` | ⚠️ Unaudited |
| MultiRMCashFlowLender | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384391 | `0x0917c2...9d26c9` | ⚠️ Unaudited |
| OutflowLimitedAMMSV | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | ethereum | unit-384368 | `0x55bae6...421fb6` | ⚠️ Unaudited |
| PolicyPool | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384403 | `0xd74a28...ac2497` | ⚠️ Unaudited |
| PremiumsAccount | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384369 | `0x0b2aed...53bbdc` | ⚠️ Unaudited |
| PremiumsAccount | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384372 | `0x2153fe...d4f0a9` | ⚠️ Unaudited |
| PremiumsAccount | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384379 | `0x33918b...589e1d` | ⚠️ Unaudited |
| PremiumsAccount | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384367 | `0x585b9b...4b5a85` | ⚠️ Unaudited |
| PremiumsAccount | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384366 | `0x644da7...49c162` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384390 | `0x06347e...73e6f4` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384398 | `0x42118d...ad9358` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384388 | `0x47f35b...6e7b31` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384411 | `0x4f43b8...394520` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384408 | `0x8908d9...bfabc1` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384417 | `0xa5a8c6...1d80a7` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384407 | `0xc1a74e...2c6100` | ⚠️ Unaudited |
| PremiumsAccount | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384414 | `0xccf5c4...ba9328` | ⚠️ Unaudited |
| QuadrataWhitelist | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384387 | `0x0ce31c...57ae12` | ⚠️ Unaudited |
| RiskModule | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384370 | `0x09edb5...50611e` | ⚠️ Unaudited |
| RiskModule | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384380 | `0x243604...06107b` | ⚠️ Unaudited |
| RiskModule | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384371 | `0x95ec92...452891` | ⚠️ Unaudited |
| RiskModule | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384376 | `0xb0ff48...f5a623` | ⚠️ Unaudited |
| RiskModule | unknown | project_anchor | own_supporting | 1 | ethereum | unit-384378 | `0xd51002...c4f9bb` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384412 | `0x34c560...a94b78` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384405 | `0xa2f279...11683c` | ⚠️ Unaudited |
| SignedBucketRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384419 | `0xa65c9d...366df8` | ⚠️ Unaudited |
| SignedQuoteRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384416 | `0x37fe45...c162ca` | ⚠️ Unaudited |
| SignedQuoteRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384396 | `0x4d85a3...93121c` | ⚠️ Unaudited |
| TieredSignedQuoteRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 1 | polygon | unit-384393 | `0xdad2df...dd4df5` | ⚠️ Unaudited |
| TrustfulRiskModule | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 2 | polygon | unit-384400 (2 proxies) | 2 deployments: polygon `0x42842f...b31b28`; polygon `0xdfc75a...e06e93` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | deprecated_or_legacy_inventory (excluded) | 0 | polygon | unit-384365 | `0x3a80c5...0f32cb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Quantstamp-Ensuro-Final-Report-2022-11-09.pdf](https://github.com/ensuro/ensuro/blob/main/audits/Quantstamp-Ensuro-Final-Report-2022-11-09.pdf) | Quantstamp | Audit | 2022-11 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 16 | high |
| [SlowMistAuditReport-Ensuro-2021-09-29.pdf](https://github.com/ensuro/ensuro/blob/main/audits/SlowMistAuditReport-Ensuro-2021-09-29.pdf) | SlowMist | Audit | 2021-09 | stale | Direct | contract_name | matched | 2 | 2 | 0 | 8 | high |
| [DefiSafety.Process_Quality_Review.Ensuro.pdf](https://github.com/ensuro/ensuro/blob/main/audits/DefiSafety.Process_Quality_Review.Ensuro.pdf) | DefiSafety | Audit | 2024-03 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf](https://github.com/ensuro/ensuro/blob/main/audits/Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf) | Quantstamp | Audit | 2025-12 | fresh | Direct | contract_name | matched | 2 | 2 | 0 | 19 | high |
| [DefiSafety-93-badge.png](https://github.com/ensuro/ensuro/blob/main/audits/DefiSafety-93-badge.png) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [13091] Quantstamp-Ensuro-Final-Report-2022-11-09.pdf — matched: Extracted from Quantstamp audit report for Ensuro. Scope includes all contracts listed in the file signatures and findings sections. Date from cover page: November 10th 2022.
- [13092] SlowMistAuditReport-Ensuro-2021-09-29.pdf — matched: Contracts extracted from visibility tables and code locations in the audit report. Audit date is the end date of the audit period (2021.09.03 - 2021.09.24).
- [13093] DefiSafety.Process_Quality_Review.Ensuro.pdf — no match: The document is a process quality review (PQR) for the Ensuro protocol, not a smart contract audit. It does not list specific contracts in scope. The date is extracted from the header: 'Date:18 Mar 2024'.
- [13094] Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf — matched: Scope section explicitly lists 'contracts/*' files included, excluding mocks. All contracts mentioned in findings and test suite are within scope.
- [13095] DefiSafety-93-badge.png — no match: The provided text is a GitHub page snippet showing a badge image file path, not an audit report. No contracts or audit date are identifiable.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | AccessManager | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | EToken | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0x176057...5341c2` — deployed 2026-03-31 19:18:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xa55128...8ad224` — deployed 2026-03-18 22:46:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xb375f4...4249c7` — deployed 2026-03-31 19:20:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x2cf13b...5a7387` — deployed 2026-03-31 19:15:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x12a4f3...9025e7` — deployed 2026-03-18 22:52:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xfa9888...980b34` — deployed 2026-03-31 19:17:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | LPManualWhitelist | own proxy deployment | AccessManagedProxy (proxy) (selected) `0xca0d8d...28e545` — deployed 2026-03-19 18:32:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | PolicyPool | own proxy deployment | AccessManagedProxy (proxy) (selected) `0xd81a8b...9fa0a3` — deployed 2026-03-18 22:32:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | PolicyPoolComponent | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | PremiumsAccount | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0x644da7...49c162` — deployed 2026-03-31 23:29:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x585b9b...4b5a85` — deployed 2026-03-31 23:36:59+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x33918b...589e1d` — deployed 2026-03-31 23:27:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x0b2aed...53bbdc` — deployed 2026-03-31 23:31:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x2153fe...d4f0a9` — deployed 2026-03-18 22:57:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | RiskModule | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0xd51002...c4f9bb` — deployed 2026-04-01 22:43:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x243604...06107b` — deployed 2026-04-01 22:46:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x09edb5...50611e` — deployed 2026-04-01 22:48:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xb0ff48...f5a623` — deployed 2026-04-01 22:45:11+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x95ec92...452891` — deployed 2026-03-19 18:17:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | TrustfulRiskModule | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | PriceRiskModule | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | FlightDelayRiskModule | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | Reserve | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | Policy | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | LiquidityThresholdAssetManager | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | ERC4626AssetManager | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | TimeScaled | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | AAVEv2AssetManager | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | AAVEv3AssetManager | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-Final-Report-2022-11-09.pdf | SignedQuoteRiskModule | unmatched — not counted | — | mentioned in test results and findings | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | AaveAssetManager | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | BaseAssetManager | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | PolicyPoolComponent | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | EToken | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0x176057...5341c2` — deployed 2026-03-31 19:18:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xa55128...8ad224` — deployed 2026-03-18 22:46:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xb375f4...4249c7` — deployed 2026-03-31 19:20:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x2cf13b...5a7387` — deployed 2026-03-31 19:15:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x12a4f3...9025e7` — deployed 2026-03-18 22:52:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xfa9888...980b34` — deployed 2026-03-31 19:17:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | LPManualWhitelist | own proxy deployment | AccessManagedProxy (proxy) (selected) `0xca0d8d...28e545` — deployed 2026-03-19 18:32:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | PolicyNFT | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | PolicyPool | own proxy deployment | AccessManagedProxy (proxy) (selected) `0xd81a8b...9fa0a3` — deployed 2026-03-18 22:32:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | PolicyPoolConfig | unmatched — not counted | — | listed in scope and visibility table | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | RiskModule | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0xd51002...c4f9bb` — deployed 2026-04-01 22:43:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x243604...06107b` — deployed 2026-04-01 22:46:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x09edb5...50611e` — deployed 2026-04-01 22:48:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xb0ff48...f5a623` — deployed 2026-04-01 22:45:11+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x95ec92...452891` — deployed 2026-03-19 18:17:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| SlowMistAuditReport-Ensuro-2021-09-29.pdf | TrustfulRiskModule | unmatched — not counted | — | listed in scope and visibility table | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | PolicyPool | own proxy deployment | AccessManagedProxy (proxy) (selected) `0xd81a8b...9fa0a3` — deployed 2026-03-18 22:32:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | EToken | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0x176057...5341c2` — deployed 2026-03-31 19:18:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xa55128...8ad224` — deployed 2026-03-18 22:46:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xb375f4...4249c7` — deployed 2026-03-31 19:20:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x2cf13b...5a7387` — deployed 2026-03-31 19:15:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x12a4f3...9025e7` — deployed 2026-03-18 22:52:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xfa9888...980b34` — deployed 2026-03-31 19:17:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | PremiumsAccount | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0x644da7...49c162` — deployed 2026-03-31 23:29:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x585b9b...4b5a85` — deployed 2026-03-31 23:36:59+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x33918b...589e1d` — deployed 2026-03-31 23:27:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x0b2aed...53bbdc` — deployed 2026-03-31 23:31:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x2153fe...d4f0a9` — deployed 2026-03-18 22:57:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | RiskModule | ambiguous — not counted | AccessManagedProxy (proxy) (alternative) `0xd51002...c4f9bb` — deployed 2026-04-01 22:43:35+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x243604...06107b` — deployed 2026-04-01 22:46:47+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x09edb5...50611e` — deployed 2026-04-01 22:48:23+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0xb0ff48...f5a623` — deployed 2026-04-01 22:45:11+03 — liveness: live (current_address_book_code)<br>AccessManagedProxy (proxy) (alternative) `0x95ec92...452891` — deployed 2026-03-19 18:17:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | Reserve | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | Cooler | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | FullSignedUW | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | FullTrustedUW | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | LPManualWhitelist | own proxy deployment | AccessManagedProxy (proxy) (selected) `0xca0d8d...28e545` — deployed 2026-03-19 18:32:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | Policy | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | ETKLib | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | PolicyPoolComponent | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | IEToken | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | ICooler | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | ILPWhitelist | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | IPolicyHolder | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | IPolicyPool | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | IPolicyPoolComponent | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | IPremiumsAccount | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | IRiskModule | unmatched — not counted | — | listed in scope and findings | no |
| Quantstamp-Ensuro-v3-Final-Report-2025-12-17.pdf | IUnderwriter | unmatched — not counted | — | listed in scope and findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x5fe11f...ae33e6` | CashFlowLender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x12a4f3...9025e7` | EToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x176057...5341c2` | EToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2cf13b...5a7387` | EToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xa55128...8ad224` | EToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb375f4...4249c7` | EToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xfa9888...980b34` | EToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x0b2aed...53bbdc` | PremiumsAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2153fe...d4f0a9` | PremiumsAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x33918b...589e1d` | PremiumsAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x585b9b...4b5a85` | PremiumsAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x644da7...49c162` | PremiumsAccount | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x09edb5...50611e` | RiskModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x243604...06107b` | RiskModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x95ec92...452891` | RiskModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb0ff48...f5a623` | RiskModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xd51002...c4f9bb` | RiskModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 55 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (6 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 8 ambiguous, 35 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=2
- Match method counts: unique_name=6

Zero-match audit list:

- [13093] DefiSafety.Process_Quality_Review.Ensuro.pdf
- [13095] DefiSafety-93-badge.png

Fork inheritance lineage and inherited audits are included when available.
