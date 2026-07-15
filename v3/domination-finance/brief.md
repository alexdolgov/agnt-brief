# Agentic Audit Brief: Domination Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 9 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Domination Finance (`domination-finance`)
- Website: [https://domination.finance](https://domination.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, boba, ethereum, polygon
- Contract surface: 58 unique implementations (113 raw deployments)
- Coverage basis: 9/16 confirmed own live verified implementations (56.3%); conservative 56.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,214,931.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Domination Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 26 contract row(s) across base, boba, polygon. Structural roles: 19 unclassified, 4 supporting, 3 core. 2 row(s) use upgradeable patterns.

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

- Logic-topography rows: 26; live-surface rows included: 26 (22 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 16/20 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 9/16 (56.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 16 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 42 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 36
- Confirmed-live implementations: 16 of 58 unique; 42 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 9/56
- Verified + Unaudited implementations: 47
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 58
- Raw deployments: 113
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
| Pashov Audit Group | Tier 2 | 9 | 16.1% | 2025-12 |

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

### ⚠️ Verified + Unaudited (47)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Distributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x74fded...7b89da` | ⚠️ Unaudited |
| DomfiLockedDepositNft | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x1b50c9...9d7d52`; base `0x63d7f6...0514da`; base `0xe2ea29...425adf` | ⚠️ Unaudited |
| DomfiOpenPnl | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4dff17...6c1fb1`; base `0xf004d9...b2c6ac` | ⚠️ Unaudited |
| DomfiOpenPnl | unknown | project_anchor | own_supporting | 1 | base | unit-384044 | 2 deployments: base `0x68e190...bbe648`; base `0x7ae386...f5bc66` | ⚠️ Unaudited |
| DomfiOpenPnl | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x70c161...c97b8b`; base `0xf7ebd8...560a06` | ⚠️ Unaudited |
| DomfiOracle | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x953ee2...096a09`; base `0xa371d5...78b9cc`; base `0xaffc3b...fb8379` | ⚠️ Unaudited |
| DomfiPairInfos | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x14a6da...507dcb`; base `0x7d05e7...4db35a` | ⚠️ Unaudited |
| DomfiPairInfos | unknown | project_anchor | own_supporting | 1 | base | unit-384047 | 2 deployments: base `0x256fd2...fa2059`; base `0xb2c18e...90a1d2` | ⚠️ Unaudited |
| DomfiPairInfos | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2b37dd...cae34d`; base `0xcc4e84...4d217d` | ⚠️ Unaudited |
| DomfiPairInfos | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x53917e...aafe48`; base `0x933318...19c2b5` | ⚠️ Unaudited |
| DomfiPairsStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x6f642d...f50f53`; base `0xdac263...fa79a6` | ⚠️ Unaudited |
| DomfiPairsStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x77b1e6...53b6dd`; base `0xe7554b...f132d9` | ⚠️ Unaudited |
| DomfiPairsStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9c1b8d...ada97c`; base `0xf23a52...4914a0` | ⚠️ Unaudited |
| DomfiPairsStorage | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-384036 | `0xc7610d...bf161b` | ⚠️ Unaudited |
| DomfiPriceRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x168b28...2c78ee`; base `0x237623...a278fb` | ⚠️ Unaudited |
| DomfiPriceRouter | unknown | project_anchor | own_supporting | 1 | base | unit-384045 | 2 deployments: base `0x6aa35a...890e2b`; base `0x9c726b...014cec` | ⚠️ Unaudited |
| DomfiPriceRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xd03c9b...123195`; base `0xded453...d2eb65` | ⚠️ Unaudited |
| DomfiPrivatePriceUpKeep | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1b11c2...4d40f2`; base `0x82db80...d8e2a2` | ⚠️ Unaudited |
| DomfiPrivatePriceUpKeep | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x2a0362...02af06`; base `0xb57849...a8759a` | ⚠️ Unaudited |
| DomfiPrivatePriceUpKeep | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x84d29e...006fb1`; base `0xd00de4...f15226` | ⚠️ Unaudited |
| DomfiPrivatePriceUpKeep | unknown | project_anchor | own_supporting | 1 | base | unit-384048 | 2 deployments: base `0x8ca1e0...a0c9b9`; base `0xdf425e...10c292` | ⚠️ Unaudited |
| DomfiRegistry | registry | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x6641bb...efd3d1`; base `0xf44ebe...d4c483`; base `0xfa4209...f59d45` | ⚠️ Unaudited |
| DomfiTimelockOwner | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0d3c94...668235`; base `0x9986b8...3b3044`; base `0xfcad85...556097` | ⚠️ Unaudited |
| DomfiTradesUpKeep | unknown | project_anchor | own_supporting | 1 | base | unit-384041 | 2 deployments: base `0x1e7dd9...9f92aa`; base `0x361873...e26c8c` | ⚠️ Unaudited |
| DomfiTradesUpKeep | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x3259f1...b3a1fc`; base `0x7e13e9...985a54` | ⚠️ Unaudited |
| DomfiTradesUpKeep | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x991336...7d3135`; base `0xbb5577...04dca7` | ⚠️ Unaudited |
| DomfiTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x01fa77...65837f`; base `0x8d15ed...e6a18e` | ⚠️ Unaudited |
| DomfiTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0eb882...0c3e8e`; base `0xb7dce4...19ce13` | ⚠️ Unaudited |
| DomfiTrading | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8c44be...8d303f`; base `0xc402de...1b0a9a` | ⚠️ Unaudited |
| DomfiTrading | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-384035 | `0xb3963a...4d12a9` | ⚠️ Unaudited |
| DomfiTradingCallbacks | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x468bdf...1c7ebd`; base `0x6baae8...d3d608` | ⚠️ Unaudited |
| DomfiTradingCallbacks | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x571697...7c6809`; base `0xcf14ae...e388a2` | ⚠️ Unaudited |
| DomfiTradingCallbacks | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-384034 | `0x98ee34...c50c84` | ⚠️ Unaudited |
| DomfiTradingStorage | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-384032 | `0x35f5ad...1936c1` | ⚠️ Unaudited |
| DomfiVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x19954e...4ca0c2` | ⚠️ Unaudited |
| DomfiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x4ddbe7...fe6012`; base `0x97d18f...04890e` | ⚠️ Unaudited |
| DomfiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x9d3e27...96ee16`; base `0xb25952...ee9b29` | ⚠️ Unaudited |
| DomfiVault | unknown | project_anchor | own_supporting | 1 | base | unit-384049 | 2 deployments: base `0xa19408...b8c2fb`; base `0xe2c590...92b219` | ⚠️ Unaudited |
| DomfiVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xb097cd...2c5bbd`; base `0xcdacfa...342b8f` | ⚠️ Unaudited |
| DomfiVerifier | periphery | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0c6a46...722d0c`; base `0x350bf8...1da27e`; base `0x49d577...c1d1df` | ⚠️ Unaudited |
| IncentiveToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7a0d8c...a2d4e8` | ⚠️ Unaudited |
| LongShortPair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 3 deployments: polygon `0x12cce4...0be116`; polygon `0x277132...644100`; polygon `0x514b3c...20c9ee` | ⚠️ Unaudited |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x24c087...9d28b2`; base `0x7cc253...ad21af`; base `0xa758f0...95c478` | ⚠️ Unaudited |
| ProxyAdmin | governance | project_anchor | own_supporting | 0 | base | unit-384033 | `0x6b82fc...46d34b` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x46ef4b...7fdd4b`; base `0xd1465a...185dd5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8a74fd...ce1a2a`; base `0xf34f4f...5fca38` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xc804e3...2b4d91`; base `0xddce47...683177` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | boba | n/a | 6 deployments: boba `0x156a45...f30bec`; boba `0x3c77d0...961c03`; boba `0x5b9f3b...c67589`; boba `0x6caffb...3ce20f`; boba `0xcab14a...17a18e`; boba `0xf123b6...a102d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x899716...7a9d97` | ❓ Unverified |

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
| native | 49 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 5 |

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
