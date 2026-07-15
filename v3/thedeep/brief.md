# Agentic Audit Brief: TheDeep

## Export Authority

- Production state: **published scope**
- Raw selected rows: 1 across 1 audit(s)
- Eligible audit results: 1 (1 matched; 0 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: TheDeep (`thedeep`)
- Website: [https://app.thedeep.ink/](https://app.thedeep.ink/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, bsc, celo, chain-763373, ink, polygon
- Contract surface: 35 unique implementations (35 raw deployments)
- Coverage basis: 1/16 confirmed own live verified implementations (6.3%); conservative 6.3% with 0 needs-review implementation(s)
- DeFi Llama TVL: $6,543,580.05
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for TheDeep. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 18 contract row(s) across base, bsc, celo, chain-763373, ink, polygon. Structural roles: 13 unclassified, 5 core. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 18
- Structural roles: unclassified (13), core (5)
- Contract kinds: contract (18)
- Detected standards: ownable (2)
- Frameworks: openzeppelin (5)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 25 contracts are derived from known codebases. 25 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- deep_vault / deployer (`0xcbd1f7...36e3e8`, chain 57073)
- deep_vault / depositGuard (`0x51339a...4fed93`, chain 57073)
- deep_vault / Pancakeswap / deployer (`0x05cc3c...bd5f12`, chain 56)
- deep_vault / Pancakeswap / deployer (`0x7d11de...76bfee`, chain 8453)
- deep_vault / Pancakeswap / depositGuard (`0x16edb1...348ef8`, chain 56)
- deep_vault / Pancakeswap / depositGuard (`0xfa196a...e5c234`, chain 8453)
- deep_vault / Pancakeswap / volatilityCheck (`0x2454e7...74359b`, chain 56)
- deep_vault / Pancakeswap / volatilityCheck (`0xeb8be5...42b5df`, chain 8453)
- deep_vault / Ubeswap / volatilityCheck (`0x178369...3000b3`, chain 42220)
- deep_vault / Uniswap V3 / deployer (`0x0768a7...2236ea`, chain 137)
- deep_vault / Uniswap V3 / deployer (`0xfacd9c...429a47`, chain 42220)
- deep_vault / Uniswap V3 / depositGuard (`0xec89a8...6712b3`, chain 8453)
- deep_vault / Uniswap V3 / volatilityCheck (`0xe83a69...33e8fc`, chain 137)
- deep_vault / Uniswap V3 / volatilityCheck (`0xe14209...5dbedd`, chain 8453)
- deep_vault / Uniswap V3 / volatilityCheck (`0xc9dcd7...53bb42`, chain 42220)
- deep_vault / volatilityCheck (`0x698e9f...9ceed0`, chain 57073)
- deep_velodrome_vault / Aerodrome / depositGuard (`0x4a094b...0f98c2`, chain 8453)
- deep_velodrome_vault / Aerodrome / volatilityCheck (`0xe00295...ab76f7`, chain 8453)
- deep_velodrome_vault / AerodromeV2 / depositGuard (`0xcde730...054b87`, chain 8453)
- deep_velodrome_vault / depositGuard (`0xe6d639...7657d1`, chain 57073)
- deep_velodrome_vault / volatilityCheck (`0xd3db08...947894`, chain 42220)
- ICHIVaultDepositGuard (`0x2b8ca8...76d4c6`, chain 137)
- ICHIVaultDepositGuard (`0x238394...4fbed8`, chain 42220)
- ICHIVaultDepositGuard (`0x62fd18...4774c2`, chain 42220)
- ICHIVaultDepositGuardExtendedForMFD (`0x141db8...1d9f25`, chain 42220)

## Contract Surface Quality

- Indexed contracts: 18; live-surface contracts included: 18 (16 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 25/35 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/16 (6.3%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 25 own, 10 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 25 of 35 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 1/16
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 0
- Unverified implementations: 9
- Unique implementations: 35
- Raw deployments: 35
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 1 | 6.3% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ICHIVaultDepositGuard | core_logic | project_anchor | own_supporting | 0 | celo | unit-394038 | `0x238394...4fbed8` | ✅ Audited |

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| deep_vault / Pancakeswap / deployer | unknown | project_anchor | own_supporting | 0 | bsc | unit-394046 | `0x05cc3c...bd5f12` | ⚠️ Unaudited |
| deep_vault / Pancakeswap / deployer | unknown | project_anchor | own_supporting | 0 | base | unit-394061 | `0x7d11de...76bfee` | ⚠️ Unaudited |
| deep_vault / Pancakeswap / depositGuard | unknown | project_anchor | own_supporting | 0 | bsc | unit-394047 | `0x16edb1...348ef8` | ⚠️ Unaudited |
| deep_vault / Pancakeswap / depositGuard | unknown | project_anchor | own_supporting | 0 | base | unit-394067 | `0xfa196a...e5c234` | ⚠️ Unaudited |
| deep_vault / Pancakeswap / volatilityCheck | unknown | project_anchor | own_supporting | 0 | bsc | unit-394048 | `0x2454e7...74359b` | ⚠️ Unaudited |
| deep_vault / Uniswap V3 / deployer | unknown | project_anchor | own_supporting | 0 | polygon | unit-394033 | `0x0768a7...2236ea` | ⚠️ Unaudited |
| deep_vault / Uniswap V3 / deployer | unknown | project_anchor | own_supporting | 0 | celo | unit-394045 | `0xfacd9c...429a47` | ⚠️ Unaudited |
| deep_vault / Uniswap V3 / depositGuard | unknown | project_anchor | own_supporting | 0 | base | unit-394066 | `0xec89a8...6712b3` | ⚠️ Unaudited |
| deep_vault / Uniswap V3 / volatilityCheck | unknown | project_anchor | own_supporting | 0 | base | unit-394064 | `0xe14209...5dbedd` | ⚠️ Unaudited |
| deep_velodrome_vault / Aerodrome / depositGuard | unknown | project_anchor | own_supporting | 0 | base | unit-394059 | `0x4a094b...0f98c2` | ⚠️ Unaudited |
| deep_velodrome_vault / Aerodrome / volatilityCheck | unknown | project_anchor | own_supporting | 0 | base | unit-394063 | `0xe00295...ab76f7` | ⚠️ Unaudited |
| deep_velodrome_vault / AerodromeV2 / depositGuard | unknown | project_anchor | own_supporting | 0 | base | unit-394062 | `0xcde730...054b87` | ⚠️ Unaudited |
| ICHIVaultDepositGuard | core_logic | project_anchor | own_supporting | 0 | polygon | unit-394034 | `0x2b8ca8...76d4c6` | ⚠️ Unaudited |
| ICHIVaultDepositGuard | core_logic | project_anchor | own_supporting | 0 | celo | unit-394039 | `0x62fd18...4774c2` | ⚠️ Unaudited |
| ICHIVaultDepositGuardExtendedForMFD | core_logic | project_anchor | own_supporting | 0 | celo | unit-394036 | `0x141db8...1d9f25` | ⚠️ Unaudited |
| ICHIVaultDepositGuardExtendedForMFD | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-394043 | `0xdb771e...d6fccc` | ⚠️ Unaudited |
| VolatilityCheck | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-394040 | `0x6c2e26...74e72e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| deep_vault / deployer | unknown | project_anchor | own_supporting | 0 | ink | unit-394054 | `0xcbd1f7...36e3e8` | ❓ Unverified |
| deep_vault / depositGuard | unknown | project_anchor | own_supporting | 0 | ink | unit-394051 | `0x51339a...4fed93` | ❓ Unverified |
| deep_vault / Pancakeswap / volatilityCheck | unknown | project_anchor | own_supporting | 0 | base | unit-394065 | `0xeb8be5...42b5df` | ❓ Unverified |
| deep_vault / Ubeswap / volatilityCheck | unknown | project_anchor | own_supporting | 0 | celo | unit-394037 | `0x178369...3000b3` | ❓ Unverified |
| deep_vault / Uniswap V3 / volatilityCheck | unknown | project_anchor | own_supporting | 0 | polygon | unit-394035 | `0xe83a69...33e8fc` | ❓ Unverified |
| deep_vault / Uniswap V3 / volatilityCheck | unknown | project_anchor | own_supporting | 0 | celo | unit-394041 | `0xc9dcd7...53bb42` | ❓ Unverified |
| deep_vault / volatilityCheck | unknown | project_anchor | own_supporting | 0 | ink | unit-394052 | `0x698e9f...9ceed0` | ❓ Unverified |
| deep_velodrome_vault / depositGuard | unknown | project_anchor | own_supporting | 0 | ink | unit-394055 | `0xe6d639...7657d1` | ❓ Unverified |
| deep_velodrome_vault / volatilityCheck | unknown | project_anchor | own_supporting | 0 | celo | unit-394042 | `0xd3db08...947894` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-394060 | `0x5a6630...94c6f9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | celo | unit-394044 | `0xed0819...3371df` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ink | unit-394049 | `0x2f4b48...36d085` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ink | unit-394050 | `0x388c3a...a708d1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ink | unit-394053 | `0xbf566e...7cf342` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ink | unit-394056 | `0xfea6cc...211dd1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-763373 | unit-394057 | `0xc5901f...2e4c3f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | chain-763373 | unit-394058 | `0xca8310...3cbb76` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Bailsec - ICHI - Vaults - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20ICHI%20-%20Vaults%20-%20Final%20Report.pdf) | yAudit | Audit | 2024-12 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 10 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11711] Bailsec - ICHI - Vaults - Final Report.pdf — matched: All contracts are explicitly listed in the report's scope sections. The audit date is inferred from 'December 2024' on the cover page, using the last day of the month.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Bailsec - ICHI - Vaults - Final Report.pdf | Enum | unmatched — not counted | — | Listed in scope as a contract under 'Common Enum' section. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | ContractImports | unmatched — not counted | — | Listed in scope as 'External ContractImports'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | InterfaceImport | unmatched — not counted | — | Listed in scope as 'InterfaceImport'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | ICHIVaultDeployer | unmatched — not counted | — | Listed in scope as 'Lib ICHIVaultDeployer'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | OracleLibrary | unmatched — not counted | — | Listed in scope as 'OracleLibrary'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | UV3Math | unmatched — not counted | — | Listed in scope as 'UV3Math'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | ICHIVaultDepositGuard | own contract | ICHIVaultDepositGuard (alternative) `0x62fd18...4774c2` — deployed 2024-02-26 15:50:34+03 — liveness: live (current_address_book_code)<br>ICHIVaultDepositGuard (alternative) `0x2b8ca8...76d4c6` — deployed 2025-11-25 23:59:43+03 — liveness: live (current_address_book_code)<br>ICHIVaultDepositGuard (selected) `0x238394...4fbed8` — deployed 2024-09-19 23:34:19+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2024-09-19 was 103d from audit; next candidate 309d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Bailsec - ICHI - Vaults - Final Report.pdf | ICHIVault | unmatched — not counted | — | Listed in scope as 'ICHIVault'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | VaultSlippageCheckV2_1 | unmatched — not counted | — | Listed in scope as 'VaultSlippageCheckV2_1'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | VaultSlippageCheckV2 | unmatched — not counted | — | Listed in scope as 'VaultSlippageCheckV2'. | no |
| Bailsec - ICHI - Vaults - Final Report.pdf | ICHIVaultFactory | unmatched — not counted | — | Listed in scope as 'ICHIVaultFactory'. | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | `0x2b8ca8...76d4c6` | ICHIVaultDepositGuard | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x62fd18...4774c2` | ICHIVaultDepositGuard | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0x141db8...1d9f25` | ICHIVaultDepositGuardExtendedForMFD | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 29 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Address-book scope dispositions: 1 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 10 unmatched
- Matched-own operational status: 1 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=1
- Match method counts: temporal_name=1

Fork inheritance lineage and inherited audits are included when available.
