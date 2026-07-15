# Agentic Audit Brief: Myriad Markets

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 5 (1 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Myriad Markets (`myriad-markets`)
- Website: [https://myriad.markets/markets](https://myriad.markets/markets)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc, linea
- Contract surface: 44 unique implementations (44 raw deployments)
- Coverage basis: 1/5 confirmed own live verified implementations (20.0%); conservative 20.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $466,580.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Myriad Markets. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across bsc, celo, linea. Structural roles: 6 core, 2 supporting. 4 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (6), supporting (2)
- Contract kinds: contract (6), abstract (2)
- Detected standards: erc1967proxy (3), erc165 (2), erc20 (2), erc1155 (1), ownable (1)
- Frameworks: openzeppelin (7), openzeppelin-upgradeable (3)
- Upgradeable-pattern rows: 4

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x39e66e...bef340`, chain 59144)
- UnnamedContract (`0x503c9f...2b8d04`, chain 59144)
- BEP20USDT (`0x55d398...197955`, chain 56)
- FiatTokenProxy (`0x176211...1ee1ff`, chain 59144)
- PredictionMarketV3_4 (`0x39e66e...bef340`, chain 56)
- PredictionMarketV3Querier (`0xdefb36...e03bad`, chain 56)
- StablecoinV2 (`0x8d0d00...f08b0d`, chain 56)

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (5 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/23 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/5 (20.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 6 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 31 discovered implementations excluded (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Deployed-live implementations: 7 of 44 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/5
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 44
- Raw deployments: 44
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 4 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 20.0% (Cyfrin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 1 | 20.0% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| PredictionMarketV3_4 | unknown | project_anchor | own_supporting | 1 | bsc | unit-248491 | `0x39e66e...bef340` | ✅ Audited |

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AdminRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcaadcd...a4f653` | ⚠️ Unaudited |
| BaseRegistrarImplementation | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6e8439...b95704` | ⚠️ Unaudited |
| BEP20LINK | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf8a0bf...1a51bd` | ⚠️ Unaudited |
| BEP20USDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-248477 | `0x55d398...197955` | ⚠️ Unaudited |
| ConditionalTokens | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-248478 | `0x641373...2654dc` | ⚠️ Unaudited |
| CryptoCREOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd6a00f...11f2e5` | ⚠️ Unaudited |
| ENSRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x50130b...121267` | ⚠️ Unaudited |
| ETHRegistrarController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdb75db...d18295` | ⚠️ Unaudited |
| ExecutorsGuard | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfdffc9...e85189` | ⚠️ Unaudited |
| FeeModule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x423abc...03a7e7` | ⚠️ Unaudited |
| FiatTokenProxy | unknown | project_anchor | own_supporting | 1 | linea | unit-248493 | `0x176211...1ee1ff` | ⚠️ Unaudited |
| FiatTokenV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0e57c8...5c2dc8` | ⚠️ Unaudited |
| L2MessageService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x05d437...b960fd` | ⚠️ Unaudited |
| L2USDCBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x199810...5a5521` | ⚠️ Unaudited |
| LineaSurgeXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x96b3a1...124b82` | ⚠️ Unaudited |
| LineaVoyageXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd83af4...cf599a` | ⚠️ Unaudited |
| LineaXP | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc24e7b...9cfc13` | ⚠️ Unaudited |
| MyriadCTFExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f5c62...3a3364` | ⚠️ Unaudited |
| NameWrapper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa53cca...13c223` | ⚠️ Unaudited |
| NegRiskAdapter | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-248484 | `0xd96f26...93d53a` | ⚠️ Unaudited |
| OwnedResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9453dc...f4c06f` | ⚠️ Unaudited |
| PredictionMarketV3Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdefb36...e03bad` | ⚠️ Unaudited |
| PredictionMarketV3ManagerCLOB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ab121...d37f2b` | ⚠️ Unaudited |
| PredictionMarketV3Querier | unknown | project_anchor | own_supporting | 0 | bsc | unit-248485 | `0xdefb36...e03bad` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1e1f6f...39774e` | ⚠️ Unaudited |
| PublicResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x86c5ae...733126` | ⚠️ Unaudited |
| ReverseRegistrar | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x08d3ff...2b67d5` | ⚠️ Unaudited |
| Root | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfbf795...151e7d` | ⚠️ Unaudited |
| SportsCREOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5d08a...7a1065` | ⚠️ Unaudited |
| Stablecoin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x339838...8a6616` | ⚠️ Unaudited |
| StablecoinV2 | unknown | project_anchor | own_supporting | 1 | bsc | unit-248492 | `0x8d0d00...f08b0d` | ⚠️ Unaudited |
| StaticMetadataService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x18703d...866e4c` | ⚠️ Unaudited |
| TokenBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0ffcbe...03444e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x05f519...e8aef7` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | linea | n/a | `0x0ece76...2203f0` | ⚠️ Unaudited |
| UniversalResolver | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3aa974...3a6965` | ⚠️ Unaudited |
| UpgradeableBeacon | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xe79869...4c02c0` | ⚠️ Unaudited |
| WrappedCollateral | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-248479 | `0x9f124c...067acc` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-248480 | `0xa0b6f8...f0f16a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-248481 | `0xab5591...5ea3db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-248483 | `0xc1bb36...3bbc0c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-248486 | `0x39e66e...bef340` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | linea | unit-248487 | `0x503c9f...2b8d04` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view](https://drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view) | Cyfrin | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [2026-03-13-cyfrin-myriad-clob-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2026-03-13-cyfrin-myriad-clob-v2.0.pdf) | Cyfrin | Audit | 2026-03 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [2026-04-08-cyfrin-myriad-realitio-oracle-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2026-04-08-cyfrin-myriad-realitio-oracle-v2.0.pdf) | Cyfrin | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2026-04-07-cyfrin-myriad-pr145-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2026-04-07-cyfrin-myriad-pr145-v2.0.pdf) | Cyfrin | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [2025-07-25-cyfrin-myriad-v2.0.pdf](https://github.com/Cyfrin/cyfrin-audit-reports/blob/main/reports/2025-07-25-cyfrin-myriad-v2.0.pdf) | Cyfrin | Audit | 2025-07 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [29972] drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view — no match: Extracted 8 contracts from scope sections and file paths. Audit date from cover page.
- [29973] 2026-03-13-cyfrin-myriad-clob-v2.0.pdf — no match: All contracts listed in the Audit Scope section (page 4) are included. The audit date is from the cover page: March 13, 2026.
- [29974] 2026-04-08-cyfrin-myriad-realitio-oracle-v2.0.pdf — no match: Scope section explicitly lists two contracts: RealitioOracle.sol and MyriadCTFExchange.sol. Audit date is April 8, 2026 from the cover page.
- [29975] 2026-04-07-cyfrin-myriad-pr145-v2.0.pdf — no match: Only one contract explicitly in scope: MyriadCTFExchange.sol. The audit scope section describes changes to _settleMintMatch and _settleMergeMatch within that contract. No other contracts are listed.
- [29976] 2025-07-25-cyfrin-myriad-v2.0.pdf — matched: Scope section explicitly lists three contracts. FantasyERC20 is a key component but not in scope listing; included as it is part of the protocol.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view | AdminRegistry | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view | ConditionalTokens | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view | FeeModule | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view | MyriadCTFExchange | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view | NegRiskAdapter | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view | PredictionMarketV3ManagerCLOB | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view | WrappedCollateral | unmatched — not counted | — | listed in scope | no |
| drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view | RealitioOracle | unmatched — not counted | — | listed in scope | no |
| 2026-03-13-cyfrin-myriad-clob-v2.0.pdf | AdminRegistry | unmatched — not counted | — | listed in scope section | no |
| 2026-03-13-cyfrin-myriad-clob-v2.0.pdf | ConditionalTokens | unmatched — not counted | — | listed in scope section | no |
| 2026-03-13-cyfrin-myriad-clob-v2.0.pdf | FeeModule | unmatched — not counted | — | listed in scope section | no |
| 2026-03-13-cyfrin-myriad-clob-v2.0.pdf | MyriadCTFExchange | unmatched — not counted | — | listed in scope section | no |
| 2026-03-13-cyfrin-myriad-clob-v2.0.pdf | NegRiskAdapter | unmatched — not counted | — | listed in scope section | no |
| 2026-03-13-cyfrin-myriad-clob-v2.0.pdf | PredictionMarketV3ManagerCLOB | unmatched — not counted | — | listed in scope section | no |
| 2026-03-13-cyfrin-myriad-clob-v2.0.pdf | WrappedCollateral | unmatched — not counted | — | listed in scope section | no |
| 2026-04-08-cyfrin-myriad-realitio-oracle-v2.0.pdf | RealitioOracle | unmatched — not counted | — | listed in scope section: // new contracts contracts/oracles/RealitioOracle.sol | no |
| 2026-04-08-cyfrin-myriad-realitio-oracle-v2.0.pdf | MyriadCTFExchange | unmatched — not counted | — | listed in scope section: // added matchMultipleOrdersWithFees contracts/MyriadCTFExchange.sol | no |
| 2026-04-07-cyfrin-myriad-pr145-v2.0.pdf | MyriadCTFExchange | unmatched — not counted | — | Protocol Summary mentions MyriadCTFExchange.sol as the contract containing _settleMintMatch and _settleMergeMatch; Audit Scope mentions these functions are in scope. | no |
| 2025-07-25-cyfrin-myriad-v2.0.pdf | PredictionMarketV3_4 | own proxy deployment | PredictionMarketV3_4 (proxy) (selected) `0x39e66e...bef340` — deployed 2025-10-21 03:36:08+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-07-25-cyfrin-myriad-v2.0.pdf | LandFactory | unmatched — not counted | — | listed in scope section | no |
| 2025-07-25-cyfrin-myriad-v2.0.pdf | PredictionMarketV3Manager | unmatched — not counted | — | listed in scope section | no |
| 2025-07-25-cyfrin-myriad-v2.0.pdf | FantasyERC20 | unmatched — not counted | — | mentioned as key component in protocol summary | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x55d398...197955` | BEP20USDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | `0x176211...1ee1ff` | FiatTokenProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xdefb36...e03bad` | PredictionMarketV3Querier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x8d0d00...f08b0d` | StablecoinV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 35 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 21 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=5
- Match method counts: unique_name=1

Zero-match audit list:

- [29972] drive.google.com/file/d/1RNqS5NrVL9sCCPhdPKU6iWdyftFyHVYg/view
- [29973] 2026-03-13-cyfrin-myriad-clob-v2.0.pdf
- [29974] 2026-04-08-cyfrin-myriad-realitio-oracle-v2.0.pdf
- [29975] 2026-04-07-cyfrin-myriad-pr145-v2.0.pdf

Fork inheritance lineage and inherited audits are included when available.
