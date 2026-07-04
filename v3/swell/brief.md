# Agentic Audit Brief: Swell

## Project Overview

- Project: Swell (`swell`)
- Website: [https://www.swellnetwork.io/](https://www.swellnetwork.io/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:57.383Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: ethereum
- Contract surface: 42 unique implementations (75 raw deployments)
- DeFi Llama TVL: $92,570,809.48
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 93 project-authored contract(s) across 1 chain(s); 9 ERC20 tokens, 3 ERC721 NFTs, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 27 common project-authored base contract(s) (whitelist, oftadapter, oftcore). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 93; live-surface contracts included: 68 (67 live, 1 unknown).
- Excluded by liveness: 25 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 19/41 (46.3%)
- Deployed-live implementations: 41 of 42 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 19/41
- Verified + Unaudited implementations: 22
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 42
- Raw deployments: 75
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 16
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 14 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 18 match-unverified
- Tier 1 coverage: 39.0% (ChainSecurity, Cyfrin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 9 | 22.0% | 2024-08 |
| ChainSecurity | Tier 1 | 8 | 19.5% | 2024-08 |
| Sigma Prime | Tier 2 | 5 | 12.2% | 2024-07 |
| 0xMacro | Tier 2 | 4 | 9.8% | 2024-04 |
| Cyfrin | Tier 1 | 4 | 9.8% | 2024-02 |
| Spearbit | Tier 1 | 4 | 9.8% | 2024-04 |
| Barracude | Tier 2 | 3 | 7.3% | 2024-06 |
| Pashov Audit Group | Tier 2 | 1 | 2.4% | 2024-07 |
| yAudit | Tier 2 | 1 | 2.4% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Accountant | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x15a94d...8ba7b6`](./contracts/ethereum-1/0x15a94d49fac6e23e17c1366c999117a1de8ba7b6/); ethereum `0x48dacb...fb3825` | ✅ Audited |
| AccountantWithRateProviders | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x411c78...df2755`](./contracts/ethereum-1/0x411c78bc8c36c3c66784514f28c56209e1df2755/); ethereum `0x6bbf58...1b1a08` | ✅ Audited |
| BoringVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x66e47e...4d831a`](./contracts/ethereum-1/0x66e47e6957b85cf62564610b76dd206bb04d831a/); ethereum `0x9ed153...775f22` | ✅ Audited |
| CumulativeMerkleDrop | unknown | ethereum | n/a | [`0x342f0d...739d75`](./contracts/ethereum-1/0x342f0d375ba986a65204750a4aece3b39f739d75/) | ✅ Audited |
| DelayedWithdraw | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x755a07...05cf85`](./contracts/ethereum-1/0x755a078dee1c264a3053f02cd634e750d505cf85/); ethereum `0x805c6d...fa55b8` | ✅ Audited |
| DepositManager | core_logic | ethereum | n/a | [`0x5e6342...9a4889`](./contracts/ethereum-1/0x5e6342d8090665be14eeb8154c8a87b7249a4889/) | ✅ Audited |
| DepositManager | core_logic | ethereum | n/a | 2 deployments: ethereum [`0xb3d9cf...5b8f39`](./contracts/ethereum-1/0xb3d9cf8e163bbc840195a97e81f8a34e295b8f39/); ethereum `0xeee620...f4524b` | ✅ Audited |
| Keeper | operational_periphery | ethereum | n/a | [`0xc2a558...9f182f`](./contracts/ethereum-1/0xc2a55871a713fb98a6b60e2e76fc94021c9f182f/) | ✅ Audited |
| ManagerWithMerkleVerification | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x69fc70...4f50c0`](./contracts/ethereum-1/0x69fc700226e9e12d8c5e46a4b50a78efb64f50c0/); ethereum `0x6cea0a...e91e06` | ✅ Audited |
| NodeOperatorRegistry | registry | ethereum | n/a | [`0x46ddc3...1a1a1d`](./contracts/ethereum-1/0x46ddc39e780088b1b146aba8cbbe15dc321a1a1d/) | ✅ Audited |
| Registry | registry | ethereum | n/a | 2 deployments: ethereum [`0x88b96f...88603a`](./contracts/ethereum-1/0x88b96f11ab91d282b4200b73fe401f6fc388603a/); ethereum `0xe5fcbd...2c5f91` | ✅ Audited |
| RegistryFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x939f1c...73bf8c`](./contracts/ethereum-1/0x939f1cc163fdc38a77571019eb4ad1794873bf8c/); ethereum `0xff22ea...cfb077` | ✅ Audited |
| ReleaseRegistry | registry | ethereum | n/a | 2 deployments: ethereum [`0x5bd444...b6c4f6`](./contracts/ethereum-1/0x5bd444ad23e02376f8fbba47e3cc9d2cadb6c4f6/); ethereum `0x70f8ac...1da901` | ✅ Audited |
| RoleManager | unknown | ethereum | n/a | 4 deployments: ethereum [`0x1bb44f...975bf3`](./contracts/ethereum-1/0x1bb44f9d91b4276621550aeea5d2d96279975bf3/); ethereum `0x8413e6...f4d6af`; ethereum `0xa1a325...b4e7c1`; ethereum `0xd90541...d5b4a1` | ✅ Audited |
| RswETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4796d9...4e2362`](./contracts/ethereum-1/0x4796d939b22027c2876d5ce9fde52da9ec4e2362/); ethereum `0xfae103...afa6c0` | ✅ Audited |
| SimpleStakingERC20 | token | ethereum | n/a | [`0x38d43a...31d774`](./contracts/ethereum-1/0x38d43a6cb8da0e855a42fb6b0733a0498531d774/) | ✅ Audited |
| swETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0xce95ba...affbfc`](./contracts/ethereum-1/0xce95ba824ae9a4df9b303c0bbf4d605ba2affbfc/); ethereum `0xf951e3...7ded78` | ✅ Audited |
| TellerWithMultiAssetSupport | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x1da9ce...76ece1`](./contracts/ethereum-1/0x1da9cefa0f46b2087b2cf7dbf9e62dd94076ece1/); ethereum `0x685adb...160429` | ✅ Audited |
| WithdrawLimitModule | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x4c86cb...493c22`](./contracts/ethereum-1/0x4c86cb5cd701cbf2364f25ed9563ff3d3d493c22/); ethereum `0xa2ed40...f17216` | ✅ Audited |

### ⚠️ Verified + Unaudited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessControlManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4195ed...b6bc56`](./contracts/ethereum-1/0x4195ed6e112cbddc1adf7271047dba4e6bb6bc56/); ethereum `0x796592...e3333f` | ⚠️ Unaudited |
| AccessControlManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x527d6d...855d23`](./contracts/ethereum-1/0x527d6db79bff473b8dd722429bdb3b0c8b855d23/); ethereum `0x52b5f5...8a7d11` | ⚠️ Unaudited |
| AccessControlManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x625087...b95eac`](./contracts/ethereum-1/0x625087d72c762254a72cb22cc2eca40da6b95eac/); ethereum `0xbb7b99...593e64` | ⚠️ Unaudited |
| DepositManager | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2a41d5...92ea28`](./contracts/ethereum-1/0x2a41d539d5a599a6ea6a79e32bd047277892ea28/); ethereum `0x38956b...8d80a7`; ethereum `0xb987fa...370df6` | ⚠️ Unaudited |
| EigenLayerManager | unknown | ethereum | n/a | [`0xc94cff...6d0936`](./contracts/ethereum-1/0xc94cffd5249df4008a043ee61e13f19af16d0936/) | ⚠️ Unaudited |
| EigenPod | core_logic | ethereum | n/a | [`0x8d0b4d...ee7258`](./contracts/ethereum-1/0x8d0b4dfccc8b2a268486d9754b135d8ad1ee7258/) | ⚠️ Unaudited |
| NodeOperatorRegistry | unknown | ethereum | n/a | [`0xaae0b3...a1c524`](./contracts/ethereum-1/0xaae0b305b3f1edde7b11b680d4fa9252f7a1c524/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | 4 deployments: ethereum [`0x25eaf5...5b8846`](./contracts/ethereum-1/0x25eaf579ca2255faa5463c635eec28697b5b8846/); ethereum `0x674822...0931a9`; ethereum `0x95e8ba...151ef6`; ethereum `0xd750b8...9bfd14` | ⚠️ Unaudited |
| RepricingOracle | unknown | ethereum | n/a | [`0x289d60...2d2d71`](./contracts/ethereum-1/0x289d600447a74b952ad16f0bd53b8eaaac2d2d71/) | ⚠️ Unaudited |
| RepricingOracle | unknown | ethereum | n/a | [`0xd5a73c...d2e959`](./contracts/ethereum-1/0xd5a73c748449a45cc7d9f21c7ed3ab9eb3d2e959/) | ⚠️ Unaudited |
| RolesAuthority | governance | ethereum | n/a | 3 deployments: ethereum [`0x1f5ddd...d3a016`](./contracts/ethereum-1/0x1f5dddf627c3796a589c6271b36a570f18d3a016/); ethereum `0x9d663f...68f377`; ethereum `0xa9bd69...0558d6` | ⚠️ Unaudited |
| RswEXIT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x58749c...56f064`](./contracts/ethereum-1/0x58749c46ffe97e4d79508a2c781c440f4756f064/); ethereum `0xbd6a5e...e06479` | ⚠️ Unaudited |
| StakerProxy | unknown | ethereum | n/a | [`0xb68b12...df17a0`](./contracts/ethereum-1/0xb68b125e5b0f2600841b2bba484e76a495df17a0/) | ⚠️ Unaudited |
| StakerProxy | unknown | ethereum | n/a | [`0xe19466...06e8ae`](./contracts/ethereum-1/0xe194661251877a69a1282bd0b2d344ccba06e8ae/) | ⚠️ Unaudited |
| SwBtcOFTAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x584cd3...e7dae2`](./contracts/ethereum-1/0x584cd37ba4ab54f074f1067c1f51cce8e6e7dae2/); ethereum `0xa5bd95...2aa3e2` | ⚠️ Unaudited |
| SwellOFTAdapter | adapter | ethereum | n/a | [`0x093410...9d85b7`](./contracts/ethereum-1/0x09341022ea237a4db1644de7ccf8fa0e489d85b7/) | ⚠️ Unaudited |
| SwellToken | token | ethereum | n/a | [`0x0a6e7b...b35676`](./contracts/ethereum-1/0x0a6e7ba5042b38349e437ec6db6214aec7b35676/) | ⚠️ Unaudited |
| SwETHOFTAdapter | adapter | ethereum | n/a | 2 deployments: ethereum [`0x9b07fb...33f562`](./contracts/ethereum-1/0x9b07fb810ef909b01f959911cef2cc834433f562/); ethereum `0xd98f5c...c27b5e` | ⚠️ Unaudited |
| swEXIT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x02454d...6c8f78`](./contracts/ethereum-1/0x02454d649054276e3ed8b9f17f8d5f49ac6c8f78/); ethereum `0x48c11b...251663` | ⚠️ Unaudited |
| SymbioticAdapter | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2a6a2b...c0caf8`](./contracts/ethereum-1/0x2a6a2beebf6d65e03246087a41812db1c5c0caf8/); ethereum `0x69dda9...41836a`; ethereum `0x9e07af...3fdae7` | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x358d94...acb7b6`](./contracts/ethereum-1/0x358d94b5b2f147d741088803d932acb566acb7b6/); ethereum `0x8db235...864dde` | ⚠️ Unaudited |
| Yearn Vault Factory | registry | ethereum | n/a | [`0x981771...b17bb0`](./contracts/ethereum-1/0x981771292052c5f77b14a3bd4df22e43a8b17bb0/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xa35f12...240a14` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ChainSecurity_Swell_swBTC_audit.pdf](https://github.com/SwellNetwork/v3-core-public/blob/9765443eedc0f32f3b8ca6e11979a77e84509f25/Audit%20Reports/BTC%20LRT/ChainSecurity_Swell_swBTC_audit.pdf) | ChainSecurity | Audit | 2024-08 | aging | Direct | contract_name | 8 | n/a |
| [NM_0273_SWELL_BTC_LRT.pdf](https://github.com/SwellNetwork/v3-core-public/blob/9765443eedc0f32f3b8ca6e11979a77e84509f25/Audit%20Reports/BTC%20LRT/NM_0273_SWELL_BTC_LRT.pdf) | unknown | Audit | 2024-08 | aging | Direct | contract_name | 3 | n/a |
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | contract_name | 4 | n/a |
| [pashov-boring-vault.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-boring-vault.pdf) | Pashov Audit Group | Audit | 2024-07 | stale | Direct | contract_name | 1 | n/a |
| [spearbit-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | 4 | n/a |
| [Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report_v2_0.pdf](https://raw.githubusercontent.com/SwellNetwork/v3-core-public/ba1eeff12ab994a26492fa5dcd0aa8937733dbb4/Audit%20Reports/Marlin/Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report_v2_0.pdf) | Sigma Prime | Audit | 2024-01 | stale | Direct | contract_name | 4 | n/a |
| [2024-02-23-cyfrin-swell-v2.0.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Barracuda/2024-02-23-cyfrin-swell-v2.0.pdf) | Cyfrin | Audit | 2024-02 | stale | Direct | contract_name | 4 | n/a |
| [Sigma_Prime_Swell_Barracuda_Upgrade_Security_Assessment_Report_v2.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Barracuda/Sigma_Prime_Swell_Barracuda_Upgrade_Security_Assessment_Report_v2.pdf) | Sigma Prime | Audit | 2024-02 | stale | Direct | contract_name | 3 | n/a |
| [Swell-audit-jan-2024(Public).pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Barracuda/Swell-audit-jan-2024(Public).pdf) | Unknown | Audit | 2024-02 | stale | Direct | contract_name | 4 | n/a |
| [NM0231_FINAL_SWELL.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Barracude%20(LRT)/NM0231_FINAL_SWELL.pdf) | Barracude | Audit | 2024-06 | stale | Direct | contract_name | 3 | n/a |
| [Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Barracude%20(LRT)/Sigma_Prime_Swell_Network_Restaking_Contracts_Security_Assessment.pdf) | Sigma Prime | Audit | 2024-07 | stale | Direct | contract_name | 4 | n/a |
| [Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Marlin/Sigma_Prime_Swell_Liquid_Restaking_Token_Security_Assessment_Report.pdf) | Sigma Prime | Audit | 2024-01 | stale | Direct | contract_name | 4 | n/a |
| [Sigma_Prime_Swell_Network_Security_Assessment_Report_v2_1.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Seawolf/Sigma_Prime_Swell_Network_Security_Assessment_Report_v2_1.pdf) | Sigma Prime | Audit | 2023-04 | stale | Direct | contract_name | 4 | n/a |
| [Swell Staking Security Audit Report.pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Swell%20L2%20Pre%20Deposit/Swell%20Staking%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2024-04 | stale | Direct | contract_name | 1 | n/a |
| [swell-l2-pre-deposit-audit-april-2024 (Public).pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Swell%20L2%20Pre%20Deposit/swell-l2-pre-deposit-audit-april-2024%20(Public).pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 1 | n/a |
| [swell-mar24(Public).pdf](https://github.com/SwellNetwork/v3-core-public/blob/master/Audit%20Reports/Swell%20Token%20and%20Airdrop/swell-mar24(Public).pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: contract_name=52, extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
