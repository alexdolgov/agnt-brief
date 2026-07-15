# Agentic Audit Brief: InsureDAO

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: InsureDAO (`insuredao`)
- Website: [https://insuredao.gitbook.io/insuredao/](https://insuredao.gitbook.io/insuredao/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, ethereum, optimism
- Contract surface: 42 unique implementations (42 raw deployments)
- Coverage basis: 1/1 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $125,774.69
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for InsureDAO. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across arbitrum, ethereum, optimism. Structural roles: 1 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: contract (1)
- Detected standards: erc20 (1)
- Frameworks: openzeppelin (1)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4763f9...355945`, chain 10)
- UnnamedContract (`0x54f23d...6a6d2b`, chain 10)
- UnnamedContract (`0x636938...8749a1`, chain 10)
- UnnamedContract (`0x7df250...ce22bc`, chain 10)
- UnnamedContract (`0x7f5c76...c31607`, chain 10)
- UnnamedContract (`0x0fa85c...b971c1`, chain 42161)
- UnnamedContract (`0x21863c...62ce43`, chain 42161)
- UnnamedContract (`0x62b86b...8891e2`, chain 42161)
- UnnamedContract (`0x968c97...ade9f9`, chain 42161)
- UnnamedContract (`0xff970a...db5cc8`, chain 42161)
- InsureToken (`0xd83ae0...24393e`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/1 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 31 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 11 of 42 unique; 31 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/32
- Verified + Unaudited implementations: 31
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 42
- Raw deployments: 42
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 3.1% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| InsureToken | unknown | project_anchor | own_supporting | 0 | ethereum | unit-387487 | `0xd83ae0...24393e` | ✅ Audited |

### ⚠️ Verified + Unaudited (31)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BondingPremium | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2d5477...eb30e4` | ⚠️ Unaudited |
| CDSTemplate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x734afd...be0cf4` | ⚠️ Unaudited |
| DefiRound | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd0df5a...7c9c87` | ⚠️ Unaudited |
| DegenesisAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6fac0a...dbd829` | ⚠️ Unaudited |
| Factory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01e691...0d0f6b` | ⚠️ Unaudited |
| FlatPremiumV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xdb9b97...db989c` | ⚠️ Unaudited |
| GaugeController | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x297ea2...1ddd04` | ⚠️ Unaudited |
| IndexTemplate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x007497...50c816` | ⚠️ Unaudited |
| InsureDepositor | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xa12ab7...d19e29` | ⚠️ Unaudited |
| LiquidityGauge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00e505...ddbb8c` | ⚠️ Unaudited |
| MarketTemplate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0fab21...a25dcb` | ⚠️ Unaudited |
| MerkleDistributor | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x734563...344160` | ⚠️ Unaudited |
| Minter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x76e8b8...debdc0` | ⚠️ Unaudited |
| Ownership | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4810fa...6c3db3` | ⚠️ Unaudited |
| Parameters | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x335869...0ee511` | ⚠️ Unaudited |
| ParametersV2 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf29571...85d0e6` | ⚠️ Unaudited |
| PolicyUnlocker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x757ffd...7d31ed` | ⚠️ Unaudited |
| PoolProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4d046...3ba350` | ⚠️ Unaudited |
| PoolTemplate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x190da1...11e8f8` | ⚠️ Unaudited |
| PremiumModelV3 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05c123...07c08b` | ⚠️ Unaudited |
| Referral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ce353...b2d8ac` | ⚠️ Unaudited |
| Registry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x046c23...7c20b2` | ⚠️ Unaudited |
| ReportingToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x190da1...11e8f8` | ⚠️ Unaudited |
| ReserveTemplate | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x238963...3d9863` | ⚠️ Unaudited |
| RewardsDistributorDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x358536...eaa1b1` | ⚠️ Unaudited |
| SmartWalletChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd39e28...9f8390` | ⚠️ Unaudited |
| TestnetAirdrop | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x98e579...e8aeeb` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | n/a | `0x1b459a...2af1ca` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x009b60...a4ed6a` | ⚠️ Unaudited |
| VestingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f8998...80e47f` | ⚠️ Unaudited |
| VotingEscrow | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dc07e...05916b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-387488 | `0x4763f9...355945` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-387489 | `0x54f23d...6a6d2b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-387490 | `0x636938...8749a1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-387491 | `0x7df250...ce22bc` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | optimism | unit-387492 | `0x7f5c76...c31607` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387493 | `0x0fa85c...b971c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387494 | `0x21863c...62ce43` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387495 | `0x62b86b...8891e2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387496 | `0x968c97...ade9f9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-387497 | `0xff970a...db5cc8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://drive.google.com/file/d/1RTwAYuPBmQCVrmor-iZ9dFAGlCkdMtdR/view?usp=sharing) | unknown | Audit | 2022-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 6 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17460] DL audit link — matched: Contracts extracted from findings targets and mentions. No explicit scope table, but contracts are clearly audited.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | PoolTemplate | unmatched — not counted | — | Target in findings PVE-001, PVE-005 | no |
| DL audit link | IndexTemplate | unmatched — not counted | — | Target in finding PVE-002 | no |
| DL audit link | Vault | unmatched — not counted | — | Target in findings PVE-003, PVE-004 | no |
| DL audit link | InsureToken | own contract | InsureToken (selected) `0xd83ae0...24393e` — deployed 2022-02-22 05:43:10+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DL audit link | VestingEscrow | unmatched — not counted | — | Target in finding PVE-008 | no |
| DL audit link | VotingEscrow | unmatched — not counted | — | Target in finding PVE-009 | no |
| DL audit link | LiquidityGauge | unmatched — not counted | — | Mentioned in finding PVE-008 as containing similar issue | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 31 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 6 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=1

Fork inheritance lineage and inherited audits are included when available.
