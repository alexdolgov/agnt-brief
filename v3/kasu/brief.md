# Agentic Audit Brief: Kasu

## Export Authority

- Production state: **published scope**
- Raw selected rows: 7 across 1 audit(s)
- Eligible audit results: 2 (1 matched; 1 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Kasu (`kasu`)
- Website: [https://kasu.finance/](https://kasu.finance/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base
- Contract surface: 34 unique implementations (58 raw deployments)
- Coverage basis: 7/11 confirmed own live verified implementations (63.6%); conservative 63.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $10,864,465.28
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Kasu. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 17 contract row(s) across base. Structural roles: 15 core, 2 supporting. 16 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 17
- Structural roles: core (15), supporting (2)
- Contract kinds: contract (17)
- Detected standards: ownable (11), pausable (11), erc1155 (1), erc165 (1), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (16), openzeppelin-upgradeable (16)
- Upgradeable-pattern rows: 16

## Fork Analysis

0 of 15 contracts are derived from known codebases. 15 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- ClearingCoordinator (`0x2889ea...175ed1`, chain 8453)
- KasuPoolExternalTVL (`0xe477a8...2cb191`, chain 8453)
- KSU (`0x792383...acf693`, chain 8453)
- ManualKsuPrice (`0xb82992...ca4dc6`, chain 8453)
- TransparentUpgradeableProxy (`0x193bb0...c41f69`, chain 8453)
- TransparentUpgradeableProxy (`0x221a54...4e5c1b`, chain 8453)
- TransparentUpgradeableProxy (`0x2cf12a...f57de2`, chain 8453)
- TransparentUpgradeableProxy (`0x5d9b87...ceadba`, chain 8453)
- TransparentUpgradeableProxy (`0x5dc8d3...3c93f3`, chain 8453)
- TransparentUpgradeableProxy (`0x662379...9f3c9f`, chain 8453)
- TransparentUpgradeableProxy (`0x807a7e...cbf8bb`, chain 8453)
- TransparentUpgradeableProxy (`0xb145c0...553ce1`, chain 8453)
- TransparentUpgradeableProxy (`0xb4784f...19d635`, chain 8453)
- TransparentUpgradeableProxy (`0xe1be32...2096b5`, chain 8453)
- TransparentUpgradeableProxy (`0xeede30...e20b40`, chain 8453)

## Contract Surface Quality

- Logic-topography rows: 17; live-surface rows included: 17 (17 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 7/11 (63.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 23 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 22
- Confirmed-live implementations: 11 of 34 unique; 23 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 7/32
- Verified + Unaudited implementations: 25
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 34
- Raw deployments: 58
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 63.6% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 7 | 21.9% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ClearingCoordinator | unknown | project_anchor | own_supporting | 1 | base | unit-266851 | 2 deployments: base `0x2889ea...175ed1`; base `0x2cf12a...f57de2` | ✅ Audited |
| KasuAllowList | unknown | project_anchor | own_supporting | 1 | base | unit-266856 | 2 deployments: base `0x6fd19b...c479bd`; base `0x807a7e...cbf8bb` | ✅ Audited |
| KSULocking | unknown | project_anchor | own_supporting | 1 | base | unit-266860 | `0xb145c0...553ce1` | ✅ Audited |
| LendingPoolManager | unknown | project_anchor | own_supporting | 1 | base | unit-266854 | `0xe1be32...2096b5` | ✅ Audited |
| SystemVariables | unknown | project_anchor | own_supporting | 1 | base | unit-266855 | `0x193bb0...c41f69` | ✅ Audited |
| UserLoyaltyRewards | unknown | project_anchor | own_supporting | 1 | base | unit-266858 | `0xb4784f...19d635` | ✅ Audited |
| UserManager | governance | project_anchor | own_supporting | 1 | base | unit-266852 | `0x5dc8d3...3c93f3` | ✅ Audited |

### ⚠️ Verified + Unaudited (25)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AcceptedRequestsCalculation | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x0133c2...b3307a`; base `0x1e69dd...58bd0e` | ⚠️ Unaudited |
| ClearingCoordinator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x273597...0b556c`; base `0x8d38a2...1737b7` | ⚠️ Unaudited |
| FeeManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe2accc...227016` | ⚠️ Unaudited |
| FeeManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0xef956c...39b6b9` | ⚠️ Unaudited |
| FixedTermDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x1617b7...c0f833` | ⚠️ Unaudited |
| FixedTermDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | `0x757ab3...ae5ed3` | ⚠️ Unaudited |
| KasuController | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0xb0d7eb...5d2868`; base `0xe768e5...60b052` | ⚠️ Unaudited |
| KasuPoolExternalTVL | unknown | project_anchor | own_supporting | 1 | base | unit-266861 | 2 deployments: base `0x662379...9f3c9f`; base `0xe477a8...2cb191` | ⚠️ Unaudited |
| KSU | unknown | project_anchor | own_supporting | 1 | base | unit-266857 | 2 deployments: base `0x5d9b87...ceadba`; base `0x792383...acf693` | ⚠️ Unaudited |
| KSULockBonus | unknown | project_anchor | own_supporting | 1 | base | unit-266853 | 2 deployments: base `0x39a4e4...89e41a`; base `0xeede30...e20b40` | ⚠️ Unaudited |
| KSULocking | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x0b98f5...397931`; base `0x601eab...c3d1ef` | ⚠️ Unaudited |
| LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0x2af3eb...d7ab31`; base `0x9b9ec3...efa621` | ⚠️ Unaudited |
| LendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x8855ec...926e8f`; base `0xcdc9b9...a1de99` | ⚠️ Unaudited |
| LendingPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x263b5d...ab05a8` | ⚠️ Unaudited |
| LendingPoolFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x617b6e...03f9f3`; base `0xd8c77e...905190` | ⚠️ Unaudited |
| LendingPoolManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x2cce4a...48e955`; base `0xc94216...67ebff`; base `0xd2812f...80c229` | ⚠️ Unaudited |
| LendingPoolTranche | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 4 deployments: base `0x31b186...bac13f`; base `0x8f2b35...467f12`; base `0xec9980...d9c899`; base `0xef5d12...3033be` | ⚠️ Unaudited |
| LendingPoolTranche | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 2 deployments: base `0x94a699...00f3f9`; base `0xa2e999...4fb1d0` | ⚠️ Unaudited |
| ManualKsuPrice | unknown | project_anchor | own_supporting | 1 | base | unit-266859 | 2 deployments: base `0x221a54...4e5c1b`; base `0xb82992...ca4dc6` | ⚠️ Unaudited |
| PendingPool | core_logic | non_address_book | non_address_book_inventory (excluded) | 2 | base | n/a | 2 deployments: base `0x080238...e05e1d`; base `0x6ecd74...c8e2e0` | ⚠️ Unaudited |
| PendingPool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 3 deployments: base `0x0c5554...c7f4cc`; base `0x3cf856...c7dbf4`; base `0xc17f46...03e3a9` | ⚠️ Unaudited |
| Swapper | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | base | n/a | 2 deployments: base `0x1ca11e...261cf3`; base `0xe593ed...baa6d2` | ⚠️ Unaudited |
| SystemVariables | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe91994...a3cd4a` | ⚠️ Unaudited |
| UserLoyaltyRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf0e92a...364be9` | ⚠️ Unaudited |
| UserManager | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | 2 deployments: base `0xaa81b5...7a5436`; base `0xcdb16b...48fed0` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x59c8ea...d0eedc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xafb296...3a7765` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Kasu_0xCommit.pdf](https://github.com/Kasu-Finance/security/blob/main/audits/Kasu_0xCommit.pdf) | 0xCommit | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Kasu_ChainSecurity.pdf](https://github.com/Kasu-Finance/security/blob/main/audits/Kasu_ChainSecurity.pdf) | ChainSecurity | Audit | 2024-10 | aging | Direct | contract_name | matched | 7 | 7 | 0 | 21 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [12482] Kasu_0xCommit.pdf — no match: Extracted contract names from findings and code snippets. Audit date from cover page.
- [12483] Kasu_ChainSecurity.pdf — matched: Extracted contract names from scope descriptions, system overview, and findings sections. The audit date is from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Kasu_0xCommit.pdf | Swapper | unmatched — not counted | — | mentioned in findings as 'Swapper Contracts' and 'swapper.sol' | no |
| Kasu_0xCommit.pdf | DepositAndSwap | unmatched — not counted | — | mentioned in finding 2 as 'DepositandSwap.sol' and 'DepositSwap.sol' | no |
| Kasu_ChainSecurity.pdf | LendingPoolTranche | unmatched — not counted | — | mentioned as affected contract in version 4 and version 6 scope descriptions | no |
| Kasu_ChainSecurity.pdf | UserManager | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x5dc8d3...3c93f3` — deployed 2024-06-07 15:04:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Kasu_ChainSecurity.pdf | KSULocking | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb145c0...553ce1` — deployed 2024-06-07 15:03:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Kasu_ChainSecurity.pdf | FixedTermDeposit | unmatched — not counted | — | mentioned as main new contract in version 6 scope | no |
| Kasu_ChainSecurity.pdf | LendingPool | unmatched — not counted | — | mentioned as affected contract in version 6 scope | no |
| Kasu_ChainSecurity.pdf | LendingPoolManager | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xe1be32...2096b5` — deployed 2024-06-07 15:05:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Kasu_ChainSecurity.pdf | PendingPool | unmatched — not counted | — | mentioned as affected contract in version 6 scope | no |
| Kasu_ChainSecurity.pdf | ClearingCoordinator | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x2cf12a...f57de2` — deployed 2024-06-07 15:05:51+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Kasu_ChainSecurity.pdf | LendingPoolTrancheLoss | unmatched — not counted | — | mentioned in finding CS-KASU-Core-016 | no |
| Kasu_ChainSecurity.pdf | FeeManager | unmatched — not counted | — | mentioned in finding CS-KASU-Core-011 | no |
| Kasu_ChainSecurity.pdf | KasuController | unmatched — not counted | — | mentioned in finding CS-KASU-Core-009 | no |
| Kasu_ChainSecurity.pdf | KasuAllowList | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x807a7e...cbf8bb` — deployed 2024-06-07 15:05:39+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Kasu_ChainSecurity.pdf | SystemVariables | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x193bb0...c41f69` — deployed 2024-06-07 15:04:17+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Kasu_ChainSecurity.pdf | UserLoyaltyRewards | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xb4784f...19d635` — deployed 2024-06-07 15:04:29+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Kasu_ChainSecurity.pdf | Swapper | unmatched — not counted | — | mentioned in finding CS-KASU-Core-013 | no |
| Kasu_ChainSecurity.pdf | SwapDepositBag | unmatched — not counted | — | mentioned in finding CS-KASU-Core-012 | no |
| Kasu_ChainSecurity.pdf | KasuAccessControllable | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |
| Kasu_ChainSecurity.pdf | IPendingPool | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |
| Kasu_ChainSecurity.pdf | IAcceptedRequestsExecution | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |
| Kasu_ChainSecurity.pdf | AcceptedRequestsExecution | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |
| Kasu_ChainSecurity.pdf | IClearingCoordinator | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |
| Kasu_ChainSecurity.pdf | IPendingRequestsPriorityCalculation | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |
| Kasu_ChainSecurity.pdf | PendingRequestsPriorityCalculation | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |
| Kasu_ChainSecurity.pdf | LendingPoolFactory | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |
| Kasu_ChainSecurity.pdf | CommonErrors | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |
| Kasu_ChainSecurity.pdf | ILendingPoolTranche | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |
| Kasu_ChainSecurity.pdf | ILendingPoolManager | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |
| Kasu_ChainSecurity.pdf | ILendingPoolErrors | unmatched — not counted | — | mentioned in finding CS-KASU-Core-008 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | `0x662379...9f3c9f` | KasuPoolExternalTVL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x5d9b87...ceadba` | KSU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x39a4e4...89e41a` | KSULockBonus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x221a54...4e5c1b` | ManualKsuPrice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Address-book scope dispositions: 7 own (7 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 23 unmatched
- Matched-own operational status: 7 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2
- Match method counts: unique_name=7

Zero-match audit list:

- [12482] Kasu_0xCommit.pdf

Fork inheritance lineage and inherited audits are included when available.
