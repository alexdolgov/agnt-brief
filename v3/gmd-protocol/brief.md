# Agentic Audit Brief: GMD Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: GMD Protocol (`gmd-protocol`)
- Website: [https://gmd-protocol.gitbook.io/gmd-protocol](https://gmd-protocol.gitbook.io/gmd-protocol)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche
- Contract surface: 52 unique implementations (52 raw deployments)
- Coverage basis: 0/8 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $839,701.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for GMD Protocol. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across arbitrum. Structural roles: 5 core, 3 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (5), supporting (3)
- Contract kinds: contract (8)
- Detected standards: ownable (8), erc20 (6)
- Frameworks: openzeppelin (8)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x48c81451d1fddeca84b47ff86f91708fa5c32e93`, chain 42161)
- UnnamedContract (`0x846ecf0462981cc0f2674f14be6da2056fc16bda`, chain 42161)
- UnnamedContract (`0xd706a8a16e71e40f791169715a94cec1f89b08ef`, chain 42161)
- esGMD (`0x49e050df648e9477c7545fe1779b940f879b787a`, chain 42161)
- GMD (`0x4945970efeec98d393b4b979b9be265a3ae28a8b`, chain 42161)
- GMDBFRvault (`0x56009e94418ddfe8604331eceff38db0738775f8`, chain 42161)
- gmdBTC (`0x147ff11d9b9ae284c271b2faae7068f4ca9bb619`, chain 42161)
- gmdETH (`0x1e95a37be8a17328fbf4b25b9ce3ce81e271beb3`, chain 42161)
- gmdUSDC (`0x3db4b7da67dd5af61cb9b3c70501b1bdb24b2c22`, chain 42161)
- gmdUSDT (`0x34101fe647ba02238256b5c5a58aeaa2e532a049`, chain 42161)
- GMDvault (`0x8080b5ce6dfb49a6b86370d6982b3e2a86fbbb08`, chain 42161)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/8 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 40 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 11 of 52 unique; 41 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/48
- Verified + Unaudited implementations: 48
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 52
- Raw deployments: 52
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (48)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| arbitrumGMDbridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60d8da49b91a1a26fb5a8f207ce5e32e6a296cda` | ⚠️ Unaudited |
| btcvaultv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb0f3e3f5c52ece66fe44ac7ecedbd06b7aec11b2` | ⚠️ Unaudited |
| BuyBack | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f0feef4dafea7fb4d6ca89c047767885226b5f9` | ⚠️ Unaudited |
| CashbackLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x357c3a9b984ee7b0c88adcc678138552275194dd` | ⚠️ Unaudited |
| CrossChainPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c2c662041e541637ca9550067ed456b925b1ded` | ⚠️ Unaudited |
| data | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b2af911cb0702eb9691189aee5ae83405c9e915` | ⚠️ Unaudited |
| DataRetrievalContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c6fd1ad1d7274ed60878cfa5528ae67044fd72f` | ⚠️ Unaudited |
| esGBOT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e9fa491b5327500e2cb4f21dd6852c0edf21c10` | ⚠️ Unaudited |
| esGMD | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240986 | `0x49e050df648e9477c7545fe1779b940f879b787a` | ⚠️ Unaudited |
| EthPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x999e0e091014eed2683aca527805394be2447291` | ⚠️ Unaudited |
| GBOT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32e4d98d3010ac12d75019c484caa78665b03986` | ⚠️ Unaudited |
| gETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f1711c7b25437c1a29c6e2bad0e2bc18496d7d1` | ⚠️ Unaudited |
| gethstaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b3fe9d5df6d0973c58c031703b150ab023f3865` | ⚠️ Unaudited |
| GLPPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c52cb1d46c46a506c3b660bc9c4c437b500a22d` | ⚠️ Unaudited |
| GMD | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240985 | `0x4945970efeec98d393b4b979b9be265a3ae28a8b` | ⚠️ Unaudited |
| GMDBFRvault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240987 | `0x56009e94418ddfe8604331eceff38db0738775f8` | ⚠️ Unaudited |
| gmdBTC | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240980 | `0x147ff11d9b9ae284c271b2faae7068f4ca9bb619` | ⚠️ Unaudited |
| gmdETH | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240981 | `0x1e95a37be8a17328fbf4b25b9ce3ce81e271beb3` | ⚠️ Unaudited |
| GMDstaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d2da8454488ff4bf21999c59913d4c337f0aca4` | ⚠️ Unaudited |
| gmdUSDC | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240983 | `0x3db4b7da67dd5af61cb9b3c70501b1bdb24b2c22` | ⚠️ Unaudited |
| gmdUSDT | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240982 | `0x34101fe647ba02238256b5c5a58aeaa2e532a049` | ⚠️ Unaudited |
| GMDvault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240988 | `0x8080b5ce6dfb49a6b86370d6982b3e2a86fbbb08` | ⚠️ Unaudited |
| gmUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10c25c205118c0201fd1acc5bc03bbf935c80005` | ⚠️ Unaudited |
| gmUSDArb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe3875996fc7a9315cb0d633b2a1af5b91d68b674` | ⚠️ Unaudited |
| GMvaultMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6e3febf24ead0e60b157b77e72618df06b83a18` | ⚠️ Unaudited |
| GND | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xade997d8488fa56dde91b1e8a9473a2ea9f4c6c7` | ⚠️ Unaudited |
| gndPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x51b08eab7c2f50ff539377dc953d6ab712c3eac5` | ⚠️ Unaudited |
| LiquidityAmounts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8af42f8da6f7d195ce0ab7789c5523ddcc576067` | ⚠️ Unaudited |
| LPstaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e5419bf7eaacd07790d27bd4957ccee9971b858` | ⚠️ Unaudited |
| LPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0372046e44ee37fb71711590b734fbd5b7711eb4` | ⚠️ Unaudited |
| LPTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb887e91ec65ed4a7c943d1ebb87ad8770af3a0c3` | ⚠️ Unaudited |
| Migration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01c4a967f8577ccd7812468a3239c5ecd4a3d027` | ⚠️ Unaudited |
| OtcSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29cf62536c1019a8adac35a61a7f12b82a6c12ae` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8660f28220f280dfab99d1dc81237a262620a718` | ⚠️ Unaudited |
| PriceFeed2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7aa2b33a56e72e50429355b3ebd2572240c30857` | ⚠️ Unaudited |
| SalaryDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc438a1ad32ed8ff16e73bdcf56cab1e6ba6e2a93` | ⚠️ Unaudited |
| SalaryMod | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa35361b162415655ff2e70c655c29bab346ef1d` | ⚠️ Unaudited |
| sGETHToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21222082e66ded1733faa1a04576a620dcf1057b` | ⚠️ Unaudited |
| TknPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39027f95172808b6ef385ceb0414be39b85132f7` | ⚠️ Unaudited |
| TokenSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x017c6fc5e2b2d36a0ed829b15863609ca28f12f8` | ⚠️ Unaudited |
| univ3swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x512a1d8b24cb0fd5cb2d446efbfabaca5b4541ae` | ⚠️ Unaudited |
| vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x38dfcebfc79ae62ea50297a6cff16c6f61b0ea08` | ⚠️ Unaudited |
| vaultv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0dc6634fc00236186fafd8c9e2878712e0aab445` | ⚠️ Unaudited |
| xGND | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40ea7f6d6964413d4a26a0a268542dae9f55768e` | ⚠️ Unaudited |
| xGNDstaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ca217854cdc40171644f276a7edb3fdc6e09620` | ⚠️ Unaudited |
| YFX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5517c5f22177bcf7b320a2a5daf2334344efb38c` | ⚠️ Unaudited |
| zGND | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40b96dac9386e252e86eacf330c138561b9de37c` | ⚠️ Unaudited |
| zGNDstaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf373f08c99aa93e845585f6fdfe2c45dbdb600db` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240984 | `0x48c81451d1fddeca84b47ff86f91708fa5c32e93` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | n/a | `0x7f9a20548d9482041dc33435a7fb25be7c4b98b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240989 | `0x846ecf0462981cc0f2674f14be6da2056fc16bda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240990 | `0xd706a8a16e71e40f791169715a94cec1f89b08ef` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://sourcehat.com/audits/GMDAOVault) | SourceHat | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [- [Audits]()](https://gmd-protocol.gitbook.io/gmd-protocol/protocol-links/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20440] DL audit link — no match: Only the Vault contract is explicitly in scope. Other contracts (GLPRouter, GLPPriceFeed, GDtoken, IWETH) are interfaces or dependencies not audited.
- [20441] - [Audits]() — no match: The provided text is a documentation index page listing two audit reports with links, but does not contain the actual audit report content. No contract names or scope details are present.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | Vault | unmatched — not counted | — | Listed in scope as 'GMDAO's Vault contract' and described in the report. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x49e050df648e9477c7545fe1779b940f879b787a` | esGMD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4945970efeec98d393b4b979b9be265a3ae28a8b` | GMD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x56009e94418ddfe8604331eceff38db0738775f8` | GMDBFRvault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x147ff11d9b9ae284c271b2faae7068f4ca9bb619` | gmdBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1e95a37be8a17328fbf4b25b9ce3ce81e271beb3` | gmdETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3db4b7da67dd5af61cb9b3c70501b1bdb24b2c22` | gmdUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x34101fe647ba02238256b5c5a58aeaa2e532a049` | gmdUSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8080b5ce6dfb49a6b86370d6982b3e2a86fbbb08` | GMDvault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 48 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 1 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: n/a

Zero-match audit list:

- [20440] DL audit link
- [20441] - [Audits]()

Fork inheritance lineage and inherited audits are included when available.
