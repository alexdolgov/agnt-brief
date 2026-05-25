# Agentic Audit Brief: KEEP Network

⚠️ Lifecycle status: DEAD - TVL dropped 1.4% over 90 days

## Project Overview

- Project: KEEP Network (`keep-network`)
- Website: [https://app.threshold.network/](https://app.threshold.network/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-25T14:57:28.069Z
- Pipeline run: v2-pipeline-2026-05-25-eff36e-79e6
- Chains: arbitrum, base, ethereum, optimism, polygon
- Contract surface: 354 unique implementations (1396 raw deployments)
- DeFi Llama TVL: $1,509,044.14
- On-chain TVL (included contracts): $27,022,767.94
- TVL by chain: Ethereum $27,022,767.94

## Project Description

KEEP Network is a decentralized protocol that enables cross-chain Bitcoin bridging and staking. It provides infrastructure for minting tBTC, a Bitcoin-backed ERC-20 token, and supports staking mechanisms for network security and rewards.

### Architecture

The tBTC L1 contracts serve as the hub for Bitcoin bridging, with L2 families (Arbitrum, Base) and Starknet using Wormhole gateways and depositor/redeemer contracts to extend tBTC minting and redemption cross-chain. The KEEP Network family provides legacy staking and token infrastructure that underpins the security model, while Threshold Contracts represent the governance token layer.

## Audit Coverage Summary

- Verified implementations audited: 36/227 (15.9%)
- Verified + Unaudited implementations: 190
- Verified by bytecode match: 1
- Unverified implementations: 127
- Unique implementations: 354
- Raw deployments: 1396
- Audits discovered: 18
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): $26,174,318.09
- Latest audit: 2025-11 (fresh)
- Staleness: 6 fresh, 1 aging, 11 stale, 0 unknown
- Tier 1 coverage: 8.4% (ChainSecurity, ConsenSys Diligence)
- Note: This protocol is classified as [dead]. ASD of $26,174,318.09 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Consensys Diligence | Tier 1 | 18 | 7.9% | 2020-03 |
| Least Authority | Tier 2 | 16 | 7.0% | 2023-08 |
| ChainSecurity | Tier 1 | 4 | 1.8% | 2021-11 |
| Thesis Defense | Tier 2 | 3 | 1.3% | 2024-04 |
| CertiK | Tier 2 | 2 | 0.9% | 2021-11 |
| LeastAuthority | Tier 2 | 1 | 0.4% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (36)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TokenGrant | token | ethereum | [`0x175989...ff88b7`](./contracts/ethereum-1/0x175989c71fd023d580c65f5dc214002687ff88b7/) | ✅ Audited |
| TokenStaking | token | ethereum | 11 deployments: ethereum [`0x01b67b...765dd7`](./contracts/ethereum-1/0x01b67b1194c75264d06f808a921228a95c765dd7/); ethereum `0x409bf7...4933de`; ethereum `0x44ffe6...eee2e6`; ethereum `0x4d333b...1e0888`; ethereum `0x57e1a8...1e009d`; ethereum `0x5a444d...7d71fb`; ethereum `0x6d1140...c67600`; ethereum `0x9f84fd...43ceda`; ethereum `0xa90e35...18c260`; ethereum `0xf5a2cc...7cbb65`; ethereum `0xf6c544...98259e` | ✅ Audited |
| Bank | unknown | ethereum | [`0x65fbae...9d9fc6`](./contracts/ethereum-1/0x65fbae61ad2c8836ffbfb502a0da41b0789d9fc6/) | ✅ Audited |
| BeaconAuthorization | registry | ethereum | [`0x632c2d...6e83e8`](./contracts/ethereum-1/0x632c2d58ad870fbd4569da0a4e82ddf4b56e83e8/) | ✅ Audited |
| BLS | unknown | ethereum | [`0x655205...e020cd`](./contracts/ethereum-1/0x6552059b6efc6aa4ae3ea45f28ed4d92ace020cd/) | ✅ Audited |
| BondedECDSAKeep | unknown | ethereum | [`0xa9e838...22c105`](./contracts/ethereum-1/0xa9e838fcb9295fa44d89d06ed59811ae1a22c105/) | ✅ Audited |
| BondedECDSAKeepFactory | registry | ethereum | 2 deployments: ethereum [`0x6a7cd8...35c5d7`](./contracts/ethereum-1/0x6a7cd8e1384d49f502b4a4ce9ac9eb320835c5d7/); ethereum `0xa7d9e8...2e40bd` | ✅ Audited |
| Bridge | operational_periphery | ethereum | 18 deployments: ethereum [`0x13de6b...2402cc`](./contracts/ethereum-1/0x13de6b121ade8e3c0dc016d63cbd5e2ab22402cc/); ethereum `0x265054...2e2ec5`; ethereum `0x3a4a69...322c1b`; ethereum `0x51768b...5786cc`; ethereum `0x524db6...4a20c2`; ethereum `0x57e19e...ddf266`; ethereum `0x5e4861...0e8e7b`; ethereum `0x7d43c9...601677`; ethereum `0x84e08e...c638e6`; ethereum `0x8ce200...ad1ce7`; ethereum `0x8d0149...293234`; ethereum `0x9e44d4...630339`; ethereum `0xa4996d...a21a26`; ethereum `0xb0e9a7...0c9d96`; ethereum `0xd07298...201751`; ethereum `0xd0b1b7...63bd24`; ethereum `0xe845f4...3d6162`; ethereum `0xe88f95...6091cf` | ✅ Audited |
| Deposit | unknown | ethereum | 7 deployments: ethereum [`0x1ac184...c04dc5`](./contracts/ethereum-1/0x1ac1841a47054e070236f1664991e52c30c04dc5/); ethereum `0x9c6ada...768739`; ethereum `0xcd2ebd...ccd137`; ethereum `0xcffdcb...a96342`; ethereum `0xe56836...84fc4b`; ethereum `0xe83bcc...79fe02`; ethereum `0xf526f0...d09011` | ✅ Audited |
| DepositFactory | registry | ethereum | [`0x87effe...0faf8b`](./contracts/ethereum-1/0x87effef56c7ff13e2463b5d4dce81be2340faf8b/) | ✅ Audited |
| DepositFunding | unknown | ethereum | [`0x62d128...ccd125`](./contracts/ethereum-1/0x62d1286683507939c065c12f2d1e80cca8ccd125/) | ✅ Audited |
| DepositLiquidation | unknown | ethereum | [`0x1ca506...081a56`](./contracts/ethereum-1/0x1ca5060bf142c58168aedb974aabb020bc081a56/) | ✅ Audited |
| DepositRedemption | unknown | ethereum | [`0x817c0f...372323`](./contracts/ethereum-1/0x817c0f6332392ad65d7688ed22f59b227e372323/) | ✅ Audited |
| DepositUtils | unknown | ethereum | [`0x2ad83d...212517`](./contracts/ethereum-1/0x2ad83decf0555945094e5d25129c1f324f212517/) | ✅ Audited |
| DonationVault | core_logic | ethereum | [`0xa544b7...50e672`](./contracts/ethereum-1/0xa544b70dc6af906862f68eb8e68c27bb7150e672/) | ✅ Audited |
| EcdsaDkgValidator | unknown | ethereum | [`0x0125c8...d4ef27`](./contracts/ethereum-1/0x0125c8977a02b2fa3970b1ed9af02f5bedd4ef27/) | ✅ Audited |
| FeeRebateToken | token | ethereum | [`0xaf3fff...f94789`](./contracts/ethereum-1/0xaf3fff06b75f99352d8c2a3c4bef1339a2f94789/) | ✅ Audited |
| Fraud | unknown | ethereum | 2 deployments: ethereum [`0x51bbef...ba3559`](./contracts/ethereum-1/0x51bbef1c7cc3a1d3bc5e64ce6c3ba6e66fba3559/); ethereum `0xd040de...9de71c` | ✅ Audited |
| GrantStaking | unknown | ethereum | 2 deployments: ethereum [`0x02612d...8a3db3`](./contracts/ethereum-1/0x02612d20cc087670a959bb12ca3c5fd56c8a3db3/); ethereum `0x1293a5...a15458` | ✅ Audited |
| KeepRandomBeaconOperator | registry | ethereum | [`0xdf7084...fcf9de`](./contracts/ethereum-1/0xdf708431162ba247ddae362d2c919e0fbafcf9de/) | ✅ Audited |
| KeepRandomBeaconServiceImplV1 | registry | ethereum | 3 deployments: ethereum [`0x099597...599eab`](./contracts/ethereum-1/0x09959798b95d00a3183d20fac298e4594e599eab/); ethereum `0x292c9f...67ae28`; ethereum `0x50510e...94aafd` | ✅ Audited |
| L1BitcoinDepositor | unknown | ethereum | 6 deployments: ethereum [`0x1fe738...e47dd7`](./contracts/ethereum-1/0x1fe7385497a45191c5321fdd903d880491e47dd7/); ethereum `0x3ffee7...ad69f8`; ethereum `0x59fae6...b50106`; ethereum `0x8e261d...56a99c`; ethereum `0xf46241...9c4a59`; ethereum `0xff79fc...a64db1` | ✅ Audited |
| L2BitcoinDepositor | unknown | arbitrum | 7 deployments: base `0x203438...2ef4ea`; base `0xa2a81d...8c512e`; base `0xda04b0...8c3d4a`; base `0xdebd9a...540bd5`; arbitrum [`0x1c8d7b...258f9e`](./contracts/arbitrum-42161/0x1c8d7b744b474c080faadd5bf9ad965be4258f9e/); arbitrum `0x75a6e4...2c619a`; arbitrum `0xff79fc...a64db1` | ✅ Audited |
| MaintainerProxy | unknown | ethereum | 2 deployments: ethereum [`0x535e01...40140f`](./contracts/ethereum-1/0x535e01f948458e0b64f9db2a01da6f32e240140f/); ethereum `0xcf29ff...a8df2b` | ✅ Audited |
| MovingFunds | unknown | ethereum | 3 deployments: ethereum [`0x310667...d42123`](./contracts/ethereum-1/0x3106675ede4a64d70131247466fd8704a3d42123/); ethereum `0x3e0407...b67a90`; ethereum `0xb85711...4ca432` | ✅ Audited |
| Redemption | unknown | ethereum | 7 deployments: ethereum [`0x1b0534...d7e29d`](./contracts/ethereum-1/0x1b0534bc3f43b11ebde71f0fc68cf61df4d7e29d/); ethereum `0x1d1385...56e9a4`; ethereum `0x713f58...dceb35`; ethereum `0x7d807e...a25914`; ethereum `0x8ef1be...ac9f5e`; ethereum `0xa7fed1...2f5d0d`; ethereum `0xfa4fc5...47a1ff` | ✅ Audited |
| SortitionPool | core_logic | ethereum | 2 deployments: ethereum [`0x4e4cba...ecbcf6`](./contracts/ethereum-1/0x4e4cba3779d56386ed43631b4dcd6d8eacecbcf6/); ethereum `0xc2731f...5bb4dc` | ✅ Audited |
| T | unknown | ethereum | [`0xcdf702...94bee5`](./contracts/ethereum-1/0xcdf7028ceab81fa0c6971208e83fa7872994bee5/) | ✅ Audited |
| TBTC | unknown | ethereum | [`0x18084f...d93a88`](./contracts/ethereum-1/0x18084fba666a33d37592fa2633fd49a74dd93a88/) | ✅ Audited |
| TBTCDepositToken | token | ethereum | [`0x10b66b...37cdf0`](./contracts/ethereum-1/0x10b66bd1e3b5a936b7f8dbc5976004311037cdf0/) | ✅ Audited |
| TBTCSystem | unknown | ethereum | [`0xe20a5c...1ab64a`](./contracts/ethereum-1/0xe20a5c79b39bc8c363f0f49adcfa82c2a01ab64a/) | ✅ Audited |
| TBTCVault | core_logic | ethereum | 2 deployments: ethereum [`0x52818e...277fd4`](./contracts/ethereum-1/0x52818e501612d3c5b37b5f9b83b024342c277fd4/); ethereum `0x9c0700...4fe3cd` | ✅ Audited |
| VendingMachine | unknown | ethereum | 4 deployments: ethereum [`0x1cca7e...47680e`](./contracts/ethereum-1/0x1cca7e410ee41739792ea0a24e00349dd247680e/); ethereum `0x526c08...05d2ac`; ethereum `0x6590df...e6d85f`; ethereum `0xe47c80...d16bb0` | ✅ Audited |
| WalletRegistry | registry | ethereum | 4 deployments: ethereum [`0x08d7e8...65c832`](./contracts/ethereum-1/0x08d7e8ce124921caafd7670502379ced0065c832/); ethereum `0x420c99...a1ac6e`; ethereum `0x46d52e...5204eb`; ethereum `0xfbae13...0398fb` | ✅ Audited |
| WalletRegistryGovernance | registry | ethereum | [`0x6aed6c...d47fe8`](./contracts/ethereum-1/0x6aed6cc30d1b2770771052555d257da86ed47fe8/) | ✅ Audited |
| Wallets | unknown | ethereum | 2 deployments: ethereum [`0xc67913...ba47bf`](./contracts/ethereum-1/0xc67913137429985416dbce28d9fa9ec960ba47bf/); ethereum `0xc989d3...e32fbc` | ✅ Audited |

### ⚠️ Verified + Unaudited (190)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| KeepToken | token | ethereum | [`0x85eee3...09afec`](./contracts/ethereum-1/0x85eee30c52b0b379b046fb0f85f4f3dc3009afec/) | ⚠️ Unaudited |
| ArcxTokenV2 | token | ethereum | [`0x1321f1...9bb288`](./contracts/ethereum-1/0x1321f1f1aa541a56c31682c57b80ecfccd9bb288/) | ⚠️ Unaudited |
| bVault | core_logic | ethereum | 6 deployments: ethereum [`0x2c2327...568ea6`](./contracts/ethereum-1/0x2c23276107b45e64c8c59482f4a24f4f2e568ea6/); ethereum `0x378388...a35153`; ethereum `0x3fb6b0...15a2cc`; ethereum `0x750d30...7996d0`; ethereum `0x801690...85dc0e`; ethereum `0x8d9a39...ec6108` | ⚠️ Unaudited |
| BACDAIPool | core_logic | ethereum | [`0xebd126...02bde8`](./contracts/ethereum-1/0xebd12620e29dc6c452db7b96e1f190f3ee02bde8/) | ⚠️ Unaudited |
| BACUSDCPool | core_logic | ethereum | [`0x518821...429fd4`](./contracts/ethereum-1/0x51882184b7f9beed6db9c617846140da1d429fd4/) | ⚠️ Unaudited |
| BACUSDTPool | core_logic | ethereum | [`0x2833bd...877e44`](./contracts/ethereum-1/0x2833bdc5b31269d356bdf92d0fd8f3674e877e44/) | ⚠️ Unaudited |
| StakingAccrualERC20V5 | token | ethereum | [`0x9bffad...fd7d9d`](./contracts/ethereum-1/0x9bffad7a6d5f52dbc51cae33e419793c72fd7d9d/) | ⚠️ Unaudited |
| AssetPool | core_logic | ethereum | 2 deployments: ethereum [`0x21b86f...d28d5d`](./contracts/ethereum-1/0x21b86fdc93f23fd52022a283828df8e808d28d5d/); ethereum `0x2ada2d...dfdbf2` | ⚠️ Unaudited |
| TokenPool | core_logic | ethereum | 2 deployments: ethereum [`0xc93528...793d84`](./contracts/ethereum-1/0xc935285b0d88069305431dace0c3c01d7e793d84/); ethereum `0xcf9166...089ff1` | ⚠️ Unaudited |
| LockReleaseTokenPool | core_logic | ethereum | 43 deployments: ethereum [`0x0238d2...25e2e4`](./contracts/ethereum-1/0x0238d2c272f17cf11aedb08cde515d56ed25e2e4/); ethereum `0x047204...8e0786`; ethereum `0x0bc426...f075b4`; ethereum `0x0c291a...c1f4aa`; ethereum `0x0dafed...8b2602`; ethereum `0x1e28dd...c9c3d3`; ethereum `0x21377f...4df45e`; ethereum `0x26cdfc...c7c520`; ethereum `0x2c5c39...25b5b4`; ethereum `0x4ce6f5...bf675c`; ethereum `0x4edc3a...eda56a`; ethereum `0x50f663...a882ac`; ethereum `0x55562a...11c1e6`; ethereum `0x619ed9...b5924e`; ethereum `0x6452d6...3f37a6`; ethereum `0x69c24c...78f93a`; ethereum `0x6ce8b7...4a28f4`; ethereum `0x6ddf2f...494db2`; ethereum `0x6ff6bf...b6cd7e`; ethereum `0x73aeb5...3d90c1`; ethereum `0x8272db...ba413a`; ethereum `0x8291a8...9f3b06`; ethereum `0x82df5c...db012b`; ethereum `0x923f27...c3ee81`; ethereum `0xa00853...00cd91`; ethereum `0xa35304...16c215`; ethereum `0xa370ce...7574da`; ethereum `0xa82a87...eaf858`; ethereum `0xa904b9...19d000`; ethereum `0xa96787...9d349b`; ethereum `0xb5f146...8e0c80`; ethereum `0xb85453...19d7ba`; ethereum `0xc22919...570df4`; ethereum `0xc43c01...778df2`; ethereum `0xc456ea...56cd29`; ethereum `0xcc75c8...c8fa14`; ethereum `0xcd69c1...322733`; ethereum `0xd0b84f...d48595`; ethereum `0xd1b301...af49de`; ethereum `0xdca0a2...add6d0`; ethereum `0xde04b3...dd19df`; ethereum `0xe2f0da...93e366`; ethereum `0xf84bf7...15fa72` | ⚠️ Unaudited |
| BACSUSDPool | core_logic | ethereum | [`0xdc42a2...93305c`](./contracts/ethereum-1/0xdc42a21e38c3b8028b01a6b00d8dbc648f93305c/) | ⚠️ Unaudited |
| ERC20Peg | token | ethereum | [`0x76bac8...4c6e32`](./contracts/ethereum-1/0x76bac85e1e82cd677faa2b3f00c4a2626c4c6e32/) | ⚠️ Unaudited |
| ReimbursementPool | core_logic | ethereum | 10 deployments: ethereum [`0x369fce...17f9cc`](./contracts/ethereum-1/0x369fce62b33512b2a883cf217635ee28dd17f9cc/); ethereum `0x403333...753f06`; ethereum `0x700c88...9c92a7`; ethereum `0x8adf3f...732ea8`; ethereum `0x9f2f5e...942d74`; ethereum `0xaf3fea...ec0234`; ethereum `0xcc9c51...76c1d8`; ethereum `0xda1b78...6913dc`; ethereum `0xf0d4b1...d0de31`; ethereum `0xfc9469...5de92a` | ⚠️ Unaudited |
| AcreMultiAssetVault | core_logic | ethereum | 3 deployments: ethereum [`0x4a6e0d...afd18d`](./contracts/ethereum-1/0x4a6e0d0189c1d09eb4c63a53693d2be26cafd18d/); ethereum `0xa0e1f0...852fb7`; ethereum `0xb33d93...e2cb19` | ⚠️ Unaudited |
| AdaptiveStakingPolicy | operational_periphery | ethereum | 4 deployments: ethereum [`0x36d293...70f1ff`](./contracts/ethereum-1/0x36d293d15168ccdf93d1294d4a51a6d6c070f1ff/); ethereum `0x3715f0...109eac`; ethereum `0x57edf6...88d762`; ethereum `0x68d9e6...0d5612` | ⚠️ Unaudited |
| Allowlist | unknown | ethereum | 6 deployments: ethereum [`0x0f7191...74591b`](./contracts/ethereum-1/0x0f7191df5430c2b43f0cfaf9b444deb57c74591b/); ethereum `0x5e1b4e...88386f`; ethereum `0x89c2f7...43cb2e`; ethereum `0x9b3342...170a2c`; ethereum `0xd29986...f671bc`; ethereum `0xd6b1fe...5c6e2d` | ⚠️ Unaudited |
| AllVerifiers | periphery | ethereum | 3 deployments: ethereum [`0x533a7f...161dce`](./contracts/ethereum-1/0x533a7f4be5453513049eb94a2b115f2cce161dce/); ethereum `0x540ad8...5854a8`; ethereum `0x5a50e2...d17d8e` | ⚠️ Unaudited |
| ArbitrumWormholeGatewayUpgraded | unknown | arbitrum | [`0x1293a5...a15458`](./contracts/arbitrum-42161/0x1293a54e160d1cd7075487898d65266081a15458/) | ⚠️ Unaudited |
| ARM | unknown | ethereum | [`0x8b63b3...91fa1b`](./contracts/ethereum-1/0x8b63b3de93431c0f756a493644d128134291fa1b/) | ⚠️ Unaudited |
| ARMProxy | unknown | ethereum | [`0x411de1...c75e81`](./contracts/ethereum-1/0x411de17f12d1a34ecc7f45f49844626267c75e81/) | ⚠️ Unaudited |
| Auction | unknown | ethereum | [`0xabe008...e33fe1`](./contracts/ethereum-1/0xabe0080ea5f7a58b90398b1c87093cc225e33fe1/) | ⚠️ Unaudited |
| AuctionBidder | unknown | ethereum | [`0x773a4c...37b3c4`](./contracts/ethereum-1/0x773a4cacbca8e3704f8f7842531eab83e437b3c4/) | ⚠️ Unaudited |
| BACyCRVPool | core_logic | ethereum | [`0xc462d8...14c3bf`](./contracts/ethereum-1/0xc462d8ee54953e7d7bf276612b75387ea114c3bf/) | ⚠️ Unaudited |
| BaseWormholeGatewayUpgraded | unknown | base | [`0x099597...599eab`](./contracts/base-8453/0x09959798b95d00a3183d20fac298e4594e599eab/) | ⚠️ Unaudited |
| BatchedPhasedEscrow | operational_periphery | ethereum | 2 deployments: ethereum [`0x1b8e50...f831ca`](./contracts/ethereum-1/0x1b8e50ec9fbf844c3671bc178df8eadfcff831ca/); ethereum `0xa96ad7...bfd8a6` | ⚠️ Unaudited |
| BatchWithdraw | operational_periphery | ethereum | [`0x613d08...7a8964`](./contracts/ethereum-1/0x613d088f2e5a2ed91635016483dafa3cd47a8964/) | ⚠️ Unaudited |
| BeaconBackportRewards | registry | ethereum | [`0x8fec9c...ffbfff`](./contracts/ethereum-1/0x8fec9cf78087064f1f32269f68f94ae343ffbfff/) | ⚠️ Unaudited |
| BeaconBackportRewardsEscrowBeneficiary | operational_periphery | ethereum | 3 deployments: ethereum [`0x24c0fb...f07647`](./contracts/ethereum-1/0x24c0fbd3ff8e742080c60881f8527ca3baf07647/); ethereum `0x4e73e4...633600`; ethereum `0xe4b591...a07c8b` | ⚠️ Unaudited |
| BeaconDkg | registry | ethereum | [`0x024a69...2abd84`](./contracts/ethereum-1/0x024a697788918007592572f7cd020df2bc2abd84/) | ⚠️ Unaudited |
| BeaconDkgValidator | registry | ethereum | [`0x4edc83...653f94`](./contracts/ethereum-1/0x4edc83c5c5b0c41a594371485554b95280653f94/) | ⚠️ Unaudited |
| BeaconInactivity | registry | ethereum | [`0x67a26f...941ec0`](./contracts/ethereum-1/0x67a26f2ebdb2448605936fe9a5f496cda7941ec0/) | ⚠️ Unaudited |
| BeaconRewards | registry | ethereum | [`0xbf5180...f5f491`](./contracts/ethereum-1/0xbf51807acb3394b8550f0554fb9098856ef5f491/) | ⚠️ Unaudited |
| BeaconRewardsEscrowBeneficiary | operational_periphery | ethereum | [`0x9b15fe...e68ff0`](./contracts/ethereum-1/0x9b15fef1bfa4aff9b51f7b3b2df4d197cde68ff0/) | ⚠️ Unaudited |
| BitcoinDepositor | unknown | ethereum | 11 deployments: ethereum [`0x04b94f...0f4d32`](./contracts/ethereum-1/0x04b94f55780682478c8d8329368aaafd320f4d32/); ethereum `0x05f7ba...6b3789`; ethereum `0x10b4c3...6a5438`; ethereum `0x152c70...8c81b1`; ethereum `0x173b26...8a495a`; ethereum `0x1d50d7...889c24`; ethereum `0x2ba614...9313d1`; ethereum `0x3ac50e...7aacee`; ethereum `0x767f72...4ef291`; ethereum `0x98f3aa...82f7d7`; ethereum `0xd2809a...daf344` | ⚠️ Unaudited |
| BitcoinRedeemer | unknown | ethereum | 2 deployments: ethereum [`0x1f2766...4839a5`](./contracts/ethereum-1/0x1f2766373e74f268d5dbde32a395eb1c924839a5/); ethereum `0x7e184b...8fc756` | ⚠️ Unaudited |
| BlackPoolToken | core_logic | ethereum | [`0x0ec9f7...7e37da`](./contracts/ethereum-1/0x0ec9f76202a7061eb9b3a7d6b59d36215a7e37da/) | ⚠️ Unaudited |
| BlockPrice | operational_periphery | ethereum | [`0x596e3f...363410`](./contracts/ethereum-1/0x596e3f6241cf1435f91363cb023def2329363410/) | ⚠️ Unaudited |
| BondedSortitionPoolFactory | registry | ethereum | 3 deployments: ethereum [`0x0c46f4...2ede4f`](./contracts/ethereum-1/0x0c46f496c410465975a427e34a976fc15a2ede4f/); ethereum `0x92e0d8...109683`; ethereum `0x9423dd...cbb321` | ⚠️ Unaudited |
| BridgeFeeManager | operational_periphery | ethereum | 3 deployments: ethereum [`0x0e628a...aa5913`](./contracts/ethereum-1/0x0e628a1c34c92f0aa85af998814ce4f03caa5913/); ethereum `0x409968...c5a90b`; ethereum `0x823653...b59539` | ⚠️ Unaudited |
| BridgeGovernance | operational_periphery | ethereum | 3 deployments: ethereum [`0xa94dd6...0778ee`](./contracts/ethereum-1/0xa94dd662e2a247493facceab9f2459aaf90778ee/); ethereum `0xcbcfa3...2cc0cf`; ethereum `0xf286ea...230b45` | ⚠️ Unaudited |
| BridgeGovernanceParameters | operational_periphery | ethereum | [`0xce4b16...0d3443`](./contracts/ethereum-1/0xce4b16b81a28d785feeb7b1d56a9b97d450d3443/) | ⚠️ Unaudited |
| BTCDepositorWormhole | unknown | ethereum | 2 deployments: ethereum [`0x35d670...f66db7`](./contracts/ethereum-1/0x35d6701640fca561bacfe4151063c8e55af66db7/); ethereum `0xb810ab...2a341a` | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | ethereum | 33 deployments: ethereum [`0x057152...1fe1b4`](./contracts/ethereum-1/0x057152db365b47851b0a0bd431644b8ee21fe1b4/); ethereum `0x06f981...1da9b8`; ethereum `0x1175e4...4fa62e`; ethereum `0x123ed4...0ee5ca`; ethereum `0x1580c7...092cfa`; ethereum `0x276491...fde73b`; ethereum `0x2dd317...517470`; ethereum `0x3d368d...2d7c8f`; ethereum `0x44622f...c7ff14`; ethereum `0x4c3aee...fb7709`; ethereum `0x550425...65d451`; ethereum `0x57d3bb...28475f`; ethereum `0x7559a8...2128ca`; ethereum `0x781964...dad288`; ethereum `0x80cc10...7de2d4`; ethereum `0x80e2dc...e4cfb8`; ethereum `0x8300e8...a6b12d`; ethereum `0x8bcd7e...ae9062`; ethereum `0x8c6028...422e56`; ethereum `0x9797e8...d828e6`; ethereum `0x9c6a6e...27e1dd`; ethereum `0xa17698...0701e7`; ethereum `0xba0e1c...c824c3`; ethereum `0xbf7cb6...dc0982`; ethereum `0xc62c31...1aad3e`; ethereum `0xcd196d...c73526`; ethereum `0xd72f70...87c66c`; ethereum `0xd8f734...66c351`; ethereum `0xdc85b5...8641a2`; ethereum `0xde71a0...e86f12`; ethereum `0xeae89e...669b73`; ethereum `0xf0d19c...7be823`; ethereum `0xf5224e...dcde99` | ⚠️ Unaudited |
| BurnMintTokenPoolAndProxy | core_logic | ethereum | 25 deployments: ethereum [`0x08b405...7b5abb`](./contracts/ethereum-1/0x08b4058f16d243c977ea1fe91b20af31057b5abb/); ethereum `0x307d03...16bce8`; ethereum `0x46911f...cbf5a6`; ethereum `0x475c8f...36e358`; ethereum `0x485858...db0005`; ethereum `0x518086...196a97`; ethereum `0x581ced...48c9c7`; ethereum `0x5be290...4f58ca`; ethereum `0x67f4e7...1b1787`; ethereum `0x6d1e0c...7d38bb`; ethereum `0x8315bb...27336e`; ethereum `0x8ac682...a158d7`; ethereum `0x8c9015...66b760`; ethereum `0x8ee289...46a4a5`; ethereum `0x916d7d...866d44`; ethereum `0x9f02c1...b6d06c`; ethereum `0xc1d8f2...25d91a`; ethereum `0xc4abcd...4f5f58`; ethereum `0xc576d8...de5b73`; ethereum `0xce8342...098fde`; ethereum `0xcfd063...df23c4`; ethereum `0xe58edb...0a6a84`; ethereum `0xe727f7...dad811`; ethereum `0xe9bfb4...ac54ac`; ethereum `0xea5fd7...86ada1` | ⚠️ Unaudited |
| BurnWithFromMintTokenPool | core_logic | ethereum | 2 deployments: ethereum [`0x45a103...f84b6b`](./contracts/ethereum-1/0x45a103142585bdfc49cdb137f2a45d1ae7f84b6b/); ethereum `0x66d40e...dedcec` | ⚠️ Unaudited |
| BurnWithFromMintTokenPoolAndProxy | core_logic | ethereum | [`0x476eef...240b93`](./contracts/ethereum-1/0x476eefef46e0d65e1e371fe093696259b1240b93/) | ⚠️ Unaudited |
| CairoBootloaderProgram | adapter | ethereum | 8 deployments: ethereum [`0x192292...8a8636`](./contracts/ethereum-1/0x192292817680196a0215a50b07d1c5e7ab8a8636/); ethereum `0x24105e...a24a47`; ethereum `0x476839...a1c773`; ethereum `0x58600a...6cc515`; ethereum `0x5d07af...6a9ddf`; ethereum `0xb4c61d...a26a40`; ethereum `0xdf0b63...d1d917`; ethereum `0xfa93ca...3b4a20` | ⚠️ Unaudited |
| CallProxy | unknown | ethereum | 4 deployments: ethereum [`0x3597c5...2f9feb`](./contracts/ethereum-1/0x3597c5cbcbcb30079a0bd2a68cde5f98272f9feb/); ethereum `0x93379c...e6e7ff`; ethereum `0xb8fde0...253142`; ethereum `0xcae5c1...4e4306` | ⚠️ Unaudited |
| ChangeVerifiersExternalInitializer | periphery | ethereum | [`0x09e429...4d5627`](./contracts/ethereum-1/0x09e429b3a3281e689d5468be2dbca3905b4d5627/) | ⚠️ Unaudited |
| CommitStore | unknown | ethereum | 88 deployments: ethereum [`0x013467...5e9084`](./contracts/ethereum-1/0x01346721418045a6c07b71052e452ef8615e9084/); ethereum `0x0428df...b587de`; ethereum `0x0d26ba...052045`; ethereum `0x0f254e...a380d7`; ethereum `0x0f5552...2bbe75`; ethereum `0x0f89c7...c52959`; ethereum `0x10d561...945c75`; ethereum `0x118a93...6c6bfc`; ethereum `0x17f1ac...9166ba`; ethereum `0x180776...3f5633`; ethereum `0x1a3d58...e35a8d`; ethereum `0x1bddba...0533b9`; ethereum `0x20718e...411a6d`; ethereum `0x215a3a...861f0e`; ethereum `0x27a4e7...9926fb`; ethereum `0x2aa101...a007ce`; ethereum `0x2d1708...ba1c77`; ethereum `0x31f6ab...0a89ab`; ethereum `0x38a806...c43271`; ethereum `0x3cb2a8...56fc53`; ethereum `0x3d3467...23144c`; ethereum `0x3d8a95...b90466`; ethereum `0x3f1c35...4c4527`; ethereum `0x40c558...74417f`; ethereum `0x459154...f1e5d0`; ethereum `0x4af4b4...a79dc8`; ethereum `0x4b50cd...ee3282`; ethereum `0x52275d...01f694`; ethereum `0x53d196...c12b60`; ethereum `0x57117a...4e8787`; ethereum `0x57b548...3fb9b3`; ethereum `0x57d6cd...3dd114`; ethereum `0x5fd81c...2e15ff`; ethereum `0x607c09...8f128c`; ethereum `0x60f9b5...4b2c2a`; ethereum `0x67b972...a00b90`; ethereum `0x681827...703248`; ethereum `0x6c8b96...4bf4b9`; ethereum `0x6f4abc...c5bf75`; ethereum `0x6fe6f7...29d0a4`; ethereum `0x700b6a...794e02`; ethereum `0x70ac0f...27006a`; ethereum `0x762648...7f190e`; ethereum `0x7986c9...70a5fd`; ethereum `0x807dd6...799a04`; ethereum `0x831097...540c8f`; ethereum `0x83f3da...30250d`; ethereum `0x8705f7...646159`; ethereum `0x87c55d...793d75`; ethereum `0x8a1680...f8a2cf`; ethereum `0x8befca...dc11a0`; ethereum `0x8c3805...cf8555`; ethereum `0x8d846b...77b1ab`; ethereum `0x8dc27d...9bae04`; ethereum `0x8fc54e...e9e262`; ethereum `0x913a2a...ddc04b`; ethereum `0x95deb0...b82d64`; ethereum `0x98d0f8...a67ed9`; ethereum `0x9b2eed...1b7749`; ethereum `0x9b9ec8...83dcdb`; ethereum `0x9d93d5...794f8a`; ethereum `0x9f592c...d705cd`; ethereum `0xa4755c...110320`; ethereum `0xa48269...536d1c`; ethereum `0xa4d264...e3f194`; ethereum `0xa58818...3741b9`; ethereum `0xa9f9bf...a9a2b8`; ethereum `0xac0c6e...9cfd3e`; ethereum `0xaffa4f...643e46`; ethereum `0xbaf669...fc4cb7`; ethereum `0xc46890...56ad8d`; ethereum `0xc5164a...224f9f`; ethereum `0xd07926...d40235`; ethereum `0xd2428f...a6cd99`; ethereum `0xd37a60...beeb76`; ethereum `0xd8f93a...bff802`; ethereum `0xd9d3d9...c3da72`; ethereum `0xdac3a8...205ffe`; ethereum `0xdb156e...6e627c`; ethereum `0xdcf6f2...954110`; ethereum `0xe41677...7470a6`; ethereum `0xf19173...fd4793`; ethereum `0xf28f73...a6a62f`; ethereum `0xf7b343...e75ed3`; ethereum `0xf7d68c...bb8f02`; ethereum `0xfa94e5...7eb210`; ethereum `0xfacfe8...551fd6`; ethereum `0xfe73bc...fb0165` | ⚠️ Unaudited |
| Committee | unknown | ethereum | 2 deployments: ethereum [`0x23cab3...9494e4`](./contracts/ethereum-1/0x23cab3cf1aa7b929df5e9f3712aca3a6fb9494e4/); ethereum `0x724908...0cf800` | ⚠️ Unaudited |
| CoveragePool | core_logic | ethereum | 2 deployments: ethereum [`0x7d7b62...6d811a`](./contracts/ethereum-1/0x7d7b622c07f216d99efc3efb9cf71872f46d811a/); ethereum `0x91cd77...3bf877` | ⚠️ Unaudited |
| CoveragePoolBeneficiary | core_logic | ethereum | 2 deployments: ethereum [`0x22428b...2ee39b`](./contracts/ethereum-1/0x22428b09efc87709ab49a77da6f9ce4ffa2ee39b/); ethereum `0xe8372c...f67263` | ⚠️ Unaudited |
| CpuConstraintPoly | unknown | ethereum | 47 deployments: ethereum [`0x04be0e...efa8eb`](./contracts/ethereum-1/0x04be0e2d5eccc744be21bfb28d91d4a3cbefa8eb/); ethereum `0x05c985...798035`; ethereum `0x0c099c...9bb434`; ethereum `0x17de59...566090`; ethereum `0x1bde14...7d4420`; ethereum `0x1f038c...6de676`; ethereum `0x217c1d...124089`; ethereum `0x218ec2...21ffe1`; ethereum `0x297951...d9c962`; ethereum `0x2c9726...ab01a1`; ethereum `0x307982...3eecea`; ethereum `0x32ddfd...353ffb`; ethereum `0x351666...9563f1`; ethereum `0x3e727f...b16eba`; ethereum `0x450909...1811c9`; ethereum `0x4cf5c1...1d2950`; ethereum `0x4fefa7...33abe5`; ethereum `0x547eec...ce0717`; ethereum `0x55653a...8c509c`; ethereum `0x68e598...c4a092`; ethereum `0x691ca5...34e55e`; ethereum `0x6bdac5...05f1da`; ethereum `0x6f67a8...779d9e`; ethereum `0x70fbec...817ee5`; ethereum `0x76815d...71c7dc`; ethereum `0x86abf7...8cda46`; ethereum `0x89b7a7...3edf20`; ethereum `0x943248...1378eb`; ethereum `0x9a62fa...2d31a9`; ethereum `0x9ddb8a...10ae6f`; ethereum `0xa9bac6...dc2dae`; ethereum `0xb195c6...d36b67`; ethereum `0xb62dc4...2fb15a`; ethereum `0xbe8bd7...2bc447`; ethereum `0xc39380...287f7b`; ethereum `0xc716c4...39dbd8`; ethereum `0xcd96f4...17cf02`; ethereum `0xcf8278...5235a1`; ethereum `0xd0aade...0d7418`; ethereum `0xd48801...afc064`; ethereum `0xd8c397...658aad`; ethereum `0xd8e473...cc81e5`; ethereum `0xdd4cbe...5b5253`; ethereum `0xe1a0b8...a8f79d`; ethereum `0xe4937a...a9b103`; ethereum `0xe5313f...920cac`; ethereum `0xf9b6a4...fb7ed8` | ⚠️ Unaudited |
| CpuFrilessVerifier | periphery | ethereum | 47 deployments: ethereum [`0x015381...442cd6`](./contracts/ethereum-1/0x015381651f240ed6c44122dcba6cf807c9442cd6/); ethereum `0x032f73...3ec1d5`; ethereum `0x03fa91...f912e8`; ethereum `0x094bd6...6e0ae3`; ethereum `0x0cd0cd...ca5cdc`; ethereum `0x18d3f4...65138e`; ethereum `0x205e0d...7bb5d7`; ethereum `0x217750...acc214`; ethereum `0x243682...e25791`; ethereum `0x2867a4...109b6b`; ethereum `0x28e3ad...2be32a`; ethereum `0x30f3ab...70419b`; ethereum `0x3ba1b0...85e562`; ethereum `0x3c5d87...65afa2`; ethereum `0x3d5752...166c8e`; ethereum `0x42af94...cb7771`; ethereum `0x4a7e4f...2031a4`; ethereum `0x4e59fc...86c20f`; ethereum `0x5f1aba...4cd65d`; ethereum `0x6097fc...6cc460`; ethereum `0x61bf6c...d398d1`; ethereum `0x630a97...caf239`; ethereum `0x66f234...21a970`; ethereum `0x6a6779...803f11`; ethereum `0x715740...53a26d`; ethereum `0x78af2b...78c590`; ethereum `0x7c8643...961cd3`; ethereum `0x7e7a7b...84bf29`; ethereum `0x805594...e3d22b`; ethereum `0x8488e8...cbe57b`; ethereum `0x8e2009...1ef188`; ethereum `0x8fe004...7ce85f`; ethereum `0x9e614a...f2bd21`; ethereum `0xaa2c9c...ef11b9`; ethereum `0xaaae0e...179f8a`; ethereum `0xab8c1a...c31934`; ethereum `0xbb06a8...a78c0d`; ethereum `0xbe0f8f...8caef3`; ethereum `0xbf8d12...7d26cc`; ethereum `0xc879af...7f31e3`; ethereum `0xd0fc19...9d88b4`; ethereum `0xd2fb1b...67f56b`; ethereum `0xe15515...1303ff`; ethereum `0xe5efcd...97b549`; ethereum `0xe9664d...8d0e24`; ethereum `0xec7195...48098d`; ethereum `0xffc797...476b44` | ⚠️ Unaudited |
| CpuOods | unknown | ethereum | 47 deployments: ethereum [`0x0acc32...9ec5cb`](./contracts/ethereum-1/0x0acc3292202b05175f86c7bf4bd6011eb79ec5cb/); ethereum `0x1fb8ea...5d281c`; ethereum `0x3405f6...af3280`; ethereum `0x35e9f6...83e7cb`; ethereum `0x367b33...7dfbb6`; ethereum `0x39621b...8e3d6b`; ethereum `0x43a1c0...d0b9e0`; ethereum `0x473e7b...10f367`; ethereum `0x4742f8...3621c9`; ethereum `0x4a3635...e48c17`; ethereum `0x4bf82e...bd2ff7`; ethereum `0x4d654c...3b2ffb`; ethereum `0x4d776c...32006a`; ethereum `0x52314e...d6aa4a`; ethereum `0x57a4b2...ff620a`; ethereum `0x6454b5...fd4a6e`; ethereum `0x682932...44e090`; ethereum `0x697ce8...d14a0a`; ethereum `0x704dff...53607f`; ethereum `0x73bab6...ac9d90`; ethereum `0x7902d5...e5fe9a`; ethereum `0x7ca020...af135e`; ethereum `0x7f1b43...a5f823`; ethereum `0x8518f4...5b17fe`; ethereum `0x88ba01...f715c1`; ethereum `0x89cadc...2eac4d`; ethereum `0x8f3af1...dc4775`; ethereum `0x97d4df...221449`; ethereum `0x99480b...dc3595`; ethereum `0xa40115...7bb766`; ethereum `0xa4d0bb...e15dd4`; ethereum `0xa9db7b...080f23`; ethereum `0xac6250...fe3ac0`; ethereum `0xae325c...ac2707`; ethereum `0xb2e7bc...3ca19f`; ethereum `0xb64093...5cd4dc`; ethereum `0xc47097...347288`; ethereum `0xc9e067...5ceed3`; ethereum `0xcc80e9...4bf2a4`; ethereum `0xd566ae...1d162f`; ethereum `0xd5700c...8d2a40`; ethereum `0xd67c67...014faa`; ethereum `0xdc2c54...aeae84`; ethereum `0xe709eb...7e7b6f`; ethereum `0xe72ebf...235af7`; ethereum `0xed2199...32ee8e`; ethereum `0xf9ee3f...e639b1` | ⚠️ Unaudited |
| DelayedExecutor | unknown | ethereum | [`0xff50d1...c2cc70`](./contracts/ethereum-1/0xff50d164e42da7bb558c1e88afe0bd66e8c2cc70/) | ⚠️ Unaudited |
| DelegatedWithBalanceWeight | unknown | ethereum | [`0x1ecfb5...33f08a`](./contracts/ethereum-1/0x1ecfb5cd55dfd68a54f58f77b729b8a1c933f08a/) | ⚠️ Unaudited |
| DepositStates | unknown | ethereum | [`0x8695ff...ae1c80`](./contracts/ethereum-1/0x8695ff199a1216fc7e2bf97303bf662babae1c80/) | ⚠️ Unaudited |
| DepositSweep | unknown | ethereum | 3 deployments: ethereum [`0x392635...ac9b95`](./contracts/ethereum-1/0x392635646bc22fc13c86859d1f02b27974ac9b95/); ethereum `0x53f26b...8f13c2`; ethereum `0xe6f919...a87085` | ⚠️ Unaudited |
| ECDSABackportRewards | unknown | ethereum | [`0xe9ca1a...c036fa`](./contracts/ethereum-1/0xe9ca1abe343515312eb6d13178c5a2dce3c036fa/) | ⚠️ Unaudited |
| ECDSABackportRewardsEscrowBeneficiary | operational_periphery | ethereum | 3 deployments: ethereum [`0x82ab5f...c76108`](./contracts/ethereum-1/0x82ab5f02993bf312d9aca03157f26febebc76108/); ethereum `0x86f7bb...8b3653`; ethereum `0x8bb002...b20e62` | ⚠️ Unaudited |
| EcdsaInactivity | unknown | ethereum | [`0x8263ef...46f764`](./contracts/ethereum-1/0x8263efcb8f28246697585c89fed0501cd946f764/) | ⚠️ Unaudited |
| EcdsaPointsXColumn | unknown | ethereum | 6 deployments: ethereum [`0x01228f...283bf1`](./contracts/ethereum-1/0x01228f83c6664a14fc3bb4ea28b7d1a2fc283bf1/); ethereum `0x4c0de5...70fb1f`; ethereum `0x593a71...b329b1`; ethereum `0x87945d...eeca21`; ethereum `0xa3da16...74b9ce`; ethereum `0xcb799c...a0286b` | ⚠️ Unaudited |
| EcdsaPointsYColumn | unknown | ethereum | 6 deployments: ethereum [`0x498b55...5fe9f3`](./contracts/ethereum-1/0x498b5546f1ee017227eb1db438d25ad1205fe9f3/); ethereum `0x9e4fdd...37ecc1`; ethereum `0xc354c1...098333`; ethereum `0xca59f6...3abf29`; ethereum `0xcaea50...62c771`; ethereum `0xe3929e...46b716` | ⚠️ Unaudited |
| ECDSARewards | unknown | ethereum | [`0xc5ac5a...ffca88`](./contracts/ethereum-1/0xc5ac5a8892230e0a3e1c473881a2de7353ffca88/) | ⚠️ Unaudited |
| ECDSARewardsDistributor | operational_periphery | ethereum | [`0x5b9e48...91bbb3`](./contracts/ethereum-1/0x5b9e48f8818962699fe38f5989b130cee691bbb3/) | ⚠️ Unaudited |
| ECDSARewardsDistributorEscrow | operational_periphery | ethereum | [`0xa77ec9...952042`](./contracts/ethereum-1/0xa77ec9c89a0c889bcb05d15df42d49b706952042/) | ⚠️ Unaudited |
| ECDSARewardsEscrowBeneficiary | operational_periphery | ethereum | 2 deployments: ethereum [`0x037a91...5efb84`](./contracts/ethereum-1/0x037a91d627cdbdd5ae20d6912fa15ae29b5efb84/); ethereum `0xd267b3...317dc3` | ⚠️ Unaudited |
| Escrow | operational_periphery | ethereum | 4 deployments: ethereum [`0x446d52...ae64bb`](./contracts/ethereum-1/0x446d5219981fc770f4f322a93c85516a8aae64bb/); ethereum `0x68eb4d...981200`; ethereum `0xbfadac...48d90b`; ethereum `0xfea178...e5f869` | ⚠️ Unaudited |
| EVM2EVMOffRamp | unknown | ethereum | 87 deployments: ethereum [`0x0ab48c...c44554`](./contracts/ethereum-1/0x0ab48c500abd8392620c3c4e4fdd5d7063c44554/); ethereum `0x0af338...0ee395`; ethereum `0x0f1b1a...2e4ba2`; ethereum `0x109c66...dcd9fe`; ethereum `0x1a904d...ed7599`; ethereum `0x1c207d...b2d12c`; ethereum `0x26a101...340fc3`; ethereum `0x310fdc...f73189`; ethereum `0x330349...f65e61`; ethereum `0x332761...cb2b26`; ethereum `0x34eec7...24a604`; ethereum `0x38ad72...e24286`; ethereum `0x3a129e...91c6c5`; ethereum `0x3b45dd...75ef58`; ethereum `0x3c5990...4210c1`; ethereum `0x3c672f...8edc09`; ethereum `0x41627a...7fdab5`; ethereum `0x418dcb...79fbb4`; ethereum `0x467653...4cf214`; ethereum `0x49aac6...1f8edd`; ethereum `0x4bc602...225419`; ethereum `0x4e4003...1950d6`; ethereum `0x559c32...a5f48d`; ethereum `0x562a20...6d1d3b`; ethereum `0x569940...f75c17`; ethereum `0x5b6d29...5eaca5`; ethereum `0x5b859e...1da7ec`; ethereum `0x5e24de...8c559f`; ethereum `0x5eda68...97c3f4`; ethereum `0x61135e...fbaae4`; ethereum `0x64a5c6...88578b`; ethereum `0x66114e...4cf0c9`; ethereum `0x66d84f...8d7c12`; ethereum `0x6868fe...563d69`; ethereum `0x6b4b63...5a9ebd`; ethereum `0x70c705...49c2ec`; ethereum `0x7115f0...5ea175`; ethereum `0x718672...d704a3`; ethereum `0x720ea8...b6ff81`; ethereum `0x794ae3...a5ce96`; ethereum `0x7a82d2...23666d`; ethereum `0x7afe70...b9171c`; ethereum `0x7e4c90...91f656`; ethereum `0x82dae1...d3a0fc`; ethereum `0x8693cd...6580c1`; ethereum `0x8b3eee...5018b8`; ethereum `0x8efae6...91f3e2`; ethereum `0x8fee86...594b28`; ethereum `0x92fbcf...9da04f`; ethereum `0x9a3ed7...20528d`; ethereum `0x9cbba1...18a90e`; ethereum `0x9de971...711988`; ethereum `0x9f0e81...d55181`; ethereum `0xa627f2...f758f0`; ethereum `0xa77c14...dc8f3b`; ethereum `0xa8c12a...992a14`; ethereum `0xaa0da3...b1769b`; ethereum `0xae2a2a...c437f0`; ethereum `0xb09590...f20bf7`; ethereum `0xb0f5b6...ec414f`; ethereum `0xb368c8...d143bf`; ethereum `0xb45cf8...b8d977`; ethereum `0xb57d52...56dd8f`; ethereum `0xbdd822...93fe72`; ethereum `0xc0c8d7...ef120d`; ethereum `0xc1ecce...9a1bf2`; ethereum `0xc71766...33ee94`; ethereum `0xc876d5...482f9c`; ethereum `0xcdca3f...96d7e4`; ethereum `0xce6364...f702e8`; ethereum `0xd50836...4dfd46`; ethereum `0xd98e80...19bfbb`; ethereum `0xde6608...bc8079`; ethereum `0xde81f1...ea57ac`; ethereum `0xdf615e...245ac9`; ethereum `0xdf85c8...cddfb3`; ethereum `0xdfd8c3...b768a4`; ethereum `0xe79705...962162`; ethereum `0xe8af3b...f09b92`; ethereum `0xe93ec2...7d47d4`; ethereum `0xefc4a1...286f4d`; ethereum `0xf2eb4c...a8656a`; ethereum `0xf3ac96...d3b7f9`; ethereum `0xf4468e...1ea9ae`; ethereum `0xfb0422...e28783`; ethereum `0xfc92c3...f0f0a3`; ethereum `0xff51c0...09cd24` | ⚠️ Unaudited |
| EVM2EVMOnRamp | unknown | ethereum | 94 deployments: ethereum [`0x03cb4c...b834d9`](./contracts/ethereum-1/0x03cb4c67d01a78f44289541281e57c33e6b834d9/); ethereum `0x0826b8...83d41b`; ethereum `0x08c798...95672d`; ethereum `0x093844...8cad63`; ethereum `0x0f27c8...d04b3c`; ethereum `0x15a9d7...a7149c`; ethereum `0x1b9605...7a195d`; ethereum `0x1d01e4...a7ef81`; ethereum `0x1fa3af...45f06b`; ethereum `0x20fd5a...b64432`; ethereum `0x266e52...717b8f`; ethereum `0x31ee10...2f8d37`; ethereum `0x333f97...f6264e`; ethereum `0x33417f...3691a4`; ethereum `0x3455d8...7b07bf`; ethereum `0x34748f...cb4094`; ethereum `0x35f0ca...5f1b8b`; ethereum `0x362a22...ba8187`; ethereum `0x3ac0d8...a8c6b1`; ethereum `0x3df8da...9dd630`; ethereum `0x4109d2...64d5b0`; ethereum `0x4545f9...9cbd27`; ethereum `0x466a07...4c9b65`; ethereum `0x486170...f2c44c`; ethereum `0x48f836...e21980`; ethereum `0x4cc3d9...5702c0`; ethereum `0x4fb540...8b05c5`; ethereum `0x4fdaad...595d6a`; ethereum `0x522f82...150fff`; ethereum `0x551390...5e6808`; ethereum `0x5739e5...2025e0`; ethereum `0x58821e...0949f1`; ethereum `0x5e7397...587e04`; ethereum `0x5f6e77...16eb3e`; ethereum `0x608d23...4ab9fa`; ethereum `0x61b4b8...3148a5`; ethereum `0x626189...1f78e9`; ethereum `0x62bfc5...9e0fbf`; ethereum `0x6715ea...4a6b49`; ethereum `0x6751ca...db4e36`; ethereum `0x69ecc4...f2c284`; ethereum `0x70b2b3...bca65d`; ethereum `0x741599...8e9f90`; ethereum `0x74cb66...e77931`; ethereum `0x75d536...49b84e`; ethereum `0x7b78f8...180a2b`; ethereum `0x7c32c6...e18bb2`; ethereum `0x7d7c49...2557b3`; ethereum `0x8469b5...a7d0df`; ethereum `0x86768e...c8d486`; ethereum `0x86b47d...5549d1`; ethereum `0x8b858e...f117ec`; ethereum `0x91d25a...ebfa69`; ethereum `0x925228...44a22c`; ethereum `0x948306...0b480d`; ethereum `0x9557b1...9aa1e0`; ethereum `0x992470...9946e7`; ethereum `0x9b14ae...8a365b`; ethereum `0x9cb0ff...9747d3`; ethereum `0xa32f81...0ebe94`; ethereum `0xa5ef33...8264ac`; ethereum `0xa6d806...8ccb48`; ethereum `0xab6066...4a10d0`; ethereum `0xafd31c...249d8a`; ethereum `0xb8a882...431937`; ethereum `0xba1aa2...653332`; ethereum `0xbeffef...886c42`; ethereum `0xc46e2f...4abf88`; ethereum `0xc5dbe2...ca3fc2`; ethereum `0xcaea22...d4b133`; ethereum `0xcb18b1...4be4c8`; ethereum `0xcbe7e5...a4e2c4`; ethereum `0xcc19bc...7780b0`; ethereum `0xccf971...f3672b`; ethereum `0xd0b5fc...282cf2`; ethereum `0xd1cc3a...cb2ac3`; ethereum `0xd54c93...95a89f`; ethereum `0xd8e872...b2e252`; ethereum `0xdaa386...016819`; ethereum `0xdb6ebb...4f19b6`; ethereum `0xdc5b57...b50844`; ethereum `0xddf4b4...0d234b`; ethereum `0xdefead...6423cc`; ethereum `0xdf1d7f...9f3b24`; ethereum `0xe2c2ab...4dadf7`; ethereum `0xe2eb22...60fe73`; ethereum `0xea6d4a...086f82`; ethereum `0xed5be9...2e3cfa`; ethereum `0xeee2ae...34a8e2`; ethereum `0xf50b9a...30f6f0`; ethereum `0xf538da...58cfd4`; ethereum `0xff31c8...a872db`; ethereum `0xffbd6b...2aa389`; ethereum `0xffbec4...bc4330` | ⚠️ Unaudited |
| FinalizableCommittee | unknown | ethereum | 7 deployments: ethereum [`0x2deea2...387150`](./contracts/ethereum-1/0x2deea207069fc760703a4abc233b503585387150/); ethereum `0x3cc6b6...362dbb`; ethereum `0x4b2bf1...8b6669`; ethereum `0x4cae5f...86740e`; ethereum `0x4e0e46...7de611`; ethereum `0x8b3a66...7ca818`; ethereum `0xbe360d...67594f` | ⚠️ Unaudited |
| FinalizableGpsFactAdapter | adapter | ethereum | 7 deployments: ethereum [`0x16b484...14c4c2`](./contracts/ethereum-1/0x16b484ca53424f1e09fa124687fc63e4cc14c4c2/); ethereum `0x40e1e5...098b22`; ethereum `0x44dfd4...d6ffd9`; ethereum `0x690697...a24989`; ethereum `0x86b939...c7bb56`; ethereum `0xe741e2...7fb953`; ethereum `0xf23754...46053c` | ⚠️ Unaudited |
| ForcedActions | unknown | ethereum | 2 deployments: ethereum [`0x613ee5...48f376`](./contracts/ethereum-1/0x613ee54c54d5548627064b4d648942bf3648f376/); ethereum `0x9f862b...ae2bde` | ⚠️ Unaudited |
| FriStatementContract | unknown | ethereum | 5 deployments: ethereum [`0x30efaa...93d400`](./contracts/ethereum-1/0x30efaaa99f8efe310d9fdc83072e2a04c093d400/); ethereum `0x3e6118...7dd2dd`; ethereum `0x98871e...19f0cf`; ethereum `0xcdf95e...0a8806`; ethereum `0xdef8a3...df44fb` | ⚠️ Unaudited |
| FundingScript | unknown | ethereum | [`0x94c70c...93d063`](./contracts/ethereum-1/0x94c70c36b519e03705ddc26982d438f71993d063/) | ⚠️ Unaudited |
| GasPriceOracle | operational_periphery | ethereum | [`0x2c0a34...e46ab3`](./contracts/ethereum-1/0x2c0a348500638aace229d6868c26b4e64fe46ab3/) | ⚠️ Unaudited |
| GpsFactRegistryAdapter | adapter | ethereum | 4 deployments: ethereum [`0x6a8376...c5581a`](./contracts/ethereum-1/0x6a8376aea89d8255e2ad8b0f00362672bcc5581a/); ethereum `0xacf6a4...e93f94`; ethereum `0xbcc174...7cedb1`; ethereum `0xe8a480...32f414` | ⚠️ Unaudited |
| GpsStatementVerifier | periphery | ethereum | 10 deployments: ethereum [`0x13e120...b0d934`](./contracts/ethereum-1/0x13e120f6c8e747983f7aaf0f7731796bfcb0d934/); ethereum `0x4124e1...b09346`; ethereum `0x5c1ce4...e3a9fe`; ethereum `0x6cb3ee...361bf6`; ethereum `0x7da122...2e3ff7`; ethereum `0x9069a5...e369ff`; ethereum `0x9fb7f4...751942`; ethereum `0xac09e9...8e1408`; ethereum `0xd51a3d...4dd8df`; ethereum `0xfe5e5b...2b0066` | ⚠️ Unaudited |
| GuaranteedMinimumStakingPolicy | unknown | ethereum | [`0x4c3ad5...278159`](./contracts/ethereum-1/0x4c3ad59b5a32f2d076051d01d6f58bc75d278159/) | ⚠️ Unaudited |
| KeepBonding | unknown | ethereum | 2 deployments: ethereum [`0x27321f...89a3d5`](./contracts/ethereum-1/0x27321f84704a599ab740281e285cc4463d89a3d5/); ethereum `0x812fcc...3b2db8` | ⚠️ Unaudited |
| KeepFactorySelection | registry | ethereum | [`0x29fa8f...78261c`](./contracts/ethereum-1/0x29fa8f46cbb9562b87773c8f50a7f9f27178261c/) | ⚠️ Unaudited |
| KeepRandomBeaconOperatorStatistics | registry | ethereum | [`0x3975ce...5718e7`](./contracts/ethereum-1/0x3975ce253ff9d586cf08c3898f95064b7a5718e7/) | ⚠️ Unaudited |
| KeepRegistry | registry | ethereum | [`0x1a9589...d3fb05`](./contracts/ethereum-1/0x1a9589f56c969d6b0d3787ea02322476ead3fb05/) | ⚠️ Unaudited |
| KeepStake | unknown | ethereum | [`0x10de37...4af8b4`](./contracts/ethereum-1/0x10de37cf84202a20cae61069c617b3aa874af8b4/) | ⚠️ Unaudited |
| KeepTokenGeyserRewardsEscrowBeneficiary | operational_periphery | ethereum | [`0x06b586...13fd7d`](./contracts/ethereum-1/0x06b5869aadcf3fa9a2733dd93d4240a6d813fd7d/) | ⚠️ Unaudited |
| KeepVault | core_logic | ethereum | [`0xdf00da...016c87`](./contracts/ethereum-1/0xdf00dac2be1250cf62cbfc617ee7bc45c0016c87/) | ⚠️ Unaudited |
| L1BTCDepositorWormholeV2Arbitrum | unknown | ethereum | [`0x75a6e4...2c619a`](./contracts/ethereum-1/0x75a6e4a7c8faa162192fad6c1f7a6d48992c619a/) | ⚠️ Unaudited |
| L1BTCDepositorWormholeV2Base | unknown | ethereum | [`0x186d04...00a1fe`](./contracts/ethereum-1/0x186d048097c7406c64efb0537886e3cae100a1fe/) | ⚠️ Unaudited |
| L1BTCRedeemerWormhole | unknown | ethereum | 3 deployments: ethereum [`0x5aab7e...93b3f8`](./contracts/ethereum-1/0x5aab7eabd63b2222b07442f04ca874366193b3f8/); ethereum `0x5d4d83...23dbde`; ethereum `0xa4b261...727310` | ⚠️ Unaudited |
| L2BTCRedeemerWormhole | unknown | arbitrum | 2 deployments: base `0xe931f1...d2d88b`; arbitrum [`0xd7cd99...34d9b7`](./contracts/arbitrum-42161/0xd7cd996a47b3293d4fec2dbcf49692370334d9b7/) | ⚠️ Unaudited |
| L2TBTC | unknown | polygon | 7 deployments: optimism `0x6c84a8...d0de40`; optimism `0xda534b...681365`; polygon [`0x236aa5...ab794b`](./contracts/polygon-137/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/); polygon `0x41c9b5...79d91a`; base [`0x236aa5...ab794b`](./contracts/base-8453/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/); base `0x41c9b5...79d91a`; arbitrum `0x6c84a8...d0de40` | ⚠️ Unaudited |
| L2WormholeGateway | unknown | polygon | 2 deployments: optimism `0x1293a5...a15458`; polygon [`0x099597...599eab`](./contracts/polygon-137/0x09959798b95d00a3183d20fac298e4594e599eab/) | ⚠️ Unaudited |
| LightRelay | unknown | ethereum | [`0x836cdf...35896e`](./contracts/ethereum-1/0x836cdfe63fe2d63f8bdb69b96f6097f36635896e/) | ⚠️ Unaudited |
| LightRelayMaintainerProxy | unknown | ethereum | [`0x4ca2f6...efa3c8`](./contracts/ethereum-1/0x4ca2f6206da1a7cb8155fea68797efdf25efa3c8/) | ⚠️ Unaudited |
| LockedTokenCommon | token | ethereum | 3 deployments: ethereum [`0x373eb6...0868e6`](./contracts/ethereum-1/0x373eb6a735cc9bc12baa88a9b438759e750868e6/); ethereum `0x70755a...62cb8a`; ethereum `0xbe194e...cfbab3` | ⚠️ Unaudited |
| LockedTokenGrant | token | ethereum | [`0x0746e3...8fafee`](./contracts/ethereum-1/0x0746e3c84bdfe4bc2504b4c84f93f5baa38fafee/) | ⚠️ Unaudited |
| LockReleaseTokenPoolAndProxy | core_logic | ethereum | 33 deployments: ethereum [`0x0d7368...521fc0`](./contracts/ethereum-1/0x0d736853812a12f085de867adf4ea4aba9521fc0/); ethereum `0x2ccd6b...52b0f6`; ethereum `0x2e3c68...b10f73`; ethereum `0x399949...a3e576`; ethereum `0x45af36...4f8aa3`; ethereum `0x4913fd...e1f196`; ethereum `0x4e6300...371ed0`; ethereum `0x542bf6...95be84`; ethereum `0x5c1667...c57a59`; ethereum `0x61d405...7ef92f`; ethereum `0x6a888f...31480b`; ethereum `0x75a852...0d9799`; ethereum `0x79bc41...721d49`; ethereum `0x89c903...9a6d04`; ethereum `0x8e7ebb...3bcaea`; ethereum `0x9b8fef...db0dcc`; ethereum `0x9c7922...8fe192`; ethereum `0x9e72f9...8c75a0`; ethereum `0x9ec9f9...ec50f0`; ethereum `0xa27501...a5bbbd`; ethereum `0xa7689c...3a660f`; ethereum `0xac3453...5bf95b`; ethereum `0xafcc99...0bdd1d`; ethereum `0xbdcc99...0218b7`; ethereum `0xbfc86c...e63351`; ethereum `0xc2ef2f...379979`; ethereum `0xc55d7b...c01b79`; ethereum `0xe31009...291739`; ethereum `0xe48320...8ae86f`; ethereum `0xe742e9...c5810e`; ethereum `0xead31b...26461d`; ethereum `0xf57fc1...9ee89a`; ethereum `0xf6c88f...c11b99` | ⚠️ Unaudited |
| LockReleaseTokenPoolUpgradeable | core_logic | ethereum | 14 deployments: ethereum [`0x03e342...4ee0f6`](./contracts/ethereum-1/0x03e342731c08fddc34cfb43e91cb3a7e424ee0f6/); ethereum `0x04f522...707580`; ethereum `0x0d53c3...2d5a89`; ethereum `0x68a6f8...586e67`; ethereum `0x7ff02b...beb9a5`; ethereum `0x9cb621...ee9c1b`; ethereum `0xa9fa97...7d0efb`; ethereum `0xad793e...ffdc34`; ethereum `0xd23f06...7598fa`; ethereum `0xdc3994...1effba`; ethereum `0xe5de32...b4b995`; ethereum `0xe87a62...f12303`; ethereum `0xecc7a1...90146b`; ethereum `0xf7de0d...d55cc8` | ⚠️ Unaudited |
| Locks | unknown | ethereum | [`0x6c84a8...d0de40`](./contracts/ethereum-1/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| LPRewardsKEEPETH | unknown | ethereum | 3 deployments: ethereum [`0x47a5f2...9d6f44`](./contracts/ethereum-1/0x47a5f2ffdf66d13ed7e317581f458d09b49d6f44/); ethereum `0x81c51d...3f036f`; ethereum `0xb3d03a...55cf6b` | ⚠️ Unaudited |
| LPRewardsTBTCSaddle | unknown | ethereum | 2 deployments: ethereum [`0x78aa83...482edd`](./contracts/ethereum-1/0x78aa83bd6c9de5de0a2231366900ab060a482edd/); ethereum `0xa1038b...3df863` | ⚠️ Unaudited |
| LPRewardsTBTCv2Saddle | unknown | ethereum | 2 deployments: ethereum [`0x6ad9e8...03f76d`](./contracts/ethereum-1/0x6ad9e8e5236c0e2cf6d755bb7be4eabcbc03f76d/); ethereum `0xb4c357...fa6fa9` | ⚠️ Unaudited |
| ManagedGrantFactory | registry | ethereum | [`0x43cf9e...31964e`](./contracts/ethereum-1/0x43cf9e26857b188868051bdcfacedbb38531964e/) | ⚠️ Unaudited |
| MasterChef | unknown | ethereum | [`0xc2edad...a888cd`](./contracts/ethereum-1/0xc2edad668740f1aa35e4d8f227fb8e17dca888cd/) | ⚠️ Unaudited |
| MemoryPageBatcher | periphery | ethereum | [`0xa0f50d...30eab3`](./contracts/ethereum-1/0xa0f50deff3aba037dd182eb594bdb637a130eab3/) | ⚠️ Unaudited |
| MemoryPageFactRegistry | registry | ethereum | 5 deployments: ethereum [`0x28a074...74be52`](./contracts/ethereum-1/0x28a074b965f506a8adf6e28c9b29a5e0de74be52/); ethereum `0x408645...0770fa`; ethereum `0x43f421...9c86e2`; ethereum `0xe583bc...2ec460`; ethereum `0xfd1456...7fd1b4` | ⚠️ Unaudited |
| MerkleStatementContract | operational_periphery | ethereum | 5 deployments: ethereum [`0x097c4f...90700e`](./contracts/ethereum-1/0x097c4ff19cc326d0430151bdc3fd597e8290700e/); ethereum `0x228a27...8d9ce2`; ethereum `0x32a91f...58fdad`; ethereum `0x5899ef...f65fa4`; ethereum `0x634dcf...45804c` | ⚠️ Unaudited |
| MezoAllocator | operational_periphery | ethereum | 3 deployments: ethereum [`0x3e1d7e...e2b5df`](./contracts/ethereum-1/0x3e1d7ea6c2f5a39e90a21450a57269ca50e2b5df/); ethereum `0xb90fda...e20122`; ethereum `0xb9ee96...25f423` | ⚠️ Unaudited |
| MezoBridge | operational_periphery | ethereum | 16 deployments: ethereum [`0x1af817...27d1f5`](./contracts/ethereum-1/0x1af817c36708fd0d057c87a51c92fbb0e527d1f5/); ethereum `0x285a02...bcb589`; ethereum `0x2c5e9a...91389a`; ethereum `0x2ca0a2...f66c4c`; ethereum `0x3d282c...5ce889`; ethereum `0x40b166...9ad9eb`; ethereum `0x4e4af5...0d1691`; ethereum `0x5f6822...c22ee6`; ethereum `0x668479...12159f`; ethereum `0x7e994d...6b6cd9`; ethereum `0x874e28...9d7f2c`; ethereum `0xb98a5f...f628e7`; ethereum `0xd23d70...c2c8c8`; ethereum `0xea332f...d9d86c`; ethereum `0xf6680e...e6908c`; ethereum `0xfccde7...94069d` | ⚠️ Unaudited |
| MintManager | governance | ethereum | [`0xa4d28d...ed7f20`](./contracts/ethereum-1/0xa4d28d9fff539d6e1972ce3cf9c4577856ed7f20/) | ⚠️ Unaudited |
| NativeBTCDepositor | unknown | ethereum | 10 deployments: ethereum [`0x254e2f...c94b0d`](./contracts/ethereum-1/0x254e2f7bcb4c5892d67d3c51b2c5b50d93c94b0d/); ethereum `0x2fd204...8ef918`; ethereum `0x359ee7...1caea1`; ethereum `0x466615...bafd3f`; ethereum `0x6c2c43...02b135`; ethereum `0x809e35...c15714`; ethereum `0x9e821b...4fec52`; ethereum `0xad7c6d...c9aaa5`; ethereum `0xc3ae00...610924`; ethereum `0xdd5a2d...08f75c` | ⚠️ Unaudited |
| NoOp | unknown | base | 23 deployments: ethereum `0x1d5b85...590daf`; ethereum `0x327cc9...d74114`; ethereum `0x3ddb7e...90d409`; ethereum `0x52b952...78c35a`; ethereum `0x70ce34...ecbd94`; ethereum `0x8737f3...b7ade0`; ethereum `0xda4413...e76887`; ethereum `0xe9c3d2...39079a`; base [`0x0972e6...adb887`](./contracts/base-8453/0x0972e6062eac0fe8686d82ea010504066dadb887/); base `0x122a60...d280bf`; base `0x18d917...cf4a35`; base `0x5c759e...afa32d`; base `0x5e220f...eae016`; base `0x5e4dfc...247cc3`; base `0x744596...4c5340`; base `0x94c70c...93d063`; base `0xa42b5f...5faee3`; base `0xa981a3...8b5d95`; base `0xaf3fff...f94789`; base `0xb08e45...04c637`; base `0xb4d2e4...ab8985`; base `0xc4e0b2...c09e5b`; base `0xeffee5...ca8ab3` | ⚠️ Unaudited |
| NttManager | governance | ethereum | 18 deployments: ethereum [`0x075108...1d6363`](./contracts/ethereum-1/0x075108f275ed81c9cfc01065e6e50ceea81d6363/); ethereum `0x13916d...40686a`; ethereum `0x2eea07...84623c`; ethereum `0x529315...f4477e`; ethereum `0x5d8154...977a5f`; ethereum `0xce09df...85ce32`; ethereum `0xdf7feb...b521cf`; ethereum `0xf5a089...ad592b`; base `0x0c46f4...2ede4f`; base `0x132254...3d26f7`; base `0x2663a2...c5d2b9`; base `0x3eb418...cd1bc1`; base `0x4a4537...048285`; base `0x7d6151...c38366`; base `0x964d45...2ec157`; base `0xa29d7a...456299`; base `0xbf5180...f5f491`; base `0xdf6542...41f4c4` | ⚠️ Unaudited |
| OnchainVaults | core_logic | ethereum | [`0xfcee62...7d99d5`](./contracts/ethereum-1/0xfcee62af74a63906c8adb9b3364ca290d47d99d5/) | ⚠️ Unaudited |
| OnDemandSPV | unknown | ethereum | [`0x1531b6...a4b154`](./contracts/ethereum-1/0x1531b6e3d51bf80f634957df81a990b92da4b154/) | ⚠️ Unaudited |
| OrderRegistry | registry | ethereum | [`0x5ec343...3a4bb6`](./contracts/ethereum-1/0x5ec34376205e99f5314cd71436afda100f3a4bb6/) | ⚠️ Unaudited |
| OutsourceDepositLogging | unknown | ethereum | [`0x478409...ec29ed`](./contracts/ethereum-1/0x478409d856cd759cbfaa6639d88b7cdcb8ec29ed/) | ⚠️ Unaudited |
| PedersenHashPointsXColumn | unknown | ethereum | 6 deployments: ethereum [`0x047dd4...7e86d1`](./contracts/ethereum-1/0x047dd4275bbdc1ee6b8bf026239e203c617e86d1/); ethereum `0x3d571a...9682bb`; ethereum `0x41c432...da3989`; ethereum `0xa62f35...1f0f86`; ethereum `0xc4f213...d18940`; ethereum `0xdc596b...1d9e70` | ⚠️ Unaudited |
| PedersenHashPointsYColumn | unknown | ethereum | 6 deployments: ethereum [`0x1a6f3b...5899ed`](./contracts/ethereum-1/0x1a6f3bd4e4b80f85a0b1974b73d981f3295899ed/); ethereum `0x519da5...096002`; ethereum `0x7f81ad...d899e1`; ethereum `0xa55c0f...f4b6c2`; ethereum `0xa87710...21f37f`; ethereum `0xfd12a1...bbe7fd` | ⚠️ Unaudited |
| PermissiveStakingPolicy | operational_periphery | ethereum | [`0x1b612f...9acd53`](./contracts/ethereum-1/0x1b612f89eee49b0fb1dcd429cf2109a9699acd53/) | ⚠️ Unaudited |
| PerpetualEscapeVerifier | periphery | ethereum | [`0xaadfdb...37f7bd`](./contracts/ethereum-1/0xaadfdb9cac145c65f2284fbe24600d07fb37f7bd/) | ⚠️ Unaudited |
| PerpetualForcedActions | unknown | ethereum | 4 deployments: ethereum [`0x229bbd...a4fe21`](./contracts/ethereum-1/0x229bbdf97ebc4993efe1433c0ae4a0be79a4fe21/); ethereum `0x31e2d9...423f64`; ethereum `0x34e7cf...b55035`; ethereum `0xf1f087...e203ca` | ⚠️ Unaudited |
| PerpetualState | token | ethereum | 4 deployments: ethereum [`0x45de24...ba0175`](./contracts/ethereum-1/0x45de249eea8f9cdb70943b17ccedeb42f5ba0175/); ethereum `0x5bfbe8...bb93da`; ethereum `0xbdc6c9...2b3c41`; ethereum `0xdd5f42...48a859` | ⚠️ Unaudited |
| PerpetualTokensAndRamping | token | ethereum | 4 deployments: ethereum [`0x1bc9c6...8b9310`](./contracts/ethereum-1/0x1bc9c618b7fa6b5efaad31dc801eb55c608b9310/); ethereum `0x3f3a13...0f2809`; ethereum `0x564ea7...5ad058`; ethereum `0x8f62a4...6ff8da` | ⚠️ Unaudited |
| PhasedEscrow | operational_periphery | ethereum | 4 deployments: ethereum [`0x964d45...2ec157`](./contracts/ethereum-1/0x964d45256c73df0239a26216cec155d7e12ec157/); ethereum `0x973005...8a0f0a`; ethereum `0x991cc3...ac65f9`; ethereum `0xfa2390...04b1cd` | ⚠️ Unaudited |
| PlainTransferEscrowBeneficiary | operational_periphery | ethereum | [`0x8fa3ef...3666c0`](./contracts/ethereum-1/0x8fa3ef45137c3aff337e42f98023c1d7dd3666c0/) | ⚠️ Unaudited |
| PolygonRoot | unknown | ethereum | 2 deployments: ethereum [`0x51825d...0cacb3`](./contracts/ethereum-1/0x51825d6e893c51836dc9c0edf3867c57cd0cacb3/); ethereum `0xec20ed...0ff583` | ⚠️ Unaudited |
| Portal | unknown | ethereum | 7 deployments: ethereum [`0x0b459c...ddeafd`](./contracts/ethereum-1/0x0b459cae3f5f91469b910a8811723606b2ddeafd/); ethereum `0x2dfdeb...88076b`; ethereum `0x3bba45...23548e`; ethereum `0xab13b8...5b8a39`; ethereum `0xb3696c...ab64d8`; ethereum `0xd7097a...46fe60`; ethereum `0xeaaf2b...502216` | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey0Column | unknown | ethereum | 8 deployments: ethereum [`0x21578b...31ea8f`](./contracts/ethereum-1/0x21578b24f86adf6f59c406f641f693745c31ea8f/); ethereum `0x37070f...db1abe`; ethereum `0x8004e8...3e16a6`; ethereum `0xc9a02d...44a540`; ethereum `0xdf1075...bab090`; ethereum `0xe7b835...573293`; ethereum `0xe8b13f...d75859`; ethereum `0xedffea...dbc573` | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey1Column | unknown | ethereum | 8 deployments: ethereum [`0x1e8e41...3d5a94`](./contracts/ethereum-1/0x1e8e41141347e01f33d84718b7f4cefb433d5a94/); ethereum `0x9d820b...cf95fc`; ethereum `0xb4711a...28e267`; ethereum `0xc2969a...01ac5f`; ethereum `0xd7a713...6d1ee6`; ethereum `0xe58327...1f810d`; ethereum `0xe5ac93...f68fd0`; ethereum `0xf0b58e...9e05fc` | ⚠️ Unaudited |
| PoseidonPoseidonFullRoundKey2Column | unknown | ethereum | 8 deployments: ethereum [`0x2b1590...c46045`](./contracts/ethereum-1/0x2b159027d7f0e23d5c15b0517e33dda838c46045/); ethereum `0x4576ba...50ba0b`; ethereum `0x487175...d5d2c8`; ethereum `0x4fb05b...a1f835`; ethereum `0x655a91...ac09c1`; ethereum `0x698339...dc7755`; ethereum `0xb5a575...55660d`; ethereum `0xde8d55...6d41fd` | ⚠️ Unaudited |
| PoseidonPoseidonPartialRoundKey0Column | unknown | ethereum | 8 deployments: ethereum [`0x1db84e...01e975`](./contracts/ethereum-1/0x1db84e79e8daec762d6adaa5bf358a4ba001e975/); ethereum `0x5318ed...83953e`; ethereum `0x53dac4...a14451`; ethereum `0x75d887...bbca0a`; ethereum `0x812c2a...b449cd`; ethereum `0xb45b87...5ea7a0`; ethereum `0xbaec49...d717ef`; ethereum `0xbbacbd...351575` | ⚠️ Unaudited |
| PoseidonPoseidonPartialRoundKey1Column | unknown | ethereum | 8 deployments: ethereum [`0x032e5c...b43046`](./contracts/ethereum-1/0x032e5cdb729ce94638aca9e82a22688109b43046/); ethereum `0x09807c...c6b191`; ethereum `0x14106a...7ce0c2`; ethereum `0x20f109...ec868e`; ethereum `0x4d0e80...d874b8`; ethereum `0x62960c...2eda12`; ethereum `0xc1cd71...433ccc`; ethereum `0xecc282...790e20` | ⚠️ Unaudited |
| PriceRegistry | operational_periphery | ethereum | 4 deployments: ethereum [`0x020082...a81985`](./contracts/ethereum-1/0x020082a7a9c2510e1921116001152dee4da81985/); ethereum `0x8c9b2e...b958ad`; ethereum `0xdafe69...b9b03d`; ethereum `0xed1a8c...d2d4f5` | ⚠️ Unaudited |
| Proxy | proxy | ethereum | 6 deployments: ethereum [`0x0ff801...c3ce9d`](./contracts/ethereum-1/0x0ff801483577388160779881a95d023b3dc3ce9d/); ethereum `0x5fa444...8ab5b4`; ethereum `0x935bf7...fe8a89`; ethereum `0xb9c81a...487a0d`; ethereum `0xcd7a4f...4948bd`; ethereum `0xef0e19...543529` | ⚠️ Unaudited |
| ProxyUtils | unknown | ethereum | [`0x46fa00...5d7167`](./contracts/ethereum-1/0x46fa005e07e51732778a3745145b0d29ad5d7167/) | ⚠️ Unaudited |
| ProxyV5 | unknown | ethereum | 7 deployments: ethereum [`0x038968...b0ae78`](./contracts/ethereum-1/0x03896849091ad2905eb46971117fd89beab0ae78/); ethereum `0x3641bf...c16b10`; ethereum `0x3cde3e...0519a8`; ethereum `0x5e2cf7...df67a9`; ethereum `0x75c881...493f7d`; ethereum `0xa3f44b...2c929e`; ethereum `0xd20f04...bcdff4` | ⚠️ Unaudited |
| RandomBeacon | registry | ethereum | [`0x5499f5...e3d80b`](./contracts/ethereum-1/0x5499f54b4a1cb4816eefcf78962040461be3d80b/) | ⚠️ Unaudited |
| RandomBeaconChaosnet | registry | ethereum | [`0xf23fc1...b0294a`](./contracts/ethereum-1/0xf23fc18ece6afe7fb57ba59979e8600bb4b0294a/) | ⚠️ Unaudited |
| RandomBeaconGovernance | registry | ethereum | [`0xd0a308...cb1c63`](./contracts/ethereum-1/0xd0a3088ed9fff4357b79cd3896bd38876fcb1c63/) | ⚠️ Unaudited |
| RebateStaking | unknown | ethereum | 5 deployments: ethereum [`0x018473...f85a45`](./contracts/ethereum-1/0x0184739c32edc3471d3e4860c8e39a5f3ff85a45/); ethereum `0x25aaf0...2ec22f`; ethereum `0x326adc...dd8735`; ethereum `0x6e25ef...3ccbee`; ethereum `0xe490c8...1e2535` | ⚠️ Unaudited |
| RedemptionScript | unknown | ethereum | [`0x0972e6...adb887`](./contracts/ethereum-1/0x0972e6062eac0fe8686d82ea010504066dadb887/) | ⚠️ Unaudited |
| RedemptionWatchtower | unknown | ethereum | 2 deployments: ethereum [`0xb8df0a...38e6d3`](./contracts/ethereum-1/0xb8df0a949ac45ff8f401553a1dcb742feb38e6d3/); ethereum `0xbfd04e...cf1daf` | ⚠️ Unaudited |
| RegistryModuleOwnerCustom | registry | ethereum | [`0x13022e...b2e533`](./contracts/ethereum-1/0x13022e3e6c77524308bd56aed716e88311b2e533/) | ⚠️ Unaudited |
| RiskManagerV1 | governance | ethereum | [`0x2355d7...f62b30`](./contracts/ethereum-1/0x2355d701d8d85ed161ab66a0a7e759c463f62b30/) | ⚠️ Unaudited |
| RMN | unknown | ethereum | 2 deployments: ethereum [`0x2c1c02...4948f3`](./contracts/ethereum-1/0x2c1c028aa39db7324a2d11333315efbea84948f3/); ethereum `0xdcd484...adf84f` | ⚠️ Unaudited |
| RolesExternalInitializer | unknown | ethereum | [`0x7eb822...1becce`](./contracts/ethereum-1/0x7eb8220714e9f08073177dcb3a4a57d2f91becce/) | ⚠️ Unaudited |
| Router | adapter | ethereum | 4 deployments: ethereum [`0x7fb589...fde90b`](./contracts/ethereum-1/0x7fb5895cbcb3264dc7984e8f61037f5d37fde90b/); ethereum `0x80226f...146f7d`; ethereum `0x8c6d31...81ed46`; ethereum `0xe561d5...9a1476` | ⚠️ Unaudited |
| SignerBondsManualSwap | unknown | ethereum | [`0x43faf6...f7442f`](./contracts/ethereum-1/0x43faf6fe84e01dd186cfeb9ea2f0854a1ef7442f/) | ⚠️ Unaudited |
| StakedBPT | token | ethereum | [`0x46c509...7b1ee2`](./contracts/ethereum-1/0x46c5098f73fa656e82d7e9afbf3c00b32b7b1ee2/) | ⚠️ Unaudited |
| StakerRewardsBeneficiary | core_logic | ethereum | [`0xbb59f4...8a0b81`](./contracts/ethereum-1/0xbb59f486135145ad247b82f9cdf52be4a58a0b81/) | ⚠️ Unaudited |
| StakingPoolRewardsEscrowBeneficiary | operational_periphery | ethereum | 8 deployments: ethereum [`0x118b76...069bd8`](./contracts/ethereum-1/0x118b7642b91bcf02c565a3c417534e29e4069bd8/); ethereum `0x143a06...f7ff51`; ethereum `0x68c912...2b32df`; ethereum `0x8381e6...047037`; ethereum `0xcb3570...938e83`; ethereum `0xebadc7...e0ce3a`; ethereum `0xee8287...1a6cef`; ethereum `0xf6a1ca...e50648` | ⚠️ Unaudited |
| StakingPortBacker | unknown | ethereum | [`0x236aa5...ab794b`](./contracts/ethereum-1/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | ⚠️ Unaudited |
| StarkExchange | unknown | ethereum | 7 deployments: ethereum [`0x29db02...8a1191`](./contracts/ethereum-1/0x29db022dbc824b78a0da699a77e3d177f08a1191/); ethereum `0x7a7f9c...987f9d`; ethereum `0xa64c6c...e68479`; ethereum `0xaab13f...ae1f16`; ethereum `0xb62bcd...f1945c`; ethereum `0xc3b2ec...00ddc0`; ethereum `0xdf2f24...b0f583` | ⚠️ Unaudited |
| StarkExState | unknown | ethereum | 2 deployments: ethereum [`0x28f234...42e91f`](./contracts/ethereum-1/0x28f2349b28c1bc30a2ab52fc1e04027f7d42e91f/); ethereum `0x67e198...1e1f1d` | ⚠️ Unaudited |
| StarkgateManager | governance | ethereum | 6 deployments: ethereum [`0x0a9558...4d9359`](./contracts/ethereum-1/0x0a9558ce70daa574c715616d68978808504d9359/); ethereum `0x0c5ae9...7d5b60`; ethereum `0x3a546c...cb31cf`; ethereum `0x64608b...7bbb33`; ethereum `0x953bd8...896e67`; ethereum `0xd39be4...5fcb01` | ⚠️ Unaudited |
| StarkgateRegistry | registry | ethereum | 7 deployments: ethereum [`0x1268cc...c96812`](./contracts/ethereum-1/0x1268cc171c54f2000402dff20e93e60df4c96812/); ethereum `0x39c3b4...4c8cec`; ethereum `0x564be3...04b5c8`; ethereum `0x642f04...b07dd7`; ethereum `0x7a5256...299e07`; ethereum `0x7baa11...0eda10`; ethereum `0xf710fd...699d40` | ⚠️ Unaudited |
| Starknet | unknown | ethereum | 8 deployments: ethereum [`0x16938e...4177e8`](./contracts/ethereum-1/0x16938e4b59297060484fa56a12594d8d6f4177e8/); ethereum `0x279301...b71e04`; ethereum `0x47103a...8eb5bc`; ethereum `0x6e0acf...464e24`; ethereum `0x739a65...1ffe42`; ethereum `0x9961d3...0f172a`; ethereum `0xa964d6...f5ed08`; ethereum `0xf338ca...c23640` | ⚠️ Unaudited |
| StarkNetBitcoinDepositor | unknown | ethereum | 2 deployments: ethereum [`0xc9031f...3bc155`](./contracts/ethereum-1/0xc9031f76006da0bd4bfa9e02adf0d448db3bc155/); ethereum `0xd35859...b8b2ca` | ⚠️ Unaudited |
| StarknetERC20Bridge | operational_periphery | ethereum | 8 deployments: ethereum [`0x179fa5...3656a0`](./contracts/ethereum-1/0x179fa59e4d19ac7c7b4e3daa0cd6557a553656a0/); ethereum `0x6ad74d...1fdc85`; ethereum `0x6fa346...f15feb`; ethereum `0x7f2a18...777a71`; ethereum `0x825960...ea8d6c`; ethereum `0xcf5853...a876c2`; ethereum `0xf0b3ee...7225fb`; ethereum `0xf3f62f...7e3df5` | ⚠️ Unaudited |
| StarknetEthBridge | operational_periphery | ethereum | 4 deployments: ethereum [`0x455603...603581`](./contracts/ethereum-1/0x455603ad9ae671f6c1f0f746f24d7904ca603581/); ethereum `0x6efca9...1ff51e`; ethereum `0x95ff25...c7fd95`; ethereum `0xd94f29...23a0e2` | ⚠️ Unaudited |
| StarknetTokenBridge | operational_periphery | ethereum | 22 deployments: ethereum [`0x00b046...dd082b`](./contracts/ethereum-1/0x00b0466f8dc04b0782dbf1a1dfdce333f0dd082b/); ethereum `0x1febb8...1633bb`; ethereum `0x205fef...4762b7`; ethereum `0x2111a4...9866b9`; ethereum `0x264c70...4df778`; ethereum `0x30a155...dbf483`; ethereum `0x3236da...a50124`; ethereum `0x4ea91e...5744d5`; ethereum `0x52c65b...c9b9d7`; ethereum `0x594cca...135d7a`; ethereum `0x5cd684...42379c`; ethereum `0x6095f6...67175a`; ethereum `0x6f3229...9eefd5`; ethereum `0x70a368...59a356`; ethereum `0x9aaa37...96860e`; ethereum `0x9bb621...5af2ed`; ethereum `0x9fada9...b7ea7e`; ethereum `0xa86b9b...32ab10`; ethereum `0xe0d1fa...ba3f18`; ethereum `0xea90d8...6f244e`; ethereum `0xf39d31...563aff`; ethereum `0xf5b6ee...3f69eb` | ⚠️ Unaudited |
| StarkPerpetual | unknown | ethereum | 9 deployments: ethereum [`0x1ce5d7...353c65`](./contracts/ethereum-1/0x1ce5d7f52a8abd23551e91248151ca5a13353c65/); ethereum `0x316761...03eae4`; ethereum `0x32771a...5311fc`; ethereum `0x67bc24...dec5f0`; ethereum `0x8c43c9...abd35d`; ethereum `0xa1d544...52dcbb`; ethereum `0xc4a7c5...34fc74`; ethereum `0xdd8133...528396`; ethereum `0xe53a6e...482e6b` | ⚠️ Unaudited |
| stBTC | unknown | ethereum | 3 deployments: ethereum [`0xdf217e...854017`](./contracts/ethereum-1/0xdf217efd8f3ecb5e837aedf203c28c1f06854017/); ethereum `0xef96b9...cb22c4`; ethereum `0xf71fc6...042a7e` | ⚠️ Unaudited |
| TACoApplication | unknown | ethereum | 7 deployments: ethereum [`0x347cc7...edcf07`](./contracts/ethereum-1/0x347cc7ede7e5517bd47d20620b2cf1b406edcf07/); ethereum `0x66ac6a...f64595`; ethereum `0x76e9e5...6854a8`; ethereum `0x947685...b630b9`; ethereum `0x98f643...6659db`; ethereum `0x9a4c2f...5e2b51`; ethereum `0xafa132...3ae743` | ⚠️ Unaudited |
| TBTCConstants | unknown | ethereum | [`0x63a152...26750d`](./contracts/ethereum-1/0x63a152ea1cd78ac3c7c1fcf1322dc6de1126750d/) | ⚠️ Unaudited |
| TestToken | token | ethereum | [`0xcf0ecb...468746`](./contracts/ethereum-1/0xcf0ecbe2174ef46af58906afb217af0767468746/) | ⚠️ Unaudited |
| Timelock | governance | ethereum | 4 deployments: ethereum [`0x82f080...82b25a`](./contracts/ethereum-1/0x82f08041f1bc1aa399320743f33f75cca482b25a/); ethereum `0x92f2d8...b4913d`; base `0x86b035...b85017`; base `0xaa60f9...3b672f` | ⚠️ Unaudited |
| TimelockController | governance | ethereum | [`0x87f005...75f45f`](./contracts/ethereum-1/0x87f005317692d05baa4193ab0c961c69e175f45f/) | ⚠️ Unaudited |
| TokenAdminRegistry | registry | ethereum | [`0xb22764...c05cb6`](./contracts/ethereum-1/0xb22764f98dd05c789929716d677382df22c05cb6/) | ⚠️ Unaudited |
| TokenholderGovernor | governance | ethereum | [`0xd101f2...6f5447`](./contracts/ethereum-1/0xd101f2b25bcbf992bdf55db67c104fe7646f5447/) | ⚠️ Unaudited |
| TokensAndRamping | token | ethereum | 2 deployments: ethereum [`0x5524cb...cb6298`](./contracts/ethereum-1/0x5524cb52490e01cba4eb64f230cc661780cb6298/); ethereum `0x8b736b...7df087` | ⚠️ Unaudited |
| TokenStakingEscrow | operational_periphery | ethereum | [`0xda534b...681365`](./contracts/ethereum-1/0xda534b567099ca481384133bc121d5843f681365/) | ⚠️ Unaudited |
| TopUps | unknown | ethereum | [`0x41c9b5...79d91a`](./contracts/ethereum-1/0x41c9b5639e3f2f6c61e9b78b2c6ff3746e79d91a/) | ⚠️ Unaudited |
| TransientProxy | unknown | ethereum | 14 deployments: ethereum [`0x03bd59...eb4409`](./contracts/ethereum-1/0x03bd5915b56015773210ab8c8c101849daeb4409/); ethereum `0x108717...c36e02`; ethereum `0x300d75...adc795`; ethereum `0x526ed6...8299d9`; ethereum `0x6a984f...107487`; ethereum `0x995f6c...e4094e`; ethereum `0xaa3f7a...750fae`; ethereum `0xcb5e55...76e8b8`; ethereum `0xce4857...e76dac`; ethereum `0xdb0221...3d6bc2`; ethereum `0xe303a0...717a18`; ethereum `0xe916b5...f48dd0`; ethereum `0xf80fb8...eac9cc`; ethereum `0xff6206...4f9449` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | 3 deployments: ethereum [`0x277d82...3d8b4d`](./contracts/ethereum-1/0x277d82b35fc8cec3bffcad6791a95cd3ca3d8b4d/); ethereum `0x5c6d2d...23cee5`; ethereum `0x60c282...3d5b97` | ⚠️ Unaudited |
| UnderwriterToken | token | ethereum | 2 deployments: ethereum [`0x007854...0df843`](./contracts/ethereum-1/0x007854fdcc9c6f748b435e63745599fb1a0df843/); ethereum `0x2aa24d...df5d8b` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | 2 deployments: ethereum [`0x570242...6507e5`](./contracts/ethereum-1/0x57024267e8272618f9c5037d373043a8646507e5/); ethereum `0x9f624b...980808` | ⚠️ Unaudited |
| UpdatePerpetualConfigExternalInitializer | governance | ethereum | [`0x39bff2...408b8e`](./contracts/ethereum-1/0x39bff2c9f7e377d8466d3180be7dd0ae7d408b8e/) | ⚠️ Unaudited |
| USDCTokenPool | core_logic | ethereum | 2 deployments: ethereum [`0x4a580c...0df59d`](./contracts/ethereum-1/0x4a580c62889ddcd6c2213582270e03ca130df59d/); ethereum `0xa81f4a...0fefda` | ⚠️ Unaudited |
| V3toV45ChangesExternalInitializer | unknown | ethereum | 2 deployments: ethereum [`0x175359...f92ed8`](./contracts/ethereum-1/0x1753593fb64c7338e945e3dac16df92ab1f92ed8/); ethereum `0xd88100...cf5910` | ⚠️ Unaudited |
| VendingMachineV2 | unknown | ethereum | [`0xce1f98...026d4b`](./contracts/ethereum-1/0xce1f983c29f7a6c0c0dfa78c4d8fe7bdfe026d4b/) | ⚠️ Unaudited |
| VendingMachineV3 | unknown | ethereum | [`0x7570a2...6437e6`](./contracts/ethereum-1/0x7570a2350183b4bdf7ca74fad3fc19048e6437e6/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 4 deployments: ethereum [`0x326483...0e86c6`](./contracts/ethereum-1/0x3264834ada73a8b0b132ee52fd5a367cf60e86c6/); ethereum `0x9e5651...72a16c`; ethereum `0xb6881e...8980be`; ethereum `0xdf5e0e...d806a8` | ⚠️ Unaudited |
| WalletCoordinator | unknown | ethereum | 3 deployments: ethereum [`0x10fb59...43ffe5`](./contracts/ethereum-1/0x10fb5943e2f4f67ee6a533dae49b6d4cc443ffe5/); ethereum `0x64ea4b...420093`; ethereum `0x9eae6e...ad32ba` | ⚠️ Unaudited |
| WalletProposalValidator | unknown | ethereum | [`0x30019d...fbdec2`](./contracts/ethereum-1/0x30019d85a86abd3cda1167f4c052690c32fbdec2/) | ⚠️ Unaudited |
| WithBatcher | periphery | ethereum | [`0xf17a2f...926268`](./contracts/ethereum-1/0xf17a2fa46f86b6dfc41cbbbd1a51379d98926268/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | 11 deployments: ethereum [`0x147379...f2d786`](./contracts/ethereum-1/0x147379a0174780570d07d70a14fb244ee5f2d786/); ethereum `0x76ddb3...d18d3e`; ethereum `0x920871...9283b1`; ethereum `0xb7c552...2f7017`; ethereum `0xc3b5d8...5df77c`; base `0x15c465...3f4467`; base `0x27321f...89a3d5`; base `0x307348...338656`; base `0x82ab5f...c76108`; base `0x94afb5...93c193`; base `0xe4b591...a07c8b` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ProxyAdmin | governance | optimism | 24 deployments: ethereum `0x04c3e6...c4495e`; ethereum `0x16a76d...b5c706`; ethereum `0x343e96...5c606e`; ethereum `0x371695...355638`; ethereum `0x5a1659...4b187f`; ethereum `0x5ee284...30d0a0`; ethereum `0x64ecdc...bb4260`; ethereum `0x758279...de43e5`; ethereum `0x794fc0...0ea34b`; ethereum `0x7affa0...92008e`; ethereum `0x890d38...5f67d4`; ethereum `0x92fcbd...8b9a21`; ethereum `0xc8cad4...8e8570`; ethereum `0xd5d30f...1ef917`; ethereum `0xe0d2e1...b970a6`; ethereum `0xf9dae7...d5590b`; optimism [`0x02612d...8a3db3`](./contracts/optimism-10/0x02612d20cc087670a959bb12ca3c5fd56c8a3db3/); polygon `0x1293a5...a15458`; base `0x1293a5...a15458`; base `0x3af1a8...d888de`; base `0x3e765e...474168`; base `0xbbe11c...c41ea7`; arbitrum `0x371695...355638`; arbitrum `0x68c0dc...7214a4` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (127)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x021078...703679` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x035e92...227148` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x03af67...362daf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x04ff65...2d5566` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x052c81...7b50c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0880a6...841610` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0bf8e8...f83f1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0d1d56...8e2767` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0da684...359ff5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0f21d9...5eaf44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0f2bfa...c83127` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x122a60...d280bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x16a023...4f0378` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x181314...4cd838` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x18bf13...d075d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x1bd4f3...feb1ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x21abd6...d10829` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x265cb5...022930` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2663a2...c5d2b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x27a883...114d0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2b7a09...bc05d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x305cab...45d240` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x32574c...6385b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3320fd...2695b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x350df6...de47cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x35cbaf...5bf253` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3d2aca...f37f14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3e6baa...5640b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3e972b...52afd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3f5d59...c9970c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3f7240...a394e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3fa0a9...b61671` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x40f20d...62de26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x41d6f5...5d33a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x465536...26dd03` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x47b3c4...e2e116` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x47f0eb...60f281` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x488551...0ce7b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4a33a6...327c37` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4b440d...505b67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4c27a0...a2b112` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4ddb89...f4ef0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4fcd7d...31860f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x50c188...d7664f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5383bd...fa5838` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x55021f...899e47` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5504ff...9784d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5870f2...81e5fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x599f5d...dc22ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x59b1dd...ffafb1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x59b288...543143` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5a994f...d45fd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5c2ae6...0a0f3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x63ba6a...0e641e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x66136f...9d523c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x691b0d...832dcb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6f49b3...a2369f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x723878...f5b64b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x744596...4c5340` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x78396a...0a081d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7ab577...20da10` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7f025c...889e92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x829242...3f9107` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x834fc8...3322e2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x84a87a...2eda0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x85906d...79c9d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x928899...afc1d8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x928cae...2b5f63` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x93e8b4...f8b16a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x95d7ff...bdd55c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x978e57...27bb88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x97fb21...5a6b75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x98e19c...84f2ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9b4e39...faa3d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa10ad2...9bc747` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa5ab95...d7d6ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa70136...c96d3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa981a3...8b5d95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaac423...65b71f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb006a3...5d33cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb08e45...04c637` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb0ee3a...ca4f61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb1958c...ed4d2c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb8224c...9535a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xbe89e8...e42900` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc065e0...e785f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc08dcc...e5fda6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc14e40...e3e359` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc4e0b2...c09e5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc78aac...674c28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc7a06d...761d4d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc94567...4a9576` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcb54e3...b83c24` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xccfeb9...e0bb4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xce25c9...235cc5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xcfe4a9...3b4056` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd3e418...909888` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd4c956...740bf0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd55a6b...db699e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd6f2c3...a92915` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd8cf88...5d8581` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdb2fff...7085ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdeb49f...d7b8fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdf6542...41f4c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdffec9...4fe804` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe261b3...3616e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5408c...cd468e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5862a...521a7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe59b5b...a8e5a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe93cfa...3824cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe94b16...48c595` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe9e353...7fbb3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xea3d37...534ea2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xed0add...0e1fbc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeec3e1...63239b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf1e3d7...1f2824` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf52a28...e93a57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf816cf...cff738` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf83878...ca422d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf88496...417c31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf9301b...a4c8e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf94d0d...3ffc17` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf983b1...19f345` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfa9061...76c1a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfacc22...065b96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfc1e05...14526b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfe0b8e...3938fe` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [consensys.net/diligence/audits/2020/02/thesis-tbtc-and-keep](https://diligence.security/audits/2020/02/thesis-tbtc-and-keep) | Consensys Diligence | Audit | 2020-03 | stale | Direct | contract_name | 38 | high |
| [cryptographic review](https://diligence.security/audits/2020/03/thesis-cryptographic-review) | ConsenSys Diligence | Audit | 2020-03 | stale | Direct | contract_name | 1 | high |
| [* **Report:** [View Audit 1 PDF]() - [View Audit 2 PDF](https://drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view?usp=sharing)&#x20;](https://drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [* **Report:** [View Audit 1 PDF](https://drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view) - [View Audit 2 PDF]()&#x20;](https://drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view?usp=sharing) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [* **Report**: [View PDF]()](https://drive.google.com/file/d/1oQJO-fW4ZUUS_DQovOtaB9CB7U6YT0AP/view?usp=sharing) | unknown | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [* **Report**: [View PDF]()](https://drive.google.com/file/d/1RW4Bb3Rd_HdOU8pVxLpIRXCXDYKubeIp/view?usp=sharing) | unknown | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [* **Report:** [View PDF]()](https://drive.google.com/file/d/1Sxc5qx69qQtqdy7AtscoAHyGaSyqyYJM/view?usp=sharing) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [* **Report:** [View PDF]()](https://drive.google.com/file/d/1rbVYly_VuW6LdAwhpbgxO8DpNiBn-6Vk/view?usp=sharing) | unknown | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [* **Report:** [View PDF]()](https://www.notion.so/threshold-labs/tBTC-Direct-Minting-Audit-Reports-1ec45959b48e8008ab0fe7b20a130760?source=copy_link) | Code4rena | Contest | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [* **Report:** [View PDF]()](https://github.com/thesis/defense_public_security-audit-reports/blob/main/PDFs/240411_Thesis_Defense-Threshold_tBTC_Base_Smart_Contracts_Security_Audit_Report.pdf) | Thesis Defense | Audit | 2024-04 | stale | Direct | contract_name | 20 | high |
| [* **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-solana-smart-contracts/)](https://leastauthority.com/blog/audit-of-keep-network-solana-smart-contracts) | Least Authority | Audit | 2023-08 | stale | Direct | n/a | 0 | n/a |
| [* **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-tbtc-bridge-v2/)](https://github.com/threshold-network/security-audits/blob/main/29-Sep-2022-LeastAuthority.pdf) | Least Authority | Audit | 2022-09 | stale | Direct | contract_name | 55 | high |
| [* **Report:** [View Audit PDF](https://github.com/threshold-network/security-audits/blob/main/29-Sep-2022-LeastAuthority.pdf) - [Link to Least Authority]()](https://leastauthority.com/blog/audit-of-keep-network-tbtc-bridge-v2) | Least Authority | Audit | 2022-09 | stale | Direct | n/a | 0 | n/a |
| [* **Report:** [View Audit PDF]() - [Link to CertiK](https://www.certik.com/projects/threshold-network)](https://github.com/threshold-network/security-audits/blob/main/19-Nov-2021-CertiK.pdf) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | 4 | high |
| [* **Report:** [View Audit PDF](https://github.com/threshold-network/security-audits/blob/main/19-Nov-2021-CertiK.pdf) - [Link to CertiK]()](https://skynet.certik.com/projects/threshold-network) | CertiK | Audit | 2021-11 | stale | Direct | contract_name | 5 | high |
| [* **Report:** [View Audit PDF]() - [Link to ChainSecurity](https://chainsecurity.com/security-audit/threshold-network)](https://github.com/threshold-network/security-audits/blob/main/09-Nov-2021-ChainSecurity.pdf) | ChainSecurity | Audit | 2021-11 | stale | Direct | contract_name | 17 | high |
| [* **Report:** [View Audit PDF](https://github.com/threshold-network/security-audits/blob/main/09-Nov-2021-ChainSecurity.pdf) - [Link to ChainSecurity]()](https://www.chainsecurity.com/security-audit/threshold-network) | ChainSecurity | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [29-Aug-2023-LeastAuthority.pdf](https://github.com/threshold-network/security-audits/blob/main/29-Aug-2023-LeastAuthority.pdf) | LeastAuthority | Audit | 2023-08 | stale | Direct | contract_name | 1 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x85eee3...09afec`](./contracts/ethereum-1/0x85eee30c52b0b379b046fb0f85f4f3dc3009afec/) | KeepToken | token | $24,650,056.38 | Verified native implementation with $24,650,056.38 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1321f1...9bb288`](./contracts/ethereum-1/0x1321f1f1aa541a56c31682c57b80ecfccd9bb288/) | ArcxTokenV2 | token | $949,182.70 | Verified native implementation with $949,182.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c2327...568ea6`](./contracts/ethereum-1/0x2c23276107b45e64c8c59482f4a24f4f2e568ea6/) | bVault | core_logic | $301,884.96 | Verified native implementation with $301,884.96 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xebd126...02bde8`](./contracts/ethereum-1/0xebd12620e29dc6c452db7b96e1f190f3ee02bde8/) | BACDAIPool | core_logic | $88,280.57 | Verified native implementation with $88,280.57 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x518821...429fd4`](./contracts/ethereum-1/0x51882184b7f9beed6db9c617846140da1d429fd4/) | BACUSDCPool | core_logic | $86,330.94 | Verified native implementation with $86,330.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2833bd...877e44`](./contracts/ethereum-1/0x2833bdc5b31269d356bdf92d0fd8f3674e877e44/) | BACUSDTPool | core_logic | $71,162.70 | Verified native implementation with $71,162.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9bffad...fd7d9d`](./contracts/ethereum-1/0x9bffad7a6d5f52dbc51cae33e419793c72fd7d9d/) | StakingAccrualERC20V5 | token | $12,500.28 | Verified native implementation with $12,500.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21b86f...d28d5d`](./contracts/ethereum-1/0x21b86fdc93f23fd52022a283828df8e808d28d5d/) | AssetPool | core_logic | $9,398.75 | Verified native implementation with $9,398.75 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc93528...793d84`](./contracts/ethereum-1/0xc935285b0d88069305431dace0c3c01d7e793d84/) | TokenPool | core_logic | $4,461.47 | Verified native implementation with $4,461.47 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0238d2...25e2e4`](./contracts/ethereum-1/0x0238d2c272f17cf11aedb08cde515d56ed25e2e4/) | LockReleaseTokenPool | core_logic | $1,047.35 | Verified native implementation with $1,047.35 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc42a2...93305c`](./contracts/ethereum-1/0xdc42a21e38c3b8028b01a6b00d8dbc648f93305c/) | BACSUSDPool | core_logic | $10.00 | Verified native implementation with $10.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76bac8...4c6e32`](./contracts/ethereum-1/0x76bac85e1e82cd677faa2b3f00c4a2626c4c6e32/) | ERC20Peg | token | $2.00 | Verified native implementation with $2.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x369fce...17f9cc`](./contracts/ethereum-1/0x369fce62b33512b2a883cf217635ee28dd17f9cc/) | ReimbursementPool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a6e0d...afd18d`](./contracts/ethereum-1/0x4a6e0d0189c1d09eb4c63a53693d2be26cafd18d/) | AcreMultiAssetVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36d293...70f1ff`](./contracts/ethereum-1/0x36d293d15168ccdf93d1294d4a51a6d6c070f1ff/) | AdaptiveStakingPolicy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f7191...74591b`](./contracts/ethereum-1/0x0f7191df5430c2b43f0cfaf9b444deb57c74591b/) | Allowlist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x533a7f...161dce`](./contracts/ethereum-1/0x533a7f4be5453513049eb94a2b115f2cce161dce/) | AllVerifiers | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x773a4c...37b3c4`](./contracts/ethereum-1/0x773a4cacbca8e3704f8f7842531eab83e437b3c4/) | AuctionBidder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc462d8...14c3bf`](./contracts/ethereum-1/0xc462d8ee54953e7d7bf276612b75387ea114c3bf/) | BACyCRVPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b8e50...f831ca`](./contracts/ethereum-1/0x1b8e50ec9fbf844c3671bc178df8eadfcff831ca/) | BatchedPhasedEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x613d08...7a8964`](./contracts/ethereum-1/0x613d088f2e5a2ed91635016483dafa3cd47a8964/) | BatchWithdraw | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fec9c...ffbfff`](./contracts/ethereum-1/0x8fec9cf78087064f1f32269f68f94ae343ffbfff/) | BeaconBackportRewards | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24c0fb...f07647`](./contracts/ethereum-1/0x24c0fbd3ff8e742080c60881f8527ca3baf07647/) | BeaconBackportRewardsEscrowBeneficiary | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x024a69...2abd84`](./contracts/ethereum-1/0x024a697788918007592572f7cd020df2bc2abd84/) | BeaconDkg | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4edc83...653f94`](./contracts/ethereum-1/0x4edc83c5c5b0c41a594371485554b95280653f94/) | BeaconDkgValidator | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67a26f...941ec0`](./contracts/ethereum-1/0x67a26f2ebdb2448605936fe9a5f496cda7941ec0/) | BeaconInactivity | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b15fe...e68ff0`](./contracts/ethereum-1/0x9b15fef1bfa4aff9b51f7b3b2df4d197cde68ff0/) | BeaconRewardsEscrowBeneficiary | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04b94f...0f4d32`](./contracts/ethereum-1/0x04b94f55780682478c8d8329368aaafd320f4d32/) | BitcoinDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f2766...4839a5`](./contracts/ethereum-1/0x1f2766373e74f268d5dbde32a395eb1c924839a5/) | BitcoinRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ec9f7...7e37da`](./contracts/ethereum-1/0x0ec9f76202a7061eb9b3a7d6b59d36215a7e37da/) | BlackPoolToken | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x596e3f...363410`](./contracts/ethereum-1/0x596e3f6241cf1435f91363cb023def2329363410/) | BlockPrice | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c46f4...2ede4f`](./contracts/ethereum-1/0x0c46f496c410465975a427e34a976fc15a2ede4f/) | BondedSortitionPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x057152...1fe1b4`](./contracts/ethereum-1/0x057152db365b47851b0a0bd431644b8ee21fe1b4/) | BurnMintTokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08b405...7b5abb`](./contracts/ethereum-1/0x08b4058f16d243c977ea1fe91b20af31057b5abb/) | BurnMintTokenPoolAndProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45a103...f84b6b`](./contracts/ethereum-1/0x45a103142585bdfc49cdb137f2a45d1ae7f84b6b/) | BurnWithFromMintTokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x476eef...240b93`](./contracts/ethereum-1/0x476eefef46e0d65e1e371fe093696259b1240b93/) | BurnWithFromMintTokenPoolAndProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x192292...8a8636`](./contracts/ethereum-1/0x192292817680196a0215a50b07d1c5e7ab8a8636/) | CairoBootloaderProgram | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09e429...4d5627`](./contracts/ethereum-1/0x09e429b3a3281e689d5468be2dbca3905b4d5627/) | ChangeVerifiersExternalInitializer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x23cab3...9494e4`](./contracts/ethereum-1/0x23cab3cf1aa7b929df5e9f3712aca3a6fb9494e4/) | Committee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d7b62...6d811a`](./contracts/ethereum-1/0x7d7b622c07f216d99efc3efb9cf71872f46d811a/) | CoveragePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22428b...2ee39b`](./contracts/ethereum-1/0x22428b09efc87709ab49a77da6f9ce4ffa2ee39b/) | CoveragePoolBeneficiary | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04be0e...efa8eb`](./contracts/ethereum-1/0x04be0e2d5eccc744be21bfb28d91d4a3cbefa8eb/) | CpuConstraintPoly | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x015381...442cd6`](./contracts/ethereum-1/0x015381651f240ed6c44122dcba6cf807c9442cd6/) | CpuFrilessVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ecfb5...33f08a`](./contracts/ethereum-1/0x1ecfb5cd55dfd68a54f58f77b729b8a1c933f08a/) | DelegatedWithBalanceWeight | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8695ff...ae1c80`](./contracts/ethereum-1/0x8695ff199a1216fc7e2bf97303bf662babae1c80/) | DepositStates | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x392635...ac9b95`](./contracts/ethereum-1/0x392635646bc22fc13c86859d1f02b27974ac9b95/) | DepositSweep | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82ab5f...c76108`](./contracts/ethereum-1/0x82ab5f02993bf312d9aca03157f26febebc76108/) | ECDSABackportRewardsEscrowBeneficiary | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8263ef...46f764`](./contracts/ethereum-1/0x8263efcb8f28246697585c89fed0501cd946f764/) | EcdsaInactivity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01228f...283bf1`](./contracts/ethereum-1/0x01228f83c6664a14fc3bb4ea28b7d1a2fc283bf1/) | EcdsaPointsXColumn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b9e48...91bbb3`](./contracts/ethereum-1/0x5b9e48f8818962699fe38f5989b130cee691bbb3/) | ECDSARewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x037a91...5efb84`](./contracts/ethereum-1/0x037a91d627cdbdd5ae20d6912fa15ae29b5efb84/) | ECDSARewardsEscrowBeneficiary | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x446d52...ae64bb`](./contracts/ethereum-1/0x446d5219981fc770f4f322a93c85516a8aae64bb/) | Escrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2deea2...387150`](./contracts/ethereum-1/0x2deea207069fc760703a4abc233b503585387150/) | FinalizableCommittee | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16b484...14c4c2`](./contracts/ethereum-1/0x16b484ca53424f1e09fa124687fc63e4cc14c4c2/) | FinalizableGpsFactAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x613ee5...48f376`](./contracts/ethereum-1/0x613ee54c54d5548627064b4d648942bf3648f376/) | ForcedActions | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30efaa...93d400`](./contracts/ethereum-1/0x30efaaa99f8efe310d9fdc83072e2a04c093d400/) | FriStatementContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x94c70c...93d063`](./contracts/ethereum-1/0x94c70c36b519e03705ddc26982d438f71993d063/) | FundingScript | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c0a34...e46ab3`](./contracts/ethereum-1/0x2c0a348500638aace229d6868c26b4e64fe46ab3/) | GasPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a8376...c5581a`](./contracts/ethereum-1/0x6a8376aea89d8255e2ad8b0f00362672bcc5581a/) | GpsFactRegistryAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13e120...b0d934`](./contracts/ethereum-1/0x13e120f6c8e747983f7aaf0f7731796bfcb0d934/) | GpsStatementVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4c3ad5...278159`](./contracts/ethereum-1/0x4c3ad59b5a32f2d076051d01d6f58bc75d278159/) | GuaranteedMinimumStakingPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27321f...89a3d5`](./contracts/ethereum-1/0x27321f84704a599ab740281e285cc4463d89a3d5/) | KeepBonding | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29fa8f...78261c`](./contracts/ethereum-1/0x29fa8f46cbb9562b87773c8f50a7f9f27178261c/) | KeepFactorySelection | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3975ce...5718e7`](./contracts/ethereum-1/0x3975ce253ff9d586cf08c3898f95064b7a5718e7/) | KeepRandomBeaconOperatorStatistics | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a9589...d3fb05`](./contracts/ethereum-1/0x1a9589f56c969d6b0d3787ea02322476ead3fb05/) | KeepRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10de37...4af8b4`](./contracts/ethereum-1/0x10de37cf84202a20cae61069c617b3aa874af8b4/) | KeepStake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06b586...13fd7d`](./contracts/ethereum-1/0x06b5869aadcf3fa9a2733dd93d4240a6d813fd7d/) | KeepTokenGeyserRewardsEscrowBeneficiary | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x836cdf...35896e`](./contracts/ethereum-1/0x836cdfe63fe2d63f8bdb69b96f6097f36635896e/) | LightRelay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ca2f6...efa3c8`](./contracts/ethereum-1/0x4ca2f6206da1a7cb8155fea68797efdf25efa3c8/) | LightRelayMaintainerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x373eb6...0868e6`](./contracts/ethereum-1/0x373eb6a735cc9bc12baa88a9b438759e750868e6/) | LockedTokenCommon | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0746e3...8fafee`](./contracts/ethereum-1/0x0746e3c84bdfe4bc2504b4c84f93f5baa38fafee/) | LockedTokenGrant | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d7368...521fc0`](./contracts/ethereum-1/0x0d736853812a12f085de867adf4ea4aba9521fc0/) | LockReleaseTokenPoolAndProxy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c84a8...d0de40`](./contracts/ethereum-1/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | Locks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47a5f2...9d6f44`](./contracts/ethereum-1/0x47a5f2ffdf66d13ed7e317581f458d09b49d6f44/) | LPRewardsKEEPETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78aa83...482edd`](./contracts/ethereum-1/0x78aa83bd6c9de5de0a2231366900ab060a482edd/) | LPRewardsTBTCSaddle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ad9e8...03f76d`](./contracts/ethereum-1/0x6ad9e8e5236c0e2cf6d755bb7be4eabcbc03f76d/) | LPRewardsTBTCv2Saddle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43cf9e...31964e`](./contracts/ethereum-1/0x43cf9e26857b188868051bdcfacedbb38531964e/) | ManagedGrantFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc2edad...a888cd`](./contracts/ethereum-1/0xc2edad668740f1aa35e4d8f227fb8e17dca888cd/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28a074...74be52`](./contracts/ethereum-1/0x28a074b965f506a8adf6e28c9b29a5e0de74be52/) | MemoryPageFactRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x097c4f...90700e`](./contracts/ethereum-1/0x097c4ff19cc326d0430151bdc3fd597e8290700e/) | MerkleStatementContract | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e1d7e...e2b5df`](./contracts/ethereum-1/0x3e1d7ea6c2f5a39e90a21450a57269ca50e2b5df/) | MezoAllocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1af817...27d1f5`](./contracts/ethereum-1/0x1af817c36708fd0d057c87a51c92fbb0e527d1f5/) | MezoBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x254e2f...c94b0d`](./contracts/ethereum-1/0x254e2f7bcb4c5892d67d3c51b2c5b50d93c94b0d/) | NativeBTCDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1531b6...a4b154`](./contracts/ethereum-1/0x1531b6e3d51bf80f634957df81a990b92da4b154/) | OnDemandSPV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ec343...3a4bb6`](./contracts/ethereum-1/0x5ec34376205e99f5314cd71436afda100f3a4bb6/) | OrderRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x478409...ec29ed`](./contracts/ethereum-1/0x478409d856cd759cbfaa6639d88b7cdcb8ec29ed/) | OutsourceDepositLogging | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x047dd4...7e86d1`](./contracts/ethereum-1/0x047dd4275bbdc1ee6b8bf026239e203c617e86d1/) | PedersenHashPointsXColumn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b612f...9acd53`](./contracts/ethereum-1/0x1b612f89eee49b0fb1dcd429cf2109a9699acd53/) | PermissiveStakingPolicy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1bc9c6...8b9310`](./contracts/ethereum-1/0x1bc9c618b7fa6b5efaad31dc801eb55c608b9310/) | PerpetualTokensAndRamping | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x964d45...2ec157`](./contracts/ethereum-1/0x964d45256c73df0239a26216cec155d7e12ec157/) | PhasedEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fa3ef...3666c0`](./contracts/ethereum-1/0x8fa3ef45137c3aff337e42f98023c1d7dd3666c0/) | PlainTransferEscrowBeneficiary | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b459c...ddeafd`](./contracts/ethereum-1/0x0b459cae3f5f91469b910a8811723606b2ddeafd/) | Portal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x038968...b0ae78`](./contracts/ethereum-1/0x03896849091ad2905eb46971117fd89beab0ae78/) | ProxyV5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5499f5...e3d80b`](./contracts/ethereum-1/0x5499f54b4a1cb4816eefcf78962040461be3d80b/) | RandomBeacon | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0972e6...adb887`](./contracts/ethereum-1/0x0972e6062eac0fe8686d82ea010504066dadb887/) | RedemptionScript | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2355d7...f62b30`](./contracts/ethereum-1/0x2355d701d8d85ed161ab66a0a7e759c463f62b30/) | RiskManagerV1 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43faf6...f7442f`](./contracts/ethereum-1/0x43faf6fe84e01dd186cfeb9ea2f0854a1ef7442f/) | SignerBondsManualSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x46c509...7b1ee2`](./contracts/ethereum-1/0x46c5098f73fa656e82d7e9afbf3c00b32b7b1ee2/) | StakedBPT | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x118b76...069bd8`](./contracts/ethereum-1/0x118b7642b91bcf02c565a3c417534e29e4069bd8/) | StakingPoolRewardsEscrowBeneficiary | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x236aa5...ab794b`](./contracts/ethereum-1/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | StakingPortBacker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a9558...4d9359`](./contracts/ethereum-1/0x0a9558ce70daa574c715616d68978808504d9359/) | StarkgateManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x179fa5...3656a0`](./contracts/ethereum-1/0x179fa59e4d19ac7c7b4e3daa0cd6557a553656a0/) | StarknetERC20Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x455603...603581`](./contracts/ethereum-1/0x455603ad9ae671f6c1f0f746f24d7904ca603581/) | StarknetEthBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63a152...26750d`](./contracts/ethereum-1/0x63a152ea1cd78ac3c7c1fcf1322dc6de1126750d/) | TBTCConstants | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5524cb...cb6298`](./contracts/ethereum-1/0x5524cb52490e01cba4eb64f230cc661780cb6298/) | TokensAndRamping | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41c9b5...79d91a`](./contracts/ethereum-1/0x41c9b5639e3f2f6c61e9b78b2c6ff3746e79d91a/) | TopUps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x007854...0df843`](./contracts/ethereum-1/0x007854fdcc9c6f748b435e63745599fb1a0df843/) | UnderwriterToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x39bff2...408b8e`](./contracts/ethereum-1/0x39bff2c9f7e377d8466d3180be7dd0ae7d408b8e/) | UpdatePerpetualConfigExternalInitializer | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a580c...0df59d`](./contracts/ethereum-1/0x4a580c62889ddcd6c2213582270e03ca130df59d/) | USDCTokenPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7570a2...6437e6`](./contracts/ethereum-1/0x7570a2350183b4bdf7ca74fad3fc19048e6437e6/) | VendingMachineV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10fb59...43ffe5`](./contracts/ethereum-1/0x10fb5943e2f4f67ee6a533dae49b6d4cc443ffe5/) | WalletCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30019d...fbdec2`](./contracts/ethereum-1/0x30019d85a86abd3cda1167f4c052690c32fbdec2/) | WalletProposalValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 183 |
| upstream | 19 |
| standard_library | 10 |
| needs_review | 142 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=7, medium=1
- Match method counts: extraction_exact=141

Zero-match audit list:

- [3404] * **Report:** [View Audit 1 PDF]() - [View Audit 2 PDF](https://drive.google.com/file/d/1QK1jnaoqdtoeyqTD7xz93sSk1BwerFwe/view?usp=sharing)&#x20;
- [3405] * **Report:** [View Audit 1 PDF](https://drive.google.com/file/d/1ymBpfc9vihOVA-XccqhpeitnZS208O5u/view) - [View Audit 2 PDF]()&#x20;
- [3406] * **Report**: [View PDF]()
- [3407] * **Report**: [View PDF]()
- [3408] * **Report:** [View PDF]()
- [3409] * **Report:** [View PDF]()
- [3410] * **Report:** [View PDF]()
- [3412] * **Report:** [View Audit PDF]() - [Link to Least Authority](https://leastauthority.com/blog/audits/audit-of-keep-network-solana-smart-contracts/)
- [3414] * **Report:** [View Audit PDF](https://github.com/threshold-network/security-audits/blob/main/29-Sep-2022-LeastAuthority.pdf) - [Link to Least Authority]()
- [3418] * **Report:** [View Audit PDF](https://github.com/threshold-network/security-audits/blob/main/09-Nov-2021-ChainSecurity.pdf) - [Link to ChainSecurity]()

Fork inheritance lineage and inherited audits are included when available.
