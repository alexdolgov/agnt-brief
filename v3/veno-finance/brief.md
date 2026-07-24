# Agentic Audit Brief: Veno Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 3 (0 matched; 3 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: Veno Finance (`veno-finance`)
- Website: [https://veno.finance/](https://veno.finance/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: cronos, ethereum, zksync-era
- Contract surface: 32 unique implementations (39 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $34,040,635.30
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

No contract logic was present for Veno Finance in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

### Architecture

The activated project remains an explicit cohort member with an empty normalized logic-topography closure.

## Logic Topography

- Exact-run contract rows: 0
- Structural roles: none
- Contract kinds: none
- Detected standards: none
- Frameworks: none
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 20 contracts are derived from known codebases. 20 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x4e313ff3a7210b9356be34fd35007d42a0b8cd24`, chain 324)
- UnnamedContract (`0xbddd1aa977acd01510a9e9627eee8ac1c5e20aca`, chain 324)
- UnnamedContract (`0xe75a17b4f5c4f844688d5670b684515d7c785e63`, chain 324)
- UnnamedContract (`0xe7895ed01a1a6aacf1c2e955af14e7cf612e7f9d`, chain 324)
- UnnamedContract (`0xfea4195be610c4dd1b25a97a1c1402333c404936`, chain 324)
- UnnamedContract (`0x0bbe7ee32c2dc26f51467431f2f61b8c572af25d`, chain 25)
- UnnamedContract (`0x10a1d7d9abefbc84f4ebe9daa546f50eb9e5d191`, chain 25)
- UnnamedContract (`0x186a963f78ba0ca8e1799a32e3106c9fee05c7c1`, chain 25)
- UnnamedContract (`0x21179329c1dcfd36ffe0862cca2c7e85538cca07`, chain 25)
- UnnamedContract (`0x276e28664dec4982f892a5b836e11f23040b6995`, chain 25)
- UnnamedContract (`0x579206e4e49581ca8ada619e9e42641f61a84ac3`, chain 25)
- UnnamedContract (`0x6b5e1fc9b73abee02926f796dcd948dffa139419`, chain 25)
- UnnamedContract (`0x9fae23a2700feecd5b93e43fdbc03c76aa7c08a6`, chain 25)
- UnnamedContract (`0xa312599f647cedb12ee02c92a37d12dd5c8b2f69`, chain 25)
- UnnamedContract (`0xac974ee7fc5d083112c809ccb3fce4a4f385750d`, chain 25)
- UnnamedContract (`0xb15533a0bc7c530d692a9660785226dfd3633965`, chain 25)
- UnnamedContract (`0xb4be51216f4926ab09ddf4e64bc20f499fd6ca95`, chain 25)
- UnnamedContract (`0xbd69099e29dd0d4a1dd24f3c2058fd7f07e0aee5`, chain 25)
- UnnamedContract (`0xd73863c0d3637ca805d449aac7ed04c605bc456c`, chain 25)
- UnnamedContract (`0xdb7d0a1ec37de1de924f8e8adac6ed338d4404e9`, chain 25)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 20/39 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 20 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 11 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 5
- Confirmed-live implementations: 20 of 32 unique; 12 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 32
- Raw deployments: 39
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BridgeMiddleware | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x248c731b155af4cae198af705fb803f087a0b01e`; ethereum `0x3766eb5f07dbc60d39a2059a9a29fd9b7d3c356d` | ⚠️ Unaudited |
| EthereumDeposit | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe8dd4838c47ebf87d8fdb63e7f6dd02c7432d2ac` | ⚠️ Unaudited |
| L1Nullifier | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0xd7f9f54194c633f36ccd5f3da84ad4a1c38cb2cb` | ⚠️ Unaudited |
| YbEth | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x76bf2d1e6dfda645c0c17440b17eccc181dfc351`; ethereum `0xc0c23f557e0e9cc324e2817f26fffcca4952d6a2` | ⚠️ Unaudited |
| YbEthBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0xd91629518a1ec964cfce27c2a939f689dcbdf73f`; ethereum `0xded4dd6e03a7caa6278ee453be2c26363f50643d` | ⚠️ Unaudited |
| YbEthNft | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x43df9d854d3fcb882847b9a638cabd06fe86d2c5`; ethereum `0x8f6b0512e63a644631694178b83419fecd90762d` | ⚠️ Unaudited |
| YBUSD | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0xd501a4d2141799f3228c40af972df622c632b7ce`; ethereum `0xfa59075dfce274e028b58bddfcc3d709960f594a` | ⚠️ Unaudited |
| YBUSDBridge | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x17dacad8aa962963830136422e2eaa8d27d014f8`; ethereum `0x42696a64a238e5c661b1bad2530198d54e7b0dff` | ⚠️ Unaudited |
| ZkCro | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x28ff2e4dd1b58efeb0fc138602a28d5ae81e44e2`; ethereum `0x34b35bed5aced7c4472de906912acb3e4c4616a5` | ⚠️ Unaudited |
| ZkCroMintAndBridge | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe69a535730858fd8dc386b448972a9f801ab4e12` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3fa18f870818b85002dd627617a7eda332d0daa2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-260890 | `0x0bbe7ee32c2dc26f51467431f2f61b8c572af25d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-260891 | `0x10a1d7d9abefbc84f4ebe9daa546f50eb9e5d191` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-260892 | `0x186a963f78ba0ca8e1799a32e3106c9fee05c7c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-260893 | `0x21179329c1dcfd36ffe0862cca2c7e85538cca07` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-260894 | `0x276e28664dec4982f892a5b836e11f23040b6995` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-260898 | `0x579206e4e49581ca8ada619e9e42641f61a84ac3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-260900 | `0x6b5e1fc9b73abee02926f796dcd948dffa139419` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | historical_or_testnet_inventory (excluded) | 0 | cronos | unit-260904 | `0x8f4bfee00a3b5efa0b49afb35eb44d03c5778565` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-260905 | `0x9fae23a2700feecd5b93e43fdbc03c76aa7c08a6` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-260906 | `0xa312599f647cedb12ee02c92a37d12dd5c8b2f69` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-260908 | `0xac974ee7fc5d083112c809ccb3fce4a4f385750d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-260910 | `0xb15533a0bc7c530d692a9660785226dfd3633965` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-260911 | `0xb4be51216f4926ab09ddf4e64bc20f499fd6ca95` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-260912 | `0xbd69099e29dd0d4a1dd24f3c2058fd7f07e0aee5` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-260914 | `0xd73863c0d3637ca805d449aac7ed04c605bc456c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | cronos | unit-260915 | `0xdb7d0a1ec37de1de924f8e8adac6ed338d4404e9` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260919 | `0x4e313ff3a7210b9356be34fd35007d42a0b8cd24` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260923 | `0xbddd1aa977acd01510a9e9627eee8ac1c5e20aca` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260925 | `0xe75a17b4f5c4f844688d5670b684515d7c785e63` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260926 | `0xe7895ed01a1a6aacf1c2e955af14e7cf612e7f9d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-260928 | `0xfea4195be610c4dd1b25a97a1c1402333c404936` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 13
- Live contracts: 0
- Unknown liveness contracts: 13
- Source-verified contracts: 12
- Currently scope-matched contracts retained as-is: 0
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: candidate review=4, source verified unclassified=8, unverified unclassified=1

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| ethereum | candidate review | ERC1967Proxy<br>`0x28ff2e4dd1b58efeb0fc138602a28d5ae81e44e2` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x65b5cfaad25c39063a248684da546cab1cc46cf5` |
| ethereum | candidate review | ERC1967Proxy<br>`0x76bf2d1e6dfda645c0c17440b17eccc181dfc351` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x65b5cfaad25c39063a248684da546cab1cc46cf5` |
| ethereum | candidate review | ERC1967Proxy<br>`0x8f6b0512e63a644631694178b83419fecd90762d` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x65b5cfaad25c39063a248684da546cab1cc46cf5` |
| ethereum | candidate review | ERC1967Proxy<br>`0xfa59075dfce274e028b58bddfcc3d709960f594a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x65b5cfaad25c39063a248684da546cab1cc46cf5` |
| ethereum | source verified unclassified | BridgeMiddleware<br>`0x3766eb5f07dbc60d39a2059a9a29fd9b7d3c356d` | non_address_book | unknown | unknown | verified | n/a | `0x65b5cfaad25c39063a248684da546cab1cc46cf5` |
| ethereum | source verified unclassified | EthereumDeposit<br>`0xe8dd4838c47ebf87d8fdb63e7f6dd02c7432d2ac` | non_address_book | unknown | unknown | verified | n/a | `0x65b5cfaad25c39063a248684da546cab1cc46cf5` |
| ethereum | source verified unclassified | YbEth<br>`0xc0c23f557e0e9cc324e2817f26fffcca4952d6a2` | non_address_book | unknown | unknown | verified | n/a | `0x65b5cfaad25c39063a248684da546cab1cc46cf5` |
| ethereum | source verified unclassified | YbEthBridge<br>`0xded4dd6e03a7caa6278ee453be2c26363f50643d` | non_address_book | unknown | unknown | verified | n/a | `0x65b5cfaad25c39063a248684da546cab1cc46cf5` |
| ethereum | source verified unclassified | YbEthNft<br>`0x43df9d854d3fcb882847b9a638cabd06fe86d2c5` | non_address_book | unknown | unknown | verified | n/a | `0x65b5cfaad25c39063a248684da546cab1cc46cf5` |
| ethereum | source verified unclassified | YBUSD<br>`0xd501a4d2141799f3228c40af972df622c632b7ce` | non_address_book | unknown | unknown | verified | n/a | `0x65b5cfaad25c39063a248684da546cab1cc46cf5` |
| ethereum | source verified unclassified | YBUSDBridge<br>`0x17dacad8aa962963830136422e2eaa8d27d014f8` | non_address_book | unknown | unknown | verified | n/a | `0x65b5cfaad25c39063a248684da546cab1cc46cf5` |
| ethereum | source verified unclassified | ZkCro<br>`0x34b35bed5aced7c4472de906912acb3e4c4616a5` | non_address_book | unknown | unknown | verified | n/a | `0x65b5cfaad25c39063a248684da546cab1cc46cf5` |
| ethereum | unverified unclassified | UnnamedContract<br>`0x3fa18f870818b85002dd627617a7eda332d0daa2` | non_address_book | unknown | unknown | unverified | n/a | `0x65b5cfaad25c39063a248684da546cab1cc46cf5` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [spaces/oOzYIbXVNt7O4xPrl0tz/uploads/kW555WIVoUbzUslDZTlZ/SlowMist Audit Report - Veno-Liquid Staking Contracts Core.pdf](https://220372747-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoOzYIbXVNt7O4xPrl0tz%2Fuploads%2FkW555WIVoUbzUslDZTlZ%2FSlowMist%20Audit%20Report%20-%20Veno-Liquid%20Staking%20Contracts%20Core.pdf) | SlowMist | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [spaces/oOzYIbXVNt7O4xPrl0tz/uploads/gvneLOUCCjnAQYcHhFj7/SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf](https://220372747-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoOzYIbXVNt7O4xPrl0tz%2Fuploads%2FgvneLOUCCjnAQYcHhFj7%2FSlowMist%20Audit%20Report%20-%20Veno%20-%20Liquid%20Staking%20Contracts%20Tokenomic.pdf) | SlowMist | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [spaces/oOzYIbXVNt7O4xPrl0tz/uploads/tzPxX5tBafm0DUCRrLqa/SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf](https://220372747-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FoOzYIbXVNt7O4xPrl0tz%2Fuploads%2FtzPxX5tBafm0DUCRrLqa%2FSlowMist%20Audit%20Report%20-%20Veno%20Liquid%20Staking%20Strategy%20Vault.pdf) | SlowMist | Audit | 2022-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [11713] spaces/oOzYIbXVNt7O4xPrl0tz/uploads/kW555WIVoUbzUslDZTlZ/SlowMist Audit Report - Veno-Liquid Staking Contracts Core.pdf — no match: Contracts extracted from code overview and vulnerability sections. Audit date from audit result table.
- [11714] spaces/oOzYIbXVNt7O4xPrl0tz/uploads/gvneLOUCCjnAQYcHhFj7/SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf — no match: Contracts extracted from visibility tables and findings code locations. Audit date from audit result section.
- [11715] spaces/oOzYIbXVNt7O4xPrl0tz/uploads/tzPxX5tBafm0DUCRrLqa/SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf — no match: Contracts listed in scope section and visibility table. Vault.vy and Registry.vy are forked from Yearn and not in scope. External contracts (VVS, Ferro, Veno) excluded.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| spaces/oOzYIbXVNt7O4xPrl0tz/uploads/kW555WIVoUbzUslDZTlZ/SlowMist Audit Report - Veno-Liquid Staking Contracts Core.pdf | LiquidCro | unmatched — not counted | — | listed in scope and code overview | no |
| spaces/oOzYIbXVNt7O4xPrl0tz/uploads/kW555WIVoUbzUslDZTlZ/SlowMist Audit Report - Veno-Liquid Staking Contracts Core.pdf | VenoNft | unmatched — not counted | — | listed in scope and code overview | no |
| spaces/oOzYIbXVNt7O4xPrl0tz/uploads/kW555WIVoUbzUslDZTlZ/SlowMist Audit Report - Veno-Liquid Staking Contracts Core.pdf | LiquidCroStorage | unmatched — not counted | — | mentioned in code overview | no |
| spaces/oOzYIbXVNt7O4xPrl0tz/uploads/kW555WIVoUbzUslDZTlZ/SlowMist Audit Report - Veno-Liquid Staking Contracts Core.pdf | IBCReceiver | unmatched — not counted | — | mentioned in code overview | no |
| spaces/oOzYIbXVNt7O4xPrl0tz/uploads/kW555WIVoUbzUslDZTlZ/SlowMist Audit Report - Veno-Liquid Staking Contracts Core.pdf | UUPSUpgradeableWithDelay | unmatched — not counted | — | mentioned in code overview | no |
| spaces/oOzYIbXVNt7O4xPrl0tz/uploads/gvneLOUCCjnAQYcHhFj7/SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf | VenoStorm | unmatched — not counted | — | listed in scope and findings | no |
| spaces/oOzYIbXVNt7O4xPrl0tz/uploads/gvneLOUCCjnAQYcHhFj7/SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf | FeeDistributor | unmatched — not counted | — | listed in visibility description | no |
| spaces/oOzYIbXVNt7O4xPrl0tz/uploads/gvneLOUCCjnAQYcHhFj7/SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf | VenoToken | unmatched — not counted | — | listed in visibility description | no |
| spaces/oOzYIbXVNt7O4xPrl0tz/uploads/gvneLOUCCjnAQYcHhFj7/SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf | VenoVesting | unmatched — not counted | — | listed in findings | no |
| spaces/oOzYIbXVNt7O4xPrl0tz/uploads/gvneLOUCCjnAQYcHhFj7/SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf | UUPSUpgradeableWithDelay | unmatched — not counted | — | listed in visibility description | no |
| spaces/oOzYIbXVNt7O4xPrl0tz/uploads/gvneLOUCCjnAQYcHhFj7/SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf | VenoFountainDepositToken | unmatched — not counted | — | listed in visibility description | no |
| spaces/oOzYIbXVNt7O4xPrl0tz/uploads/gvneLOUCCjnAQYcHhFj7/SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf | VenoReservoir | unmatched — not counted | — | listed in findings | no |
| spaces/oOzYIbXVNt7O4xPrl0tz/uploads/gvneLOUCCjnAQYcHhFj7/SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf | VenoFountain | unmatched — not counted | — | listed in findings | no |
| spaces/oOzYIbXVNt7O4xPrl0tz/uploads/tzPxX5tBafm0DUCRrLqa/SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf | BaseDelegator | unmatched — not counted | — | listed in scope | no |
| spaces/oOzYIbXVNt7O4xPrl0tz/uploads/tzPxX5tBafm0DUCRrLqa/SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf | BaseStrategy | unmatched — not counted | — | listed in scope | no |
| spaces/oOzYIbXVNt7O4xPrl0tz/uploads/tzPxX5tBafm0DUCRrLqa/SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf | FerroLCroCroLPStrategy | unmatched — not counted | — | listed in scope | no |
| spaces/oOzYIbXVNt7O4xPrl0tz/uploads/tzPxX5tBafm0DUCRrLqa/SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf | CroDelegator | unmatched — not counted | — | listed in scope | no |
| spaces/oOzYIbXVNt7O4xPrl0tz/uploads/tzPxX5tBafm0DUCRrLqa/SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf | LCroDelegator | unmatched — not counted | — | listed in scope | no |
| spaces/oOzYIbXVNt7O4xPrl0tz/uploads/tzPxX5tBafm0DUCRrLqa/SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf | WCroDelegator | unmatched — not counted | — | listed in scope | no |
| spaces/oOzYIbXVNt7O4xPrl0tz/uploads/tzPxX5tBafm0DUCRrLqa/SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf | DelegatorStorage | unmatched — not counted | — | mentioned in visibility table | no |
| spaces/oOzYIbXVNt7O4xPrl0tz/uploads/tzPxX5tBafm0DUCRrLqa/SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf | BaseStrategyInitializable | unmatched — not counted | — | mentioned in visibility table | no |
| spaces/oOzYIbXVNt7O4xPrl0tz/uploads/tzPxX5tBafm0DUCRrLqa/SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf | UpgradeVenoReservoirLockingPeriod | unmatched — not counted | — | mentioned in visibility table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 22 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=3
- Match method counts: n/a

Zero-match audit list:

- [11713] spaces/oOzYIbXVNt7O4xPrl0tz/uploads/kW555WIVoUbzUslDZTlZ/SlowMist Audit Report - Veno-Liquid Staking Contracts Core.pdf
- [11714] spaces/oOzYIbXVNt7O4xPrl0tz/uploads/gvneLOUCCjnAQYcHhFj7/SlowMist Audit Report - Veno - Liquid Staking Contracts Tokenomic.pdf
- [11715] spaces/oOzYIbXVNt7O4xPrl0tz/uploads/tzPxX5tBafm0DUCRrLqa/SlowMist Audit Report - Veno Liquid Staking Strategy Vault.pdf

Fork inheritance lineage and inherited audits are included when available.
