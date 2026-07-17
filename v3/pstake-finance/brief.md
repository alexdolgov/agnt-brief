# Agentic Audit Brief: pSTAKE Finance

## Export Authority

- Production state: **published scope**
- Raw selected rows: 3 across 3 audit(s)
- Eligible audit results: 22 (3 matched; 19 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: pSTAKE Finance (`pstake-finance`)
- Website: [https://pstake.finance](https://pstake.finance)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: base, blast, bsc, ethereum, optimism
- Contract surface: 13 unique implementations (13 raw deployments)
- Coverage basis: 1/4 confirmed own live verified implementations (25.0%); conservative 25.0% with 0 needs-review implementation(s)
- DeFi Llama TVL: $192,827.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for pSTAKE Finance. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 4 contract row(s) across base, blast, bsc, ethereum, optimism. Structural roles: 4 core. 2 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 4
- Structural roles: core (4)
- Contract kinds: contract (4)
- Detected standards: erc20 (4), erc165 (2), ownable (2)
- Frameworks: openzeppelin (4), openzeppelin-upgradeable (1), solmate (1)
- Upgradeable-pattern rows: 2

## Fork Analysis

0 of 5 contracts are derived from known codebases. 5 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x38815a4455921667d673b4cb3d48f0383ee93400`, chain 8453)
- BlastOLE (`0xcbf7b47e9da345812e3bd732e3ee369a7203b5ae`, chain 81457)
- MintSwapCanonicalToken (`0x4c882ec256823ee773b25b414d36f92ef58a7c0c`, chain 56)
- OptimismMintableERC20 (`0x023550adde4fa2f90d63a41d9282bee0294c04cd`, chain 10)
- pStake (`0xfb5c6815ca3ac72ce9f5006869ae67f18bf77006`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 4; live-surface rows included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 5/5 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 1/4 (25.0%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 5 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 8 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 2 standard proxy/library)
- Proxy deployments represented within implementation groups: 2
- Confirmed-live implementations: 5 of 13 unique; 8 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 1/12
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 13
- Raw deployments: 13
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 19 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 1 | 8.3% | 2022-07 |
| Solidified | Tier 2 | 1 | 8.3% | 2022-01 |
| unknown | Tier 2 | 1 | 8.3% | 2024-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| pStake | unknown | project_anchor | own_supporting | 0 | ethereum | unit-251965 | `0xfb5c6815ca3ac72ce9f5006869ae67f18bf77006` | ✅ Audited |

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AddressStore | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a6b3127a1d295878d8790f6ece0776f65fec121` | ⚠️ Unaudited |
| BlastOLE | unknown | project_anchor | own_supporting | 0 | blast | unit-251968 | `0xcbf7b47e9da345812e3bd732e3ee369a7203b5ae` | ⚠️ Unaudited |
| MintSwapCanonicalToken | unknown | project_anchor | own_supporting | 0 | bsc | unit-251967 | `0x4c882ec256823ee773b25b414d36f92ef58a7c0c` | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | project_anchor | own_supporting | 0 | optimism | unit-251966 | `0x023550adde4fa2f90d63a41d9282bee0294c04cd` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x457ccda8d92172bb0a692a9167ca82673694d370` | ⚠️ Unaudited |
| StakedBNBToken | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc2e9d07f66a89c44062459a47a0d2dc038e4fb16` | ⚠️ Unaudited |
| StakePool | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17cdf9913230d5f9a2b7a0f5b0df286581d528ee` | ⚠️ Unaudited |
| TimelockedAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0b3b4150bd4ee2a532eeaa0e6be86cfd27ca647a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x2fc80e731c40ec6590783bb11eede9dd43fc69bf` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | standard_proxy_or_library (excluded) | 1 | bsc | n/a | `0x3a29f1de4d069745db7184089e657e4c8d83c558` | ⚠️ Unaudited |
| UndelegationHolder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3c0fc52c7de41363c14a63ea09ba4202d15dc298` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | base | unit-251969 | `0x38815a4455921667d673b4cb3d48f0383ee93400` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [DL audit link](https://diligence.security/audits/private/61fqr5mouh4oq8) | unknown | Audit | 2021-08 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 17 | high |
| [Persistence Anchor Integration Smart Contracts - Solidified [25.01.2022].pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/Persistence%20Anchor%20Integration%20Smart%20Contracts%20-%20Solidified%20%5B25.01.2022%5D.pdf) | Solidified | Audit | 2022-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [pBridge Audit - Oak Security [23.11.2021].pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/pBridge%20Audit%20-%20Oak%20Security%20%5B23.11.2021%5D.pdf) | Oak Security | Audit | 2021-11 | stale | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [pSTAKE ETH2.0 Staking Audit - Peckshield [26.05.2022].pdf (also discovered via alternate URL)](https://github.com/persistenceOne/pStake-auditReports/blob/main/pSTAKE%20ETH2.0%20Staking%20Audit%20-%20Peckshield%20%5B26.05.2022%5D.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [pSTAKE ETH2.0 Staking Audit - Trail of Bits [26.04.22].pdf (also discovered via alternate URL)](https://github.com/persistenceOne/pStake-auditReports/blob/main/pSTAKE%20ETH2.0%20Staking%20Audit%20-%20Trail%20of%20Bits%20%5B26.04.22%5D.pdf) | Trail of Bits | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 8 | high |
| [pSTAKE Smart Contract Audit - PeckShield [09.07.2021].pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/pSTAKE%20Smart%20Contract%20Audit%20-%20PeckShield%20%5B09.07.2021%5D.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/pSTAKE%20Smart%20Contract%20Audit%20-%20Solidified%20%5B02.08.2021%5D.pdf) | Solidified | Audit | 2021-08 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 19 | high |
| [pSTAKE Smart Contracts Audit - PeckShield [7:1:2022].pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/pSTAKE%20Smart%20Contracts%20Audit%20-%20PeckShield%20%5B7%3A1%3A2022%5D.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |
| [pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/pSTAKE%20Solana%20Staking%20audit%20-%20Kudelski%20Security%20%5B10.05.2022%5D.pdf) | Kudelski Security | Audit | 2022-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 21 | high |
| [pSTAKE StakeLP Audit - Peckshield [18.11.2021].pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/pSTAKE%20StakeLP%20Audit%20-%20Peckshield%20%5B18.11.2021%5D.pdf) | PeckShield | Audit | 2021-11 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [pStake Smart Contracts + Bridge Audit - Trail of Bits [26.04.22].pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/pStake%20Smart%20Contracts%20%2B%20Bridge%20Audit%20-%20Trail%20of%20Bits%20%5B26.04.22%5D.pdf) | Trail of Bits | Audit | 2022-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [2023-02-17 Audit Report - pSTAKE Native v1.0.pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/stkATOM/2023-02-17%20Audit%20Report%20-%20pSTAKE%20Native%20v1.0.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Audit Report - pSTAKE Native Auto-Compounding and Rebalancing.pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/stkATOM/Audit%20Report%20-%20pSTAKE%20Native%20Auto-Compounding%20and%20Rebalancing.pdf) | unknown | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Notional - Persistence Security Audit.pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/stkATOM/Notional%20-%20Persistence%20Security%20Audit.pdf) | yAudit | Audit | 2023-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Persistence_Liquid_Staking_Module_Cosmos_Security_Assessment_Report_Halborn_Final.pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/stkATOM/Persistence_Liquid_Staking_Module_Cosmos_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [Persistence_stkATOM_Cosmos_Security_Audit_Report_Halborn_Final.pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/stkATOM/Persistence_stkATOM_Cosmos_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 1 | high |
| [pSTAKE_stkBNB_Smart_Contract_Audit_Halborn [05.08.2022].pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/stkBNB/pSTAKE_stkBNB_Smart_Contract_Audit_Halborn%20%5B05.08.2022%5D.pdf) | Halborn | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 5 | high |
| [pStake_stkBNB_Smart_Contract_Audit_Peckshield [04.07.2022].pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/stkBNB/pStake_stkBNB_Smart_Contract_Audit_Peckshield%20%5B04.07.2022%5D.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/stkETH/pSTAKE_stkETH_Audit%20report_Halborn%20%5B15.07.2023%5D.pdf) | Halborn | Audit | 2023-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 18 | high |
| [Security Audit](https://github.com/persistenceOne/pStake-auditReports?lang=en) | yAudit | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [17999] DL audit link — matched: All contracts listed in Appendix 1 - Files in Scope table. Audit date is the end date of the review period (August 27, 2021).
- [18000] Persistence Anchor Integration Smart Contracts - Solidified [25.01.2022].pdf — no match: The scope section states 'Scope of the audit has been limited to the Solidity files in the contracts folder.' Only BAssetHub.sol is explicitly referenced in findings. No other contract files are named.
- [18001] pBridge Audit - Oak Security [23.11.2021].pdf — no match: The audit report is for a Go-based bridge application (pBridge), not smart contracts. No Solidity contracts or source files are listed in scope. The report mentions Ethereum contract addresses (LiquidStaking, TokenWrapper) but they are not audited targets.
- [18002] pSTAKE ETH2.0 Staking Audit - Peckshield [26.05.2022].pdf — no match: Audit report for Eth2 Liquidity Staking by Persistence. Scope includes StakingPool, Oracle, and Permissions contracts. Audit date is May 26, 2022.
- [18003] pSTAKE ETH2.0 Staking Audit - Trail of Bits [26.04.22].pdf — no match: Contracts extracted from project targets and detailed findings. Audit date from cover page.
- [18004] pSTAKE Smart Contract Audit - PeckShield [09.07.2021].pdf — no match: Contracts identified from findings targets and scope table; no file paths provided.
- [18005] pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf — matched: All contracts and interfaces listed in the 'Audited Files' section are included.
- [18006] pSTAKE Smart Contracts Audit - PeckShield [7:1:2022].pdf — matched: Audit report for pStake protocol. Scope includes pStake token contract, Orchestrator contract, and StepVesting contract. Audit completion date is January 7, 2022.
- [18007] pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf — no match: Extracted contract names from the scope table and file paths. The audit date is May 10, 2022 from the cover page.
- [18008] pSTAKE StakeLP Audit - Peckshield [18.11.2021].pdf — no match: Scope explicitly stated on page 5: 'this audit covers only StakeLP, WhitelistedPTokenEmission, and WhitelistedRewardEmission contracts.'
- [18009] pStake Smart Contracts + Bridge Audit - Trail of Bits [26.04.22].pdf — no match: The audit report scope is defined by two repositories: pSTAKE Ethereum Smart Contracts and Persistence Bridge Orchestrator. No individual contract names are listed beyond these repository-level targets.
- [18010] 2023-02-17 Audit Report - pSTAKE Native v1.0.pdf — no match: The audit report covers the pSTAKE Native v1.0 codebase, specifically the x/lscosmos Cosmos SDK module. No individual contract names are listed; the scope is the entire module.
- [18011] Audit Report - pSTAKE Native Auto-Compounding and Rebalancing.pdf — no match: The audit scope is a single Cosmos SDK module (x/liquidstakeibc), not individual contracts. The date is from the cover page.
- [18012] Notional - Persistence Security Audit.pdf — no match: The report lists three repositories as the codebase under audit: pstake-native, persistence-sdk, and persistence-core. These are the primary components audited. No individual smart contract names are given; the scope is at the repository/module level.
- [18013] Persistence_Liquid_Staking_Module_Cosmos_Security_Assessment_Report_Halborn_Final.pdf — no match: The audit scope is a single Cosmos module named 'liquidstakeibc' located in the x/liquidstakeibc directory. The audit date is the end date of the engagement: August 22nd, 2023.
- [18014] Persistence_stkATOM_Cosmos_Security_Audit_Report_Halborn_Final.pdf — no match: The audit scope explicitly lists the module 'x/lscosmos' as the only in-scope module. No individual contract names are provided; the module is a Cosmos SDK module. The audit date is the end date of the engagement: October 20th, 2022.
- [18015] pSTAKE_stkBNB_Smart_Contract_Audit_Halborn [05.08.2022].pdf — no match: Scope section lists commit IDs but no explicit contract names; contracts extracted from findings code locations.
- [18016] pStake_stkBNB_Smart_Contract_Audit_Peckshield [04.07.2022].pdf — no match: Audit report for pStake stkBNB. Scope includes StakePool, StakedBNBToken, AddressStore, and related libraries. Date from cover page.
- [18019] pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf — no match: Extracted contract names from the scope section (pages 11-12) and file paths. The audit date is the end date of the engagement (July 14, 2023).
- [18020] Security Audit — no match: The provided text is a GitHub repository README listing multiple audit reports, not a single audit report with a defined scope. No specific contracts in scope are mentioned.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| DL audit link | PSTAKE | own contract | pStake (selected) `0xfb5c6815ca3ac72ce9f5006869ae67f18bf77006` — deployed 2022-01-12 00:52:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| DL audit link | StakeLPCoreV8 | unmatched — not counted | — | listed in scope table | no |
| DL audit link | STokensV2 | unmatched — not counted | — | listed in scope table | no |
| DL audit link | TokenWrapperV2 | unmatched — not counted | — | listed in scope table | no |
| DL audit link | LiquidStakingV2 | unmatched — not counted | — | listed in scope table | no |
| DL audit link | UtokensV2 | unmatched — not counted | — | listed in scope table | no |
| DL audit link | HolderUniswapV2 | unmatched — not counted | — | listed in scope table | no |
| DL audit link | IStakeLPCore | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ILiquidStaking | unmatched — not counted | — | listed in scope table | no |
| DL audit link | IPSTAKE | unmatched — not counted | — | listed in scope table | no |
| DL audit link | IHolder | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ITokenWrapper | unmatched — not counted | — | listed in scope table | no |
| DL audit link | ISTokens | unmatched — not counted | — | listed in scope table | no |
| DL audit link | IUTokens | unmatched — not counted | — | listed in scope table | no |
| DL audit link | BytesLib | unmatched — not counted | — | listed in scope table | no |
| DL audit link | FullMath | unmatched — not counted | — | listed in scope table | no |
| DL audit link | TransferHelper | unmatched — not counted | — | listed in scope table | no |
| DL audit link | Bech32 | unmatched — not counted | — | listed in scope table | no |
| Persistence Anchor Integration Smart Contracts - Solidified [25.01.2022].pdf | BAssetHub | unmatched — not counted | — | mentioned in findings as the contract containing the functions getAmountOutMin, whitelistAsset, blacklistAsset, and liquidateRewards | no |
| pSTAKE ETH2.0 Staking Audit - Peckshield [26.05.2022].pdf | StakingPool | unmatched — not counted | — | Target in finding PVE-001 | no |
| pSTAKE ETH2.0 Staking Audit - Peckshield [26.05.2022].pdf | Oracle | unmatched — not counted | — | Target in finding PVE-002 | no |
| pSTAKE ETH2.0 Staking Audit - Peckshield [26.05.2022].pdf | Permissions | unmatched — not counted | — | Mentioned in finding PVE-003 as core contract | no |
| pSTAKE ETH2.0 Staking Audit - Trail of Bits [26.04.22].pdf | Core | unmatched — not counted | — | listed in scope and findings | no |
| pSTAKE ETH2.0 Staking Audit - Trail of Bits [26.04.22].pdf | CoreRef | unmatched — not counted | — | listed in findings | no |
| pSTAKE ETH2.0 Staking Audit - Trail of Bits [26.04.22].pdf | Issuer | unmatched — not counted | — | listed in findings | no |
| pSTAKE ETH2.0 Staking Audit - Trail of Bits [26.04.22].pdf | KeysManager | unmatched — not counted | — | listed in findings | no |
| pSTAKE ETH2.0 Staking Audit - Trail of Bits [26.04.22].pdf | Oracle | unmatched — not counted | — | listed in findings | no |
| pSTAKE ETH2.0 Staking Audit - Trail of Bits [26.04.22].pdf | StakingPool | unmatched — not counted | — | listed in findings | no |
| pSTAKE ETH2.0 Staking Audit - Trail of Bits [26.04.22].pdf | StkEth | unmatched — not counted | — | mentioned as token contract | no |
| pSTAKE ETH2.0 Staking Audit - Trail of Bits [26.04.22].pdf | Permissions | unmatched — not counted | — | mentioned in code quality findings | no |
| pSTAKE Smart Contract Audit - PeckShield [09.07.2021].pdf | LiquidStaking | unmatched — not counted | — | Target in findings PVE-001, PVE-004, PVE-006 | no |
| pSTAKE Smart Contract Audit - PeckShield [09.07.2021].pdf | STokens | unmatched — not counted | — | Target in findings PVE-002, PVE-006 | no |
| pSTAKE Smart Contract Audit - PeckShield [09.07.2021].pdf | TokenWrapper | unmatched — not counted | — | Target in findings PVE-003, PVE-004, PVE-005 | no |
| pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf | LiquidStaking | unmatched — not counted | — | listed in scope | no |
| pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf | Migrations | unmatched — not counted | — | listed in scope | no |
| pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf | PSTAKE | own contract | pStake (selected) `0xfb5c6815ca3ac72ce9f5006869ae67f18bf77006` — deployed 2022-01-12 00:52:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf | STokens | unmatched — not counted | — | listed in scope | no |
| pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf | StakeLPCore | unmatched — not counted | — | listed in scope | no |
| pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf | TokenWrapper | unmatched — not counted | — | listed in scope | no |
| pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf | UTokens | unmatched — not counted | — | listed in scope | no |
| pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf | HolderUniswap | unmatched — not counted | — | listed in scope | no |
| pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf | IHolder | unmatched — not counted | — | listed in scope | no |
| pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf | ILiquidStaking | unmatched — not counted | — | listed in scope | no |
| pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf | IPSTAKE | unmatched — not counted | — | listed in scope | no |
| pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf | ISTokens | unmatched — not counted | — | listed in scope | no |
| pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf | IStakeLPCore | unmatched — not counted | — | listed in scope | no |
| pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf | ITokenWrapper | unmatched — not counted | — | listed in scope | no |
| pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf | IUTokens | unmatched — not counted | — | listed in scope | no |
| pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf | Bech32 | unmatched — not counted | — | listed in scope | no |
| pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf | Bech32Validation | unmatched — not counted | — | listed in scope | no |
| pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf | BytesLib | unmatched — not counted | — | listed in scope | no |
| pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf | FullMath | unmatched — not counted | — | listed in scope | no |
| pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf | TransferHelper | unmatched — not counted | — | listed in scope | no |
| pSTAKE Smart Contracts Audit - PeckShield [7:1:2022].pdf | pStake | own contract | pStake (selected) `0xfb5c6815ca3ac72ce9f5006869ae67f18bf77006` — deployed 2022-01-12 00:52:25+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| pSTAKE Smart Contracts Audit - PeckShield [7:1:2022].pdf | Orchestrator | unmatched — not counted | — | Target of findings PVE-001 and PVE-002; described as core contract | no |
| pSTAKE Smart Contracts Audit - PeckShield [7:1:2022].pdf | StepVesting | unmatched — not counted | — | Mentioned in Orchestrator constructor and mintAndTransferTokens function | no |
| pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf | wrapper-contract | unmatched — not counted | — | listed in scope table | no |
| pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf | add_validator | unmatched — not counted | — | listed in scope table | no |
| pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf | claim | unmatched — not counted | — | listed in scope table | no |
| pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf | decrease_stake | unmatched — not counted | — | listed in scope table | no |
| pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf | deposit | unmatched — not counted | — | listed in scope table | no |
| pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf | deposit_stake | unmatched — not counted | — | listed in scope table | no |
| pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf | increase_stake | unmatched — not counted | — | listed in scope table | no |
| pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf | initialize | unmatched — not counted | — | listed in scope table | no |
| pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf | remove_validator | unmatched — not counted | — | listed in scope table | no |
| pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf | update_fee | unmatched — not counted | — | listed in scope table | no |
| pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf | withdraw_later | unmatched — not counted | — | listed in scope table | no |
| pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf | withdraw_now | unmatched — not counted | — | listed in scope table | no |
| pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf | contract_state | unmatched — not counted | — | listed in scope table | no |
| pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf | validators_score_list | unmatched — not counted | — | listed in scope table | no |
| pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf | pda_seeds | unmatched — not counted | — | listed in scope table | no |
| pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf | program_accounts | unmatched — not counted | — | listed in scope table | no |
| pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf | error | unmatched — not counted | — | listed in scope table | no |
| pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf | instructions | unmatched — not counted | — | listed in scope table | no |
| pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf | lib | unmatched — not counted | — | listed in scope table | no |
| pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf | state | unmatched — not counted | — | listed in scope table | no |
| pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf | utils | unmatched — not counted | — | listed in scope table | no |
| pSTAKE StakeLP Audit - Peckshield [18.11.2021].pdf | StakeLP | unmatched — not counted | — | Listed in scope: 'this audit covers only StakeLP, WhitelistedPTokenEmission, and WhitelistedRewardEmission contracts.' | no |
| pSTAKE StakeLP Audit - Peckshield [18.11.2021].pdf | WhitelistedPTokenEmission | unmatched — not counted | — | Listed in scope: 'this audit covers only StakeLP, WhitelistedPTokenEmission, and WhitelistedRewardEmission contracts.' | no |
| pSTAKE StakeLP Audit - Peckshield [18.11.2021].pdf | WhitelistedRewardEmission | unmatched — not counted | — | Listed in scope: 'this audit covers only StakeLP, WhitelistedPTokenEmission, and WhitelistedRewardEmission contracts.' | no |
| pStake Smart Contracts + Bridge Audit - Trail of Bits [26.04.22].pdf | pSTAKE Ethereum Smart Contracts | unmatched — not counted | — | listed in Project Targets | no |
| pStake Smart Contracts + Bridge Audit - Trail of Bits [26.04.22].pdf | Persistence Bridge Orchestrator | unmatched — not counted | — | listed in Project Targets | no |
| 2023-02-17 Audit Report - pSTAKE Native v1.0.pdf | x/lscosmos | unmatched — not counted | — | The audit scope is restricted to the x/lscosmos CosmosSDK module. | no |
| Audit Report - pSTAKE Native Auto-Compounding and Rebalancing.pdf | x/liquidstakeibc | unmatched — not counted | — | Scope section: 'Only the x/liquidstakeibc module was in the scope of this audit.' | no |
| Notional - Persistence Security Audit.pdf | pstake-native | unmatched — not counted | — | listed in scope | no |
| Notional - Persistence Security Audit.pdf | persistence-sdk | unmatched — not counted | — | listed in scope | no |
| Notional - Persistence Security Audit.pdf | persistence-core | unmatched — not counted | — | listed in scope | no |
| Persistence_Liquid_Staking_Module_Cosmos_Security_Assessment_Report_Halborn_Final.pdf | liquidstakeibc | unmatched — not counted | — | Scope section: 'Module in scope: x/liquidstakeibc' | no |
| Persistence_stkATOM_Cosmos_Security_Audit_Report_Halborn_Final.pdf | lscosmos | unmatched — not counted | — | listed in scope as IN-SCOPE MODULES: x/lscosmos | no |
| pSTAKE_stkBNB_Smart_Contract_Audit_Halborn [05.08.2022].pdf | StakeBNBToken | unmatched — not counted | — | Code Location in HAL-01 | no |
| pSTAKE_stkBNB_Smart_Contract_Audit_Halborn [05.08.2022].pdf | StakePool | unmatched — not counted | — | Code Location in HAL-02, HAL-03, HAL-05, HAL-08, HAL-09 | no |
| pSTAKE_stkBNB_Smart_Contract_Audit_Halborn [05.08.2022].pdf | FeeVault | unmatched — not counted | — | Code Location in HAL-04 | no |
| pSTAKE_stkBNB_Smart_Contract_Audit_Halborn [05.08.2022].pdf | AddressStore | unmatched — not counted | — | Code Location in HAL-06 | no |
| pSTAKE_stkBNB_Smart_Contract_Audit_Halborn [05.08.2022].pdf | UndelegationHolder | unmatched — not counted | — | Code Location in HAL-07 | no |
| pStake_stkBNB_Smart_Contract_Audit_Peckshield [04.07.2022].pdf | StakePool | unmatched — not counted | — | mentioned as target in findings PVE-001, PVE-002, PVE-003 | no |
| pStake_stkBNB_Smart_Contract_Audit_Peckshield [04.07.2022].pdf | StakedBNBToken | unmatched — not counted | — | mentioned in finding PVE-003 | no |
| pStake_stkBNB_Smart_Contract_Audit_Peckshield [04.07.2022].pdf | AddressStore | unmatched — not counted | — | mentioned in finding PVE-003 | no |
| pStake_stkBNB_Smart_Contract_Audit_Peckshield [04.07.2022].pdf | Config | unmatched — not counted | — | mentioned in code listings | no |
| pStake_stkBNB_Smart_Contract_Audit_Peckshield [04.07.2022].pdf | FeeDistribution | unmatched — not counted | — | mentioned in code listings | no |
| pStake_stkBNB_Smart_Contract_Audit_Peckshield [04.07.2022].pdf | BasisFee | unmatched — not counted | — | mentioned in finding PVE-001 and code listings | no |
| pStake_stkBNB_Smart_Contract_Audit_Peckshield [04.07.2022].pdf | UndelegationHolder | unmatched — not counted | — | mentioned in code listing | no |
| pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf | Core | unmatched — not counted | — | listed in scope | no |
| pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf | CoreRef | unmatched — not counted | — | listed in scope | no |
| pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf | IssuerUpgradable | unmatched — not counted | — | listed in scope | no |
| pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf | KeysManager | unmatched — not counted | — | listed in scope | no |
| pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf | L1MessageContract | unmatched — not counted | — | listed in scope | no |
| pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf | Oracle | unmatched — not counted | — | listed in scope | no |
| pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf | Permissions | unmatched — not counted | — | listed in scope | no |
| pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf | StakingPool | unmatched — not counted | — | listed in scope | no |
| pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf | WithdrawalCredential | unmatched — not counted | — | listed in scope | no |
| pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf | StkEth | unmatched — not counted | — | listed in scope | no |
| pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf | L1MessengerBase | unmatched — not counted | — | listed in scope | no |
| pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf | OptimismMessenger | unmatched — not counted | — | listed in scope | no |
| pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf | ArbitrumMessenger | unmatched — not counted | — | listed in scope | no |
| pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf | BeaconData | unmatched — not counted | — | listed in scope | no |
| pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf | Issuer | unmatched — not counted | — | listed in scope | no |
| pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf | L2MessageContract | unmatched — not counted | — | listed in scope | no |
| pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf | L2MessageContractArbitrum | unmatched — not counted | — | listed in scope | no |
| pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf | L2MessageContractOptimism | unmatched — not counted | — | listed in scope | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | `0x4c882ec256823ee773b25b414d36f92ef58a7c0c` | MintSwapCanonicalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x023550adde4fa2f90d63a41d9282bee0294c04cd` | OptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 17
- Inherited remapped matches: 0
- Address-book scope dispositions: 3 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 0 ambiguous, 116 unmatched
- Matched-own operational status: 3 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=18, low=2
- Match method counts: unique_name=3

Zero-match audit list:

- [18000] Persistence Anchor Integration Smart Contracts - Solidified [25.01.2022].pdf
- [18001] pBridge Audit - Oak Security [23.11.2021].pdf
- [18002] pSTAKE ETH2.0 Staking Audit - Peckshield [26.05.2022].pdf
- [18003] pSTAKE ETH2.0 Staking Audit - Trail of Bits [26.04.22].pdf
- [18004] pSTAKE Smart Contract Audit - PeckShield [09.07.2021].pdf
- [18007] pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf
- [18008] pSTAKE StakeLP Audit - Peckshield [18.11.2021].pdf
- [18009] pStake Smart Contracts + Bridge Audit - Trail of Bits [26.04.22].pdf
- [18010] 2023-02-17 Audit Report - pSTAKE Native v1.0.pdf
- [18011] Audit Report - pSTAKE Native Auto-Compounding and Rebalancing.pdf
- [18012] Notional - Persistence Security Audit.pdf
- [18013] Persistence_Liquid_Staking_Module_Cosmos_Security_Assessment_Report_Halborn_Final.pdf
- [18014] Persistence_stkATOM_Cosmos_Security_Audit_Report_Halborn_Final.pdf
- [18015] pSTAKE_stkBNB_Smart_Contract_Audit_Halborn [05.08.2022].pdf
- [18016] pStake_stkBNB_Smart_Contract_Audit_Peckshield [04.07.2022].pdf
- [18019] pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf
- [18020] Security Audit

Fork inheritance lineage and inherited audits are included when available.
