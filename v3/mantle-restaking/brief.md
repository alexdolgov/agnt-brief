# Agentic Audit Brief: Mantle Restaking

## Export Authority

- Production state: **published scope**
- Raw selected rows: 0 across 0 audit(s)
- Eligible audit results: 23 (0 matched; 23 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `7fbef0dcf68cde7195f117d9b41f1e6d89891da495a42b57ae29b5e338972213`

## Project Overview

- Project: Mantle Restaking (`mantle-restaking`)
- Website: [https://www.methprotocol.xyz/](https://www.methprotocol.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:00:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: mantle
- Contract surface: 1 unique implementations (1 raw deployments)
- Coverage basis: not assessable — No confirmed own live-verified denominator is available.
- DeFi Llama TVL: $34,742,417.44
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

No contract logic was present for Mantle Restaking in the closed normalized topography run; this brief does not infer a protocol purpose from missing code.

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

- UnnamedContract (`0xe6829d...59e8fa`, chain 5000)

## Contract Surface Quality

- Indexed contracts: 0; live-surface contracts included: 0 (0 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: not assessable
- Coverage assessment: not_assessable (low confidence) — No confirmed own live-verified denominator is available.
- Address-book implementation classification: 1 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 0 discovered implementations excluded (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 0
- Deployed-live implementations: 1 of 1 unique (rest dead/inactive/uninitialized)
- All verified address-book-owned implementations audited (incl. non-live): 0/0
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 23 (23 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 8 fresh, 4 aging, 10 stale, 1 unknown
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

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | mantle | unit-388870 | `0xe6829d...59e8fa` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Mantle_SCs_Aug23(Public)(Liquid%20Staking%20Protocol).pdf) | Hexens | Audit | 2023-08 | stale | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [Mantle_Sep23(Public) (Oracle).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/Mantle_Sep23(Public)%20(Oracle).pdf) | Hexens | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [mantle-cmeth-audit-aug-2024(Public).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/mantle-cmeth-audit-aug-2024(Public).pdf) | Hexens | Audit | 2024-09 | aging | Direct | n/a | no match | 0 | 0 | 0 | 7 | n/a |
| [mETH-Protocol-oct-25(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/mETH-Protocol-oct-25(Final).pdf) | Hexens | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 3 | n/a |
| [Blocksec-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/Blocksec-11-25.pdf) | Blocksec | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 6 | n/a |
| [Exvul-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/Exvul-11-25.pdf) | Exvul | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [Hexens-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/Hexens-11-25.pdf) | Hexens | Audit | 2025-10 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 4 | n/a |
| [MixBytes-11-25.pdf](https://github.com/mantle-lsp/audits/blob/main/buffer-pool/MixBytes-11-25.pdf) | MixBytes | Audit | 2025-11 | fresh | Direct | n/a | no match | 0 | 0 | 0 | 5 | n/a |
| [blocksec.pdf](https://github.com/mantle-lsp/audits/blob/main/fixed-yield-vault/blocksec.pdf) | BlockSec | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Mantle_L2_ERC20_Token_Bridge_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_L2_ERC20_Token_Bridge_Report.pdf) | unknown | Audit | 2023-09 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [Mantle_LSP_L2_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_LSP_L2_Report.pdf) | Verilog | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Mantle_MDI_Quests_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_MDI_Quests_Report.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Mantle_Staking_Hub_Audit_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Mantle_Ecosystem_Audit/Mantle_Staking_Hub_Audit_Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [MixBytes-BufferPool.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2F7DhxKicJ8bDVIc97CU5f%2FMixBytes-BufferPool.pdf) | MixBytes | Audit | 2025-11 | fresh | Direct | address | no match | 0 | 0 | 0 | 4 | high |
| [Hexens-BufferPool.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FNQRVoWBNlZQgGHJqlE2P%2FHexens-BufferPool.pdf) | Hexens | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Blocksec-BufferPool.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FNdXlRHtKYExIqqa9s7fP%2FBlocksec-BufferPool.pdf) | Blocksec | Audit | 2025-10 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [verilog-mantle-fuzzland-cook-pm-audit-report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2F5uL6TUlJvsnMnZ3bTBfG%2Fverilog-mantle-fuzzland-cook-pm-audit-report.pdf) | Fuzzland | Audit | n/a | unknown | Direct | contract_name | no match | 0 | 0 | 0 | 2 | medium |
| [Mantle-cmETH_Secure3_Audit_Report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2Ff5ozoh0YRvxE3YO8FqMK%2FMantle-cmETH_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 19 | high |
| [mantle-cmeth-hexens-audit-aug-2024.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FT0QClInfYwk3ARBy1vrk%2Fmantle-cmeth-hexens-audit-aug-2024.pdf) | Hexens | Audit | 2024-09 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FG407rVeB9SxJVhM28PEC%2FMantle_SCs_Aug23(Public)(Liquid%20Staking%20Protocol).pdf) | Hexens | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Mantle_Sep23(Public) (Oracle).pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FMlIxHGCEPsOGBFdgxvrJ%2FMantle_Sep23(Public)%20(Oracle).pdf) | Hexens | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Mantle Network METH Secuity Audit Report Upd.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FZBSPwrDcGKf3Y7WyeJXr%2FMantle%20Network%20METH%20Secuity%20Audit%20Report%20Upd.pdf) | yAudit | Audit | 2023-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 9 | high |
| [Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf](https://1633802790-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FCmiq1MQrm4dWpxTw2pun%2Fuploads%2FEtxWvXpZa5vpZuHK1hGi%2FMantle-LSD-mntETH_final_Secure3_Audit_Report.pdf) | Secure3 | Audit | 2023-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 16 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [4625] Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf — no match: No reason recorded
- [4626] Mantle_Sep23(Public) (Oracle).pdf — no match: Extracted contract names from scope section and findings paths. Audit date from 'Audit Completion Date 02.10.2023'.
- [4627] mantle-cmeth-audit-aug-2024(Public).pdf — no match: No reason recorded
- [4628] mETH-Protocol-oct-25(Final).pdf — no match: No reason recorded
- [4629] Blocksec-11-25.pdf — no match: No reason recorded
- [4630] Exvul-11-25.pdf — no match: No reason recorded
- [4631] Hexens-11-25.pdf — no match: No reason recorded
- [4632] MixBytes-11-25.pdf — no match: No reason recorded
- [4633] blocksec.pdf — no match: Audit report for Mantle FixedYieldVault. Scope includes contracts BaseStakingRewards, BaseRewardRateManager, and WithdrawRequestManager as per findings referencing these contracts. Audit date is February 17, 2025.
- [4635] Mantle_L2_ERC20_Token_Bridge_Report.pdf — no match: Scope section states 'Solidity smart contracts under the folder contracts' in the repository. Four contracts are explicitly referenced in findings.
- [4636] Mantle_LSP_L2_Report.pdf — no match: The audit scope covers Solidity smart contracts under the 'src' folder in the repository. Only METHL2.sol is explicitly referenced in findings.
- [4637] Mantle_MDI_Quests_Report.pdf — no match: Only one contract file (MantleBase.sol) is referenced in findings; scope section says 'contracts' folder but no specific files listed.
- [4638] Mantle_Staking_Hub_Audit_Report.pdf — no match: Scope section mentions 'src' folder but does not list specific contract names. No individual contract names are identifiable from the provided text.
- [27289] MixBytes-BufferPool.pdf — no match: Scope table lists four contracts: LiquidityBuffer.sol, PositionManager.sol, Pauser.sol, Staking.sol. Audit date from title: NOVEMBER 13, 2025.
- [27290] Hexens-BufferPool.pdf — no match: Extracted contracts from scope and findings. Audit date from final report date.
- [27291] Blocksec-BufferPool.pdf — no match: Scope explicitly lists src/interfaces/IStaking.sol, src/interfaces/IPauser.sol, src/Staking.sol, src/Pauser.sol, and src/liquidityBuffer/*. The contracts LiquidityBuffer and PositionManager are within the liquidityBuffer directory and are referenced in findings.
- [27294] verilog-mantle-fuzzland-cook-pm-audit-report.pdf — no match: Scope sections list 'contracts/**/*.sol' for both cmETH and ITBStrategy projects, but no specific contract names are given. Only PositionManager and L2CookMessagingStatus are explicitly named in findings. No audit date found in the provided text.
- [27297] Mantle-cmETH_Secure3_Audit_Report.pdf — no match: All contracts listed in the Audit Scope table on page 4 are extracted. The audit date is from the title line: 'Competitive Security Assessment Mantle-cmETH Sep 11th, 2024'.
- [27298] mantle-cmeth-hexens-audit-aug-2024.pdf — no match: Extracted contracts from scope section and file paths in findings. Audit date from 'delivered 02.09.2024'.
- [27299] Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf — no match: Extracted 7 contracts from scope and findings. Audit completion date is 25.08.2023.
- [27300] Mantle_Sep23(Public) (Oracle).pdf — no match: Extracted contract names from scope section and findings paths. Audit date from 'Audit Completion Date 02.10.2023'.
- [27301] Mantle Network METH Secuity Audit Report Upd.pdf — no match: Scope section explicitly lists 9 contracts in src/ directory. Audit date from cover page.
- [27303] Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf — no match: All contracts listed in the Audit Scope table on page 5 are extracted. The audit date is from the title page: 'Oct 12th, 2023'.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Oracle | unmatched — not counted | — | — | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | OracleQuorumManager | unmatched — not counted | — | — | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Pauser | unmatched — not counted | — | — | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | ReturnsAggregator | unmatched — not counted | — | — | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | ReturnsReceiver | unmatched — not counted | — | — | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Staking | unmatched — not counted | — | — | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | UnstakeRequestsManager | unmatched — not counted | — | — | no |
| Mantle_Sep23(Public) (Oracle).pdf | Oracle.sol | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Reporter | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Validator | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Analyzer | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Scheduler | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | ParallelLoader | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | BlockStamp | unmatched — not counted | — | mentioned in findings | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | AccountantWithRateProviders | unmatched — not counted | — | — | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | BoringVault | unmatched — not counted | — | — | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | DelayedWithdraw | unmatched — not counted | — | — | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | L1MessagingStatus | unmatched — not counted | — | — | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | L2MessagingStatus | unmatched — not counted | — | — | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | SanctionsList | unmatched — not counted | — | — | no |
| mantle-cmeth-audit-aug-2024(Public).pdf | TransparentUpgradeableProxy | unmatched — not counted | — | — | no |
| mETH-Protocol-oct-25(Final).pdf | LiquidityBuffer | unmatched — not counted | — | — | no |
| mETH-Protocol-oct-25(Final).pdf | PositionManager | unmatched — not counted | — | — | no |
| mETH-Protocol-oct-25(Final).pdf | Staking | unmatched — not counted | — | — | no |
| Blocksec-11-25.pdf | IPauser | unmatched — not counted | — | — | no |
| Blocksec-11-25.pdf | IStaking | unmatched — not counted | — | — | no |
| Blocksec-11-25.pdf | LiquidityBuffer | unmatched — not counted | — | — | no |
| Blocksec-11-25.pdf | Pauser | unmatched — not counted | — | — | no |
| Blocksec-11-25.pdf | PositionManager | unmatched — not counted | — | — | no |
| Blocksec-11-25.pdf | Staking | unmatched — not counted | — | — | no |
| Exvul-11-25.pdf | LiquidityBuffer | unmatched — not counted | — | — | no |
| Exvul-11-25.pdf | METH | unmatched — not counted | — | — | no |
| Exvul-11-25.pdf | PositionManager | unmatched — not counted | — | — | no |
| Exvul-11-25.pdf | Staking | unmatched — not counted | — | — | no |
| Hexens-11-25.pdf | LiquidityBuffer | unmatched — not counted | — | — | no |
| Hexens-11-25.pdf | PositionManager | unmatched — not counted | — | — | no |
| Hexens-11-25.pdf | Staking | unmatched — not counted | — | — | no |
| Hexens-11-25.pdf | UnstakeRequestsManager | unmatched — not counted | — | — | no |
| MixBytes-11-25.pdf | LiquidityBuffer | unmatched — not counted | — | — | no |
| MixBytes-11-25.pdf | Pauser | unmatched — not counted | — | — | no |
| MixBytes-11-25.pdf | PositionManager | unmatched — not counted | — | — | no |
| MixBytes-11-25.pdf | Staking | unmatched — not counted | — | — | no |
| MixBytes-11-25.pdf | UnstakeRequestsManager | unmatched — not counted | — | — | no |
| blocksec.pdf | BaseStakingRewards | unmatched — not counted | — | mentioned in findings and scope | no |
| blocksec.pdf | BaseRewardRateManager | unmatched — not counted | — | mentioned in findings | no |
| blocksec.pdf | WithdrawRequestManager | unmatched — not counted | — | mentioned in findings | no |
| Mantle_L2_ERC20_Token_Bridge_Report.pdf | L2ERC20TokenBridge | unmatched — not counted | — | mentioned in findings and scope | no |
| Mantle_L2_ERC20_Token_Bridge_Report.pdf | BridgeableTokens | unmatched — not counted | — | mentioned in findings | no |
| Mantle_L2_ERC20_Token_Bridge_Report.pdf | L1ERC20TokenBridge | unmatched — not counted | — | mentioned in findings | no |
| Mantle_L2_ERC20_Token_Bridge_Report.pdf | ERC20BridgedPermit | unmatched — not counted | — | mentioned in findings | no |
| Mantle_LSP_L2_Report.pdf | METHL2 | unmatched — not counted | — | Listed in findings as source file for the contract under audit. | no |
| Mantle_MDI_Quests_Report.pdf | MantleBase | unmatched — not counted | — | mentioned in findings source lines | no |
| MixBytes-BufferPool.pdf | LiquidityBuffer | unmatched — not counted | — | listed in scope table | no |
| MixBytes-BufferPool.pdf | PositionManager | unmatched — not counted | — | listed in scope table | no |
| MixBytes-BufferPool.pdf | Pauser | unmatched — not counted | — | listed in scope table | no |
| MixBytes-BufferPool.pdf | Staking | unmatched — not counted | — | listed in scope table | no |
| Hexens-BufferPool.pdf | PositionManager | unmatched — not counted | — | listed in scope and findings | no |
| Hexens-BufferPool.pdf | LiquidityBuffer | unmatched — not counted | — | listed in scope and findings | no |
| Hexens-BufferPool.pdf | Staking | unmatched — not counted | — | mentioned in findings as Staking contract | no |
| Blocksec-BufferPool.pdf | IStaking | unmatched — not counted | — | listed in scope | no |
| Blocksec-BufferPool.pdf | IPauser | unmatched — not counted | — | listed in scope | no |
| Blocksec-BufferPool.pdf | Staking | unmatched — not counted | — | listed in scope | no |
| Blocksec-BufferPool.pdf | Pauser | unmatched — not counted | — | listed in scope | no |
| Blocksec-BufferPool.pdf | LiquidityBuffer | unmatched — not counted | — | listed in scope via src/liquidityBuffer/* | no |
| Blocksec-BufferPool.pdf | PositionManager | unmatched — not counted | — | listed in scope via src/liquidityBuffer/* | no |
| verilog-mantle-fuzzland-cook-pm-audit-report.pdf | PositionManager | unmatched — not counted | — | Scope section lists contracts/**/*.sol for ITBStrategy project; PositionManager.sol is mentioned in findings. | no |
| verilog-mantle-fuzzland-cook-pm-audit-report.pdf | L2CookMessagingStatus | unmatched — not counted | — | Mentioned in Low finding 'Inconsistency Between Code and Comments in _lzReceive Function'. | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | L2MessagingStatus | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | L1MessagingStatus | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | L1cmETH | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | L2cmETH | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | ClientBlockListUpgradable | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | ClientSanctionsListUpgradeable | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | SanctionsList | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | Blocklist | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | L1cmETHAdapter | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | DelayedWithdraw | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | TellerWithMultiAssetSupport | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | ManagerWithMerkleVerification | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | Pauser | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | BoringVault | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | DeployArcticArchitecture | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | CreateMerkleRoot | unmatched — not counted | — | listed in scope table | no |
| Mantle-cmETH_Secure3_Audit_Report.pdf | DeployMantleCmETHBoringVault | unmatched — not counted | — | listed in scope table | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | SanctionsList | unmatched — not counted | — | listed in scope and finding mantle-1 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | AccountantWithRateProviders | unmatched — not counted | — | listed in scope and findings mantle-12, mantle-16, mantle-5 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | L2MessagingStatus | unmatched — not counted | — | listed in scope and findings mantle-4, mantle-9 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | DelayedWithdraw | unmatched — not counted | — | listed in scope and findings mantle-6, mantle-15, mantle-13 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | L1MessagingStatus | unmatched — not counted | — | listed in scope and finding mantle-9 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | BoringVault | unmatched — not counted | — | listed in scope and findings mantle-2, mantle-8 | no |
| mantle-cmeth-hexens-audit-aug-2024.pdf | TransparentUpgradeableProxy | unmatched — not counted | — | listed in scope and finding mantle-2 | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Staking | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | ReturnsAggregator | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Oracle | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | UnstakeRequestsManager | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | ReturnsReceiver | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | Pauser | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf | OracleQuorumManager | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Oracle.sol | unmatched — not counted | — | mentioned in scope and findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Reporter | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Validator | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Analyzer | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | Scheduler | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | ParallelLoader | unmatched — not counted | — | mentioned in findings | no |
| Mantle_Sep23(Public) (Oracle).pdf | BlockStamp | unmatched — not counted | — | mentioned in findings | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | METH | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | OracleQuorumManager | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | Pauser | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | ReturnsAggregator | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | ReturnsReceiver | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | Staking | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | UnstakeRequestsManager | unmatched — not counted | — | listed in scope | no |
| Mantle Network METH Secuity Audit Report Upd.pdf | METHL2 | unmatched — not counted | — | listed in scope | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | Oracle | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | Staking | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | UnstakeRequestsManager | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | ReturnsAggregator | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | OracleQuorumManager | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | Pauser | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | METH | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | ReturnsReceiver | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IOracle | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IUnstakeRequestsManager | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IDepositContract | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IPauser | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IStaking | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IMETH | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | IReturnsAggregator | unmatched — not counted | — | listed in scope table | no |
| Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf | ProtocolEvents | unmatched — not counted | — | listed in scope table | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 23
- Inherited remapped matches: 0
- Address-book scope dispositions: 0 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 132 unmatched
- Matched-own operational status: 0 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=14, low=1, medium=1
- Match method counts: n/a

Zero-match audit list:

- [4625] Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf
- [4626] Mantle_Sep23(Public) (Oracle).pdf
- [4627] mantle-cmeth-audit-aug-2024(Public).pdf
- [4628] mETH-Protocol-oct-25(Final).pdf
- [4629] Blocksec-11-25.pdf
- [4630] Exvul-11-25.pdf
- [4631] Hexens-11-25.pdf
- [4632] MixBytes-11-25.pdf
- [4633] blocksec.pdf
- [4635] Mantle_L2_ERC20_Token_Bridge_Report.pdf
- [4636] Mantle_LSP_L2_Report.pdf
- [4637] Mantle_MDI_Quests_Report.pdf
- [4638] Mantle_Staking_Hub_Audit_Report.pdf
- [27289] MixBytes-BufferPool.pdf
- [27290] Hexens-BufferPool.pdf
- [27291] Blocksec-BufferPool.pdf
- [27294] verilog-mantle-fuzzland-cook-pm-audit-report.pdf
- [27297] Mantle-cmETH_Secure3_Audit_Report.pdf
- [27298] mantle-cmeth-hexens-audit-aug-2024.pdf
- [27299] Mantle_SCs_Aug23(Public)(Liquid Staking Protocol).pdf
- [27300] Mantle_Sep23(Public) (Oracle).pdf
- [27301] Mantle Network METH Secuity Audit Report Upd.pdf
- [27303] Mantle-LSD-mntETH_final_Secure3_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
