# Agentic Audit Brief: Extra Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 3 audit(s)
- Eligible audit results: 10 (3 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Extra Finance (`extra-finance`)
- Website: [https://extrafi.io/](https://extrafi.io/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, optimism
- Contract surface: 12 unique implementations (14 raw deployments)
- Coverage basis: 4/8 confirmed own live verified implementations (50.0%); conservative 50.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $28,376,806.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Extra Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 14 contract row(s) across base, optimism. Structural roles: 5 core, 5 supporting, 4 unclassified. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 14
- Structural roles: core (5), supporting (5), unclassified (4)
- Contract kinds: contract (14)
- Detected standards: ownable (8), erc20 (2), erc165 (1)
- Frameworks: openzeppelin (8)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 8 contracts are derived from known codebases. 8 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- EXTRA (`0x2dad3a...7938f8`, chain 10)
- EXTRAoft (`0x2dad3a...7938f8`, chain 8453)
- LendingPool (`0xbb505c...c71cbd`, chain 10)
- LendingPool (`0xbb505c...c71cbd`, chain 8453)
- RewardDistributor (`0xb7d861...1d322a`, chain 10)
- VeloPositionManager (`0xf9cfb8...957055`, chain 10)
- VeloPositionManager (`0xf9cfb8...957055`, chain 8453)
- VeToken (`0xe0bec4...e91466`, chain 10)

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 14 (8 live, 6 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 8/12 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 4/8 (50.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 8 own, 4 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 3
- Deployed-live implementations: 8 of 12 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 4/8
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 14
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/extrafinance/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 4 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 4 | 50.0% | 2024-11 |
| BlockSec | Tier 2 | 1 | 12.5% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| LendingPool | core_logic | project_anchor | own_supporting | 0 | optimism | unit-239771 | `0xbb505c...c71cbd` | ✅ Audited |
| VeloPositionManager | governance | project_anchor | own_supporting | 0 | optimism | unit-239774 | `0xf9cfb8...957055` | ✅ Audited |
| VeloPositionManager | governance | project_anchor | own_supporting | 0 | base | unit-239777 | `0xf9cfb8...957055` | ✅ Audited |
| VeToken | token | project_anchor | own_supporting | 0 | optimism | unit-239773 | `0xe0bec4...e91466` | ✅ Audited |

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| EXTRA | unknown | project_anchor | own_supporting | 0 | optimism | unit-239767 | `0x2dad3a...7938f8` | ⚠️ Unaudited |
| EXTRAoft | unknown | project_anchor | own_supporting | 0 | base | unit-239775 | `0x2dad3a...7938f8` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 3 | optimism | unit-239778 (3 proxies) | 3 deployments: optimism `0x4059e1...927a8c`; optimism `0x750f71...9bd40a`; optimism `0x89f088...715c83` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-239768 | `0x48f12d...85f703` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-239769 | `0x94440d...b2a38d` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-239772 | `0xc918a6...07babf` | ⚠️ Unaudited |
| LendingPool | core_logic | project_anchor | own_supporting | 0 | base | unit-239776 | `0xbb505c...c71cbd` | ⚠️ Unaudited |
| RewardDistributor | unknown | project_anchor | own_supporting | 0 | optimism | unit-239770 | `0xb7d861...1d322a` | ⚠️ Unaudited |

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
| [immunefi.com/bug-bounty/extrafinance/information](https://immunefi.com/bug-bounty/extrafinance/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [PeckShield-Audit-Report-ExtraFi-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-ExtraFi-v1.0.pdf) | PeckShield | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |
| [2024.12.01 - Final - Extra Finance Audit Report.pdf](https://github.com/sherlock-protocol/sherlock-reports/blob/main/audits/2024.12.01%20-%20Final%20-%20Extra%20Finance%20Audit%20Report.pdf) | Sherlock | Contest | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [blocksec_extrafinance_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_extrafinance_v1.0-signed.pdf) | PeckShield | Audit | 2023-09 | stale | Direct | n/a | matched | 1 | 0 | 0 | 10 | n/a |
| [blocksec_extrafinance_v1.0-signed.pdf](https://3038127767-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FHdS59PJdwI8kEK3vLZuH%2Fuploads%2FuBnl6CYbGImtkx9N9iDP%2Fblocksec_extrafinance_v1.0-signed.pdf) | BlockSec | Audit | 2023-09 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 10 | high |
| [PeckShield-Audit-Report-ExtraFi-v1.0.pdf](https://3038127767-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FHdS59PJdwI8kEK3vLZuH%2Fuploads%2FcuHasqCbUeVSTz53smRl%2FPeckShield-Audit-Report-ExtraFi-v1.0.pdf) | PeckShield | Audit | 2023-05 | stale | Direct | contract_name | matched | 3 | 0 | 0 | 9 | medium |
| [Extra Finance Audit Report.pdf](https://3038127767-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FHdS59PJdwI8kEK3vLZuH%2Fuploads%2Fk1NX1zcl5i5vFn9IMMl9%2FExtra%20Finance%20Audit%20Report.pdf) | unknown | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [Source](https://sherlock-files.ams3.digitaloceanspaces.com/reports/extra-finance-audit-report-1734534935.pdf) | Sherlock | Contest | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | medium |
| [2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf](https://2858456557-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F2K7L6qM6znh2wIGpWwOA%2Fuploads%2FQuw0sj6V9dRbzVmgh0si%2F2025.06.19%20-%20Final%20-%20Extra%20Finance%20Private%20Best%20Efforts%20Audit%20Contest%20Report%201750340468.pdf) | Extra Finance Private Best Efforts Audit Contest | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 51 | high |
| [PeckShield-Audit-Report-ExtraFi-v1.0.pdf](https://2858456557-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F2K7L6qM6znh2wIGpWwOA%2Fuploads%2FJQ2F8UoNa2bWm7GNUs3Q%2FPeckShield-Audit-Report-ExtraFi-v1.0%20(1).pdf) | PeckShield | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 5 | medium |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4255] immunefi.com/bug-bounty/extrafinance/information — no match: The document is a bug bounty program page, not an audit report. It does not list specific contracts in scope; only mentions 'Smart Contract' as a category. No audit date found.
- [4257] PeckShield-Audit-Report-ExtraFi-v1.0.pdf — no match: No explicit scope table; contracts extracted from findings targets and mentions.
- [4258] 2024.12.01 - Final - Extra Finance Audit Report.pdf — no match: Scope section not explicitly provided; contracts inferred from findings and PoC file paths. Audit date from 'Date Audited: November20-December1,2024' using end date.
- [14629] blocksec_extrafinance_v1.0-signed.pdf — matched: No reason recorded
- [26842] blocksec_extrafinance_v1.0-signed.pdf — matched: Extracted contract names from the report's scope description and code snippets. The report mentions 'Leverage Farming' as the target protocol, but the specific contracts are listed in the findings and code references.
- [26843] PeckShield-Audit-Report-ExtraFi-v1.0.pdf — matched: No explicit scope section; contract names extracted from findings targets and code references.
- [26844] Extra Finance Audit Report.pdf — no match: Scope section not explicitly listed; contracts inferred from findings and file paths.
- [26845] Source — no match: Scope section not explicitly provided; contracts inferred from findings and test file paths. Audit date from header: November20-December1,2024 -> end date used.
- [26846] 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf — no match: Extracted 51 contract names from the scope file listing. Audit date from 'Date Audited: May21-June4,2025' -> end date June 4, 2025.
- [26847] PeckShield-Audit-Report-ExtraFi-v1.0.pdf — no match: No explicit scope section listing contracts; extracted contract names from findings targets and mentions.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | Pool | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | ConfiguratorLogic | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | ATokenRewardsReDistributionManager | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | ExtraXAccountFactory | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | PoolConfigurator | unmatched — not counted | — | Mentioned in finding PVE-005 as example | no |
| 2024.12.01 - Final - Extra Finance Audit Report.pdf | StakingRewards | unmatched — not counted | — | mentioned in PoC test file path: tests/lending-pool/StakingRewards.t.sol:StakingRewardsTest | no |
| 2024.12.01 - Final - Extra Finance Audit Report.pdf | LendingPool | ambiguous — not counted | LendingPool (alternative) `0xbb505c...c71cbd` — deployed 2023-07-30 12:36:45+03 — liveness: live (current_address_book_code)<br>LendingPool (alternative) `0xbb505c...c71cbd` — deployed 2023-05-04 09:04:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2024.12.01 - Final - Extra Finance Audit Report.pdf | ReserveLogic | unmatched — not counted | — | issue M-2: ReserveLogic._mintToTreasury | no |
| blocksec_extrafinance_v1.0-signed.pdf | AddressRegistry | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | Precision | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | VaultFactory | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloLiquidityLogic | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloLiquidityMath | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloPositionManager | own contract | VeloPositionManager (selected) `0xf9cfb8...957055` — deployed 2023-07-30 12:56:55+03 — liveness: live (current_address_book_code)<br>VeloPositionManager (alternative) `0xf9cfb8...957055` — deployed 2023-05-04 09:14:33+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-07-30 was 33d from audit; next candidate 120d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_extrafinance_v1.0-signed.pdf | VeloPositionValue | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloSwapPathManager | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloVaultPositionLogic | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloVaultRewardsLogic | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloVaultV2 | unmatched — not counted | — | — | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloVaultPositionLogic | unmatched — not counted | — | Listed in findings and code snippets | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloVaultRewardsLogic | unmatched — not counted | — | Listed in findings and code snippets | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloVaultV2 | unmatched — not counted | — | Listed in findings and code snippets | no |
| blocksec_extrafinance_v1.0-signed.pdf | VaultFactory | unmatched — not counted | — | Listed in findings and code snippets | no |
| blocksec_extrafinance_v1.0-signed.pdf | Precision | unmatched — not counted | — | Listed in findings and code snippets | no |
| blocksec_extrafinance_v1.0-signed.pdf | AddressRegistry | unmatched — not counted | — | Mentioned in centralization risks note | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloSwapPathManager | unmatched — not counted | — | Mentioned in centralization risks note | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloPositionManager | own contract | VeloPositionManager (selected) `0xf9cfb8...957055` — deployed 2023-07-30 12:56:55+03 — liveness: live (current_address_book_code)<br>VeloPositionManager (alternative) `0xf9cfb8...957055` — deployed 2023-05-04 09:14:33+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-07-30 was 54d from audit; next candidate 141d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| blocksec_extrafinance_v1.0-signed.pdf | VeloLiquidityMath | unmatched — not counted | — | Listed in findings and code snippets | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloLiquidityLogic | unmatched — not counted | — | Referenced in code snippet | no |
| blocksec_extrafinance_v1.0-signed.pdf | VeloPositionValue | unmatched — not counted | — | Referenced in code snippet | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | Pool | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | VeloPositionValue | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | StakingRewards | unmatched — not counted | — | Target in findings PVE-002 and PVE-004 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | VeToken | own contract | VeToken (selected) `0xe0bec4...e91466` — deployed 2023-05-22 13:42:14+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | LendingPool | own contract | LendingPool (alternative) `0xbb505c...c71cbd` — deployed 2023-07-30 12:36:45+03 — liveness: live (current_address_book_code)<br>LendingPool (selected) `0xbb505c...c71cbd` — deployed 2023-05-04 09:04:31+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-05-04 was 1d from audit; next candidate 86d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | VeloPositionManager | own contract | VeloPositionManager (alternative) `0xf9cfb8...957055` — deployed 2023-07-30 12:56:55+03 — liveness: live (current_address_book_code)<br>VeloPositionManager (selected) `0xf9cfb8...957055` — deployed 2023-05-04 09:14:33+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2023-05-04 was 1d from audit; next candidate 86d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | VaultTypes | unmatched — not counted | — | Referenced in VeloPositionValue | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | StateAccessor | unmatched — not counted | — | Referenced in VeloPositionValue | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | DebtLogic | unmatched — not counted | — | Referenced in VeloPositionValue | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | VeloVaultPremium | unmatched — not counted | — | Referenced in VeloPositionValue | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | IVaultFactory | unmatched — not counted | — | Referenced in VeloPositionManager | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | IVeloVault | unmatched — not counted | — | Referenced in VeloPositionManager | no |
| Extra Finance Audit Report.pdf | StakingRewards | unmatched — not counted | — | mentioned in test file path and issue H-1 | no |
| Extra Finance Audit Report.pdf | LendingPool | ambiguous — not counted | LendingPool (alternative) `0xbb505c...c71cbd` — deployed 2023-07-30 12:36:45+03 — liveness: live (current_address_book_code)<br>LendingPool (alternative) `0xbb505c...c71cbd` — deployed 2023-05-04 09:04:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Extra Finance Audit Report.pdf | ReserveLogic | unmatched — not counted | — | issue M-2 | no |
| Source | StakingRewards | unmatched — not counted | — | mentioned in PoC test file path: tests/lending-pool/StakingRewards.t.sol:StakingRewardsTest | no |
| Source | LendingPool | ambiguous — not counted | LendingPool (alternative) `0xbb505c...c71cbd` — deployed 2023-07-30 12:36:45+03 — liveness: live (current_address_book_code)<br>LendingPool (alternative) `0xbb505c...c71cbd` — deployed 2023-05-04 09:04:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Source | ReserveLogic | unmatched — not counted | — | issue M-2: ReserveLogic._mintToTreasury | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | FlashLoanReceiverBase | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | FlashLoanSimpleReceiverBase | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | AaveOracle | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | AaveProtocolDataProvider | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | DefaultReserveInterestRateStrategyV2 | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | CLSynchronicityPriceAdapterPegToBase | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | ACLManager | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | PoolAddressesProvider | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | PoolAddressesProviderRegistry | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | PriceOracleSentinel | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | BaseImmutableAdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | InitializableImmutableAdminUpgradeabilityProxy | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | VersionedInitializable | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | ReserveConfiguration | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | UserConfiguration | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | Helpers | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | BorrowLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | BridgeLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | CalldataLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | ConfiguratorLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | EModeLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | FlashLoanLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | GenericLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | IsolationModeLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | LiquidationLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | PoolLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | ReserveLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | SupplyLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | ValidationLogic | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | MathUtils | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | PercentageMath | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | WadRayMath | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | ConfiguratorInputTypes | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | DataTypes | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | DefaultReserveInterestRateStrategy | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | L2Pool | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | Pool | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | PoolConfigurator | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | PoolStorage | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | AToken | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | DelegationAwareAToken | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | StableDebtToken | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | VariableDebtToken | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | DebtTokenBase | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | EIP712Base | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | IncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | MintableIncentivizedERC20 | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | ScaledBalanceTokenBase | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | ExtraXAccountFactory | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | CoinbaseAccountCreator | unmatched — not counted | — | listed in scope | no |
| 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf | SafeAccount130Creator | unmatched — not counted | — | listed in scope | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | Pool | unmatched — not counted | — | Target in finding PVE-001 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | ConfiguratorLogic | unmatched — not counted | — | Target in finding PVE-002 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | ATokenRewardsReDistributionManager | unmatched — not counted | — | Target in finding PVE-003 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | ExtraXAccountFactory | unmatched — not counted | — | Target in finding PVE-004 | no |
| PeckShield-Audit-Report-ExtraFi-v1.0.pdf | PoolConfigurator | unmatched — not counted | — | Mentioned in finding PVE-005 as example privileged functions | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | `0x2dad3a...7938f8` | EXTRA | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x2dad3a...7938f8` | EXTRAoft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xbb505c...c71cbd` | LendingPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xb7d861...1d322a` | RewardDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 6
- Inherited remapped matches: 0
- Address-book scope dispositions: 5 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 3 ambiguous, 96 unmatched
- Matched-own operational status: 5 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=2, low=1, medium=6
- Match method counts: temporal_name=4, unique_name=1

Zero-match audit list:

- [4257] PeckShield-Audit-Report-ExtraFi-v1.0.pdf
- [4258] 2024.12.01 - Final - Extra Finance Audit Report.pdf
- [26844] Extra Finance Audit Report.pdf
- [26845] Source
- [26846] 2025.06.19 - Final - Extra Finance Private Best Efforts Audit Contest Report 1750340468.pdf
- [26847] PeckShield-Audit-Report-ExtraFi-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
