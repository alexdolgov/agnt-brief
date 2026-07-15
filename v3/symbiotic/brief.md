# Agentic Audit Brief: Symbiotic

## Export Authority

- Production state: **published scope**
- Raw selected rows: 32 across 14 audit(s)
- Eligible audit results: 59 (14 matched; 45 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: Symbiotic (`symbiotic`)
- Website: [https://symbiotic.fi](https://symbiotic.fi)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: ethereum
- Contract surface: 54 unique implementations (54 raw deployments)
- Coverage basis: 2/2 confirmed own live verified implementations (100.0%); conservative 100.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $289,893,290.31
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for Symbiotic. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 2 contract row(s) across ethereum. Structural roles: 2 core. 1 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 2
- Structural roles: core (2)
- Contract kinds: contract (2)
- Detected standards: ownable (1)
- Frameworks: openzeppelin (1), openzeppelin-upgradeable (1)
- Upgradeable-pattern rows: 1

## Fork Analysis

0 of 10 contracts are derived from known codebases. 10 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x161954...599476`, chain 1)
- UnnamedContract (`0x58f617...495dbf`, chain 1)
- UnnamedContract (`0x6f80fd...1ce4ce`, chain 1)
- UnnamedContract (`0x70bc72...18685b`, chain 1)
- UnnamedContract (`0x788823...98594a`, chain 1)
- UnnamedContract (`0x9983ed...964d6d`, chain 1)
- UnnamedContract (`0xb5eff0...f6a84c`, chain 1)
- UnnamedContract (`0xe19860...ccbb4e`, chain 1)
- NetworkMiddlewareService (`0xd7dc9b...6899ad`, chain 1)
- VaultFactory (`0xaeb6bd...f6a346`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 2; live-surface rows included: 2 (2 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 10/10 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/2 (100.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 10 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 44 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 1
- Confirmed-live implementations: 10 of 54 unique; 44 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/46
- Verified + Unaudited implementations: 44
- Verified by bytecode match: 0
- Unverified implementations: 8
- Unique implementations: 54
- Raw deployments: 54
- Audits discovered: 24 (24 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 8 fresh, 13 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 100.0% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 2 | 4.3% | 2025-04 |
| Statemind | Tier 2 | 2 | 4.3% | 2026-06 |
| Zellic | Tier 2 | 1 | 2.2% | 2024-07 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| NetworkMiddlewareService | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393636 | `0xd7dc9b...6899ad` | ✅ Audited |
| VaultFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393634 | `0xaeb6bd...f6a346` | ✅ Audited |

### ⚠️ Verified + Unaudited (44)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| BaseDelegatorHints | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa298e9...4123c7` | ⚠️ Unaudited |
| BaseSlasherHints | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x036536...aca8a8` | ⚠️ Unaudited |
| BurnerRouter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x42dd40...6463c0` | ⚠️ Unaudited |
| BurnerRouterFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x99f2b8...ab70a0` | ⚠️ Unaudited |
| CuratorRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x942244...13dfaa` | ⚠️ Unaudited |
| DefaultCollateral | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x03bf48...ffa5ac` | ⚠️ Unaudited |
| DefaultCollateralFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1bc8fc...d202ec` | ⚠️ Unaudited |
| DefaultCollateralMigrator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8f152f...3d4a43` | ⚠️ Unaudited |
| DefaultOperatorRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x16bfd3...82aa08` | ⚠️ Unaudited |
| DefaultOperatorRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6d52fc...22755d` | ⚠️ Unaudited |
| DefaultStakerRewards | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x41f640...21c20b` | ⚠️ Unaudited |
| DefaultStakerRewardsFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x290cab...a0a25f` | ⚠️ Unaudited |
| DelegatorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x985ed5...4e8c7b` | ⚠️ Unaudited |
| ETHx_Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcd6693...8a2b50` | ⚠️ Unaudited |
| FeeRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3bb11a...ff6ce3` | ⚠️ Unaudited |
| FullRestakeDecreaseHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0786ef...62d70a` | ⚠️ Unaudited |
| FullRestakeDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1e0061...a0e3f2` | ⚠️ Unaudited |
| MetadataService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x97efa5...125e5d` | ⚠️ Unaudited |
| mETH_Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x919c43...7ce231` | ⚠️ Unaudited |
| NetworkRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc773b1...1fd8aa` | ⚠️ Unaudited |
| NetworkRestakeDecreaseHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe46d87...ef8bcf` | ⚠️ Unaudited |
| NetworkRestakeDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc583e3...e82e8a` | ⚠️ Unaudited |
| NetworkRestakeRedistributeHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x8a76a3...f07845` | ⚠️ Unaudited |
| OperatorNetworkSpecificDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89391b...6d90fb` | ⚠️ Unaudited |
| OperatorRegistry | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xad817a...81af9f` | ⚠️ Unaudited |
| OperatorSpecificDecreaseHook | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcc7fd9...6b006a` | ⚠️ Unaudited |
| OperatorSpecificDelegator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xef91d6...30aedf` | ⚠️ Unaudited |
| OptInService | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x713341...16633c` | ⚠️ Unaudited |
| OptInServiceHints | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe58ed8...e6a29f` | ⚠️ Unaudited |
| rETH_Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x89e391...a9b272` | ⚠️ Unaudited |
| sfrxETH_Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe5821...ff0c4b` | ⚠️ Unaudited |
| Slasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e6ae5...6c85fb` | ⚠️ Unaudited |
| SlasherFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x685c2e...1e48fd` | ⚠️ Unaudited |
| SlasherHints | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x234148...98a4c7` | ⚠️ Unaudited |
| swETH_Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1aca33...c54529` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | ethereum | n/a | `0xa13e65...06866b` | ⚠️ Unaudited |
| Vault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd649a...08065c` | ⚠️ Unaudited |
| VaultConfigurator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x29300b...0441ec` | ⚠️ Unaudited |
| VaultHints | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xeaddc9...0fc9bc` | ⚠️ Unaudited |
| VaultTokenized | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a0dc8...669cfe` | ⚠️ Unaudited |
| VetoSlasher | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xae5bb0...c458cc` | ⚠️ Unaudited |
| VetoSlasherHints | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x653815...5b8651` | ⚠️ Unaudited |
| WstETH | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7f39c5...5e2ca0` | ⚠️ Unaudited |
| wstETH_Burner | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdcac89...b5b324` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393628 | `0x161954...599476` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393629 | `0x58f617...495dbf` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393630 | `0x6f80fd...1ce4ce` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393631 | `0x70bc72...18685b` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393632 | `0x788823...98594a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393633 | `0x9983ed...964d6d` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393635 | `0xb5eff0...f6a84c` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-393637 | `0xe19860...ccbb4e` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [ChainSecurity_DefaultCollateral.pdf (also discovered via alternate URL)](https://github.com/symbioticfi/collateral/blob/main/audits/ChainSecurity_DefaultCollateral.pdf) | ChainSecurity | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Statemind_DefaultCollateral.pdf (also discovered via alternate URL)](https://github.com/symbioticfi/collateral/blob/main/audits/Statemind_DefaultCollateral.pdf) | Statemind | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Download Bailsec Rewards V2 report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/core/delegator-simplify/audits/Bailsec-CoreV2.pdf) | Bailsec | Audit | 2026-06 | fresh | Direct | contract_name | matched | 3 | 0 | 0 | 9 | high |
| [Download Bailsec Rewards V2 report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/core/delegator-simplify/audits/Bailsec-CoreV2Extension.pdf) | Bailsec | Audit | 2026-06 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Download Statemind Core V2 audit report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/core/delegator-simplify/audits/Statemind-CoreV2.pdf) | Statemind | Audit | 2026-06 | fresh | Direct | contract_name | matched | 3 | 0 | 0 | 11 | high |
| [Download Ackee Rewards V2 report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/rewards-v2/main/audits/Ackee-RewardsV2.pdf) | Ackee Blockchain | Audit | 2026-01 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Download Bailsec Rewards V2 report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/rewards-v2/main/audits/Bailsec-RewardsV2.pdf) | Bailsec | Audit | 2025-11 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Download Cyfrin Relay Contracts (BLS12-381) report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/relay-contracts/main/audits/Cyfrin-RelayContracts-BLS12381.pdf) | Cyfrin | Audit | 2025-12 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Download Sigma Prime Relay Contracts & Network report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/relay-contracts/main/audits/SigmaPrime-RelayContracts%26Network.pdf) | Sigma Prime | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 33 | high |
| [Download Cyfrin Relay Contracts & Network report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/relay-contracts/main/audits/Cyfrin-RelayContracts%26Network.pdf) | Cyfrin | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 45 | high |
| [Download Sherlock Relay Contracts & Network contest report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/relay-contracts/main/audits/Sherlock-RelayContracts%26Network.pdf) | Sherlock | Contest | 2025-07 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 72 | high |
| [Download Bailsec Relay Contracts review (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/relay-contracts/main/audits/Bailsec-RelayContracts.pdf) | Bailsec | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Download Statemind AI Relay Contracts review](https://raw.githubusercontent.com/symbioticfi/relay-contracts/main/audits/StatemindAI-RelayContracts.pdf) | Statemind AI | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [StatemindAI-RelayContracts.pdf](https://github.com/symbioticfi/relay-contracts/blob/main/audits/StatemindAI-RelayContracts.pdf) | StatemindAI | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 38 | high |
| [Download Cantina Core contest report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/core/main/audits/Cantina-Core.pdf) | Spearbit | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 6 | medium |
| [Download Certora Core audit report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/core/main/audits/Certora-Core.pdf) | Certora | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [Download OtterSec Core & Rewards report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/core/main/audits/OtterSec-Core%26Rewards.pdf) | OtterSec | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [Download ChainSecurity Core audit report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/core/main/audits/ChainSecurity-Core.pdf) | ChainSecurity | Audit | 2024-08 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 25 | high |
| [Download Zellic Core audit report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/core/main/audits/Zellic-Core.pdf) | Zellic | Audit | 2024-07 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 11 | high |
| [Download Statemind Core & Rewards audit report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/core/main/audits/Statemind-Core%26Rewards.pdf) | Statemind | Audit | 2024-12 | aging | Direct | contract_name | matched | 2 | 0 | 0 | 35 | high |
| [Download ChainSecurity Rewards V1 audit report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/rewards/main/audits/ChainSecurity-Rewards.pdf) | ChainSecurity | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Download ChainSecurity Burners audit report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/burners/main/audits/ChainSecurity-Burners.pdf) | ChainSecurity | Audit | 2024-11 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 32 | high |
| [Download Statemind Hooks audit report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/hooks/main/audits/Statemind-Hooks.pdf) | Statemind | Audit | 2024-12 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Download ChainSecurity Periphery audit report (also discovered via alternate URL)](https://raw.githubusercontent.com/symbioticfi/periphery/main/audits/ChainSecurity-Periphery.pdf) | ChainSecurity | Audit | 2024-08 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [18307] ChainSecurity_DefaultCollateral.pdf — no match: Scope section explicitly lists four contracts in src/contracts/. Audit date is May 14, 2024 from cover page.
- [18308] Statemind_DefaultCollateral.pdf — no match: Scope section lists four files: Factory.sol, DefaultBond.sol, DefaultBondFactory.sol, Permit2Lib.sol. Audit date range 26-04-2024 to 01-05-2024, using end date.
- [18309] Download Bailsec Rewards V2 report — matched: All contracts explicitly listed in scope and detailed in detection sections. Audit date inferred from 'June 2026' in header.
- [18311] Download Bailsec Rewards V2 report — no match: The report covers three adapters: RestakingAppAdapter, AaveV3Adapter, and MorphoVaultV2Adapter. The audit date is derived from 'June 2026' in the header, using the last day of the month.
- [18313] Download Statemind Core V2 audit report — matched: Extracted 14 contract names from the 'Project Scope' section listing files. Audit date derived from the latest commit date in the timeline (26-06-2026).
- [18315] Download Ackee Rewards V2 report — no match: Scope explicitly listed in Executive Summary Revision 1.0. Audit date from cover page and Appendix A.
- [18317] Download Bailsec Rewards V2 report — no match: Extracted 6 contracts from the scope section (Rewards module: ProtocolFees, CumulativeMerkleRewards, VaultSnapshotRewards, Rewards; Registry module: CuratorRegistry, FeeRegistry). Audit date inferred from 'November ‘2025' as end of month.
- [18319] Download Cyfrin Relay Contracts (BLS12-381) report — no match: Only one contract in scope: BLS12381 library.
- [18321] Download Sigma Prime Relay Contracts & Network report — no match: Extracted contract names from scope section and findings. Audit date inferred from 'September, 2025' on cover page, using last day of month.
- [18323] Download Cyfrin Relay Contracts & Network report — no match: All contracts listed in the Audit Scope section were extracted. The audit date is from the cover page: September 15, 2025.
- [18325] Download Sherlock Relay Contracts & Network contest report — no match: Extracted all contracts from the scope file listing. The audit date is the end of the range June 19 - July 10, 2025.
- [18327] Download Bailsec Relay Contracts review — no match: Audit report covers middleware SDK contracts: SettlementLogic, EpochManagerLogic, VaultManagerLogic, OZAccessControl. Date inferred from 'May ‘2025' in header and detection period 28th May to 11th June.
- [18329] Download Statemind AI Relay Contracts review — no match: Extracted 38 contract names from the 'Project Scope' section listing files. Audit date found in header and project brief.
- [18330] StatemindAI-RelayContracts.pdf — no match: Extracted 38 contract names from the 'Project Scope' section listing files. Audit date found in header and project brief.
- [18337] Download Cantina Core contest report — no match: No explicit scope section; contracts extracted from finding contexts. Date from cover page: 'December 9, 2024'.
- [18339] Download Certora Core audit report — no match: Scope includes all contracts under /symbiotic/core/src/contracts/ directories: common, delegator, libraries, service, slasher, vault, interface. Specific contracts mentioned in findings are extracted.
- [18341] Download OtterSec Core & Rewards report — no match: Scope section explicitly lists 'core' and 'rewards' as the programs/modules in scope. No individual contract files are listed; only these two high-level modules.
- [18343] Download ChainSecurity Core audit report — matched: Extracted 27 contract names from the scope table and version 2 additions. Audit date from cover page.
- [18345] Download Zellic Core audit report — matched: Extracted contract names from scope table and threat model modules. Audit date from cover page.
- [18347] Download Statemind Core & Rewards audit report — matched: Extracted contract names from the 'Project Scope' section listing files, and additional contracts mentioned in findings. Audit date is the final re-audit date (20-12-2024).
- [18351] Download ChainSecurity Rewards V1 audit report — no match: All contracts listed in the scope table on page 5 of the report.
- [18355] Download ChainSecurity Burners audit report — no match: Extracted contracts from scope tables for versions 1 and 3. Audit date from cover page: November 11, 2024.
- [18357] Download Statemind Hooks audit report — no match: Scope section explicitly lists 7 hook contracts. Audit timeline ends 27-12-2024.
- [18359] Download ChainSecurity Periphery audit report — no match: Two contracts in scope: DefaultCollateralMigrator and its interface IDefaultCollateralMigrator. Audit date from cover page.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| ChainSecurity_DefaultCollateral.pdf | Factory | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_DefaultCollateral.pdf | DefaultCollateral | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_DefaultCollateral.pdf | DefaultCollateralFactory | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_DefaultCollateral.pdf | Permit2Lib | unmatched — not counted | — | listed in scope table (diff only) | no |
| Statemind_DefaultCollateral.pdf | Factory | unmatched — not counted | — | listed in scope | no |
| Statemind_DefaultCollateral.pdf | DefaultBond | unmatched — not counted | — | listed in scope | no |
| Statemind_DefaultCollateral.pdf | DefaultBondFactory | unmatched — not counted | — | listed in scope | no |
| Statemind_DefaultCollateral.pdf | Permit2Lib | unmatched — not counted | — | listed in scope | no |
| Download Bailsec Rewards V2 report | VaultV2 | unmatched — not counted | — | listed in scope and described in detection section | no |
| Download Bailsec Rewards V2 report | WithdrawalQueue | unmatched — not counted | — | listed in scope and described in detection section | no |
| Download Bailsec Rewards V2 report | WithdrawalQueueFactory | own contract | 0x6f80fd… (selected) `0x6f80fd...1ce4ce` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Download Bailsec Rewards V2 report | UniversalDelegator | unmatched — not counted | — | listed in scope and described in detection section | no |
| Download Bailsec Rewards V2 report | AdapterRegistry | own contract | 0x788823… (selected) `0x788823...98594a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Download Bailsec Rewards V2 report | ProtocolFeeRegistry | own contract | 0x9983ed… (selected) `0x9983ed...964d6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Download Bailsec Rewards V2 report | AdapterFactory | unmatched — not counted | — | listed in scope and described in detection section | no |
| Download Bailsec Rewards V2 report | Adapter | unmatched — not counted | — | listed in scope and described in detection section | no |
| Download Bailsec Rewards V2 report | AppAdapter | unmatched — not counted | — | listed in scope and described in detection section | no |
| Download Bailsec Rewards V2 report | MorphoVaultV2Adapter | unmatched — not counted | — | listed in scope and described in detection section | no |
| Download Bailsec Rewards V2 report | AaveV3Adapter | unmatched — not counted | — | listed in scope and described in detection section | no |
| Download Bailsec Rewards V2 report | MigratablesFactory | unmatched — not counted | — | listed in scope and described in detection section | no |
| Download Bailsec Rewards V2 report | RestakingAppAdapter | unmatched — not counted | — | Listed in scope section 'Detection' and described as an AppAdapter for nested VaultV2 asset chains. | no |
| Download Bailsec Rewards V2 report | AaveV3Adapter | unmatched — not counted | — | Listed in scope section 'Detection' and described as a VaultV2 adapter for Aave V3 supply positions. | no |
| Download Bailsec Rewards V2 report | MorphoVaultV2Adapter | unmatched — not counted | — | Listed in scope section 'Detection' and described as a VaultV2 adapter for Morpho Vault V2 positions. | no |
| Download Statemind Core V2 audit report | CoWSwapConverter | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core V2 audit report | MerklClaimer | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core V2 audit report | RestakingAppAdapter | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core V2 audit report | VaultV2 | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core V2 audit report | WithdrawalQueue | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core V2 audit report | WithdrawalQueueFactory | own contract | 0x6f80fd… (selected) `0x6f80fd...1ce4ce` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Download Statemind Core V2 audit report | UniversalDelegator | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core V2 audit report | AdapterRegistry | own contract | 0x788823… (selected) `0x788823...98594a` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Download Statemind Core V2 audit report | ProtocolFeeRegistry | own contract | 0x9983ed… (selected) `0x9983ed...964d6d` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Download Statemind Core V2 audit report | AdapterFactory | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core V2 audit report | Adapter | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core V2 audit report | AppAdapter | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core V2 audit report | MorphoVaultV2Adapter | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core V2 audit report | AaveV3Adapter | unmatched — not counted | — | listed in scope | no |
| Download Ackee Rewards V2 report | CumulativeMerkleRewards | unmatched — not counted | — | listed in scope | no |
| Download Ackee Rewards V2 report | CuratorRegistry | unmatched — not counted | — | listed in scope | no |
| Download Ackee Rewards V2 report | FeeRegistry | unmatched — not counted | — | listed in scope | no |
| Download Ackee Rewards V2 report | ProtocolFees | unmatched — not counted | — | listed in scope | no |
| Download Ackee Rewards V2 report | Rewards | unmatched — not counted | — | listed in scope | no |
| Download Ackee Rewards V2 report | VaultSnapshotRewards | unmatched — not counted | — | listed in scope | no |
| Download Bailsec Rewards V2 report | ProtocolFees | unmatched — not counted | — | listed in scope as part of Rewards module | no |
| Download Bailsec Rewards V2 report | CumulativeMerkleRewards | unmatched — not counted | — | listed in scope as part of Rewards module | no |
| Download Bailsec Rewards V2 report | VaultSnapshotRewards | unmatched — not counted | — | listed in scope as part of Rewards module | no |
| Download Bailsec Rewards V2 report | Rewards | unmatched — not counted | — | listed in scope as part of Rewards module | no |
| Download Bailsec Rewards V2 report | CuratorRegistry | unmatched — not counted | — | listed in scope as part of Registry module | no |
| Download Bailsec Rewards V2 report | FeeRegistry | unmatched — not counted | — | listed in scope as part of Registry module | no |
| Download Cyfrin Relay Contracts (BLS12-381) report | BLS12381 | unmatched — not counted | — | listed in scope | no |
| Download Sigma Prime Relay Contracts & Network report | ValSetDriver | unmatched — not counted | — | Listed in scope as a valset driver module. | no |
| Download Sigma Prime Relay Contracts & Network report | EpochManager | unmatched — not counted | — | Listed in scope and findings reference this file. | no |
| Download Sigma Prime Relay Contracts & Network report | Settlement | unmatched — not counted | — | Listed in scope and findings reference this file. | no |
| Download Sigma Prime Relay Contracts & Network report | KeyBlsBn254 | unmatched — not counted | — | Listed in scope and findings reference this file. | no |
| Download Sigma Prime Relay Contracts & Network report | KeyEcdsaSecp256k1 | unmatched — not counted | — | Listed in scope and findings reference this file. | no |
| Download Sigma Prime Relay Contracts & Network report | OperatorsJail | unmatched — not counted | — | Listed in scope as a voting power extension module. | no |
| Download Sigma Prime Relay Contracts & Network report | WeightedTokensVPCalc | unmatched — not counted | — | Listed in scope as a voting power common calculation module. | no |
| Download Sigma Prime Relay Contracts & Network report | Scaler | unmatched — not counted | — | Listed in scope and findings reference this file. | no |
| Download Sigma Prime Relay Contracts & Network report | ChainlinkPriceFeed | unmatched — not counted | — | Listed in scope and findings reference this file. | no |
| Download Sigma Prime Relay Contracts & Network report | NormalizedTokenDecimalsVPCalc | unmatched — not counted | — | Listed in scope as a voting power common calculation module. | no |
| Download Sigma Prime Relay Contracts & Network report | VotingPowerProvider | unmatched — not counted | — | Listed in scope as a voting power module. | no |
| Download Sigma Prime Relay Contracts & Network report | SigVerifierBlsBn254Simple | unmatched — not counted | — | Listed in scope and findings reference this file. | no |
| Download Sigma Prime Relay Contracts & Network report | NetworkManager | unmatched — not counted | — | Listed in scope as a base module contract. | no |
| Download Sigma Prime Relay Contracts & Network report | OzEIP712 | unmatched — not counted | — | Listed in scope as a base module contract. | no |
| Download Sigma Prime Relay Contracts & Network report | PermissionManager | unmatched — not counted | — | Listed in scope as a base module contract. | no |
| Download Sigma Prime Relay Contracts & Network report | OzAccessControl | unmatched — not counted | — | Listed in scope as a common permissions module. | no |
| Download Sigma Prime Relay Contracts & Network report | OzAccessManaged | unmatched — not counted | — | Listed in scope as a common permissions module. | no |
| Download Sigma Prime Relay Contracts & Network report | OzOwnable | unmatched — not counted | — | Listed in scope as a common permissions module. | no |
| Download Sigma Prime Relay Contracts & Network report | KeyRegistry | unmatched — not counted | — | Listed in scope as a key registry module. | no |
| Download Sigma Prime Relay Contracts & Network report | Network | unmatched — not counted | — | Listed in scope as a network module. | no |
| Download Sigma Prime Relay Contracts & Network report | VotingPowerCalcManager | unmatched — not counted | — | Listed in scope as a voting power base module. | no |
| Download Sigma Prime Relay Contracts & Network report | EqualStakeVPCalc | unmatched — not counted | — | Listed in scope as a voting power common calculation module. | no |
| Download Sigma Prime Relay Contracts & Network report | PricedTokensChainlinkVPCalc | unmatched — not counted | — | Listed in scope as a voting power common calculation module. | no |
| Download Sigma Prime Relay Contracts & Network report | WeightedVaultsVPCalc | unmatched — not counted | — | Listed in scope as a voting power common calculation module. | no |
| Download Sigma Prime Relay Contracts & Network report | BaseRewards | unmatched — not counted | — | Listed in scope as a voting power extension module. | no |
| Download Sigma Prime Relay Contracts & Network report | BaseSlashing | unmatched — not counted | — | Listed in scope as a voting power extension module. | no |
| Download Sigma Prime Relay Contracts & Network report | MultiToken | unmatched — not counted | — | Listed in scope as a voting power extension module. | no |
| Download Sigma Prime Relay Contracts & Network report | OperatorsBlacklist | unmatched — not counted | — | Listed in scope as a voting power extension module. | no |
| Download Sigma Prime Relay Contracts & Network report | OperatorsWhitelist | unmatched — not counted | — | Listed in scope as a voting power extension module. | no |
| Download Sigma Prime Relay Contracts & Network report | OperatorVaults | unmatched — not counted | — | Listed in scope as a voting power extension module. | no |
| Download Sigma Prime Relay Contracts & Network report | OpNetVaultAutoDeploy | unmatched — not counted | — | Listed in scope as a voting power extension module. | no |
| Download Sigma Prime Relay Contracts & Network report | SharedVaults | unmatched — not counted | — | Listed in scope as a voting power extension module. | no |
| Download Sigma Prime Relay Contracts & Network report | ValSetVerifier | unmatched — not counted | — | Listed in scope and findings reference this file. | no |
| Download Cyfrin Relay Contracts & Network report | KeyBlsBn254 | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | KeyEcdsaSecp256k1 | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | SigBlsBn254 | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | SigEcdsaSecp256k1 | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | Checkpoints | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | PersistentSet | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | InputNormalizer | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | KeyTags | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | Scaler | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | ValSetVerifier | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | NetworkManager | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | OzEIP712 | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | PermissionManager | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | OzAccessControl | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | OzAccessManaged | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | OzOwnable | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | KeyRegistry | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | Network | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | ExtraDataStorageHelper | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | SigVerifierBlsBn254Simple | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | SigVerifierBlsBn254ZK | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | Settlement | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | EpochManager | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | ValSetDriver | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | VotingPowerCalcManager | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | ChainlinkPriceFeed | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | EqualStakeVPCalc | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | NormalizedTokenDecimalsVPCalc | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | PricedTokensChainlinkVPCalc | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | WeightedTokensVPCalc | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | WeightedVaultsVPCalc | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | BaseRewardsLogic | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | BaseSlashingLogic | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | OpNetVaultAutoDeployLogic | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | BaseRewards | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | BaseSlashing | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | MultiToken | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | OperatorsBlacklist | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | OperatorsJail | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | OperatorsWhitelist | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | OperatorVaults | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | OpNetVaultAutoDeploy | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | SharedVaults | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | VotingPowerProviderLogic | unmatched — not counted | — | listed in scope | no |
| Download Cyfrin Relay Contracts & Network report | VotingPowerProvider | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | MyKeyRegistry | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | MyNetwork | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | MySettlement | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | MyValSetDriver | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | MyVotingPowerProvider | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | KeyBlsBn254 | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | KeyEcdsaSecp256k1 | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | SigBlsBn254 | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | SigEcdsaSecp256k1 | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | Checkpoints | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | PersistentSet | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | InputNormalizer | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | KeyTags | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | ValSetVerifier | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | NetworkManager | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | OzEIP712 | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | PermissionManager | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | OzAccessControl | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | OzAccessManaged | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | OzOwnable | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | KeyRegistry | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | Network | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | Settlement | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | ExtraDataStorageHelper | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | SigVerifierBlsBn254Simple | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | SigVerifierBlsBn254ZK | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | EpochManager | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | ValSetDriver | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | VotingPowerCalcManager | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | EqualStakeVPCalc | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | BaseRewards | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | BaseSlashing | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | BaseRewardsLogic | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | BaseSlashingLogic | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | OpNetVaultAutoDeployLogic | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | MultiToken | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | OperatorsBlacklist | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | OperatorsJail | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | OperatorsWhitelist | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | OperatorVaults | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | OpNetVaultAutoDeploy | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | SharedVaults | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | VotingPowerProviderLogic | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | VotingPowerProvider | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | INetworkManager | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | IOzEIP712 | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | IPermissionManager | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | IOzAccessControl | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | IOzAccessManaged | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | IOzOwnable | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | IKeyRegistry | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | INetwork | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | ISetMaxNetworkLimitHook | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | ISettlement | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | ISigVerifierBlsBn254Simple | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | ISigVerifierBlsBn254ZK | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | ISigVerifier | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | IVerifier | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | IEpochManager | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | IValSetDriver | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | IVotingPowerCalcManager | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | IEqualStakeVPCalc | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | IBaseRewards | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | IBaseSlashing | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | IMultiToken | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | IOperatorsBlacklist | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | IOperatorsJail | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | IOperatorsWhitelist | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | IOperatorVaults | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | IOpNetVaultAutoDeploy | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | ISharedVaults | unmatched — not counted | — | listed in scope | no |
| Download Sherlock Relay Contracts & Network contest report | IVotingPowerProvider | unmatched — not counted | — | listed in scope | no |
| Download Bailsec Relay Contracts review | SettlementLogic | unmatched — not counted | — | mentioned in findings Issue_01, Issue_02, Issue_03, Issue_04, Issue_05 | no |
| Download Bailsec Relay Contracts review | EpochManagerLogic | unmatched — not counted | — | mentioned in findings Issue_06, Issue_07 | no |
| Download Bailsec Relay Contracts review | VaultManagerLogic | unmatched — not counted | — | mentioned in findings Issue_08, Issue_09, Issue_10 | no |
| Download Bailsec Relay Contracts review | OZAccessControl | unmatched — not counted | — | mentioned in finding Issue_11 | no |
| Download Statemind AI Relay Contracts review | Master | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | KeyManagerLogic | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | ForcePauseSelfRegisterOperators | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | InputNormalizer | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | SigEddsaCurve25519 | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | EpochManager | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | KeyEcdsaSecp256k1 | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | SigBlsBn254 | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | VaultManager | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | NetworkManager | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | ValSetVerifier | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | Tokens | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | SettlementLogic | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | ExtraDataStorageHelper | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | VaultManagerLogic | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | OperatorManager | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | BN254 | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | SigEcdsaSecp256k1 | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | OperatorManagerLogic | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | SelfRegisterOperators | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | Settlement | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | OzEIP712 | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | KeyEddsaCurve25519 | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | Replica | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | OzEIP712Logic | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | ConfigProviderLogic | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | KeyBlsBn254 | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | WhitelistSelfRegisterOperators | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | SCL_sqrtMod_5mod8 | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | SigVerifierBlsBn254Simple | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | PermissionManager | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | SharedVaults | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | PersistentSet | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | KeyManager | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | SigVerifierBlsBn254ZK | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | EpochManagerLogic | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | KeyTags | unmatched — not counted | — | listed in scope table | no |
| Download Statemind AI Relay Contracts review | OzAccessControl | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | Master | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | KeyManagerLogic | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | ForcePauseSelfRegisterOperators | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | InputNormalizer | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | SigEddsaCurve25519 | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | EpochManager | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | KeyEcdsaSecp256k1 | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | SigBlsBn254 | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | VaultManager | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | NetworkManager | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | ValSetVerifier | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | Tokens | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | SettlementLogic | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | ExtraDataStorageHelper | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | VaultManagerLogic | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | OperatorManager | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | BN254 | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | SigEcdsaSecp256k1 | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | OperatorManagerLogic | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | SelfRegisterOperators | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | Settlement | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | OzEIP712 | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | KeyEddsaCurve25519 | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | Replica | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | OzEIP712Logic | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | ConfigProviderLogic | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | KeyBlsBn254 | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | WhitelistSelfRegisterOperators | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | SCL_sqrtMod_5mod8 | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | SigVerifierBlsBn254Simple | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | PermissionManager | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | SharedVaults | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | PersistentSet | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | KeyManager | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | SigVerifierBlsBn254ZK | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | EpochManagerLogic | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | KeyTags | unmatched — not counted | — | listed in scope table | no |
| StatemindAI-RelayContracts.pdf | OzAccessControl | unmatched — not counted | — | listed in scope table | no |
| Download Cantina Core contest report | VetoSlasher | unmatched — not counted | — | Context: VetoSlasher.sol#L80 in finding 3.1.2 | no |
| Download Cantina Core contest report | FullRestakeDelegator | unmatched — not counted | — | Context: FullRestakeDelegator.sol#L29-L32, L56, L77 in finding 3.1.3 | no |
| Download Cantina Core contest report | NetworkRestakeDelegator | unmatched — not counted | — | Context: NetworkRestakeDelegator.sol#L58, L78, L99 in finding 3.1.3 | no |
| Download Cantina Core contest report | Checkpoints | unmatched — not counted | — | Context: Checkpoints.sol#L286, L330-L333 in finding 3.1.3 | no |
| Download Cantina Core contest report | BaseSlasher | unmatched — not counted | — | Context: BaseSlasher.sol#L44, L73 in finding 3.1.3 and description in finding 3.1.4 | no |
| Download Cantina Core contest report | VaultStorage | unmatched — not counted | — | Context: VaultStorage.sol#L117-L121, L176, L190, L204 in finding 3.1.3 | no |
| Download Certora Core audit report | VetoSlasher | unmatched — not counted | — | listed in scope and findings | no |
| Download Certora Core audit report | Vault | unmatched — not counted | — | listed in scope and findings | no |
| Download Certora Core audit report | BaseDelegator | unmatched — not counted | — | listed in scope and findings | no |
| Download Certora Core audit report | Factory | unmatched — not counted | — | listed in scope and findings | no |
| Download Certora Core audit report | NetworkRestakeDelegator | unmatched — not counted | — | listed in scope and findings | no |
| Download Certora Core audit report | FullRestakeDelegator | unmatched — not counted | — | listed in scope and findings | no |
| Download Certora Core audit report | BaseSlasher | unmatched — not counted | — | listed in scope and findings | no |
| Download Certora Core audit report | Slasher | unmatched — not counted | — | listed in scope and findings | no |
| Download Certora Core audit report | IEntity | unmatched — not counted | — | listed in scope and findings | no |
| Download Certora Core audit report | IDelegatorHook | unmatched — not counted | — | mentioned in BaseDelegator.sol findings | no |
| Download Certora Core audit report | MigratableFactory | unmatched — not counted | — | listed in scope and findings | no |
| Download OtterSec Core & Rewards report | core | unmatched — not counted | — | listed in scope table: 'core' with description 'The core implementation of Symbiotic...' | no |
| Download OtterSec Core & Rewards report | rewards | unmatched — not counted | — | listed in scope table: 'rewards' with description 'This module contains the logic for the Symbiotic Staker Rewards interface.' | no |
| Download ChainSecurity Core audit report | NetworkRegistry | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | SlasherFactory | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | VaultConfigurator | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | OperatorRegistry | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | DelegatorFactory | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | VaultFactory | own contract | VaultFactory (selected) `0xaeb6bd...f6a346` — deployed 2025-01-08 16:24:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Download ChainSecurity Core audit report | MetadataService | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | NetworkMiddlewareService | own contract | NetworkMiddlewareService (selected) `0xd7dc9b...6899ad` — deployed 2025-01-08 16:32:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Download ChainSecurity Core audit report | OptInService | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | Checkpoints | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | ERC4626Math | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | StaticDelegateCallable | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | MigratableEntityProxy | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | Registry | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | MigratablesFactory | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | Factory | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | MigratableEntity | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | Entity | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | VaultStorage | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | Vault | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | Slasher | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | BaseSlasher | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | VetoSlasher | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | BaseDelegator | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | FullRestakeDelegator | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | NetworkRestakeDelegator | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Core audit report | Subnetwork | unmatched — not counted | — | added in version 2 scope | no |
| Download Zellic Core audit report | BaseDelegator | unmatched — not counted | — | Threat Model section lists Module: BaseDelegator.sol | no |
| Download Zellic Core audit report | FullRestakeDelegator | unmatched — not counted | — | Threat Model section lists Module: FullRestakeDelegator.sol | no |
| Download Zellic Core audit report | NetworkRestakeDelegator | unmatched — not counted | — | Threat Model section lists Module: NetworkRestakeDelegator.sol | no |
| Download Zellic Core audit report | Slasher | unmatched — not counted | — | Threat Model section lists Module: Slasher.sol | no |
| Download Zellic Core audit report | Vault | unmatched — not counted | — | Threat Model section lists Module: Vault.sol | no |
| Download Zellic Core audit report | VetoSlasher | unmatched — not counted | — | Threat Model section lists Module: VetoSlasher.sol; also a finding target | no |
| Download Zellic Core audit report | DelegatorFactory | unmatched — not counted | — | Listed in scope table under Programs | no |
| Download Zellic Core audit report | NetworkRegistry | unmatched — not counted | — | Listed in scope table under Programs | no |
| Download Zellic Core audit report | OperatorRegistry | unmatched — not counted | — | Listed in scope table under Programs | no |
| Download Zellic Core audit report | SlasherFactory | unmatched — not counted | — | Listed in scope table under Programs | no |
| Download Zellic Core audit report | VaultConfigurator | unmatched — not counted | — | Listed in scope table under Programs | no |
| Download Zellic Core audit report | VaultFactory | own contract | VaultFactory (selected) `0xaeb6bd...f6a346` — deployed 2025-01-08 16:24:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Download Statemind Core & Rewards audit report | VaultConfigurator | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | SlasherFactory | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | DelegatorFactory | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | VaultFactory | own contract | VaultFactory (selected) `0xaeb6bd...f6a346` — deployed 2025-01-08 16:24:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Download Statemind Core & Rewards audit report | Checkpoints | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | ERC4626Math | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | Subnetwork | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | StaticDelegateCallable | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | Factory | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | MigratableEntityProxy | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | MigratablesFactory | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | Registry | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | Entity | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | MigratableEntity | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | OperatorRegistry | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | BaseSlasher | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | Slasher | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | VetoSlasher | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | OptInService | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | NetworkMiddlewareService | own contract | NetworkMiddlewareService (selected) `0xd7dc9b...6899ad` — deployed 2025-01-08 16:32:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Download Statemind Core & Rewards audit report | MetadataService | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | NetworkRestakeDelegator | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | FullRestakeDelegator | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | BaseDelegator | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | NetworkRegistry | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | Vault | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | VaultTokenized | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | VaultStorage | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | OperatorNetworkSpecificDelegator | unmatched — not counted | — | listed in scope | no |
| Download Statemind Core & Rewards audit report | OperatorSpecificDelegator | unmatched — not counted | — | mentioned in findings | no |
| Download Statemind Core & Rewards audit report | DefaultRewardsDistributor | unmatched — not counted | — | mentioned in findings | no |
| Download Statemind Core & Rewards audit report | IVault | unmatched — not counted | — | mentioned in findings | no |
| Download Statemind Core & Rewards audit report | IVetoSlasher | unmatched — not counted | — | mentioned in findings | no |
| Download Statemind Core & Rewards audit report | IOperatorNetworkSpecificDelegator | unmatched — not counted | — | mentioned in findings | no |
| Download Statemind Core & Rewards audit report | IRewardsDistributor | unmatched — not counted | — | mentioned in findings | no |
| Download Statemind Core & Rewards audit report | IBaseDelegator | unmatched — not counted | — | mentioned in findings | no |
| Download Statemind Core & Rewards audit report | AccessControlUpgradeable | unmatched — not counted | — | mentioned in findings | no |
| Download ChainSecurity Rewards V1 audit report | DefaultOperatorRewards | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Rewards V1 audit report | DefaultOperatorRewardsFactory | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Rewards V1 audit report | DefaultStakerRewards | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Rewards V1 audit report | DefaultStakerRewardsFactory | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Rewards V1 audit report | IDefaultOperatorRewards | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Rewards V1 audit report | IDefaultOperatorRewardsFactory | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Rewards V1 audit report | IDefaultStakerRewards | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Rewards V1 audit report | IDefaultStakerRewardsFactory | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Rewards V1 audit report | IStakerRewards | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Burners audit report | BurnerRouter | unmatched — not counted | — | listed in scope table for version 3 | no |
| Download ChainSecurity Burners audit report | BurnerRouterFactory | unmatched — not counted | — | listed in scope table for version 3 | no |
| Download ChainSecurity Burners audit report | IBurnerRouter | unmatched — not counted | — | listed in scope table for version 3 | no |
| Download ChainSecurity Burners audit report | IBurnerRouterFactory | unmatched — not counted | — | listed in scope table for version 3 | no |
| Download ChainSecurity Burners audit report | AddressRequests | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | SelfDestruct | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | UintRequests | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | ETHx_Burner | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | mETH_Burner | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | rETH_Burner | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | sfrxETH_Burner | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | swETH_Burner | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | wstETH_Burner | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | IAddressRequests | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | IUintRequests | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | IETHx_Burner | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | IStaderConfig | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | IStaderStakePoolsManager | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | IUserWithdrawalManager | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | IMETH | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | IStaking | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | ImETH_Burner | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | IRocketTokenRETH | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | IrETH_Burner | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | IFraxEtherRedemptionQueue | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | IsfrxETH_Burner | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | ISwETH | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | ISwEXIT | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | IswETH_Burner | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | IWithdrawalQueue | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | IWstETH | unmatched — not counted | — | listed in scope for version 1 | no |
| Download ChainSecurity Burners audit report | IwstETH_Burner | unmatched — not counted | — | listed in scope for version 1 | no |
| Download Statemind Hooks audit report | NetworkRestakeDecreaseHook | unmatched — not counted | — | listed in scope | no |
| Download Statemind Hooks audit report | NetworkRestakeRedistributeHook | unmatched — not counted | — | listed in scope | no |
| Download Statemind Hooks audit report | FullRestakeResetHook | unmatched — not counted | — | listed in scope | no |
| Download Statemind Hooks audit report | NetworkRestakeResetHook | unmatched — not counted | — | listed in scope | no |
| Download Statemind Hooks audit report | OperatorSpecificResetHook | unmatched — not counted | — | listed in scope | no |
| Download Statemind Hooks audit report | FullRestakeDecreaseHook | unmatched — not counted | — | listed in scope | no |
| Download Statemind Hooks audit report | OperatorSpecificDecreaseHook | unmatched — not counted | — | listed in scope | no |
| Download ChainSecurity Periphery audit report | DefaultCollateralMigrator | unmatched — not counted | — | listed in scope table | no |
| Download ChainSecurity Periphery audit report | IDefaultCollateralMigrator | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 45 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 19
- Inherited remapped matches: 0
- Address-book scope dispositions: 11 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 414 unmatched
- Matched-own operational status: 11 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=23, medium=1
- Match method counts: unique_name=32

Zero-match audit list:

- [18307] ChainSecurity_DefaultCollateral.pdf
- [18308] Statemind_DefaultCollateral.pdf
- [18311] Download Bailsec Rewards V2 report
- [18315] Download Ackee Rewards V2 report
- [18317] Download Bailsec Rewards V2 report
- [18319] Download Cyfrin Relay Contracts (BLS12-381) report
- [18321] Download Sigma Prime Relay Contracts & Network report
- [18323] Download Cyfrin Relay Contracts & Network report
- [18325] Download Sherlock Relay Contracts & Network contest report
- [18327] Download Bailsec Relay Contracts review
- [18329] Download Statemind AI Relay Contracts review
- [18330] StatemindAI-RelayContracts.pdf
- [18337] Download Cantina Core contest report
- [18339] Download Certora Core audit report
- [18341] Download OtterSec Core & Rewards report
- [18351] Download ChainSecurity Rewards V1 audit report
- [18355] Download ChainSecurity Burners audit report
- [18357] Download Statemind Hooks audit report
- [18359] Download ChainSecurity Periphery audit report

Fork inheritance lineage and inherited audits are included when available.
