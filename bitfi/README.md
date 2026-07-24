# Agentic Audit Brief: BitFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 5 (0 matched; 5 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: BitFi (`bitfi`)
- Website: [https://bitfi.org](https://bitfi.org)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: ailayer, base, bitlayer, bsc, ethereum
- Contract surface: 26 unique implementations (27 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $264,654,912.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for BitFi in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 9 contracts are derived from known codebases. 9 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x0497dd14524dd59bcd76da7dc977a0f6120b1aca`, chain 1)
- UnnamedContract (`0x0971cb672b4ef3e19284aa64717afb154a6fbedf`, chain 1)
- UnnamedContract (`0x1898f16583152a6af129e3df14f0c955ca6201f7`, chain 1)
- UnnamedContract (`0x4f85cbfdefbdb3fa96fcf1e38b0ee68db9ae438b`, chain 1)
- UnnamedContract (`0xa3deaa934a4cc648a45d8269a012894315e53518`, chain 1)
- UnnamedContract (`0xa3eb7a9e57fca4e40b79e394ed5eb37fed205a24`, chain 1)
- UnnamedContract (`0xde5d4ab42251ba9af6f247cf07c9a4793fa6ed88`, chain 1)
- UnnamedContract (`0x623f2774d9f27b59bc6b954544487532ce79d9df`, chain 56)
- UnnamedContract (`0xcdfb58c8c859cb3f62ebe9cf2767f9e036c7fb15`, chain 200901)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 9/24 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 9 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 16 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 9 of 26 unique; 17 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 21
- Unique implementations: 26
- Raw deployments: 27
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 2 fresh, 2 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Bfbtc | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x128eb2baca6ac5416bed268d41c202fc41d55f1b` | ⚠️ Unaudited |
| BfbtcOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3f8c84fe47486156b81e74f08c4d9be3c3ab5f5b`; base `0xa8e3684e4df9b7feb16a9146e6cc541eb513b3b8` | ⚠️ Unaudited |
| BitFiStablecoinManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb69865f8fa4bfc67ab4ad233e36ac593a5d21f06` | ⚠️ Unaudited |
| BitFiStablecoinZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x140b5517df7e33878eb0a494d6882cfac54b66cb` | ⚠️ Unaudited |
| StakedBitFiStablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x688745d56f93924dbda1c2caa613adcbcea871c5` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (21)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380600 | `0x0497dd14524dd59bcd76da7dc977a0f6120b1aca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380602 | `0x0971cb672b4ef3e19284aa64717afb154a6fbedf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x128eb2baca6ac5416bed268d41c202fc41d55f1b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380603 | `0x1898f16583152a6af129e3df14f0c955ca6201f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bbd33135621ce0d2faa023adec2faf5a7458a92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4ca67a794051e036eefb5aa4b34fe2bd836069f0` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380604 | `0x4f85cbfdefbdb3fa96fcf1e38b0ee68db9ae438b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5363949018262d778a6ff7b4a16c82b4e5c78395` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | ethereum | unit-380605 | `0x5506570fd527c06902b51e33535943c9dc941bbe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5f339e8811941271e9037a5d899766e3f5a7ff47` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x623f2774d9f27b59bc6b954544487532ce79d9df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380606 | `0xa3deaa934a4cc648a45d8269a012894315e53518` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380607 | `0xa3eb7a9e57fca4e40b79e394ed5eb37fed205a24` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcdfb58c8c859cb3f62ebe9cf2767f9e036c7fb15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd32224533b63ddeb63409010fe6c841350951734` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-380609 | `0xde5d4ab42251ba9af6f247cf07c9a4793fa6ed88` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-380612 | `0x623f2774d9f27b59bc6b954544487532ce79d9df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9b974faa2987a16a39a4bb731cb2a191d31c54dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x128eb2baca6ac5416bed268d41c202fc41d55f1b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x623f2774d9f27b59bc6b954544487532ce79d9df` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bitlayer | unit-380611 | `0xcdfb58c8c859cb3f62ebe9cf2767f9e036c7fb15` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 12
- Live contracts: 0
- Unknown liveness contracts: 12
- Source-verified contracts: 0
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: unverified unclassified=12

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| base | unverified unclassified | UnnamedContract<br>`0x128eb2baca6ac5416bed268d41c202fc41d55f1b` | non_address_book | unknown | unknown | unverified | n/a | `0xd931401b37c3a368505e7ae6de700f2b0ad14ac6` |
| base | unverified unclassified | UnnamedContract<br>`0x623f2774d9f27b59bc6b954544487532ce79d9df` | non_address_book | unknown | unknown | unverified | n/a | `0xd931401b37c3a368505e7ae6de700f2b0ad14ac6` |
| base | unverified unclassified | UnnamedContract<br>`0xa8e3684e4df9b7feb16a9146e6cc541eb513b3b8` | non_address_book | unknown | unknown | unverified | n/a | `0xd931401b37c3a368505e7ae6de700f2b0ad14ac6` |
| bsc | unverified unclassified | UnnamedContract<br>`0x9b974faa2987a16a39a4bb731cb2a191d31c54dd` | non_address_book | unknown | unknown | unverified | n/a | `0xd931401b37c3a368505e7ae6de700f2b0ad14ac6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x128eb2baca6ac5416bed268d41c202fc41d55f1b` | non_address_book | unknown | unknown | unverified | n/a | `0xd931401b37c3a368505e7ae6de700f2b0ad14ac6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3bbd33135621ce0d2faa023adec2faf5a7458a92` | non_address_book | unknown | unknown | unverified | n/a | `0xd931401b37c3a368505e7ae6de700f2b0ad14ac6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x4ca67a794051e036eefb5aa4b34fe2bd836069f0` | non_address_book | unknown | unknown | unverified | n/a | `0xd931401b37c3a368505e7ae6de700f2b0ad14ac6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5363949018262d778a6ff7b4a16c82b4e5c78395` | non_address_book | unknown | unknown | unverified | n/a | `0xd931401b37c3a368505e7ae6de700f2b0ad14ac6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x5f339e8811941271e9037a5d899766e3f5a7ff47` | non_address_book | unknown | unknown | unverified | n/a | `0xd931401b37c3a368505e7ae6de700f2b0ad14ac6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x623f2774d9f27b59bc6b954544487532ce79d9df` | non_address_book | unknown | unknown | unverified | n/a | `0xd931401b37c3a368505e7ae6de700f2b0ad14ac6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xcdfb58c8c859cb3f62ebe9cf2767f9e036c7fb15` | non_address_book | unknown | unknown | unverified | n/a | `0xd931401b37c3a368505e7ae6de700f2b0ad14ac6` |
| ethereum | unverified unclassified | UnnamedContract<br>`0xd32224533b63ddeb63409010fe6c841350951734` | non_address_book | unknown | unknown | unverified | n/a | `0xd931401b37c3a368505e7ae6de700f2b0ad14ac6` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit Report](https://docs.bitfi.one/developer/audit-report) | SlowMist | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 2 | low |
| [bitfi-slowmist-audit.pdf](https://docs.bitfi.one/assets/bitfi-slowmist-audit.pdf) | SlowMist | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [See the report on SlowMist's GitHub](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/BitFi%20-%20BFBTC%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Download the bfUSD audit report (PDF)](https://docs.bitfi.one/assets/bitfi-usd-slowmist-audit.pdf) | SlowMist | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [See the report on SlowMist's GitHub](https://github.com/slowmist/Knowledge-Base/blob/master/open-report-V2/smart-contract/BitFi%20USD%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19570] Audit Report — no match: The provided text is a summary page linking to two separate PDF audit reports. No detailed scope, file paths, or dates are included. Contract names inferred from report titles.
- [19571] bitfi-slowmist-audit.pdf — no match: Contracts extracted from code overview and findings sections. Audit date from audit result table: 2024.12.05 - 2024.12.06, using end date.
- [19572] See the report on SlowMist's GitHub — no match: Extracted from audit report of BitFi - BFBTC by SlowMist. Contracts: BfbtcBitlayer, Bfbtc, BfbtcProxy. Audit date from '2024.12.05 - 2024.12.06' using end date.
- [19573] Download the bfUSD audit report (PDF) — no match: All contracts listed in the audit scope section under 'Audit Scope' are extracted. The audit date is the end date of the audit period (2025.12.01 - 2025.12.05).
- [19574] See the report on SlowMist's GitHub — no match: All contracts listed in the audit scope tree under 'Audit Scope' are included. Libraries and utility contracts are also in scope.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit Report | bfBTC | ambiguous — not counted | 0x623f27… (alternative) `0x623f2774d9f27b59bc6b954544487532ce79d9df` — deployed 2024-12-26 13:28:32+03 — liveness: live (current_address_book_code)<br>0xcdfb58… (alternative) `0xcdfb58c8c859cb3f62ebe9cf2767f9e036c7fb15` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report | bfUSD | unmatched — not counted | — | mentioned in audit report title for BitFi USD (bfUSD) | no |
| bitfi-slowmist-audit.pdf | BfbtcBitlayer | unmatched — not counted | — | listed in scope and findings | no |
| bitfi-slowmist-audit.pdf | Bfbtc | ambiguous — not counted | 0x623f27… (alternative) `0x623f2774d9f27b59bc6b954544487532ce79d9df` — deployed 2024-12-26 13:28:32+03 — liveness: live (current_address_book_code)<br>0xcdfb58… (alternative) `0xcdfb58c8c859cb3f62ebe9cf2767f9e036c7fb15` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| bitfi-slowmist-audit.pdf | BfbtcProxy | unmatched — not counted | — | listed in scope and findings | no |
| See the report on SlowMist's GitHub | BfbtcBitlayer | unmatched — not counted | — | listed in scope and findings | no |
| See the report on SlowMist's GitHub | Bfbtc | ambiguous — not counted | 0x623f27… (alternative) `0x623f2774d9f27b59bc6b954544487532ce79d9df` — deployed 2024-12-26 13:28:32+03 — liveness: live (current_address_book_code)<br>0xcdfb58… (alternative) `0xcdfb58c8c859cb3f62ebe9cf2767f9e036c7fb15` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| See the report on SlowMist's GitHub | BfbtcProxy | unmatched — not counted | — | listed in visibility description | no |
| Download the bfUSD audit report (PDF) | BfusdMerkleStash | unmatched — not counted | — | listed in scope | no |
| Download the bfUSD audit report (PDF) | BitFiStablecoin | unmatched — not counted | — | listed in scope | no |
| Download the bfUSD audit report (PDF) | BitFiStablecoinManager | unmatched — not counted | — | listed in scope | no |
| Download the bfUSD audit report (PDF) | BitFiStablecoinMinter | unmatched — not counted | — | listed in scope | no |
| Download the bfUSD audit report (PDF) | BitFiStablecoinZap | unmatched — not counted | — | listed in scope | no |
| Download the bfUSD audit report (PDF) | FeeLibrary | unmatched — not counted | — | listed in scope | no |
| Download the bfUSD audit report (PDF) | PriceLibrary | unmatched — not counted | — | listed in scope | no |
| Download the bfUSD audit report (PDF) | BitFiStablecoinInstantRedeemer | unmatched — not counted | — | listed in scope | no |
| Download the bfUSD audit report (PDF) | BitFiStablecoinStandardRedeemer | unmatched — not counted | — | listed in scope | no |
| Download the bfUSD audit report (PDF) | StakedBitFiStablecoin | unmatched — not counted | — | listed in scope | no |
| Download the bfUSD audit report (PDF) | BitFiPausable | unmatched — not counted | — | listed in scope | no |
| See the report on SlowMist's GitHub | BfusdMerkleStash | unmatched — not counted | — | listed in scope | no |
| See the report on SlowMist's GitHub | BitFiStablecoin | unmatched — not counted | — | listed in scope | no |
| See the report on SlowMist's GitHub | BitFiStablecoinManager | unmatched — not counted | — | listed in scope | no |
| See the report on SlowMist's GitHub | BitFiStablecoinMinter | unmatched — not counted | — | listed in scope | no |
| See the report on SlowMist's GitHub | BitFiStablecoinZap | unmatched — not counted | — | listed in scope | no |
| See the report on SlowMist's GitHub | FeeLibrary | unmatched — not counted | — | listed in scope | no |
| See the report on SlowMist's GitHub | PriceLibrary | unmatched — not counted | — | listed in scope | no |
| See the report on SlowMist's GitHub | BitFiStablecoinInstantRedeemer | unmatched — not counted | — | listed in scope | no |
| See the report on SlowMist's GitHub | BitFiStablecoinStandardRedeemer | unmatched — not counted | — | listed in scope | no |
| See the report on SlowMist's GitHub | StakedBitFiStablecoin | unmatched — not counted | — | listed in scope | no |
| See the report on SlowMist's GitHub | BitFiPausable | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 21 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 27 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=4, low=1
- Match method counts: n/a

Zero-match audit list:

- [19570] Audit Report
- [19571] bitfi-slowmist-audit.pdf
- [19572] See the report on SlowMist's GitHub
- [19573] Download the bfUSD audit report (PDF)
- [19574] See the report on SlowMist's GitHub

Fork inheritance lineage and inherited audits are included when available.
