# Agentic Audit Brief: Aurora Plus

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 15 (0 matched; 15 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Aurora Plus (`aurora-plus`)
- Website: [https://aurora.plus/](https://aurora.plus/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: aurora
- Contract surface: 5 unique implementations (5 raw deployments)
- Coverage basis: 0/1 confirmed own live verified implementations (0.0%); conservative 0.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,495,590.88
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

This brief describes the observed EVM deployment and audit surface for Aurora Plus. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 1 contract row(s) across aurora. Structural roles: 1 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 1
- Structural roles: core (1)
- Contract kinds: abstract (1)
- Detected standards: erc1967proxy (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0xccc2b1...a4a0ec`, chain 1313161554)

## Contract Surface Quality

- Indexed contracts: 1; live-surface contracts included: 1 (1 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 0/1 (0.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 4 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 1 of 5 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/1
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 15 (15 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 13 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ERC1967Proxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x05702b...41e48e` | ⚠️ Unaudited |
| EvmErc20 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x18921f...1617bc` | ⚠️ Unaudited |
| JetStakingV1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x852f13...790934` | ⚠️ Unaudited |
| Treasury | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | aurora | n/a | `0x4c101a...ed827a` | ⚠️ Unaudited |
| UnnamedContract | core_logic | project_anchor | own_supporting | 0 | aurora | unit-379832 | `0xccc2b1...a4a0ec` | ⚠️ Unaudited |

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
| [DL audit link](https://aurora.dev/audits) | unknown | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [January 2025 / HackenNEAR IntentsView audit report](https://www.datocms-assets.com/50156/1738583399-hacken_aurora-labs-limited-sca-aurora-labs-defuse-contracts-dec2024_p-2024-1418_2_20250127-10_50.pdf) | Hacken | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [May 2024 / AuditOneEngine/BridgeView audit report](https://www.datocms-assets.com/50156/1719854230-aurora-engine-audit-report.pdf) | Hacken | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 24 | high |
| [May 2024 / AuditOneForwarder/ControllerView audit report](https://www.datocms-assets.com/50156/1719853937-auroraf-c-audit-report.pdf) | Hacken | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [June 2023 / ZokyoNEAR FT ConnectorView audit report](https://www.datocms-assets.com/50156/1689941745-zokyo-near-ft-connector-audit.pdf) | Hacken | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [June 2023 / Sigma PrimeRainbow Bridge ETH2 ClientView audit report](https://www.datocms-assets.com/50156/1689149463-sigmaprime-rainbow-bridge-final-report-v2-2-june2023.pdf) | Sigma Prime | Audit | 2023-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [May 2023 / AuditOneFast BridgeView audit report](https://www.datocms-assets.com/50156/1686729017-auditone-fast-bridge-final-report-v3-may2023-1.pdf) | Hacken | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [March 2023 / HackenNEAR PluginsView audit report](https://www.datocms-assets.com/50156/1680101850-hacken-near-plugins-final-report-updated-march2023.pdf) | Hacken | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [March 2023 / AuditOneNEAR PluginsView audit report](https://www.datocms-assets.com/50156/1680590522-auditone-near-plugins-final-report-updated-march2023.pdf) | Hacken | Audit | 2023-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [January 2023 / HackenVote Token & Election ContractView audit report](https://www.datocms-assets.com/50156/1675403586-hacken-election-vote-contracts-final-report.pdf) | Hacken | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [October 2022 / BlaizeNEAR FT ConnectorView audit report](https://www.datocms-assets.com/50156/1676635327-blaize-near-ftconnector-reportv2-october-2022.pdf) | Hacken | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [June 2022 / Sigma PrimeRainbow BridgeView audit report](https://www.datocms-assets.com/50156/1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf) | Hacken | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 14 | high |
| [June 2022 / HackenStaking ContractView audit report](https://www.datocms-assets.com/50156/1659612404-hacken-staking-contract-final-report-08-06-2022.pdf) | Hacken | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [June 2022 / BlaizeStaking ContractView audit report](https://www.datocms-assets.com/50156/1660299853-blaize-staking-contract-final-report-8-6-2022.pdf) | Hacken | Audit | 2022-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [March 2022 / HalbornNEAR's Staking FarmView audit report](https://www.datocms-assets.com/50156/1659612370-aurora_farm_near_smart_contract_security_audit_report_halborn_final-2.pdf) | Halborn | Audit | 2022-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [19461] DL audit link — no match: The provided text is a webpage listing multiple audit reports with links, but does not contain the full text of any single audit report. No contract names or scope details are present.
- [19462] January 2025 / HackenNEAR IntentsView audit report — no match: Scope section lists 6 main modules (bitmap, core, crypto, defuse, erc191, nep413) with many sub-files. Extracted top-level module names as they represent the contracts in scope.
- [19463] May 2024 / AuditOneEngine/BridgeView audit report — no match: Extracted contract names from scope section and findings. Audit date from finishing date.
- [19464] May 2024 / AuditOneForwarder/ControllerView audit report — no match: Extracted contracts from scope section and findings. Audit date from finishing date.
- [19465] June 2023 / ZokyoNEAR FT ConnectorView audit report — no match: Scope explicitly lists 'Bridge-common' and 'Token-locker' as contracts reviewed. Audit date from cover page.
- [19466] June 2023 / Sigma PrimeRainbow Bridge ETH2 ClientView audit report — no match: Extracted from the audit report title page and scope description. The report covers NEAR contracts and off-chain Rust programs for the Ethereum to NEAR side of the rainbow bridge.
- [19467] May 2023 / AuditOneFast BridgeView audit report — no match: Extracted 5 Rust source files from the 'Contracts in scope' table. The audit date is the finishing time (09-05-2023) from the project info table.
- [19468] March 2023 / HackenNEAR PluginsView audit report — no match: Extracted contract names from file paths listed in the scope sections for initial, second, and third reviews. The audit date is from the cover page: 'Date: March 27, 2023'.
- [19469] March 2023 / AuditOneNEAR PluginsView audit report — no match: Extracted 17 Rust source files from the 'Contracts in scope' section. Audit date is the finishing time (2023-03-14).
- [19470] January 2023 / HackenVote Token & Election ContractView audit report — no match: Four contracts in scope across three review rounds. Date from cover page: January 18, 2023.
- [19471] October 2022 / BlaizeNEAR FT ConnectorView audit report — no match: Scope explicitly lists 8 Solidity files and 5 Rust files. Audit date from cover page.
- [19472] June 2022 / Sigma PrimeRainbow BridgeView audit report — no match: Extracted contracts from scope description and detailed findings. Date from cover page: 'June, 2022' -> last day of month.
- [19473] June 2022 / HackenStaking ContractView audit report — no match: All contracts listed in the Scope section across three review phases. Date from cover page: June 8th, 2022.
- [19474] June 2022 / BlaizeStaking ContractView audit report — no match: Scope explicitly lists Treasury.sol, AdminControlled.sol, JetStakingV1.sol. Audit date from cover page: June 7th, 2022.
- [19475] March 2022 / HalbornNEAR's Staking FarmView audit report — no match: Scope section lists 'Staking Factory' and 'Staking Farm' as the contracts in scope. No file paths or addresses provided. Audit date is the end date of the engagement (March 25, 2022).

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| January 2025 / HackenNEAR IntentsView audit report | bitmap | unmatched — not counted | — | listed in scope table | no |
| January 2025 / HackenNEAR IntentsView audit report | core | unmatched — not counted | — | listed in scope table | no |
| January 2025 / HackenNEAR IntentsView audit report | crypto | unmatched — not counted | — | listed in scope table | no |
| January 2025 / HackenNEAR IntentsView audit report | defuse | unmatched — not counted | — | listed in scope table | no |
| January 2025 / HackenNEAR IntentsView audit report | erc191 | unmatched — not counted | — | listed in scope table | no |
| January 2025 / HackenNEAR IntentsView audit report | nep413 | unmatched — not counted | — | listed in scope table | no |
| May 2024 / AuditOneEngine/BridgeView audit report | admin_controlled | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | deposit_event | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | errors | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | external | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | fungible_token | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | internal | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | mod | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | silo | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | whitelist | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | admin | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | evm_transaction | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | xcc | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | accounting | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | engine | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | hashchain | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | lib | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | map | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | pausable | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | prelude | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | state | unmatched — not counted | — | listed in scope | no |
| May 2024 / AuditOneEngine/BridgeView audit report | connector | unmatched — not counted | — | mentioned in findings | no |
| May 2024 / AuditOneEngine/BridgeView audit report | EthConnectorContract | unmatched — not counted | — | mentioned in findings | no |
| May 2024 / AuditOneEngine/BridgeView audit report | EngineFungibleToken | unmatched — not counted | — | mentioned in findings | no |
| May 2024 / AuditOneEngine/BridgeView audit report | EngineStorageManagement | unmatched — not counted | — | mentioned in findings | no |
| May 2024 / AuditOneForwarder/ControllerView audit report | FeesCalculator | unmatched — not counted | — | mentioned in findings #1, #3, #6, #10, #16 | no |
| May 2024 / AuditOneForwarder/ControllerView audit report | AuroraForwarderFactory | unmatched — not counted | — | mentioned in findings #7, #11, #13, #17 | no |
| May 2024 / AuditOneForwarder/ControllerView audit report | Forwarder | unmatched — not counted | — | mentioned in findings #2, #4, #12, #14 | no |
| May 2024 / AuditOneForwarder/ControllerView audit report | Controller | unmatched — not counted | — | listed in scope under 'Controller contracts path' | no |
| June 2023 / ZokyoNEAR FT ConnectorView audit report | Bridge-common | unmatched — not counted | — | listed in scope | no |
| June 2023 / ZokyoNEAR FT ConnectorView audit report | Token-locker | unmatched — not counted | — | listed in scope | no |
| June 2023 / Sigma PrimeRainbow Bridge ETH2 ClientView audit report | eth2-client | unmatched — not counted | — | listed in scope as NEAR contract | no |
| June 2023 / Sigma PrimeRainbow Bridge ETH2 ClientView audit report | eth2-validator | unmatched — not counted | — | listed in scope as off-chain validator | no |
| June 2023 / Sigma PrimeRainbow Bridge ETH2 ClientView audit report | eth2_to_near_relay | unmatched — not counted | — | listed in scope as relayer component | no |
| June 2023 / Sigma PrimeRainbow Bridge ETH2 ClientView audit report | contract_wrapper | unmatched — not counted | — | mentioned in finding RBE2-15 as a package that does not compile | no |
| May 2023 / AuditOneFast BridgeView audit report | bridge | unmatched — not counted | — | listed in scope table | no |
| May 2023 / AuditOneFast BridgeView audit report | lp_relayer | unmatched — not counted | — | listed in scope table | no |
| May 2023 / AuditOneFast BridgeView audit report | whitelist | unmatched — not counted | — | listed in scope table | no |
| May 2023 / AuditOneFast BridgeView audit report | ft | unmatched — not counted | — | listed in scope table | no |
| May 2023 / AuditOneFast BridgeView audit report | utils | unmatched — not counted | — | listed in scope table | no |
| March 2023 / HackenNEAR PluginsView audit report | access_control_role | unmatched — not counted | — | listed in scope | no |
| March 2023 / HackenNEAR PluginsView audit report | access_controllable | unmatched — not counted | — | listed in scope | no |
| March 2023 / HackenNEAR PluginsView audit report | full_access_key_fallback | unmatched — not counted | — | listed in scope | no |
| March 2023 / HackenNEAR PluginsView audit report | lib | unmatched — not counted | — | listed in scope | no |
| March 2023 / HackenNEAR PluginsView audit report | ownable | unmatched — not counted | — | listed in scope | no |
| March 2023 / HackenNEAR PluginsView audit report | pausable | unmatched — not counted | — | listed in scope | no |
| March 2023 / HackenNEAR PluginsView audit report | upgradable | unmatched — not counted | — | listed in scope | no |
| March 2023 / HackenNEAR PluginsView audit report | utils | unmatched — not counted | — | listed in scope | no |
| March 2023 / HackenNEAR PluginsView audit report | events | unmatched — not counted | — | listed in scope | no |
| March 2023 / HackenNEAR PluginsView audit report | test_utils | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | access_control_role | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | access_controllable | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | events | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | full_access_key_fallback | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | lib | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | ownable | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | pausable | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | test_utils | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | upgradable | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | access_control_role_derive | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | access_controllable_derive | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | full_access_key_fallback_derive | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | lib_derive | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | ownable_derive | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | pausable_derive | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | utils_derive | unmatched — not counted | — | listed in scope | no |
| March 2023 / AuditOneNEAR PluginsView audit report | upgradable_derive | unmatched — not counted | — | listed in scope | no |
| January 2023 / HackenVote Token & Election ContractView audit report | AuroraVoteTokenV1 | unmatched — not counted | — | listed in scope | no |
| January 2023 / HackenVote Token & Election ContractView audit report | ERC20VotesUpgradeable | unmatched — not counted | — | listed in scope | no |
| January 2023 / HackenVote Token & Election ContractView audit report | AdminControlled | unmatched — not counted | — | listed in scope | no |
| January 2023 / HackenVote Token & Election ContractView audit report | ElectionManager | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | BridgeToken | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | BridgeTokenFactory | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | BridgeTokenProxy | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | ProofConsumer | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | ResultsDecoder | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | ERC20Locker | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | Locker | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | ERC20MetadataLogger | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | bridge-common/src/lib.rs | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | bridge-common/src/prover.rs | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | bridge-common/src/result_types.rs | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | token-locker/src/lib.rs | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | token-locker/src/token_receiver.rs | unmatched — not counted | — | listed in scope | no |
| October 2022 / BlaizeNEAR FT ConnectorView audit report | token-locker/src/unlock_event.rs | unmatched — not counted | — | listed in scope | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | w-near | unmatched — not counted | — | listed in scope as w-near contracts | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | FungibleToken | unmatched — not counted | — | listed in scope as FungibleToken standard library | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | EthOnNearClient | unmatched — not counted | — | described in overview as part of Rainbow Bridge | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | NearOnEthClient | unmatched — not counted | — | described in overview as part of Rainbow Bridge | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | AdminControlled | unmatched — not counted | — | explicitly named in finding NSS-08 | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | NearBridge | unmatched — not counted | — | explicitly named in findings NSS-09, NSS-10, NSS-13 | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | NearProver | unmatched — not counted | — | mentioned in finding NSS-13 | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | EthCustodian | unmatched — not counted | — | explicitly named in findings NSS-06, NSS-07, NSS-13 | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | ERC20Locker | unmatched — not counted | — | explicitly named in findings NSS-06, NSS-07 | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | eNear | unmatched — not counted | — | mentioned in finding NSS-05 resolution | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | ProofKeeper | unmatched — not counted | — | mentioned in finding NSS-07 | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | ERC20MetadataLogger | unmatched — not counted | — | explicitly named in finding NSS-11 | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | ProofDecoder | unmatched — not counted | — | mentioned in finding NSS-13 | no |
| June 2022 / Sigma PrimeRainbow BridgeView audit report | Borsh | unmatched — not counted | — | explicitly named in finding NSS-05 | no |
| June 2022 / HackenStaking ContractView audit report | AdminControlled | unmatched — not counted | — | listed in scope for all three reviews | no |
| June 2022 / HackenStaking ContractView audit report | DelegateCallGuard | unmatched — not counted | — | listed in scope for initial review | no |
| June 2022 / HackenStaking ContractView audit report | ITreasury | unmatched — not counted | — | listed in scope for all three reviews | no |
| June 2022 / HackenStaking ContractView audit report | JetStakingV1 | unmatched — not counted | — | listed in scope for all three reviews | no |
| June 2022 / HackenStaking ContractView audit report | Treasury | unmatched — not counted | — | listed in scope for all three reviews | no |
| June 2022 / BlaizeStaking ContractView audit report | AdminControlled | unmatched — not counted | — | listed in scope | no |
| June 2022 / BlaizeStaking ContractView audit report | JetStakingV1 | unmatched — not counted | — | listed in scope | no |
| June 2022 / BlaizeStaking ContractView audit report | Treasury | unmatched — not counted | — | listed in scope | no |
| March 2022 / HalbornNEAR's Staking FarmView audit report | StakingFactory | unmatched — not counted | — | listed in scope as 'Staking Factory' | no |
| March 2022 / HalbornNEAR's Staking FarmView audit report | StakingFarm | unmatched — not counted | — | listed in scope as 'Staking Farm' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 15
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 114 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=14, low=1
- Match method counts: n/a

Zero-match audit list:

- [19461] DL audit link
- [19462] January 2025 / HackenNEAR IntentsView audit report
- [19463] May 2024 / AuditOneEngine/BridgeView audit report
- [19464] May 2024 / AuditOneForwarder/ControllerView audit report
- [19465] June 2023 / ZokyoNEAR FT ConnectorView audit report
- [19466] June 2023 / Sigma PrimeRainbow Bridge ETH2 ClientView audit report
- [19467] May 2023 / AuditOneFast BridgeView audit report
- [19468] March 2023 / HackenNEAR PluginsView audit report
- [19469] March 2023 / AuditOneNEAR PluginsView audit report
- [19470] January 2023 / HackenVote Token & Election ContractView audit report
- [19471] October 2022 / BlaizeNEAR FT ConnectorView audit report
- [19472] June 2022 / Sigma PrimeRainbow BridgeView audit report
- [19473] June 2022 / HackenStaking ContractView audit report
- [19474] June 2022 / BlaizeStaking ContractView audit report
- [19475] March 2022 / HalbornNEAR's Staking FarmView audit report

Fork inheritance lineage and inherited audits are included when available.
