# Agentic Audit Brief: pSTAKE Finance

## Project Overview

- Project: pSTAKE Finance (`pstake-finance`)
- Website: [https://pstake.finance](https://pstake.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.218Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: blast, bsc, ethereum, optimism
- Contract surface: 12 unique implementations (12 raw deployments)
- DeFi Llama TVL: $192,827.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Restaked BTC. Structurally: 11 project-authored contract(s) across 4 chain(s); 4 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 3 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 12 (12 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/8 (62.5%)
- Deployed-live implementations: 12 of 12 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/12
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 12
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 18 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 4 | 33.3% | 2022-07 |
| Halborn | Tier 2 | 3 | 25.0% | 2023-08 |
| Solidified | Tier 2 | 1 | 8.3% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AddressStore | unknown | bsc | n/a | [`0x4a6b31...fec121`](./contracts/bsc-56/0x4a6b3127a1d295878d8790f6ece0776f65fec121/) | ✅ Audited |
| pStake | unknown | ethereum | n/a | [`0xfb5c68...f77006`](./contracts/ethereum-1/0xfb5c6815ca3ac72ce9f5006869ae67f18bf77006/) | ✅ Audited |
| StakedBNBToken | unknown | bsc | n/a | [`0xc2e9d0...e4fb16`](./contracts/bsc-56/0xc2e9d07f66a89c44062459a47a0d2dc038e4fb16/) | ✅ Audited |
| StakePool | unknown | bsc | n/a | [`0x17cdf9...d528ee`](./contracts/bsc-56/0x17cdf9913230d5f9a2b7a0f5b0df286581d528ee/) | ✅ Audited |
| UndelegationHolder | unknown | bsc | n/a | [`0x3c0fc5...5dc298`](./contracts/bsc-56/0x3c0fc52c7de41363c14a63ea09ba4202d15dc298/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BlastOLE | unknown | blast | n/a | [`0xcbf7b4...03b5ae`](./contracts/blast-81457/0xcbf7b47e9da345812e3bd732e3ee369a7203b5ae/) | ⚠️ Unaudited |
| MintSwapCanonicalToken | unknown | bsc | n/a | [`0x4c882e...8a7c0c`](./contracts/bsc-56/0x4c882ec256823ee773b25b414d36f92ef58a7c0c/) | ⚠️ Unaudited |
| OptimismMintableERC20 | unknown | optimism | n/a | [`0x023550...4c04cd`](./contracts/optimism-10/0x023550adde4fa2f90d63a41d9282bee0294c04cd/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x457ccd...94d370`](./contracts/bsc-56/0x457ccda8d92172bb0a692a9167ca82673694d370/) | ⚠️ Unaudited |
| TimelockedAdmin | unknown | bsc | n/a | [`0x0b3b41...ca647a`](./contracts/bsc-56/0x0b3b4150bd4ee2a532eeaa0e6be86cfd27ca647a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x2fc80e...fc69bf`](./contracts/bsc-56/0x2fc80e731c40ec6590783bb11eede9dd43fc69bf/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x3a29f1...83c558`](./contracts/bsc-56/0x3a29f1de4d069745db7184089e657e4c8d83c558/) | ⚠️ Unaudited |

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

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://diligence.security/audits/private/61fqr5mouh4oq8) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Persistence Anchor Integration Smart Contracts - Solidified [25.01.2022].pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/Persistence%20Anchor%20Integration%20Smart%20Contracts%20-%20Solidified%20%5B25.01.2022%5D.pdf) | Solidified | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [pBridge Audit - Oak Security [23.11.2021].pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/pBridge%20Audit%20-%20Oak%20Security%20%5B23.11.2021%5D.pdf) | Oak Security | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [pSTAKE ETH2.0 Staking Audit - Peckshield [26.05.2022].pdf (also discovered via alternate URL)](https://github.com/persistenceOne/pStake-auditReports/blob/main/pSTAKE%20ETH2.0%20Staking%20Audit%20-%20Peckshield%20%5B26.05.2022%5D.pdf) | PeckShield | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [pSTAKE ETH2.0 Staking Audit - Trail of Bits [26.04.22].pdf (also discovered via alternate URL)](https://github.com/persistenceOne/pStake-auditReports/blob/main/pSTAKE%20ETH2.0%20Staking%20Audit%20-%20Trail%20of%20Bits%20%5B26.04.22%5D.pdf) | Trail of Bits | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [pSTAKE Smart Contract Audit - PeckShield [09.07.2021].pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/pSTAKE%20Smart%20Contract%20Audit%20-%20PeckShield%20%5B09.07.2021%5D.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | n/a | 0 | n/a |
| [pSTAKE Smart Contract Audit - Solidified [02.08.2021].pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/pSTAKE%20Smart%20Contract%20Audit%20-%20Solidified%20%5B02.08.2021%5D.pdf) | Solidified | Audit | 2021-08 | stale | Direct | contract_name | 1 | high |
| [pSTAKE Smart Contracts Audit - PeckShield [7:1:2022].pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/pSTAKE%20Smart%20Contracts%20Audit%20-%20PeckShield%20%5B7%3A1%3A2022%5D.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | 1 | high |
| [pSTAKE Solana Staking audit - Kudelski Security [10.05.2022].pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/pSTAKE%20Solana%20Staking%20audit%20-%20Kudelski%20Security%20%5B10.05.2022%5D.pdf) | Kudelski Security | Audit | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [pSTAKE StakeLP Audit - Peckshield [18.11.2021].pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/pSTAKE%20StakeLP%20Audit%20-%20Peckshield%20%5B18.11.2021%5D.pdf) | PeckShield | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [pStake Smart Contracts + Bridge Audit - Trail of Bits [26.04.22].pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/pStake%20Smart%20Contracts%20%2B%20Bridge%20Audit%20-%20Trail%20of%20Bits%20%5B26.04.22%5D.pdf) | Trail of Bits | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [2023-02-17 Audit Report - pSTAKE Native v1.0.pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/stkATOM/2023-02-17%20Audit%20Report%20-%20pSTAKE%20Native%20v1.0.pdf) | unknown | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [Audit Report - pSTAKE Native Auto-Compounding and Rebalancing.pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/stkATOM/Audit%20Report%20-%20pSTAKE%20Native%20Auto-Compounding%20and%20Rebalancing.pdf) | unknown | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [Notional - Persistence Security Audit.pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/stkATOM/Notional%20-%20Persistence%20Security%20Audit.pdf) | yAudit | Audit | 2023-12 | stale | Direct | n/a | 0 | n/a |
| [Persistence_Liquid_Staking_Module_Cosmos_Security_Assessment_Report_Halborn_Final.pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/stkATOM/Persistence_Liquid_Staking_Module_Cosmos_Security_Assessment_Report_Halborn_Final.pdf) | Halborn | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [Persistence_stkATOM_Cosmos_Security_Audit_Report_Halborn_Final.pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/stkATOM/Persistence_stkATOM_Cosmos_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [pSTAKE_stkBNB_Smart_Contract_Audit_Halborn [05.08.2022].pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/stkBNB/pSTAKE_stkBNB_Smart_Contract_Audit_Halborn%20%5B05.08.2022%5D.pdf) | Halborn | Audit | 2022-08 | stale | Direct | contract_name | 3 | high |
| [pStake_stkBNB_Smart_Contract_Audit_Peckshield [04.07.2022].pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/stkBNB/pStake_stkBNB_Smart_Contract_Audit_Peckshield%20%5B04.07.2022%5D.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | contract_name | 3 | high |
| [pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf](https://github.com/persistenceOne/pStake-auditReports/blob/main/stkETH/pSTAKE_stkETH_Audit%20report_Halborn%20%5B15.07.2023%5D.pdf) | Halborn | Audit | 2023-07 | stale | Direct | n/a | 0 | n/a |
| [Security Audit](https://github.com/persistenceOne/pStake-auditReports?lang=en) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x4c882e...8a7c0c`](./contracts/bsc-56/0x4c882ec256823ee773b25b414d36f92ef58a7c0c/) | MintSwapCanonicalToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x023550...4c04cd`](./contracts/optimism-10/0x023550adde4fa2f90d63a41d9282bee0294c04cd/) | OptimismMintableERC20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0b3b41...ca647a`](./contracts/bsc-56/0x0b3b4150bd4ee2a532eeaa0e6be86cfd27ca647a/) | TimelockedAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 1 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 16
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=8

Zero-match audit list:

- [17999] DL audit link
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
- [18019] pSTAKE_stkETH_Audit report_Halborn [15.07.2023].pdf
- [18020] Security Audit

Fork inheritance lineage and inherited audits are included when available.
