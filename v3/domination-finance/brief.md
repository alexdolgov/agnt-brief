# Agentic Audit Brief: Domination Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 9 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Domination Finance (`domination-finance`)
- Website: [https://domination.finance](https://domination.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 16 unique implementations (26 raw deployments)
- Coverage basis: 9/16 confirmed own live verified implementations (56.3%); conservative 56.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,214,931.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Domination Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 26 contract row(s) across base. Structural roles: 19 unclassified, 4 supporting, 3 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 26
- Structural roles: unclassified (19), supporting (4), core (3)
- Contract kinds: contract (25), abstract (1)
- Detected standards: erc165 (2), ownable (2), ownable2step (2), accesscontrol (1), erc721 (1)
- Frameworks: openzeppelin (6), openzeppelin-upgradeable (2), solmate (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x037eab...dcb95a`, chain 8453)
- UnnamedContract (`0x36c929...2914c9`, chain 8453)
- UnnamedContract (`0x48c93b...0b7787`, chain 8453)
- UnnamedContract (`0x8bb104...93a3f2`, chain 8453)
- DomfiLockedDepositNft (`0x117651...ecbf85`, chain 8453)
- DomfiOpenPnl (`0x68e190...bbe648`, chain 8453)
- DomfiOracle (`0x1ab9c3...3b8d4d`, chain 8453)
- DomfiPairInfos (`0xb2c18e...90a1d2`, chain 8453)
- DomfiPriceRouter (`0x6aa35a...890e2b`, chain 8453)
- DomfiPrivatePriceUpKeep (`0xdf425e...10c292`, chain 8453)
- DomfiRegistry (`0xe43836...881103`, chain 8453)
- DomfiTimelockOwner (`0xf29541...72b796`, chain 8453)
- DomfiVault (`0xe2c590...92b219`, chain 8453)
- DomfiVerifier (`0xdf2b2f...832188`, chain 8453)
- ProxyAdmin (`0x6b82fc...46d34b`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 26; live-surface contracts included: 26 (22 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/16 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 9/16 (56.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 10
- Deployed-live implementations: 16 of 16 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 9/16
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 16
- Raw deployments: 26
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-12 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 9 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 9 | 56.3% | 2025-12 |

## Contract Surface

### ✅ Verified + Audited (9)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DomfiLockedDepositNft | token | project_anchor | own_supporting | 0 | base | unit-384030 | `0x117651...ecbf85` | ✅ Audited |
| DomfiOracle | operational_periphery | project_anchor | own_supporting | 0 | base | unit-384031 | `0x1ab9c3...3b8d4d` | ✅ Audited |
| DomfiPairsStorage | unknown | project_anchor | own_supporting | 1 | base | unit-384043 | 2 deployments: base `0x444079...4f9be1`; base `0x48c93b...0b7787` | ✅ Audited |
| DomfiRegistry | registry | project_anchor | own_supporting | 0 | base | unit-384038 | `0xe43836...881103` | ✅ Audited |
| DomfiTimelockOwner | governance | project_anchor | own_supporting | 0 | base | unit-384039 | `0xf29541...72b796` | ✅ Audited |
| DomfiTrading | unknown | project_anchor | own_supporting | 1 | base | unit-384040 | 2 deployments: base `0x037eab...dcb95a`; base `0x7447cb...db9445` | ✅ Audited |
| DomfiTradingCallbacks | unknown | project_anchor | own_supporting | 1 | base | unit-384046 | 2 deployments: base `0x837a6e...15343f`; base `0x8bb104...93a3f2` | ✅ Audited |
| DomfiTradingStorage | unknown | project_anchor | own_supporting | 1 | base | unit-384042 | 2 deployments: base `0x36c929...2914c9`; base `0x608ff9...42cc24` | ✅ Audited |
| DomfiVerifier | periphery | project_anchor | own_supporting | 0 | base | unit-384037 | `0xdf2b2f...832188` | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DomfiOpenPnl | unknown | project_anchor | own_supporting | 1 | base | unit-384044 | 2 deployments: base `0x68e190...bbe648`; base `0x7ae386...f5bc66` | ⚠️ Unaudited |
| DomfiPairInfos | unknown | project_anchor | own_supporting | 1 | base | unit-384047 | 2 deployments: base `0x256fd2...fa2059`; base `0xb2c18e...90a1d2` | ⚠️ Unaudited |
| DomfiPriceRouter | unknown | project_anchor | own_supporting | 1 | base | unit-384045 | 2 deployments: base `0x6aa35a...890e2b`; base `0x9c726b...014cec` | ⚠️ Unaudited |
| DomfiPrivatePriceUpKeep | unknown | project_anchor | own_supporting | 1 | base | unit-384048 | 2 deployments: base `0x8ca1e0...a0c9b9`; base `0xdf425e...10c292` | ⚠️ Unaudited |
| DomfiTradesUpKeep | unknown | project_anchor | own_supporting | 1 | base | unit-384041 | 2 deployments: base `0x1e7dd9...9f92aa`; base `0x361873...e26c8c` | ⚠️ Unaudited |
| DomfiVault | unknown | project_anchor | own_supporting | 1 | base | unit-384049 | 2 deployments: base `0xa19408...b8c2fb`; base `0xe2c590...92b219` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | base | unit-384033 | `0x6b82fc...46d34b` | ⚠️ Unaudited |

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
| [DomFi-security-review_2025-12-07.pdf](https://docs.domination.finance/assets/DomFi-security-review_2025-12-07.pdf) | Pashov Audit Group | Audit | 2025-12 | fresh | Direct | contract_name | matched | 9 | 4 | 0 | 11 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3130] DomFi-security-review_2025-12-07.pdf — matched: Extracted 20 contract names from the scope section on page 5. Audit date from timeline: December 7th 2025 - January 3rd 2026, using end date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DomFi-security-review_2025-12-07.pdf | Delegatable | unmatched — not counted | — | listed in scope | no |
| DomFi-security-review_2025-12-07.pdf | ChainUtils | unmatched — not counted | — | listed in scope | no |
| DomFi-security-review_2025-12-07.pdf | TradingCallbacksLib | unmatched — not counted | — | listed in scope | no |
| DomFi-security-review_2025-12-07.pdf | DomfiLockedDepositNft | own contract | DomfiLockedDepositNft (selected) `0x117651...ecbf85` — deployed 2026-02-18 22:14:53+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DomFi-security-review_2025-12-07.pdf | DomfiOpenPnl | ambiguous — not counted | DomfiOpenPnl (alternative) `0x68e190...bbe648` — deployed 2026-02-18 22:15:15+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7ae386...f5bc66` — deployed 2026-02-18 22:15:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DomFi-security-review_2025-12-07.pdf | DomfiOracle | own contract | DomfiOracle (selected) `0x1ab9c3...3b8d4d` — deployed 2026-02-18 22:14:37+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DomFi-security-review_2025-12-07.pdf | DomfiPairInfos | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x256fd2...fa2059` — deployed 2026-02-18 22:15:01+03 — liveness: live (current_address_book_code)<br>DomfiPairInfos (alternative) `0xb2c18e...90a1d2` — deployed 2026-02-18 22:14:59+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DomFi-security-review_2025-12-07.pdf | DomfiPairsStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x444079...4f9be1` — deployed 2026-02-18 22:15:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DomFi-security-review_2025-12-07.pdf | DomfiPriceRouter | ambiguous — not counted | DomfiPriceRouter (alternative) `0x6aa35a...890e2b` — deployed 2026-02-18 22:15:25+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9c726b...014cec` — deployed 2026-02-18 22:15:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DomFi-security-review_2025-12-07.pdf | DomfiPriceUpKeep | unmatched — not counted | — | listed in scope | no |
| DomFi-security-review_2025-12-07.pdf | DomfiPrivatePriceUpKeep | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x8ca1e0...a0c9b9` — deployed 2026-02-18 22:15:33+03 — liveness: live (current_address_book_code)<br>DomfiPrivatePriceUpKeep (alternative) `0xdf425e...10c292` — deployed 2026-02-18 22:15:31+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DomFi-security-review_2025-12-07.pdf | DomfiRegistry | own contract | DomfiRegistry (selected) `0xe43836...881103` — deployed 2026-02-18 22:14:45+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DomFi-security-review_2025-12-07.pdf | DomfiTimelockManager | unmatched — not counted | — | listed in scope | no |
| DomFi-security-review_2025-12-07.pdf | DomfiTimelockOwner | own contract | DomfiTimelockOwner (selected) `0xf29541...72b796` — deployed 2026-02-18 22:14:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DomFi-security-review_2025-12-07.pdf | DomfiTradesUpKeep | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x361873...e26c8c` — deployed 2026-02-18 22:15:23+03 — liveness: live (current_address_book_code)<br>DomfiTradesUpKeep (alternative) `0x1e7dd9...9f92aa` — deployed 2026-02-18 22:15:19+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DomFi-security-review_2025-12-07.pdf | DomfiTrading | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x7447cb...db9445` — deployed 2026-02-18 22:15:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DomFi-security-review_2025-12-07.pdf | DomfiTradingCallbacks | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x837a6e...15343f` — deployed 2026-02-18 22:15:13+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DomFi-security-review_2025-12-07.pdf | DomfiTradingStorage | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x608ff9...42cc24` — deployed 2026-02-18 22:14:57+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DomFi-security-review_2025-12-07.pdf | DomfiVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xa19408...b8c2fb` — deployed 2026-02-18 22:14:51+03 — liveness: live (current_address_book_code)<br>DomfiVault (alternative) `0xe2c590...92b219` — deployed 2026-04-11 01:36:23+03 — liveness: live (proxy_unit_reachable) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| DomFi-security-review_2025-12-07.pdf | DomfiVerifier | own contract | DomfiVerifier (selected) `0xdf2b2f...832188` — deployed 2026-02-18 22:15:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x68e190...bbe648` | DomfiOpenPnl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x256fd2...fa2059` | DomfiPairInfos | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6aa35a...890e2b` | DomfiPriceRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x8ca1e0...a0c9b9` | DomfiPrivatePriceUpKeep | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x1e7dd9...9f92aa` | DomfiTradesUpKeep | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa19408...b8c2fb` | DomfiVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 13 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 9 own (4 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 6 ambiguous, 5 unmatched
- Matched-own operational status: 9 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=9

Fork inheritance lineage and inherited audits are included when available.
