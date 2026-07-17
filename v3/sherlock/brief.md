# Agentic Audit Brief: Sherlock

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 2 audit(s)
- Eligible audit results: 4 (2 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `12555af2097191e60e7a3dc0743058c9046ed87a105382bdae663a49f79103f7`

## Project Overview

- Project: Sherlock (`sherlock`)
- Website: [https://sherlock.xyz](https://sherlock.xyz)
- Lifecycle: unknown
- Generated: 2026-07-17T12:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 34 unique implementations (34 raw deployments)
- Coverage basis: 3/5 confirmed own live verified implementations (60.0%); conservative 60.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $504,842.96
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Sherlock. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 5 contract row(s) across ethereum. Structural roles: 5 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 5
- Structural roles: core (5)
- Contract kinds: contract (5)
- Detected standards: ownable (3), pausable (3), erc165 (1), erc721 (1)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- SherBuy (`0xf8583f22c2f6f8cd27f62879a0fb4319bce262a6`, chain 1)
- SherClaim (`0x7289c61c75dcdb8fe4df0b937c08c9c40902bdd3`, chain 1)
- Sherlock (`0x0865a889183039689034da55c1fd12af5083eabf`, chain 1)
- SherlockClaimManager (`0xfeedd254ae4b7c44a0472bb836b813ce4625eb84`, chain 1)
- SherlockProtocolManager (`0x3d0b8a0a10835ab9b0f0beb54c5400b8aacaa1d3`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 5; live-surface rows included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/5 (60.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 25 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 5 of 34 unique; 29 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 3/30
- Verified + Unaudited implementations: 27
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 34
- Raw deployments: 34
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 60.0% (Sherlock, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 3 | 10.0% | 2022-10 |
| Trail of Bits | Tier 1 | 3 | 10.0% | 2022-06 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Sherlock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254699 | `0x0865a889183039689034da55c1fd12af5083eabf` | ✅ Audited |
| SherlockClaimManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254703 | `0xfeedd254ae4b7c44a0472bb836b813ce4625eb84` | ✅ Audited |
| SherlockProtocolManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254700 | `0x3d0b8a0a10835ab9b0f0beb54c5400b8aacaa1d3` | ✅ Audited |

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlphaBetaEqualDepositMaxSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01fe7ff1162d4b4ab41bdaf99296644b7b0ee27d` | ⚠️ Unaudited |
| AlphaBetaEqualDepositSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e0049866879151480d9ec01391bbf713f7705b1` | ⚠️ Unaudited |
| EulerStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc124a8088c39625f125655152a168baa86b49026` | ⚠️ Unaudited |
| ForeignLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde229e52bdb72c449db7912968e51d9d5e793005` | ⚠️ Unaudited |
| Gov | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2776fb23394693829f1339154cc149391397fc3f` | ⚠️ Unaudited |
| GovDev | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3147528e778075e216aabc583ac7b823e4f133a1` | ⚠️ Unaudited |
| InfoStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfa53d098d7063ddcc39a45ea6f8c290fcd7fc70` | ⚠️ Unaudited |
| LibPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedda10a93767b07f6913cb01479f6418eb35ab7e` | ⚠️ Unaudited |
| LibSherX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22b6d0df02ff7480c77d73a755e5e5ecdac53b1e` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68a442cff69bb6795528a22e2974b74c0ba8d555` | ⚠️ Unaudited |
| MaplePlaceholderStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63146dbb7a870958120fcdd66da239e6c816a6eb` | ⚠️ Unaudited |
| MapleStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2acd0214f87d217a2ef148aa4a5aba71d3f7956` | ⚠️ Unaudited |
| MasterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e8be946370a99019e323998acd37a1206bdd507` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b222a6aa23fb5cff3ef7e5e5857aa3673d16e59` | ⚠️ Unaudited |
| NativeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca1bf9e6add6155e92dc1dc7c0bf210c159a2f43` | ⚠️ Unaudited |
| Payout | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc118439d0630873cdf3a1fee798b22c2b61c23f9` | ⚠️ Unaudited |
| PoolBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4efe566cab5e1018be83e9c5de14836b96b4ca40` | ⚠️ Unaudited |
| PoolDevOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ca05763a3e46d27d1fc37abaa622ed8a9067134` | ⚠️ Unaudited |
| PoolOpen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce9dd62a533cf89abe5018af9682980922b5ce22` | ⚠️ Unaudited |
| PoolStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b354a4bd898d875d8ecfc4d7797ff8a1665c5e4` | ⚠️ Unaudited |
| SherBuy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254702 | `0xf8583f22c2f6f8cd27f62879a0fb4319bce262a6` | ⚠️ Unaudited |
| SherClaim | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254701 | `0x7289c61c75dcdb8fe4df0b937c08c9c40902bdd3` | ⚠️ Unaudited |
| SherDistributionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3264bbef71983307342a656aeb285509e5eb5939` | ⚠️ Unaudited |
| SherDistributionManagerEmpty | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5775f32787656e77dd99f20f4e478ddc85fdb31b` | ⚠️ Unaudited |
| SherX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf6046651beaf118ed1f4fe2c93526c9e186ee88b` | ⚠️ Unaudited |
| SherXERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeafd0ce3eb91d08b36136e9fdd42b54d1bb9294a` | ⚠️ Unaudited |
| TimelockController | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x92aeffffad9fff820f7fcaf1563d8467afe358c4` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x46d2a90153cd8f09464ca3a5605b6bbec9c2ff01` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x50b0845db1fb4c1b3a3786dc288b330c269e3993` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0x731751e3c0b67014b560f98b26601a5587f954b0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | n/a | `0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Sherlock - Code Arena Jan 2022.pdf](https://github.com/sherlock-protocol/sherlock-v2-core/blob/main/audits/Sherlock%20-%20Code%20Arena%20Jan%202022.pdf) | Sherlock | Contest | 2022-01 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 5 | high |
| [Sherlock - Sherlock Audit October 2022.pdf](https://github.com/sherlock-protocol/sherlock-v2-core/blob/main/audits/Sherlock%20-%20Sherlock%20Audit%20October%202022.pdf) | Sherlock | Contest | 2022-10 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [Sherlock - Trail of Bits Dec 2021.pdf](https://github.com/sherlock-protocol/sherlock-v2-core/blob/main/audits/Sherlock%20-%20Trail%20of%20Bits%20Dec%202021.pdf) | Trail of Bits | Audit | 2021-12 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 3 | high |
| [Sherlock - Trail of Bits June 2022.pdf](https://github.com/sherlock-protocol/sherlock-v2-core/blob/main/audits/Sherlock%20-%20Trail%20of%20Bits%20June%202022.pdf) | Trail of Bits | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [24401] Sherlock - Code Arena Jan 2022.pdf — matched: Scope section mentions 8 smart contracts, but only 8 are explicitly named in the report. The report date is from the report header.
- [24402] Sherlock - Sherlock Audit October 2022.pdf — no match: The provided text is a GitHub page navigation menu, not the actual audit report content. No contracts or audit date could be extracted.
- [24403] Sherlock - Trail of Bits Dec 2021.pdf — matched: Extracted 6 contracts from the Project Targets and Project Coverage sections. Audit date from cover page.
- [24404] Sherlock - Trail of Bits June 2022.pdf — no match: Scope section lists contracts/managers/MasterStrategy.sol and contracts/strategy/*. Additional contracts identified from findings.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Sherlock - Code Arena Jan 2022.pdf | Sherlock | own contract | Sherlock (selected) `0x0865a889183039689034da55c1fd12af5083eabf` — deployed 2022-03-03 00:56:54+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - Code Arena Jan 2022.pdf | SherlockClaimManager | own contract | SherlockClaimManager (selected) `0xfeedd254ae4b7c44a0472bb836b813ce4625eb84` — deployed 2022-03-03 00:56:09+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - Code Arena Jan 2022.pdf | SherlockProtocolManager | own contract | SherlockProtocolManager (selected) `0x3d0b8a0a10835ab9b0f0beb54c5400b8aacaa1d3` — deployed 2022-03-03 00:52:18+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - Code Arena Jan 2022.pdf | SherDistributionManager | unmatched — not counted | — | mentioned in findings | no |
| Sherlock - Code Arena Jan 2022.pdf | Manager | unmatched — not counted | — | mentioned in findings | no |
| Sherlock - Code Arena Jan 2022.pdf | AaveV2Strategy | unmatched — not counted | — | mentioned in findings | no |
| Sherlock - Code Arena Jan 2022.pdf | ISherlockClaimManager | unmatched — not counted | — | mentioned in findings | no |
| Sherlock - Code Arena Jan 2022.pdf | ISherlockGov | unmatched — not counted | — | mentioned in findings | no |
| Sherlock - Trail of Bits Dec 2021.pdf | Sherlock | own contract | Sherlock (selected) `0x0865a889183039689034da55c1fd12af5083eabf` — deployed 2022-03-03 00:56:54+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - Trail of Bits Dec 2021.pdf | SherlockClaimManager | own contract | SherlockClaimManager (selected) `0xfeedd254ae4b7c44a0472bb836b813ce4625eb84` — deployed 2022-03-03 00:56:09+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - Trail of Bits Dec 2021.pdf | SherlockProtocolManager | own contract | SherlockProtocolManager (selected) `0x3d0b8a0a10835ab9b0f0beb54c5400b8aacaa1d3` — deployed 2022-03-03 00:52:18+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - Trail of Bits Dec 2021.pdf | SherDistributionManager | unmatched — not counted | — | listed in scope | no |
| Sherlock - Trail of Bits Dec 2021.pdf | AaveV2Strategy | unmatched — not counted | — | listed in scope | no |
| Sherlock - Trail of Bits Dec 2021.pdf | Manager | unmatched — not counted | — | listed in scope | no |
| Sherlock - Trail of Bits June 2022.pdf | MasterStrategy | unmatched — not counted | — | listed in scope and findings | no |
| Sherlock - Trail of Bits June 2022.pdf | AlphaBetaSplitter | unmatched — not counted | — | listed in findings | no |
| Sherlock - Trail of Bits June 2022.pdf | AlphaBetaEqualDepositMaxSplitter | unmatched — not counted | — | listed in findings | no |
| Sherlock - Trail of Bits June 2022.pdf | TrueFiStrategy | unmatched — not counted | — | listed in findings | no |
| Sherlock - Trail of Bits June 2022.pdf | BaseNode | unmatched — not counted | — | listed in findings | no |
| Sherlock - Trail of Bits June 2022.pdf | AaveStrategy | unmatched — not counted | — | listed in findings | no |
| Sherlock - Trail of Bits June 2022.pdf | CompoundStrategy | unmatched — not counted | — | listed in findings | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0xf8583f22c2f6f8cd27f62879a0fb4319bce262a6` | SherBuy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7289c61c75dcdb8fe4df0b937c08c9c40902bdd3` | SherClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 15 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3, low=1
- Match method counts: unique_name=6

Zero-match audit list:

- [24402] Sherlock - Sherlock Audit October 2022.pdf
- [24404] Sherlock - Trail of Bits June 2022.pdf

Fork inheritance lineage and inherited audits are included when available.
