# Agentic Audit Brief: nest

## Project Overview

- Project: nest (`nest`)
- Website: [https://app.usenest.xyz/](https://app.usenest.xyz/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.662Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: bsc, ethereum, hyperliquid
- Contract surface: 301 unique implementations (354 raw deployments)
- DeFi Llama TVL: $21,529,226.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 110 project-authored contract(s) across 3 chain(s); 10 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 22 common project-authored base contract(s) (container, upgradeabilityproxy, proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 446; live-surface contracts included: 324 (106 live, 218 unknown).
- Excluded by liveness: 122 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 24/78 (30.8%)
- Deployed-live implementations: 84 of 301 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 26/85
- Verified + Unaudited implementations: 59
- Verified by bytecode match: 0
- Unverified implementations: 216
- Unique implementations: 301
- Raw deployments: 354
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 3 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 15 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 11 match-unverified
- Tier 1 coverage: 17.9% (Code4rena, MixBytes)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BailSec | Tier 2 | 19 | 22.4% | 2026-03 |
| Code4rena | Tier 1 | 9 | 10.6% | 2024-09 |
| Paladin | Tier 2 | 6 | 7.1% | 2024-02 |
| MixBytes | Tier 1 | 5 | 5.9% | 2023-09 |

## Contract Surface

### ✅ Verified + Audited (26)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AlgebraBasePluginV1 | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x974f1b...85e3c1`](./contracts/hyperliquid-999/0x974f1be2b28c455ee29af20152c112feee85e3c1/); hyperliquid `0x9f0b39...faadd8` | ✅ Audited |
| AlgebraCommunityVault | core_logic | hyperliquid | n/a | [`0x15e408...8f5768`](./contracts/hyperliquid-999/0x15e408a37ce4d13218202c0054b0f485e38f5768/) | ✅ Audited |
| AlgebraEternalFarming | unknown | hyperliquid | n/a | [`0x92b99d...0c3066`](./contracts/hyperliquid-999/0x92b99da7ded04684fede0e68484dc17b930c3066/) | ✅ Audited |
| AlgebraPoolDeployer | core_logic | hyperliquid | n/a | [`0x3842ce...ca161f`](./contracts/hyperliquid-999/0x3842ce04380b8655a3a47ed87ea0d311adca161f/) | ✅ Audited |
| BribeUpgradeable | operational_periphery | hyperliquid | n/a | [`0xd073c8...c3cc64`](./contracts/hyperliquid-999/0xd073c875ac73c5b93ec142675bb6a40134c3cc64/) | ✅ Audited |
| BribeVeNESTRewardToken | operational_periphery | hyperliquid | n/a | [`0x224240...231f47`](./contracts/hyperliquid-999/0x224240310337462bde7fee244a6e07e35a231f47/) | ✅ Audited |
| BribeVeNESTRewardToken | operational_periphery | hyperliquid | n/a | [`0xa2e33f...5104bc`](./contracts/hyperliquid-999/0xa2e33f280d93621d967d273e33998da4935104bc/) | ✅ Audited |
| CompoundEmissionExtensionUpgradeable | operational_periphery | hyperliquid | n/a | [`0x1c9250...3ca05d`](./contracts/hyperliquid-999/0x1c925056a1a657a4cb70d677d8c21028233ca05d/) | ✅ Audited |
| CompoundEmissionExtensionUpgradeable | operational_periphery | hyperliquid | n/a | [`0x550040...2f881a`](./contracts/hyperliquid-999/0x550040864d272392d7c14ab9bcff4159952f881a/) | ✅ Audited |
| CustomBribeRewardRouter | operational_periphery | hyperliquid | n/a | [`0x1eb78f...8b3dfb`](./contracts/hyperliquid-999/0x1eb78fb533e480436a2e10ca01f5e828a28b3dfb/) | ✅ Audited |
| CustomBribeRewardRouter | operational_periphery | hyperliquid | n/a | [`0x6e18a9...1e7eb5`](./contracts/hyperliquid-999/0x6e18a9b2fdb7915ece11ef61ab59d43e611e7eb5/) | ✅ Audited |
| FarmingCenter | unknown | hyperliquid | n/a | [`0x98961d...30b0f8`](./contracts/hyperliquid-999/0x98961d85e004b246fcd9a07ac4d6d8169e30b0f8/) | ✅ Audited |
| FeesVaultUpgradeable | core_logic | hyperliquid | n/a | [`0x7b12e8...c7cf03`](./contracts/hyperliquid-999/0x7b12e8ed9740d9d190b498a9aac3584d81c7cf03/) | ✅ Audited |
| GaugeFactoryUpgradeable | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x09d1a5...04c49d`](./contracts/hyperliquid-999/0x09d1a533032319557196f87dff831ff46204c49d/); hyperliquid `0x15eb39...cee2c7`; hyperliquid `0x9eb42a...db55df` | ✅ Audited |
| GaugeUpgradeable | operational_periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x0ef3aa...72655f`](./contracts/hyperliquid-999/0x0ef3aa4f8e509d580ee0a1fd0e14c4b66a72655f/); hyperliquid `0x90ec77...d7636e` | ✅ Audited |
| MinterUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x13369f...da8fb8`](./contracts/hyperliquid-999/0x13369f61c13bd809984855ad26b1bf7780da8fb8/); hyperliquid `0x574f68...7e356d` | ✅ Audited |
| MinterUpgradeable | unknown | hyperliquid | n/a | [`0xeaaa90...ec5ffc`](./contracts/hyperliquid-999/0xeaaa90ba5a9229f7db273abb3ccae33a50ec5ffc/) | ✅ Audited |
| Nest | unknown | hyperliquid | n/a | [`0x07c57e...4e3035`](./contracts/hyperliquid-999/0x07c57e32a3c29d5659bda1d3efc2e7bf004e3035/) | ✅ Audited |
| NonfungiblePositionManager | governance | hyperliquid | n/a | [`0xeaf587...616250`](./contracts/hyperliquid-999/0xeaf58788a405f3253814b4559391a22be8616250/) | ✅ Audited |
| Pair | unknown | hyperliquid | n/a | [`0xc8e091...740082`](./contracts/hyperliquid-999/0xc8e091a600da73e27b1101f319a760e2c0740082/) | ✅ Audited |
| RouterV2 | adapter | hyperliquid | n/a | [`0xfdb346...fd2a17`](./contracts/hyperliquid-999/0xfdb34624506e9a0624af60f85ebd9e44a0fd2a17/) | ✅ Audited |
| VeArtProxyStatic | unknown | hyperliquid | n/a | [`0xbb3eb3...708ce0`](./contracts/hyperliquid-999/0xbb3eb334412a8a7e8336ccba98bdce5694708ce0/) | ✅ Audited |
| VoterUpgradeableV2 | unknown | hyperliquid | n/a | [`0x566bdc...dba901`](./contracts/hyperliquid-999/0x566bdc5444fd5fe5d93ec379bd66ec861ddba901/) | ✅ Audited |
| VoterUpgradeableV2 | unknown | hyperliquid | n/a | [`0xc5a2f1...6c2799`](./contracts/hyperliquid-999/0xc5a2f1a950dd3e383132fc89a4ebd3cfe66c2799/) | ✅ Audited |
| VotingEscrowUpgradeableV2 | operational_periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x218af7...54df60`](./contracts/hyperliquid-999/0x218af7c32caebff93196e2475aced8e51254df60/); hyperliquid `0xab7517...18d968` | ✅ Audited |
| VotingEscrowUpgradeableV2 | operational_periphery | hyperliquid | n/a | [`0x2f2ae0...412074`](./contracts/hyperliquid-999/0x2f2ae07e3cc3391a2e27825652ba8dcdd5412074/) | ✅ Audited |

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | 5 deployments: ethereum [`0x068b51...50ee77`](./contracts/ethereum-1/0x068b517d713dc32f5793bfb213f5a55e4f50ee77/); ethereum `0x26644c...2a1353`; ethereum `0x4e8f86...71f10b`; ethereum `0xa92d89...3c8fef`; ethereum `0xf27a5f...f726ed` | ⚠️ Unaudited |
| AlgebraDefaultPluginFactory | registry | hyperliquid | n/a | [`0xe165ee...1634ad`](./contracts/hyperliquid-999/0xe165ee23a9de18f7287dde6e1c57737a6b1634ad/) | ⚠️ Unaudited |
| AlgebraFactoryUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xd99930...b1b59e`](./contracts/hyperliquid-999/0xd99930fae54b3fbc237eb330527501237bb1b59e/); hyperliquid `0xf77bd0...b3b1f3` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | periphery | hyperliquid | n/a | [`0x4b2acd...6bc545`](./contracts/hyperliquid-999/0x4b2acd111648718d9aaf028b744dbbfbf96bc545/) | ⚠️ Unaudited |
| ASET | unknown | ethereum | n/a | [`0x139cec...4d3c68`](./contracts/ethereum-1/0x139cec55d1ec47493dfa25ca77c9208aba4d3c68/) | ⚠️ Unaudited |
| BEP20LINK | unknown | bsc | n/a | [`0xf8a0bf...1a51bd`](./contracts/bsc-56/0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd/) | ⚠️ Unaudited |
| BEP20USDT | token | bsc | n/a | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| BribeFactoryUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x638e38...45621b`](./contracts/hyperliquid-999/0x638e382300ee2ece790164dafaf7a9f16045621b/); hyperliquid `0xb63363...97a1cb` | ⚠️ Unaudited |
| CompoundVeNESTManagedNFTStrategyFactoryUpgradeable | unknown | hyperliquid | n/a | [`0x98fe25...96fa87`](./contracts/hyperliquid-999/0x98fe2510dfcadb52431c2a651e1ecfc46196fa87/) | ⚠️ Unaudited |
| CompoundVeNESTManagedNFTStrategyUpgradeable | core_logic | hyperliquid | n/a | [`0xb3b7f4...3bf5b5`](./contracts/hyperliquid-999/0xb3b7f4f4b380ce53259170654eed32c89b3bf5b5/) | ⚠️ Unaudited |
| DCU | unknown | bsc | n/a | [`0xf56c6e...a933ef`](./contracts/bsc-56/0xf56c6ece0c0d6fbb9a53282c0df71dbfafa933ef/) | ⚠️ Unaudited |
| ERC20Template | token | bsc | n/a | 2 deployments: bsc [`0x591aaa...5f47df`](./contracts/bsc-56/0x591aaadbc85e19065c88a1b0c2ed3f58295f47df/); bsc `0x98f866...d1a6a7` | ⚠️ Unaudited |
| FeesVaultFactoryUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x705c76...9724c0`](./contracts/hyperliquid-999/0x705c76e29977ed52cd93d390a7bbcc61189724c0/); hyperliquid `0x798561...85abbf` | ⚠️ Unaudited |
| FortFutures | unknown | bsc | n/a | 2 deployments: bsc [`0x8c5052...3cc149`](./contracts/bsc-56/0x8c5052f7747d8ebc2f069286416b6ae8ad3cc149/); bsc `0x9b3718...77aaae` | ⚠️ Unaudited |
| FortOptions | unknown | bsc | n/a | 2 deployments: bsc [`0x284935...5fd8cc`](./contracts/bsc-56/0x284935f8c571d054df98eda8503ea13cde5fd8cc/); bsc `0xdac874...2fea7a` | ⚠️ Unaudited |
| FortPRC44 | unknown | bsc | n/a | 2 deployments: bsc [`0x11b865...3139a8`](./contracts/bsc-56/0x11b8655f37103c30b461bf9d8b053afc193139a8/); bsc `0xf43a71...fd0530` | ⚠️ Unaudited |
| FortPRCSwap | unknown | bsc | n/a | 2 deployments: bsc [`0x46ccde...450ed4`](./contracts/bsc-56/0x46ccde7baf6e08bcecdef15a5cf446901c450ed4/); bsc `0x6a36b2...72dbff` | ⚠️ Unaudited |
| FreeTransfer | unknown | ethereum | n/a | [`0xf13c8c...4592bb`](./contracts/ethereum-1/0xf13c8c237d161de539941655fe897e33264592bb/) | ⚠️ Unaudited |
| GaugeRewarder | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x415895...e645ee`](./contracts/hyperliquid-999/0x4158958bf30c818491b36020f4b709404ce645ee/); hyperliquid `0xff0124...3f22ea` | ⚠️ Unaudited |
| GetInformationAggregatorUpgradeable | unknown | hyperliquid | n/a | [`0xa68576...672b98`](./contracts/hyperliquid-999/0xa6857656500eef32d434f1a6c11c08b290672b98/) | ⚠️ Unaudited |
| HBTCStorage | unknown | ethereum | n/a | [`0xc72869...26eefd`](./contracts/ethereum-1/0xc728693dcf6b257bf88577d6c92e52028426eefd/) | ⚠️ Unaudited |
| HBTCToken | token | ethereum | n/a | [`0x0316eb...c6d380`](./contracts/ethereum-1/0x0316eb71485b0ab14103307bf65a021042c6d380/) | ⚠️ Unaudited |
| HedgeGovernance | unknown | bsc | n/a | 2 deployments: bsc [`0x3e7d35...5eccb8`](./contracts/bsc-56/0x3e7d350bbab71caa2304e979aa6af007ef5eccb8/); bsc `0x52d00a...e75fff` | ⚠️ Unaudited |
| HedgeSwap | unknown | bsc | n/a | 3 deployments: bsc [`0x2cd1bf...87363a`](./contracts/bsc-56/0x2cd1bf9345e969b5dfc6d88000475ad6d487363a/); bsc `0x2e6845...ca43ca`; bsc `0x9484f1...381801` | ⚠️ Unaudited |
| InsurancePool | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0bd32f...528c2e`](./contracts/ethereum-1/0x0bd32ffc80d5b98e403985d4446ae3ba67528c2e/); ethereum `0x665ac6...347bf0`; ethereum `0x790254...2ddaba` | ⚠️ Unaudited |
| InsurancePool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1dc9a3...bb2832`](./contracts/ethereum-1/0x1dc9a3856e04ed012f27e021fa7052f62fbb2832/); ethereum `0x486b95...7d380d` | ⚠️ Unaudited |
| LPStakingMiningPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x84d6a3...ea4eaa`](./contracts/ethereum-1/0x84d6a30f0a2153976ca2f59f215aa4f9f2ea4eaa/); ethereum `0xba0125...f7797f` | ⚠️ Unaudited |
| ManagedNFTManagerUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x481f9d...802972`](./contracts/hyperliquid-999/0x481f9d30a70a90f6b50e4d1052323a8e79802972/); hyperliquid `0x843d31...41e792` | ⚠️ Unaudited |
| MortgagePool | unknown | ethereum | n/a | 4 deployments: ethereum [`0x46893c...3e1e6b`](./contracts/ethereum-1/0x46893c30fbdf3a5818507309c0bdca62eb3e1e6b/); ethereum `0x505efc...584227`; ethereum `0x9a5c88...8f9723`; ethereum `0xa26d42...335657` | ⚠️ Unaudited |
| Nest_3_OfferMain | unknown | ethereum | n/a | [`0xc83e00...d039f6`](./contracts/ethereum-1/0xc83e009c7794e8f6d1954dc13c23a35fc4d039f6/) | ⚠️ Unaudited |
| Nest_3_VoteFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7dc3a3...9e630f`](./contracts/ethereum-1/0x7dc3a379854eb6554681e48569a58e8b519e630f/); ethereum `0xb3f9b0...3b7506` | ⚠️ Unaudited |
| Nest_NToken_OfferMain | token | ethereum | n/a | [`0xc40d7b...4a8b3c`](./contracts/ethereum-1/0xc40d7b9ca90eaca4a6e067b6ec689fd29f4a8b3c/) | ⚠️ Unaudited |
| NestDAO | unknown | ethereum | n/a | 2 deployments: ethereum [`0x105ee5...dffb4f`](./contracts/ethereum-1/0x105ee568dab631b8ff84f328bc48e95387dffb4f/); ethereum `0xb76dc2...5231cb` | ⚠️ Unaudited |
| NestMiningV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x243f20...a7b8f6`](./contracts/ethereum-1/0x243f207f9358cf67243ade4a8ff3c5235aa7b8f6/); ethereum `0x8a4e23...49516f` | ⚠️ Unaudited |
| NestQuery | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3bf046...e306d2`](./contracts/ethereum-1/0x3bf046c114385357838d9cae9509c6fbbfe306d2/); ethereum `0xeb57c7...ef8c53` | ⚠️ Unaudited |
| NestRaiseUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x891acb...0e98a5`](./contracts/hyperliquid-999/0x891acb9f28985a40687d12d24f711824d00e98a5/); hyperliquid `0xcd78d1...aa3867` | ⚠️ Unaudited |
| NestStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x993810...06cdd7`](./contracts/ethereum-1/0x9938108eb2ae01f1dfac94c603a26b1be106cdd7/); ethereum `0xaa7a74...aa84ec` | ⚠️ Unaudited |
| NFTDescriptor | token | hyperliquid | n/a | [`0xa842fe...091836`](./contracts/hyperliquid-999/0xa842feb9f816891b4a377b6f8435462739091836/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x0f36c2...9e71c8`](./contracts/hyperliquid-999/0x0f36c26844632a78605d43b2e55ecb1dd19e71c8/); hyperliquid `0x18cecc...f358db` | ⚠️ Unaudited |
| PairAPIUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x4f0ec8...0d97e3`](./contracts/hyperliquid-999/0x4f0ec8880749f6f080515f1907964312220d97e3/); hyperliquid `0x7d0190...bdcb79` | ⚠️ Unaudited |
| PairFactoryUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x889fd0...48fdf5`](./contracts/hyperliquid-999/0x889fd0ada8453c7619cd7f11e9029a1f0848fdf5/); hyperliquid `0xba7171...7301ac` | ⚠️ Unaudited |
| ProxyAdmin | governance | hyperliquid | n/a | 5 deployments: ethereum `0x5cde6e...c3fac8`; ethereum `0x92f331...220bdd`; bsc `0xb16260...71c088`; hyperliquid [`0x45727c...9d92ab`](./contracts/hyperliquid-999/0x45727c03b46970c64e4039b546e6bd1f9c9d92ab/); hyperliquid `0xb688d5...f20124` | ⚠️ Unaudited |
| PTokenFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1b1c55...696ed1`](./contracts/ethereum-1/0x1b1c555dcdb7bd4f7c61f00264f8ddc09f696ed1/); ethereum `0xa6f7e1...d175da` | ⚠️ Unaudited |
| Quoter | periphery | hyperliquid | n/a | [`0x89c3ab...e4db78`](./contracts/hyperliquid-999/0x89c3ab4f5342498e9edac5c43c07e9bd9ae4db78/) | ⚠️ Unaudited |
| QuoterV2 | periphery | hyperliquid | n/a | [`0xbea206...f5dfad`](./contracts/hyperliquid-999/0xbea20609a4772311c5b81f814cd4f9ecaef5dfad/) | ⚠️ Unaudited |
| RewardAPIUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xbfa705...88bc7d`](./contracts/hyperliquid-999/0xbfa705dbf2a72077f6c66230c901f54a3788bc7d/); hyperliquid `0xf82237...1ec677` | ⚠️ Unaudited |
| RouterV2PathProviderUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x6d3cd3...fee1c0`](./contracts/hyperliquid-999/0x6d3cd36518c6800f6aa9d1fd54276b5dd0fee1c0/); hyperliquid `0xff5a96...a67c9b` | ⚠️ Unaudited |
| SecurityRegistry | registry | hyperliquid | n/a | [`0x47f2d9...585879`](./contracts/hyperliquid-999/0x47f2d9058fe32da17a0f253f70266d9dcd585879/) | ⚠️ Unaudited |
| SingelTokenVirtualRewarderUpgradeable | token | hyperliquid | n/a | [`0xaf24cf...8069df`](./contracts/hyperliquid-999/0xaf24cf0dd121b89df98b9fad2e05821bd08069df/) | ⚠️ Unaudited |
| SwapRouter | adapter | hyperliquid | n/a | [`0xaa26b8...9681e9`](./contracts/hyperliquid-999/0xaa26b8e5cadd04430c32787ecc3aa325e99681e9/) | ⚠️ Unaudited |
| TickLens | periphery | hyperliquid | n/a | [`0x44f129...51c2c5`](./contracts/hyperliquid-999/0x44f1292f550e33b2ecd346ac8746e405a351c2c5/) | ⚠️ Unaudited |
| TokenPublicRaiseUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x61434e...24f520`](./contracts/hyperliquid-999/0x61434e92cff4bee37794477453d211ed3224f520/); hyperliquid `0x91cf98...a61ddb` | ⚠️ Unaudited |
| UtilsUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x29290c...a27d60`](./contracts/hyperliquid-999/0x29290c57c883156f972f35d8b110613680a27d60/); hyperliquid `0xf9159f...a8cf81` | ⚠️ Unaudited |
| UtilsUpgradeable | unknown | hyperliquid | n/a | [`0xc7deed...8c0195`](./contracts/hyperliquid-999/0xc7deede78ea5215a6a2eabe340adb65e4a8c0195/) | ⚠️ Unaudited |
| VeNestDistributorUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x22350f...b7682f`](./contracts/hyperliquid-999/0x22350f14c6ee70992f1bbc7498e4c291b8b7682f/); hyperliquid `0x6d87ba...6acd9a` | ⚠️ Unaudited |
| VeNestSplitMerklAidropUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x84daba...8d567d`](./contracts/hyperliquid-999/0x84daba9c04733da41b9ff3b44f14cfa9c18d567d/); hyperliquid `0xb97b92...b720a6` | ⚠️ Unaudited |
| VeNFTAPIUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x0ccbef...d22b19`](./contracts/hyperliquid-999/0x0ccbefa11fff9a37c8a14914f548b0664dd22b19/); hyperliquid `0x862b14...92a774` | ⚠️ Unaudited |
| VolatileDynamicFeeOnePool | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x8b6ce3...9ca05c`](./contracts/hyperliquid-999/0x8b6ce3610732c8237fc0d1781e56d513a29ca05c/); hyperliquid `0xe13dd2...78be9d`; hyperliquid `0xfb665b...06e790` | ⚠️ Unaudited |
| WHYPE9 | unknown | hyperliquid | n/a | [`0x555555...555555`](./contracts/hyperliquid-999/0x5555555555555555555555555555555555555555/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (216)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0115e5...facbfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x028fe4...9f76e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08252c...dcac7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b9776...834aa2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c9fa2...eaa7a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0feece...c703c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x112ed5...177591` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x128f07...65fc98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1486a1...d59185` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14d666...2ef132` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1587f7...806b81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16f0e2...d63b30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1770b2...42142d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17e76f...ea860f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18b73b...0c9f1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18cb80...babf8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a35f2...c771d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1bcd9a...68445e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1be074...7e850e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1dc2de...f15442` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1dc5ff...45a128` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f88c9...c2d66d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1fe81d...b0345e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2241a3...56a862` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x251778...a2d27d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25aab5...126919` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26da3d...dc2dc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27156f...00d0db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x272020...3398cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2762eb...37d234` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x276ccd...9212d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28f78a...e2132d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a7a0d...9b681a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ba3c1...a024b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2cc20b...3d26f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2dcd3c...3766d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2df1be...a0526e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ed8b7...80501a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x304df6...971bb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x305997...acdab0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3203a1...82678b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x350b46...8d2ba8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36ff21...538211` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38ad66...f89014` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38ed17...dfa3a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38eed2...1fb70d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3af800...d263f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b0c2e...0be28e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b1ac7...175072` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bb5e6...2c2813` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e7fe4...7817bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41bc5a...5bb308` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x435189...e7886f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x437c4f...f70502` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47b375...d17213` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x491428...560d42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a9e69...6888ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4aac60...5a1e5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4baf52...3b751d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c404f...215fb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e45ec...0e1816` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ec1e2...8eac19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50a4bf...c5a88b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x512597...447595` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5131a0...ce541c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x517acf...8b4f84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51d27e...a13e0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5286af...e08962` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56297d...e3375a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x563199...db453f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x591aaa...5f47df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c07eb...103c11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c7f53...e21ee4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e057f...70ccf5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e6cb2...37cc3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x606bc2...f9c75f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x629bda...678b45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63121f...317943` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x658b78...c4b4f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6631d8...cc31c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ac986...bd68df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6af9b8...faff1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6be7aa...59a94b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d60e6...6a0928` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e1a6d...87b308` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73e50a...9bc356` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74fc1b...2717b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7524d4...1f1dea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x765c43...579066` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x791c12...5af788` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79c13e...3144e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79eb7e...517772` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79f94b...7604fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7abcf0...a379e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bcd02...70c95e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d7558...15c2f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e92f2...60af9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x831945...02fdd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x839bc3...415b2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85e998...8ca484` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8619b7...60c7d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86f432...513939` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x898b3f...72f981` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c1d4a...1cd55a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c22a9...7c591c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ec2df...887021` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f4a5e...1250af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x903a34...1ceb2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91ca7b...289f8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x946537...33eaf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94b422...80bfc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95b691...2b8366` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96c8df...fc1ac3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x972588...f054c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x972624...de5781` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97a8f7...949504` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98a351...e5b2ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98f866...d1a6a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cb184...3e56e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9dcf6a...06150f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9eca6b...88128a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f4e72...09bfcd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f82a9...36a72d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa03b50...fcb52b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa086e0...142c96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0bb2f...1782f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0e1b6...07bf5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1839b...8c3e6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa23c48...ec918b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa33a36...28a11b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3ba6d...c64cc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa485a1...0439f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5c53f...c238ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa62884...fa5d54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6c44d...cd58bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa924f1...fb7228` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaac3f2...e00b5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaae932...993064` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad1ce2...056708` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae1731...205c91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaecf85...317fbb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9b37a...8c11bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba0ef5...354306` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba2d71...713f03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba852a...fb203d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb8d13...f3a7d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc06f8...1690b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbde6ed...69f314` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbdf674...ec8647` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe6aa1...197d77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe95d2...dbc8cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc00736...ad9e19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc20c15...543fc5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc22a48...c5789c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3591c...2f76e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3d6c2...0db0d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc43ac9...9f8ee8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc50082...f07ed0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc94df8...dd68e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb00cd...51cb80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcda5b2...78c1ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcdad4d...0298e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf953f...5772d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0c04a...16c23d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1c400...9b5dc1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1fdaa...28092e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd342ac...152360` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd360cf...890f15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5a957...8313e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd68238...d9703f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7d416...9f440d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd89bae...7d46f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8adb5...140d11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd906fa...823be9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd92421...8192b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd945a9...238a62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9cc56...405639` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9e2ed...32d1fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc2173...4b81d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddfb27...b4b94e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe14adf...1c84b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe57c8c...fbae4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5f04f...367cb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6b946...4aaa33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7178c...629f3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9361f...19499f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe95fe8...936332` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee4fa1...c22d1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee9264...e01334` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef609a...1dc84c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefb75b...f55776` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefbbd7...668bb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0dc24...565fd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf15864...f160cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1d0b0...312bc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf26d86...0ee362` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf36184...d5ade5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4c4a4...331b62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4cf40...4df368` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf57481...4bd4f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf59a5d...bcc94c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5c083...39c585` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf64601...5f0b94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf65011...fce2f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf79731...cd64eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9f9c8...5e2234` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa4881...1c89d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfac8c1...9c8418` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe71a2...afd656` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff8eb8...1ed71c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfff42e...4a13bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x94b422...80bfc8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0136b1...9cc964` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3aed39...05636f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x56b0d9...7d04b7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf00037...5c494d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Bailsec - Nest - VE Core - Final Report.pdf](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Nest%20-%20VE%20Core%20-%20Final%20Report.pdf) | BailSec | Audit | 2026-03 | fresh | Direct | contract_name | 16 | n/a |
| [code4rena.com/reports/2024-09-fenix-finance](https://code4rena.com/reports/2024-09-fenix-finance) | Code4rena | Contest | 2024-09 | aging | Direct | contract_name | 14 | high |
| [code4rena.com/audits/2024-09-fenix-finance-invitational](https://code4rena.com/audits/2024-09-fenix-finance-invitational) | Code4rena | Contest | 2024-09 | aging | Direct | contract_name | 5 | high |
| [Algebra_Paladin_report.pdf](https://github.com/hats-finance/Fenix-Finance-0x83dbe5aa378f3ce160ed084daf85f621289fb92f/blob/main/audits/Algebra_Paladin_report.pdf) | Paladin | Audit | 2024-02 | stale | Direct | contract_name | 7 | high |
| [Core_audit_report_MixBytes.pdf](https://github.com/hats-finance/Fenix-Finance-0x83dbe5aa378f3ce160ed084daf85f621289fb92f/blob/main/audits/Core_audit_report_MixBytes.pdf) | MixBytes | Audit | 2023-08 | stale | Direct | contract_name | 2 | high |
| [Farming_Plugin_report_MixBytes.pdf](https://github.com/hats-finance/Fenix-Finance-0x83dbe5aa378f3ce160ed084daf85f621289fb92f/blob/main/audits/Farming_Plugin_report_MixBytes.pdf) | MixBytes | Audit | 2023-09 | stale | Direct | contract_name | 4 | high |
| [Riley_Holterhus_Algebra_Integral.pdf](https://github.com/hats-finance/Fenix-Finance-0x83dbe5aa378f3ce160ed084daf85f621289fb92f/blob/main/audits/Riley_Holterhus_Algebra_Integral.pdf) | Riley Holterhus | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |
| [Bailsec_Algebra_Integral_Update_Audit_differential_Report.pdf](https://github.com/cryptoalgebra/Algebra/blob/master/audits/Bailsec_Algebra_Integral_Update_Audit_differential_Report.pdf) | Bailsec | Audit | 2024-05 | stale | Direct | contract_name | 3 | high |
| [Bailsec_Algebra_Integralv1.2_Core_Update_Audit.pdf](https://github.com/cryptoalgebra/Algebra/blob/master/audits/Bailsec_Algebra_Integralv1.2_Core_Update_Audit.pdf) | Bailsec | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [Base_Plugin_report_MixBytes.pdf](https://github.com/cryptoalgebra/Algebra/blob/master/audits/Base_Plugin_report_MixBytes.pdf) | MixBytes | Audit | 2023-09 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0xe165ee...1634ad`](./contracts/hyperliquid-999/0xe165ee23a9de18f7287dde6e1c57737a6b1634ad/) | AlgebraDefaultPluginFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xd99930...b1b59e`](./contracts/hyperliquid-999/0xd99930fae54b3fbc237eb330527501237bb1b59e/) | AlgebraFactoryUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x4b2acd...6bc545`](./contracts/hyperliquid-999/0x4b2acd111648718d9aaf028b744dbbfbf96bc545/) | AlgebraInterfaceMulticall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x139cec...4d3c68`](./contracts/ethereum-1/0x139cec55d1ec47493dfa25ca77c9208aba4d3c68/) | ASET | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf8a0bf...1a51bd`](./contracts/bsc-56/0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd/) | BEP20LINK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | BEP20USDT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x638e38...45621b`](./contracts/hyperliquid-999/0x638e382300ee2ece790164dafaf7a9f16045621b/) | BribeFactoryUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf56c6e...a933ef`](./contracts/bsc-56/0xf56c6ece0c0d6fbb9a53282c0df71dbfafa933ef/) | DCU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x591aaa...5f47df`](./contracts/bsc-56/0x591aaadbc85e19065c88a1b0c2ed3f58295f47df/) | ERC20Template | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x705c76...9724c0`](./contracts/hyperliquid-999/0x705c76e29977ed52cd93d390a7bbcc61189724c0/) | FeesVaultFactoryUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8c5052...3cc149`](./contracts/bsc-56/0x8c5052f7747d8ebc2f069286416b6ae8ad3cc149/) | FortFutures | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x284935...5fd8cc`](./contracts/bsc-56/0x284935f8c571d054df98eda8503ea13cde5fd8cc/) | FortOptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x11b865...3139a8`](./contracts/bsc-56/0x11b8655f37103c30b461bf9d8b053afc193139a8/) | FortPRC44 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x46ccde...450ed4`](./contracts/bsc-56/0x46ccde7baf6e08bcecdef15a5cf446901c450ed4/) | FortPRCSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf13c8c...4592bb`](./contracts/ethereum-1/0xf13c8c237d161de539941655fe897e33264592bb/) | FreeTransfer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x415895...e645ee`](./contracts/hyperliquid-999/0x4158958bf30c818491b36020f4b709404ce645ee/) | GaugeRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xa68576...672b98`](./contracts/hyperliquid-999/0xa6857656500eef32d434f1a6c11c08b290672b98/) | GetInformationAggregatorUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc72869...26eefd`](./contracts/ethereum-1/0xc728693dcf6b257bf88577d6c92e52028426eefd/) | HBTCStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0316eb...c6d380`](./contracts/ethereum-1/0x0316eb71485b0ab14103307bf65a021042c6d380/) | HBTCToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3e7d35...5eccb8`](./contracts/bsc-56/0x3e7d350bbab71caa2304e979aa6af007ef5eccb8/) | HedgeGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2cd1bf...87363a`](./contracts/bsc-56/0x2cd1bf9345e969b5dfc6d88000475ad6d487363a/) | HedgeSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bd32f...528c2e`](./contracts/ethereum-1/0x0bd32ffc80d5b98e403985d4446ae3ba67528c2e/) | InsurancePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1dc9a3...bb2832`](./contracts/ethereum-1/0x1dc9a3856e04ed012f27e021fa7052f62fbb2832/) | InsurancePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84d6a3...ea4eaa`](./contracts/ethereum-1/0x84d6a30f0a2153976ca2f59f215aa4f9f2ea4eaa/) | LPStakingMiningPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x481f9d...802972`](./contracts/hyperliquid-999/0x481f9d30a70a90f6b50e4d1052323a8e79802972/) | ManagedNFTManagerUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46893c...3e1e6b`](./contracts/ethereum-1/0x46893c30fbdf3a5818507309c0bdca62eb3e1e6b/) | MortgagePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc83e00...d039f6`](./contracts/ethereum-1/0xc83e009c7794e8f6d1954dc13c23a35fc4d039f6/) | Nest_3_OfferMain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7dc3a3...9e630f`](./contracts/ethereum-1/0x7dc3a379854eb6554681e48569a58e8b519e630f/) | Nest_3_VoteFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc40d7b...4a8b3c`](./contracts/ethereum-1/0xc40d7b9ca90eaca4a6e067b6ec689fd29f4a8b3c/) | Nest_NToken_OfferMain | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x105ee5...dffb4f`](./contracts/ethereum-1/0x105ee568dab631b8ff84f328bc48e95387dffb4f/) | NestDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x243f20...a7b8f6`](./contracts/ethereum-1/0x243f207f9358cf67243ade4a8ff3c5235aa7b8f6/) | NestMiningV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bf046...e306d2`](./contracts/ethereum-1/0x3bf046c114385357838d9cae9509c6fbbfe306d2/) | NestQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x891acb...0e98a5`](./contracts/hyperliquid-999/0x891acb9f28985a40687d12d24f711824d00e98a5/) | NestRaiseUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x993810...06cdd7`](./contracts/ethereum-1/0x9938108eb2ae01f1dfac94c603a26b1be106cdd7/) | NestStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xa842fe...091836`](./contracts/hyperliquid-999/0xa842feb9f816891b4a377b6f8435462739091836/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0f36c2...9e71c8`](./contracts/hyperliquid-999/0x0f36c26844632a78605d43b2e55ecb1dd19e71c8/) | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x4f0ec8...0d97e3`](./contracts/hyperliquid-999/0x4f0ec8880749f6f080515f1907964312220d97e3/) | PairAPIUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x889fd0...48fdf5`](./contracts/hyperliquid-999/0x889fd0ada8453c7619cd7f11e9029a1f0848fdf5/) | PairFactoryUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b1c55...696ed1`](./contracts/ethereum-1/0x1b1c555dcdb7bd4f7c61f00264f8ddc09f696ed1/) | PTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x89c3ab...e4db78`](./contracts/hyperliquid-999/0x89c3ab4f5342498e9edac5c43c07e9bd9ae4db78/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xbea206...f5dfad`](./contracts/hyperliquid-999/0xbea20609a4772311c5b81f814cd4f9ecaef5dfad/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xbfa705...88bc7d`](./contracts/hyperliquid-999/0xbfa705dbf2a72077f6c66230c901f54a3788bc7d/) | RewardAPIUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x6d3cd3...fee1c0`](./contracts/hyperliquid-999/0x6d3cd36518c6800f6aa9d1fd54276b5dd0fee1c0/) | RouterV2PathProviderUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x47f2d9...585879`](./contracts/hyperliquid-999/0x47f2d9058fe32da17a0f253f70266d9dcd585879/) | SecurityRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xaf24cf...8069df`](./contracts/hyperliquid-999/0xaf24cf0dd121b89df98b9fad2e05821bd08069df/) | SingelTokenVirtualRewarderUpgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xaa26b8...9681e9`](./contracts/hyperliquid-999/0xaa26b8e5cadd04430c32787ecc3aa325e99681e9/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x44f129...51c2c5`](./contracts/hyperliquid-999/0x44f1292f550e33b2ecd346ac8746e405a351c2c5/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x61434e...24f520`](./contracts/hyperliquid-999/0x61434e92cff4bee37794477453d211ed3224f520/) | TokenPublicRaiseUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x29290c...a27d60`](./contracts/hyperliquid-999/0x29290c57c883156f972f35d8b110613680a27d60/) | UtilsUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xc7deed...8c0195`](./contracts/hyperliquid-999/0xc7deede78ea5215a6a2eabe340adb65e4a8c0195/) | UtilsUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x22350f...b7682f`](./contracts/hyperliquid-999/0x22350f14c6ee70992f1bbc7498e4c291b8b7682f/) | VeNestDistributorUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x84daba...8d567d`](./contracts/hyperliquid-999/0x84daba9c04733da41b9ff3b44f14cfa9c18d567d/) | VeNestSplitMerklAidropUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0ccbef...d22b19`](./contracts/hyperliquid-999/0x0ccbefa11fff9a37c8a14914f548b0664dd22b19/) | VeNFTAPIUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x8b6ce3...9ca05c`](./contracts/hyperliquid-999/0x8b6ce3610732c8237fc0d1781e56d513a29ca05c/) | VolatileDynamicFeeOnePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x555555...555555`](./contracts/hyperliquid-999/0x5555555555555555555555555555555555555555/) | WHYPE9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 79 |
| upstream | 4 |
| standard_library | 2 |
| needs_review | 216 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=7
- Match method counts: contract_name=16, extraction_exact=39

Zero-match audit list:

- [11834] Riley_Holterhus_Algebra_Integral.pdf
- [11837] Bailsec_Algebra_Integralv1.2_Core_Update_Audit.pdf

Fork inheritance lineage and inherited audits are included when available.
