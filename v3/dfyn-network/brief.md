# Agentic Audit Brief: Dfyn Network

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 4 (0 matched; 4 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Dfyn Network (`dfyn-network`)
- Website: [https://www.dfyn.network/](https://www.dfyn.network/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, fantom, polygon
- Contract surface: 27 unique implementations (27 raw deployments)
- Coverage basis: 0/2 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $333,049.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Dfyn Network. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across arbitrum, fantom, polygon. Structural roles: 2 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: ownable (1), pausable (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 7 contracts are derived from known codebases. 7 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x75455c...23c976`, chain 137)
- UnnamedContract (`0xe7fb3e...66423b`, chain 137)
- UnnamedContract (`0x2724b9...b5ef2d`, chain 250)
- UnnamedContract (`0xd9820a...3d64f5`, chain 250)
- UnnamedContract (`0xaede1e...85e71c`, chain 42161)
- DfynPricePrediction (`0x150b4f...cc29e7`, chain 137)
- UniswapV2Factory (`0xa10207...c57429`, chain 42161)

## Contract Surface Quality

- Indexed contracts: 2; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 7/7 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/2 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 7 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 20 discovered implementations excluded (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Deployed-live implementations: 7 of 27 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/2
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 27
- Raw deployments: 27
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ChildERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd841b4...95e039` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0119fd...d06dd5` | ⚠️ Unaudited |
| ChildMintableERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbda641...3fdbb6` | ⚠️ Unaudited |
| ChildMintableERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x07280d...3952ea` | ⚠️ Unaudited |
| DfynChest | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5cf9d1...d45fc0` | ⚠️ Unaudited |
| DFYNFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9820a...3d64f5` | ⚠️ Unaudited |
| DfynPricePrediction | unknown | project_anchor | own_supporting | 0 | polygon | unit-235289 | `0x150b4f...cc29e7` | ⚠️ Unaudited |
| DFYNRouter02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c28f4...dce1fa` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x01df11...ee4cf7` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | polygon | n/a | `0x26fbd7...9fdc3f` | ⚠️ Unaudited |
| HelloWorld | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x04de5e...7d1f98` | ⚠️ Unaudited |
| RewardVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ac606...44c4ac` | ⚠️ Unaudited |
| StakingRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x03428d...431cca` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x038be8...eae967` | ⚠️ Unaudited |
| Transfer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xfa38b8...e50698` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x002e97...5d8dbb` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x000de6...6ec08c` | ⚠️ Unaudited |
| UniswapV2Factory | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-235294 | `0xa10207...c57429` | ⚠️ Unaudited |
| UniswapV2Router02 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa10207...c57429` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x356fe5...8a3723` | ⚠️ Unaudited |
| WETH9 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4c28f4...dce1fa` | ⚠️ Unaudited |
| XERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x48856f...95f723` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235290 | `0x75455c...23c976` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-235291 | `0xe7fb3e...66423b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235292 | `0x2724b9...b5ef2d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | fantom | unit-235293 | `0xd9820a...3d64f5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-235295 | `0xaede1e...85e71c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Audit Report](https://www.dfyn.network/dfyn-v2-audit-report.pdf) | unknown | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 13 | high |
| [Yes, the contracts have been audited by Hacken, and the audit report can be found [here]().](https://www.dropbox.com/scl/fi/qauzvylh5p8midfxaw0bo/BYOF-Hacken-Audit.pdf?rlkey=8cz2o0mhw5l41yyljtd1r6vpe&dl=0) | Hacken | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [DFYN RFQ QuillAudits.pdf](https://2846587992-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MZNpkqBkemZoRMQq0J6%2Fuploads%2FyxL7wCObcAg4Ef5Rniir%2FDFYN%20RFQ%20QuillAudits.pdf) | QuillAudits | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [DFYN RFQ Zellic Audit.pdf](https://2846587992-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F-MZNpkqBkemZoRMQq0J6%2Fuploads%2Fy2MrGKWRY8qDZpJq9Yhu%2FDFYN%20RFQ%20Zellic%20Audit.pdf) | Zellic | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19710] Audit Report — no match: Contracts extracted from findings sections; all are explicitly named in the report as audited files.
- [19711] Yes, the contracts have been audited by Hacken, and the audit report can be found [here](). — no match: The provided text is a Dropbox URL and a warning message, not the actual audit report content. No contract names or audit date could be extracted.
- [19712] DFYN RFQ QuillAudits.pdf — no match: Only one contract name 'dfyn-RFQ' is explicitly mentioned as the audited contract. No file paths or additional contract names provided.
- [19713] DFYN RFQ Zellic Audit.pdf — no match: Only one contract, DfynRFQ, is in scope. The audit date is from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Audit Report | ConcentratedLiquidityPool | unmatched — not counted | — | listed in findings | no |
| Audit Report | Vault | unmatched — not counted | — | listed in findings | no |
| Audit Report | MasterDeployer | unmatched — not counted | — | listed in findings | no |
| Audit Report | Farm | unmatched — not counted | — | listed in findings | no |
| Audit Report | LimitOrderManager | unmatched — not counted | — | listed in findings | no |
| Audit Report | DfynLPToken | unmatched — not counted | — | listed in findings | no |
| Audit Report | MixedRouteQuoterV1 | unmatched — not counted | — | listed in findings | no |
| Audit Report | ConcentratedLiquidityPoolFactory | unmatched — not counted | — | listed in findings | no |
| Audit Report | ConcentratedLiquidityPoolHelper | unmatched — not counted | — | listed in findings | no |
| Audit Report | DfynRouterV2 | unmatched — not counted | — | listed in findings | no |
| Audit Report | TickCounter | unmatched — not counted | — | listed in findings | no |
| Audit Report | SwapExcecuter | unmatched — not counted | — | listed in findings | no |
| Audit Report | DfynRouter | unmatched — not counted | — | listed in findings | no |
| DFYN RFQ QuillAudits.pdf | dfyn-RFQ | unmatched — not counted | — | listed in scope as 'Contract - dfyn-RFQ' and mentioned throughout the report | no |
| DFYN RFQ Zellic Audit.pdf | DfynRFQ | unmatched — not counted | — | listed in scope section 2.3 as the program name | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0x150b4f...cc29e7` | DfynPricePrediction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 15 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: n/a

Zero-match audit list:

- [19710] Audit Report
- [19711] Yes, the contracts have been audited by Hacken, and the audit report can be found [here]().
- [19712] DFYN RFQ QuillAudits.pdf
- [19713] DFYN RFQ Zellic Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
