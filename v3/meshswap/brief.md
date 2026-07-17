# Agentic Audit Brief: Meshswap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 2 audit(s)
- Eligible audit results: 2 (2 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Meshswap (`meshswap`)
- Website: [https://meshswap.fi](https://meshswap.fi)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: polygon
- Contract surface: 37 unique implementations (37 raw deployments)
- Coverage basis: 3/8 confirmed own live verified implementations (37.5%); conservative 37.5% with 0 needs-review implementation(s)
- DeFi Llama TVL: $337,020.26
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Meshswap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 8 contract row(s) across polygon. Structural roles: 6 core, 2 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 8
- Structural roles: core (6), supporting (2)
- Contract kinds: contract (8)
- Detected standards: none
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x06d057bc1129e6be214e53f04e07f1a6dcc8e390`, chain 137)
- UnnamedContract (`0x51a4b6556b21aec229f4ca372044a505fe16ce19`, chain 137)
- UnnamedContract (`0x705b40af8cecd59406cf630ab7750055c9b137b9`, chain 137)
- UnnamedContract (`0xf61e4ede9128a9fa9a128cb7d161f4e73bd464da`, chain 137)
- EcoPotVotingImpl (`0x13c5c5a5d418b5365fb30ca1ec8a9fb2a6f622d1`, chain 137)
- FactoryImpl (`0x9f3044f7f9fc8bc9ed615d54845b4577b833282d`, chain 137)
- FactoryProxy (`0x504722a6eabb3d1573bada9abd585ae177d52e7a`, chain 137)
- MESH (`0x82362ec182db3cf7829014bc61e9be8a2e82868a`, chain 137)
- RouterImpl (`0x10f4a785f458bc144e3706575924889954946639`, chain 137)
- UChildERC20Proxy (`0x2791bca1f2de4661ed88a30c99a7a9449aa84174`, chain 137)
- VotingMESHImpl (`0x176b29289f66236c65c7ac5db2400abb5955df13`, chain 137)
- WMATIC (`0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270`, chain 137)

## Contract Surface Quality

- Logic-topography rows: 8; live-surface rows included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/14 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/8 (37.5%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 24 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 12 of 37 unique; 25 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/32
- Verified + Unaudited implementations: 29
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 37
- Raw deployments: 37
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Theori | Tier 2 | 3 | 9.4% | 2022-05 |
| Move Labs | Tier 2 | 1 | 3.1% | 2023-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FactoryImpl | unknown | project_anchor | own_supporting | 1 | polygon | unit-246455 | `0x9f3044f7f9fc8bc9ed615d54845b4577b833282d` | ✅ Audited |
| MESH | unknown | project_anchor | own_supporting | 0 | polygon | unit-246449 | `0x82362ec182db3cf7829014bc61e9be8a2e82868a` | ✅ Audited |
| RouterImpl | unknown | project_anchor | own_supporting | 1 | polygon | unit-246456 | `0x10f4a785f458bc144e3706575924889954946639` | ✅ Audited |

### ⚠️ Verified + Unaudited (29)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ChildChainManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x195fe6ee6639665cceb15bcceb9980fc445dfa0b` | ⚠️ Unaudited |
| ChildChainManagerProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xafeea1de9d660d3cb53031cfe1a58de40b171ce8` | ⚠️ Unaudited |
| ChildERC1155 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0c68c638235ee32657e8f720a23cec1bfc77c77` | ⚠️ Unaudited |
| ChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f` | ⚠️ Unaudited |
| ChildERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6ebeac13f6403d19c95b6b75008b12fd21a93aab` | ⚠️ Unaudited |
| ChildMintableERC721 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4888fab8bd39a663b63161f5ee1eae31a25b653` | ⚠️ Unaudited |
| DragonLair | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf28164a485b0b2c90639e47b0f377b4a438a16b1` | ⚠️ Unaudited |
| EcoPotVotingImpl | unknown | project_anchor | own_supporting | 1 | polygon | unit-246454 | `0x13c5c5a5d418b5365fb30ca1ec8a9fb2a6f622d1` | ⚠️ Unaudited |
| ExchangeImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe13f021df700b35bb3dde0fa050c72ee71e26479` | ⚠️ Unaudited |
| FactoryProxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-246452 | `0x504722a6eabb3d1573bada9abd585ae177d52e7a` | ⚠️ Unaudited |
| FxChild | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8397259c983751daf40400790063935a11afa28a` | ⚠️ Unaudited |
| GovernanceImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0e85821697009edcc94f8ae46777ac9f961bccad` | ⚠️ Unaudited |
| Helper | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8fed083364938080dc126e32290907296e57af49` | ⚠️ Unaudited |
| MaticWETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ceb23fd6bc0add59e62ac25578270cff1b9f619` | ⚠️ Unaudited |
| MultiSigWallet | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x06d28ab0f52b7762e7091430dabda81f4fb09abd` | ⚠️ Unaudited |
| PoolVotingImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x222dcc2d51c686c8e2116370e8fc517ae6a246d7` | ⚠️ Unaudited |
| Quick | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x831753dd7087cac61ab5644b308642cc1c33dc13` | ⚠️ Unaudited |
| QuickConverter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x38e8d77f4b651fb989c8b5ad274346dd5b5239ea` | ⚠️ Unaudited |
| SinglePoolFactoryImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4e5b43ae063ed7b91e00a7aa5156b5cbc51fa3fa` | ⚠️ Unaudited |
| SinglePoolImpl | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9e84610370729a05931da5f6807c59ef82f10b39` | ⚠️ Unaudited |
| StakingRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02a2d80ce5c021a40aec9062a6273bbc33537e1c` | ⚠️ Unaudited |
| UChildDAI | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x490e379c9cff64944be82b849f8fd5972c7999a7` | ⚠️ Unaudited |
| UChildERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0735a62b0b6e837fa67130589988436fd26f0e12` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x02daefc2e8aad089d094579499508398e3057966` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | project_anchor | own_supporting | 1 | polygon | unit-246457 | `0x2791bca1f2de4661ed88a30c99a7a9449aa84174` | ⚠️ Unaudited |
| UChildERC20Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | ⚠️ Unaudited |
| VamToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1512d268a94ce119eacbf80139ad7910eb9cfbc8` | ⚠️ Unaudited |
| VotingMESHImpl | unknown | project_anchor | own_supporting | 1 | polygon | unit-246453 | `0x176b29289f66236c65c7ac5db2400abb5955df13` | ⚠️ Unaudited |
| WMATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-246446 | `0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | n/a | `0x0000000000000000000000000000000000000000` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-246445 | `0x06d057bc1129e6be214e53f04e07f1a6dcc8e390` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-246447 | `0x51a4b6556b21aec229f4ca372044a505fe16ce19` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-246448 | `0x705b40af8cecd59406cf630ab7750055c9b137b9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | polygon | unit-246451 | `0xf61e4ede9128a9fa9a128cb7d161f4e73bd464da` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [[Theori]_meshswap_audit_rev1.0.pdf](https://github.com/meshswap-fi/meshswap/blob/main/audit/%5BTheori%5D_meshswap_audit_rev1.0.pdf) | Theori | Audit | 2022-05 | stale | Direct | contract_name | matched | 3 | 2 | 0 | 5 | high |
| [[MoveLabs]_Security_Analysis_Report_Final.pdf](https://github.com/meshswap-fi/meshswap/blob/main/audit/%5BMoveLabs%5D_Security_Analysis_Report_Final.pdf) | Move Labs | Audit | 2023-04 | stale | Direct | contract_name | matched | 2 | 1 | 0 | 8 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [21398] [Theori]_meshswap_audit_rev1.0.pdf — matched: Extracted contract names from findings and scope section. Audit date from cover page.
- [21399] [MoveLabs]_Security_Analysis_Report_Final.pdf — matched: Scope section only mentions repository and commit hash, no specific contract files listed. Contract names extracted from findings and recommendations.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| [Theori]_meshswap_audit_rev1.0.pdf | Exchange | unmatched — not counted | — | mentioned in findings and scope | no |
| [Theori]_meshswap_audit_rev1.0.pdf | Factory | own proxy deployment | FactoryImpl (proxy) (selected) `0x9f3044f7f9fc8bc9ed615d54845b4577b833282d` — deployed 2022-05-02 11:02:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [Theori]_meshswap_audit_rev1.0.pdf | MESH | own contract | MESH (selected) `0x82362ec182db3cf7829014bc61e9be8a2e82868a` — deployed 2022-04-25 12:35:17+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [Theori]_meshswap_audit_rev1.0.pdf | MESHswapRouter | own proxy deployment | RouterImpl (proxy) (selected) `0x10f4a785f458bc144e3706575924889954946639` — deployed 2022-05-02 11:02:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [Theori]_meshswap_audit_rev1.0.pdf | PlusPool | unmatched — not counted | — | mentioned in findings | no |
| [Theori]_meshswap_audit_rev1.0.pdf | BuybackFund | unmatched — not counted | — | mentioned in findings | no |
| [Theori]_meshswap_audit_rev1.0.pdf | Governance | unmatched — not counted | — | mentioned in findings | no |
| [Theori]_meshswap_audit_rev1.0.pdf | SinglePool | unmatched — not counted | — | mentioned in findings | no |
| [MoveLabs]_Security_Analysis_Report_Final.pdf | ConcentratedFactory | unmatched — not counted | — | mentioned in Issue 1 | no |
| [MoveLabs]_Security_Analysis_Report_Final.pdf | BuybackFund | unmatched — not counted | — | mentioned in Recommendation 1 | no |
| [MoveLabs]_Security_Analysis_Report_Final.pdf | MESHswapOracle | unmatched — not counted | — | mentioned in Recommendation 1 | no |
| [MoveLabs]_Security_Analysis_Report_Final.pdf | MESHswapRouter | own proxy deployment | RouterImpl (proxy) (selected) `0x10f4a785f458bc144e3706575924889954946639` — deployed 2022-05-02 11:02:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [MoveLabs]_Security_Analysis_Report_Final.pdf | EIP2771Recipient | unmatched — not counted | — | mentioned in Recommendation 1 | no |
| [MoveLabs]_Security_Analysis_Report_Final.pdf | MESHswapLibrary | unmatched — not counted | — | mentioned in Recommendation 1 | no |
| [MoveLabs]_Security_Analysis_Report_Final.pdf | LeveragedUser | unmatched — not counted | — | mentioned in Recommendation 2 | no |
| [MoveLabs]_Security_Analysis_Report_Final.pdf | Exchange | unmatched — not counted | — | mentioned in Scenario 1 | no |
| [MoveLabs]_Security_Analysis_Report_Final.pdf | PoolVoting | own contract | 0x705b40… (selected) `0x705b40af8cecd59406cf630ab7750055c9b137b9` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| [MoveLabs]_Security_Analysis_Report_Final.pdf | PlusPool | unmatched — not counted | — | mentioned in Scenario 2 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0x13c5c5a5d418b5365fb30ca1ec8a9fb2a6f622d1` | EcoPotVotingImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x504722a6eabb3d1573bada9abd585ae177d52e7a` | FactoryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x2791bca1f2de4661ed88a30c99a7a9449aa84174` | UChildERC20Proxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x176b29289f66236c65c7ac5db2400abb5955df13` | VotingMESHImpl | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x0d500b1d8e8ef31e21c99d1db9a6444d3adf1270` | WMATIC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 13 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: unique_name=5

Fork inheritance lineage and inherited audits are included when available.
