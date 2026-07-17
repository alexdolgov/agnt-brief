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

- DemaxBallotFactory (`0x29d5ac18a4c315af2e8c8325a2748e590ab00a68`, chain 56)
- DemaxDelegate (`0x3de79b6ff181aa60bd1cd7d2c6ea8a6099a35e60`, chain 56)
- DemaxPlatform (`0x42591f57f707739b95c5c486c014b525f19d70ca`, chain 56)
- DemaxPool (`0x86a327715d707bca24983b1145d1f6c40c5d4a74`, chain 56)
- DemaxProjectDeploy (`0x5bb57735352165ceabcb50dc9b11db5341e5c7b5`, chain 56)
- DemaxQuery2 (`0x2c7fc9ccf3d03d99007db5977dd5926e8e32e022`, chain 56)
- DemaxTransferListener (`0x3becd05231bbba6f7adda92f3c79fb3aa96d943b`, chain 56)
- DemaxTrigger (`0xef72ebba2602de655ad05ae67f7e15ccdd119031`, chain 56)
- Dgas (`0xae9269f27437f0fcbc232d39ec814844a51d6b8f`, chain 56)
- IFOQuery (`0x136efc39b6ba21143e408fe318efe0f872ffbae4`, chain 56)
- TokenQuery (`0xe85ed3322373f1dc720b7dccdbecfceb871364e0`, chain 56)
- XBurger (`0xafe24e29da7e9b3e8a25c9478376b6ad6ad788dd`, chain 56)

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
| DemaxPlatform | unknown | project_anchor | own_supporting | 0 | bsc | unit-266817 | `0x42591f57f707739b95c5c486c014b525f19d70ca` | ✅ Audited |
| DemaxPool | unknown | project_anchor | own_supporting | 0 | bsc | unit-266820 | `0x86a327715d707bca24983b1145d1f6c40c5d4a74` | ✅ Audited |
| DemaxTransferListener | unknown | project_anchor | own_supporting | 0 | bsc | unit-266815 | `0x3becd05231bbba6f7adda92f3c79fb3aa96d943b` | ✅ Audited |

### ⚠️ Verified + Unaudited (49)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AAAAConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf66aaed32d6a8b9d0bb1a050019bfb36e47194e4` | ⚠️ Unaudited |
| AAAADeploy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6cda5cae869277c6368b8d1301ec134450668f61` | ⚠️ Unaudited |
| AAAAFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59b52c6f7769d5baeda35455506c2b93cf8c1399` | ⚠️ Unaudited |
| AAAAGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x16463cd818fc4ae1e354e8af2cc4a570ac80eaed` | ⚠️ Unaudited |
| AAAAMint | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2aef4a024099fe9ef1efd1d075a904fdc20fe95b` | ⚠️ Unaudited |
| AAAAOtherConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xab6508d93bf6e42b9c0a9676b59295f85781d2c2` | ⚠️ Unaudited |
| AAAAPlatform | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed49c8f41d8b5eb2a29720955a39212cfb9a2748` | ⚠️ Unaudited |
| AAAAQuery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc396c3ece6aca68316eb95e0cbad3c4c04e93db0` | ⚠️ Unaudited |
| AAAAQuery2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x464adcc1bde46b176c90c4f950f8d9c800bd324d` | ⚠️ Unaudited |
| AAAAReward | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2618997cdb340f98e731916950f8ed09b1a5143d` | ⚠️ Unaudited |
| AAAAShare | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa0855a1b515aa6d50af1e9c41d8db846fbbc47ed` | ⚠️ Unaudited |
| Airdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x83f72a72c6e513eb50be148d482a429570446428` | ⚠️ Unaudited |
| BSCBurgerTransit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3f621973a1363c2ecc8b256e9c0a1c3e62d2cefe` | ⚠️ Unaudited |
| BurgerERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0502f8e3cd79e2356ecbc6ba03ba4aae1cd08443` | ⚠️ Unaudited |
| BurgerSave | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xee0cfacca812f5bf696f638501cac35334977241` | ⚠️ Unaudited |
| CBurger | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b5d132e902f792e2f8327a3d4062e3edd79f640` | ⚠️ Unaudited |
| Claim | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x54d5a9e5680f729c6a020a3b891e64a711181368` | ⚠️ Unaudited |
| ClaimCondition | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc53f74a55b0408a2de829a51772eae6de5e5f4e0` | ⚠️ Unaudited |
| ClaimRule | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfae8e56209dd5a7ac9be27c91516164f27096e40` | ⚠️ Unaudited |
| DemaxBallotFactory | unknown | project_anchor | own_supporting | 0 | bsc | unit-266813 | `0x29d5ac18a4c315af2e8c8325a2748e590ab00a68` | ⚠️ Unaudited |
| DemaxConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3669d6ac4ea8a6ba0b85396995557475c23f4eba` | ⚠️ Unaudited |
| DemaxDelegate | unknown | project_anchor | own_supporting | 0 | bsc | unit-266816 | `0x3de79b6ff181aa60bd1cd7d2c6ea8a6099a35e60` | ⚠️ Unaudited |
| DemaxFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2254ee4434ef583edb2eb8359d3e82230ee20891` | ⚠️ Unaudited |
| DemaxGovernance | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4d9b9c51f286164f96c2b756762a228d8267258d` | ⚠️ Unaudited |
| DemaxPricePrediction | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2540ed3ed762d28f7798e71c677486a2cc6ef68e` | ⚠️ Unaudited |
| DemaxProjectDeploy | unknown | project_anchor | own_supporting | 0 | bsc | unit-266818 | `0x5bb57735352165ceabcb50dc9b11db5341e5c7b5` | ⚠️ Unaudited |
| DemaxProjectQuery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76da67bb008baee6e53dcbdcd63c11f10924bf4f` | ⚠️ Unaudited |
| DemaxQuery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x236b758057a1d277a267bee8871c563f2a012323` | ⚠️ Unaudited |
| DemaxQuery2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-266814 | `0x2c7fc9ccf3d03d99007db5977dd5926e8e32e022` | ⚠️ Unaudited |
| DemaxShackChef | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x07de034a0fc0da7a0bf703f6dca7025bcd61ba3e` | ⚠️ Unaudited |
| DemaxShackChefQuery | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfdd5d0202413a902414f3d7a5ccac13c40f876ad` | ⚠️ Unaudited |
| DemaxShackConfig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5fb37f02196190237b47f0fe73a343b51fa06b24` | ⚠️ Unaudited |
| DemaxShackFarm | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x744db744da07e3ade5ba99d1c80fa11dc5ee247d` | ⚠️ Unaudited |
| DemaxTrigger | unknown | project_anchor | own_supporting | 0 | bsc | unit-266824 | `0xef72ebba2602de655ad05ae67f7e15ccdd119031` | ⚠️ Unaudited |
| Dgas | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | unit-266821 | `0xae9269f27437f0fcbc232d39ec814844a51d6b8f` | ⚠️ Unaudited |
| ERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x062a0a2efb3dfb6b975b7ea8d2d3ca9dacbdff22` | ⚠️ Unaudited |
| ERC20Factory | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | bsc | unit-266819 | `0x6292c755af42512c5901524e42c8666ef60a4a08` | ⚠️ Unaudited |
| ERC20Token | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe0eaa6376af9361d28ac3e8ecd0465ac496429a4` | ⚠️ Unaudited |
| ETHBurgerTransit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb92d86a9cf4656d9d2f4bd3dd6aa1b0b16174e0b` | ⚠️ Unaudited |
| IFOFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6d3507bd96227b95135c936b3427f54a02ead0d2` | ⚠️ Unaudited |
| IFOQuery | unknown | project_anchor | own_supporting | 0 | bsc | unit-266812 | `0x136efc39b6ba21143e408fe318efe0f872ffbae4` | ⚠️ Unaudited |
| ProxyAdmin | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | bsc | n/a | `0x2a5029f77aad1e7ee0b98b1181ab5c35d8edd4dc` | ⚠️ Unaudited |
| SignatureUtils | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb86e8621aa93dbcdccb5332f99a72c4a83b2d779` | ⚠️ Unaudited |
| TERToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70084234e6228a5dbce0331423208babf14837d1` | ⚠️ Unaudited |
| TokenQuery | unknown | project_anchor | own_supporting | 0 | bsc | unit-266823 | `0xe85ed3322373f1dc720b7dccdbecfceb871364e0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xb0e53def61ad145bc8615c592bef212c46254171` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | external_dependency_or_infra | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0xc3ff4aa9441dcd838b8e4652bb84148216a3c6b8` | ⚠️ Unaudited |
| USDT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa9a6c929a2b6e538fe1d2151ad76f751dcb312ae` | ⚠️ Unaudited |
| XBurger | unknown | project_anchor | own_supporting | 0 | bsc | unit-266822 | `0xafe24e29da7e9b3e8a25c9478376b6ad6ad788dd` | ⚠️ Unaudited |

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
| {% embed url="<>" %} | DemaxPlatform | own contract | DemaxPlatform (selected) `0x42591f57f707739b95c5c486c014b525f19d70ca` — deployed 2021-05-31 09:24:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| {% embed url="<>" %} | DemaxTransferListener | own contract | DemaxTransferListener (selected) `0x3becd05231bbba6f7adda92f3c79fb3aa96d943b` — deployed 2020-09-27 15:43:31+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| {% embed url="<>" %} | DemaxPool | own contract | DemaxPool (selected) `0x86a327715d707bca24983b1145d1f6c40c5d4a74` — deployed 2020-09-22 04:18:04+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| bsc | `0x29d5ac18a4c315af2e8c8325a2748e590ab00a68` | DemaxBallotFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x3de79b6ff181aa60bd1cd7d2c6ea8a6099a35e60` | DemaxDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5bb57735352165ceabcb50dc9b11db5341e5c7b5` | DemaxProjectDeploy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x2c7fc9ccf3d03d99007db5977dd5926e8e32e022` | DemaxQuery2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xef72ebba2602de655ad05ae67f7e15ccdd119031` | DemaxTrigger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x136efc39b6ba21143e408fe318efe0f872ffbae4` | IFOQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xe85ed3322373f1dc720b7dccdbecfceb871364e0` | TokenQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xafe24e29da7e9b3e8a25c9478376b6ad6ad788dd` | XBurger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
