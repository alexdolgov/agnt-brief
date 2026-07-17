# Agentic Audit Brief: TEN Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: TEN Finance (`ten-finance`)
- Website: [https://ten.finance](https://ten.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 32 unique implementations (32 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $356,464.27
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for TEN Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 2 contracts are derived from known codebases. 2 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x264a1b3f6db28de4d3dd4ed23ab31a468b0c1a96`, chain 56)
- UnnamedContract (`0xd15c444f1199ae72795eba15e8c1db44e47abf62`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 2 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 30 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 2 of 32 unique; 30 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/30
- Verified + Unaudited implementations: 30
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 32
- Raw deployments: 32
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (30)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x48ef82f69cf285db6a930729876e7a93f255cd4d` | ⚠️ Unaudited |
| Depositor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcbbe6cc37925168f225197df720928c2e876afff` | ⚠️ Unaudited |
| DummyToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09c19ea24fd71b0523c4eb7d324d6eb85c785c02` | ⚠️ Unaudited |
| FryingDutchManSailing | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf2c5a5db32a6d9715405d1c4fdf160f08c20b59a` | ⚠️ Unaudited |
| ICO | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x932d6321deb56e97b34b3d43af5bc07b785d881b` | ⚠️ Unaudited |
| JumpRateModelV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2bc629c04f54f0070f5c361a213b5f5ecdfdec25` | ⚠️ Unaudited |
| MultiFeeDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2e86f3de23f17e33e1a26961f68248425c1e70f3` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x93bf557d6a41bb1d2d25f0645f02c92193f4d7e0` | ⚠️ Unaudited |
| StratX2_BELT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7bbd4992fc6fd734d0502207ac66806582de8b2` | ⚠️ Unaudited |
| TBNB | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x265893818e436655886965e3c8f4e6fc4395e1c7` | ⚠️ Unaudited |
| TEN_Finance_V2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b1e8d853733a744baede9b6755065e05cef4404` | ⚠️ Unaudited |
| TENFIExchange | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc6b20fa2b5c5e0565bae9d648ab2afa37074be5e` | ⚠️ Unaudited |
| TENFIFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0f9ebf3e497454b07d1f4650ac8c9092f5a30483` | ⚠️ Unaudited |
| TENFIStrategy_4BELT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x08eff8bb5fb5fbecb295f2d2de004c378e4bb711` | ⚠️ Unaudited |
| TENFIStrategy_PCS | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00c5ec1690cff296ff44b910d7da1a8c4703cc81` | ⚠️ Unaudited |
| TENFIStrategy_Single_BELT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x09c87cb74762e042a2d010d091d30553b7e5fbcc` | ⚠️ Unaudited |
| TENFIStrategy_TENFI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x325a6dbc08f93cb57b23e0be6cd765c107813da0` | ⚠️ Unaudited |
| TenIndex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x00ac67242512a2423023ad2ec6c814914a25399e` | ⚠️ Unaudited |
| TENLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a50b8eda11de347f5ed9925dae59eacc4504d68` | ⚠️ Unaudited |
| TenLots | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x03414f0652f8b066575b667621b5d803fa43efa4` | ⚠️ Unaudited |
| TENSTRATEGY_ALPACA | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x126bbf371d28cb82181a33b9e02f75a5c7e4d7e6` | ⚠️ Unaudited |
| TENTroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x383121c8ee39698e4095b7cea7a944073c3b4f13` | ⚠️ Unaudited |
| TenZap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x27c97209bb7b29c30e792729b8c03ca2e6765a8d` | ⚠️ Unaudited |
| TErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54b92aafae3b34e647d292fccb2305679bc193b0` | ⚠️ Unaudited |
| TErc20Delegate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x140efe74fb35342948d28fe6fe9d0221d49e3e0e` | ⚠️ Unaudited |
| TErc20Delegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa2f2177c7923aea14fda17e175f41bd499adf998` | ⚠️ Unaudited |
| TestLENDt | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfc2ac181cd9af8b3ff62b8aadd353ae86c5d042a` | ⚠️ Unaudited |
| TransferReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x18179317cbdf2bfff661124ed6f383a2e8269959` | ⚠️ Unaudited |
| Unitroller | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x12427e5031c72264054ae8455764b623c77b5743` | ⚠️ Unaudited |
| Yieldex | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x05f4e9b89947146c6098cfced589eb607a45fa6b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-393854 | `0x264a1b3f6db28de4d3dd4ed23ab31a468b0c1a96` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | bsc | unit-393855 | `0xd15c444f1199ae72795eba15e8c1db44e47abf62` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [{% embed url="<>" %}](https://skynet.certik.com/projects/tenfinance) | CertiK | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Audits](https://tenfinance.gitbook.io/ten/documentation-1/audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [PeckShield-Audit-Report-TenLend-v1.0.pdf](https://3931236349-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MTg9bsJ23imtGvbcYvG%2Fuploads%2Fa4RWF03WuDG7oB33JzOD%2FPeckShield-Audit-Report-TenLend-v1.0.pdf) | PeckShield | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18366] {% embed url="<>" %} — no match: The provided text is a Skynet project insight page, not an audit report. It contains no scope section, contract names, or audit date. The only contract address mentioned is 0xd15c444f1199ae72795eba15e8c1db44e47abf62, but no contract name is given.
- [18367] Audits — no match: The provided text is a documentation index page listing audit reports (Certik and Peckshield) but does not include any scope section, contract names, or file paths. The dates mentioned are audit completion dates but no specific contracts are identified.
- [18368] PeckShield-Audit-Report-TenLend-v1.0.pdf — no match: Extracted contract names from findings targets and code snippets. No explicit scope table found, but contracts are clearly audited.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-TenLend-v1.0.pdf | TToken | unmatched — not counted | — | Target in findings PVE-001, PVE-002, PVE-005, PVE-006 | no |
| PeckShield-Audit-Report-TenLend-v1.0.pdf | Airdrop | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-TenLend-v1.0.pdf | Tentroller | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield-Audit-Report-TenLend-v1.0.pdf | RewardShare | unmatched — not counted | — | Target in finding PVE-007 | no |
| PeckShield-Audit-Report-TenLend-v1.0.pdf | MultiFeeDistribution | unmatched — not counted | — | Mentioned in finding PVE-008 | no |
| PeckShield-Audit-Report-TenLend-v1.0.pdf | UniswapAnchoredView | unmatched — not counted | — | Mentioned in finding PVE-008 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=2
- Match method counts: n/a

Zero-match audit list:

- [18366] {% embed url="<>" %}
- [18367] Audits
- [18368] PeckShield-Audit-Report-TenLend-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
