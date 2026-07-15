# Agentic Audit Brief: Sherlock

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 2 audit(s)
- Eligible audit results: 4 (2 matched; 2 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Sherlock (`sherlock`)
- Website: [https://sherlock.xyz](https://sherlock.xyz)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 30 unique implementations (30 raw deployments)
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

- SherBuy (`0xf8583f...e262a6`, chain 1)
- SherClaim (`0x7289c6...02bdd3`, chain 1)
- Sherlock (`0x0865a8...83eabf`, chain 1)
- SherlockClaimManager (`0xfeedd2...25eb84`, chain 1)
- SherlockProtocolManager (`0x3d0b8a...caa1d3`, chain 1)

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 3/5 (60.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 25 discovered implementations excluded (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 5 of 30 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 3/5
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 30
- Raw deployments: 30
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
| Sherlock | Tier 1 | 3 | 60.0% | 2022-10 |
| Trail of Bits | Tier 1 | 3 | 60.0% | 2022-06 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Sherlock | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254699 | `0x0865a8...83eabf` | ✅ Audited |
| SherlockClaimManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254703 | `0xfeedd2...25eb84` | ✅ Audited |
| SherlockProtocolManager | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254700 | `0x3d0b8a...caa1d3` | ✅ Audited |

### ⚠️ Verified + Unaudited (27)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AlphaBetaEqualDepositMaxSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01fe7f...0ee27d` | ⚠️ Unaudited |
| AlphaBetaEqualDepositSplitter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e0049...7705b1` | ⚠️ Unaudited |
| EulerStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc124a8...b49026` | ⚠️ Unaudited |
| ForeignLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xde229e...793005` | ⚠️ Unaudited |
| Gov | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2776fb...97fc3f` | ⚠️ Unaudited |
| GovDev | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x314752...f133a1` | ⚠️ Unaudited |
| InfoStorage | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbfa53d...d7fc70` | ⚠️ Unaudited |
| LibPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xedda10...35ab7e` | ⚠️ Unaudited |
| LibSherX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x22b6d0...c53b1e` | ⚠️ Unaudited |
| Manager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x68a442...a8d555` | ⚠️ Unaudited |
| MaplePlaceholderStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63146d...16a6eb` | ⚠️ Unaudited |
| MapleStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb2acd0...3f7956` | ⚠️ Unaudited |
| MasterStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e8be9...bdd507` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0b222a...d16e59` | ⚠️ Unaudited |
| NativeLock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca1bf9...9a2f43` | ⚠️ Unaudited |
| Payout | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc11843...1c23f9` | ⚠️ Unaudited |
| PoolBase | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4efe56...b4ca40` | ⚠️ Unaudited |
| PoolDevOnly | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8ca057...067134` | ⚠️ Unaudited |
| PoolOpen | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xce9dd6...b5ce22` | ⚠️ Unaudited |
| PoolStrategy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3b354a...65c5e4` | ⚠️ Unaudited |
| SherBuy | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254702 | `0xf8583f...e262a6` | ⚠️ Unaudited |
| SherClaim | unknown | project_anchor | own_supporting | 0 | ethereum | unit-254701 | `0x7289c6...02bdd3` | ⚠️ Unaudited |
| SherDistributionManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3264bb...eb5939` | ⚠️ Unaudited |
| SherDistributionManagerEmpty | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5775f3...fdb31b` | ⚠️ Unaudited |
| SherX | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf60466...6ee88b` | ⚠️ Unaudited |
| SherXERC20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeafd0c...b9294a` | ⚠️ Unaudited |
| TimelockController | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x92aeff...e358c4` | ⚠️ Unaudited |

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
| Sherlock - Code Arena Jan 2022.pdf | Sherlock | own contract | Sherlock (selected) `0x0865a8...83eabf` — deployed 2022-03-03 00:56:54+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - Code Arena Jan 2022.pdf | SherlockClaimManager | own contract | SherlockClaimManager (selected) `0xfeedd2...25eb84` — deployed 2022-03-03 00:56:09+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - Code Arena Jan 2022.pdf | SherlockProtocolManager | own contract | SherlockProtocolManager (selected) `0x3d0b8a...caa1d3` — deployed 2022-03-03 00:52:18+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - Code Arena Jan 2022.pdf | SherDistributionManager | unmatched — not counted | — | mentioned in findings | no |
| Sherlock - Code Arena Jan 2022.pdf | Manager | unmatched — not counted | — | mentioned in findings | no |
| Sherlock - Code Arena Jan 2022.pdf | AaveV2Strategy | unmatched — not counted | — | mentioned in findings | no |
| Sherlock - Code Arena Jan 2022.pdf | ISherlockClaimManager | unmatched — not counted | — | mentioned in findings | no |
| Sherlock - Code Arena Jan 2022.pdf | ISherlockGov | unmatched — not counted | — | mentioned in findings | no |
| Sherlock - Trail of Bits Dec 2021.pdf | Sherlock | own contract | Sherlock (selected) `0x0865a8...83eabf` — deployed 2022-03-03 00:56:54+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - Trail of Bits Dec 2021.pdf | SherlockClaimManager | own contract | SherlockClaimManager (selected) `0xfeedd2...25eb84` — deployed 2022-03-03 00:56:09+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Sherlock - Trail of Bits Dec 2021.pdf | SherlockProtocolManager | own contract | SherlockProtocolManager (selected) `0x3d0b8a...caa1d3` — deployed 2022-03-03 00:52:18+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
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
| ethereum | `0xf8583f...e262a6` | SherBuy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x7289c6...02bdd3` | SherClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

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
