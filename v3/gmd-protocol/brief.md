# Agentic Audit Brief: GMD Protocol

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 2 (0 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: GMD Protocol (`gmd-protocol`)
- Website: [https://gmd-protocol.gitbook.io/gmd-protocol](https://gmd-protocol.gitbook.io/gmd-protocol)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum
- Contract surface: 51 unique implementations (51 raw deployments)
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

- UnnamedContract (`0x48c814...c32e93`, chain 42161)
- UnnamedContract (`0x846ecf...c16bda`, chain 42161)
- UnnamedContract (`0xd706a8...9b08ef`, chain 42161)
- esGMD (`0x49e050...9b787a`, chain 42161)
- GMD (`0x494597...e28a8b`, chain 42161)
- GMDBFRvault (`0x56009e...8775f8`, chain 42161)
- gmdBTC (`0x147ff1...9bb619`, chain 42161)
- gmdETH (`0x1e95a3...71beb3`, chain 42161)
- gmdUSDC (`0x3db4b7...4b2c22`, chain 42161)
- gmdUSDT (`0x34101f...32a049`, chain 42161)
- GMDvault (`0x8080b5...fbbb08`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/8 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 40 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 11 of 51 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 51
- Raw deployments: 51
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
| arbitrumGMDbridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x60d8da...296cda` | ⚠️ Unaudited |
| btcvaultv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb0f3e3...ec11b2` | ⚠️ Unaudited |
| BuyBack | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5f0fee...26b5f9` | ⚠️ Unaudited |
| CashbackLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x357c3a...5194dd` | ⚠️ Unaudited |
| CrossChainPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c2c66...5b1ded` | ⚠️ Unaudited |
| data | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b2af9...c9e915` | ⚠️ Unaudited |
| DataRetrievalContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3c6fd1...4fd72f` | ⚠️ Unaudited |
| esGBOT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e9fa4...f21c10` | ⚠️ Unaudited |
| esGMD | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240986 | `0x49e050...9b787a` | ⚠️ Unaudited |
| EthPriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x999e0e...447291` | ⚠️ Unaudited |
| GBOT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x32e4d9...b03986` | ⚠️ Unaudited |
| gETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0f1711...96d7d1` | ⚠️ Unaudited |
| gethstaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1b3fe9...3f3865` | ⚠️ Unaudited |
| GLPPrice | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c52cb...00a22d` | ⚠️ Unaudited |
| GMD | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240985 | `0x494597...e28a8b` | ⚠️ Unaudited |
| GMDBFRvault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240987 | `0x56009e...8775f8` | ⚠️ Unaudited |
| gmdBTC | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240980 | `0x147ff1...9bb619` | ⚠️ Unaudited |
| gmdETH | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240981 | `0x1e95a3...71beb3` | ⚠️ Unaudited |
| GMDstaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d2da8...f0aca4` | ⚠️ Unaudited |
| gmdUSDC | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240983 | `0x3db4b7...4b2c22` | ⚠️ Unaudited |
| gmdUSDT | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240982 | `0x34101f...32a049` | ⚠️ Unaudited |
| GMDvault | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240988 | `0x8080b5...fbbb08` | ⚠️ Unaudited |
| gmUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10c25c...c80005` | ⚠️ Unaudited |
| gmUSDArb | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe38759...68b674` | ⚠️ Unaudited |
| GMvaultMigration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6e3fe...b83a18` | ⚠️ Unaudited |
| GND | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xade997...f4c6c7` | ⚠️ Unaudited |
| gndPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x51b08e...c3eac5` | ⚠️ Unaudited |
| LiquidityAmounts | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8af42f...576067` | ⚠️ Unaudited |
| LPstaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0e5419...71b858` | ⚠️ Unaudited |
| LPToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x037204...711eb4` | ⚠️ Unaudited |
| LPTokenFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb887e9...f3a0c3` | ⚠️ Unaudited |
| Migration | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01c4a9...a3d027` | ⚠️ Unaudited |
| OtcSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29cf62...6c12ae` | ⚠️ Unaudited |
| PriceFeed | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8660f2...20a718` | ⚠️ Unaudited |
| PriceFeed2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7aa2b3...c30857` | ⚠️ Unaudited |
| SalaryDistribution | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc438a1...6e2a93` | ⚠️ Unaudited |
| SalaryMod | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaa3536...46ef1d` | ⚠️ Unaudited |
| sGETHToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x212220...f1057b` | ⚠️ Unaudited |
| TknPresale | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39027f...5132f7` | ⚠️ Unaudited |
| TokenSwap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x017c6f...8f12f8` | ⚠️ Unaudited |
| univ3swap | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x512a1d...4541ae` | ⚠️ Unaudited |
| vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x38dfce...b0ea08` | ⚠️ Unaudited |
| vaultv2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0dc663...aab445` | ⚠️ Unaudited |
| xGND | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40ea7f...55768e` | ⚠️ Unaudited |
| xGNDstaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ca217...e09620` | ⚠️ Unaudited |
| YFX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5517c5...efb38c` | ⚠️ Unaudited |
| zGND | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x40b96d...9de37c` | ⚠️ Unaudited |
| zGNDstaking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf373f0...b600db` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240984 | `0x48c814...c32e93` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240989 | `0x846ecf...c16bda` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-240990 | `0xd706a8...9b08ef` | ❓ Unverified |

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
| arbitrum | `0x49e050...9b787a` | esGMD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x494597...e28a8b` | GMD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x56009e...8775f8` | GMDBFRvault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x147ff1...9bb619` | gmdBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1e95a3...71beb3` | gmdETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x3db4b7...4b2c22` | gmdUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x34101f...32a049` | gmdUSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x8080b5...fbbb08` | GMDvault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 48 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

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
