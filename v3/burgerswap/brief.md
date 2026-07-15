# Agentic Audit Brief: BurgerSwap

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: BurgerSwap (`burgerswap`)
- Website: [https://burgerswap.org/](https://burgerswap.org/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: bsc
- Contract surface: 52 unique implementations (52 raw deployments)
- Coverage basis: 3/11 confirmed own live verified implementations (27.3%); conservative 27.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $142,208.33
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for BurgerSwap. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 13 contract row(s) across bsc. Structural roles: 9 core, 4 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 13
- Structural roles: core (9), supporting (4)
- Contract kinds: contract (13)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (9)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- DemaxBallotFactory (`0x29d5ac...b00a68`, chain 56)
- DemaxDelegate (`0x3de79b...a35e60`, chain 56)
- DemaxPlatform (`0x42591f...9d70ca`, chain 56)
- DemaxPool (`0x86a327...5d4a74`, chain 56)
- DemaxProjectDeploy (`0x5bb577...e5c7b5`, chain 56)
- DemaxQuery2 (`0x2c7fc9...32e022`, chain 56)
- DemaxTransferListener (`0x3becd0...6d943b`, chain 56)
- DemaxTrigger (`0xef72eb...119031`, chain 56)
- Dgas (`0xae9269...1d6b8f`, chain 56)
- IFOQuery (`0x136efc...ffbae4`, chain 56)
- TokenQuery (`0xe85ed3...1364e0`, chain 56)
- XBurger (`0xafe24e...d788dd`, chain 56)

## Contract Surface Quality

- Logic-topography rows: 13; live-surface rows included: 13 (12 live, 1 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/13 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/11 (27.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 2 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 39 discovered implementations shown in the inventory but excluded from coverage (2 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 12 of 52 unique; 40 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/52
- Verified + Unaudited implementations: 49
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 52
- Raw deployments: 52
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Peckshield | Tier 2 | 3 | 5.8% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| DemaxPlatform | unknown | project_anchor | own_supporting | 0 | bsc | unit-266817 | `0x42591f...9d70ca` | ✅ Audited |
| DemaxPool | unknown | project_anchor | own_supporting | 0 | bsc | unit-266820 | `0x86a327...5d4a74` | ✅ Audited |
| DemaxTransferListener | unknown | project_anchor | own_supporting | 0 | bsc | unit-266815 | `0x3becd0...6d943b` | ✅ Audited |

### ⚠️ Verified + Unaudited (49)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AAAAConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf66aae...7194e4` | ⚠️ Unaudited |
| AAAADeploy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6cda5c...668f61` | ⚠️ Unaudited |
| AAAAFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59b52c...8c1399` | ⚠️ Unaudited |
| AAAAGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16463c...80eaed` | ⚠️ Unaudited |
| AAAAMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2aef4a...0fe95b` | ⚠️ Unaudited |
| AAAAOtherConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab6508...81d2c2` | ⚠️ Unaudited |
| AAAAPlatform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed49c8...9a2748` | ⚠️ Unaudited |
| AAAAQuery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc396c3...e93db0` | ⚠️ Unaudited |
| AAAAQuery2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x464adc...bd324d` | ⚠️ Unaudited |
| AAAAReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x261899...a5143d` | ⚠️ Unaudited |
| AAAAShare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0855a...bc47ed` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83f72a...446428` | ⚠️ Unaudited |
| BSCBurgerTransit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f6219...d2cefe` | ⚠️ Unaudited |
| BurgerERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0502f8...d08443` | ⚠️ Unaudited |
| BurgerSave | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee0cfa...977241` | ⚠️ Unaudited |
| CBurger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b5d13...79f640` | ⚠️ Unaudited |
| Claim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54d5a9...181368` | ⚠️ Unaudited |
| ClaimCondition | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc53f74...e5f4e0` | ⚠️ Unaudited |
| ClaimRule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfae8e5...096e40` | ⚠️ Unaudited |
| DemaxBallotFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-266813 | `0x29d5ac...b00a68` | ⚠️ Unaudited |
| DemaxConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3669d6...3f4eba` | ⚠️ Unaudited |
| DemaxDelegate | unknown | project_anchor | own_supporting | 0 | bsc | unit-266816 | `0x3de79b...a35e60` | ⚠️ Unaudited |
| DemaxFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2254ee...e20891` | ⚠️ Unaudited |
| DemaxGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d9b9c...67258d` | ⚠️ Unaudited |
| DemaxPricePrediction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2540ed...6ef68e` | ⚠️ Unaudited |
| DemaxProjectDeploy | unknown | project_anchor | own_supporting | 0 | bsc | unit-266818 | `0x5bb577...e5c7b5` | ⚠️ Unaudited |
| DemaxProjectQuery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76da67...24bf4f` | ⚠️ Unaudited |
| DemaxQuery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x236b75...012323` | ⚠️ Unaudited |
| DemaxQuery2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-266814 | `0x2c7fc9...32e022` | ⚠️ Unaudited |
| DemaxShackChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07de03...61ba3e` | ⚠️ Unaudited |
| DemaxShackChefQuery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfdd5d0...f876ad` | ⚠️ Unaudited |
| DemaxShackConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fb37f...a06b24` | ⚠️ Unaudited |
| DemaxShackFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x744db7...ee247d` | ⚠️ Unaudited |
| DemaxTrigger | unknown | project_anchor | own_supporting | 0 | bsc | unit-266824 | `0xef72eb...119031` | ⚠️ Unaudited |
| Dgas | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-266821 | `0xae9269...1d6b8f` | ⚠️ Unaudited |
| ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x062a0a...bdff22` | ⚠️ Unaudited |
| ERC20Factory | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc | unit-266819 | `0x6292c7...0a4a08` | ⚠️ Unaudited |
| ERC20Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0eaa6...6429a4` | ⚠️ Unaudited |
| ETHBurgerTransit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb92d86...174e0b` | ⚠️ Unaudited |
| IFOFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d3507...ead0d2` | ⚠️ Unaudited |
| IFOQuery | unknown | project_anchor | own_supporting | 0 | bsc | unit-266812 | `0x136efc...ffbae4` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x2a5029...edd4dc` | ⚠️ Unaudited |
| SignatureUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb86e86...b2d779` | ⚠️ Unaudited |
| TERToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x700842...4837d1` | ⚠️ Unaudited |
| TokenQuery | unknown | project_anchor | own_supporting | 0 | bsc | unit-266823 | `0xe85ed3...1364e0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xb0e53d...254171` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xc3ff4a...a3c6b8` | ⚠️ Unaudited |
| USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9a6c9...b312ae` | ⚠️ Unaudited |
| XBurger | unknown | project_anchor | own_supporting | 0 | bsc | unit-266822 | `0xafe24e...d788dd` | ⚠️ Unaudited |

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
| [{% embed url="<>" %}](https://drive.google.com/file/d/1WlKunRKaWzGyN1iWyT1bE8C7IHOrfikK/view?usp=sharing) | Peckshield | Audit | 2023-02 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 13 | high |
| [- [Audit]()](https://burgerswap.gitbook.io/burgercities/audit.md) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19627] {% embed url="<>" %} — matched: Extracted contract names from findings and explicit mentions. The audit report covers the BurgerCities protocol contracts including Reward, NFTSwap, NFTLease_v2, HeroBox_v2, ActivityPunchIn, ChrismasPunchIn, DemaxBallot, DemaxPlatform, DemaxTransferListener, DemaxPool, DemaxPair, DemaxFactory, DemaxSwapLibrary, DemaxConfig, DemaxLP, and DgasHub. The audit date is clearly stated on the cover page and in the report metadata.
- [19628] - [Audit]() — no match: The provided text is a documentation index page with a link to an external PDF audit report. No contract names or scope details are present in the text.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| {% embed url="<>" %} | Reward | unmatched — not counted | — | Listed in finding PVE-001 as target contract with code snippet showing Reward::verify() | no |
| {% embed url="<>" %} | NFTSwap | unmatched — not counted | — | Listed in finding PVE-002 as target contract with code snippet showing NFTSwap::swap() | no |
| {% embed url="<>" %} | NFTLease_v2 | unmatched — not counted | — | Listed in finding PVE-002 as target contract with violations | no |
| {% embed url="<>" %} | HeroBox_v2 | unmatched — not counted | — | Listed in finding PVE-003 as target contract with code snippet showing HeroBox_v2::withdrawUSDT() | no |
| {% embed url="<>" %} | ActivityPunchIn | unmatched — not counted | — | Listed in finding PVE-003 as target contract | no |
| {% embed url="<>" %} | ChrismasPunchIn | unmatched — not counted | — | Listed in finding PVE-003 as target contract | no |
| {% embed url="<>" %} | DemaxBallot | unmatched — not counted | — | Listed in finding PVE-004 as target contract with code snippet showing DemaxBallot::winningProposal() | no |
| {% embed url="<>" %} | DemaxPlatform | own contract | DemaxPlatform (selected) `0x42591f...9d70ca` — deployed 2021-05-31 09:24:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| {% embed url="<>" %} | DemaxTransferListener | own contract | DemaxTransferListener (selected) `0x3becd0...6d943b` — deployed 2020-09-27 15:43:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| {% embed url="<>" %} | DemaxPool | own contract | DemaxPool (selected) `0x86a327...5d4a74` — deployed 2020-09-22 04:18:04+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| {% embed url="<>" %} | DemaxPair | unmatched — not counted | — | Listed in finding PVE-008 as target contract with code snippets showing mint() and burn() | no |
| {% embed url="<>" %} | DemaxFactory | unmatched — not counted | — | Referenced in DemaxPlatform::migrateLiquidity() and DemaxPool::claimReward() | no |
| {% embed url="<>" %} | DemaxSwapLibrary | unmatched — not counted | — | Referenced in DemaxPlatform::_swapFee() | no |
| {% embed url="<>" %} | DemaxConfig | unmatched — not counted | — | Referenced in DemaxPair::burn() | no |
| {% embed url="<>" %} | DemaxLP | unmatched — not counted | — | Referenced in finding PVE-008 as the pool contract | no |
| {% embed url="<>" %} | DgasHub | unmatched — not counted | — | Explicitly mentioned in Section 1.1 as an additional contract covered in the audit | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x29d5ac...b00a68` | DemaxBallotFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3de79b...a35e60` | DemaxDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5bb577...e5c7b5` | DemaxProjectDeploy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2c7fc9...32e022` | DemaxQuery2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xef72eb...119031` | DemaxTrigger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x136efc...ffbae4` | IFOQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe85ed3...1364e0` | TokenQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xafe24e...d788dd` | XBurger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 13 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1
- Match method counts: unique_name=3

Zero-match audit list:

- [19628] - [Audit]()

Fork inheritance lineage and inherited audits are included when available.
