# Agentic Audit Brief: nest

## Project Overview

- Project: nest (`nest`)
- Website: [https://app.usenest.xyz/](https://app.usenest.xyz/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:47.570Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: bsc, ethereum, hyperliquid, polygon
- Contract surface: 48 unique implementations (58 raw deployments)
- DeFi Llama TVL: $17,707,575.00
- On-chain TVL (included contracts): $69,414,792.84
- TVL by chain: Ethereum $58,239,992.84 | Bsc $11,174,800.00

## Project Description

Nest is the current Nest Exchange/NEST Hyperliquid MetaDEX product focused on decentralized trading and liquidity on Hyperliquid. Legacy Ethereum/BSC/Polygon NEST-like systems, unrelated token contracts, and any claimed legacy synthetic-asset components should not be included unless independently verified as part of the current project.

### Architecture

The Core family provides the ve(3,3) layer that governs emissions and incentives for the DEX's liquidity pools, while the Key Contracts supply the NEST token and voting escrow used across both. The NEST family includes legacy components and veNEST compounding strategies that interact with the Core gauges and bribes.

## Contract Surface Quality

- Indexed contracts: 510; live-surface contracts included: 58 (52 live, 6 unknown).
- Excluded by liveness: 343 inactive, 109 singleton, 0 uninitialized.
- Deployment units: 6/59 live.
- Detected codebases: none
- Unverified dependencies: 2/38.

## Audit Coverage Summary

- Verified implementations audited: 16/44 (36.4%)
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 48
- Raw deployments: 58
- Audits discovered: 10
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $69,414,792.84
- Latest audit: 2026-03 (fresh)
- Staleness: 1 fresh, 2 aging, 1 stale, 6 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BailSec | Tier 2 | 16 | 36.4% | 2026-03 |

## Contract Surface

### ✅ Verified + Audited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BribeUpgradeable | operational_periphery | hyperliquid | n/a | [`0xd073c8...c3cc64`](./contracts/hyperliquid-999/0xd073c875ac73c5b93ec142675bb6a40134c3cc64/) | ✅ Audited |
| BribeVeNESTRewardToken | operational_periphery | hyperliquid | unit-29121 | [`0x224240...231f47`](./contracts/hyperliquid-999/0x224240310337462bde7fee244a6e07e35a231f47/) | ✅ Audited |
| BribeVeNESTRewardToken | operational_periphery | hyperliquid | n/a | [`0xa2e33f...5104bc`](./contracts/hyperliquid-999/0xa2e33f280d93621d967d273e33998da4935104bc/) | ✅ Audited |
| CompoundEmissionExtensionUpgradeable | operational_periphery | hyperliquid | unit-29118 | [`0x1c9250...3ca05d`](./contracts/hyperliquid-999/0x1c925056a1a657a4cb70d677d8c21028233ca05d/) | ✅ Audited |
| CompoundEmissionExtensionUpgradeable | operational_periphery | hyperliquid | n/a | [`0x550040...2f881a`](./contracts/hyperliquid-999/0x550040864d272392d7c14ab9bcff4159952f881a/) | ✅ Audited |
| CustomBribeRewardRouter | operational_periphery | hyperliquid | unit-29119 | [`0x1eb78f...8b3dfb`](./contracts/hyperliquid-999/0x1eb78fb533e480436a2e10ca01f5e828a28b3dfb/) | ✅ Audited |
| CustomBribeRewardRouter | operational_periphery | hyperliquid | n/a | [`0x6e18a9...1e7eb5`](./contracts/hyperliquid-999/0x6e18a9b2fdb7915ece11ef61ab59d43e611e7eb5/) | ✅ Audited |
| MinterUpgradeable | unknown | hyperliquid | n/a | [`0xeaaa90...ec5ffc`](./contracts/hyperliquid-999/0xeaaa90ba5a9229f7db273abb3ccae33a50ec5ffc/) | ✅ Audited |
| Nest | unknown | hyperliquid | n/a | [`0x07c57e...4e3035`](./contracts/hyperliquid-999/0x07c57e32a3c29d5659bda1d3efc2e7bf004e3035/) | ✅ Audited |
| Pair | unknown | hyperliquid | n/a | [`0xc8e091...740082`](./contracts/hyperliquid-999/0xc8e091a600da73e27b1101f319a760e2c0740082/) | ✅ Audited |
| RouterV2 | adapter | hyperliquid | n/a | [`0xfdb346...fd2a17`](./contracts/hyperliquid-999/0xfdb34624506e9a0624af60f85ebd9e44a0fd2a17/) | ✅ Audited |
| VeArtProxyStatic | unknown | hyperliquid | n/a | [`0xbb3eb3...708ce0`](./contracts/hyperliquid-999/0xbb3eb334412a8a7e8336ccba98bdce5694708ce0/) | ✅ Audited |
| VoterUpgradeableV2 | unknown | hyperliquid | unit-29123 | [`0x566bdc...dba901`](./contracts/hyperliquid-999/0x566bdc5444fd5fe5d93ec379bd66ec861ddba901/) | ✅ Audited |
| VoterUpgradeableV2 | unknown | hyperliquid | n/a | [`0xc5a2f1...6c2799`](./contracts/hyperliquid-999/0xc5a2f1a950dd3e383132fc89a4ebd3cfe66c2799/) | ✅ Audited |
| VotingEscrowUpgradeableV2 | operational_periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x218af7...54df60`](./contracts/hyperliquid-999/0x218af7c32caebff93196e2475aced8e51254df60/); hyperliquid `0xab7517...18d968` | ✅ Audited |
| VotingEscrowUpgradeableV2 | operational_periphery | hyperliquid | unit-29122 | [`0x2f2ae0...412074`](./contracts/hyperliquid-999/0x2f2ae07e3cc3391a2e27825652ba8dcdd5412074/) | ✅ Audited |

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HBTCToken | token | ethereum | n/a | [`0x0316eb...c6d380`](./contracts/ethereum-1/0x0316eb71485b0ab14103307bf65a021042c6d380/) | ⚠️ Unaudited |
| ERC20Template | token | polygon | n/a | 7 deployments: bsc `0x591aaa...5f47df`; bsc `0x98f866...d1a6a7`; polygon [`0x15cd94...5ab9ea`](./contracts/polygon-137/0x15cd94c519fc81aad76570ec80939b4b855ab9ea/); polygon `0x1e0967...66c899`; polygon `0x98f866...d1a6a7`; polygon `0xd52f45...b80a4b`; polygon `0xf26d86...0ee362` | ⚠️ Unaudited |
| Nest_NToken_OfferMain | token | ethereum | n/a | [`0xc40d7b...4a8b3c`](./contracts/ethereum-1/0xc40d7b9ca90eaca4a6e067b6ec689fd29f4a8b3c/) | ⚠️ Unaudited |
| AlgebraCommunityVault | core_logic | hyperliquid | n/a | [`0x15e408...8f5768`](./contracts/hyperliquid-999/0x15e408a37ce4d13218202c0054b0f485e38f5768/) | ⚠️ Unaudited |
| AlgebraDefaultPluginFactory | registry | hyperliquid | n/a | [`0xe165ee...1634ad`](./contracts/hyperliquid-999/0xe165ee23a9de18f7287dde6e1c57737a6b1634ad/) | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | hyperliquid | n/a | [`0x92b99d...0c3066`](./contracts/hyperliquid-999/0x92b99da7ded04684fede0e68484dc17b930c3066/) | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | periphery | hyperliquid | n/a | [`0x4b2acd...6bc545`](./contracts/hyperliquid-999/0x4b2acd111648718d9aaf028b744dbbfbf96bc545/) | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | hyperliquid | n/a | [`0x3842ce...ca161f`](./contracts/hyperliquid-999/0x3842ce04380b8655a3a47ed87ea0d311adca161f/) | ⚠️ Unaudited |
| ASET | unknown | ethereum | n/a | [`0x139cec...4d3c68`](./contracts/ethereum-1/0x139cec55d1ec47493dfa25ca77c9208aba4d3c68/) | ⚠️ Unaudited |
| BEP20USDT | token | bsc | n/a | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| CompoundVeNESTManagedNFTStrategyUpgradeable | core_logic | hyperliquid | n/a | [`0xb3b7f4...3bf5b5`](./contracts/hyperliquid-999/0xb3b7f4f4b380ce53259170654eed32c89b3bf5b5/) | ⚠️ Unaudited |
| DCU | unknown | bsc | n/a | [`0xf56c6e...a933ef`](./contracts/bsc-56/0xf56c6ece0c0d6fbb9a53282c0df71dbfafa933ef/) | ⚠️ Unaudited |
| FarmingCenter | unknown | hyperliquid | n/a | [`0x98961d...30b0f8`](./contracts/hyperliquid-999/0x98961d85e004b246fcd9a07ac4d6d8169e30b0f8/) | ⚠️ Unaudited |
| FeesVaultUpgradeable | core_logic | hyperliquid | n/a | [`0x7b12e8...c7cf03`](./contracts/hyperliquid-999/0x7b12e8ed9740d9d190b498a9aac3584d81c7cf03/) | ⚠️ Unaudited |
| FreeTransfer | unknown | ethereum | n/a | [`0xf13c8c...4592bb`](./contracts/ethereum-1/0xf13c8c237d161de539941655fe897e33264592bb/) | ⚠️ Unaudited |
| GaugeUpgradeable | operational_periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x0ef3aa...72655f`](./contracts/hyperliquid-999/0x0ef3aa4f8e509d580ee0a1fd0e14c4b66a72655f/); hyperliquid `0x90ec77...d7636e` | ⚠️ Unaudited |
| Nest_3_OfferMain | unknown | ethereum | n/a | [`0xc83e00...d039f6`](./contracts/ethereum-1/0xc83e009c7794e8f6d1954dc13c23a35fc4d039f6/) | ⚠️ Unaudited |
| NFTDescriptor | token | hyperliquid | n/a | [`0xa842fe...091836`](./contracts/hyperliquid-999/0xa842feb9f816891b4a377b6f8435462739091836/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | hyperliquid | unit-29137 | [`0xeaf587...616250`](./contracts/hyperliquid-999/0xeaf58788a405f3253814b4559391a22be8616250/) | ⚠️ Unaudited |
| ProxyAdmin | governance | hyperliquid | n/a | 3 deployments: polygon `0x91acf8...9bb26e`; hyperliquid [`0x45727c...9d92ab`](./contracts/hyperliquid-999/0x45727c03b46970c64e4039b546e6bd1f9c9d92ab/); hyperliquid `0xb688d5...f20124` | ⚠️ Unaudited |
| Quoter | periphery | hyperliquid | n/a | [`0x89c3ab...e4db78`](./contracts/hyperliquid-999/0x89c3ab4f5342498e9edac5c43c07e9bd9ae4db78/) | ⚠️ Unaudited |
| QuoterV2 | periphery | hyperliquid | n/a | [`0xbea206...f5dfad`](./contracts/hyperliquid-999/0xbea20609a4772311c5b81f814cd4f9ecaef5dfad/) | ⚠️ Unaudited |
| SecurityRegistry | registry | hyperliquid | n/a | [`0x47f2d9...585879`](./contracts/hyperliquid-999/0x47f2d9058fe32da17a0f253f70266d9dcd585879/) | ⚠️ Unaudited |
| SingelTokenVirtualRewarderUpgradeable | token | hyperliquid | n/a | [`0xaf24cf...8069df`](./contracts/hyperliquid-999/0xaf24cf0dd121b89df98b9fad2e05821bd08069df/) | ⚠️ Unaudited |
| SwapRouter | adapter | hyperliquid | n/a | [`0xaa26b8...9681e9`](./contracts/hyperliquid-999/0xaa26b8e5cadd04430c32787ecc3aa325e99681e9/) | ⚠️ Unaudited |
| TickLens | periphery | hyperliquid | n/a | [`0x44f129...51c2c5`](./contracts/hyperliquid-999/0x44f1292f550e33b2ecd346ac8746e405a351c2c5/) | ⚠️ Unaudited |
| UtilsUpgradeable | unknown | hyperliquid | n/a | [`0xc7deed...8c0195`](./contracts/hyperliquid-999/0xc7deede78ea5215a6a2eabe340adb65e4a8c0195/) | ⚠️ Unaudited |
| WHYPE9 | unknown | hyperliquid | n/a | [`0x555555...555555`](./contracts/hyperliquid-999/0x5555555555555555555555555555555555555555/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | hyperliquid | n/a | `0x0136b1...9cc964` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3aed39...05636f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x56b0d9...7d04b7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf00037...5c494d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [[\[Final Report\]]()](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Nest%20-%20VE%20Core%20-%20Final%20Report.pdf) | BailSec | Audit | 2026-03 | fresh | Direct | contract_name | 17 | high |
| [* **Final report (Code4rena):** [](https://code4rena.com/reports/2024-09-fenix-finance?utm_source=chatgpt.com)](https://code4rena.com/reports/2024-09-fenix-finance) | Code4rena | Contest | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [* **Contest page (Code4rena):** [](https://code4rena.com/audits/2024-09-fenix-finance-invitational?utm_source=chatgpt.com)](https://code4rena.com/audits/2024-09-fenix-finance-invitational) | Code4rena | Contest | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Algebra_Paladin_report.pdf (also discovered via alternate URL)](https://github.com/hats-finance/Fenix-Finance-0x83dbe5aa378f3ce160ed084daf85f621289fb92f/blob/main/audits/Algebra_Paladin_report.pdf) | Paladin | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [Core_audit_report_MixBytes.pdf (also discovered via alternate URL)](https://github.com/hats-finance/Fenix-Finance-0x83dbe5aa378f3ce160ed084daf85f621289fb92f/blob/main/audits/Core_audit_report_MixBytes.pdf) | MixBytes | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Farming_Plugin_report_MixBytes.pdf (also discovered via alternate URL)](https://github.com/hats-finance/Fenix-Finance-0x83dbe5aa378f3ce160ed084daf85f621289fb92f/blob/main/audits/Farming_Plugin_report_MixBytes.pdf) | MixBytes | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Riley_Holterhus_Algebra_Integral.pdf (also discovered via alternate URL)](https://github.com/hats-finance/Fenix-Finance-0x83dbe5aa378f3ce160ed084daf85f621289fb92f/blob/main/audits/Riley_Holterhus_Algebra_Integral.pdf) | Riley Holterhus | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Bailsec_Algebra_Integral_Update_Audit_differential_Report.pdf](https://github.com/cryptoalgebra/Algebra/blob/master/audits/Bailsec_Algebra_Integral_Update_Audit_differential_Report.pdf) | Bailsec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Bailsec_Algebra_Integralv1.2_Core_Update_Audit.pdf](https://github.com/cryptoalgebra/Algebra/blob/master/audits/Bailsec_Algebra_Integralv1.2_Core_Update_Audit.pdf) | Bailsec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Base_Plugin_report_MixBytes.pdf](https://github.com/cryptoalgebra/Algebra/blob/master/audits/Base_Plugin_report_MixBytes.pdf) | MixBytes | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0316eb...c6d380`](./contracts/ethereum-1/0x0316eb71485b0ab14103307bf65a021042c6d380/) | HBTCToken | token | $58,239,992.84 | Verified native implementation with $58,239,992.84 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x15cd94...5ab9ea`](./contracts/polygon-137/0x15cd94c519fc81aad76570ec80939b4b855ab9ea/) | ERC20Template | token | $11,174,800.00 | Verified native implementation with $11,174,800.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc40d7b...4a8b3c`](./contracts/ethereum-1/0xc40d7b9ca90eaca4a6e067b6ec689fd29f4a8b3c/) | Nest_NToken_OfferMain | token | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xe165ee...1634ad`](./contracts/hyperliquid-999/0xe165ee23a9de18f7287dde6e1c57737a6b1634ad/) | AlgebraDefaultPluginFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x139cec...4d3c68`](./contracts/ethereum-1/0x139cec55d1ec47493dfa25ca77c9208aba4d3c68/) | ASET | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf56c6e...a933ef`](./contracts/bsc-56/0xf56c6ece0c0d6fbb9a53282c0df71dbfafa933ef/) | DCU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7b12e8...c7cf03`](./contracts/hyperliquid-999/0x7b12e8ed9740d9d190b498a9aac3584d81c7cf03/) | FeesVaultUpgradeable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf13c8c...4592bb`](./contracts/ethereum-1/0xf13c8c237d161de539941655fe897e33264592bb/) | FreeTransfer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0ef3aa...72655f`](./contracts/hyperliquid-999/0x0ef3aa4f8e509d580ee0a1fd0e14c4b66a72655f/) | GaugeUpgradeable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc83e00...d039f6`](./contracts/ethereum-1/0xc83e009c7794e8f6d1954dc13c23a35fc4d039f6/) | Nest_3_OfferMain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x47f2d9...585879`](./contracts/hyperliquid-999/0x47f2d9058fe32da17a0f253f70266d9dcd585879/) | SecurityRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xaf24cf...8069df`](./contracts/hyperliquid-999/0xaf24cf0dd121b89df98b9fad2e05821bd08069df/) | SingelTokenVirtualRewarderUpgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xaa26b8...9681e9`](./contracts/hyperliquid-999/0xaa26b8e5cadd04430c32787ecc3aa325e99681e9/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x44f129...51c2c5`](./contracts/hyperliquid-999/0x44f1292f550e33b2ecd346ac8746e405a351c2c5/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xc7deed...8c0195`](./contracts/hyperliquid-999/0xc7deede78ea5215a6a2eabe340adb65e4a8c0195/) | UtilsUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x555555...555555`](./contracts/hyperliquid-999/0x5555555555555555555555555555555555555555/) | WHYPE9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 12 |
| standard_library | 1 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=31

Zero-match audit list:

- [11829] * **Final report (Code4rena):** [](https://code4rena.com/reports/2024-09-fenix-finance?utm_source=chatgpt.com)
- [11830] * **Contest page (Code4rena):** [](https://code4rena.com/audits/2024-09-fenix-finance-invitational?utm_source=chatgpt.com)
- [11831] Algebra_Paladin_report.pdf
- [11832] Core_audit_report_MixBytes.pdf
- [11833] Farming_Plugin_report_MixBytes.pdf
- [11834] Riley_Holterhus_Algebra_Integral.pdf
- [11836] Bailsec_Algebra_Integral_Update_Audit_differential_Report.pdf
- [11837] Bailsec_Algebra_Integralv1.2_Core_Update_Audit.pdf
- [11838] Base_Plugin_report_MixBytes.pdf

Fork inheritance lineage and inherited audits are included when available.
