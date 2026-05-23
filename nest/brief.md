# Agentic Audit Brief: NEST

## Project Overview

- Project: NEST (`nest`)
- Website: [https://app.usenest.xyz/](https://app.usenest.xyz/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-05-23T05:45:20.047Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: bsc, ethereum, hyperliquid, polygon
- Contract surface: 349 unique implementations (510 raw deployments)
- DeFi Llama TVL: $9,327,698.00
- On-chain TVL (included contracts): $69,415,308.58
- TVL by chain: Ethereum $58,240,508.58 | Bsc $11,174,800.00

## Project Description

NEST is a decentralized protocol that combines a ve(3,3) tokenomics layer with a concentrated liquidity DEX and a legacy synthetic asset system. It enables liquidity provision, trading, yield farming, and governance through its native NEST token and veNEST voting escrow.

### Architecture

The Core family provides the ve(3,3) layer that governs emissions and incentives for the DEX's liquidity pools, while the Key Contracts supply the NEST token and voting escrow used across both. The NEST family includes legacy components and veNEST compounding strategies that interact with the Core gauges and bribes.

## Audit Coverage Summary

- Verified implementations audited: 17/132 (12.9%)
- Verified + Unaudited implementations: 115
- Verified by bytecode match: 0
- Unverified implementations: 217
- Unique implementations: 349
- Raw deployments: 510
- Audits discovered: 10
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $69,415,308.58
- Latest audit: 2026-03 (fresh)
- Staleness: 1 fresh, 2 aging, 1 stale, 6 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BailSec | Tier 2 | 17 | 12.9% | 2026-03 |

## Contract Surface

### ✅ Verified + Audited (17)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BribeFactoryUpgradeable | operational_periphery | hyperliquid | 2 deployments: hyperliquid [`0x638e38...45621b`](./contracts/hyperliquid-999/0x638e382300ee2ece790164dafaf7a9f16045621b/); hyperliquid `0xb63363...97a1cb` | ✅ Audited |
| BribeUpgradeable | operational_periphery | hyperliquid | [`0xd073c8...c3cc64`](./contracts/hyperliquid-999/0xd073c875ac73c5b93ec142675bb6a40134c3cc64/) | ✅ Audited |
| BribeVeNESTRewardToken | operational_periphery | hyperliquid | 2 deployments: hyperliquid [`0x224240...231f47`](./contracts/hyperliquid-999/0x224240310337462bde7fee244a6e07e35a231f47/); hyperliquid `0xa2e33f...5104bc` | ✅ Audited |
| CompoundEmissionExtensionUpgradeable | operational_periphery | hyperliquid | 2 deployments: hyperliquid [`0x1c9250...3ca05d`](./contracts/hyperliquid-999/0x1c925056a1a657a4cb70d677d8c21028233ca05d/); hyperliquid `0x550040...2f881a` | ✅ Audited |
| CustomBribeRewardRouter | operational_periphery | hyperliquid | 2 deployments: hyperliquid [`0x1eb78f...8b3dfb`](./contracts/hyperliquid-999/0x1eb78fb533e480436a2e10ca01f5e828a28b3dfb/); hyperliquid `0x6e18a9...1e7eb5` | ✅ Audited |
| GaugeRewarder | operational_periphery | hyperliquid | 2 deployments: hyperliquid [`0x415895...e645ee`](./contracts/hyperliquid-999/0x4158958bf30c818491b36020f4b709404ce645ee/); hyperliquid `0xff0124...3f22ea` | ✅ Audited |
| MinterUpgradeable | unknown | hyperliquid | 3 deployments: hyperliquid [`0x13369f...da8fb8`](./contracts/hyperliquid-999/0x13369f61c13bd809984855ad26b1bf7780da8fb8/); hyperliquid `0x574f68...7e356d`; hyperliquid `0xeaaa90...ec5ffc` | ✅ Audited |
| Nest | unknown | hyperliquid | [`0x07c57e...4e3035`](./contracts/hyperliquid-999/0x07c57e32a3c29d5659bda1d3efc2e7bf004e3035/) | ✅ Audited |
| NestRaiseUpgradeable | unknown | hyperliquid | 2 deployments: hyperliquid [`0x891acb...0e98a5`](./contracts/hyperliquid-999/0x891acb9f28985a40687d12d24f711824d00e98a5/); hyperliquid `0xcd78d1...aa3867` | ✅ Audited |
| Pair | unknown | hyperliquid | [`0xc8e091...740082`](./contracts/hyperliquid-999/0xc8e091a600da73e27b1101f319a760e2c0740082/) | ✅ Audited |
| RouterV2 | adapter | hyperliquid | [`0xfdb346...fd2a17`](./contracts/hyperliquid-999/0xfdb34624506e9a0624af60f85ebd9e44a0fd2a17/) | ✅ Audited |
| TokenPublicRaiseUpgradeable | token | hyperliquid | 2 deployments: hyperliquid [`0x61434e...24f520`](./contracts/hyperliquid-999/0x61434e92cff4bee37794477453d211ed3224f520/); hyperliquid `0x91cf98...a61ddb` | ✅ Audited |
| VeArtProxyStatic | unknown | hyperliquid | [`0xbb3eb3...708ce0`](./contracts/hyperliquid-999/0xbb3eb334412a8a7e8336ccba98bdce5694708ce0/) | ✅ Audited |
| VeNestDistributorUpgradeable | operational_periphery | hyperliquid | 2 deployments: hyperliquid [`0x22350f...b7682f`](./contracts/hyperliquid-999/0x22350f14c6ee70992f1bbc7498e4c291b8b7682f/); hyperliquid `0x6d87ba...6acd9a` | ✅ Audited |
| VeNestSplitMerklAidropUpgradeable | unknown | hyperliquid | 2 deployments: hyperliquid [`0x84daba...8d567d`](./contracts/hyperliquid-999/0x84daba9c04733da41b9ff3b44f14cfa9c18d567d/); hyperliquid `0xb97b92...b720a6` | ✅ Audited |
| VoterUpgradeableV2 | unknown | hyperliquid | 2 deployments: hyperliquid [`0x566bdc...dba901`](./contracts/hyperliquid-999/0x566bdc5444fd5fe5d93ec379bd66ec861ddba901/); hyperliquid `0xc5a2f1...6c2799` | ✅ Audited |
| VotingEscrowUpgradeableV2 | operational_periphery | hyperliquid | 3 deployments: hyperliquid [`0x218af7...54df60`](./contracts/hyperliquid-999/0x218af7c32caebff93196e2475aced8e51254df60/); hyperliquid `0x2f2ae0...412074`; hyperliquid `0xab7517...18d968` | ✅ Audited |

### ⚠️ Verified + Unaudited (115)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| HBTCToken | token | ethereum | [`0x0316eb...c6d380`](./contracts/ethereum-1/0x0316eb71485b0ab14103307bf65a021042c6d380/) | ⚠️ Unaudited |
| ERC20Template | token | polygon | 7 deployments: bsc `0x591aaa...5f47df`; bsc `0x98f866...d1a6a7`; polygon [`0x15cd94...5ab9ea`](./contracts/polygon-137/0x15cd94c519fc81aad76570ec80939b4b855ab9ea/); polygon `0x1e0967...66c899`; polygon `0x98f866...d1a6a7`; polygon `0xd52f45...b80a4b`; polygon `0xf26d86...0ee362` | ⚠️ Unaudited |
| InsurancePool | core_logic | ethereum | 7 deployments: ethereum [`0x0bd32f...528c2e`](./contracts/ethereum-1/0x0bd32ffc80d5b98e403985d4446ae3ba67528c2e/); ethereum `0x1dc9a3...bb2832`; ethereum `0x46955c...308c8c`; ethereum `0x486b95...7d380d`; ethereum `0x665ac6...347bf0`; ethereum `0x790254...2ddaba`; ethereum `0xc80ebc...86dc9c` | ⚠️ Unaudited |
| NestPool | core_logic | ethereum | 3 deployments: ethereum [`0x9e6173...a555df`](./contracts/ethereum-1/0x9e61731055da2087779be0bb6bcd60e73ea555df/); ethereum `0xca208d...2c8c8f`; ethereum `0xf279f1...ff3010` | ⚠️ Unaudited |
| MortgagePool | core_logic | ethereum | 6 deployments: ethereum [`0x46893c...3e1e6b`](./contracts/ethereum-1/0x46893c30fbdf3a5818507309c0bdca62eb3e1e6b/); ethereum `0x505efc...584227`; ethereum `0x9a5c88...8f9723`; ethereum `0xa26d42...335657`; ethereum `0xd49bfb...ce34b3`; ethereum `0xd8e5ef...a6c01c` | ⚠️ Unaudited |
| Nest_NToken_OfferMain | token | ethereum | 4 deployments: ethereum [`0x1542e7...94eef4`](./contracts/ethereum-1/0x1542e790a742333ea6a2f171c5d07a2e7794eef4/); ethereum `0x99bd36...7a1879`; ethereum `0xc15859...6537eb`; ethereum `0xc40d7b...4a8b3c` | ⚠️ Unaudited |
| Abonus | unknown | ethereum | [`0x607b80...cf0584`](./contracts/ethereum-1/0x607b80a3498f01f87b889486f4e7f82c98cf0584/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | ethereum | 5 deployments: ethereum [`0x068b51...50ee77`](./contracts/ethereum-1/0x068b517d713dc32f5793bfb213f5a55e4f50ee77/); ethereum `0x26644c...2a1353`; ethereum `0x4e8f86...71f10b`; ethereum `0xa92d89...3c8fef`; ethereum `0xf27a5f...f726ed` | ⚠️ Unaudited |
| AlgebraBasePluginV1 | unknown | hyperliquid | 2 deployments: hyperliquid [`0x974f1b...85e3c1`](./contracts/hyperliquid-999/0x974f1be2b28c455ee29af20152c112feee85e3c1/); hyperliquid `0x9f0b39...faadd8` | ⚠️ Unaudited |
| AlgebraCommunityVault | core_logic | hyperliquid | [`0x15e408...8f5768`](./contracts/hyperliquid-999/0x15e408a37ce4d13218202c0054b0f485e38f5768/) | ⚠️ Unaudited |
| AlgebraDefaultPluginFactory | registry | hyperliquid | [`0xe165ee...1634ad`](./contracts/hyperliquid-999/0xe165ee23a9de18f7287dde6e1c57737a6b1634ad/) | ⚠️ Unaudited |
| AlgebraEternalFarming | unknown | hyperliquid | [`0x92b99d...0c3066`](./contracts/hyperliquid-999/0x92b99da7ded04684fede0e68484dc17b930c3066/) | ⚠️ Unaudited |
| AlgebraFactoryUpgradeable | registry | hyperliquid | 2 deployments: hyperliquid [`0xd99930...b1b59e`](./contracts/hyperliquid-999/0xd99930fae54b3fbc237eb330527501237bb1b59e/); hyperliquid `0xf77bd0...b3b1f3` | ⚠️ Unaudited |
| AlgebraInterfaceMulticall | periphery | hyperliquid | [`0x4b2acd...6bc545`](./contracts/hyperliquid-999/0x4b2acd111648718d9aaf028b744dbbfbf96bc545/) | ⚠️ Unaudited |
| AlgebraPoolDeployer | core_logic | hyperliquid | [`0x3842ce...ca161f`](./contracts/hyperliquid-999/0x3842ce04380b8655a3a47ed87ea0d311adca161f/) | ⚠️ Unaudited |
| ASET | unknown | ethereum | [`0x139cec...4d3c68`](./contracts/ethereum-1/0x139cec55d1ec47493dfa25ca77c9208aba4d3c68/) | ⚠️ Unaudited |
| BEP20USDT | token | bsc | [`0x55d398...197955`](./contracts/bsc-56/0x55d398326f99059ff775485246999027b3197955/) | ⚠️ Unaudited |
| CompoundVeNESTManagedNFTStrategyFactoryUpgradeable | registry | hyperliquid | 2 deployments: hyperliquid [`0x98fe25...96fa87`](./contracts/hyperliquid-999/0x98fe2510dfcadb52431c2a651e1ecfc46196fa87/); hyperliquid `0xc3ff1e...b6bbe4` | ⚠️ Unaudited |
| CompoundVeNESTManagedNFTStrategyUpgradeable | core_logic | hyperliquid | [`0xb3b7f4...3bf5b5`](./contracts/hyperliquid-999/0xb3b7f4f4b380ce53259170654eed32c89b3bf5b5/) | ⚠️ Unaudited |
| DCU | unknown | bsc | [`0xf56c6e...a933ef`](./contracts/bsc-56/0xf56c6ece0c0d6fbb9a53282c0df71dbfafa933ef/) | ⚠️ Unaudited |
| FarmingCenter | unknown | hyperliquid | [`0x98961d...30b0f8`](./contracts/hyperliquid-999/0x98961d85e004b246fcd9a07ac4d6d8169e30b0f8/) | ⚠️ Unaudited |
| FeesVaultFactoryUpgradeable | registry | hyperliquid | 2 deployments: hyperliquid [`0x705c76...9724c0`](./contracts/hyperliquid-999/0x705c76e29977ed52cd93d390a7bbcc61189724c0/); hyperliquid `0x798561...85abbf` | ⚠️ Unaudited |
| FeesVaultUpgradeable | core_logic | hyperliquid | [`0x7b12e8...c7cf03`](./contracts/hyperliquid-999/0x7b12e8ed9740d9d190b498a9aac3584d81c7cf03/) | ⚠️ Unaudited |
| FortFutures | unknown | bsc | 3 deployments: bsc [`0x5b9c4e...29ba23`](./contracts/bsc-56/0x5b9c4eb6b4e70d04ef78e5503a03b62dec29ba23/); bsc `0x8c5052...3cc149`; bsc `0x9b3718...77aaae` | ⚠️ Unaudited |
| FortOptions | unknown | bsc | 4 deployments: bsc [`0x012c42...a1b576`](./contracts/bsc-56/0x012c421484dab60279fe4a19de17593785a1b576/); bsc `0x284935...5fd8cc`; bsc `0xdac874...2fea7a`; bsc `0xfa77fa...95fdb0` | ⚠️ Unaudited |
| FortPRC | unknown | bsc | [`0x33bebe...2d2de7`](./contracts/bsc-56/0x33bebeb05fb7d0b641c5d79a25409804462d2de7/) | ⚠️ Unaudited |
| FortPRC44 | unknown | bsc | 2 deployments: bsc [`0x11b865...3139a8`](./contracts/bsc-56/0x11b8655f37103c30b461bf9d8b053afc193139a8/); bsc `0xf43a71...fd0530` | ⚠️ Unaudited |
| FortPRCSwap | unknown | bsc | 3 deployments: bsc [`0x46ccde...450ed4`](./contracts/bsc-56/0x46ccde7baf6e08bcecdef15a5cf446901c450ed4/); bsc `0x6a36b2...72dbff`; bsc `0xe4c09c...cf3afb` | ⚠️ Unaudited |
| FortSwap | unknown | bsc | 3 deployments: bsc [`0x26ebeb...b85572`](./contracts/bsc-56/0x26ebeb636fe4594d447c17381af002f15eb85572/); bsc `0x2cbb75...008b7d`; bsc `0xcaa607...8b6cc9` | ⚠️ Unaudited |
| FortSwapWithdraw | operational_periphery | bsc | [`0xf914d9...3f4536`](./contracts/bsc-56/0xf914d94c985b2882d780c262ceb3eb86e73f4536/) | ⚠️ Unaudited |
| FreeTransfer | unknown | bsc | 3 deployments: ethereum `0xf13c8c...4592bb`; bsc [`0x8d8e4d...cf3df0`](./contracts/bsc-56/0x8d8e4d946ed4c818c9ace798c869c6f93ccf3df0/); bsc `0xefbbd7...668bb9` | ⚠️ Unaudited |
| GaugeFactoryUpgradeable | operational_periphery | hyperliquid | 3 deployments: hyperliquid [`0x09d1a5...04c49d`](./contracts/hyperliquid-999/0x09d1a533032319557196f87dff831ff46204c49d/); hyperliquid `0x15eb39...cee2c7`; hyperliquid `0x9eb42a...db55df` | ⚠️ Unaudited |
| GaugeUpgradeable | operational_periphery | hyperliquid | 2 deployments: hyperliquid [`0x0ef3aa...72655f`](./contracts/hyperliquid-999/0x0ef3aa4f8e509d580ee0a1fd0e14c4b66a72655f/); hyperliquid `0x90ec77...d7636e` | ⚠️ Unaudited |
| GetInformationAggregatorUpgradeable | periphery | hyperliquid | 2 deployments: hyperliquid [`0x39b16a...68e12a`](./contracts/hyperliquid-999/0x39b16a40263c68bd25401281e8e9fe9e1d68e12a/); hyperliquid `0xa68576...672b98` | ⚠️ Unaudited |
| HBTCStorage | unknown | ethereum | [`0xc72869...26eefd`](./contracts/ethereum-1/0xc728693dcf6b257bf88577d6c92e52028426eefd/) | ⚠️ Unaudited |
| HCTToken | token | ethereum | [`0x60b920...9dd9ad`](./contracts/ethereum-1/0x60b920ed2e048b10d087ffc63f1adc303e9dd9ad/) | ⚠️ Unaudited |
| HDTToken | token | ethereum | [`0xe42ef5...cd06a6`](./contracts/ethereum-1/0xe42ef56340bca5072e3c7ba07df835a65ecd06a6/) | ⚠️ Unaudited |
| HedgeFutures | unknown | bsc | 4 deployments: bsc [`0x7d3caa...546a03`](./contracts/bsc-56/0x7d3caa914c3b742e61f572f78ace695f70546a03/); bsc `0xe3940a...fe922f`; bsc `0xea1b84...228596`; bsc `0xefcfd8...567be4` | ⚠️ Unaudited |
| HedgeGovernance | unknown | bsc | 2 deployments: bsc [`0x3e7d35...5eccb8`](./contracts/bsc-56/0x3e7d350bbab71caa2304e979aa6af007ef5eccb8/); bsc `0x52d00a...e75fff` | ⚠️ Unaudited |
| HedgeOptions | unknown | bsc | 2 deployments: bsc [`0x29c262...250dea`](./contracts/bsc-56/0x29c262e29e6f06943ba7c249a4bd794ca1250dea/); bsc `0xb11a1d...f02421` | ⚠️ Unaudited |
| HedgeSwap | unknown | bsc | 3 deployments: bsc [`0x2cd1bf...87363a`](./contracts/bsc-56/0x2cd1bf9345e969b5dfc6d88000475ad6d487363a/); bsc `0x2e6845...ca43ca`; bsc `0x9484f1...381801` | ⚠️ Unaudited |
| HUSDToken | token | ethereum | [`0x2a683d...13e846`](./contracts/ethereum-1/0x2a683d58afa5ce9f54cc498672a33c4a0e13e846/) | ⚠️ Unaudited |
| IBMapping | unknown | ethereum | 2 deployments: ethereum [`0x15a727...0ce107`](./contracts/ethereum-1/0x15a72780cd8d00f7bce1e87904de2f904d0ce107/); ethereum `0x5e7db2...603fbf` | ⚠️ Unaudited |
| IterableMapping | unknown | ethereum | 2 deployments: ethereum [`0x03c513...6e531b`](./contracts/ethereum-1/0x03c513ffbdbda34b4a66b3052fa5e0e6606e531b/); ethereum `0x04abed...ddc74c` | ⚠️ Unaudited |
| LPStakingMiningPool | core_logic | ethereum | 2 deployments: ethereum [`0x84d6a3...ea4eaa`](./contracts/ethereum-1/0x84d6a30f0a2153976ca2f59f215aa4f9f2ea4eaa/); ethereum `0xba0125...f7797f` | ⚠️ Unaudited |
| ManagedNFTManagerUpgradeable | governance | hyperliquid | 2 deployments: hyperliquid [`0x481f9d...802972`](./contracts/hyperliquid-999/0x481f9d30a70a90f6b50e4d1052323a8e79802972/); hyperliquid `0x843d31...41e792` | ⚠️ Unaudited |
| MiningV1Calc | unknown | ethereum | 6 deployments: ethereum [`0x005dc1...bc8dad`](./contracts/ethereum-1/0x005dc119e435d4c46d464a05330d732dbabc8dad/); ethereum `0x0c798f...5e73ac`; ethereum `0x265b6c...e124a5`; ethereum `0xdda744...ace195`; ethereum `0xf08054...4bed93`; ethereum `0xf8da3e...a5cfea` | ⚠️ Unaudited |
| MiningV1Op | unknown | ethereum | 6 deployments: ethereum [`0x1c6e26...b63c95`](./contracts/ethereum-1/0x1c6e268be622be1d0b16e7b49ef2fef927b63c95/); ethereum `0x257cbc...f93ea1`; ethereum `0x95db60...10668d`; ethereum `0x9b0b51...fff71f`; ethereum `0xb52a56...4b6f02`; ethereum `0xfe543e...33b841` | ⚠️ Unaudited |
| NEST_2_OfferPrice | operational_periphery | ethereum | [`0x60cbae...7bcc2e`](./contracts/ethereum-1/0x60cbaeee17d19458420ce572ca32a8de337bcc2e/) | ⚠️ Unaudited |
| Nest_3_Abonus | unknown | ethereum | [`0x431213...d44852`](./contracts/ethereum-1/0x43121397631551357ea511e62163b76e39d44852/) | ⚠️ Unaudited |
| Nest_3_Leveling | unknown | ethereum | [`0xae2d09...f4bae8`](./contracts/ethereum-1/0xae2d09d7974a933c6ddc06b8039cf09783f4bae8/) | ⚠️ Unaudited |
| Nest_3_MiningContract | unknown | ethereum | 2 deployments: ethereum [`0x2f979c...555b0a`](./contracts/ethereum-1/0x2f979c933aef4fcddd27c0fa5c54d8a780555b0a/); ethereum `0xbd15bb...db6ce0` | ⚠️ Unaudited |
| NEST_3_OfferData | unknown | ethereum | 2 deployments: ethereum [`0x54f701...69cd45`](./contracts/ethereum-1/0x54f701415ce1b17bd02fe4fbb6974b8f6469cd45/); ethereum `0x72b07f...2d4306` | ⚠️ Unaudited |
| NEST_3_OfferFactory | registry | ethereum | 4 deployments: ethereum [`0x43d99d...69de20`](./contracts/ethereum-1/0x43d99d54f14c64994fd9666beab6023b0069de20/); ethereum `0x4f391c...2782e2`; ethereum `0xb68f09...9bb282`; ethereum `0xfd2434...71058c` | ⚠️ Unaudited |
| Nest_3_OfferMain | unknown | ethereum | [`0xc83e00...d039f6`](./contracts/ethereum-1/0xc83e009c7794e8f6d1954dc13c23a35fc4d039f6/) | ⚠️ Unaudited |
| Nest_3_OfferPrice | operational_periphery | ethereum | 2 deployments: ethereum [`0x772289...fd270f`](./contracts/ethereum-1/0x7722891ee45ad38ae05bda8349ba4cf23cfd270f/); ethereum `0x94f36f...3e80eb` | ⚠️ Unaudited |
| NEST_3_OrePoolLogic | core_logic | ethereum | 2 deployments: ethereum [`0x89be82...121751`](./contracts/ethereum-1/0x89be829d32a66b116ec8568687481101fb121751/); ethereum `0x9c3c7b...d5c9b4` | ⚠️ Unaudited |
| Nest_3_TokenAbonus | token | ethereum | [`0x19e1d1...6e67c5`](./contracts/ethereum-1/0x19e1d193a448bd13097efc2aea867468726e67c5/) | ⚠️ Unaudited |
| Nest_3_TokenSave | token | ethereum | [`0x03904f...c99102`](./contracts/ethereum-1/0x03904f4b9fb54c61aaf96d0acdd2e42a46c99102/) | ⚠️ Unaudited |
| Nest_3_VoteFactory | registry | ethereum | 3 deployments: ethereum [`0x6cd569...465dea`](./contracts/ethereum-1/0x6cd5698e8854fb6879d6b1c694223b389b465dea/); ethereum `0x7dc3a3...9e630f`; ethereum `0xb3f9b0...3b7506` | ⚠️ Unaudited |
| NEST_LoanFactoryContract | registry | ethereum | [`0xf9b654...8db09f`](./contracts/ethereum-1/0xf9b6541b14f586459acdc6aec15dc2e12b8db09f/) | ⚠️ Unaudited |
| NEST_MiningSave | unknown | ethereum | 2 deployments: ethereum [`0x923f80...c78476`](./contracts/ethereum-1/0x923f80828663e44e0ffd5eb499686dc1ccc78476/); ethereum `0xf45ed5...7b1532` | ⚠️ Unaudited |
| NEST_NodeAssignment | unknown | ethereum | 2 deployments: ethereum [`0x39d0f5...7567cf`](./contracts/ethereum-1/0x39d0f58f5d5bbd636be23a3184aff16a4d7567cf/); ethereum `0x472c31...d54870` | ⚠️ Unaudited |
| NEST_NodeAssignmentData | unknown | ethereum | [`0xb086f9...bc6cbc`](./contracts/ethereum-1/0xb086f99e36c2c0ef6c051ee9e4d638717bbc6cbc/) | ⚠️ Unaudited |
| NEST_NodeSave | unknown | ethereum | [`0x101d8b...b052ac`](./contracts/ethereum-1/0x101d8b63a081dfff2b1364864345b7f071b052ac/) | ⚠️ Unaudited |
| Nest_NToken_TokenAuction | token | ethereum | [`0x385111...336dd4`](./contracts/ethereum-1/0x385111f23a00aed181b0774e6900c846c0336dd4/) | ⚠️ Unaudited |
| Nest_NToken_TokenMapping | token | ethereum | 2 deployments: ethereum [`0xed2a34...a752b5`](./contracts/ethereum-1/0xed2a34ce9d7304953e1a48fb4372f60e8da752b5/); ethereum `0xf9dc75...9ba003` | ⚠️ Unaudited |
| NEST36Update | unknown | ethereum | [`0xb26443...e0e7db`](./contracts/ethereum-1/0xb26443004df6a8a79984749d93017f265ae0e7db/) | ⚠️ Unaudited |
| Nest36Withdraw | operational_periphery | ethereum | [`0x6b8b56...228670`](./contracts/ethereum-1/0x6b8b56ca96c865bfaa27be79cd5513cb0b228670/) | ⚠️ Unaudited |
| NESTAbonus | unknown | ethereum | 2 deployments: ethereum [`0xdeeaa1...5016bd`](./contracts/ethereum-1/0xdeeaa1726cc544486eea4d0e114aebd04a5016bd/); ethereum `0xf67b82...86e7f6` | ⚠️ Unaudited |
| NestBatchPlatform2 | periphery | polygon | 5 deployments: ethereum `0x48c6e2...6812ab`; ethereum `0x79eb8f...60dcff`; ethereum `0xe544cf...35aa03`; polygon [`0x09ce0e...951540`](./contracts/polygon-137/0x09ce0e021195ba2c1cde62a8b187abf810951540/); polygon `0xa2efe2...523cf5` | ⚠️ Unaudited |
| NestBatchPlatform2New | periphery | bsc | 2 deployments: bsc [`0x09ce0e...951540`](./contracts/bsc-56/0x09ce0e021195ba2c1cde62a8b187abf810951540/); bsc `0xd4f2bb...b1ea6f` | ⚠️ Unaudited |
| NestDAO | unknown | ethereum | 2 deployments: ethereum [`0x105ee5...dffb4f`](./contracts/ethereum-1/0x105ee568dab631b8ff84f328bc48e95387dffb4f/); ethereum `0xb76dc2...5231cb` | ⚠️ Unaudited |
| NestGovernance | unknown | ethereum | 7 deployments: ethereum [`0x6d7693...0794c0`](./contracts/ethereum-1/0x6d76935090fb8b8b73b39f03243fad047b0794c0/); ethereum `0x7b5ee1...c3d4bb`; ethereum `0xa2efe2...523cf5`; bsc `0x7b5ee1...c3d4bb`; bsc `0xa192d0...c52838`; polygon `0x7b5ee1...c3d4bb`; polygon `0xa192d0...c52838` | ⚠️ Unaudited |
| NestInfo36 | periphery | ethereum | 2 deployments: ethereum [`0x403d92...1e0383`](./contracts/ethereum-1/0x403d92b6f8e8f0485f9920b31a3c084bce1e0383/); ethereum `0xc90dad...7f6ab2` | ⚠️ Unaudited |
| NestLedger | unknown | ethereum | 6 deployments: ethereum [`0x09ce0e...951540`](./contracts/ethereum-1/0x09ce0e021195ba2c1cde62a8b187abf810951540/); ethereum `0x34b931...45025d`; bsc `0x6d7693...0794c0`; bsc `0x7dbe94...4396e6`; polygon `0x6d7693...0794c0`; polygon `0x7dbe94...4396e6` | ⚠️ Unaudited |
| NESTLeveling | unknown | ethereum | [`0xc2cdf3...51092c`](./contracts/ethereum-1/0xc2cdf3457819a61720166d524f6e320c5451092c/) | ⚠️ Unaudited |
| NestMining | unknown | ethereum | 6 deployments: ethereum [`0x03df23...014bcd`](./contracts/ethereum-1/0x03df236eacfcef4457ff7d6b88e8f00823014bcd/); ethereum `0x45cef1...10d74d`; ethereum `0xaa6238...0e0586`; ethereum `0xc2058d...d902ca`; ethereum `0xcdab36...45376a`; ethereum `0xe34a73...c5f1a5` | ⚠️ Unaudited |
| NestMiningV1 | unknown | ethereum | 6 deployments: ethereum [`0x243f20...a7b8f6`](./contracts/ethereum-1/0x243f207f9358cf67243ade4a8ff3c5235aa7b8f6/); ethereum `0x8a4e23...49516f`; ethereum `0xb76ea9...1f72a7`; ethereum `0xbcb2d1...4a1eee`; ethereum `0xd9b5b4...72c642`; ethereum `0xfa4f77...716fde` | ⚠️ Unaudited |
| NestOpenPlatform | unknown | bsc | 4 deployments: bsc [`0x718626...fac8cd`](./contracts/bsc-56/0x718626a4b78e0ecfa60de1d4c386302e68fac8cd/); bsc `0xa2efe2...523cf5`; bsc `0xe34a73...c5f1a5`; bsc `0xf74a84...85d6c7` | ⚠️ Unaudited |
| NestPriceFacade | operational_periphery | ethereum | 4 deployments: ethereum [`0x200ffb...910d43`](./contracts/ethereum-1/0x200ffb773535c5c1aad8a24bb9e43a2c93910d43/); ethereum `0x7d58e9...722211`; ethereum `0xb5d289...5baf0a`; ethereum `0xd0b553...da3643` | ⚠️ Unaudited |
| NestQuery | unknown | ethereum | 2 deployments: ethereum [`0x3bf046...e306d2`](./contracts/ethereum-1/0x3bf046c114385357838d9cae9509c6fbbfe306d2/); ethereum `0xeb57c7...ef8c53` | ⚠️ Unaudited |
| NestRedeeming | unknown | ethereum | 2 deployments: ethereum [`0x5441b2...24b4b7`](./contracts/ethereum-1/0x5441b24fa3a2347ac6ee70431dd3bfd0c224b4b7/); ethereum `0xf48d58...69cec8` | ⚠️ Unaudited |
| NESTSave | unknown | ethereum | [`0x561d0d...ffaebf`](./contracts/ethereum-1/0x561d0d6c498a379574eaaa4a5f2532b223ffaebf/) | ⚠️ Unaudited |
| NestStaking | unknown | ethereum | 2 deployments: ethereum [`0x993810...06cdd7`](./contracts/ethereum-1/0x9938108eb2ae01f1dfac94c603a26b1be106cdd7/); ethereum `0xaa7a74...aa84ec` | ⚠️ Unaudited |
| NestUpgrade | unknown | ethereum | [`0x796f52...3e398c`](./contracts/ethereum-1/0x796f525ff1c4f88de4471d718c730343c83e398c/) | ⚠️ Unaudited |
| NestVote | unknown | ethereum | 2 deployments: ethereum [`0xbbf3e1...ca04ca`](./contracts/ethereum-1/0xbbf3e1b2901accc3fde5a4971903a0abc6ca04ca/); ethereum `0xda52f5...2d38e9` | ⚠️ Unaudited |
| NFTDescriptor | token | hyperliquid | [`0xa842fe...091836`](./contracts/hyperliquid-999/0xa842feb9f816891b4a377b6f8435462739091836/) | ⚠️ Unaudited |
| NNIncome | unknown | ethereum | 3 deployments: ethereum [`0x718626...fac8cd`](./contracts/ethereum-1/0x718626a4b78e0ecfa60de1d4c386302e68fac8cd/); ethereum `0x95557d...a340b2`; ethereum `0xade763...28f308` | ⚠️ Unaudited |
| NNRewardPool | core_logic | ethereum | 2 deployments: ethereum [`0x945d4d...f4e07b`](./contracts/ethereum-1/0x945d4d3180bf69283e490d25937d4b4828f4e07b/); ethereum `0xf1a720...ece757` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | hyperliquid | [`0xeaf587...616250`](./contracts/hyperliquid-999/0xeaf58788a405f3253814b4559391a22be8616250/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | hyperliquid | 2 deployments: hyperliquid [`0x0f36c2...9e71c8`](./contracts/hyperliquid-999/0x0f36c26844632a78605d43b2e55ecb1dd19e71c8/); hyperliquid `0x18cecc...f358db` | ⚠️ Unaudited |
| NTokenController | governance | ethereum | 4 deployments: ethereum [`0x1cf078...fc6481`](./contracts/ethereum-1/0x1cf07859ed5d5f95aeb1474db5f7ae2cc0fc6481/); ethereum `0x5f26aa...332a14`; ethereum `0x6c4bd6...c9dcb7`; ethereum `0xc4f169...d66b62` | ⚠️ Unaudited |
| PairAPIUpgradeable | unknown | hyperliquid | 2 deployments: hyperliquid [`0x4f0ec8...0d97e3`](./contracts/hyperliquid-999/0x4f0ec8880749f6f080515f1907964312220d97e3/); hyperliquid `0x7d0190...bdcb79` | ⚠️ Unaudited |
| PairFactoryUpgradeable | registry | hyperliquid | 2 deployments: hyperliquid [`0x889fd0...48fdf5`](./contracts/hyperliquid-999/0x889fd0ada8453c7619cd7f11e9029a1f0848fdf5/); hyperliquid `0xba7171...7301ac` | ⚠️ Unaudited |
| ParassetGovernance | unknown | ethereum | [`0x175d28...ca31f4`](./contracts/ethereum-1/0x175d282bc8249a3b92682365118f693380ca31f4/) | ⚠️ Unaudited |
| PriceController | operational_periphery | ethereum | 3 deployments: ethereum [`0x2ce14c...377635`](./contracts/ethereum-1/0x2ce14c65cd3ccc546433e3b1e8c712e102377635/); ethereum `0x54397e...9bc575`; ethereum `0xd0a9fb...019548` | ⚠️ Unaudited |
| PriceController2 | operational_periphery | ethereum | [`0xf648a3...f97fe2`](./contracts/ethereum-1/0xf648a348a2a25e759d978c32c523a0b90bf97fe2/) | ⚠️ Unaudited |
| PriceController3 | operational_periphery | ethereum | [`0x82fe6c...3073ae`](./contracts/ethereum-1/0x82fe6c1c2bd0be9917fe57a6120056868d3073ae/) | ⚠️ Unaudited |
| ProxyAdmin | governance | hyperliquid | 8 deployments: ethereum `0x5cde6e...c3fac8`; ethereum `0x7dbe94...4396e6`; ethereum `0x92f331...220bdd`; bsc `0x91acf8...9bb26e`; bsc `0xb16260...71c088`; polygon `0x91acf8...9bb26e`; hyperliquid [`0x45727c...9d92ab`](./contracts/hyperliquid-999/0x45727c03b46970c64e4039b546e6bd1f9c9d92ab/); hyperliquid `0xb688d5...f20124` | ⚠️ Unaudited |
| PTokenFactory | registry | ethereum | 5 deployments: ethereum [`0x1b1c55...696ed1`](./contracts/ethereum-1/0x1b1c555dcdb7bd4f7c61f00264f8ddc09f696ed1/); ethereum `0x978f00...44dda8`; ethereum `0xa6f7e1...d175da`; ethereum `0xaa3c75...030ed2`; ethereum `0xbe612b...aa445b` | ⚠️ Unaudited |
| Quoter | periphery | hyperliquid | [`0x89c3ab...e4db78`](./contracts/hyperliquid-999/0x89c3ab4f5342498e9edac5c43c07e9bd9ae4db78/) | ⚠️ Unaudited |
| QuoterV2 | periphery | hyperliquid | [`0xbea206...f5dfad`](./contracts/hyperliquid-999/0xbea20609a4772311c5b81f814cd4f9ecaef5dfad/) | ⚠️ Unaudited |
| RewardAPIUpgradeable | unknown | hyperliquid | 2 deployments: hyperliquid [`0xbfa705...88bc7d`](./contracts/hyperliquid-999/0xbfa705dbf2a72077f6c66230c901f54a3788bc7d/); hyperliquid `0xf82237...1ec677` | ⚠️ Unaudited |
| RouterV2PathProviderUpgradeable | adapter | hyperliquid | 2 deployments: hyperliquid [`0x6d3cd3...fee1c0`](./contracts/hyperliquid-999/0x6d3cd36518c6800f6aa9d1fd54276b5dd0fee1c0/); hyperliquid `0xff5a96...a67c9b` | ⚠️ Unaudited |
| SecurityRegistry | registry | hyperliquid | [`0x47f2d9...585879`](./contracts/hyperliquid-999/0x47f2d9058fe32da17a0f253f70266d9dcd585879/) | ⚠️ Unaudited |
| SingelTokenVirtualRewarderUpgradeable | token | hyperliquid | [`0xaf24cf...8069df`](./contracts/hyperliquid-999/0xaf24cf0dd121b89df98b9fad2e05821bd08069df/) | ⚠️ Unaudited |
| SuperMan | unknown | ethereum | [`0xc028e8...e96e6e`](./contracts/ethereum-1/0xc028e81e11f374f7c1a3be6b8d2a815fa3e96e6e/) | ⚠️ Unaudited |
| SwapRouter | adapter | hyperliquid | [`0xaa26b8...9681e9`](./contracts/hyperliquid-999/0xaa26b8e5cadd04430c32787ecc3aa325e99681e9/) | ⚠️ Unaudited |
| TickLens | periphery | hyperliquid | [`0x44f129...51c2c5`](./contracts/hyperliquid-999/0x44f1292f550e33b2ecd346ac8746e405a351c2c5/) | ⚠️ Unaudited |
| UtilsUpgradeable | unknown | hyperliquid | 3 deployments: hyperliquid [`0x29290c...a27d60`](./contracts/hyperliquid-999/0x29290c57c883156f972f35d8b110613680a27d60/); hyperliquid `0xc7deed...8c0195`; hyperliquid `0xf9159f...a8cf81` | ⚠️ Unaudited |
| VeNFTAPIUpgradeable | token | hyperliquid | 2 deployments: hyperliquid [`0x0ccbef...d22b19`](./contracts/hyperliquid-999/0x0ccbefa11fff9a37c8a14914f548b0664dd22b19/); hyperliquid `0x862b14...92a774` | ⚠️ Unaudited |
| VolatileDynamicFeeOnePool | core_logic | hyperliquid | 3 deployments: hyperliquid [`0x8b6ce3...9ca05c`](./contracts/hyperliquid-999/0x8b6ce3610732c8237fc0d1781e56d513a29ca05c/); hyperliquid `0xe13dd2...78be9d`; hyperliquid `0xfb665b...06e790` | ⚠️ Unaudited |
| WHYPE9 | unknown | hyperliquid | [`0x555555...555555`](./contracts/hyperliquid-999/0x5555555555555555555555555555555555555555/) | ⚠️ Unaudited |
| XXXXToken | token | ethereum | [`0xf8f560...c1dc1a`](./contracts/ethereum-1/0xf8f56001db32932f34f18101e6d6f9b4d1c1dc1a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (217)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x0115e5...facbfe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x028fe4...9f76e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x08252c...dcac7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0b9776...834aa2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0c9fa2...eaa7a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0feece...c703c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x112ed5...177591` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x128f07...65fc98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1486a1...d59185` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x14d666...2ef132` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1587f7...806b81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x16f0e2...d63b30` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1770b2...42142d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x17e76f...ea860f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x18b73b...0c9f1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x18cb80...babf8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1a35f2...c771d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1bcd9a...68445e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1be074...7e850e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1dc2de...f15442` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1dc5ff...45a128` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1f88c9...c2d66d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1fe81d...b0345e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2241a3...56a862` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x251778...a2d27d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x25aab5...126919` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x26da3d...dc2dc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x27156f...00d0db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x272020...3398cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2762eb...37d234` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x276ccd...9212d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x28f78a...e2132d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2a7a0d...9b681a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ba3c1...a024b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2cc20b...3d26f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2dcd3c...3766d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2df1be...a0526e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2ed8b7...80501a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x304df6...971bb6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x305997...acdab0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3203a1...82678b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x350b46...8d2ba8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x36ff21...538211` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x38ad66...f89014` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x38ed17...dfa3a0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x38eed2...1fb70d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3af800...d263f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3b0c2e...0be28e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3b1ac7...175072` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3bb5e6...2c2813` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3e7fe4...7817bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x41bc5a...5bb308` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x435189...e7886f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x437c4f...f70502` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x47b375...d17213` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x491428...560d42` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4a9e69...6888ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4aac60...5a1e5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4baf52...3b751d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4c404f...215fb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4e45ec...0e1816` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4ec1e2...8eac19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x50a4bf...c5a88b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x512597...447595` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5131a0...ce541c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x517acf...8b4f84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x51d27e...a13e0d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5286af...e08962` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x56297d...e3375a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x563199...db453f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x591aaa...5f47df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5c07eb...103c11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5c7f53...e21ee4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5e057f...70ccf5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5e6cb2...37cc3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x606bc2...f9c75f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x629bda...678b45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x63121f...317943` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x658b78...c4b4f2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6631d8...cc31c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6ac986...bd68df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6af9b8...faff1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6be7aa...59a94b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6d60e6...6a0928` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6e1a6d...87b308` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x73e50a...9bc356` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x74fc1b...2717b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7524d4...1f1dea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x765c43...579066` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x791c12...5af788` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x79c13e...3144e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x79eb7e...517772` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x79f94b...7604fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7abcf0...a379e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7bcd02...70c95e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7d7558...15c2f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7e92f2...60af9b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x831945...02fdd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x839bc3...415b2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x85e998...8ca484` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8619b7...60c7d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x86f432...513939` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x898b3f...72f981` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8c1d4a...1cd55a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8c22a9...7c591c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8ec2df...887021` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8f4a5e...1250af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x903a34...1ceb2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x91ca7b...289f8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x946537...33eaf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x94b422...80bfc8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x95b691...2b8366` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x96c8df...fc1ac3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x972588...f054c6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x972624...de5781` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x97a8f7...949504` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x98a351...e5b2ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x98f866...d1a6a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9cb184...3e56e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9dcf6a...06150f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9eca6b...88128a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f4e72...09bfcd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f82a9...36a72d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa03b50...fcb52b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa086e0...142c96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa0bb2f...1782f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa0e1b6...07bf5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa1839b...8c3e6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa192d0...c52838` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa23c48...ec918b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa33a36...28a11b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa3ba6d...c64cc4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa485a1...0439f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa5c53f...c238ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa62884...fa5d54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa6c44d...cd58bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa924f1...fb7228` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaac3f2...e00b5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaae932...993064` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xad1ce2...056708` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xae1731...205c91` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaecf85...317fbb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb9b37a...8c11bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xba0ef5...354306` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xba2d71...713f03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xba852a...fb203d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbb8d13...f3a7d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbc06f8...1690b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbde6ed...69f314` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbdf674...ec8647` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbe6aa1...197d77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbe95d2...dbc8cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc00736...ad9e19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc20c15...543fc5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc22a48...c5789c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc3591c...2f76e3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc3d6c2...0db0d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc43ac9...9f8ee8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc50082...f07ed0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc94df8...dd68e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb00cd...51cb80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcda5b2...78c1ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcdad4d...0298e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcf953f...5772d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd0c04a...16c23d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd1c400...9b5dc1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd1fdaa...28092e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd342ac...152360` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd360cf...890f15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd5a957...8313e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd68238...d9703f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd7d416...9f440d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd89bae...7d46f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd8adb5...140d11` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd906fa...823be9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd92421...8192b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd945a9...238a62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd9cc56...405639` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd9e2ed...32d1fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdc2173...4b81d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xddfb27...b4b94e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe14adf...1c84b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe57c8c...fbae4b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5f04f...367cb4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe6b946...4aaa33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe7178c...629f3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe9361f...19499f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe95fe8...936332` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xee4fa1...c22d1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xee9264...e01334` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xef609a...1dc84c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xefb75b...f55776` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xefbbd7...668bb9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf0dc24...565fd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf15864...f160cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf1d0b0...312bc6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf26d86...0ee362` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf36184...d5ade5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf4c4a4...331b62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf4cf40...4df368` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf57481...4bd4f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf59a5d...bcc94c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf5c083...39c585` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf64601...5f0b94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf65011...fce2f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf79731...cd64eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf9f9c8...5e2234` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfa4881...1c89d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfac8c1...9c8418` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfe71a2...afd656` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xff8eb8...1ed71c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfff42e...4a13bd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x94b422...80bfc8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x0136b1...9cc964` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x3aed39...05636f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x56b0d9...7d04b7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xf00037...5c494d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [[\[Final Report\]]()](https://github.com/bailsec/BailSec/blob/main/Bailsec%20-%20Nest%20-%20VE%20Core%20-%20Final%20Report.pdf) | BailSec | Audit | 2026-03 | fresh | Direct | contract_name | 31 | high |
| [* **Final report (Code4rena):** [](https://code4rena.com/reports/2024-09-fenix-finance?utm_source=chatgpt.com)](https://code4rena.com/reports/2024-09-fenix-finance) | Code4rena | Contest | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [Algebra_Paladin_report.pdf (also discovered via alternate URL)](https://github.com/hats-finance/Fenix-Finance-0x83dbe5aa378f3ce160ed084daf85f621289fb92f/blob/main/audits/Algebra_Paladin_report.pdf) | Paladin | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |
| [Core_audit_report_MixBytes.pdf (also discovered via alternate URL)](https://github.com/hats-finance/Fenix-Finance-0x83dbe5aa378f3ce160ed084daf85f621289fb92f/blob/main/audits/Core_audit_report_MixBytes.pdf) | MixBytes | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Farming_Plugin_report_MixBytes.pdf (also discovered via alternate URL)](https://github.com/hats-finance/Fenix-Finance-0x83dbe5aa378f3ce160ed084daf85f621289fb92f/blob/main/audits/Farming_Plugin_report_MixBytes.pdf) | MixBytes | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Riley_Holterhus_Algebra_Integral.pdf (also discovered via alternate URL)](https://github.com/hats-finance/Fenix-Finance-0x83dbe5aa378f3ce160ed084daf85f621289fb92f/blob/main/audits/Riley_Holterhus_Algebra_Integral.pdf) | Riley Holterhus | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Bailsec_Algebra_Integral_Update_Audit_differential_Report.pdf](https://github.com/cryptoalgebra/Algebra/blob/master/audits/Bailsec_Algebra_Integral_Update_Audit_differential_Report.pdf) | Bailsec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Bailsec_Algebra_Integralv1.2_Core_Update_Audit.pdf](https://github.com/cryptoalgebra/Algebra/blob/master/audits/Bailsec_Algebra_Integralv1.2_Core_Update_Audit.pdf) | Bailsec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Base_Plugin_report_MixBytes.pdf](https://github.com/cryptoalgebra/Algebra/blob/master/audits/Base_Plugin_report_MixBytes.pdf) | MixBytes | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [* **Contest page (Code4rena):** [](https://code4rena.com/audits/2024-09-fenix-finance-invitational?utm_source=chatgpt.com)](https://code4rena.com/audits/2024-09-fenix-finance-invitational) | Code4rena | Contest | 2024-09 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0316eb...c6d380`](./contracts/ethereum-1/0x0316eb71485b0ab14103307bf65a021042c6d380/) | HBTCToken | token | $58,239,992.84 | Verified native implementation with $58,239,992.84 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x15cd94...5ab9ea`](./contracts/polygon-137/0x15cd94c519fc81aad76570ec80939b4b855ab9ea/) | ERC20Template | token | $11,174,800.00 | Verified native implementation with $11,174,800.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9e6173...a555df`](./contracts/ethereum-1/0x9e61731055da2087779be0bb6bcd60e73ea555df/) | NestPool | core_logic | $0.20 | Verified native implementation with $0.20 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46893c...3e1e6b`](./contracts/ethereum-1/0x46893c30fbdf3a5818507309c0bdca62eb3e1e6b/) | MortgagePool | core_logic | $0.01 | Verified native implementation with $0.01 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1542e7...94eef4`](./contracts/ethereum-1/0x1542e790a742333ea6a2f171c5d07a2e7794eef4/) | Nest_NToken_OfferMain | token | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x607b80...cf0584`](./contracts/ethereum-1/0x607b80a3498f01f87b889486f4e7f82c98cf0584/) | Abonus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xe165ee...1634ad`](./contracts/hyperliquid-999/0xe165ee23a9de18f7287dde6e1c57737a6b1634ad/) | AlgebraDefaultPluginFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x139cec...4d3c68`](./contracts/ethereum-1/0x139cec55d1ec47493dfa25ca77c9208aba4d3c68/) | ASET | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf56c6e...a933ef`](./contracts/bsc-56/0xf56c6ece0c0d6fbb9a53282c0df71dbfafa933ef/) | DCU | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7b12e8...c7cf03`](./contracts/hyperliquid-999/0x7b12e8ed9740d9d190b498a9aac3584d81c7cf03/) | FeesVaultUpgradeable | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5b9c4e...29ba23`](./contracts/bsc-56/0x5b9c4eb6b4e70d04ef78e5503a03b62dec29ba23/) | FortFutures | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x012c42...a1b576`](./contracts/bsc-56/0x012c421484dab60279fe4a19de17593785a1b576/) | FortOptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x33bebe...2d2de7`](./contracts/bsc-56/0x33bebeb05fb7d0b641c5d79a25409804462d2de7/) | FortPRC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x11b865...3139a8`](./contracts/bsc-56/0x11b8655f37103c30b461bf9d8b053afc193139a8/) | FortPRC44 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x46ccde...450ed4`](./contracts/bsc-56/0x46ccde7baf6e08bcecdef15a5cf446901c450ed4/) | FortPRCSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x26ebeb...b85572`](./contracts/bsc-56/0x26ebeb636fe4594d447c17381af002f15eb85572/) | FortSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf914d9...3f4536`](./contracts/bsc-56/0xf914d94c985b2882d780c262ceb3eb86e73f4536/) | FortSwapWithdraw | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8d8e4d...cf3df0`](./contracts/bsc-56/0x8d8e4d946ed4c818c9ace798c869c6f93ccf3df0/) | FreeTransfer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x0ef3aa...72655f`](./contracts/hyperliquid-999/0x0ef3aa4f8e509d580ee0a1fd0e14c4b66a72655f/) | GaugeUpgradeable | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x39b16a...68e12a`](./contracts/hyperliquid-999/0x39b16a40263c68bd25401281e8e9fe9e1d68e12a/) | GetInformationAggregatorUpgradeable | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc72869...26eefd`](./contracts/ethereum-1/0xc728693dcf6b257bf88577d6c92e52028426eefd/) | HBTCStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60b920...9dd9ad`](./contracts/ethereum-1/0x60b920ed2e048b10d087ffc63f1adc303e9dd9ad/) | HCTToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe42ef5...cd06a6`](./contracts/ethereum-1/0xe42ef56340bca5072e3c7ba07df835a65ecd06a6/) | HDTToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x7d3caa...546a03`](./contracts/bsc-56/0x7d3caa914c3b742e61f572f78ace695f70546a03/) | HedgeFutures | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x29c262...250dea`](./contracts/bsc-56/0x29c262e29e6f06943ba7c249a4bd794ca1250dea/) | HedgeOptions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15a727...0ce107`](./contracts/ethereum-1/0x15a72780cd8d00f7bce1e87904de2f904d0ce107/) | IBMapping | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84d6a3...ea4eaa`](./contracts/ethereum-1/0x84d6a30f0a2153976ca2f59f215aa4f9f2ea4eaa/) | LPStakingMiningPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x481f9d...802972`](./contracts/hyperliquid-999/0x481f9d30a70a90f6b50e4d1052323a8e79802972/) | ManagedNFTManagerUpgradeable | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x005dc1...bc8dad`](./contracts/ethereum-1/0x005dc119e435d4c46d464a05330d732dbabc8dad/) | MiningV1Calc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1c6e26...b63c95`](./contracts/ethereum-1/0x1c6e268be622be1d0b16e7b49ef2fef927b63c95/) | MiningV1Op | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60cbae...7bcc2e`](./contracts/ethereum-1/0x60cbaeee17d19458420ce572ca32a8de337bcc2e/) | NEST_2_OfferPrice | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x431213...d44852`](./contracts/ethereum-1/0x43121397631551357ea511e62163b76e39d44852/) | Nest_3_Abonus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xae2d09...f4bae8`](./contracts/ethereum-1/0xae2d09d7974a933c6ddc06b8039cf09783f4bae8/) | Nest_3_Leveling | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2f979c...555b0a`](./contracts/ethereum-1/0x2f979c933aef4fcddd27c0fa5c54d8a780555b0a/) | Nest_3_MiningContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54f701...69cd45`](./contracts/ethereum-1/0x54f701415ce1b17bd02fe4fbb6974b8f6469cd45/) | NEST_3_OfferData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43d99d...69de20`](./contracts/ethereum-1/0x43d99d54f14c64994fd9666beab6023b0069de20/) | NEST_3_OfferFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc83e00...d039f6`](./contracts/ethereum-1/0xc83e009c7794e8f6d1954dc13c23a35fc4d039f6/) | Nest_3_OfferMain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x772289...fd270f`](./contracts/ethereum-1/0x7722891ee45ad38ae05bda8349ba4cf23cfd270f/) | Nest_3_OfferPrice | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x89be82...121751`](./contracts/ethereum-1/0x89be829d32a66b116ec8568687481101fb121751/) | NEST_3_OrePoolLogic | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19e1d1...6e67c5`](./contracts/ethereum-1/0x19e1d193a448bd13097efc2aea867468726e67c5/) | Nest_3_TokenAbonus | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03904f...c99102`](./contracts/ethereum-1/0x03904f4b9fb54c61aaf96d0acdd2e42a46c99102/) | Nest_3_TokenSave | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6cd569...465dea`](./contracts/ethereum-1/0x6cd5698e8854fb6879d6b1c694223b389b465dea/) | Nest_3_VoteFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf9b654...8db09f`](./contracts/ethereum-1/0xf9b6541b14f586459acdc6aec15dc2e12b8db09f/) | NEST_LoanFactoryContract | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x923f80...c78476`](./contracts/ethereum-1/0x923f80828663e44e0ffd5eb499686dc1ccc78476/) | NEST_MiningSave | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39d0f5...7567cf`](./contracts/ethereum-1/0x39d0f58f5d5bbd636be23a3184aff16a4d7567cf/) | NEST_NodeAssignment | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb086f9...bc6cbc`](./contracts/ethereum-1/0xb086f99e36c2c0ef6c051ee9e4d638717bbc6cbc/) | NEST_NodeAssignmentData | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x101d8b...b052ac`](./contracts/ethereum-1/0x101d8b63a081dfff2b1364864345b7f071b052ac/) | NEST_NodeSave | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x385111...336dd4`](./contracts/ethereum-1/0x385111f23a00aed181b0774e6900c846c0336dd4/) | Nest_NToken_TokenAuction | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed2a34...a752b5`](./contracts/ethereum-1/0xed2a34ce9d7304953e1a48fb4372f60e8da752b5/) | Nest_NToken_TokenMapping | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb26443...e0e7db`](./contracts/ethereum-1/0xb26443004df6a8a79984749d93017f265ae0e7db/) | NEST36Update | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6b8b56...228670`](./contracts/ethereum-1/0x6b8b56ca96c865bfaa27be79cd5513cb0b228670/) | Nest36Withdraw | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdeeaa1...5016bd`](./contracts/ethereum-1/0xdeeaa1726cc544486eea4d0e114aebd04a5016bd/) | NESTAbonus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d7693...0794c0`](./contracts/ethereum-1/0x6d76935090fb8b8b73b39f03243fad047b0794c0/) | NestGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x403d92...1e0383`](./contracts/ethereum-1/0x403d92b6f8e8f0485f9920b31a3c084bce1e0383/) | NestInfo36 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09ce0e...951540`](./contracts/ethereum-1/0x09ce0e021195ba2c1cde62a8b187abf810951540/) | NestLedger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2cdf3...51092c`](./contracts/ethereum-1/0xc2cdf3457819a61720166d524f6e320c5451092c/) | NESTLeveling | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x718626...fac8cd`](./contracts/bsc-56/0x718626a4b78e0ecfa60de1d4c386302e68fac8cd/) | NestOpenPlatform | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x200ffb...910d43`](./contracts/ethereum-1/0x200ffb773535c5c1aad8a24bb9e43a2c93910d43/) | NestPriceFacade | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5441b2...24b4b7`](./contracts/ethereum-1/0x5441b24fa3a2347ac6ee70431dd3bfd0c224b4b7/) | NestRedeeming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x561d0d...ffaebf`](./contracts/ethereum-1/0x561d0d6c498a379574eaaa4a5f2532b223ffaebf/) | NESTSave | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x993810...06cdd7`](./contracts/ethereum-1/0x9938108eb2ae01f1dfac94c603a26b1be106cdd7/) | NestStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x796f52...3e398c`](./contracts/ethereum-1/0x796f525ff1c4f88de4471d718c730343c83e398c/) | NestUpgrade | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbbf3e1...ca04ca`](./contracts/ethereum-1/0xbbf3e1b2901accc3fde5a4971903a0abc6ca04ca/) | NestVote | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x718626...fac8cd`](./contracts/ethereum-1/0x718626a4b78e0ecfa60de1d4c386302e68fac8cd/) | NNIncome | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x945d4d...f4e07b`](./contracts/ethereum-1/0x945d4d3180bf69283e490d25937d4b4828f4e07b/) | NNRewardPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cf078...fc6481`](./contracts/ethereum-1/0x1cf07859ed5d5f95aeb1474db5f7ae2cc0fc6481/) | NTokenController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x4f0ec8...0d97e3`](./contracts/hyperliquid-999/0x4f0ec8880749f6f080515f1907964312220d97e3/) | PairAPIUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x175d28...ca31f4`](./contracts/ethereum-1/0x175d282bc8249a3b92682365118f693380ca31f4/) | ParassetGovernance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ce14c...377635`](./contracts/ethereum-1/0x2ce14c65cd3ccc546433e3b1e8c712e102377635/) | PriceController | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf648a3...f97fe2`](./contracts/ethereum-1/0xf648a348a2a25e759d978c32c523a0b90bf97fe2/) | PriceController2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82fe6c...3073ae`](./contracts/ethereum-1/0x82fe6c1c2bd0be9917fe57a6120056868d3073ae/) | PriceController3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b1c55...696ed1`](./contracts/ethereum-1/0x1b1c555dcdb7bd4f7c61f00264f8ddc09f696ed1/) | PTokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xbfa705...88bc7d`](./contracts/hyperliquid-999/0xbfa705dbf2a72077f6c66230c901f54a3788bc7d/) | RewardAPIUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x6d3cd3...fee1c0`](./contracts/hyperliquid-999/0x6d3cd36518c6800f6aa9d1fd54276b5dd0fee1c0/) | RouterV2PathProviderUpgradeable | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x47f2d9...585879`](./contracts/hyperliquid-999/0x47f2d9058fe32da17a0f253f70266d9dcd585879/) | SecurityRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xaf24cf...8069df`](./contracts/hyperliquid-999/0xaf24cf0dd121b89df98b9fad2e05821bd08069df/) | SingelTokenVirtualRewarderUpgradeable | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc028e8...e96e6e`](./contracts/ethereum-1/0xc028e81e11f374f7c1a3be6b8d2a815fa3e96e6e/) | SuperMan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xaa26b8...9681e9`](./contracts/hyperliquid-999/0xaa26b8e5cadd04430c32787ecc3aa325e99681e9/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x44f129...51c2c5`](./contracts/hyperliquid-999/0x44f1292f550e33b2ecd346ac8746e405a351c2c5/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x29290c...a27d60`](./contracts/hyperliquid-999/0x29290c57c883156f972f35d8b110613680a27d60/) | UtilsUpgradeable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x555555...555555`](./contracts/hyperliquid-999/0x5555555555555555555555555555555555555555/) | WHYPE9 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8f560...c1dc1a`](./contracts/ethereum-1/0xf8f56001db32932f34f18101e6d6f9b4d1c1dc1a/) | XXXXToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 183 |
| upstream | 14 |
| standard_library | 7 |
| needs_review | 145 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 9
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=31

Zero-match audit list:

- [2102] * **Final report (Code4rena):** [](https://code4rena.com/reports/2024-09-fenix-finance?utm_source=chatgpt.com)
- [2103] Algebra_Paladin_report.pdf
- [2104] Core_audit_report_MixBytes.pdf
- [2105] Farming_Plugin_report_MixBytes.pdf
- [2106] Riley_Holterhus_Algebra_Integral.pdf
- [2108] Bailsec_Algebra_Integral_Update_Audit_differential_Report.pdf
- [2109] Bailsec_Algebra_Integralv1.2_Core_Update_Audit.pdf
- [2110] Base_Plugin_report_MixBytes.pdf
- [2114] * **Contest page (Code4rena):** [](https://code4rena.com/audits/2024-09-fenix-finance-invitational?utm_source=chatgpt.com)

Fork inheritance lineage and inherited audits are included when available.
