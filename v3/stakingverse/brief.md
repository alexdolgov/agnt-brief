# Agentic Audit Brief: Stakingverse

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 18 (0 matched; 18 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Stakingverse (`stakingverse`)
- Website: [https://stakingverse.io](https://stakingverse.io)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum, lukso
- Contract surface: 2 unique implementations (2 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $3,580,384.76
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Stakingverse in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

0 of 1 contracts are derived from known codebases. 1 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x9f49a9...0f6f04`, chain 42)

## Contract Surface Quality

- Logic-topography rows: 0; live-surface rows included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/4 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 1 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Confirmed-live implementations: 1 of 2 unique; 1 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 18 (18 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 2 fresh, 4 aging, 7 stale, 5 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

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
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | lukso | unit-257089 | `0x8a3982...bc8f7d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | lukso | unit-257090 | `0x9f49a9...0f6f04` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Stakingverse_LST_Audit.pdf](https://raw.githubusercontent.com/Stakingverse/pool-contracts/55073caed01dcdd7fe83374c299a6ae0dcd57816/audits/Stakingverse_LST_Audit.pdf) | Nethermind AI Agent | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Stakingverse_Audit_MiloTruck.pdf](https://raw.githubusercontent.com/Stakingverse/pool-contracts/55073caed01dcdd7fe83374c299a6ae0dcd57816/audits/Stakingverse_Audit_MiloTruck.pdf) | MiloTruck | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | medium |
| [Liquid_Staking_Audit_Oct_2024.pdf](https://raw.githubusercontent.com/Stakingverse/pool-contracts/55073caed01dcdd7fe83374c299a6ae0dcd57816/audits/Liquid_Staking_Audit_Oct_2024.pdf) | Nethermind AI Agent | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Terms.pdf](https://stakingverse.io/Terms.pdf) | Nethermind AI Agent | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [2024-09-Sigma-Prime.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2024-09-Sigma-Prime.pdf) | Sigma Prime | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [2023-08-Halborn.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2023-08-Halborn.pdf) | Halborn | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 33 | high |
| [2024-03-Consensys-Diligence.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2024-03-Consensys-Diligence.pdf) | Consensys Diligence | Audit | 2024-03 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 70 | high |
| [2023-05-Halborn.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2023-05-Halborn.pdf) | Halborn | Audit | 2023-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 52 | high |
| [2023-08-Sigma-Prime.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2023-08-Sigma-Prime.pdf) | Sigma Prime | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [2024-06-Sigma-Prime.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2024-06-Sigma-Prime.pdf) | Sigma Prime | Audit | 2024-06 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 42 | high |
| [2025-09-ABDK.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2025-09-ABDK.pdf) | ABDK | Audit | 2025-09 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 0 | n/a |
| [2026-04-Statemind.pdf](https://github.com/stakewise/v3-core/blob/main/audits/2026-04-Statemind.pdf) | Statemind | Audit | 2026-04 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 17 | high |
| [nethermind-ai-agent-audit-report-stakingverse-pool-contracts.pdf](https://github.com/Stakingverse/pool-contracts/blob/main/audits/nethermind-ai-agent-audit-report-stakingverse-pool-contracts.pdf) | Nethermind | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [nethermind-findings.md](https://github.com/Stakingverse/pool-contracts/blob/main/audits/nethermind-findings.md) | Nethermind | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [slither_report_SLYXToken.md](https://github.com/Stakingverse/pool-contracts/blob/main/audits/slither_report_SLYXToken.md) | Slither | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [slither_report_StakingverseVault.md](https://github.com/Stakingverse/pool-contracts/blob/main/audits/slither_report_StakingverseVault.md) | Slither | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 4 | medium |
| [2023-1-9-UniversalPage.md](https://github.com/Universal-Page/contracts/blob/main/audits/2023-1-9-UniversalPage.md) | unknown | Audit | 2023-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 20 | high |
| [2024-2-1-UniversalPage-Vault-security-review.pdf](https://github.com/Universal-Page/contracts/blob/main/audits/2024-2-1-UniversalPage-Vault-security-review.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2617] Stakingverse_LST_Audit.pdf — no match: Scope section lists files: LiquidStakingToken.sol, SLYXGToken.sol, LiquidStakingTokenAutoMintExtension.sol. Audit date from cover page: 8 January 2025.
- [2618] Stakingverse_Audit_MiloTruck.pdf — no match: No explicit scope section; contracts extracted from findings and context. Audit date from title page.
- [2619] Liquid_Staking_Audit_Oct_2024.pdf — no match: Three contracts in scope: LiquidStakingToken, LiquidStakingTokenAutoMintExtension, and Vault. Audit date from cover page.
- [2620] Terms.pdf — no match: The document is a terms of use agreement, not an audit report. No contracts in scope or audit date were found.
- [2623] 2024-09-Sigma-Prime.pdf — no match: Scope limited to PR#97 at commit dc5f9d8. Contracts explicitly mentioned: OsTokenVaultEscrow.sol, GnoGenesisVault.sol, EthFoxVault.sol. Other vaults appear in test suite but not in scope.
- [2624] 2023-08-Halborn.pdf — no match: All contracts listed in the Scope section (page 14) are included. The audit date is the end date of the engagement: July 27th, 2023.
- [2625] 2024-03-Consensys-Diligence.pdf — no match: Extracted contract names from the 'Files in Scope' appendix and the system overview diagram. The audit date is March 2024, interpreted as end of month.
- [2626] 2023-05-Halborn.pdf — no match: All contracts listed in the Scope section (page 15) are included. The audit date is the end date of the engagement: April 28th, 2023.
- [2627] 2023-08-Sigma-Prime.pdf — no match: Scope includes all files in directories: base, interfaces, keeper, libraries, vaults, OsToken. Excludes OpenZeppelin libraries. Audit date is August 2023, interpreted as end of month.
- [2628] 2024-06-Sigma-Prime.pdf — no match: Scope section explicitly states files at commit 919b273, with fixes assessed at commit diff. Third-party libraries excluded. Contract names extracted from 'Asset' fields in findings and test file names.
- [2629] 2025-09-ABDK.pdf — no match: No reason recorded
- [2630] 2026-04-Statemind.pdf — no match: Extracted 17 contract names from the 'Project Scope' section listing files. Audit date taken from the end date of the timeline '20-04-2026'.
- [14329] nethermind-ai-agent-audit-report-stakingverse-pool-contracts.pdf — no match: Contracts explicitly listed in scope section.
- [14330] nethermind-findings.md — no match: Contracts extracted from findings table; no explicit scope section or date found.
- [14331] slither_report_SLYXToken.md — no match: Extracted contract names from file paths in Slither output; no explicit scope section or audit date found.
- [14332] slither_report_StakingverseVault.md — no match: Extracted contract names from Slither output file paths and solc-version section. No explicit scope section or audit date found.
- [14337] 2023-1-9-UniversalPage.md — no match: Extracted 20 contract names from scope table and code coverage table. Audit date from header.
- [14338] 2024-2-1-UniversalPage-Vault-security-review.pdf — no match: Only one contract (Vault) is in scope. Audit date from filename and header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Stakingverse_LST_Audit.pdf | LiquidStakingToken | unmatched — not counted | — | listed in scope | no |
| Stakingverse_LST_Audit.pdf | SLYXGToken | unmatched — not counted | — | listed in scope | no |
| Stakingverse_LST_Audit.pdf | LiquidStakingTokenAutoMintExtension | unmatched — not counted | — | listed in scope | no |
| Stakingverse_Audit_MiloTruck.pdf | SLYXToken | unmatched — not counted | — | mentioned in findings and context | no |
| Stakingverse_Audit_MiloTruck.pdf | StakingverseVault | unmatched — not counted | — | mentioned in findings and context | no |
| Stakingverse_Audit_MiloTruck.pdf | LSP7DigitalAssetInitAbstract | unmatched — not counted | — | mentioned in finding 4.1.1 | no |
| Stakingverse_Audit_MiloTruck.pdf | LSP7BurnableInitAbstract | unmatched — not counted | — | mentioned in finding 4.4.1 | no |
| Stakingverse_Audit_MiloTruck.pdf | IVaultStakeRecipient | unmatched — not counted | — | mentioned in finding 4.4.1 | no |
| Stakingverse_Audit_MiloTruck.pdf | ISLYX | unmatched — not counted | — | mentioned in finding 4.4.1 | no |
| Liquid_Staking_Audit_Oct_2024.pdf | LiquidStakingToken | unmatched — not counted | — | listed in scope table | no |
| Liquid_Staking_Audit_Oct_2024.pdf | LiquidStakingTokenAutoMintExtension | unmatched — not counted | — | listed in scope table | no |
| Liquid_Staking_Audit_Oct_2024.pdf | Vault | unmatched — not counted | — | listed in scope table | no |
| 2024-09-Sigma-Prime.pdf | OsTokenVaultEscrow | unmatched — not counted | — | listed in scope and findings | no |
| 2024-09-Sigma-Prime.pdf | GnoGenesisVault | unmatched — not counted | — | mentioned in finding STW3-02 | no |
| 2024-09-Sigma-Prime.pdf | EthFoxVault | unmatched — not counted | — | mentioned in finding STW3-04 | no |
| 2023-08-Halborn.pdf | ExitQueue | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | Errors | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | OsToken | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | OsTokenConfig | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | PriceOracle | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultMev | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultValidators | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultWhitelist | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultImmutables | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultToken | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultAdmin | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultEthStaking | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultFee | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultVersion | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultOsToken | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultEnterExit | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultState | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | VaultsRegistry | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | EthErc20Vault | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | EthGenesisVault | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | EthPrivErc20Vault | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | EthPrivVault | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | EthVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | EthVault | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | SharedMevEscrow | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | OwnMevEscrow | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | KeeperValidators | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | KeeperRewards | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | KeeperOracles | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | Keeper | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | ERC20Upgradeable | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | ERC20 | unmatched — not counted | — | listed in scope | no |
| 2023-08-Halborn.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| 2024-03-Consensys-Diligence.pdf | EthFoxVault | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | VaultImmutables | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | Initializable | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | VaultAdmin | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | VaultVersion | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | VaultFee | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | VaultState | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | VaultValidators | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | VaultEnterExit | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | VaultMev | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | VaultEthStaking | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | VaultBlocklist | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | Multicall | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IEthFoxVault | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IVaultAdmin | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IVaultVersion | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | UUPSUpgradeable | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IERC1822Proxiable | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IVaultFee | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IVaultState | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | ExitQueue | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IVaultValidators | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IVaultEnterExit | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IVaultMev | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IVaultEthStaking | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IVaultBlocklist | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IMulticall | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | EthVaultFactory | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IEthVaultFactory | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | VaultsRegistry | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | Ownable2Step | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IVaultsRegistry | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | ERC1967Proxy | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | OwnMevEscrow | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IOwnMevEscrow | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | KeeperRewards | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IKeeperRewards | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | VaultWhitelist | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IVaultWhitelist | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | EthGenesisVault | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IEthGenesisVault | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | EthPrivVault | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IEthPrivVault | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | EthErc20Vault | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IEthErc20Vault | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | EthPrivErc20Vault | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IEthPrivErc20Vault | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | VaultToken | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IVaultToken | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | VaultOsToken | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IVaultOsToken | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | KeeperValidators | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IKeeperValidators | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | KeeperOracles | unmatched — not counted | — | listed in scope table | no |
| 2024-03-Consensys-Diligence.pdf | IKeeperOracles | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IKeeper | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IValidatorsRegistry | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IEthValidatorsRegistry | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IRewardSplitter | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IRewardSplitterFactory | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IRewardEthToken | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IPoolEscrow | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IOsToken | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IOsTokenConfig | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IOsTokenVaultController | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IBalancerRateProvider | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IChainlinkAggregator | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | IChainlinkV3Aggregator | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | ISharedMevEscrow | unmatched — not counted | — | — | no |
| 2024-03-Consensys-Diligence.pdf | ICumulativeMerkleDrop | unmatched — not counted | — | — | no |
| 2023-05-Halborn.pdf | ExitQueue | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultMev | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultValidators | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultWhitelist | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultImmutables | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultToken | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultAdmin | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultEthStaking | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultFee | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultVersion | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultEnterExit | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultState | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | VaultsRegistry | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | EthPrivateVault | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | EthVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | EthVault | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | SharedMevEscrow | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | OwnMevEscrow | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | KeeperValidators | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | KeeperRewards | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | Oracles | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | Keeper | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | ERC20Upgradeable | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | Multicall | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | Versioned | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IOracles | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultWhitelist | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IEthVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IERC20 | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultState | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultValidators | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IMulticall | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IERC20Permit | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IKeeperRewards | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IEthPrivateVault | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultAdmin | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultFee | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | ISharedMevEscrow | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultImmutables | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IKeeperValidators | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultEthStaking | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IEthValidatorsRegistry | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IEthVault | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultToken | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultsRegistry | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IKeeper | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IOwnMevEscrow | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultMev | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultEnterExit | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVaultVersion | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IValidatorsRegistry | unmatched — not counted | — | listed in scope | no |
| 2023-05-Halborn.pdf | IVersioned | unmatched — not counted | — | listed in scope | no |
| 2023-08-Sigma-Prime.pdf | EthGenesisVault | unmatched — not counted | — | Listed in findings STW-01, STW-02, STW-05, STW-06, STW-08, STW-14 | no |
| 2023-08-Sigma-Prime.pdf | VaultOsToken | unmatched — not counted | — | Listed in findings STW-03, STW-20 | no |
| 2023-08-Sigma-Prime.pdf | VaultMev | unmatched — not counted | — | Listed in finding STW-04 | no |
| 2023-08-Sigma-Prime.pdf | VaultValidators | unmatched — not counted | — | Listed in findings STW-07, STW-17, STW-18 | no |
| 2023-08-Sigma-Prime.pdf | EthVault | unmatched — not counted | — | Listed in finding STW-09 | no |
| 2023-08-Sigma-Prime.pdf | OsTokenConfig | unmatched — not counted | — | Listed in findings STW-10, STW-13 | no |
| 2023-08-Sigma-Prime.pdf | OsToken | unmatched — not counted | — | Listed in findings STW-11, STW-13 | no |
| 2023-08-Sigma-Prime.pdf | KeeperRewards | unmatched — not counted | — | Listed in findings STW-12, STW-19 | no |
| 2023-08-Sigma-Prime.pdf | KeeperValidators | unmatched — not counted | — | Listed in finding STW-12 | no |
| 2023-08-Sigma-Prime.pdf | OwnMevEscrow | unmatched — not counted | — | Listed in finding STW-15 | no |
| 2023-08-Sigma-Prime.pdf | SharedMevEscrow | unmatched — not counted | — | Listed in finding STW-15 | no |
| 2023-08-Sigma-Prime.pdf | EthPrivVault | unmatched — not counted | — | Listed in finding STW-15 | no |
| 2023-08-Sigma-Prime.pdf | PriceOracle | unmatched — not counted | — | Listed in finding STW-16 | no |
| 2023-08-Sigma-Prime.pdf | VaultEthStaking | unmatched — not counted | — | Listed in findings STW-18, STW-21 | no |
| 2023-08-Sigma-Prime.pdf | VaultState | unmatched — not counted | — | Listed in finding STW-21 | no |
| 2023-08-Sigma-Prime.pdf | VaultsRegistry | unmatched — not counted | — | Listed in finding STW-21 | no |
| 2023-08-Sigma-Prime.pdf | VaultEnterExit | unmatched — not counted | — | Listed in finding STW-21 | no |
| 2023-08-Sigma-Prime.pdf | ISharedMevEscrow | unmatched — not counted | — | Listed in finding STW-21 | no |
| 2023-08-Sigma-Prime.pdf | IKeeperRewards | unmatched — not counted | — | Listed in finding STW-21 | no |
| 2023-08-Sigma-Prime.pdf | IOwnMevEscrow | unmatched — not counted | — | Listed in finding STW-21 | no |
| 2024-06-Sigma-Prime.pdf | EigenPodOwner | unmatched — not counted | — | listed as asset in finding STW2-02 | no |
| 2024-06-Sigma-Prime.pdf | OsToken | unmatched — not counted | — | listed as asset in finding STW2-03 | no |
| 2024-06-Sigma-Prime.pdf | EthFoxVault | unmatched — not counted | — | listed as asset in finding STW2-04 | no |
| 2024-06-Sigma-Prime.pdf | XdaiExchange | unmatched — not counted | — | listed as asset in finding STW2-05 | no |
| 2024-06-Sigma-Prime.pdf | RewardSplitter | unmatched — not counted | — | listed as asset in finding STW2-06 | no |
| 2024-06-Sigma-Prime.pdf | VaultOsToken | unmatched — not counted | — | listed as asset in finding STW2-07 | no |
| 2024-06-Sigma-Prime.pdf | KeeperRewards | unmatched — not counted | — | listed as asset in finding STW2-08 | no |
| 2024-06-Sigma-Prime.pdf | KeeperOracles | unmatched — not counted | — | listed as asset in finding STW2-09 | no |
| 2024-06-Sigma-Prime.pdf | DepositDataRegistry | unmatched — not counted | — | listed as asset in finding STW2-10 | no |
| 2024-06-Sigma-Prime.pdf | CumulativeMerkleDrop | unmatched — not counted | — | mentioned in finding STW2-12 | no |
| 2024-06-Sigma-Prime.pdf | EthPrivErc20Vault | unmatched — not counted | — | mentioned in finding STW2-12 | no |
| 2024-06-Sigma-Prime.pdf | EthRestakePrivErc20Vault | unmatched — not counted | — | test file name implies contract | no |
| 2024-06-Sigma-Prime.pdf | GnoGenesisVault | unmatched — not counted | — | test file name implies contract | no |
| 2024-06-Sigma-Prime.pdf | ICumulativeMerkleDrop | unmatched — not counted | — | mentioned in finding STW2-12 | no |
| 2024-06-Sigma-Prime.pdf | VaultFee | unmatched — not counted | — | mentioned in finding STW2-12 | no |
| 2024-06-Sigma-Prime.pdf | VaultState | unmatched — not counted | — | mentioned in finding STW2-12 | no |
| 2024-06-Sigma-Prime.pdf | VaultEnterExit | unmatched — not counted | — | mentioned in finding STW2-12 | no |
| 2024-06-Sigma-Prime.pdf | VaultEthStaking | unmatched — not counted | — | mentioned in finding STW2-12 | no |
| 2024-06-Sigma-Prime.pdf | VaultEthRestaking | unmatched — not counted | — | mentioned in finding STW2-12 | no |
| 2024-06-Sigma-Prime.pdf | VaultGnoStaking | unmatched — not counted | — | mentioned in finding STW2-12 | no |
| 2024-06-Sigma-Prime.pdf | OsTokenConfig | unmatched — not counted | — | mentioned in finding STW2-12 | no |
| 2024-06-Sigma-Prime.pdf | OsTokenVaultController | unmatched — not counted | — | mentioned in finding STW2-03 | no |
| 2024-06-Sigma-Prime.pdf | EthVaultFactory | unmatched — not counted | — | mentioned in finding STW2-12 | no |
| 2024-06-Sigma-Prime.pdf | IEthVaultFactory | unmatched — not counted | — | mentioned in finding STW2-12 | no |
| 2024-06-Sigma-Prime.pdf | IEthFoxVault | unmatched — not counted | — | mentioned in finding STW2-12 | no |
| 2024-06-Sigma-Prime.pdf | EthPrivVault | unmatched — not counted | — | test file name implies contract | no |
| 2024-06-Sigma-Prime.pdf | EthBlocklistVault | unmatched — not counted | — | test file name implies contract | no |
| 2024-06-Sigma-Prime.pdf | EthErc20Vault | unmatched — not counted | — | test file name implies contract | no |
| 2024-06-Sigma-Prime.pdf | EthBlocklistErc20Vault | unmatched — not counted | — | test file name implies contract | no |
| 2024-06-Sigma-Prime.pdf | EthRestakeVault | unmatched — not counted | — | test file name implies contract | no |
| 2024-06-Sigma-Prime.pdf | EthRestakeBlocklistVault | unmatched — not counted | — | test file name implies contract | no |
| 2024-06-Sigma-Prime.pdf | EthRestakeErc20Vault | unmatched — not counted | — | test file name implies contract | no |
| 2024-06-Sigma-Prime.pdf | EthRestakeBlocklistErc20Vault | unmatched — not counted | — | test file name implies contract | no |
| 2024-06-Sigma-Prime.pdf | GnoVault | unmatched — not counted | — | test file name implies contract | no |
| 2024-06-Sigma-Prime.pdf | GnoBlocklistVault | unmatched — not counted | — | test file name implies contract | no |
| 2024-06-Sigma-Prime.pdf | GnoErc20Vault | unmatched — not counted | — | test file name implies contract | no |
| 2024-06-Sigma-Prime.pdf | GnoBlocklistErc20Vault | unmatched — not counted | — | test file name implies contract | no |
| 2024-06-Sigma-Prime.pdf | GnoPrivVault | unmatched — not counted | — | test file name implies contract | no |
| 2024-06-Sigma-Prime.pdf | GnoPrivErc20Vault | unmatched — not counted | — | test file name implies contract | no |
| 2024-06-Sigma-Prime.pdf | EthGenesisVault | unmatched — not counted | — | test file name implies contract | no |
| 2024-06-Sigma-Prime.pdf | KeeperValidators | unmatched — not counted | — | mentioned in finding STW2-09 | no |
| 2024-06-Sigma-Prime.pdf | Errors | unmatched — not counted | — | mentioned in finding STW2-12 | no |
| 2026-04-Statemind.pdf | EthMetaVault | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | GnoMetaVault | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | EthMetaVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | GnoMetaVaultFactory | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | EthErc20MetaVault | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | EthPrivMetaVault | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | EthPrivErc20MetaVault | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | VaultSubVaults | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | SubVaultsRegistry | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | SubVaultsRegistryFactory | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | OsTokenRedeemer | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | EthOsTokenRedeemer | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | GnoOsTokenRedeemer | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | NodesManager | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | EthNodesManager | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | EthCommunityVault | unmatched — not counted | — | listed in scope | no |
| 2026-04-Statemind.pdf | ExitPositions | unmatched — not counted | — | listed in scope | no |
| nethermind-ai-agent-audit-report-stakingverse-pool-contracts.pdf | SLYXToken | unmatched — not counted | — | listed in scope | no |
| nethermind-ai-agent-audit-report-stakingverse-pool-contracts.pdf | StakingverseVault | unmatched — not counted | — | listed in scope | no |
| nethermind-ai-agent-audit-report-stakingverse-pool-contracts.pdf | SLYXErrors | unmatched — not counted | — | listed in scope | no |
| nethermind-findings.md | StakingverseVault | unmatched — not counted | — | listed in findings table | no |
| nethermind-findings.md | SLYXToken | unmatched — not counted | — | listed in findings table | no |
| slither_report_SLYXToken.md | SLYXToken | unmatched — not counted | — | listed in scope | no |
| slither_report_SLYXToken.md | SLYXErrors | unmatched — not counted | — | listed in scope | no |
| slither_report_StakingverseVault.md | StakingverseVault | unmatched — not counted | — | listed in scope | no |
| slither_report_StakingverseVault.md | IDepositContract | unmatched — not counted | — | listed in scope | no |
| slither_report_StakingverseVault.md | IVault | unmatched — not counted | — | listed in scope | no |
| slither_report_StakingverseVault.md | IVaultStakeRecipient | unmatched — not counted | — | listed in scope | no |
| 2023-1-9-UniversalPage.md | LSP7CreatorDigitalAsset | unmatched — not counted | — | listed in scope table | no |
| 2023-1-9-UniversalPage.md | LSP8CreatorIdentifiableDigitalAsset | unmatched — not counted | — | listed in scope table | no |
| 2023-1-9-UniversalPage.md | LSP7DropDigitalAsset | unmatched — not counted | — | listed in scope table | no |
| 2023-1-9-UniversalPage.md | Withdrawable | unmatched — not counted | — | listed in scope table | no |
| 2023-1-9-UniversalPage.md | ReentrancyGuard | unmatched — not counted | — | listed in scope table | no |
| 2023-1-9-UniversalPage.md | LSP8FixedDropDigitalAsset | unmatched — not counted | — | listed in scope table | no |
| 2023-1-9-UniversalPage.md | LSP7Listing | unmatched — not counted | — | listed in scope table | no |
| 2023-1-9-UniversalPage.md | LSP8Listings | unmatched — not counted | — | listed in scope table | no |
| 2023-1-9-UniversalPage.md | LSP7Offers | unmatched — not counted | — | listed in scope table | no |
| 2023-1-9-UniversalPage.md | LSP8Offers | unmatched — not counted | — | listed in scope table | no |
| 2023-1-9-UniversalPage.md | LSP8Auctions | unmatched — not counted | — | listed in scope table | no |
| 2023-1-9-UniversalPage.md | LSP7Marketplace | unmatched — not counted | — | listed in scope table | no |
| 2023-1-9-UniversalPage.md | LSP8Marketplace | unmatched — not counted | — | listed in scope table | no |
| 2023-1-9-UniversalPage.md | Participant | unmatched — not counted | — | listed in scope table | no |
| 2023-1-9-UniversalPage.md | UniversalPageName | unmatched — not counted | — | listed in scope table | no |
| 2023-1-9-UniversalPage.md | UniversalPageNameController | unmatched — not counted | — | listed in scope table | no |
| 2023-1-9-UniversalPage.md | PaymentProcessor | unmatched — not counted | — | listed in scope table | no |
| 2023-1-9-UniversalPage.md | GenesisDigitalAsset | unmatched — not counted | — | listed in scope table | no |
| 2023-1-9-UniversalPage.md | MarketplaceBase | unmatched — not counted | — | mentioned in code coverage table | no |
| 2023-1-9-UniversalPage.md | MarketplaceModule | unmatched — not counted | — | mentioned in code coverage table | no |
| 2024-2-1-UniversalPage-Vault-security-review.pdf | Vault | unmatched — not counted | — | listed in scope section | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 18
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 281 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=13, low=1, medium=3
- Match method counts: n/a

Zero-match audit list:

- [2617] Stakingverse_LST_Audit.pdf
- [2618] Stakingverse_Audit_MiloTruck.pdf
- [2619] Liquid_Staking_Audit_Oct_2024.pdf
- [2620] Terms.pdf
- [2623] 2024-09-Sigma-Prime.pdf
- [2624] 2023-08-Halborn.pdf
- [2625] 2024-03-Consensys-Diligence.pdf
- [2626] 2023-05-Halborn.pdf
- [2627] 2023-08-Sigma-Prime.pdf
- [2628] 2024-06-Sigma-Prime.pdf
- [2629] 2025-09-ABDK.pdf
- [2630] 2026-04-Statemind.pdf
- [14329] nethermind-ai-agent-audit-report-stakingverse-pool-contracts.pdf
- [14330] nethermind-findings.md
- [14331] slither_report_SLYXToken.md
- [14332] slither_report_StakingverseVault.md
- [14337] 2023-1-9-UniversalPage.md
- [14338] 2024-2-1-UniversalPage-Vault-security-review.pdf

Fork inheritance lineage and inherited audits are included when available.
