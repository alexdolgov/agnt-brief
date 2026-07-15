# Agentic Audit Brief: Fuel Bridge

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 12 (0 matched; 12 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Fuel Bridge (`fuel-bridge`)
- Website: [https://app.fuel.network/bridge](https://app.fuel.network/bridge)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 13 unique implementations (13 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $9,030,064.84
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Fuel Bridge. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across ethereum. Structural roles: 1 supporting. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: supporting (1)
- Contract kinds: contract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 11 contracts are derived from known codebases. 11 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x481aee...4b0b59`, chain 1)
- UnnamedContract (`0x50ed39...5edfe8`, chain 1)
- UnnamedContract (`0xa4ca04...f43f67`, chain 1)
- UnnamedContract (`0xaeb0c0...f65ddf`, chain 1)
- UnnamedContract (`0xba0e6b...23ecc3`, chain 1)
- UnnamedContract (`0xc20c2e...41fc18`, chain 1)
- UnnamedContract (`0xca0c6b...87d866`, chain 1)
- UnnamedContract (`0xd57d30...c169ee`, chain 1)
- UnnamedContract (`0xde8a1c...508fe1`, chain 1)
- UnnamedContract (`0xf3d20d...90f130`, chain 1)
- ERC1967Proxy (`0x9ba9d8...b5cd7e`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 1; live-surface rows included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 11/22 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 11 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 2 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 11 of 13 unique; 2 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 13
- Raw deployments: 13
- Audits discovered: 12 (12 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 5 aging, 5 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MoorToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfc280b...75c594` | ⚠️ Unaudited |
| Rig | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2c4505...6d100c` | ⚠️ Unaudited |
| Rig | unknown | project_anchor | own_supporting | 1 | ethereum | unit-240515 | `0x9ba9d8...b5cd7e` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240499 | `0x481aee...4b0b59` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240500 | `0x50ed39...5edfe8` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240504 | `0xa4ca04...f43f67` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240505 | `0xaeb0c0...f65ddf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240506 | `0xba0e6b...23ecc3` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240507 | `0xc20c2e...41fc18` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240508 | `0xca0c6b...87d866` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240510 | `0xd57d30...c169ee` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240512 | `0xde8a1c...508fe1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-240514 | `0xf3d20d...90f130` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Fuel-Bridge-apr24(Public) (including Diffs).pdf](https://github.com/FuelLabs/audits/blob/master/Fuel-Bridge-apr24(Public)%20(including%20Diffs).pdf) | Unknown | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [fuel-audit-september-2024(Connectors Predicates)(Public).pdf](https://github.com/FuelLabs/audits/blob/master/fuel-audit-september-2024(Connectors%20Predicates)(Public).pdf) | Unknown | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [fuel-audit-september-2024(Diffs on the Bridge and State Contracts)(Public).pdf](https://github.com/FuelLabs/audits/blob/master/fuel-audit-september-2024(Diffs%20on%20the%20Bridge%20and%20State%20Contracts)(Public).pdf) | Unknown | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [fuel-audit-september-2024(Points Migration Function)(Public).pdf](https://github.com/FuelLabs/audits/blob/master/fuel-audit-september-2024(Points%20Migration%20Function)(Public).pdf) | Unknown | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [fuel_fast_bridge_audit_final.pdf](https://github.com/FuelLabs/audits/blob/master/fuel_fast_bridge_audit_final.pdf) | Unknown | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [audits (GitHub directory)](https://github.com/FuelLabs/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [ChainSecurity_Fuel_Sway_Optimizations_audit.pdf](https://github.com/FuelLabs/audits/blob/master/ChainSecurity_Fuel_Sway_Optimizations_audit.pdf) | ChainSecurity | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [ChainSecurity_Fuel_Sway_Semantic_Analysis_audit.pdf](https://github.com/FuelLabs/audits/blob/master/ChainSecurity_Fuel_Sway_Semantic_Analysis_audit.pdf) | ChainSecurity | Audit | 2024-10 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | high |
| [fuel-rollup-audit-may-2024.pdf](https://github.com/FuelLabs/audits/blob/master/fuel-rollup-audit-may-2024.pdf) | Unknown | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [fuel-sway-standard-audit-july24(Public) (3).pdf](https://github.com/FuelLabs/audits/blob/master/fuel-sway-standard-audit-july24(Public)%20(3).pdf) | Unknown | Audit | 2024-07 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [fuel_core_audit_report.pdf](https://github.com/FuelLabs/audits/blob/master/fuel_core_audit_report.pdf) | Unknown | Audit | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [fuel_vm_audit_report.pdf](https://github.com/FuelLabs/audits/blob/master/fuel_vm_audit_report.pdf) | Unknown | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2056] Fuel-Bridge-apr24(Public) (including Diffs).pdf — no match: Extracted contract names from scope section and findings. Audit date from 'delivered 15.04.2024'.
- [2057] fuel-audit-september-2024(Connectors Predicates)(Public).pdf — no match: Scope section lists two repositories: evm-predicates and solana-predicates. Findings reference specific files within these packages.
- [2058] fuel-audit-september-2024(Diffs on the Bridge and State Contracts)(Public).pdf — no match: Extracted contract names from scope section and findings paths. Audit date from 'delivered 17.09.2024'.
- [2059] fuel-audit-september-2024(Points Migration Function)(Public).pdf — no match: Only PreDeposits.sol is in scope; other contracts like FuelERC20Gateway and FuelMessagePortal are mentioned as dependencies.
- [2062] fuel_fast_bridge_audit_final.pdf — no match: Extracted contract names from scope description and findings. The scope section describes the fuel-fast-bridge program but does not list individual files; however, findings reference specific contracts and files.
- [15177] audits (GitHub directory) — no match: The provided text is a GitHub repository page listing audit report PDFs, not the actual audit report content. No contract names or scope details are present.
- [15178] ChainSecurity_Fuel_Sway_Optimizations_audit.pdf — no match: Scope lists 9 Rust source files under sway-ir/src/optimize/. The audit date is June 24, 2024 from the cover page.
- [15179] ChainSecurity_Fuel_Sway_Semantic_Analysis_audit.pdf — no match: The audit is a code review of the Sway compiler's semantic analysis, not a smart contract audit. No smart contracts are in scope; only compiler source files under sway/sway-core/src/semantic_analysis/ and sway/sway-core/src/type_system/ are listed.
- [15183] fuel-rollup-audit-may-2024.pdf — no match: Extracted contracts from scope section and findings paths. Audit date from 'delivered 27.05.2024'.
- [15184] fuel-sway-standard-audit-july24(Public) (3).pdf — no match: The scope section only mentions a GitHub repository URL without listing specific contracts or files. The only contract reference is 'owned_proxy' from a file path in a finding, but it is not explicitly stated as in scope.
- [15185] fuel_core_audit_report.pdf — no match: Scope section lists executor, upgradeable-executor, importer, storage, consensus, relayer, proxy loader, and predicate and script blob. Audit date from cover page.
- [15187] fuel_vm_audit_report.pdf — no match: The audit scope is a single Rust program (fuel-vm), not individual smart contracts. The date is from the cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Fuel-Bridge-apr24(Public) (including Diffs).pdf | FuelERC20GatewayV4 | unmatched — not counted | — | listed in scope and findings | no |
| Fuel-Bridge-apr24(Public) (including Diffs).pdf | FuelERC721Gateway | unmatched — not counted | — | mentioned in finding FUEL1-5 | no |
| Fuel-Bridge-apr24(Public) (including Diffs).pdf | FuelMessagePortal | unmatched — not counted | — | mentioned in findings FUEL1-10, FUEL1-6 | no |
| Fuel-Bridge-apr24(Public) (including Diffs).pdf | FuelMessagePortalV2 | unmatched — not counted | — | mentioned in finding FUEL1-10 | no |
| Fuel-Bridge-apr24(Public) (including Diffs).pdf | FuelMessagePortalV3 | unmatched — not counted | — | mentioned in finding FUEL1-7 | no |
| Fuel-Bridge-apr24(Public) (including Diffs).pdf | FuelChainState | unmatched — not counted | — | mentioned in finding FUEL1-6 | no |
| Fuel-Bridge-apr24(Public) (including Diffs).pdf | CryptographyLib | unmatched — not counted | — | mentioned in finding FUEL1-14 | no |
| Fuel-Bridge-apr24(Public) (including Diffs).pdf | bridge-fungible-token | unmatched — not counted | — | listed in scope and findings | no |
| fuel-audit-september-2024(Connectors Predicates)(Public).pdf | evm-predicates | unmatched — not counted | — | listed in scope and findings | no |
| fuel-audit-september-2024(Connectors Predicates)(Public).pdf | solana-predicates | unmatched — not counted | — | listed in scope and findings | no |
| fuel-audit-september-2024(Diffs on the Bridge and State Contracts)(Public).pdf | FuelERC20GatewayV4 | unmatched — not counted | — | Listed in scope and findings paths | no |
| fuel-audit-september-2024(Diffs on the Bridge and State Contracts)(Public).pdf | FuelMessagePortalV3 | unmatched — not counted | — | Listed in scope and findings paths | no |
| fuel-audit-september-2024(Diffs on the Bridge and State Contracts)(Public).pdf | FuelChainState | unmatched — not counted | — | Listed in finding FUEL7-3 path | no |
| fuel-audit-september-2024(Diffs on the Bridge and State Contracts)(Public).pdf | proxy | unmatched — not counted | — | Listed in finding FUEL7-10 path | no |
| fuel-audit-september-2024(Points Migration Function)(Public).pdf | PreDeposits | unmatched — not counted | — | listed in scope and findings | no |
| fuel_fast_bridge_audit_final.pdf | FastBridge | unmatched — not counted | — | mentioned in findings OS-FFB-ADV-04, OS-FFB-ADV-07, OS-FFB-SUG-04 | no |
| fuel_fast_bridge_audit_final.pdf | Outpost | unmatched — not counted | — | mentioned in findings OS-FFB-SUG-02, OS-FFB-SUG-05 | no |
| fuel_fast_bridge_audit_final.pdf | Messenger | unmatched — not counted | — | mentioned in finding OS-FFB-SUG-03 | no |
| fuel_fast_bridge_audit_final.pdf | AssetRegistry | unmatched — not counted | — | mentioned in findings OS-FFB-ADV-10, OS-FFB-SUG-01, OS-FFB-SUG-05 | no |
| fuel_fast_bridge_audit_final.pdf | SRC20 | unmatched — not counted | — | mentioned in finding OS-FFB-ADV-10 | no |
| fuel_fast_bridge_audit_final.pdf | WrappedAssetMinter | unmatched — not counted | — | mentioned in finding OS-FFB-SUG-03 | no |
| fuel_fast_bridge_audit_final.pdf | OPStackGasPriceOracle | unmatched — not counted | — | mentioned in finding OS-FFB-SUG-05 | no |
| fuel_fast_bridge_audit_final.pdf | EVMGasMonitor | unmatched — not counted | — | mentioned in finding OS-FFB-SUG-05 | no |
| fuel_fast_bridge_audit_final.pdf | EnvioService | unmatched — not counted | — | mentioned in finding OS-FFB-ADV-02 | no |
| fuel_fast_bridge_audit_final.pdf | EVMTransactionService | unmatched — not counted | — | mentioned in finding OS-FFB-SUG-04 | no |
| fuel_fast_bridge_audit_final.pdf | DatabaseService | unmatched — not counted | — | mentioned in finding OS-FFB-SUG-04 | no |
| fuel_fast_bridge_audit_final.pdf | GasPublisherTask | unmatched — not counted | — | mentioned in finding OS-FFB-ADV-07 | no |
| fuel_fast_bridge_audit_final.pdf | ChainManager | unmatched — not counted | — | mentioned in finding OS-FFB-ADV-01 | no |
| fuel_fast_bridge_audit_final.pdf | FuelTransactionService | unmatched — not counted | — | mentioned in finding OS-FFB-ADV-09 | no |
| ChainSecurity_Fuel_Sway_Optimizations_audit.pdf | constants | unmatched — not counted | — | listed in scope section | no |
| ChainSecurity_Fuel_Sway_Optimizations_audit.pdf | dce | unmatched — not counted | — | listed in scope section | no |
| ChainSecurity_Fuel_Sway_Optimizations_audit.pdf | inline | unmatched — not counted | — | listed in scope section | no |
| ChainSecurity_Fuel_Sway_Optimizations_audit.pdf | fn_dedup | unmatched — not counted | — | listed in scope section | no |
| ChainSecurity_Fuel_Sway_Optimizations_audit.pdf | simplify_cfg | unmatched — not counted | — | listed in scope section | no |
| ChainSecurity_Fuel_Sway_Optimizations_audit.pdf | arg_demotion | unmatched — not counted | — | listed in scope section | no |
| ChainSecurity_Fuel_Sway_Optimizations_audit.pdf | ret_demotion | unmatched — not counted | — | listed in scope section | no |
| ChainSecurity_Fuel_Sway_Optimizations_audit.pdf | const_demotion | unmatched — not counted | — | listed in scope section | no |
| ChainSecurity_Fuel_Sway_Optimizations_audit.pdf | mem2reg | unmatched — not counted | — | listed in scope section | no |
| fuel-rollup-audit-may-2024.pdf | ProtoEncoding | unmatched — not counted | — | listed in scope and findings | no |
| fuel-rollup-audit-may-2024.pdf | SequencerProxy | unmatched — not counted | — | listed in scope and findings | no |
| fuel-rollup-audit-may-2024.pdf | TokenMigrator | unmatched — not counted | — | listed in scope and findings | no |
| fuel-rollup-audit-may-2024.pdf | SequencerInterface | unmatched — not counted | — | listed in scope and findings | no |
| fuel-rollup-audit-may-2024.pdf | Vault | unmatched — not counted | — | listed in scope and findings | no |
| fuel_core_audit_report.pdf | executor | unmatched — not counted | — | listed in scope | no |
| fuel_core_audit_report.pdf | upgradeable-executor | unmatched — not counted | — | listed in scope | no |
| fuel_core_audit_report.pdf | importer | unmatched — not counted | — | listed in scope | no |
| fuel_core_audit_report.pdf | storage | unmatched — not counted | — | listed in scope | no |
| fuel_core_audit_report.pdf | consensus | unmatched — not counted | — | listed in scope | no |
| fuel_core_audit_report.pdf | relayer | unmatched — not counted | — | listed in scope | no |
| fuel_core_audit_report.pdf | proxy loader | unmatched — not counted | — | listed in scope | no |
| fuel_core_audit_report.pdf | predicate and script blob | unmatched — not counted | — | listed in scope | no |
| fuel_vm_audit_report.pdf | fuel-vm | unmatched — not counted | — | Scope section: 'fuel-vm - A Rust interpreter for the Fuel Virtual Machine' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x9ba9d8...b5cd7e` | Rig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 12
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 52 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=10, low=2
- Match method counts: n/a

Zero-match audit list:

- [2056] Fuel-Bridge-apr24(Public) (including Diffs).pdf
- [2057] fuel-audit-september-2024(Connectors Predicates)(Public).pdf
- [2058] fuel-audit-september-2024(Diffs on the Bridge and State Contracts)(Public).pdf
- [2059] fuel-audit-september-2024(Points Migration Function)(Public).pdf
- [2062] fuel_fast_bridge_audit_final.pdf
- [15177] audits (GitHub directory)
- [15178] ChainSecurity_Fuel_Sway_Optimizations_audit.pdf
- [15179] ChainSecurity_Fuel_Sway_Semantic_Analysis_audit.pdf
- [15183] fuel-rollup-audit-may-2024.pdf
- [15184] fuel-sway-standard-audit-july24(Public) (3).pdf
- [15185] fuel_core_audit_report.pdf
- [15187] fuel_vm_audit_report.pdf

Fork inheritance lineage and inherited audits are included when available.
