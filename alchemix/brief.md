# Agentic Audit Brief: Alchemix

⚠️ Lifecycle status: DECLINING - TVL dropped 5.9% over 90 days

## Project Overview

- Project: Alchemix (`alchemix`)
- Website: [https://alchemix.fi/](https://alchemix.fi/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:52:59.746Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: arbitrum, ethereum, fantom, optimism
- Contract surface: 483 unique implementations (697 raw deployments)
- DeFi Llama TVL: $30,488,433.00
- On-chain TVL (included contracts): $294,431,043.44
- TVL by chain: Ethereum $261,573,121.74 | Optimism $31,653,197.24 | Arbitrum $1,204,724.45

## Project Description

Synthetics. Structurally: 204 project-authored contract(s) across 3 chain(s); 26 ERC20 tokens, 8 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 23 common project-authored base contract(s) (proxy, multicall, mutexlock). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 830; live-surface contracts included: 680 (305 live, 375 unknown).
- Excluded by liveness: 150 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 12/88 (13.6%)
- Deployed-live implementations: 123 of 483 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 14/126
- Verified + Unaudited implementations: 112
- Verified by bytecode match: 0
- Unverified implementations: 357
- Unique implementations: 483
- Raw deployments: 697
- Audits discovered: 6 (6 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $290,562,444.75
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 4 fresh, 1 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 14 match-unverified
- Tier 1 coverage: 2.3% (Spearbit)
- Note: This protocol is classified as [declining]. ASD of $290,562,444.75 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 12 | 9.5% | 2026-03 |
| Spearbit | Tier 1 | 4 | 3.2% | 2025-05 |
| yAudit | Tier 2 | 3 | 2.4% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| WstETHEthereumStrategy | core_logic | ethereum | n/a | [`0xde44c213f0730e9f38401daf8edf31129de80681`](./contracts/ethereum-1/0xde44c213f0730e9f38401daf8edf31129de80681/) | ✅ Audited |
| WstethStrategy | core_logic | optimism | n/a | 2 deployments: ethereum `0x7da70f3327efe7643867c6ae5909d8ab01353189`; optimism [`0x4bd4faad509c4bc5ba6d68a15c8b1b54a10288b4`](./contracts/optimism-10/0x4bd4faad509c4bc5ba6d68a15c8b1b54a10288b4/) | ✅ Audited |
| AlchemistAllocator | operational_periphery | optimism | n/a | 6 deployments: ethereum `0x23a3c27bb007887fd8cbfeaf323799093a450e7e`; ethereum `0x693b7594ae0633d9c5574d0da46a040f92f5b281`; optimism [`0x12114eb8e17800b3b2e777339b9e0c32638e0be0`](./contracts/optimism-10/0x12114eb8e17800b3b2e777339b9e0c32638e0be0/); optimism `0x143c2118417f2df7489ad241023b3be915906865`; arbitrum [`0x12114eb8e17800b3b2e777339b9e0c32638e0be0`](./contracts/arbitrum-42161/0x12114eb8e17800b3b2e777339b9e0c32638e0be0/); arbitrum `0x143c2118417f2df7489ad241023b3be915906865` | ✅ Audited |
| AlchemistCurator | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7d61e3cde8b58c4be192a7a35e9d626c419302a4`](./contracts/ethereum-1/0x7d61e3cde8b58c4be192a7a35e9d626c419302a4/); optimism `0xc8a2bde198d21e9abb0b306b4ad27f0711aef20d`; arbitrum `0xc8a2bde198d21e9abb0b306b4ad27f0711aef20d` | ✅ Audited |
| AlchemistRouter | adapter | optimism | n/a | 6 deployments: ethereum `0x6733aa6b2a622e43e8ff61945e8fbe5f1b6b00fd`; ethereum `0xdb852896a23c7e2519b75aea692cacf834d086ab`; optimism [`0x3c0546587d27354635a4972390a7b96f962d8bbd`](./contracts/optimism-10/0x3c0546587d27354635a4972390a7b96f962d8bbd/); optimism `0xc774f30484818f06a261a89a1d66367e6bbe3e5a`; arbitrum [`0x3c0546587d27354635a4972390a7b96f962d8bbd`](./contracts/arbitrum-42161/0x3c0546587d27354635a4972390a7b96f962d8bbd/); arbitrum `0xc774f30484818f06a261a89a1d66367e6bbe3e5a` | ✅ Audited |
| AlchemistStrategyClassifier | core_logic | optimism | n/a | 3 deployments: ethereum `0xdb7d25b0bfd1585a797f6bf7d7ccba26e77253cc`; optimism [`0x3c28ba0d3f400b29f75b5c79dca0614cf5ce3a70`](./contracts/optimism-10/0x3c28ba0d3f400b29f75b5c79dca0614cf5ce3a70/); arbitrum [`0x3c28ba0d3f400b29f75b5c79dca0614cf5ce3a70`](./contracts/arbitrum-42161/0x3c28ba0d3f400b29f75b5c79dca0614cf5ce3a70/) | ✅ Audited |
| AlchemistTokenVault | core_logic | optimism | n/a | 6 deployments: ethereum `0x5b1c7180c630d3b2b6782df70f43ae5ea80425ba`; ethereum `0x5fe3963cb35ab635bd3a11e4f9730fc07293f9c1`; optimism [`0x0a2dc30e6a74a02cb745e44cc546d9b44eecd857`](./contracts/optimism-10/0x0a2dc30e6a74a02cb745e44cc546d9b44eecd857/); optimism `0x347371c17d14ee7943943995e2a0a9df4fd83d50`; arbitrum [`0x0a2dc30e6a74a02cb745e44cc546d9b44eecd857`](./contracts/arbitrum-42161/0x0a2dc30e6a74a02cb745e44cc546d9b44eecd857/); arbitrum `0x347371c17d14ee7943943995e2a0a9df4fd83d50` | ✅ Audited |
| AlchemistV3 | unknown | ethereum | n/a | 2 deployments: ethereum [`0xeb83112d925268bede86654c13d423a987587e3e`](./contracts/ethereum-1/0xeb83112d925268bede86654c13d423a987587e3e/); ethereum `0xfa995b6abc387376c3e7de5f6d394ab5b6bee26b` | ✅ Audited |
| AlchemistV3 | unknown | optimism | n/a | 6 deployments: ethereum `0x763f5d567403add750e13234db896cfe6b423059`; ethereum `0xf700c7e40efca6f7a810e172afcee3592ff4ad33`; optimism [`0x073598132f37756a7e665fb52f1757463120bd3c`](./contracts/optimism-10/0x073598132f37756a7e665fb52f1757463120bd3c/); optimism `0xeb380d86eed275c9f2ed77745ab1b2ccf364bf7a`; arbitrum [`0x073598132f37756a7e665fb52f1757463120bd3c`](./contracts/arbitrum-42161/0x073598132f37756a7e665fb52f1757463120bd3c/); arbitrum `0xeb380d86eed275c9f2ed77745ab1b2ccf364bf7a` | ✅ Audited |
| AlchemistV3 | unknown | optimism | n/a | 2 deployments: optimism [`0x930750a3510e703535e943e826aba3c364ffc1de`](./contracts/optimism-10/0x930750a3510e703535e943e826aba3c364ffc1de/); optimism `0xded3a04612ff12b57317abe38e68026fc9d28114` | ✅ Audited |
| AlchemistV3Position | unknown | ethereum | n/a | 6 deployments: ethereum [`0x15da4c7db6404b92894d5214fac92057fb8a263d`](./contracts/ethereum-1/0x15da4c7db6404b92894d5214fac92057fb8a263d/); ethereum `0x872a03fabc86b59c883cd9c439e969321b719beb`; optimism `0x763f5d567403add750e13234db896cfe6b423059`; optimism `0xf700c7e40efca6f7a810e172afcee3592ff4ad33`; arbitrum `0x763f5d567403add750e13234db896cfe6b423059`; arbitrum `0xf700c7e40efca6f7a810e172afcee3592ff4ad33` | ✅ Audited |
| AlchemistV3PositionRenderer | unknown | ethereum | n/a | 6 deployments: ethereum [`0x541fb28d158aa33e6db93cd1f713567407c73463`](./contracts/ethereum-1/0x541fb28d158aa33e6db93cd1f713567407c73463/); ethereum `0x5fb5a48e2559af2592ba07def1cdc327ce30f5ff`; optimism `0xeb83112d925268bede86654c13d423a987587e3e`; optimism `0xfa995b6abc387376c3e7de5f6d394ab5b6bee26b`; arbitrum `0xeb83112d925268bede86654c13d423a987587e3e`; arbitrum `0xfa995b6abc387376c3e7de5f6d394ab5b6bee26b` | ✅ Audited |
| Transmuter | unknown | ethereum | n/a | 6 deployments: ethereum [`0x073598132f37756a7e665fb52f1757463120bd3c`](./contracts/ethereum-1/0x073598132f37756a7e665fb52f1757463120bd3c/); ethereum `0x2584e8b0616b3e750492c9629a3b27679c410cb9`; optimism `0x2584e8b0616b3e750492c9629a3b27679c410cb9`; optimism `0x693b7594ae0633d9c5574d0da46a040f92f5b281`; arbitrum `0x2584e8b0616b3e750492c9629a3b27679c410cb9`; arbitrum `0x693b7594ae0633d9c5574d0da46a040f92f5b281` | ✅ Audited |
| Whitelist | unknown | arbitrum | n/a | 10 deployments: optimism `0x36033e1fd88470a5192692e01150c3593847fca5`; optimism `0x56574efc2ae8f9f208442afc8adccc6f7f87e06f`; optimism `0x89926e225a205a5b8c86f2de0be0abe6262c0edb`; optimism `0xf911d825a7554b7658e0601f030cd0c6b8005918`; optimism `0xfa6a5d33e18cb0d52991536ab15750fb13119e45`; arbitrum [`0x2e76a67ee5f134c939c4380c9e2b6bbf93aa668b`](./contracts/arbitrum-42161/0x2e76a67ee5f134c939c4380c9e2b6bbf93aa668b/); arbitrum `0x5e06d74c7de317bf8809f7032eb6a49c71351b80`; arbitrum `0x85e8515d0daae1522bf7341f35a58b36a627ec85`; arbitrum `0x8ab0179abcec6efebbe5d8dcec6682e6a4344fbb`; arbitrum `0xd691f5b477092c164ca4c75a23c3c9589e197f99` | ✅ Audited |

### ⚠️ Verified + Unaudited (112)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FRAXStablecoin | token | ethereum | n/a | [`0x853d955acef822db058eb8505911ed77f175b99e`](./contracts/ethereum-1/0x853d955acef822db058eb8505911ed77f175b99e/) | ⚠️ Unaudited |
| OVMFiatToken | token | optimism | n/a | [`0x7f5c764cbc14f9669b88837ca1490cca17c31607`](./contracts/optimism-10/0x7f5c764cbc14f9669b88837ca1490cca17c31607/) | ⚠️ Unaudited |
| AlToken | token | ethereum | n/a | [`0xbc6da0fe9ad5f3b0d58160288917aa56653660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | ⚠️ Unaudited |
| AlchemixToken | token | ethereum | n/a | [`0xdbdb4d16eda451d0503b854cf79d55697f90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | ⚠️ Unaudited |
| CrossChainCanonicalAlchemicTokenV2 | token | optimism | n/a | 2 deployments: optimism [`0x3e29d3a9316dab217754d13b28646b76607c5f04`](./contracts/optimism-10/0x3e29d3a9316dab217754d13b28646b76607c5f04/); optimism `0xcb8fa9a76b8e203d8c3797bf438d8fb81ea3326a` | ⚠️ Unaudited |
| Pool | core_logic | optimism | n/a | 9 deployments: optimism [`0x124d69daeda338b1b31ffc8e429e39c9a991164e`](./contracts/optimism-10/0x124d69daeda338b1b31ffc8e429e39c9a991164e/); optimism `0x1ad06ca54de04dbe9e2817f4c13ecb406dcbeaf0`; optimism `0x4d7959d17b9710be87e3657e69d946914221bb88`; optimism `0x60be3fb22ddf30c17604b86ec005f6173b1170aa`; optimism `0x67c253eb6c2e69f9e1114aeead0db4fa8f417ac3`; optimism `0xa1055762336f92b4b8d2edc032a0ce45ead6280a`; optimism `0xa5edb0ef932f7c2f37b8fc75cb01948f6258a4f8`; optimism `0xaf03f51de7a0e62bf061f6fc3931cf79166b0a29`; optimism `0xfa09479d72e2b3f8b6df63399772237ad6658d76` | ⚠️ Unaudited |
| VPool | core_logic | ethereum | n/a | 20 deployments: ethereum [`0x0538c8bac84e95a9df8ac10aad17dbe81b9e36ee`](./contracts/ethereum-1/0x0538c8bac84e95a9df8ac10aad17dbe81b9e36ee/); ethereum `0x252c805e999115158174dfc997bf5c1342aadff2`; ethereum `0x2b6c40ef15db0d78d08a7d1b4e12d57e88a3e324`; ethereum `0x35b225880df01cde935db463d0e70a9e737d516e`; ethereum `0x6f8d5fd58f5f825fdbf4f3301c0bdd361653488c`; ethereum `0x8209f3a03730c035163b4414c1545a3137d5b402`; ethereum `0x83a99daff5f84b278d3150a36385fcdf04a0fecf`; ethereum `0x83c608b3997db00b5c6d93746785857cd22d4495`; ethereum `0x8bcdd6a8168d658dfa19721eab7470e43398db25`; ethereum `0x9b91ab47cefc35dbe4ddcc7983ffa1fb40795663`; ethereum `0xa5bc6eb0a7e6738e2f2ac6c92280b32771ac52ad`; ethereum `0xa8b607aa09b6a2e306f93e74c282fb13f6a80452`; ethereum `0xabff8f065318a8cf0de66bd1e90e976381859ef0`; ethereum `0xb4edcefd59750144882170fcc52ffed40bfd5f7d`; ethereum `0xba680a906d8f624a5f11fba54d3c672f09f26e47`; ethereum `0xc14900dfb1aa54e7674e1ecf9ce02b3b35157ba5`; ethereum `0xe4fe646a43daec8323922ca3e4fe782d70805d93`; ethereum `0xebcf77cce55ed6091f82aee3c5539841e4d75f49`; ethereum `0xef4f4604106de23cdadfeae08fcc34602cb475c1`; ethereum `0xff43c327410f960261057ba1da787ed78b42c257` | ⚠️ Unaudited |
| CrossChainCanonicalAlchemicTokenV2 | token | arbitrum | n/a | 3 deployments: arbitrum [`0x17573150d67d820542efb24210371545a4868b03`](./contracts/arbitrum-42161/0x17573150d67d820542efb24210371545a4868b03/); arbitrum `0x37704b70cba0ffd12eb039274ff46992544a1f16`; arbitrum `0xcb8fa9a76b8e203d8c3797bf438d8fb81ea3326a` | ⚠️ Unaudited |
| FPIControllerPool | core_logic | ethereum | n/a | [`0x2397321b301b80a1c0911d6f9ed4b6033d43cf51`](./contracts/ethereum-1/0x2397321b301b80a1c0911d6f9ed4b6033d43cf51/) | ⚠️ Unaudited |
| StakingPools | core_logic | ethereum | n/a | [`0xab8e74017a8cc7c15ffccd726603790d26d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | ⚠️ Unaudited |
| VWBTC | token | ethereum | n/a | [`0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b`](./contracts/ethereum-1/0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b/) | ⚠️ Unaudited |
| Stake_FXS_WETH | token | ethereum | n/a | 3 deployments: ethereum [`0xa29367a3f057f3191b62bd4055845a33411892b6`](./contracts/ethereum-1/0xa29367a3f057f3191b62bd4055845a33411892b6/); ethereum `0xd875628b942f8970de3cceaf6417005f68540d4f`; ethereum `0xda2c338350a0e59ce71cdced9679a3a590dd9bec` | ⚠️ Unaudited |
| BaseRewardPool | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x02e2151d4f351881017abdf2dd2b51150841d5b3`](./contracts/ethereum-1/0x02e2151d4f351881017abdf2dd2b51150841d5b3/); ethereum `0x26598e3e511adfadefd70ab2c3475ff741741104`; ethereum `0x48bc302d8295fea1f8c3e7f57d4ddc9981fee410` | ⚠️ Unaudited |
| WstETHL2Strategy | core_logic | optimism | n/a | [`0xd77e2b3819a55ed0f58d5d6b9cdf7f367b6572f8`](./contracts/optimism-10/0xd77e2b3819a55ed0f58d5d6b9cdf7f367b6572f8/) | ⚠️ Unaudited |
| StaticATokenV3 | token | arbitrum | n/a | 5 deployments: optimism `0x2680b58945a31602e4b6122c965c2849eb76dd3b`; optimism `0x337b4b933d60f40cb57dd19ae834af103f049810`; optimism `0x4186eb285b1efdf372ac5896a08c346c7e373cc4`; optimism `0x43a502d7e947c8a2ebbaf7627e104ddcc253abc6`; arbitrum [`0x248a431116c6f6fcd5fe1097d16d0597e24100f5`](./contracts/arbitrum-42161/0x248a431116c6f6fcd5fe1097d16d0597e24100f5/) | ⚠️ Unaudited |
| ThreePoolAssetManager | core_logic | ethereum | n/a | [`0x9735f7d3ea56b454b24ffd74c58e9bd85cfad31b`](./contracts/ethereum-1/0x9735f7d3ea56b454b24ffd74c58e9bd85cfad31b/) | ⚠️ Unaudited |
| aeWETH | token | arbitrum | n/a | [`0x82af49447d8a07e3bd95bd0d56f35241523fbab1`](./contracts/arbitrum-42161/0x82af49447d8a07e3bd95bd0d56f35241523fbab1/) | ⚠️ Unaudited |
| AlchemistEth | unknown | ethereum | n/a | [`0xf8317bd5f48b6fe608a52b48c856d3367540b73b`](./contracts/ethereum-1/0xf8317bd5f48b6fe608a52b48c856d3367540b73b/) | ⚠️ Unaudited |
| AlchemistV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x062bf725dc4cdf947aa79ca2aaccd4f385b13b5c`](./contracts/ethereum-1/0x062bf725dc4cdf947aa79ca2aaccd4f385b13b5c/); ethereum `0x5c6374a2ac4ebc38dea0fc1f8716e5ea1add94dd` | ⚠️ Unaudited |
| AlchemistV2 | unknown | optimism | n/a | 2 deployments: optimism [`0x10294d57a419c8eb78c648372c5baa27fd1484af`](./contracts/optimism-10/0x10294d57a419c8eb78c648372c5baa27fd1484af/); optimism `0xe04bb5b4de60fa2fba69a93ade13a8b3b569d5b4` | ⚠️ Unaudited |
| AlchemistV2 | unknown | optimism | n/a | 2 deployments: optimism [`0x1bce0aca8b0e4139e4390cf1a7a6eb644000a2f0`](./contracts/optimism-10/0x1bce0aca8b0e4139e4390cf1a7a6eb644000a2f0/); optimism `0x6730545fecd8d5cab50507a6c1e28b181ad75483` | ⚠️ Unaudited |
| AlchemistV2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0dadc9e7b14d329d879cd4980e3db3a9224e01d5`](./contracts/arbitrum-42161/0x0dadc9e7b14d329d879cd4980e3db3a9224e01d5/); arbitrum `0x84672c77ddcba0003e84f13f2b5f168f62b36d1e` | ⚠️ Unaudited |
| AlchemistV2 | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x654e16a0b161b150f5d1c8a5ba6e7a7b7760703a`](./contracts/arbitrum-42161/0x654e16a0b161b150f5d1c8a5ba6e7a7b7760703a/); arbitrum `0x7554616955e2227c1fcec373e53a809cd37d095c`; arbitrum `0xb46ee2e4165f629b4abce04b7eb4237f951ac66f` | ⚠️ Unaudited |
| AlchemistV2 | unknown | arbitrum | n/a | [`0xb3058de74cc9e41367c9466e2ca2e6d4a68e9ff5`](./contracts/arbitrum-42161/0xb3058de74cc9e41367c9466e2ca2e6d4a68e9ff5/) | ⚠️ Unaudited |
| AlchemixConnextGateway | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x83adeafe3077c3e845c0e2e9451c47bdaa2a84a9`](./contracts/arbitrum-42161/0x83adeafe3077c3e845c0e2e9451c47bdaa2a84a9/); arbitrum `0xd031bd586caacd11e846c35d1a61dc543d4ee55d` | ⚠️ Unaudited |
| AlchemixHarvester | operational_periphery | arbitrum | n/a | [`0x9b2ef5617430b13741bc95157a3fa3387a00ab11`](./contracts/arbitrum-42161/0x9b2ef5617430b13741bc95157a3fa3387a00ab11/) | ⚠️ Unaudited |
| ArbitrumRewardCollector | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x34e390d0366234a21332245eda1c145eefebdb8f`](./contracts/arbitrum-42161/0x34e390d0366234a21332245eda1c145eefebdb8f/); arbitrum `0xa05beadfd3a4b37d6f72a83c660cb1366c86e6cf` | ⚠️ Unaudited |
| ATokenGateway | token | arbitrum | n/a | 3 deployments: arbitrum [`0x0bafd3c37fd891bd6c3a99a2c00f34fb6ec66c03`](./contracts/arbitrum-42161/0x0bafd3c37fd891bd6c3a99a2c00f34fb6ec66c03/); arbitrum `0x3e1ccc66c755fdbc7fbf7d667aa843c062daf304`; arbitrum `0xa8a74f44c3eb508564e99a7186a2b314e5d85a80` | ⚠️ Unaudited |
| CommunalFarm_SaddleD4 | unknown | ethereum | n/a | [`0x0639076265e9f88542c91dcdeda65127974a5ca5`](./contracts/ethereum-1/0x0639076265e9f88542c91dcdeda65127974a5ca5/) | ⚠️ Unaudited |
| CrossChainCanonicalGALCX | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x843b66a06a4f00c0703fd2ae2e67c9399f7fad92`](./contracts/arbitrum-42161/0x843b66a06a4f00c0703fd2ae2e67c9399f7fad92/); arbitrum `0x870d36b8ad33919cc57ffe17bb5d3b84f3adee4f` | ⚠️ Unaudited |
| Dai | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6b175474e89094c44da98b954eedeac495271d0f`](./contracts/ethereum-1/0x6b175474e89094c44da98b954eedeac495271d0f/); optimism `0xda10009cbd5d07dd0cecc66161fc93d7c9000da1` | ⚠️ Unaudited |
| ERC20Bridged | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921`](./contracts/arbitrum-42161/0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921/); arbitrum `0x5979d7b546e38e414f7e9822514be443a4800529` | ⚠️ Unaudited |
| ERC20BridgedPermit | operational_periphery | optimism | n/a | [`0x1f32b1c2345538c0c6f582fcb022739c4a194ebb`](./contracts/optimism-10/0x1f32b1c2345538c0c6f582fcb022739c4a194ebb/) | ⚠️ Unaudited |
| ERC4626Strategy | core_logic | arbitrum | n/a | 7 deployments: ethereum `0x8aacc947c2f4e24d2be4cba4498f004079f35d87`; ethereum `0x968234f13e485e6c7ad3469238cc4e6005dd5d23`; ethereum `0xa8ccbf1c81219c3caa7621a51ac6c1f8a57cc9b3`; ethereum `0xdfdc17f784e16d7634ac270911d98755c68ae220`; arbitrum [`0x4bd4faad509c4bc5ba6d68a15c8b1b54a10288b4`](./contracts/arbitrum-42161/0x4bd4faad509c4bc5ba6d68a15c8b1b54a10288b4/); arbitrum `0x5aa8e010912763d28a2019e3f0a89ed194d60de2`; arbitrum `0xaeea02683f652dd1fb4846be71fb8cf26f3393d4` | ⚠️ Unaudited |
| EthAssetManager | governance | ethereum | n/a | [`0xe761bf731a06fe8259fee05897b2687d56933110`](./contracts/ethereum-1/0xe761bf731a06fe8259fee05897b2687d56933110/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | ethereum | n/a | [`0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48`](./contracts/ethereum-1/0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | arbitrum | n/a | [`0xaf88d065e77c8cc2239327c5edb3a432268e5831`](./contracts/arbitrum-42161/0xaf88d065e77c8cc2239327c5edb3a432268e5831/) | ⚠️ Unaudited |
| frxETHMinter | unknown | ethereum | n/a | [`0xbafa44efe7901e04e39dad13167d089c559c1138`](./contracts/ethereum-1/0xbafa44efe7901e04e39dad13167d089c559c1138/) | ⚠️ Unaudited |
| Gauge | operational_periphery | optimism | n/a | 8 deployments: optimism [`0x13baec9c12544066a7918efc3d8b626dbbfe1615`](./contracts/optimism-10/0x13baec9c12544066a7918efc3d8b626dbbfe1615/); optimism `0x6101236fd0e04427952799323d89b99be0eab52f`; optimism `0xa688080ca069231c6d5713cd009662ea54437a02`; optimism `0xa8e0754dd8ef3700ac8478fdb8d4b8473de3817c`; optimism `0xb715d27cce97e869cff840072ce1eab1d982791e`; optimism `0xc16adbf2d01d6524b79cbb610ce31d5db80eee3c`; optimism `0xe8b219c285e4e4ec28ac80fdc4b9739b18cb8890`; optimism `0xfc0b9a9c2b63e6acaca91a77a80bfa83c615e6c5` | ⚠️ Unaudited |
| Gauge | operational_periphery | arbitrum | n/a | 3 deployments: arbitrum [`0x43fbf34df6da5fc66e15e023d3b690fd0de33cd7`](./contracts/arbitrum-42161/0x43fbf34df6da5fc66e15e023d3b690fd0de33cd7/); arbitrum `0x72b6594a0c8d9ee9725ce780f87f9e00615d4b10`; arbitrum `0xc3f26d2fa16129a8d4a5a0f94d25f2cdd9005cdb` | ⚠️ Unaudited |
| GearboxTokenAdapter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x653e76977c275df945a5c7417297d50ebcadd273`](./contracts/arbitrum-42161/0x653e76977c275df945a5c7417297d50ebcadd273/); arbitrum `0xc129bd3fd93ec09237369c70ba5e1c06fc5dacb0` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | optimism | n/a | [`0xb29617209961db995dd30a4ab94ba0034a4284f9`](./contracts/optimism-10/0xb29617209961db995dd30a4ab94ba0034a4284f9/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | arbitrum | n/a | [`0x7e108711771dfdb10743f016d46d75a9379ca043`](./contracts/arbitrum-42161/0x7e108711771dfdb10743f016d46d75a9379ca043/) | ⚠️ Unaudited |
| HarvestResolver | operational_periphery | arbitrum | n/a | [`0xf91597f5b107eb4e2662739499e5937b291d7a6b`](./contracts/arbitrum-42161/0xf91597f5b107eb4e2662739499e5937b291d7a6b/) | ⚠️ Unaudited |
| JonesUSDCAdapter | adapter | arbitrum | n/a | [`0xd2385ba9656b58e8a2928d5eb4de2da3649f314b`](./contracts/arbitrum-42161/0xd2385ba9656b58e8a2928d5eb4de2da3649f314b/) | ⚠️ Unaudited |
| L2ERC20ExtendedTokensBridge | operational_periphery | optimism | n/a | [`0x8e01013243a96601a86eb3153f0d9fa4fbfb6957`](./contracts/optimism-10/0x8e01013243a96601a86eb3153f0d9fa4fbfb6957/) | ⚠️ Unaudited |
| MerkleBox | operational_periphery | ethereum | n/a | [`0xe67516417a934b27cf0c14868f8165b1bc94bf73`](./contracts/ethereum-1/0xe67516417a934b27cf0c14868f8165b1bc94bf73/) | ⚠️ Unaudited |
| MigrationTool | operational_periphery | arbitrum | n/a | 4 deployments: arbitrum [`0x6e94c527e6a1def124ebf5be38c8c876a541bffb`](./contracts/arbitrum-42161/0x6e94c527e6a1def124ebf5be38c8c876a541bffb/); arbitrum `0x81b1d4318c7950cf8f1583c74afe3c8ffa1705e8`; arbitrum `0xb6d30d097773bf2905af086b46d9bd269f76910a`; arbitrum `0xececc1bbd5a239a8502368a4d98bb104a9f146a9` | ⚠️ Unaudited |
| MultiSigWalletWithTimeLock | governance | ethereum | n/a | [`0x8392f6669292fa56123f71949b52d883ae57e225`](./contracts/ethereum-1/0x8392f6669292fa56123f71949b52d883ae57e225/) | ⚠️ Unaudited |
| NextAlchemicToken | token | arbitrum | n/a | 3 deployments: arbitrum [`0x303241e2b3b4aed0bb0f8623e7442368fed8faf3`](./contracts/arbitrum-42161/0x303241e2b3b4aed0bb0f8623e7442368fed8faf3/); arbitrum `0x380cbf190318c0f9d07e6565247b9518227d2302`; arbitrum `0x49000f5e208349d2fa678263418e21365208e498` | ⚠️ Unaudited |
| NextAlchemicTokenV2 | token | arbitrum | n/a | 2 deployments: arbitrum [`0x27b58d226fe8f792730a795764945cf146815aa7`](./contracts/arbitrum-42161/0x27b58d226fe8f792730a795764945cf146815aa7/); arbitrum `0x649020f591288af5cfe73fd8fffd761ae956007e` | ⚠️ Unaudited |
| Pair | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x510a496b2443ba52a3b269fee5a241a4ed4cca58`](./contracts/arbitrum-42161/0x510a496b2443ba52a3b269fee5a241a4ed4cca58/); arbitrum `0xfb4fe921f724f3c7b610a826c827f9f6ecef6886`; arbitrum `0xfd599db360cd9713657c95df66650a427d213010` | ⚠️ Unaudited |
| PoolAccountant | operational_periphery | ethereum | n/a | 21 deployments: ethereum [`0x13c88a2da8e83ba6933fd3aa51e008986b91b1fd`](./contracts/ethereum-1/0x13c88a2da8e83ba6933fd3aa51e008986b91b1fd/); ethereum `0x2337c59180357ce1d771da2b2df56a91e7c442c0`; ethereum `0x4d25e00be9bf9c7f21f6a5dc1f6638ca4d2c5a24`; ethereum `0x4e713d74957c167f2ddbdca46dadd51946c80fe9`; ethereum `0x6f466f8bf346b10d28d13379bba420748daea70f`; ethereum `0x745c1085657035ad04c7f87438c13d525a5bd70d`; ethereum `0x75619e9f479f9415630d21ddc99919da47c0a737`; ethereum `0x7c6226a0a3d6e87bb79a301c74004bd0240e639e`; ethereum `0x7f896dde137fbfc0347854faa02e243ad6f2be93`; ethereum `0x85b6944d2b0a69e781777833b3964a911eec6167`; ethereum `0x88df6adbecdfb7a58cb4c27f59eee1bdf7d113dd`; ethereum `0x8b41b47078dc38be3d1eecf5a3d9b241ebaecda1`; ethereum `0x92d10283e3f1e894b5ea9c69fee98d6848f179ef`; ethereum `0x963a9593c9fb4de39c94452d3de437e8ab1f7074`; ethereum `0xa17f64b7d3222d538ce0bf137199aed373a6088c`; ethereum `0xa34dc8502d6e6c2031834608156a064991825e72`; ethereum `0xa9af8f4202996528d23d913378f92ef932eee400`; ethereum `0xa9e886c5b439143126b49e3c3a4777eb77e33240`; ethereum `0xc0a7eb8b23512ecd0e9f8f51e3fae7cf9530b212`; ethereum `0xe25d8f3f659e2a44602ec91538f9818793fd844f`; ethereum `0xfb7fa759fb93e56e1dcd2f0cd7098369c624eb44` | ⚠️ Unaudited |
| PoolBridge | operational_periphery | ethereum | n/a | [`0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | ⚠️ Unaudited |
| PoolRewards | core_logic | ethereum | n/a | [`0x479a8666ad530af3054209db74f3c74ecd295f8d`](./contracts/ethereum-1/0x479a8666ad530af3054209db74f3c74ecd295f8d/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | n/a | 5 deployments: ethereum [`0x20c572cbd7c3e40b580af22582398b6580d124cf`](./contracts/ethereum-1/0x20c572cbd7c3e40b580af22582398b6580d124cf/); ethereum `0xe0fc5cb7665041cda26969a2d1ceb5cd5046347d`; optimism `0xd4bd68da9bf9112cf2137d500c37bd9b842eae85`; arbitrum `0x80c715df236aa4fe89938b8976d1d45453e0ff86`; arbitrum `0xa44f69aeac480e23c0abfa9a55d99c9f098beac6` | ⚠️ Unaudited |
| Redeemer | unknown | ethereum | n/a | [`0x7915ce4f43e1378f0c3720351a973a023f7fb3e8`](./contracts/ethereum-1/0x7915ce4f43e1378f0c3720351a973a023f7fb3e8/) | ⚠️ Unaudited |
| RocketTokenRETH | token | ethereum | n/a | [`0xae78736cd615f374d3085123a210448e74fc6393`](./contracts/ethereum-1/0xae78736cd615f374d3085123a210448e74fc6393/) | ⚠️ Unaudited |
| SDLController | governance | ethereum | n/a | 2 deployments: ethereum [`0x6a1883833e86a7110a59be817cae9742bc3050d1`](./contracts/ethereum-1/0x6a1883833e86a7110a59be817cae9742bc3050d1/); ethereum `0x851abef4d67e8bb4ee2f90e5de5e880f6235d028` | ⚠️ Unaudited |
| SDTController | governance | ethereum | n/a | [`0x3216d2a52f0094aa860ca090bc5c335de36e6273`](./contracts/ethereum-1/0x3216d2a52f0094aa860ca090bc5c335de36e6273/) | ⚠️ Unaudited |
| SDTController | governance | ethereum | n/a | 2 deployments: ethereum [`0x91bf16baf46ed1a7bd10d0d1e121c241b5c1a08c`](./contracts/ethereum-1/0x91bf16baf46ed1a7bd10d0d1e121c241b5c1a08c/); ethereum `0xbcd7fbc030dbafabd03434b56f661a457613699a` | ⚠️ Unaudited |
| sfrxETH | unknown | ethereum | n/a | [`0xac3e018457b222d93114458476f3e3416abbe38f`](./contracts/ethereum-1/0xac3e018457b222d93114458476f3e3416abbe38f/) | ⚠️ Unaudited |
| StakingRewardsMultiGauge_StakeDAO | operational_periphery | ethereum | n/a | [`0xeb81b86248d3c2b618ccb071adb122109da96da2`](./contracts/ethereum-1/0xeb81b86248d3c2b618ccb071adb122109da96da2/) | ⚠️ Unaudited |
| StaticAToken | token | ethereum | n/a | 5 deployments: ethereum [`0x318334a6dd21d16a8442ab0b7204e81aa3fb416e`](./contracts/ethereum-1/0x318334a6dd21d16a8442ab0b7204e81aa3fb416e/); ethereum `0x61134511187a9a2df38d10dbe07ba2e8e5563967`; ethereum `0xbc11de1f20e83f0a6889b8c7a7868e722694e315`; ethereum `0xce4a49d7ed99c7c8746b713ee2f0c9aa631688d8`; ethereum `0xf591d878608e2e5c7d4f1e499330f4ab9bbae37a` | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xdac17f958d2ee523a2206206994597c13d831ec7`](./contracts/ethereum-1/0xdac17f958d2ee523a2206206994597c13d831ec7/) | ⚠️ Unaudited |
| TimeToken | token | ethereum | n/a | [`0x869d1b8610c038a6c4f37bd757135d4c29ae8917`](./contracts/ethereum-1/0x869d1b8610c038a6c4f37bd757135d4c29ae8917/) | ⚠️ Unaudited |
| TokeAutoStrategy | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x4610815e65901e66237ef07493a06cbac783c188`](./contracts/ethereum-1/0x4610815e65901e66237ef07493a06cbac783c188/); ethereum `0x467ec89b9e2cd62e66d1b28bd45db1470d4908a5` | ⚠️ Unaudited |
| TransmuterB | unknown | ethereum | n/a | [`0xee69bd81bd056339368c97c4b2837b4dc4b796e7`](./contracts/ethereum-1/0xee69bd81bd056339368c97c4b2837b4dc4b796e7/) | ⚠️ Unaudited |
| TransmuterBuffer | unknown | ethereum | n/a | 3 deployments: ethereum [`0x0fba3630ddf56457d3ffc2864f260fbe73167f42`](./contracts/ethereum-1/0x0fba3630ddf56457d3ffc2864f260fbe73167f42/); ethereum `0x1eed2dbeb9fc23ab483f447f38f289ca15f79bac`; ethereum `0xbc2fb245594a68c927c930fbe2d00680a8c90b9e` | ⚠️ Unaudited |
| TransmuterBuffer | unknown | optimism | n/a | 6 deployments: optimism [`0x143a08f0c2c1820eff9d0e749683396c7bb7a4e7`](./contracts/optimism-10/0x143a08f0c2c1820eff9d0e749683396c7bb7a4e7/); optimism `0x36e8d12227f8c8ef38bb3aeabf816681b5440be5`; optimism `0x719fe4734faa5d589f356a8f46e5522e6dbe5e03`; optimism `0x7f50923ee8e2bc3596a63998495baf2948a28f68`; optimism `0x971c2d9ca059a19447bbe59f372aa21eb70e2d6d`; optimism `0xe99a9a717c60f9639b235ede422c27d60fbeb3b9` | ⚠️ Unaudited |
| TransmuterBuffer | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x00e33722ba54545667e76a18ce9d544130eeabcc`](./contracts/arbitrum-42161/0x00e33722ba54545667e76a18ce9d544130eeabcc/); arbitrum `0x752ca40117180129410b5e3529aedeb6efa22e2b`; arbitrum `0xecad08ee07f1aa87f3e080997eba6d02d28bb9d2` | ⚠️ Unaudited |
| TransmuterEth | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8d513e6552aae771cabd6b2bf8875a8a2e38f19f`](./contracts/ethereum-1/0x8d513e6552aae771cabd6b2bf8875a8a2e38f19f/); ethereum `0x9fd9946e526357b35d95bcb4b388614be4cfd4ac` | ⚠️ Unaudited |
| TransmuterV2 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x03323143a5f0d0679026c2a9fb6b0391e4d64811`](./contracts/ethereum-1/0x03323143a5f0d0679026c2a9fb6b0391e4d64811/); ethereum `0x49930ad9ebbbc0eb120ccf1a318c3ae5bb24df55`; ethereum `0xa840c73a004026710471f727252a9a2800a5197f`; ethereum `0xfc30820ba6d045b95d13a5b8df4fb0e6b5bdf5b9` | ⚠️ Unaudited |
| TransmuterV2 | unknown | ethereum | n/a | [`0xe107fa35d775c77924926c0292a9ec1fc14262b2`](./contracts/ethereum-1/0xe107fa35d775c77924926c0292a9ec1fc14262b2/) | ⚠️ Unaudited |
| TransmuterV2 | unknown | optimism | n/a | 4 deployments: optimism [`0x4e7d2115e4feecd802c96e77b8e03d98104415fa`](./contracts/optimism-10/0x4e7d2115e4feecd802c96e77b8e03d98104415fa/); optimism `0xa7ea9ef9e2b5e15971040230f5d6b75c68aab723`; optimism `0xb7c4250f83289ff3ea9f21f01aad0b02fb19491a`; optimism `0xfcd619923456e20eae298b35e3606277b391bbb4` | ⚠️ Unaudited |
| TransmuterV2 | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x1b03612cf7881b8bc16def13c94d0097adca4d19`](./contracts/arbitrum-42161/0x1b03612cf7881b8bc16def13c94d0097adca4d19/); arbitrum `0x1eb7d78d7f6d73e5de67fa62fd8b55c54aa9c0d4`; arbitrum `0x2a8b5f365fb29c3e1a40a5cd14ad7f89050755ed`; arbitrum `0xd6a5577c2f6200591fe077e45861b24aeeb408e9`; arbitrum `0xe7ec71b894583e9c1b07873fa86a7e81f3940ea8` | ⚠️ Unaudited |
| TransmuterV2 | unknown | arbitrum | n/a | [`0x21cfa80d878104890b327038c44d8dfab278ddff`](./contracts/arbitrum-42161/0x21cfa80d878104890b327038c44d8dfab278ddff/) | ⚠️ Unaudited |
| TransmuterV2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x7037d479180cb9514af4ed6f77b8390b1f3e6007`](./contracts/arbitrum-42161/0x7037d479180cb9514af4ed6f77b8390b1f3e6007/); arbitrum `0xb0a2db2b8bd8ba1d6748951474c25394528739dd` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0d994b40c63e0e8ea485010aee1d472ea19d2f37`](./contracts/ethereum-1/0x0d994b40c63e0e8ea485010aee1d472ea19d2f37/); ethereum `0x1435f228a6601e60db22bc21d7e9239017908653` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | n/a | 5 deployments: ethereum [`0x210a3a20bfe11f4200918134aae34d753d4e1766`](./contracts/ethereum-1/0x210a3a20bfe11f4200918134aae34d753d4e1766/); ethereum `0x407bdc8f42f616823109fedb21c85cfb4def2764`; ethereum `0x6fb0fe574c04abaed21ebc1fd39fee19c4d1f72c`; ethereum `0x7d0038ca6f121c7bfa8c58af8e34d33104040834`; ethereum `0xe4503ed2ad546ed72d81861dd3a305842a402333` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0x25bc1f9ee1f029aa776994fff25b6460fe9aa14e`](./contracts/ethereum-1/0x25bc1f9ee1f029aa776994fff25b6460fe9aa14e/); ethereum `0x51c1a7ab22b6482852d85311ac2076013f9e6142`; ethereum `0x77394f217b491c4e8056923155f48d1188c81eec` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb7c4250f83289ff3ea9f21f01aad0b02fb19491a`](./contracts/ethereum-1/0xb7c4250f83289ff3ea9f21f01aad0b02fb19491a/); ethereum `0xcad336723c356844dd213121b377813a20561780` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | n/a | 2 deployments: arbitrum [`0x43cd4c711100ba68589d83d1a7d7c552cd9b24ba`](./contracts/arbitrum-42161/0x43cd4c711100ba68589d83d1a7d7c552cd9b24ba/); arbitrum `0xa5b00dbb58e2286f239057dd8e240c6bfc37f771` | ⚠️ Unaudited |
| USDT | token | optimism | n/a | [`0x94b008aa00579c1307b0ef2c499ad98a8ce58e58`](./contracts/optimism-10/0x94b008aa00579c1307b0ef2c499ad98a8ce58e58/) | ⚠️ Unaudited |
| VaultV2Factory | registry | optimism | n/a | 3 deployments: ethereum `0xdd56b00302e91c4c2b8246156bdeaa1cedc58984`; optimism [`0x8c7c0c380ba4ee38461eb5a6b82e5d930ec11ca2`](./contracts/optimism-10/0x8c7c0c380ba4ee38461eb5a6b82e5d930ec11ca2/); arbitrum [`0x8c7c0c380ba4ee38461eb5a6b82e5d930ec11ca2`](./contracts/arbitrum-42161/0x8c7c0c380ba4ee38461eb5a6b82e5d930ec11ca2/) | ⚠️ Unaudited |
| veFPISYieldDistributorV5 | operational_periphery | ethereum | n/a | [`0xe6d31c144ba99af564be7e81261f7bd951b802f6`](./contracts/ethereum-1/0xe6d31c144ba99af564be7e81261f7bd951b802f6/) | ⚠️ Unaudited |
| veFXSYieldDistributor | operational_periphery | ethereum | n/a | [`0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0`](./contracts/ethereum-1/0x19a0a70a68fbc604bf20a03b787df8f7ac1d50f0/) | ⚠️ Unaudited |
| veFXSYieldDistributorV3 | operational_periphery | ethereum | n/a | [`0xed2647bbf875b2936aaf95a3f5bbc82819e3d3fe`](./contracts/ethereum-1/0xed2647bbf875b2936aaf95a3f5bbc82819e3d3fe/) | ⚠️ Unaudited |
| veFXSYieldDistributorV4 | operational_periphery | ethereum | n/a | [`0xc6764e58b36e26b08fd1d2aed4538c02171fa872`](./contracts/ethereum-1/0xc6764e58b36e26b08fd1d2aed4538c02171fa872/) | ⚠️ Unaudited |
| VETH | unknown | ethereum | n/a | [`0x103cc17c2b1586e5cd9bad308690bcd0bbe54d5e`](./contracts/ethereum-1/0x103cc17c2b1586e5cd9bad308690bcd0bbe54d5e/) | ⚠️ Unaudited |
| VETH | unknown | ethereum | n/a | [`0xd1c117319b3595fbc39b471ab1fd485629eb05f2`](./contracts/ethereum-1/0xd1c117319b3595fbc39b471ab1fd485629eb05f2/) | ⚠️ Unaudited |
| VirtualDollar | unknown | ethereum | n/a | [`0xb791a875ea4836a9ec16cdcf4f747c0b9ca47c7d`](./contracts/ethereum-1/0xb791a875ea4836a9ec16cdcf4f747c0b9ca47c7d/) | ⚠️ Unaudited |
| VLINK | unknown | ethereum | n/a | [`0x0a27e910aee974d05000e05eab8a4b8ebd93d40c`](./contracts/ethereum-1/0x0a27e910aee974d05000e05eab8a4b8ebd93d40c/) | ⚠️ Unaudited |
| VSP | unknown | ethereum | n/a | [`0x1b40183efb4dd766f11bda7a7c3ad8982e998421`](./contracts/ethereum-1/0x1b40183efb4dd766f11bda7a7c3ad8982e998421/) | ⚠️ Unaudited |
| VUSD | unknown | ethereum | n/a | [`0x677ddbd918637e5f2c79e164d402454de7da8619`](./contracts/ethereum-1/0x677ddbd918637e5f2c79e164d402454de7da8619/) | ⚠️ Unaudited |
| VUSDC | unknown | ethereum | n/a | [`0x0c49066c0808ee8c673553b7cbd99bcc9abf113d`](./contracts/ethereum-1/0x0c49066c0808ee8c673553b7cbd99bcc9abf113d/) | ⚠️ Unaudited |
| VVSP | unknown | ethereum | n/a | [`0xba4cfe5741b357fa371b506e5db0774abfecf8fc`](./contracts/ethereum-1/0xba4cfe5741b357fa371b506e5db0774abfecf8fc/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 7 deployments: ethereum [`0x3669c421b77340b2979d1a00a792cc2ee0fce737`](./contracts/ethereum-1/0x3669c421b77340b2979d1a00a792cc2ee0fce737/); ethereum `0x707f9118e33a9b8998bea41dd0d46f38bb963fc8`; ethereum `0x7da96a3891add058ada2e826306d812c638d87a7`; ethereum `0xa258c4606ca8206d8aa700ce2143d7db854d168c`; ethereum `0xa354f35829ae975e850e23e9615b11da1b3dc4de`; ethereum `0xc8418af6358ffdda74e09ca9cc3fe03ca6adc5b0`; ethereum `0xda816459f1ab5631232fe5e97a05bbbb94970c95` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0xa2f987a546d4cd1c607ee8141276876c26b72bdf`](./contracts/ethereum-1/0xa2f987a546d4cd1c607ee8141276876c26b72bdf/) | ⚠️ Unaudited |
| WETH9 | token | optimism | n/a | 2 deployments: ethereum `0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2`; optimism [`0x4200000000000000000000000000000000000006`](./contracts/optimism-10/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WETHGateway | token | arbitrum | n/a | 3 deployments: optimism `0xdb3fe4da32c2a79654d98e5a41b22173a0af3933`; arbitrum [`0x39299e7153c28faf4420ca4126f0d834874e5453`](./contracts/arbitrum-42161/0x39299e7153c28faf4420ca4126f0d834874e5453/); arbitrum `0x7c679d851688072e23fe41d1753004eb11e98d8c` | ⚠️ Unaudited |
| WithdrawalVault | operational_periphery | ethereum | n/a | [`0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f`](./contracts/ethereum-1/0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f/) | ⚠️ Unaudited |
| WormholeUnwrapperAdapter | proxy | arbitrum | n/a | 2 deployments: arbitrum [`0x077b17dce83d1e7e1847b470b138336dc2efc826`](./contracts/arbitrum-42161/0x077b17dce83d1e7e1847b470b138336dc2efc826/); arbitrum `0x1944eba354f92641778380e0bd2f2dadb213f262` | ⚠️ Unaudited |
| WormholeUnwrapperAdapter | proxy | arbitrum | n/a | 2 deployments: arbitrum [`0x0e52af83ddd0dd8014c5fa7a0f14d971663fabd6`](./contracts/arbitrum-42161/0x0e52af83ddd0dd8014c5fa7a0f14d971663fabd6/); arbitrum `0x0e9a173de3dd19adad4489640e89fbfe229d0d21` | ⚠️ Unaudited |
| WormholeUnwrapperAdapter | proxy | arbitrum | n/a | 2 deployments: arbitrum [`0x7a6c69be3626bada6e7e64033d1d9bf2163ebac6`](./contracts/arbitrum-42161/0x7a6c69be3626bada6e7e64033d1d9bf2163ebac6/); arbitrum `0x9964aa9cec85ec687e90de5e566d61544a3d5e7c` | ⚠️ Unaudited |
| WstETH | token | ethereum | n/a | [`0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0`](./contracts/ethereum-1/0x7f39c581f595b53c5cb19bd0b3f8da6c935e2ca0/) | ⚠️ Unaudited |
| WstETHAdapterArbitrum | adapter | arbitrum | n/a | 5 deployments: arbitrum [`0x10124e56948759a4b571ad08d25f01e4b5cd00d6`](./contracts/arbitrum-42161/0x10124e56948759a4b571ad08d25f01e4b5cd00d6/); arbitrum `0x41bf483f062e0bf938531f36d1169894c9d6a7ab`; arbitrum `0xa03162cfc317b92da5eaa96c68955fcec4e19c4a`; arbitrum `0xa68fa3521f40b423755787059fb718261d01c4f7`; arbitrum `0xa8c4da98ce8e86638e412da43b72544699a51698` | ⚠️ Unaudited |
| YearnStakingToken | token | optimism | n/a | 3 deployments: optimism [`0x059eaa296b18e0d954632c8242ddb4a271175eed`](./contracts/optimism-10/0x059eaa296b18e0d954632c8242ddb4a271175eed/); optimism `0x0a86adbf58424ee2e304b395af0697e850730ecd`; optimism `0xe62dda84e579e6a37296bcfc74c97349d2c59ce3` | ⚠️ Unaudited |
| YearnVaultAdapter | adapter | ethereum | n/a | [`0xb039ea6153c827e59b620bdcd974f7bbfe68214a`](./contracts/ethereum-1/0xb039ea6153c827e59b620bdcd974f7bbfe68214a/) | ⚠️ Unaudited |
| YearnVaultAdapterEth | adapter | ethereum | n/a | [`0x546e6711032ec744a7708d4b7b283a210a85b3bc`](./contracts/ethereum-1/0x546e6711032ec744a7708d4b7b283a210a85b3bc/) | ⚠️ Unaudited |
| YearnVaultAdapterWithIndirection | adapter | ethereum | n/a | [`0x6fe02be0ec79dcf582cbdb936d7037d2eb17f661`](./contracts/ethereum-1/0x6fe02be0ec79dcf582cbdb936d7037d2eb17f661/) | ⚠️ Unaudited |
| YearnVaultAdapterWithIndirectionEth | adapter | ethereum | n/a | [`0x6d75657771256c7a8cb4d475fdf5047b70160132`](./contracts/ethereum-1/0x6d75657771256c7a8cb4d475fdf5047b70160132/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (357)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x00160baf84b3d2014837cc12e838ea399f8b8478` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x011881efbdbb250702f9d7ca2a74788b26ca7128` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0304a365c0fbb4b1ad423887861b9b69a5f0c00e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0363a32d18c25a3fd19a0d00b02106c03d8b8182` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x042565d8c21f82a936031816f390fff3d2760213` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x057a481461a29c4c4b3c53774daa6afaf5f981df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x05b143213bc0bb7e6bb5a9afd9ca10df3cc8b4b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0648e517670d71ba46d7a27ba04677db7c7957cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0827f18a1fad688c5c720fc27ef0cc00d6dad19a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x084d7a56238be3eea8b4494c4ea17c04227440ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0879f1821e0b41913ba6fdbd691a11675ce89542` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x097ee00f42f9d7512929a6434185ae94ac6dafd7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a46a9716b4632a57863d52123c5c10fdf9e10f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0bb35d6cee977c7c9c6b8ccac8b547a38ee4a666` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c712fa5ba0dc3fc46cabef2d373c4f9f5e29ce3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c7a619132580c650affec611d39c346756d8e47` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d296e798ebd455a1db0fb032c916b5fc43704c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d858d6d96a8b40414ec54b3019aaee431cb754f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e2ba4df2ab32fcc0a6975093e040568b37faf49` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0e2ddfc22afed1ac0476685fb81cc237434d3db4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0f41928a645c7df0c34b998ce9249c1f417d508b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10dea9d254b8d1012021062517cb725826d6d3bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11e21cf12af6a2188fc37265b6a02dac27cc80ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x133ecd2cdeb031fcb3651fb7f78a52c812882d8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13aecc59a88a65f02e053eece29d743a952d6f1e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13b8447c3399bb44375dfc014edea906799b26ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x140ecd31020d8d78d9a109f4d48b53e5682656df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16cdfeced40a98818587c007204bee1d0c055659` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x175a7815393d4f2e71ba37f53afdf96278df18ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17845ea6a9bfd2caf1b9e558948bb4999df2656e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x17eff816ef9646481c8bac6a50b3c9a67f4d417b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x187c51c9803424efe1cbe62cffc0d99b6912c0f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x19a02f3512bdf78114b3c50f7d22a34b1b2798ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1a3a83d1a9a667c61df54b109ed88da58022f12b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b01514a2b3cdef16fd3c680a818a0ab97da8a09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b0b9991df27a4f2847478127d51fb29883882f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c282ef2a23cf5c40daf482785b0188ce3a3eaad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1cd0f3bd73d60d56b487073a0cab2e8a9085cf08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e86044468b92c310800d4b350e0f83387a7097f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1ea632b997b7c7068ac48ade8040652a8af9fbbb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1fe9e028329080b22073713a985768a7c90039c7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x223809e09ec28c28219769c3ff05c790c213152c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x228cdf26fdc1c648590895a0e81f2b9e76b1b3d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x230f8f273e46d33361b326335cc52749080f7602` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23140f76bcb844bc6256401dc01fb4816794db99` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x233ada5dd2941ad71ad40e059878660ffa958319` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x23c901667706116b4a7c87b4a2efe7185b849175` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24002395b2f8023b5dbce8494e7af29e4ec66df4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24e927dac110aab7189a4f864d41680e4f7865fb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27723dea17309edb527c2dd85ca5734648a3b2d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a135a956f2b14556a193a13fb80640e861f8d55` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a1b6fb23ccf9dc89859778cd8d240cbd0bc94f4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c361913e2da663e1898162ec01497c46eb87abf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c37fb628b35dfdfd515d41b0caae11b542773c3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2cd0b4d107dfef073b37d9145c87343ba26bb10b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ce898ba66493baf78103ddc0bb92fde33fc718f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2dd1b4d4548accea497050619965f91f78b3b532` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f59b0f98a08e733c66dfb42bd8e366dc2cfeda6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31b8556e0fc94c0776ad30a356306470155e938c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31d9b05d89ac6b621b42a616696df9d1de8ee863` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31fc48bebd46d132c39461211cf5edf7300867d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x323e340705fa8403880c0103c9d12ce8dfecc995` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32fd3bad726d607ef1a5c3f2a9024292fa0c2fcf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x334fa95235ff746ad8f7cd93c9dd4021d14cabd7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x339b20136282a9de3a6fc448b5ba9534116b3b08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3405e88af759992937b84e58f2fe691ef0eea320` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x354fc66caf2e3cd2c062a94819cffcc8ff10e189` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x36f9e78aa9012ff2df8923074de3fa52075efdcb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37b54ff46256b0e9246c9fcfa02616b24b60bb8d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x39450c358b499caec553d15d6588cc186dc4de19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a7644067584151e5861848c4942b9a15ed16653` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b5180a3a9a80680e69ff1a29d8fdfb595dbbe6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e281c4289b69573f0bd01ab51c18a4f8144046f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e89f1a781e2776bbecd101164b8d98c914b447d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f46812e5b11a1b88b7b757b3caff965e458f380` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x400509d00888c46903cf01495bb2eeafd24f0f80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40971a53fa57b3d26bf0c98075f81955de78b61f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41f4e1fdafecc84c13488d6dbc1c623ffff73eac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x421efd53fa0d90687db5ef370d5dcd7f89cbd9de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4279cc1ace3c89eea54fa49df11ee46e34c01106` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43ef34f296afe23b654bda084de43ccbec34f841` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x443d61f3e9f33422b4583632b37047bdb1f0f4e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45208671983fbac8d0b8cbdc1f360d91ab3d03dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45aba68af23de6de7dc8963e97e4f6f68de5e94e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45ccd3131e3dd9438296f5c6eb93cfc52f4293d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x463c835f2959c52f99d65b5e712f3806c7e6a46f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x469c9fb59ebc19e141927c0308d98f2a9c400d2f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46a279f57149d2c5f9549a3ad3371f1bf7402921` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46ca850b60e1ffb1a813970a559b05f97e43b6c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x479dfa0612ea457235cdeefcdea4e3ff072778ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x487f4fe98c383f71d0059811ee458658a19e9211` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a29f469760aea3b751e1da6e9673bda3eb64545` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a4a54e2f8bcafdbe426f4c45ec9f9e64f411101` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a539836db582ded710b3dd974ae017ddbbd5486` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a7ce5db8fa84e7aff6ad6e234c6c6b515951d5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b8a425d305128b93cec3f7dbe13f93dcbd807fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4bc1a26ec4ab5948b950a64479a4046701370599` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4bc77ce73de82138d7a1c6444a861b0689ff5ef7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d71a07106f1b632c1286281860a73dbaee5d674` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4da20a6ebf1e2740aedb432471bedd91a7bbcf29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4e7300f74f59afaeccdc0d434758df9be238f0bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f193be75cdce0a28aae09b9761b3bd46f67a7a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x52581ecaaa4dde745baa65a4d1d653053c74f4bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x525fd19d7e9b5191c27ec61b0b59c150c1fd9e2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53d885224789adbb56dc93071a878bac7fb80fab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56ee98121d65162500ff7705f540426c962e581b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59417c1b2085e086f1eeb1af0f40ee1dfd9c097f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59543a595b69897b295f12964d3c7c37b3ad29c0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59928b4b25da3633718b6df4ea0655850899c88c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a6aad61ca0e3d45457628f82d493101a85f6314` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d72a9f081990219c97af877e0e79eadaeafca80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f5a656981ee80f4abafaa0c7d4f3bd869c4c9a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5fe5deef0718ba4098b1662f33d33ec7dea45489` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x603d9bb3a14d4289f622a35e40d05f0e24e05209` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x612fd30e2d7dd963a1513cbf781eb5dfe8a55fb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6140201607cab79fa83a699a735352a98198fa93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61bf33417e7fba8e9d8b024efd437e274056599b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62514f46a2c55aae92a56cd6f90510dbabe18438` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6349e8dda81c2e997130bc99827284355e82aa83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x636a02323121b31e9a4956cac41eff697ef54409` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64a76d3e194bf36c28b0974a5dedde41ca3619b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65084519aed2c3883e435b0e8e279777eaf789e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x651e0916ef10885406eb5ec98f5768f2f578c87d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x656636a157f29ba5008f398fa83a350f1be1db6f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67218f66a84809201cfba5c8b46dbd3ab95a42da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x672e5873d99e16081d4c5f1c1668cbbc7620c881` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6846470150e5273c61f16c5ffb94fff5fed259df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x68e031e6c68786cc25f0941a2f37e21bbccbb4cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x693c78ca4c7b061eadf65ab3e6c12448af2b6cfb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6b9eb0be25cc03fc5a7e8b3c78fbd73f7a65e679` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6c2b3d52262a049831e8055482631f6bfea54300` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cb3b9de2b68f97181773119aaa9cee9fa727fff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6cf8b89103a83b9d739c33e3d91348ec4cbcee2a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6d7746336def5dd009cee7cef9a0331495e64153` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70900c53202297bd7cd4ed1635486d84e3982484` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x715ae7db6b175d9cdf71e04aa36a2ceac57d88c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72a7cb4d5dab8e9ba23f30dbe8e72bc854a9945a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x72dcf9ba5f5e124b393a659f1629def439ff1b56` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7465e30ed5487d62a158625cf38ae0e9a5ea733b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74cc5bc20b0c396df5680ee4aeb6169a6288a8af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75c1e2b049cac5571d366bb40adee21c751ffddd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x762ff5490e6f4836fed3399207094c46b720380d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x777a7850251b7a301cfa1e7b1d8a9c4a9c49cf85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77898fac78b6931107c2ee00f0dab51cb0cb91f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7927fc2b76e719ccbaaf7a15bb157762001816f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a75d934ecd0dffae11592e7e6955c8186273b1c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b07296561d0ea40dd6ffc5c19a934796a829eef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7b2db76723b38838a336a4a50f4fdfff904484ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7bceae57c71c71a65faa29353fbeb512ba5864d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c148217c7f99504abeb4582334c9189e5f11397` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d1e43f34dbab8468bf617bacb00b0b561eee6be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7e198a1934fffff394e942d5bdc44c43dd5c5dd7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f0088f5a7b8d29936c1119a6446ea90f69d5c0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7f50923ee8e2bc3596a63998495baf2948a28f68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x804cd69439608985439fbb559d1b5109907bc7ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x804f330f9f55623a50befdf4a18812a532c82ea3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80f1c4f5cd94d49e98d0a975690796f1e8c0379e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x813e891e2bb6729bef4185663624bd09f4902bd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x817310ea934efa42c69f5b6dd714ff39b57371a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82bb186e32f5a06bf3343b6e7ca800f180f670f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x842547883b2caad101f897e6789f63d33b06030e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x853f81a2e3801ddc4d8074fe9fafd341336a89d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85c7862e4fb6593bc4ce40c77dff908f1c547a46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x861db15d8f414e48f3f3a40234de0edc0471a0d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x881259cc403701b4d88e3c2ef3c0abd502ba0257` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a36f26fd4b94392cc967037ddbd6af5a2f6fbb7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ad5b311a7d9111bcc3e92811cd23dce9ba62e0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b3ac0f18eae871b83b9212345e736735e6604d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b3c8626cbfaa71d44bd76c1304214f4858e3639` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b57bca35e775d3e12162aa4947b8f588f5dd0e8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8b609c2502202cbd828b9dd2e13a9df23214b9d9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c2d8bffc6363198baae1bab7d747961188ec6f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c657a734ed527d9b05b5d9e61d3f09684c48770` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d0b8e2b5584ce1487317f81da7d97397ef3e899` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8eacba80bee37ed291b084752375c49cd489590b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x92574ed22c0b3961e240dba1eba02f6f30fd066c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93567318aabd27e21c52f766d2844fc6de9dc738` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94c7c51a3ff556b46fc697da0be0dc811e334e7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95c0b30c6276e67ae95127af458573a63113bdff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x968d6024e32d30a7334ffc5373ccd97a3d199e94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x980e7693fdbba39ba75a9be85cda6c336ec8e697` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9852c6cbc226f328db41ff27dfffb42e408d86dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9abaea579d4e9a80f3e78d743d0880dc0a5aecf7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9aec1836e6ceb31728ef40bf2301ce5fca833715` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b11078f5e8345d074498a83c4f9824942f796d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b59f7fc312c7fa1e29ff65abaf0a343ce037f5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b6ca96d2ea9f3011d3e78baf0d12fe27636eaf5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9da8653de16c80a333670e4ba35a112574d5a26b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f29f00d0253d7497f562256d3f42593939eae57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa163dc188e14c3b3c8f3fba6f4351ea5147ad9ac` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3b031cf383949deaca691f292d0fe9c7f29c772` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4f1671d3aee73c05b552d57f2d16d3cfcbd0217` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa609820289b0e976b43583b292f21b883563e20e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa63f56985f9c7f3bc9ffc5685535649e0c1a55f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7205492c0a35a1ebbaabe25956391012da0bfaa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7ea9ef9e2b5e15971040230f5d6b75c68aab723` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa89566489e932a2d334b9eff7884feb21a07d2b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa929510d07bfcb796c181ff3764c5168675b2cbb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa92f21cf2923cd634922d193fc8eeaf05cbefb65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa938b8dc2b55a119b3618287c95427f9998caff0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa95ccfaf088a3c3a9181915a0af3fb182055bd4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabc64889601f01e7b26277ef8756250d6abf8c18` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabfe397ec97712247fd5e4e43da34f305680a6cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad680b77a8d0bb66e6a0000028168ab147f440b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad947c580f8d9ed576222e172573d491774a5e68` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae0c899799cf1f1374b4881a9442966cc5f57c2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaff40fc748bb27ceffed88c0e9fd39027ff1a736` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0582ccad2e265924e3e75539a84717449396d66` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb075ab368e84e8652452eb2cc91965c7e3893a7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb0ea1d2c08e59148b6e77feca95d4f20b966769d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1c0d6efd3bab0fc3ca648a12c15d0827e3bcde5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb1c4e5a15544f005166880749c46d35a00916462` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb2205b87e81c91539ff510bd6e1ddbcc19bfa8c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb436d8a2e3e23af57040b2da8e01463c818e0999` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb440a60d3afc6b9c213072aecfe8f3f7fddbefff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4e7cc74e004f95aee7565a97dbfdea9c1761b24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5e99961a014af5943a7bd9a645ef7aebbb218e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb76ec44427c1f970ee8ee8c03229823257a641f9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7bdd251e62a034b2a606f23f0e9d60aacab52fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7cec2ecac026dbd2b7c6705fd2967f59c6d27bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb8208c3192d75cf8c8463e5abee802556dc8906d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb92d607dc7ddaaa6a3a213cd0a01c9dd4ce569e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbc390a652ea16b836a98107478e2aa4e3768dff6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd7ae7a3792be08a7c0f482070308760ea64db39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbdb0fb4b0e2f2aead3aff40821d46433735d93ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbe33791f85f3ccfd6c5aa6f8fd5540f14d3574ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc0497c072d3015fd7d45893157bcdcc1bcfeb6b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1fe9a02fd9caa37dc3704297afa0d8501d17749` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc3a483bb5f96bc4e6104325aa1a229a8e29166b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc40eceea583e95f9433f831c4e4283334d48112d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc48ea9a2daa4d816e4c9333d6689c70070010174` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4c81b22bf87fa833b350ee55de6a85007043018` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5bdbad3fb77f8cf95f2888fb78d3ccecc8e5a04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5c0d3e20df4ca855281b4b5bcf3bef8d8068c75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5cdf8cbe886fc5c1ef5cd4fdd599c975ec6bb54` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6e5505d7c501d51e9d69669b1c393079fc426d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7e98cf7a5e55a4c5a9f1f6cc23291d4205fd6c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc88a0a80fa38a828bc697b92a8cb4ea50a93c4b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9a679a1ed5650889340f782ccb3c43ecaf03a46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca0c34a3f35520b9490c1d58b35a19ab64014d80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca9aeeb14ff396f8661f7df3128f88c31d2fdec5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc9be1b4ae3c9d20e8dfe6cc041e196150ac0605` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd6bf2b8da112ab77c42fc96abf4218dcb71fd35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xce0ae51dea9fcbf44dc076638d2decd028e19659` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd01062212c30475ffddfb86bf63932727cb1de7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd11e6772a430c45c7b64927069af37fa9ab3be75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd1738eb733a636d1b8665f48bc8a24da889c2562` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3111a14e8df0df749cf881ae414037d732d8d28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd36aa46c07cc83939a33b1bdc88aed37c233f3cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd5579a994194c142846abafa5919fbad0ae32aa2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd57a13a291991010fd0e9bf1deab6abd5331fc75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd59996055b5e0d154f2851a030e207e0df0343b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd773ca264b5363f25f7f96319076753849af168b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd819955515976cd952f37bba4aa5a2fdeeee9268` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd837f05690bf517ea3f1d6d81cb3af90e6a93838` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd87b3b807757b42dbcdd81ef2dbc16e7c025b421` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9a5df2877a42460e9055c4134946668dfcf51f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9e153f629a55992f5fc699442e50e386e3336b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda5e6d9c7103abfa8866cc96bb75a7ab15368b2d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda92f9beeb3aeee9ac0c7f8a67ccb03f0742cf04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc1046dbb73e7be8c0b2b72a4987522d425bc93c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc55f696ff5f54034eabc99f7995ee50b44d4efa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd36620d7b94e001c3bed7ff51320c2df31117b4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0222df54d27ecd3a9930f249446f10a4c4a1e16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0ac0fd176aae7f9f44063b53860ba0dc7b8fa16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe1d66c1cc284d54c34a01bcfbe1287cdeaa16be6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2751fd3fa863be8bf924296edb4386618acb121` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe30521fe7f3beb6ad556887b50739d6c7ca667e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe3b3fe7bca19ca77ad877a5bebab186becfad906` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe4e3da7d4ed8d936f3224f0ffd7e29dde3f39a29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe6cffe0182a39c3683d6eda9a850fcf02a76ff12` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe82cec55c0ad923195a523a6953a0dad432e7a9f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe93428487e1febd3046850eefbe0f5c8bc657b33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe94046b46d2b58599a09d91fc5cc00ca3e1dfd1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe9b31c682dce211aebb03db321103975015d395f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea6c376d019119230b69f5aa9d59507b9b564791` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xebedfd259c9fb1f5c0ab9a9f24e79f8d80e29b23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec5a0f4be5eb54f229e078fefdda0f2ebc512a3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec8c448e025ef3819957b90a29c75ba00d6f0505` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecc32e3a073afac838c0d1c02ebfebda8fd46641` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecc4bed07750eab7ce1ba634326db046877524df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecf139cf1a5d902b191818f182b48f0301ca0bd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedac7076b8928a2ea3c9421bb859105cce35adfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeed0e5aace8cee7c5fedfcb858bcb2082e1b94ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef5d81caf50a54f9185e5b1ef2036193f8f7a53a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef8737ec1180ddad26438e4675bcfe9773a0e8c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef9a768880b4996cddb8c24a26f4b00d6e8ed35e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1d4eb7183ba624a4a198376560df0de20d99941` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf336f4620c20416d9def439ee98bbf8557623b01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf350c6b7fbe5f6cb53c7d638dfba9173a5722236` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4431badbe7bcd2a7b2342451088da7c27963e90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4bb5824f3e5b6314e1c0a8be60c733b3db53786` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf502d127f38da7f2c875be78ede6b6b0434602ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5a66196306855821159e41f4ddbb71ae5663825` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf6aa8d4f13feaf94a5f558c07d75580b3c9ccc9e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8051d7d3551f834308b49f4a547c2c403bf4217` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf858a354ad255d21e17c56f8f2b10ed67dfb40ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8ea0ee6818c6cf798a1b208139f6b56563f6067` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8ffaae4fc8c1b8d9680a4498b87f5b9dd4f70bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf95fb643c7b26afe64a6daf7e2b84d9eda6559bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9c786e0e3cb4fa330fd6d2a4b110d18a6b69c08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf9fbc8021bd0f849c393aa0e3d5e304eb5cc064c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa3552dc90e41241112eac7b7c984a301ca666f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb0df6fc8c06e1d71fad8bf293176b8c1194561a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfbcb0f967817c924f83e26e04f0fb28ed4d6276f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd61f9c0796d917466e3ab5f2a40984fc15794b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe711be66def585c90671b6eb767a3979cdfe007` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xff97999a82bbee3f2a2fabf0b1f96ce472bb0532` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x10cf9d194c37b735cdc1b84bb1c3b78b94586a69` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1dc389dd3a824cf48433dbadf719262348589f8d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x23b96add54c479c6784dd504670b5376b808f4c7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x318334a6dd21d16a8442ab0b7204e81aa3fb416e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x393dd19c7da959df0747f77696f88dac77a5f204` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x41125d4cbe5fa0c9581cbee3fc8ff23207471602` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4183c9c22d1ce5f3be9818e97e779e2897f688f7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x485af43f7ed4257777a25cab7ea3c4fa6baa68bf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4b4968a27f0490494ec15def4245942f45790d85` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x65d288d10aedae45f8fa98776bdfd7a67e7a2157` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6caeefdbc76f8bd2d303bc9fe2e5c08b47414018` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7f71951283acde80548a45ebe74276ddefaac91e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x843b66a06a4f00c0703fd2ae2e67c9399f7fad92` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x870d36b8ad33919cc57ffe17bb5d3b84f3adee4f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x8ba1e9a1ab110e52e0d57ccb013f18140916925a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x92834c37df982a13bb0f8c3f6608e26f0546538e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9d4c27802238c96270bd3913e5dbbadba92715e1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa44f69aeac480e23c0abfa9a55d99c9f098beac6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xaf7ad0527d3b612445fd57b77d42aaf86ac472de` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb0269e3016beec7bf08b5b664ad9e2d306316fa8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xcd87ba0b93a060500c6ea6c79653c7b9e31f6cb6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd24c4c7cada12cb99812f2c3750b80ae7c06e382` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfb6c56123e4c4b07a8d1cc9a808b003058235a51` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 8 deployments: fantom `0x04068da6c83afcfa0e13ba15a6696662335d5b75`; fantom `0x049d68029688eabf473097a2fc38ef61633a3c7a`; fantom `0x148c05caf1bb09b5670f00d511718f733c54bc4c`; fantom `0x5a07d36d1f543960ee7806d35827e995539fe5cf`; fantom `0x637ec617c86d24e421328e6caea1d92114892439`; fantom `0x76b2e3c5a183970aaad2a48cf6ae79e3e16d3a0e`; fantom `0x8d11ec38a3eb5e956b052f67da8bdc9bef8abf3e`; fantom `0xef0210eb96c7eb36af8ed1c20306462764935607` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xdbdb4d16eda451d0503b854cf79d55697f90c8df` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x082b50bec5e85d82b52264da7ad24187a235dbc4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0e17934b9735d479b2388347faef0f4e58b9cc06` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x108464c5126a4a115aefb880462517166c20d840` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x17995bf88de3250034c8e3571b7ab6c19b98d163` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1d2be809ee3a0eeacb02d3d234b3ed479e1c4962` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x27423e4a9fd2e5860a1b87395503ca115f231ab6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ff2913f21b50ac9c0c15b1e55cdbf2d6daa38c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x718660da0e4333e2f33d9d56a4e002d6263ab333` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7918da5e12b026e0ce2f17ca3a3701b52552e43e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x853334f15610eb2f3aaa3bb00e973bc36c13bc0b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x868f8e796f9d4795e609bc70245c4764c6567e20` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8b36dcd67a80eaa035736f031b753bf6776d7915` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x930750a3510e703535e943e826aba3c364ffc1de` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaffd7f3826c890a13e87325e211669a3eeb27d28` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd05a086e1f37fe0983f6487e1de8c8c91041a2a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd65ebf4abe882a5c305cab19de5b2d5249ef1bf1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd9168e3752f19fb28afeabc816e9aa9877f4da56` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdc8eb117a9987cf2ed45e9082adc13c03922fa0a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xded3a04612ff12b57317abe38e68026fc9d28114` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfa5cef53a855c47ff8bae910d9567f7a33b86293` | ❓ Unverified |
| WormholeBridgeAdapter | operational_periphery | arbitrum | n/a | `0x07a4d78f8185354e58edccf01cc0f6766abd44df` | ❓ Unverified |
| WormholeBridgeAdapter | operational_periphery | arbitrum | n/a | `0x19bede3d7addf500ec6777384dd48a5715836c85` | ❓ Unverified |
| WormholeBridgeAdapter | operational_periphery | arbitrum | n/a | `0x35306886c9c579dbcd7ab5feb03330345589bd74` | ❓ Unverified |
| WormholeBridgeAdapter | operational_periphery | arbitrum | n/a | `0xf4a40b967bde2fd443b825a8ea502717e22fc856` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hackmd.io/@geistermeister/SkSZiU9ybe](https://hackmd.io/@geistermeister/SkSZiU9ybe) | Spearbit | Audit | n/a | unknown | Direct | contract_name | 4 | n/a |
| [cantina.xyz/portfolio/f638950d-a8ad-4df8-a6ec-8b067e416d7b](https://cantina.xyz/portfolio/f638950d-a8ad-4df8-a6ec-8b067e416d7b) | Spearbit | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [v3-nethermind.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-nethermind.pdf) | unknown | Audit | 2026-02 | fresh | Direct | contract_name | 2 | n/a |
| [v3-strategies-yaudit-followup.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-strategies-yaudit-followup.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | contract_name | 1 | n/a |
| [v3-strategies-yaudit.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-strategies-yaudit.pdf) | yAudit | Audit | 2026-04 | fresh | Direct | contract_name | 2 | n/a |
| [v3-yearn.pdf](https://github.com/alchemix-finance/alchemix-v3-docs/blob/main/static/audits/v3-yearn.pdf) | unknown | Audit | 2026-03 | fresh | Direct | contract_name | 12 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xbc6da0fe9ad5f3b0d58160288917aa56653660e9`](./contracts/ethereum-1/0xbc6da0fe9ad5f3b0d58160288917aa56653660e9/) | AlToken | token | $10,261,435.42 | Verified native implementation with $10,261,435.42 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdbdb4d16eda451d0503b854cf79d55697f90c8df`](./contracts/ethereum-1/0xdbdb4d16eda451d0503b854cf79d55697f90c8df/) | AlchemixToken | token | $6,906,906.57 | Verified native implementation with $6,906,906.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab8e74017a8cc7c15ffccd726603790d26d7deca`](./contracts/ethereum-1/0xab8e74017a8cc7c15ffccd726603790d26d7deca/) | StakingPools | core_logic | $375,569.94 | Verified native implementation with $375,569.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b`](./contracts/ethereum-1/0x4b2e76ebbc9f2923d83f5fbde695d8733db1a17b/) | VWBTC | token | $266,839.04 | Verified native implementation with $266,839.04 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9735f7d3ea56b454b24ffd74c58e9bd85cfad31b`](./contracts/ethereum-1/0x9735f7d3ea56b454b24ffd74c58e9bd85cfad31b/) | ThreePoolAssetManager | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf8317bd5f48b6fe608a52b48c856d3367540b73b`](./contracts/ethereum-1/0xf8317bd5f48b6fe608a52b48c856d3367540b73b/) | AlchemistEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb3058de74cc9e41367c9466e2ca2e6d4a68e9ff5`](./contracts/arbitrum-42161/0xb3058de74cc9e41367c9466e2ca2e6d4a68e9ff5/) | AlchemistV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x83adeafe3077c3e845c0e2e9451c47bdaa2a84a9`](./contracts/arbitrum-42161/0x83adeafe3077c3e845c0e2e9451c47bdaa2a84a9/) | AlchemixConnextGateway | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9b2ef5617430b13741bc95157a3fa3387a00ab11`](./contracts/arbitrum-42161/0x9b2ef5617430b13741bc95157a3fa3387a00ab11/) | AlchemixHarvester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x34e390d0366234a21332245eda1c145eefebdb8f`](./contracts/arbitrum-42161/0x34e390d0366234a21332245eda1c145eefebdb8f/) | ArbitrumRewardCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0bafd3c37fd891bd6c3a99a2c00f34fb6ec66c03`](./contracts/arbitrum-42161/0x0bafd3c37fd891bd6c3a99a2c00f34fb6ec66c03/) | ATokenGateway | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x843b66a06a4f00c0703fd2ae2e67c9399f7fad92`](./contracts/arbitrum-42161/0x843b66a06a4f00c0703fd2ae2e67c9399f7fad92/) | CrossChainCanonicalGALCX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921`](./contracts/arbitrum-42161/0x0fbcbaea96ce0cf7ee00a8c19c3ab6f5dc8e1921/) | ERC20Bridged | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4bd4faad509c4bc5ba6d68a15c8b1b54a10288b4`](./contracts/arbitrum-42161/0x4bd4faad509c4bc5ba6d68a15c8b1b54a10288b4/) | ERC4626Strategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe761bf731a06fe8259fee05897b2687d56933110`](./contracts/ethereum-1/0xe761bf731a06fe8259fee05897b2687d56933110/) | EthAssetManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf91597f5b107eb4e2662739499e5937b291d7a6b`](./contracts/arbitrum-42161/0xf91597f5b107eb4e2662739499e5937b291d7a6b/) | HarvestResolver | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe67516417a934b27cf0c14868f8165b1bc94bf73`](./contracts/ethereum-1/0xe67516417a934b27cf0c14868f8165b1bc94bf73/) | MerkleBox | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x6e94c527e6a1def124ebf5be38c8c876a541bffb`](./contracts/arbitrum-42161/0x6e94c527e6a1def124ebf5be38c8c876a541bffb/) | MigrationTool | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8392f6669292fa56123f71949b52d883ae57e225`](./contracts/ethereum-1/0x8392f6669292fa56123f71949b52d883ae57e225/) | MultiSigWalletWithTimeLock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8`](./contracts/ethereum-1/0xe66db0f190a0697f5d162cab5e65a4d3241cdcb8/) | PoolBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x479a8666ad530af3054209db74f3c74ecd295f8d`](./contracts/ethereum-1/0x479a8666ad530af3054209db74f3c74ecd295f8d/) | PoolRewards | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7915ce4f43e1378f0c3720351a973a023f7fb3e8`](./contracts/ethereum-1/0x7915ce4f43e1378f0c3720351a973a023f7fb3e8/) | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a1883833e86a7110a59be817cae9742bc3050d1`](./contracts/ethereum-1/0x6a1883833e86a7110a59be817cae9742bc3050d1/) | SDLController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x91bf16baf46ed1a7bd10d0d1e121c241b5c1a08c`](./contracts/ethereum-1/0x91bf16baf46ed1a7bd10d0d1e121c241b5c1a08c/) | SDTController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xeb81b86248d3c2b618ccb071adb122109da96da2`](./contracts/ethereum-1/0xeb81b86248d3c2b618ccb071adb122109da96da2/) | StakingRewardsMultiGauge_StakeDAO | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xee69bd81bd056339368c97c4b2837b4dc4b796e7`](./contracts/ethereum-1/0xee69bd81bd056339368c97c4b2837b4dc4b796e7/) | TransmuterB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fba3630ddf56457d3ffc2864f260fbe73167f42`](./contracts/ethereum-1/0x0fba3630ddf56457d3ffc2864f260fbe73167f42/) | TransmuterBuffer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8d513e6552aae771cabd6b2bf8875a8a2e38f19f`](./contracts/ethereum-1/0x8d513e6552aae771cabd6b2bf8875a8a2e38f19f/) | TransmuterEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1b03612cf7881b8bc16def13c94d0097adca4d19`](./contracts/arbitrum-42161/0x1b03612cf7881b8bc16def13c94d0097adca4d19/) | TransmuterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x21cfa80d878104890b327038c44d8dfab278ddff`](./contracts/arbitrum-42161/0x21cfa80d878104890b327038c44d8dfab278ddff/) | TransmuterV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25bc1f9ee1f029aa776994fff25b6460fe9aa14e`](./contracts/ethereum-1/0x25bc1f9ee1f029aa776994fff25b6460fe9aa14e/) | TransparentUpgradeableProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8c7c0c380ba4ee38461eb5a6b82e5d930ec11ca2`](./contracts/optimism-10/0x8c7c0c380ba4ee38461eb5a6b82e5d930ec11ca2/) | VaultV2Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xed2647bbf875b2936aaf95a3f5bbc82819e3d3fe`](./contracts/ethereum-1/0xed2647bbf875b2936aaf95a3f5bbc82819e3d3fe/) | veFXSYieldDistributorV3 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc6764e58b36e26b08fd1d2aed4538c02171fa872`](./contracts/ethereum-1/0xc6764e58b36e26b08fd1d2aed4538c02171fa872/) | veFXSYieldDistributorV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x103cc17c2b1586e5cd9bad308690bcd0bbe54d5e`](./contracts/ethereum-1/0x103cc17c2b1586e5cd9bad308690bcd0bbe54d5e/) | VETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb791a875ea4836a9ec16cdcf4f747c0b9ca47c7d`](./contracts/ethereum-1/0xb791a875ea4836a9ec16cdcf4f747c0b9ca47c7d/) | VirtualDollar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a27e910aee974d05000e05eab8a4b8ebd93d40c`](./contracts/ethereum-1/0x0a27e910aee974d05000e05eab8a4b8ebd93d40c/) | VLINK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x677ddbd918637e5f2c79e164d402454de7da8619`](./contracts/ethereum-1/0x677ddbd918637e5f2c79e164d402454de7da8619/) | VUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c49066c0808ee8c673553b7cbd99bcc9abf113d`](./contracts/ethereum-1/0x0c49066c0808ee8c673553b7cbd99bcc9abf113d/) | VUSDC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f`](./contracts/ethereum-1/0xb9d7934878b5fb9610b3fe8a5e441e8fad7e293f/) | WithdrawalVault | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x10124e56948759a4b571ad08d25f01e4b5cd00d6`](./contracts/arbitrum-42161/0x10124e56948759a4b571ad08d25f01e4b5cd00d6/) | WstETHAdapterArbitrum | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 82 |
| upstream | 23 |
| standard_library | 25 |
| needs_review | 353 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=21

Zero-match audit list:

- [4307] cantina.xyz/portfolio/f638950d-a8ad-4df8-a6ec-8b067e416d7b

Fork inheritance lineage and inherited audits are included when available.
