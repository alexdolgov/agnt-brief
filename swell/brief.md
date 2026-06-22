# Agentic Audit Brief: Swell

## Project Overview

- Project: Swell (`swell`)
- Website: [https://www.swellnetwork.io/](https://www.swellnetwork.io/)
- Lifecycle: active (Tier 0, 96.6% below peak)
- Generated: 2026-06-21T18:01:22.415Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum
- Contract surface: 27 unique implementations (43 raw deployments)
- DeFi Llama TVL: $100,536,716.47
- On-chain TVL (included contracts): $56,405,535.08
- TVL by chain: Ethereum $56,405,535.08

## Project Description

Swell is a non-custodial liquid staking and restaking protocol on Ethereum. It allows users to stake ETH or BTC to receive liquid tokens (swETH, rswETH, swBTC) that accrue staking rewards while remaining usable in DeFi. The protocol also offers yield-bearing vaults (earnETH, earnBTC) and a governance token (SWELL).

### Architecture

The ETH liquid staking and restaking families share a common NodeOperatorRegistry and DepositManager pattern, while the BTC liquid staking family uses a separate Yearn-based infrastructure. The Earn vaults operate independently but may accept swETH, rswETH, or swBTC as deposits, creating a token flow between families. Governance and token contracts are shared across the protocol.

## Contract Surface Quality

- Indexed contracts: 51; live-surface contracts included: 43 (6 live, 37 unknown).
- Excluded by liveness: 6 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 5/11 live.
- Detected codebases: none
- Unverified dependencies: 1/16.

## Audit Coverage Summary

- Verified implementations audited: 18/27 (66.7%)
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 27
- Raw deployments: 43
- Audits discovered: 16
- Scoreable audits (matched contracts): 15
- ASD (verified + unaudited TVL): $8,222,821.71
- Latest audit: 2024-08 (aging)
- Staleness: 0 fresh, 4 aging, 12 stale, 0 unknown
- Tier 1 coverage: 59.3% (ChainSecurity, Cyfrin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 8 | 29.6% | 2024-08 |
| unknown | Tier 2 | 8 | 29.6% | 2024-08 |
| Sigma Prime | Tier 2 | 5 | 18.5% | 2024-07 |
| 0xMacro | Tier 2 | 4 | 14.8% | 2024-04 |
| Cyfrin | Tier 1 | 4 | 14.8% | 2024-02 |
| Spearbit | Tier 1 | 4 | 14.8% | 2024-04 |
| Barracude | Tier 2 | 3 | 11.1% | 2024-06 |
| Pashov Audit Group | Tier 2 | 1 | 3.7% | 2024-07 |
| yAudit | Tier 2 | 1 | 3.7% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| swETH | token | ethereum | unit-43384 | [`0xf951e3...7ded78`](./contracts/ethereum-1/0xf951e335afb289353dc249e82926178eac7ded78/) | ✅ Audited |
| RswETH | token | ethereum | unit-43385 | [`0xfae103...afa6c0`](./contracts/ethereum-1/0xfae103dc9cf190ed75350761e95403b7b8afa6c0/) | ✅ Audited |
| SimpleStakingERC20 | token | ethereum | n/a | [`0x38d43a...31d774`](./contracts/ethereum-1/0x38d43a6cb8da0e855a42fb6b0733a0498531d774/) | ✅ Audited |
| BoringVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x66e47e...4d831a`](./contracts/ethereum-1/0x66e47e6957b85cf62564610b76dd206bb04d831a/); ethereum `0x9ed153...775f22` | ✅ Audited |
| DepositManager | core_logic | ethereum | unit-43378 | [`0x5e6342...9a4889`](./contracts/ethereum-1/0x5e6342d8090665be14eeb8154c8a87b7249a4889/) | ✅ Audited |
| DepositManager | core_logic | ethereum | unit-43382 | [`0xb3d9cf...5b8f39`](./contracts/ethereum-1/0xb3d9cf8e163bbc840195a97e81f8a34e295b8f39/) | ✅ Audited |
| Accountant | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x15a94d...8ba7b6`](./contracts/ethereum-1/0x15a94d49fac6e23e17c1366c999117a1de8ba7b6/); ethereum `0x48dacb...fb3825` | ✅ Audited |
| AccountantWithRateProviders | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x411c78...df2755`](./contracts/ethereum-1/0x411c78bc8c36c3c66784514f28c56209e1df2755/); ethereum `0x6bbf58...1b1a08` | ✅ Audited |
| DelayedWithdraw | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x755a07...05cf85`](./contracts/ethereum-1/0x755a078dee1c264a3053f02cd634e750d505cf85/); ethereum `0x805c6d...fa55b8` | ✅ Audited |
| Keeper | operational_periphery | ethereum | n/a | [`0xc2a558...9f182f`](./contracts/ethereum-1/0xc2a55871a713fb98a6b60e2e76fc94021c9f182f/) | ✅ Audited |
| ManagerWithMerkleVerification | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x69fc70...4f50c0`](./contracts/ethereum-1/0x69fc700226e9e12d8c5e46a4b50a78efb64f50c0/); ethereum `0x6cea0a...e91e06` | ✅ Audited |
| NodeOperatorRegistry | registry | ethereum | unit-43376 | [`0x46ddc3...1a1a1d`](./contracts/ethereum-1/0x46ddc39e780088b1b146aba8cbbe15dc321a1a1d/) | ✅ Audited |
| Registry | registry | ethereum | n/a | 2 deployments: ethereum [`0x88b96f...88603a`](./contracts/ethereum-1/0x88b96f11ab91d282b4200b73fe401f6fc388603a/); ethereum `0xe5fcbd...2c5f91` | ✅ Audited |
| RegistryFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x939f1c...73bf8c`](./contracts/ethereum-1/0x939f1cc163fdc38a77571019eb4ad1794873bf8c/); ethereum `0xff22ea...cfb077` | ✅ Audited |
| ReleaseRegistry | registry | ethereum | n/a | 2 deployments: ethereum [`0x5bd444...b6c4f6`](./contracts/ethereum-1/0x5bd444ad23e02376f8fbba47e3cc9d2cadb6c4f6/); ethereum `0x70f8ac...1da901` | ✅ Audited |
| RoleManager | governance | ethereum | n/a | [`0xa1a325...b4e7c1`](./contracts/ethereum-1/0xa1a3257813ed45d91e9c45e03c66fcdd54b4e7c1/) | ✅ Audited |
| TellerWithMultiAssetSupport | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x1da9ce...76ece1`](./contracts/ethereum-1/0x1da9cefa0f46b2087b2cf7dbf9e62dd94076ece1/); ethereum `0x685adb...160429` | ✅ Audited |
| WithdrawLimitModule | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x4c86cb...493c22`](./contracts/ethereum-1/0x4c86cb5cd701cbf2364f25ed9563ff3d3d493c22/); ethereum `0xa2ed40...f17216` | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SwellToken | token | ethereum | n/a | [`0x0a6e7b...b35676`](./contracts/ethereum-1/0x0a6e7ba5042b38349e437ec6db6214aec7b35676/) | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x358d94...acb7b6`](./contracts/ethereum-1/0x358d94b5b2f147d741088803d932acb566acb7b6/); ethereum `0x8db235...864dde` | ⚠️ Unaudited |
| EigenPod | core_logic | ethereum | unit-43380 | [`0x8d0b4d...ee7258`](./contracts/ethereum-1/0x8d0b4dfccc8b2a268486d9754b135d8ad1ee7258/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 2 deployments: ethereum [`0x674822...0931a9`](./contracts/ethereum-1/0x6748220a79446867eb41a824b4f74a92fc0931a9/); ethereum `0x95e8ba...151ef6` | ⚠️ Unaudited |
| RolesAuthority | governance | ethereum | n/a | 3 deployments: ethereum [`0x1f5ddd...d3a016`](./contracts/ethereum-1/0x1f5dddf627c3796a589c6271b36a570f18d3a016/); ethereum `0x9d663f...68f377`; ethereum `0xa9bd69...0558d6` | ⚠️ Unaudited |
| SwBtcOFTAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x584cd3...e7dae2`](./contracts/ethereum-1/0x584cd37ba4ab54f074f1067c1f51cce8e6e7dae2/); ethereum `0xa5bd95...2aa3e2` | ⚠️ Unaudited |
| SwellOFTAdapter | adapter | ethereum | n/a | [`0x093410...9d85b7`](./contracts/ethereum-1/0x09341022ea237a4db1644de7ccf8fa0e489d85b7/) | ⚠️ Unaudited |
| SwETHOFTAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x9b07fb...33f562`](./contracts/ethereum-1/0x9b07fb810ef909b01f959911cef2cc834433f562/); ethereum `0xd98f5c...c27b5e` | ⚠️ Unaudited |
| Yearn Vault Factory | registry | ethereum | n/a | [`0x981771...b17bb0`](./contracts/ethereum-1/0x981771292052c5f77b14a3bd4df22e43a8b17bb0/) | ⚠️ Unaudited |

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
| [ChainSecurity_Swell_swBTC_audit.pdf (also discovered via alternate URL)](https://github.com/SwellNetwork/v3-core-public/blob/9765443eedc0f32f3b8ca6e11979a77e84509f25/Audit%20Reports/BTC%20LRT/ChainSecurity_Swell_swBTC_audit.pdf) | ChainSecurity | Audit | 2024-08 | aging | Direct | contract_name | 14 | high |
| [NM_0273_SWELL_BTC_LRT.pdf (also discovered via alternate URL)](https://github.com/SwellNetwork/v3-core-public/blob/9765443eedc0f32f3b8ca6e11979a77e84509f25/Audit%20Reports/BTC%20LRT/NM_0273_SWELL_BTC_LRT.pdf) | unknown | Audit | 2024-08 | aging | Direct | contract_name | 5 | high |
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | contract_name | 8 | high |
| [pashov-boring-vault.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-boring-vault.pdf) | Pashov Audit Group | Audit | 2024-07 | aging | Direct | contract_name | 2 | high |
| [spearbit-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | 8 | high |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/SwellNetwork/v3-core-public/ba1eeff12ab994a26492fa5dcd0aa8937733dbb4/Audit%20Reports/Marlin/Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2024-01 | stale | Direct | contract_name | 4 | high |
| [2024-02-23-cyfrin-swell-v2.0.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Barracuda/2024-02-23-cyfrin-swell-v2.0.pdf) | Cyfrin | Audit | 2024-02 | stale | Direct | contract_name | 4 | high |
| [Sigma_Prime_Swell_Barracuda_Upgrade_Security_Assessment_Report_v2.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Barracuda/Sigma_Prime_Swell_Barracuda_Upgrade_Security_Assessment_Report_v2.pdf) | Sigma Prime | Audit | 2024-02 | stale | Direct | contract_name | 3 | high |
| [Swell-audit-jan-2024(Public).pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Barracuda/Swell-audit-jan-2024(Public).pdf) | Unknown | Audit | 2024-02 | stale | Direct | contract_name | 4 | high |
| [NM0231_FINAL_SWELL.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Barracude%20(LRT)/NM0231_FINAL_SWELL.pdf) | Barracude | Audit | 2024-06 | stale | Direct | contract_name | 3 | high |
| [Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Barracude%20(LRT)/Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf) | Sigma Prime | Audit | 2024-07 | aging | Direct | contract_name | 4 | high |
| [Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Marlin/Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report.pdf) | Sigma Prime | Audit | 2024-01 | stale | Direct | contract_name | 4 | high |
| [Sigma_Prime_Swell_Network_Security_Assessment_Report_v2_1.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Seawolf/Sigma_Prime_Swell_Network_Security_Assessment_Report_v2_1.pdf) | Sigma Prime | Audit | 2023-04 | stale | Direct | contract_name | 4 | high |
| [Swell Staking Security Audit Report.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Swell%20L2%20Pre%20Deposit/Swell%20Staking%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [swell-l2-pre-deposit-audit-april-2024 (Public).pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Swell%20L2%20Pre%20Deposit/swell-l2-pre-deposit-audit-april-2024%20(Public).pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [swell-mar24(Public).pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Swell%20Token%20and%20Airdrop/swell-mar24(Public).pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0a6e7b...b35676`](./contracts/ethereum-1/0x0a6e7ba5042b38349e437ec6db6214aec7b35676/) | SwellToken | token | $7,764,829.04 | Verified native implementation with $7,764,829.04 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d0b4d...ee7258`](./contracts/ethereum-1/0x8d0b4dfccc8b2a268486d9754b135d8ad1ee7258/) | EigenPod | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x584cd3...e7dae2`](./contracts/ethereum-1/0x584cd37ba4ab54f074f1067c1f51cce8e6e7dae2/) | SwBtcOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x093410...9d85b7`](./contracts/ethereum-1/0x09341022ea237a4db1644de7ccf8fa0e489d85b7/) | SwellOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b07fb...33f562`](./contracts/ethereum-1/0x9b07fb810ef909b01f959911cef2cc834433f562/) | SwETHOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 2 |
| standard_library | 3 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=15
- Match method counts: extraction_exact=109

Zero-match audit list:

- [13992] swell-mar24(Public).pdf

Fork inheritance lineage and inherited audits are included when available.
