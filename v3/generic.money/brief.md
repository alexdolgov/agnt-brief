# Agentic Audit Brief: Generic.Money

## Export Authority

- Production state: **published scope**
- Raw selected rows: 6 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Generic.Money (`generic.money`)
- Website: [https://www.generic.money/](https://www.generic.money/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 22 unique implementations (26 raw deployments)
- Coverage basis: 6/14 confirmed own live verified implementations (42.9%); conservative 42.9% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,048,044.24
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Generic.Money. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 17 contract row(s) across ethereum. Structural roles: 6 core, 6 unclassified, 4 supporting, 1 infra. 10 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 17
- Structural roles: core (6), unclassified (6), supporting (4), infra (1)
- Contract kinds: contract (17)
- Detected standards: ownable (4), erc4626 (3), ownable2step (3), erc20 (2), erc20permit (2), erc165 (1), erc1967proxy (1), pausable (1)
- Frameworks: openzeppelin-upgradeable (9), openzeppelin (4), permit2 (1)
- Upgradeable-pattern rows: 10

## Fork Analysis

1 of 14 contracts are derived from known codebases. 13 contracts have no detected origin.

### Forked Contracts

**AggregationRouterV6** (`0x111111...842a65`, chain 1)
Origin: 1inch (`0x111111...842a65`)
Containment: 100.0% - 45 functions inherited
Centroid audit status: pending_validation

Additions (unaudited): none

Removals (removed from original): none

### Original Contracts (no fork detected - full audit scope)

- BridgeCoordinatorL1 (`0xcecf6e...d056b9`, chain 1)
- Controller (`0xf056d4...92825c`, chain 1)
- ERC1967Proxy (`0x3794d7...5e3d17`, chain 1)
- GenericDepositor (`0x79b4cd...35f919`, chain 1)
- GenericUnit (`0x8c307b...172502`, chain 1)
- GenericUSD (`0x933e1a...feacc0`, chain 1)
- GenericUSD (`0xac8c1a...98589b`, chain 1)
- GenericVault (`0x4825ef...3c1c3f`, chain 1)
- GenericVault (`0x6133da...89892a`, chain 1)
- GenericVault (`0xb82809...8157fe`, chain 1)
- LayerZeroAdapter (`0x05a166...b0144e`, chain 1)
- LineaBridgeAdapter (`0xe39d67...b9ab93`, chain 1)
- OneInchSwapper (`0xb23684...7aeffc`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 17; live-surface rows included: 17 (17 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 15/18 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/14 (42.9%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 14 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 7 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 7
- Confirmed-live implementations: 15 of 22 unique; 7 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/22
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 22
- Raw deployments: 26
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-01 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 42.9% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 6 | 27.3% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgeCoordinatorL1 | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386804 | 2 deployments: ethereum `0x0503f2...cb6a01`; ethereum `0xcecf6e...d056b9` | ✅ Audited |
| GenericDepositor | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386793 | `0x79b4cd...35f919` | ✅ Audited |
| GenericUnit | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386794 | `0x8c307b...172502` | ✅ Audited |
| LayerZeroAdapter | adapter | project_anchor | own_supporting | 0 | ethereum | unit-386787 | `0x05a166...b0144e` | ✅ Audited |
| LineaBridgeAdapter | operational_periphery | project_anchor | own_supporting | 0 | ethereum | unit-386799 | `0xe39d67...b9ab93` | ✅ Audited |
| OneInchSwapper | adapter | project_anchor | own_supporting | 0 | ethereum | unit-386796 | `0xb23684...7aeffc` | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AggregationRouterV6 | adapter | external_dependency_or_infra | third_party_dependency (excluded) | 0 | ethereum | unit-386788 | `0x111111...842a65` | ⚠️ Unaudited |
| Controller | governance | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e4b88...086b28` | ⚠️ Unaudited |
| Controller | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386802 | `0x3a64d2...c973ae` | ⚠️ Unaudited |
| Controller | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x6a7af8...bc998b` | ⚠️ Unaudited |
| Controller | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386800 | `0xf056d4...92825c` | ⚠️ Unaudited |
| DAO | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386801 | `0x3794d7...5e3d17` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x12dc03...1bd5b9`; ethereum `0x17a8b3...383562` | ⚠️ Unaudited |
| GenericUnit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xee77df...3d69d7` | ⚠️ Unaudited |
| GenericUSD | unknown | project_anchor | own_supporting | 1 | ethereum | unit-386803 | 2 deployments: ethereum `0x933e1a...feacc0`; ethereum `0xece811...399edf` | ⚠️ Unaudited |
| GenericUSD | unknown | project_anchor | own_supporting | 0 | ethereum | unit-386795 | `0xac8c1a...98589b` | ⚠️ Unaudited |
| GenericUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xbcfafe...42b738` | ⚠️ Unaudited |
| GenericVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-386789 | `0x4825ef...3c1c3f` | ⚠️ Unaudited |
| GenericVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-386791 | `0x6133da...89892a` | ⚠️ Unaudited |
| GenericVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x844584...d71b1b`; ethereum `0xfce133...6b73cf` | ⚠️ Unaudited |
| GenericVault | core_logic | project_anchor | own_supporting | 0 | ethereum | unit-386797 | `0xb82809...8157fe` | ⚠️ Unaudited |
| OneInchSwapper | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1c8db...200a50` | ⚠️ Unaudited |

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
| [2026-01-19-report-cantinacode-generic-money.pdf](https://docs.generic.money/audits/2026-01-19-report-cantinacode-generic-money.pdf) | Spearbit | Audit | 2026-01 | fresh | Direct | contract_name | matched | 6 | 1 | 0 | 32 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2683] 2026-01-19-report-cantinacode-generic-money.pdf — matched: Extracted all contracts from the scope section (Section 2.1) which lists the file tree. Also extracted the audit date from the cover page (January 19, 2026).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2026-01-19-report-cantinacode-generic-money.pdf | BaseAdapter | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | BridgeTypes | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | LayerZeroAdapter | own contract | LayerZeroAdapter (selected) `0x05a166...b0144e` — deployed 2025-12-17 17:28:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-19-report-cantinacode-generic-money.pdf | LineaBridgeAdapter | own contract | LineaBridgeAdapter (selected) `0xe39d67...b9ab93` — deployed 2025-12-17 17:27:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-19-report-cantinacode-generic-money.pdf | BridgeCoordinatorL1 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x0503f2...cb6a01` — deployed 2025-12-17 17:26:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-19-report-cantinacode-generic-money.pdf | BridgeCoordinatorL2 | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | AdapterManager | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | BaseBridgeCoordinator | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | BridgeCoordinator | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | BridgeMessageCoordinator | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | EmergencyManager | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | Message | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | PredepositCoordinator | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | Bytes32AddressLib | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | AccountingLogic | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | BaseController | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | ConfigManager | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | Controller | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x3a64d2...c973ae` — deployed 2025-12-17 12:00:11+03 — liveness: live (current_address_book_code)<br>Controller (alternative) `0xf056d4...92825c` — deployed 2025-12-15 19:12:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | PeripheryManager | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | PriceFeedManager | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | RebalancingManager | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | RewardsManager | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | VaultLimitsLogic | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | VaultManager | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | YieldManager | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | GenericUSD | ambiguous — not counted | GenericUSD (alternative) `0xac8c1a...98589b` — deployed 2025-12-15 19:14:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xece811...399edf` — deployed 2025-12-17 12:02:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | GenericDepositor | own contract | GenericDepositor (selected) `0x79b4cd...35f919` — deployed 2025-12-18 12:55:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-19-report-cantinacode-generic-money.pdf | OneInchSwapper | own contract | OneInchSwapper (selected) `0xb23684...7aeffc` — deployed 2025-12-17 12:01:11+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-19-report-cantinacode-generic-money.pdf | UniswapV3Swapper | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | USDSToDAIUniswapV3Swapper | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | ERC20Mintable | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | GenericUnit | own contract | GenericUnit (selected) `0x8c307b...172502` — deployed 2025-12-17 12:00:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2026-01-19-report-cantinacode-generic-money.pdf | GenericUnitL2 | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | WhitelabeledUnitUpgradeable | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | tryGetAssetDecimals | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | ControlledERC7575Vault | unmatched — not counted | — | listed in scope | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | GenericVault | ambiguous — not counted | GenericVault (alternative) `0x4825ef...3c1c3f` — deployed 2025-12-17 12:05:23+03 — liveness: live (current_address_book_code)<br>GenericVault (alternative) `0xb82809...8157fe` — deployed 2025-12-17 12:06:11+03 — liveness: live (current_address_book_code)<br>GenericVault (alternative) `0x6133da...89892a` — deployed 2025-12-17 12:06:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2026-01-19-report-cantinacode-generic-money.pdf | SingleStrategyVault | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x3a64d2...c973ae` | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xf056d4...92825c` | Controller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3794d7...5e3d17` | DAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x933e1a...feacc0` | GenericUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xac8c1a...98589b` | GenericUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4825ef...3c1c3f` | GenericVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x6133da...89892a` | GenericVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb82809...8157fe` | GenericVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 6 own (1 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 29 unmatched
- Matched-own operational status: 6 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: unique_name=6

Fork inheritance lineage and inherited audits are included when available.
