# Agentic Audit Brief: flaunch

## Export Authority

- Production state: **published scope**
- Raw selected rows: 8 across 2 audit(s)
- Eligible audit results: 3 (2 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: flaunch (`flaunch`)
- Website: [https://flaunch.gg](https://flaunch.gg)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 26 unique implementations (26 raw deployments)
- Coverage basis: 6/12 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,351,134.35
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for flaunch. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 12 contract row(s) across base. Structural roles: 8 supporting, 4 core. 9 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 12
- Structural roles: supporting (8), core (4)
- Contract kinds: contract (12)
- Detected standards: ownable (5), erc165 (4), accesscontrol (2), erc721 (1)
- Frameworks: openzeppelin (9), openzeppelin-upgradeable (9), solady (9), solmate (2), permit2 (1), uniswap-v2 (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 9

## Fork Analysis

0 of 12 contracts are derived from known codebases. 12 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AddressFeeSplitManager (`0xf6d801...920a7d`, chain 8453)
- BidWall (`0x7f2235...d0ef9c`, chain 8453)
- FeeEscrow (`0x72e6f7...d27dde`, chain 8453)
- Flaunch (`0x516af5...e10109`, chain 8453)
- FlaunchZap (`0xe52de1...84b510`, chain 8453)
- PoolManager (`0x498581...652b2b`, chain 8453)
- PoolSwap (`0xdcf8e5...3dd08e`, chain 8453)
- PositionManager (`0x23321f...902fdc`, chain 8453)
- RevenueManager (`0x1af9b9...e7ee36`, chain 8453)
- StakingManager (`0xa15f92...fea193`, chain 8453)
- TreasuryManagerFactory (`0x48af8b...ca8763`, chain 8453)
- UniversalRouter (`0x6ff569...299b43`, chain 8453)

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (12 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 12/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/12 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 12 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 14 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 12 of 26 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 6/12
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 26
- Raw deployments: 26
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-03 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| FlayerLabs | Tier 2 | 6 | 50.0% | 2025-03 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BidWall | unknown | project_anchor | own_supporting | 0 | base | unit-266840 | `0x7f2235...d0ef9c` | ✅ Audited |
| Flaunch | unknown | project_anchor | own_supporting | 0 | base | unit-266837 | `0x516af5...e10109` | ✅ Audited |
| FlaunchZap | adapter | project_anchor | own_supporting | 0 | base | unit-266843 | `0xe52de1...84b510` | ✅ Audited |
| PositionManager | governance | project_anchor | own_supporting | 0 | base | unit-266834 | `0x23321f...902fdc` | ✅ Audited |
| RevenueManager | governance | project_anchor | own_supporting | 0 | base | unit-266833 | `0x1af9b9...e7ee36` | ✅ Audited |
| TreasuryManagerFactory | operational_periphery | project_anchor | own_supporting | 0 | base | unit-266835 | `0x48af8b...ca8763` | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressFeeSplitManager | governance | project_anchor | own_supporting | 0 | base | unit-266844 | `0xf6d801...920a7d` | ⚠️ Unaudited |
| FeeEscrow | operational_periphery | project_anchor | own_supporting | 0 | base | unit-266839 | `0x72e6f7...d27dde` | ⚠️ Unaudited |
| PoolManager | core_logic | project_anchor | own_supporting | 0 | base | unit-266836 | `0x498581...652b2b` | ⚠️ Unaudited |
| PoolSwap | core_logic | project_anchor | own_supporting | 0 | base | unit-266842 | `0xdcf8e5...3dd08e` | ⚠️ Unaudited |
| StakingManager | governance | project_anchor | own_supporting | 0 | base | unit-266841 | `0xa15f92...fea193` | ⚠️ Unaudited |
| UniversalRouter | adapter | project_anchor | own_supporting | 0 | base | unit-266838 | `0x6ff569...299b43` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x000000...c78ba3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0d5e0f...32048d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17e025...aea690` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x312706...b014a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4e7cb1...616fdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6f2fa0...265a00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x73e279...ed9ff9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7c5f5a...429bdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8ea407...e78c3c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb8ed7d...1ccd01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc98a11...10a142` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd2f3c6...2e9ccd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe2ef58...df9438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf72dcd...04069b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2024-12_Security_Review_FlayerLabs_Flaunch.pdf](https://1229184497-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoleIQgpsdD3uHYHcTay2%2Fuploads%2FvGZ6DMH5qc5WmOLDVo1R%2F2024-12_Security_Review_FlayerLabs_Flaunch.pdf) | FlayerLabs | Audit | 2024-11 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 6 | medium |
| [2024-12_Security_Review_Extension_FlayerLabs_Flaunch.pdf](https://1229184497-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoleIQgpsdD3uHYHcTay2%2Fuploads%2FrUVPPUrniThyiTPkK2kn%2F2024-12_Security_Review_Extension_FlayerLabs_Flaunch.pdf) | FlayerLabs | Audit | 2024-12 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf](https://1229184497-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoleIQgpsdD3uHYHcTay2%2Fuploads%2FLe4HhcXKikOZSlfl2bSl%2F2025-03_Security%20Review_FlayerLabs_Flaunch%20v1.1%20Protocol%20Upgrade.pdf) | FlayerLabs | Audit | 2025-03 | aging | Direct | contract_name | matched | 6 | 0 | 0 | 8 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [20299] 2024-12_Security_Review_FlayerLabs_Flaunch.pdf — matched: No explicit scope section; contracts extracted from findings and descriptions.
- [20300] 2024-12_Security_Review_Extension_FlayerLabs_Flaunch.pdf — no match: The report is an extension review of a diff between commits, but no specific contract names or file paths are listed in scope. The only mention is 'flayerlabs/flaunch-contracts' repository, which is not a contract name.
- [20301] 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf — matched: Extracted contract names from findings context and informational items. Audit date from title page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | PositionManager | own contract | PositionManager (selected) `0x23321f...902fdc` — deployed 2025-08-13 18:02:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | DynamicFeeCalculator | unmatched — not counted | — | mentioned in finding L-03 | no |
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | BidWall | own contract | BidWall (selected) `0x7f2235...d0ef9c` — deployed 2025-04-23 18:50:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | FeeDistributor | unmatched — not counted | — | mentioned in finding I-02 | no |
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | MarketCappedPrice | unmatched — not counted | — | mentioned in finding I-02 | no |
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | InitialPrice | unmatched — not counted | — | mentioned in finding L-02 and I-02 | no |
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | TreasuryAction | unmatched — not counted | — | mentioned in finding L-01 | no |
| 2024-12_Security_Review_FlayerLabs_Flaunch.pdf | MemecoinTreasury | unmatched — not counted | — | mentioned in finding L-01 | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | RevenueManager | own contract | RevenueManager (selected) `0x1af9b9...e7ee36` — deployed 2025-10-03 18:01:07+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | TreasuryManagerFactory | own contract | TreasuryManagerFactory (selected) `0x48af8b...ca8763` — deployed 2025-04-23 16:13:03+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | TreasuryManager | unmatched — not counted | — | mentioned in findings context | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | FlaunchZap | own contract | FlaunchZap (selected) `0xe52de1...84b510` — deployed 2025-09-11 17:50:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | SnapshotAirdrop | unmatched — not counted | — | mentioned in findings context | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | MerkleAirdrop | unmatched — not counted | — | mentioned in findings context | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | BidWall | own contract | BidWall (selected) `0x7f2235...d0ef9c` — deployed 2025-04-23 18:50:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | PositionManager | own contract | PositionManager (selected) `0x23321f...902fdc` — deployed 2025-08-13 18:02:19+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | AnyPositionManager | unmatched — not counted | — | mentioned in findings context | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | Flaunch | own contract | Flaunch (selected) `0x516af5...e10109` — deployed 2025-08-13 18:02:23+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | AnyFlaunch | unmatched — not counted | — | mentioned in findings context | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | FairLaunch | unmatched — not counted | — | mentioned in findings context | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | HypeFeeCalculator | unmatched — not counted | — | mentioned in findings context | no |
| 2025-03_Security Review_FlayerLabs_Flaunch v1.1 Protocol Upgrade.pdf | BuyBackAndBurnFlay | unmatched — not counted | — | mentioned in findings context | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0xf6d801...920a7d` | AddressFeeSplitManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x72e6f7...d27dde` | FeeEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x498581...652b2b` | PoolManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xdcf8e5...3dd08e` | PoolSwap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xa15f92...fea193` | StakingManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x6ff569...299b43` | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 8 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 14 unmatched
- Matched-own operational status: 8 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1, low=1, medium=1
- Match method counts: unique_name=8

Zero-match audit list:

- [20300] 2024-12_Security_Review_Extension_FlayerLabs_Flaunch.pdf

Fork inheritance lineage and inherited audits are included when available.
