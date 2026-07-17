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
| AlgebraBasePluginV1 | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x974f1be2b28c455ee29af20152c112feee85e3c1`](./contracts/hyperliquid-999/0x974f1be2b28c455ee29af20152c112feee85e3c1/); hyperliquid `0x9f0b3984ce2496bdf9db89701df6bac425faadd8` | ✅ Audited |
| AlgebraCommunityVault | core_logic | hyperliquid | n/a | [`0x15e408a37ce4d13218202c0054b0f485e38f5768`](./contracts/hyperliquid-999/0x15e408a37ce4d13218202c0054b0f485e38f5768/) | ✅ Audited |
| AlgebraEternalFarming | unknown | hyperliquid | n/a | [`0x92b99da7ded04684fede0e68484dc17b930c3066`](./contracts/hyperliquid-999/0x92b99da7ded04684fede0e68484dc17b930c3066/) | ✅ Audited |
| AlgebraPoolDeployer | core_logic | hyperliquid | n/a | [`0x3842ce04380b8655a3a47ed87ea0d311adca161f`](./contracts/hyperliquid-999/0x3842ce04380b8655a3a47ed87ea0d311adca161f/) | ✅ Audited |
| BribeUpgradeable | operational_periphery | hyperliquid | n/a | [`0xd073c875ac73c5b93ec142675bb6a40134c3cc64`](./contracts/hyperliquid-999/0xd073c875ac73c5b93ec142675bb6a40134c3cc64/) | ✅ Audited |
| BribeVeNESTRewardToken | operational_periphery | hyperliquid | n/a | [`0x224240310337462bde7fee244a6e07e35a231f47`](./contracts/hyperliquid-999/0x224240310337462bde7fee244a6e07e35a231f47/) | ✅ Audited |
| BribeVeNESTRewardToken | operational_periphery | hyperliquid | n/a | [`0xa2e33f280d93621d967d273e33998da4935104bc`](./contracts/hyperliquid-999/0xa2e33f280d93621d967d273e33998da4935104bc/) | ✅ Audited |
| CompoundEmissionExtensionUpgradeable | operational_periphery | hyperliquid | n/a | [`0x1c925056a1a657a4cb70d677d8c21028233ca05d`](./contracts/hyperliquid-999/0x1c925056a1a657a4cb70d677d8c21028233ca05d/) | ✅ Audited |
| CompoundEmissionExtensionUpgradeable | operational_periphery | hyperliquid | n/a | [`0x550040864d272392d7c14ab9bcff4159952f881a`](./contracts/hyperliquid-999/0x550040864d272392d7c14ab9bcff4159952f881a/) | ✅ Audited |
| CustomBribeRewardRouter | operational_periphery | hyperliquid | n/a | [`0x1eb78fb533e480436a2e10ca01f5e828a28b3dfb`](./contracts/hyperliquid-999/0x1eb78fb533e480436a2e10ca01f5e828a28b3dfb/) | ✅ Audited |
| CustomBribeRewardRouter | operational_periphery | hyperliquid | n/a | [`0x6e18a9b2fdb7915ece11ef61ab59d43e611e7eb5`](./contracts/hyperliquid-999/0x6e18a9b2fdb7915ece11ef61ab59d43e611e7eb5/) | ✅ Audited |
| FarmingCenter | unknown | hyperliquid | n/a | [`0x98961d85e004b246fcd9a07ac4d6d8169e30b0f8`](./contracts/hyperliquid-999/0x98961d85e004b246fcd9a07ac4d6d8169e30b0f8/) | ✅ Audited |
| FeesVaultUpgradeable | core_logic | hyperliquid | n/a | [`0x7b12e8ed9740d9d190b498a9aac3584d81c7cf03`](./contracts/hyperliquid-999/0x7b12e8ed9740d9d190b498a9aac3584d81c7cf03/) | ✅ Audited |
| GaugeFactoryUpgradeable | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x09d1a533032319557196f87dff831ff46204c49d`](./contracts/hyperliquid-999/0x09d1a533032319557196f87dff831ff46204c49d/); hyperliquid `0x15eb3987a7edc464e5a4d3bc3a9b8e84b8cee2c7`; hyperliquid `0x9eb42a8596836a68f47c014b74e5239d5bdb55df` | ✅ Audited |
| GaugeUpgradeable | operational_periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x0ef3aa4f8e509d580ee0a1fd0e14c4b66a72655f`](./contracts/hyperliquid-999/0x0ef3aa4f8e509d580ee0a1fd0e14c4b66a72655f/); hyperliquid `0x90ec77ad5cc0e723ee502c9cb54c3652d9d7636e` | ✅ Audited |
| MinterUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x13369f61c13bd809984855ad26b1bf7780da8fb8`](./contracts/hyperliquid-999/0x13369f61c13bd809984855ad26b1bf7780da8fb8/); hyperliquid `0x574f6865140e6929bded24596d78a8d9c07e356d` | ✅ Audited |
| MinterUpgradeable | unknown | hyperliquid | n/a | [`0xeaaa90ba5a9229f7db273abb3ccae33a50ec5ffc`](./contracts/hyperliquid-999/0xeaaa90ba5a9229f7db273abb3ccae33a50ec5ffc/) | ✅ Audited |
| Nest | unknown | hyperliquid | n/a | [`0x07c57e32a3c29d5659bda1d3efc2e7bf004e3035`](./contracts/hyperliquid-999/0x07c57e32a3c29d5659bda1d3efc2e7bf004e3035/) | ✅ Audited |
| NonfungiblePositionManager | governance | hyperliquid | n/a | [`0xeaf58788a405f3253814b4559391a22be8616250`](./contracts/hyperliquid-999/0xeaf58788a405f3253814b4559391a22be8616250/) | ✅ Audited |
| Pair | unknown | hyperliquid | n/a | [`0xc8e091a600da73e27b1101f319a760e2c0740082`](./contracts/hyperliquid-999/0xc8e091a600da73e27b1101f319a760e2c0740082/) | ✅ Audited |
| RouterV2 | adapter | hyperliquid | n/a | [`0xfdb34624506e9a0624af60f85ebd9e44a0fd2a17`](./contracts/hyperliquid-999/0xfdb34624506e9a0624af60f85ebd9e44a0fd2a17/) | ✅ Audited |
| VeArtProxyStatic | unknown | hyperliquid | n/a | [`0xbb3eb334412a8a7e8336ccba98bdce5694708ce0`](./contracts/hyperliquid-999/0xbb3eb334412a8a7e8336ccba98bdce5694708ce0/) | ✅ Audited |
| VoterUpgradeableV2 | unknown | hyperliquid | n/a | [`0x566bdc5444fd5fe5d93ec379bd66ec861ddba901`](./contracts/hyperliquid-999/0x566bdc5444fd5fe5d93ec379bd66ec861ddba901/) | ✅ Audited |
| VoterUpgradeableV2 | unknown | hyperliquid | n/a | [`0xc5a2f1a950dd3e383132fc89a4ebd3cfe66c2799`](./contracts/hyperliquid-999/0xc5a2f1a950dd3e383132fc89a4ebd3cfe66c2799/) | ✅ Audited |
| VotingEscrowUpgradeableV2 | operational_periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x218af7c32caebff93196e2475aced8e51254df60`](./contracts/hyperliquid-999/0x218af7c32caebff93196e2475aced8e51254df60/); hyperliquid `0xab7517eed99b3e4ae640ffe997236a92ca18d968` | ✅ Audited |
| VotingEscrowUpgradeableV2 | operational_periphery | hyperliquid | n/a | [`0x2f2ae07e3cc3391a2e27825652ba8dcdd5412074`](./contracts/hyperliquid-999/0x2f2ae07e3cc3391a2e27825652ba8dcdd5412074/) | ✅ Audited |

### ⚠️ Verified + Unaudited (59)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | ethereum | n/a | 5 deployments: ethereum [`0x068b517d713dc32f5793bfb213f5a55e4f50ee77`](./contracts/ethereum-1/0x068b517d713dc32f5793bfb213f5a55e4f50ee77/); ethereum `0x26644cb612247aa144e8d5a4d18dbd018b2a1353`; ethereum `0x4e8f86d32234a8d71df80aeaf23eaf2bfa71f10b`; ethereum `0xa92d89e47cacb6d073ab4969c515247e743c8fef`; ethereum `0xf27a5f67c52f14b3df403aa8cb5bae59a3f726ed` | ⚠️ Unaudited |
| AlgebraDefaultPluginFactory | registry | hyperliquid | n/a | [`0xe165ee23a9de18f7287dde6e1c57737a6b1634ad`](./contracts/hyperliquid-999/0xe165ee23a9de18f7287dde6e1c57737a6b1634ad/) | ⚠️ Unaudited |
| AlgebraFactoryUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xd99930fae54b3fbc237eb330527501237bb1b59e`](./contracts/hyperliquid-999/0xd99930fae54b3fbc237eb330527501237bb1b59e/); hyperliquid `0xf77bd082c627aa54591cf2f2eaa811fd1ab3b1f3` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | periphery | hyperliquid | n/a | [`0x4b2acd111648718d9aaf028b744dbbfbf96bc545`](./contracts/hyperliquid-999/0x4b2acd111648718d9aaf028b744dbbfbf96bc545/) | ⚠️ Unaudited |
| ASET | unknown | ethereum | n/a | [`0x139cec55d1ec47493dfa25ca77c9208aba4d3c68`](./contracts/ethereum-1/0x139cec55d1ec47493dfa25ca77c9208aba4d3c68/) | ⚠️ Unaudited |
| BEP20LINK | unknown | bsc | n/a | [`0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd`](./contracts/bsc-56/0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd/) | ⚠️ Unaudited |
| BEP20USDT | token | bsc | n/a | [`0x55d398326f99059ff775485246999027b3197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| BribeFactoryUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x638e382300ee2ece790164dafaf7a9f16045621b`](./contracts/hyperliquid-999/0x638e382300ee2ece790164dafaf7a9f16045621b/); hyperliquid `0xb63363e5c71148f4f6cc75d4ee1b7dcfc997a1cb` | ⚠️ Unaudited |
| CompoundVeNESTManagedNFTStrategyFactoryUpgradeable | unknown | hyperliquid | n/a | [`0x98fe2510dfcadb52431c2a651e1ecfc46196fa87`](./contracts/hyperliquid-999/0x98fe2510dfcadb52431c2a651e1ecfc46196fa87/) | ⚠️ Unaudited |
| CompoundVeNESTManagedNFTStrategyUpgradeable | core_logic | hyperliquid | n/a | [`0xb3b7f4f4b380ce53259170654eed32c89b3bf5b5`](./contracts/hyperliquid-999/0xb3b7f4f4b380ce53259170654eed32c89b3bf5b5/) | ⚠️ Unaudited |
| DCU | unknown | bsc | n/a | [`0xf56c6ece0c0d6fbb9a53282c0df71dbfafa933ef`](./contracts/bsc-56/0xf56c6ece0c0d6fbb9a53282c0df71dbfafa933ef/) | ⚠️ Unaudited |
| ERC20Template | token | bsc | n/a | 2 deployments: bsc [`0x591aaadbc85e19065c88a1b0c2ed3f58295f47df`](./contracts/bsc-56/0x591aaadbc85e19065c88a1b0c2ed3f58295f47df/); bsc `0x98f8669f6481ebb341b522fcd3663f79a3d1a6a7` | ⚠️ Unaudited |
| FeesVaultFactoryUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x705c76e29977ed52cd93d390a7bbcc61189724c0`](./contracts/hyperliquid-999/0x705c76e29977ed52cd93d390a7bbcc61189724c0/); hyperliquid `0x798561d239a46991377b934da48dda0cf985abbf` | ⚠️ Unaudited |
| FortFutures | unknown | bsc | n/a | 2 deployments: bsc [`0x8c5052f7747d8ebc2f069286416b6ae8ad3cc149`](./contracts/bsc-56/0x8c5052f7747d8ebc2f069286416b6ae8ad3cc149/); bsc `0x9b3718b6b001f87c8dcdc2dee7e4ab151d77aaae` | ⚠️ Unaudited |
| FortOptions | unknown | bsc | n/a | 2 deployments: bsc [`0x284935f8c571d054df98eda8503ea13cde5fd8cc`](./contracts/bsc-56/0x284935f8c571d054df98eda8503ea13cde5fd8cc/); bsc `0xdac874ef2e801dc2e954820e7e111077362fea7a` | ⚠️ Unaudited |
| FortPRC44 | unknown | bsc | n/a | 2 deployments: bsc [`0x11b8655f37103c30b461bf9d8b053afc193139a8`](./contracts/bsc-56/0x11b8655f37103c30b461bf9d8b053afc193139a8/); bsc `0xf43a71e4da398e5731c9580d11014de5e8fd0530` | ⚠️ Unaudited |
| FortPRCSwap | unknown | bsc | n/a | 2 deployments: bsc [`0x46ccde7baf6e08bcecdef15a5cf446901c450ed4`](./contracts/bsc-56/0x46ccde7baf6e08bcecdef15a5cf446901c450ed4/); bsc `0x6a36b2491f761007a74b18e357d58b895272dbff` | ⚠️ Unaudited |
| FreeTransfer | unknown | ethereum | n/a | [`0xf13c8c237d161de539941655fe897e33264592bb`](./contracts/ethereum-1/0xf13c8c237d161de539941655fe897e33264592bb/) | ⚠️ Unaudited |
| GaugeRewarder | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x4158958bf30c818491b36020f4b709404ce645ee`](./contracts/hyperliquid-999/0x4158958bf30c818491b36020f4b709404ce645ee/); hyperliquid `0xff0124cf664240e5573282511042d7033c3f22ea` | ⚠️ Unaudited |
| GetInformationAggregatorUpgradeable | unknown | hyperliquid | n/a | [`0xa6857656500eef32d434f1a6c11c08b290672b98`](./contracts/hyperliquid-999/0xa6857656500eef32d434f1a6c11c08b290672b98/) | ⚠️ Unaudited |
| HBTCStorage | unknown | ethereum | n/a | [`0xc728693dcf6b257bf88577d6c92e52028426eefd`](./contracts/ethereum-1/0xc728693dcf6b257bf88577d6c92e52028426eefd/) | ⚠️ Unaudited |
| HBTCToken | token | ethereum | n/a | [`0x0316eb71485b0ab14103307bf65a021042c6d380`](./contracts/ethereum-1/0x0316eb71485b0ab14103307bf65a021042c6d380/) | ⚠️ Unaudited |
| HedgeGovernance | unknown | bsc | n/a | 2 deployments: bsc [`0x3e7d350bbab71caa2304e979aa6af007ef5eccb8`](./contracts/bsc-56/0x3e7d350bbab71caa2304e979aa6af007ef5eccb8/); bsc `0x52d00a6619014ca1461c841eecca497c27e75fff` | ⚠️ Unaudited |
| HedgeSwap | unknown | bsc | n/a | 3 deployments: bsc [`0x2cd1bf9345e969b5dfc6d88000475ad6d487363a`](./contracts/bsc-56/0x2cd1bf9345e969b5dfc6d88000475ad6d487363a/); bsc `0x2e684500827e13c3bf908253a73ca6da67ca43ca`; bsc `0x9484f12044b9d5707afeac5bd02b5e0214381801` | ⚠️ Unaudited |
| InsurancePool | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0bd32ffc80d5b98e403985d4446ae3ba67528c2e`](./contracts/ethereum-1/0x0bd32ffc80d5b98e403985d4446ae3ba67528c2e/); ethereum `0x665ac6fc5a6041815c97e53376cd925825347bf0`; ethereum `0x79025438c04ae6a683bcc7f7c51a01eb4c2ddaba` | ⚠️ Unaudited |
| InsurancePool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1dc9a3856e04ed012f27e021fa7052f62fbb2832`](./contracts/ethereum-1/0x1dc9a3856e04ed012f27e021fa7052f62fbb2832/); ethereum `0x486b9598aa8e7718f61635b39adbd745eb7d380d` | ⚠️ Unaudited |
| LPStakingMiningPool | unknown | ethereum | n/a | 2 deployments: ethereum [`0x84d6a30f0a2153976ca2f59f215aa4f9f2ea4eaa`](./contracts/ethereum-1/0x84d6a30f0a2153976ca2f59f215aa4f9f2ea4eaa/); ethereum `0xba01258eb8e133eace55f5f6ec76907addf7797f` | ⚠️ Unaudited |
| ManagedNFTManagerUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x481f9d30a70a90f6b50e4d1052323a8e79802972`](./contracts/hyperliquid-999/0x481f9d30a70a90f6b50e4d1052323a8e79802972/); hyperliquid `0x843d31e601b38f7207864457f0fb38e14441e792` | ⚠️ Unaudited |
| MortgagePool | unknown | ethereum | n/a | 4 deployments: ethereum [`0x46893c30fbdf3a5818507309c0bdca62eb3e1e6b`](./contracts/ethereum-1/0x46893c30fbdf3a5818507309c0bdca62eb3e1e6b/); ethereum `0x505efcc134552e34ec67633d1254704b09584227`; ethereum `0x9a5c88ac0f209f284e35b4306710fef83b8f9723`; ethereum `0xa26d42d89a67720fd5522adf3e3f640ccf335657` | ⚠️ Unaudited |
| Nest_3_OfferMain | unknown | ethereum | n/a | [`0xc83e009c7794e8f6d1954dc13c23a35fc4d039f6`](./contracts/ethereum-1/0xc83e009c7794e8f6d1954dc13c23a35fc4d039f6/) | ⚠️ Unaudited |
| Nest_3_VoteFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7dc3a379854eb6554681e48569a58e8b519e630f`](./contracts/ethereum-1/0x7dc3a379854eb6554681e48569a58e8b519e630f/); ethereum `0xb3f9b0cc0b9e7312724ab2a379a6a5ac5b3b7506` | ⚠️ Unaudited |
| Nest_NToken_OfferMain | token | ethereum | n/a | [`0xc40d7b9ca90eaca4a6e067b6ec689fd29f4a8b3c`](./contracts/ethereum-1/0xc40d7b9ca90eaca4a6e067b6ec689fd29f4a8b3c/) | ⚠️ Unaudited |
| NestDAO | unknown | ethereum | n/a | 2 deployments: ethereum [`0x105ee568dab631b8ff84f328bc48e95387dffb4f`](./contracts/ethereum-1/0x105ee568dab631b8ff84f328bc48e95387dffb4f/); ethereum `0xb76dc217a502a5d0e5539f10157354926d5231cb` | ⚠️ Unaudited |
| NestMiningV1 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x243f207f9358cf67243ade4a8ff3c5235aa7b8f6`](./contracts/ethereum-1/0x243f207f9358cf67243ade4a8ff3c5235aa7b8f6/); ethereum `0x8a4e23724c21f2ea91a45d6d931c2b9aed49516f` | ⚠️ Unaudited |
| NestQuery | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3bf046c114385357838d9cae9509c6fbbfe306d2`](./contracts/ethereum-1/0x3bf046c114385357838d9cae9509c6fbbfe306d2/); ethereum `0xeb57c7879c95ffdd2676748caa7d36a83cef8c53` | ⚠️ Unaudited |
| NestRaiseUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x891acb9f28985a40687d12d24f711824d00e98a5`](./contracts/hyperliquid-999/0x891acb9f28985a40687d12d24f711824d00e98a5/); hyperliquid `0xcd78d1a27320fee9a03860172649b92a10aa3867` | ⚠️ Unaudited |
| NestStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9938108eb2ae01f1dfac94c603a26b1be106cdd7`](./contracts/ethereum-1/0x9938108eb2ae01f1dfac94c603a26b1be106cdd7/); ethereum `0xaa7a74a46efe0c58fbfdf5c43da30216a8aa84ec` | ⚠️ Unaudited |
| NFTDescriptor | token | hyperliquid | n/a | [`0xa842feb9f816891b4a377b6f8435462739091836`](./contracts/hyperliquid-999/0xa842feb9f816891b4a377b6f8435462739091836/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x0f36c26844632a78605d43b2e55ecb1dd19e71c8`](./contracts/hyperliquid-999/0x0f36c26844632a78605d43b2e55ecb1dd19e71c8/); hyperliquid `0x18cecc5c2dc431045f707bb388f11957cdf358db` | ⚠️ Unaudited |
| PairAPIUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x4f0ec8880749f6f080515f1907964312220d97e3`](./contracts/hyperliquid-999/0x4f0ec8880749f6f080515f1907964312220d97e3/); hyperliquid `0x7d01900de6101f842b01f5301910dc401fbdcb79` | ⚠️ Unaudited |
| PairFactoryUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x889fd0ada8453c7619cd7f11e9029a1f0848fdf5`](./contracts/hyperliquid-999/0x889fd0ada8453c7619cd7f11e9029a1f0848fdf5/); hyperliquid `0xba717129344552d510b392e947c45915807301ac` | ⚠️ Unaudited |
| ProxyAdmin | governance | hyperliquid | n/a | 5 deployments: ethereum `0x5cde6ee3b2d47b576501d9f498d9d22f01c3fac8`; ethereum `0x92f331d779bdc58af60b7fd039cda60e89220bdd`; bsc `0xb16260599777effb17fd2a8fd30c449e5b71c088`; hyperliquid [`0x45727c03b46970c64e4039b546e6bd1f9c9d92ab`](./contracts/hyperliquid-999/0x45727c03b46970c64e4039b546e6bd1f9c9d92ab/); hyperliquid `0xb688d5e73777dfaadbd7c5fe98aee6f35cf20124` | ⚠️ Unaudited |
| PTokenFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1b1c555dcdb7bd4f7c61f00264f8ddc09f696ed1`](./contracts/ethereum-1/0x1b1c555dcdb7bd4f7c61f00264f8ddc09f696ed1/); ethereum `0xa6f7e15e38a5ba0435e5af06326108204cd175da` | ⚠️ Unaudited |
| Quoter | periphery | hyperliquid | n/a | [`0x89c3ab4f5342498e9edac5c43c07e9bd9ae4db78`](./contracts/hyperliquid-999/0x89c3ab4f5342498e9edac5c43c07e9bd9ae4db78/) | ⚠️ Unaudited |
| QuoterV2 | periphery | hyperliquid | n/a | [`0xbea20609a4772311c5b81f814cd4f9ecaef5dfad`](./contracts/hyperliquid-999/0xbea20609a4772311c5b81f814cd4f9ecaef5dfad/) | ⚠️ Unaudited |
| RewardAPIUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xbfa705dbf2a72077f6c66230c901f54a3788bc7d`](./contracts/hyperliquid-999/0xbfa705dbf2a72077f6c66230c901f54a3788bc7d/); hyperliquid `0xf822375d86f74a147a3a4b2661e68376cd1ec677` | ⚠️ Unaudited |
| RouterV2PathProviderUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x6d3cd36518c6800f6aa9d1fd54276b5dd0fee1c0`](./contracts/hyperliquid-999/0x6d3cd36518c6800f6aa9d1fd54276b5dd0fee1c0/); hyperliquid `0xff5a9613c6bcff56da96d068326a9bb998a67c9b` | ⚠️ Unaudited |
| SecurityRegistry | registry | hyperliquid | n/a | [`0x47f2d9058fe32da17a0f253f70266d9dcd585879`](./contracts/hyperliquid-999/0x47f2d9058fe32da17a0f253f70266d9dcd585879/) | ⚠️ Unaudited |
| SingelTokenVirtualRewarderUpgradeable | token | hyperliquid | n/a | [`0xaf24cf0dd121b89df98b9fad2e05821bd08069df`](./contracts/hyperliquid-999/0xaf24cf0dd121b89df98b9fad2e05821bd08069df/) | ⚠️ Unaudited |
| SwapRouter | adapter | hyperliquid | n/a | [`0xaa26b8e5cadd04430c32787ecc3aa325e99681e9`](./contracts/hyperliquid-999/0xaa26b8e5cadd04430c32787ecc3aa325e99681e9/) | ⚠️ Unaudited |
| TickLens | periphery | hyperliquid | n/a | [`0x44f1292f550e33b2ecd346ac8746e405a351c2c5`](./contracts/hyperliquid-999/0x44f1292f550e33b2ecd346ac8746e405a351c2c5/) | ⚠️ Unaudited |
| TokenPublicRaiseUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x61434e92cff4bee37794477453d211ed3224f520`](./contracts/hyperliquid-999/0x61434e92cff4bee37794477453d211ed3224f520/); hyperliquid `0x91cf98773c15a785998a7edb802b283ca5a61ddb` | ⚠️ Unaudited |
| UtilsUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x29290c57c883156f972f35d8b110613680a27d60`](./contracts/hyperliquid-999/0x29290c57c883156f972f35d8b110613680a27d60/); hyperliquid `0xf9159f2e75163436e52986878b65a16b3ea8cf81` | ⚠️ Unaudited |
| UtilsUpgradeable | unknown | hyperliquid | n/a | [`0xc7deede78ea5215a6a2eabe340adb65e4a8c0195`](./contracts/hyperliquid-999/0xc7deede78ea5215a6a2eabe340adb65e4a8c0195/) | ⚠️ Unaudited |
| VeNestDistributorUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x22350f14c6ee70992f1bbc7498e4c291b8b7682f`](./contracts/hyperliquid-999/0x22350f14c6ee70992f1bbc7498e4c291b8b7682f/); hyperliquid `0x6d87bad7b75499b84e3e28e618b43840f56acd9a` | ⚠️ Unaudited |
| VeNestSplitMerklAidropUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x84daba9c04733da41b9ff3b44f14cfa9c18d567d`](./contracts/hyperliquid-999/0x84daba9c04733da41b9ff3b44f14cfa9c18d567d/); hyperliquid `0xb97b9217b55f322f7105f34777af9f63b3b720a6` | ⚠️ Unaudited |
| VeNFTAPIUpgradeable | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x0ccbefa11fff9a37c8a14914f548b0664dd22b19`](./contracts/hyperliquid-999/0x0ccbefa11fff9a37c8a14914f548b0664dd22b19/); hyperliquid `0x862b14c353fe6789492de96ee2c42c31bf92a774` | ⚠️ Unaudited |
| VolatileDynamicFeeOnePool | unknown | hyperliquid | n/a | 3 deployments: hyperliquid [`0x8b6ce3610732c8237fc0d1781e56d513a29ca05c`](./contracts/hyperliquid-999/0x8b6ce3610732c8237fc0d1781e56d513a29ca05c/); hyperliquid `0xe13dd2b0cf20435228896d8814140c5c2e78be9d`; hyperliquid `0xfb665b755efae4679ab018cfda0cc643ca06e790` | ⚠️ Unaudited |
| WHYPE9 | unknown | hyperliquid | n/a | [`0x5555555555555555555555555555555555555555`](./contracts/hyperliquid-999/0x5555555555555555555555555555555555555555/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x0115e507321a1cfba82bdd86a937ecb9b2facbfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x028fe41e3b15b25fe2424b72730d9e93669f76e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08252c02f49a93abb6929649c6bf45542fdcac7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b9776de4b4855ba0eceece5bc86d5b7da834aa2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c9fa28310b3857c60f2a6fbf0eb7a6baeeaa7a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0feeceee9bda63700d153cffc2d7345fbdc703c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x112ed57b034e9ace6a648351ebb6571fcb177591` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x128f074a90ed84e93b72a82d31e630641965fc98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1486a19a01666fd6a212cb4f18118c85f8d59185` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14d6662e5c2fedd5aaf7e5e3b407cd5cb32ef132` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1587f7ec56eacb02b8db4755195beb6bd7806b81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16f0e2e1b52746b454a77c4652ab563714d63b30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1770b2245e882b4532d04e0824b5e9471342142d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17e76f3e51dcb418b72d6ff06f78474328ea860f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18b73b0c268bd80b7a1e55959c090087830c9f1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x18cb80424d0c8dbb93a4d798adb6ada7edbabf8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a35f280078700f17e8b4234baf63d9f1dc771d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1bcd9a17a8423055149d874a88c7cbb67c68445e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1be074fab1db87922eeb8c7858104f46937e850e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1dc2de4be003eea8b435048c9dc410e0f6f15442` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1dc5ff1587784918e4e269089b37a345f245a128` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1f88c9dd1e2c71411f27c930c2ab81a618c2d66d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1fe81d3b7e442d86bdb35d99e02c203912b0345e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2241a34a084972d9afd379d2f0cba8431756a862` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x251778fa43d635109153c28d6773dd45aea2d27d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25aab59d12504dfa7a599ec0bd3db09570126919` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26da3dd0956d8c6fc95919d11515ae16b5dc2dc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27156f672cf277d83a58170d21c1c2211b00d0db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x272020c6cb3364cbc271ec19cb53a14eed3398cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2762eb154ae6c530e73a536e185dcf73f937d234` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x276ccd121f989169a04932faa9961f99589212d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28f78aaefd4e93210ea0281c0bc9c6e609e2132d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a7a0d0065966f80d0277b4aa0c1f699f09b681a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ba3c1ccf36e2a3d95e05a7c0cd61b95b2a024b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2cc20bfbaab2abb4134baec5a4639255133d26f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2dcd3c44c7b267ae89d3d62ec98eb3954a3766d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2df1be52476553b11dcb579ad24bf56586a0526e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ed8b7f4441d56fcac542570c5ba9d3e0c80501a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x304df6d3d6d3837d576cd300cb2ebc3135971bb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x305997fbacca9a25eaed8f2b104e3065f1acdab0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3203a1e49adee3556a19bf22fb3724ddcc82678b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x350b460765dbbac2176a010f4f2c4daa628d2ba8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36ff21ff87b9b529b4e6951c2151f364a3538211` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38ad66dd12ada0efb444f53911ed9a8dfdf89014` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38ed174e7bc26a2a5cbd2d6d60f53435b7dfa3a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38eed20b9f3ceb623878c45153f022f23c1fb70d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3af800146c9c2ac5d49c8c72cfa0b81c13d263f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b0c2e7152aa52c3822fd2bdbf5a14dfae0be28e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b1ac72948e352bdf1a5607d7daa714a98175072` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bb5e6ccba5d07b49d80126951af4176c32c2813` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e7fe41a3996c5e8d519b1376c49db179b7817bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41bc5abd1e289e282079810a74cb9beedf5bb308` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43518965fd4993c81774b5003a99af58b4e7886f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x437c4f09a4833c84162f65270577f48856f70502` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47b3752d49f26d00206adb8b7f9dd59158d17213` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4914280b027841495798a68719da53928a560d42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a9e6972c1e10bb32250b115eac9f7fe786888ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4aac605aa0e60f01335036d504c51904715a1e5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4baf522d793613dc024bfdf59f934541fb3b751d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c404ff348b0d9625237a31ac75c8e6762215fb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e45ec5dbf4e1fbf34b1e00534a69ffc040e1816` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4ec1e21045eb674855c9ef2abd6bd8047b8eac19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50a4bf0816b4804337b65f46fa31715dc5c5a88b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5125975492e260df8a2172ed37ba86be3c447595` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5131a043279a0b5109412988679d889f6ece541c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x517acf7cba52916eca1b9ed52b5ca134f38b4f84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x51d27eb615cf7e260f36a8b6260e511917a13e0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5286af461d677938447b3ea442772ffe5be08962` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56297d33951252eafa9429aeb2aa053301e3375a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x563199934dfd6e7e4a7fc53527a47ad217db453f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x591aaadbc85e19065c88a1b0c2ed3f58295f47df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c07eb74ec8568830d57588d36ad03cef8103c11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c7f53a40f947af7af22274436989f7f58e21ee4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e057f19348cfa1dad5b88a4baa746fa2170ccf5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e6cb28dbeb5c88bd7595d7406234c95e337cc3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x606bc2f0889b9727bc525a5d86b248332ff9c75f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x629bdac114504c86bf16417b47f0d0b044678b45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x63121fc7d12c30fd0617bd43ca16fafdd8317943` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x658b782601e110c05df7bf881ecdcd892bc4b4f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6631d8a4aadc3b93f8db0cfd8470577d0bcc31c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ac986f101fc831541b4a76a35865e6ab4bd68df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6af9b8422cc3cb87d672f3a60463e6e2c0faff1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6be7aafd6927161f24a2bddc61f819110959a94b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d60e61b4c2f05e03c81996e42458a83456a0928` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6e1a6d87e9d26b63fc7304d57feaabff2d87b308` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x73e50ace64e5ea1b873ae7b74a9de510c79bc356` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74fc1be20ecdf0698cc1c59b2b21561a142717b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7524d4d4bf2cd1112e95c5e922cdedcf321f1dea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x765c434658443f771f1e2557aef70f9fc1579066` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x791c127f6bc7a22cbbe148b5886b6fbae35af788` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79c13ef4807dcc8c93fb637e4a97eb96753144e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79eb7ecfee0ad3609dcd89e1e981d9f0ea517772` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x79f94b5c082e4034d5345238ff2f6a5cd37604fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7abcf0cc13fac89e8a16c9af485a2b0e88a379e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bcd02f7eec7a24f828066651d2c2d503070c95e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d75589a7cebc5d7210a17955caa5def8815c2f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e92f2a653ab6b3d4a9347c998c4d74bbe60af9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x831945d1b744499c16d0072df1f1c8322002fdd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x839bc3e71fcaae0e0574eff3cbc47b2b92415b2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85e998804382da48f8f97ea47a7a5712408ca484` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8619b73bca30fedb902b6d72d9e9c3a0f360c7d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86f432f9879c490680548994e7e0b3fdb4513939` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x898b3f52b7aa863bc9e033491fb7c3fd4772f981` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c1d4ac0defeb4b2d86e88e38e791576d91cd55a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c22a9cb389701682d89fdc0bc2d86f2457c591c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ec2dfde886bb8f70ca11f978917d9b16e887021` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f4a5e6da85e1a018a9044de80f0c677e61250af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x903a34bcf0f954bf24187e1d72730fc26b1ceb2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91ca7bc8a8fe0fe66e0867fbd8c8bb3889289f8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x946537448a5872119b1fbee283767c223d33eaf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94b4222503c2b27504955019571ae9e8dc80bfc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95b691a89f1aa595967bcfa9845eeb00482b8366` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96c8df141af2e8ea4447d5724b4b3826eafc1ac3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x972588fa7818d728f66d5b3e2c584f5a65f054c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97262422f98455a0098117553e43d3ac0fde5781` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97a8f745903837f4defe66b106dead9a48949504` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98a351c131958061ab05a646ceb16ed559e5b2ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x98f8669f6481ebb341b522fcd3663f79a3d1a6a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cb1840b7c2460c21ae49b2e2358aab5623e56e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9dcf6a45dc6cb2947ab538125ad26c464706150f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9eca6bb666b15ac1242ae043c7de024ca688128a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f4e72ff7c35e7769dc117e330faec1aad09bfcd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f82a9375ba19f0b6adcd9f4a88816653d36a72d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa03b50433bd1681fad2728155e8ef48dc5fcb52b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa086e0222f11c41f09634c130c587f6f8e142c96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0bb2f76a03726f6fe40376fef97174df11782f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa0e1b6416a7bfc69f7d025f3f98a14d7fd07bf5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1839beb0b37db0db5d5a8504e6d06eba88c3e6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa23c48a5609bf60d427c2d9863400b99ffec918b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa33a36a22a4653112d7a46f440ee40cdbb28a11b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3ba6d873b02f5742167bc7d868095f07ec64cc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa485a13e92c7b475613b2fdafe9fe2c5f10439f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa5c53f36836359860dfc7f59e1d100d86cc238ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa628845c523975493da88ac3641a803e92fa5d54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6c44d8cb8b5bc2d1ed5347265163c3075cd58bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa924f1d1244b88e6de4bea0bd658526a01fb7228` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaac3f28ed13818a7dd5f73a3c75382c908e00b5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaae9327d0eafebe92ebbbf293948bdf46c993064` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad1ce2714e4a88830de9e69f5c681c9a5e056708` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae1731292834f9997a038bfa4f495f4273205c91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaecf85999e5c4160955c552104c978530a317fbb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9b37a1e9fa43c70de7e65fcc8b4556e558c11bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba0ef5cf5a6f9533585c96c03f236811d8354306` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba2d7186fb0af951e7e502adfdf4d2fabe713f03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba852af039accf8c70c8db754a8f78c623fb203d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb8d136dc5342478091425bd4ab6779e0ef3a7d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc06f8a2df2e1696d92d43b4df2f2073391690b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbde6ed984b1b75e9d56b5426649e0611a269f314` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbdf674987778f4ca3978814f0e4f9e248cec8647` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe6aa1f0fe8f19a8f7cc40c8916b0c0361197d77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe95d2924b9925e172668e30b34710ebdfdbc8cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0073685d55c7c1a225ed0600f8c49dbbcad9e19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc20c1531934c9eb7dd15766052c10353ca543fc5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc22a48f7058cee080c9913e5bb9981243cc5789c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3591ce63edd202bf3b583e559b7257c1c2f76e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3d6c2a4700e5ef62d4b3ed473848d18b90db0d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc43ac94d32404cb5a6e622cca65acebcbc9f8ee8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc500827ddec4018fdf09c5bf23492da1f9f07ed0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc94df8a5207a4c3f942715e5e3cd1232d4dd68e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb00cd8d0bca952a282261a2fb39a2426051cb80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcda5b2fa670621c87788ec465db31e059e78c1ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcdad4d3940486138a3475c5f46f057d1dd0298e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf953f45029fa5f04c0ed9077100bc72115772d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0c04ae618469b5b6b19ab016b9a830eb416c23d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1c400c902cce51084b7b97ad89f5c7be69b5dc1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1fdaa2c599576c72df6551e9ba46049fc28092e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd342acb6f97e97f3ef96c1c7f04771ad85152360` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd360cf56e2f458fdfdde484ab9887a0925890f15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5a957cd0ba7f30cad8ca727ef231d84348313e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd682385e59ebaeef5100f0e0517ac371b8d9703f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd7d4160209533801ae0796ee470c6203be9f440d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd89bae9da2c69be42b021a19894fc3ffc07d46f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd8adb58f839a284a3a1cfc101fdb9d25a8140d11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd906fad3bfc94e672d944e105ff5b8155f823be9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd92421a562e996a96abb51007b3ab860808192b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd945a9333e6641f4c40ccf8e8d240c5436238a62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9cc5689a80a79fe27710287c6bc814c71405639` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9e2edc7bd01cebada44b90667cf88a63532d1fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc2173a3b10d12a951469297359caf16494b81d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xddfb2702600fcaf172ba6b484776bc6e2bb4b94e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe14adfa372b5f53595d91045d377622ffb1c84b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe57c8c5ab4eb4f117dfba282e000ee1968fbae4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5f04f91777307290fcc6dbc89cc1e7fca367cb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6b9466bd33e8184d91c76d87690a156c74aaa33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7178c628976b838abfe91a3c13d9ad3b0629f3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9361f63ea4f19b9d6766fbd846d88146f19499f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe95fe8a40a42acc18ebb7afa2caf01091e936332` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee4fa14bf94e894d09ba8027a5bc2b2ee8c22d1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xee9264005c5deca604ce9416d7fe1824f1e01334` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef609ade2e8aa500ce280fa4c2c640f10d1dc84c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefb75beaf3f537d40cbd364bee4ba8ca50f55776` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xefbbd706dd0ac20195047a41584b75bb02668bb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf0dc24ac81ffdb6933c1553f30f01c6a3b565fd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf15864288e8cbeea2cd8c8d366ccab0b10f160cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1d0b010df4b70563d1b3f2c80392b8ebb312bc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf26d86043a3133cc042221ea178caed7fe0ee362` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf361843bb2ac2369171a12869c4d207be7d5ade5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4c4a47895e1cdfa7112a3696d1ce395cb331b62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4cf40e6311fbdcb68e159a0d824c8b28e4df368` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf57481778602a879670895e06001e88e5c4bd4f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf59a5d0bca68f4a289073af7825d0bd895bcc94c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5c0834c8dbefa3e6135bd4ecadc2c514d39c585` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf64601074faa5418981116f9f7fc3bea875f0b94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6501172773e52ff8020de08a2adf4df06fce2f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf79731d7289aadbf95d6a9848264014321cd64eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9f9c8e34167b90ae34e20e66e7bfac8555e2234` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa4881504789bc58a9f9d3154980713dbc1c89d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfac8c15ce6f42b6bddd5f3f32d7942f1ea9c8418` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe71a296749ae5aa9e223cb2b0390d8880afd656` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff8eb804f9225450b1a6e3b1463af4ce901ed71c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfff42eac3e2ae3f1de7baefbad1d3d6dba4a13bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x94b4222503c2b27504955019571ae9e8dc80bfc8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0136b1cde62210ea99a7c0482b9b6626809cc964` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3aed39fcd5742c3044fae2fdf0c307d2f205636f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x56b0d959bb16bf6e0f6598b8f41dcdbde87d04b7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf00037084e1c359f2be067016c5e00cb945c494d` | ❓ Unverified |

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
| hyperliquid | [`0xe165ee23a9de18f7287dde6e1c57737a6b1634ad`](./contracts/hyperliquid-999/0xe165ee23a9de18f7287dde6e1c57737a6b1634ad/) | AlgebraDefaultPluginFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xd99930fae54b3fbc237eb330527501237bb1b59e`](./contracts/hyperliquid-999/0xd99930fae54b3fbc237eb330527501237bb1b59e/) | AlgebraFactoryUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x4b2acd111648718d9aaf028b744dbbfbf96bc545`](./contracts/hyperliquid-999/0x4b2acd111648718d9aaf028b744dbbfbf96bc545/) | AlgebraInterfaceMulticall | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x139cec55d1ec47493dfa25ca77c9208aba4d3c68`](./contracts/ethereum-1/0x139cec55d1ec47493dfa25ca77c9208aba4d3c68/) | ASET | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd`](./contracts/bsc-56/0xf8a0bf9cf54bb92f17374d9e9a321e6a111a51bd/) | BEP20LINK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x55d398326f99059ff775485246999027b3197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | BEP20USDT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x638e382300ee2ece790164dafaf7a9f16045621b`](./contracts/hyperliquid-999/0x638e382300ee2ece790164dafaf7a9f16045621b/) | BribeFactoryUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf56c6ece0c0d6fbb9a53282c0df71dbfafa933ef`](./contracts/bsc-56/0xf56c6ece0c0d6fbb9a53282c0df71dbfafa933ef/) | DCU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x591aaadbc85e19065c88a1b0c2ed3f58295f47df`](./contracts/bsc-56/0x591aaadbc85e19065c88a1b0c2ed3f58295f47df/) | ERC20Template | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x705c76e29977ed52cd93d390a7bbcc61189724c0`](./contracts/hyperliquid-999/0x705c76e29977ed52cd93d390a7bbcc61189724c0/) | FeesVaultFactoryUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8c5052f7747d8ebc2f069286416b6ae8ad3cc149`](./contracts/bsc-56/0x8c5052f7747d8ebc2f069286416b6ae8ad3cc149/) | FortFutures | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x284935f8c571d054df98eda8503ea13cde5fd8cc`](./contracts/bsc-56/0x284935f8c571d054df98eda8503ea13cde5fd8cc/) | FortOptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x11b8655f37103c30b461bf9d8b053afc193139a8`](./contracts/bsc-56/0x11b8655f37103c30b461bf9d8b053afc193139a8/) | FortPRC44 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x46ccde7baf6e08bcecdef15a5cf446901c450ed4`](./contracts/bsc-56/0x46ccde7baf6e08bcecdef15a5cf446901c450ed4/) | FortPRCSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf13c8c237d161de539941655fe897e33264592bb`](./contracts/ethereum-1/0xf13c8c237d161de539941655fe897e33264592bb/) | FreeTransfer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x4158958bf30c818491b36020f4b709404ce645ee`](./contracts/hyperliquid-999/0x4158958bf30c818491b36020f4b709404ce645ee/) | GaugeRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xa6857656500eef32d434f1a6c11c08b290672b98`](./contracts/hyperliquid-999/0xa6857656500eef32d434f1a6c11c08b290672b98/) | GetInformationAggregatorUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc728693dcf6b257bf88577d6c92e52028426eefd`](./contracts/ethereum-1/0xc728693dcf6b257bf88577d6c92e52028426eefd/) | HBTCStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0316eb71485b0ab14103307bf65a021042c6d380`](./contracts/ethereum-1/0x0316eb71485b0ab14103307bf65a021042c6d380/) | HBTCToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3e7d350bbab71caa2304e979aa6af007ef5eccb8`](./contracts/bsc-56/0x3e7d350bbab71caa2304e979aa6af007ef5eccb8/) | HedgeGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2cd1bf9345e969b5dfc6d88000475ad6d487363a`](./contracts/bsc-56/0x2cd1bf9345e969b5dfc6d88000475ad6d487363a/) | HedgeSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bd32ffc80d5b98e403985d4446ae3ba67528c2e`](./contracts/ethereum-1/0x0bd32ffc80d5b98e403985d4446ae3ba67528c2e/) | InsurancePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1dc9a3856e04ed012f27e021fa7052f62fbb2832`](./contracts/ethereum-1/0x1dc9a3856e04ed012f27e021fa7052f62fbb2832/) | InsurancePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84d6a30f0a2153976ca2f59f215aa4f9f2ea4eaa`](./contracts/ethereum-1/0x84d6a30f0a2153976ca2f59f215aa4f9f2ea4eaa/) | LPStakingMiningPool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x481f9d30a70a90f6b50e4d1052323a8e79802972`](./contracts/hyperliquid-999/0x481f9d30a70a90f6b50e4d1052323a8e79802972/) | ManagedNFTManagerUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46893c30fbdf3a5818507309c0bdca62eb3e1e6b`](./contracts/ethereum-1/0x46893c30fbdf3a5818507309c0bdca62eb3e1e6b/) | MortgagePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc83e009c7794e8f6d1954dc13c23a35fc4d039f6`](./contracts/ethereum-1/0xc83e009c7794e8f6d1954dc13c23a35fc4d039f6/) | Nest_3_OfferMain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7dc3a379854eb6554681e48569a58e8b519e630f`](./contracts/ethereum-1/0x7dc3a379854eb6554681e48569a58e8b519e630f/) | Nest_3_VoteFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc40d7b9ca90eaca4a6e067b6ec689fd29f4a8b3c`](./contracts/ethereum-1/0xc40d7b9ca90eaca4a6e067b6ec689fd29f4a8b3c/) | Nest_NToken_OfferMain | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x105ee568dab631b8ff84f328bc48e95387dffb4f`](./contracts/ethereum-1/0x105ee568dab631b8ff84f328bc48e95387dffb4f/) | NestDAO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x243f207f9358cf67243ade4a8ff3c5235aa7b8f6`](./contracts/ethereum-1/0x243f207f9358cf67243ade4a8ff3c5235aa7b8f6/) | NestMiningV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bf046c114385357838d9cae9509c6fbbfe306d2`](./contracts/ethereum-1/0x3bf046c114385357838d9cae9509c6fbbfe306d2/) | NestQuery | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x891acb9f28985a40687d12d24f711824d00e98a5`](./contracts/hyperliquid-999/0x891acb9f28985a40687d12d24f711824d00e98a5/) | NestRaiseUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9938108eb2ae01f1dfac94c603a26b1be106cdd7`](./contracts/ethereum-1/0x9938108eb2ae01f1dfac94c603a26b1be106cdd7/) | NestStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xa842feb9f816891b4a377b6f8435462739091836`](./contracts/hyperliquid-999/0xa842feb9f816891b4a377b6f8435462739091836/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0f36c26844632a78605d43b2e55ecb1dd19e71c8`](./contracts/hyperliquid-999/0x0f36c26844632a78605d43b2e55ecb1dd19e71c8/) | NonfungibleTokenPositionDescriptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x4f0ec8880749f6f080515f1907964312220d97e3`](./contracts/hyperliquid-999/0x4f0ec8880749f6f080515f1907964312220d97e3/) | PairAPIUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x889fd0ada8453c7619cd7f11e9029a1f0848fdf5`](./contracts/hyperliquid-999/0x889fd0ada8453c7619cd7f11e9029a1f0848fdf5/) | PairFactoryUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b1c555dcdb7bd4f7c61f00264f8ddc09f696ed1`](./contracts/ethereum-1/0x1b1c555dcdb7bd4f7c61f00264f8ddc09f696ed1/) | PTokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x89c3ab4f5342498e9edac5c43c07e9bd9ae4db78`](./contracts/hyperliquid-999/0x89c3ab4f5342498e9edac5c43c07e9bd9ae4db78/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xbea20609a4772311c5b81f814cd4f9ecaef5dfad`](./contracts/hyperliquid-999/0xbea20609a4772311c5b81f814cd4f9ecaef5dfad/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xbfa705dbf2a72077f6c66230c901f54a3788bc7d`](./contracts/hyperliquid-999/0xbfa705dbf2a72077f6c66230c901f54a3788bc7d/) | RewardAPIUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x6d3cd36518c6800f6aa9d1fd54276b5dd0fee1c0`](./contracts/hyperliquid-999/0x6d3cd36518c6800f6aa9d1fd54276b5dd0fee1c0/) | RouterV2PathProviderUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x47f2d9058fe32da17a0f253f70266d9dcd585879`](./contracts/hyperliquid-999/0x47f2d9058fe32da17a0f253f70266d9dcd585879/) | SecurityRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xaf24cf0dd121b89df98b9fad2e05821bd08069df`](./contracts/hyperliquid-999/0xaf24cf0dd121b89df98b9fad2e05821bd08069df/) | SingelTokenVirtualRewarderUpgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xaa26b8e5cadd04430c32787ecc3aa325e99681e9`](./contracts/hyperliquid-999/0xaa26b8e5cadd04430c32787ecc3aa325e99681e9/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x44f1292f550e33b2ecd346ac8746e405a351c2c5`](./contracts/hyperliquid-999/0x44f1292f550e33b2ecd346ac8746e405a351c2c5/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x61434e92cff4bee37794477453d211ed3224f520`](./contracts/hyperliquid-999/0x61434e92cff4bee37794477453d211ed3224f520/) | TokenPublicRaiseUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x29290c57c883156f972f35d8b110613680a27d60`](./contracts/hyperliquid-999/0x29290c57c883156f972f35d8b110613680a27d60/) | UtilsUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xc7deede78ea5215a6a2eabe340adb65e4a8c0195`](./contracts/hyperliquid-999/0xc7deede78ea5215a6a2eabe340adb65e4a8c0195/) | UtilsUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x22350f14c6ee70992f1bbc7498e4c291b8b7682f`](./contracts/hyperliquid-999/0x22350f14c6ee70992f1bbc7498e4c291b8b7682f/) | VeNestDistributorUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x84daba9c04733da41b9ff3b44f14cfa9c18d567d`](./contracts/hyperliquid-999/0x84daba9c04733da41b9ff3b44f14cfa9c18d567d/) | VeNestSplitMerklAidropUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0ccbefa11fff9a37c8a14914f548b0664dd22b19`](./contracts/hyperliquid-999/0x0ccbefa11fff9a37c8a14914f548b0664dd22b19/) | VeNFTAPIUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x8b6ce3610732c8237fc0d1781e56d513a29ca05c`](./contracts/hyperliquid-999/0x8b6ce3610732c8237fc0d1781e56d513a29ca05c/) | VolatileDynamicFeeOnePool | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x5555555555555555555555555555555555555555`](./contracts/hyperliquid-999/0x5555555555555555555555555555555555555555/) | WHYPE9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
