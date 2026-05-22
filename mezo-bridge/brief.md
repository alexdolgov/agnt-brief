# Agentic Audit Brief: Mezo Bridge

⚠️ Lifecycle status: DECLINING - TVL dropped 52.1% over 90 days

## Project Overview

- Project: Mezo Bridge (`mezo-bridge`)
- Website: [https://mezo.org](https://mezo.org)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-22T15:36:04.778Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 138 unique implementations (268 raw deployments)
- DeFi Llama TVL: $21,635,880.93
- On-chain TVL (included contracts): $203,895,886.83
- TVL by chain: Ethereum $203,895,886.83

## Project Description

Mezo Bridge is a cross-chain bridging protocol that enables users to transfer Bitcoin and other assets between Ethereum and the Mezo network. It provides deposit, redemption, and staking mechanisms, leveraging infrastructure like Wormhole for cross-chain messaging and tBTC for Bitcoin custody.

### Architecture

The Mezo Bridge family integrates multiple components: MezoBridge and Portal handle core bridging logic, while BitcoinDepositor and BitcoinRedeemer manage Bitcoin-specific flows. NttManager and WormholeTransceiver enable cross-chain token transfers via Wormhole. Staking is managed by TokenStaking and GrantStaking, with yield-bearing tokens like stBTC and SolvBTCYieldTokenV3_1. Infrastructure contracts like WalletRegistry, WalletCoordinator, and RedemptionWatchtower support tBTC custody, and KeepRandomBeaconService provides randomness for beacon operations.

## Audit Coverage Summary

- Verified implementations audited: 0/110 (0.0%)
- Verified + Unaudited implementations: 110
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 138
- Raw deployments: 268
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $203,895,886.83
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $203,895,886.83 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (110)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| THUSDToken | token | ethereum | [`0xcfc5bd...8d29cf`](./contracts/ethereum-1/0xcfc5bd99915aaa815401c5a41a927ab7a38d29cf/) | ⚠️ Unaudited |
| SolvBTCYieldTokenV3_1 | token | ethereum | [`0xd9d920...159def`](./contracts/ethereum-1/0xd9d920aa40f578ab794426f5c90f6c731d159def/) | ⚠️ Unaudited |
| Yearn V3 Vault | core_logic | ethereum | [`0x8db235...864dde`](./contracts/ethereum-1/0x8db2350d78abc13f5673a411d4700bcf87864dde/) | ⚠️ Unaudited |
| AssetPool | core_logic | ethereum | 2 deployments: ethereum [`0x21b86f...d28d5d`](./contracts/ethereum-1/0x21b86fdc93f23fd52022a283828df8e808d28d5d/); ethereum `0x2ada2d...dfdbf2` | ⚠️ Unaudited |
| ReimbursementPool | core_logic | ethereum | 10 deployments: ethereum [`0x369fce...17f9cc`](./contracts/ethereum-1/0x369fce62b33512b2a883cf217635ee28dd17f9cc/); ethereum `0x403333...753f06`; ethereum `0x700c88...9c92a7`; ethereum `0x8adf3f...732ea8`; ethereum `0x9f2f5e...942d74`; ethereum `0xaf3fea...ec0234`; ethereum `0xcc9c51...76c1d8`; ethereum `0xda1b78...6913dc`; ethereum `0xf0d4b1...d0de31`; ethereum `0xfc9469...5de92a` | ⚠️ Unaudited |
| AcreMultiAssetVault | core_logic | ethereum | 3 deployments: ethereum [`0x4a6e0d...afd18d`](./contracts/ethereum-1/0x4a6e0d0189c1d09eb4c63a53693d2be26cafd18d/); ethereum `0xa0e1f0...852fb7`; ethereum `0xb33d93...e2cb19` | ⚠️ Unaudited |
| Auction | unknown | ethereum | [`0xabe008...e33fe1`](./contracts/ethereum-1/0xabe0080ea5f7a58b90398b1c87093cc225e33fe1/) | ⚠️ Unaudited |
| AuctionBidder | unknown | ethereum | [`0x773a4c...37b3c4`](./contracts/ethereum-1/0x773a4cacbca8e3704f8f7842531eab83e437b3c4/) | ⚠️ Unaudited |
| Bank | unknown | ethereum | [`0x65fbae...9d9fc6`](./contracts/ethereum-1/0x65fbae61ad2c8836ffbfb502a0da41b0789d9fc6/) | ⚠️ Unaudited |
| BatchedPhasedEscrow | operational_periphery | ethereum | 2 deployments: ethereum [`0x1b8e50...f831ca`](./contracts/ethereum-1/0x1b8e50ec9fbf844c3671bc178df8eadfcff831ca/); ethereum `0xa96ad7...bfd8a6` | ⚠️ Unaudited |
| BeaconAuthorization | registry | ethereum | [`0x632c2d...6e83e8`](./contracts/ethereum-1/0x632c2d58ad870fbd4569da0a4e82ddf4b56e83e8/) | ⚠️ Unaudited |
| BeaconBackportRewards | registry | ethereum | [`0x8fec9c...ffbfff`](./contracts/ethereum-1/0x8fec9cf78087064f1f32269f68f94ae343ffbfff/) | ⚠️ Unaudited |
| BeaconBackportRewardsEscrowBeneficiary | operational_periphery | ethereum | 3 deployments: ethereum [`0x24c0fb...f07647`](./contracts/ethereum-1/0x24c0fbd3ff8e742080c60881f8527ca3baf07647/); ethereum `0x4e73e4...633600`; ethereum `0xe4b591...a07c8b` | ⚠️ Unaudited |
| BeaconDkg | registry | ethereum | [`0x024a69...2abd84`](./contracts/ethereum-1/0x024a697788918007592572f7cd020df2bc2abd84/) | ⚠️ Unaudited |
| BeaconDkgValidator | registry | ethereum | [`0x4edc83...653f94`](./contracts/ethereum-1/0x4edc83c5c5b0c41a594371485554b95280653f94/) | ⚠️ Unaudited |
| BeaconInactivity | registry | ethereum | [`0x67a26f...941ec0`](./contracts/ethereum-1/0x67a26f2ebdb2448605936fe9a5f496cda7941ec0/) | ⚠️ Unaudited |
| BeaconRewards | registry | ethereum | [`0xbf5180...f5f491`](./contracts/ethereum-1/0xbf51807acb3394b8550f0554fb9098856ef5f491/) | ⚠️ Unaudited |
| BeaconRewardsEscrowBeneficiary | operational_periphery | ethereum | [`0x9b15fe...e68ff0`](./contracts/ethereum-1/0x9b15fef1bfa4aff9b51f7b3b2df4d197cde68ff0/) | ⚠️ Unaudited |
| BitcoinDepositor | unknown | ethereum | 11 deployments: ethereum [`0x04b94f...0f4d32`](./contracts/ethereum-1/0x04b94f55780682478c8d8329368aaafd320f4d32/); ethereum `0x05f7ba...6b3789`; ethereum `0x10b4c3...6a5438`; ethereum `0x152c70...8c81b1`; ethereum `0x173b26...8a495a`; ethereum `0x1d50d7...889c24`; ethereum `0x2ba614...9313d1`; ethereum `0x3ac50e...7aacee`; ethereum `0x767f72...4ef291`; ethereum `0x98f3aa...82f7d7`; ethereum `0xd2809a...daf344` | ⚠️ Unaudited |
| BitcoinRedeemer | unknown | ethereum | 2 deployments: ethereum [`0x1f2766...4839a5`](./contracts/ethereum-1/0x1f2766373e74f268d5dbde32a395eb1c924839a5/); ethereum `0x7e184b...8fc756` | ⚠️ Unaudited |
| BLS | unknown | ethereum | [`0x655205...e020cd`](./contracts/ethereum-1/0x6552059b6efc6aa4ae3ea45f28ed4d92ace020cd/) | ⚠️ Unaudited |
| BondedECDSAKeep | unknown | ethereum | [`0xa9e838...22c105`](./contracts/ethereum-1/0xa9e838fcb9295fa44d89d06ed59811ae1a22c105/) | ⚠️ Unaudited |
| BondedECDSAKeepFactory | registry | ethereum | 2 deployments: ethereum [`0x6a7cd8...35c5d7`](./contracts/ethereum-1/0x6a7cd8e1384d49f502b4a4ce9ac9eb320835c5d7/); ethereum `0xa7d9e8...2e40bd` | ⚠️ Unaudited |
| BondedSortitionPoolFactory | registry | ethereum | 3 deployments: ethereum [`0x0c46f4...2ede4f`](./contracts/ethereum-1/0x0c46f496c410465975a427e34a976fc15a2ede4f/); ethereum `0x92e0d8...109683`; ethereum `0x9423dd...cbb321` | ⚠️ Unaudited |
| Bridge | operational_periphery | ethereum | 6 deployments: ethereum [`0x265054...2e2ec5`](./contracts/ethereum-1/0x265054f72bad343fdee3e018269cbb899e2e2ec5/); ethereum `0x3a4a69...322c1b`; ethereum `0x5e4861...0e8e7b`; ethereum `0x8d0149...293234`; ethereum `0x9e44d4...630339`; ethereum `0xa4996d...a21a26` | ⚠️ Unaudited |
| BridgeFeeManager | operational_periphery | ethereum | 3 deployments: ethereum [`0x0e628a...aa5913`](./contracts/ethereum-1/0x0e628a1c34c92f0aa85af998814ce4f03caa5913/); ethereum `0x409968...c5a90b`; ethereum `0x823653...b59539` | ⚠️ Unaudited |
| BridgeGovernance | operational_periphery | ethereum | 2 deployments: ethereum [`0xa94dd6...0778ee`](./contracts/ethereum-1/0xa94dd662e2a247493facceab9f2459aaf90778ee/); ethereum `0xf286ea...230b45` | ⚠️ Unaudited |
| BridgeGovernanceParameters | operational_periphery | ethereum | [`0xce4b16...0d3443`](./contracts/ethereum-1/0xce4b16b81a28d785feeb7b1d56a9b97d450d3443/) | ⚠️ Unaudited |
| CoveragePool | core_logic | ethereum | 2 deployments: ethereum [`0x7d7b62...6d811a`](./contracts/ethereum-1/0x7d7b622c07f216d99efc3efb9cf71872f46d811a/); ethereum `0x91cd77...3bf877` | ⚠️ Unaudited |
| CoveragePoolBeneficiary | core_logic | ethereum | 2 deployments: ethereum [`0x22428b...2ee39b`](./contracts/ethereum-1/0x22428b09efc87709ab49a77da6f9ce4ffa2ee39b/); ethereum `0xe8372c...f67263` | ⚠️ Unaudited |
| Deposit | unknown | ethereum | 4 deployments: ethereum [`0x1ac184...c04dc5`](./contracts/ethereum-1/0x1ac1841a47054e070236f1664991e52c30c04dc5/); ethereum `0xcd2ebd...ccd137`; ethereum `0xcffdcb...a96342`; ethereum `0xf526f0...d09011` | ⚠️ Unaudited |
| DepositFactory | registry | ethereum | [`0x87effe...0faf8b`](./contracts/ethereum-1/0x87effef56c7ff13e2463b5d4dce81be2340faf8b/) | ⚠️ Unaudited |
| DepositFunding | unknown | ethereum | [`0x62d128...ccd125`](./contracts/ethereum-1/0x62d1286683507939c065c12f2d1e80cca8ccd125/) | ⚠️ Unaudited |
| DepositLiquidation | unknown | ethereum | [`0x1ca506...081a56`](./contracts/ethereum-1/0x1ca5060bf142c58168aedb974aabb020bc081a56/) | ⚠️ Unaudited |
| DepositRedemption | unknown | ethereum | [`0x817c0f...372323`](./contracts/ethereum-1/0x817c0f6332392ad65d7688ed22f59b227e372323/) | ⚠️ Unaudited |
| DepositStates | unknown | ethereum | [`0x8695ff...ae1c80`](./contracts/ethereum-1/0x8695ff199a1216fc7e2bf97303bf662babae1c80/) | ⚠️ Unaudited |
| DepositSweep | unknown | ethereum | 3 deployments: ethereum [`0x392635...ac9b95`](./contracts/ethereum-1/0x392635646bc22fc13c86859d1f02b27974ac9b95/); ethereum `0x53f26b...8f13c2`; ethereum `0xe6f919...a87085` | ⚠️ Unaudited |
| DepositUtils | unknown | ethereum | [`0x2ad83d...212517`](./contracts/ethereum-1/0x2ad83decf0555945094e5d25129c1f324f212517/) | ⚠️ Unaudited |
| DonationVault | core_logic | ethereum | [`0xa544b7...50e672`](./contracts/ethereum-1/0xa544b70dc6af906862f68eb8e68c27bb7150e672/) | ⚠️ Unaudited |
| ECDSABackportRewards | unknown | ethereum | [`0xe9ca1a...c036fa`](./contracts/ethereum-1/0xe9ca1abe343515312eb6d13178c5a2dce3c036fa/) | ⚠️ Unaudited |
| ECDSABackportRewardsEscrowBeneficiary | operational_periphery | ethereum | 3 deployments: ethereum [`0x82ab5f...c76108`](./contracts/ethereum-1/0x82ab5f02993bf312d9aca03157f26febebc76108/); ethereum `0x86f7bb...8b3653`; ethereum `0x8bb002...b20e62` | ⚠️ Unaudited |
| EcdsaDkgValidator | unknown | ethereum | [`0x0125c8...d4ef27`](./contracts/ethereum-1/0x0125c8977a02b2fa3970b1ed9af02f5bedd4ef27/) | ⚠️ Unaudited |
| EcdsaInactivity | unknown | ethereum | [`0x8263ef...46f764`](./contracts/ethereum-1/0x8263efcb8f28246697585c89fed0501cd946f764/) | ⚠️ Unaudited |
| ECDSARewards | unknown | ethereum | [`0xc5ac5a...ffca88`](./contracts/ethereum-1/0xc5ac5a8892230e0a3e1c473881a2de7353ffca88/) | ⚠️ Unaudited |
| ECDSARewardsDistributor | operational_periphery | ethereum | [`0x5b9e48...91bbb3`](./contracts/ethereum-1/0x5b9e48f8818962699fe38f5989b130cee691bbb3/) | ⚠️ Unaudited |
| ECDSARewardsDistributorEscrow | operational_periphery | ethereum | [`0xa77ec9...952042`](./contracts/ethereum-1/0xa77ec9c89a0c889bcb05d15df42d49b706952042/) | ⚠️ Unaudited |
| ECDSARewardsEscrowBeneficiary | operational_periphery | ethereum | 2 deployments: ethereum [`0x037a91...5efb84`](./contracts/ethereum-1/0x037a91d627cdbdd5ae20d6912fa15ae29b5efb84/); ethereum `0xd267b3...317dc3` | ⚠️ Unaudited |
| FeeRebateToken | token | ethereum | [`0xaf3fff...f94789`](./contracts/ethereum-1/0xaf3fff06b75f99352d8c2a3c4bef1339a2f94789/) | ⚠️ Unaudited |
| Fraud | unknown | ethereum | 2 deployments: ethereum [`0x51bbef...ba3559`](./contracts/ethereum-1/0x51bbef1c7cc3a1d3bc5e64ce6c3ba6e66fba3559/); ethereum `0xd040de...9de71c` | ⚠️ Unaudited |
| FundingScript | unknown | ethereum | [`0x94c70c...93d063`](./contracts/ethereum-1/0x94c70c36b519e03705ddc26982d438f71993d063/) | ⚠️ Unaudited |
| GasPriceOracle | operational_periphery | ethereum | [`0x2c0a34...e46ab3`](./contracts/ethereum-1/0x2c0a348500638aace229d6868c26b4e64fe46ab3/) | ⚠️ Unaudited |
| GrantStaking | unknown | ethereum | 2 deployments: ethereum [`0x02612d...8a3db3`](./contracts/ethereum-1/0x02612d20cc087670a959bb12ca3c5fd56c8a3db3/); ethereum `0x1293a5...a15458` | ⚠️ Unaudited |
| KeepBonding | unknown | ethereum | 2 deployments: ethereum [`0x27321f...89a3d5`](./contracts/ethereum-1/0x27321f84704a599ab740281e285cc4463d89a3d5/); ethereum `0x812fcc...3b2db8` | ⚠️ Unaudited |
| KeepFactorySelection | registry | ethereum | [`0x29fa8f...78261c`](./contracts/ethereum-1/0x29fa8f46cbb9562b87773c8f50a7f9f27178261c/) | ⚠️ Unaudited |
| KeepRandomBeaconOperator | registry | ethereum | [`0xdf7084...fcf9de`](./contracts/ethereum-1/0xdf708431162ba247ddae362d2c919e0fbafcf9de/) | ⚠️ Unaudited |
| KeepRandomBeaconOperatorStatistics | registry | ethereum | [`0x3975ce...5718e7`](./contracts/ethereum-1/0x3975ce253ff9d586cf08c3898f95064b7a5718e7/) | ⚠️ Unaudited |
| KeepRandomBeaconServiceImplV1 | registry | ethereum | 3 deployments: ethereum [`0x099597...599eab`](./contracts/ethereum-1/0x09959798b95d00a3183d20fac298e4594e599eab/); ethereum `0x292c9f...67ae28`; ethereum `0x50510e...94aafd` | ⚠️ Unaudited |
| KeepTokenGeyserRewardsEscrowBeneficiary | operational_periphery | ethereum | [`0x06b586...13fd7d`](./contracts/ethereum-1/0x06b5869aadcf3fa9a2733dd93d4240a6d813fd7d/) | ⚠️ Unaudited |
| KeepVault | core_logic | ethereum | [`0xdf00da...016c87`](./contracts/ethereum-1/0xdf00dac2be1250cf62cbfc617ee7bc45c0016c87/) | ⚠️ Unaudited |
| LightRelay | unknown | ethereum | [`0x836cdf...35896e`](./contracts/ethereum-1/0x836cdfe63fe2d63f8bdb69b96f6097f36635896e/) | ⚠️ Unaudited |
| LightRelayMaintainerProxy | unknown | ethereum | [`0x4ca2f6...efa3c8`](./contracts/ethereum-1/0x4ca2f6206da1a7cb8155fea68797efdf25efa3c8/) | ⚠️ Unaudited |
| Locks | unknown | ethereum | [`0x6c84a8...d0de40`](./contracts/ethereum-1/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | ⚠️ Unaudited |
| LPRewardsKEEPETH | unknown | ethereum | 3 deployments: ethereum [`0x47a5f2...9d6f44`](./contracts/ethereum-1/0x47a5f2ffdf66d13ed7e317581f458d09b49d6f44/); ethereum `0x81c51d...3f036f`; ethereum `0xb3d03a...55cf6b` | ⚠️ Unaudited |
| LPRewardsTBTCSaddle | unknown | ethereum | 2 deployments: ethereum [`0x78aa83...482edd`](./contracts/ethereum-1/0x78aa83bd6c9de5de0a2231366900ab060a482edd/); ethereum `0xa1038b...3df863` | ⚠️ Unaudited |
| LPRewardsTBTCv2Saddle | unknown | ethereum | 2 deployments: ethereum [`0x6ad9e8...03f76d`](./contracts/ethereum-1/0x6ad9e8e5236c0e2cf6d755bb7be4eabcbc03f76d/); ethereum `0xb4c357...fa6fa9` | ⚠️ Unaudited |
| MaintainerProxy | unknown | ethereum | 2 deployments: ethereum [`0x535e01...40140f`](./contracts/ethereum-1/0x535e01f948458e0b64f9db2a01da6f32e240140f/); ethereum `0xcf29ff...a8df2b` | ⚠️ Unaudited |
| MezoAllocator | operational_periphery | ethereum | 3 deployments: ethereum [`0x3e1d7e...e2b5df`](./contracts/ethereum-1/0x3e1d7ea6c2f5a39e90a21450a57269ca50e2b5df/); ethereum `0xb90fda...e20122`; ethereum `0xb9ee96...25f423` | ⚠️ Unaudited |
| MezoBridge | operational_periphery | ethereum | 16 deployments: ethereum [`0x1af817...27d1f5`](./contracts/ethereum-1/0x1af817c36708fd0d057c87a51c92fbb0e527d1f5/); ethereum `0x285a02...bcb589`; ethereum `0x2c5e9a...91389a`; ethereum `0x2ca0a2...f66c4c`; ethereum `0x3d282c...5ce889`; ethereum `0x40b166...9ad9eb`; ethereum `0x4e4af5...0d1691`; ethereum `0x5f6822...c22ee6`; ethereum `0x668479...12159f`; ethereum `0x7e994d...6b6cd9`; ethereum `0x874e28...9d7f2c`; ethereum `0xb98a5f...f628e7`; ethereum `0xd23d70...c2c8c8`; ethereum `0xea332f...d9d86c`; ethereum `0xf6680e...e6908c`; ethereum `0xfccde7...94069d` | ⚠️ Unaudited |
| MovingFunds | unknown | ethereum | 3 deployments: ethereum [`0x310667...d42123`](./contracts/ethereum-1/0x3106675ede4a64d70131247466fd8704a3d42123/); ethereum `0x3e0407...b67a90`; ethereum `0xb85711...4ca432` | ⚠️ Unaudited |
| NoOp | unknown | ethereum | 8 deployments: ethereum [`0x1d5b85...590daf`](./contracts/ethereum-1/0x1d5b85d4099958de09fee8bc252a546b42590daf/); ethereum `0x327cc9...d74114`; ethereum `0x3ddb7e...90d409`; ethereum `0x52b952...78c35a`; ethereum `0x70ce34...ecbd94`; ethereum `0x8737f3...b7ade0`; ethereum `0xda4413...e76887`; ethereum `0xe9c3d2...39079a` | ⚠️ Unaudited |
| NttManager | governance | ethereum | 8 deployments: ethereum [`0x075108...1d6363`](./contracts/ethereum-1/0x075108f275ed81c9cfc01065e6e50ceea81d6363/); ethereum `0x13916d...40686a`; ethereum `0x2eea07...84623c`; ethereum `0x529315...f4477e`; ethereum `0x5d8154...977a5f`; ethereum `0xce09df...85ce32`; ethereum `0xdf7feb...b521cf`; ethereum `0xf5a089...ad592b` | ⚠️ Unaudited |
| OnDemandSPV | unknown | ethereum | [`0x1531b6...a4b154`](./contracts/ethereum-1/0x1531b6e3d51bf80f634957df81a990b92da4b154/) | ⚠️ Unaudited |
| OutsourceDepositLogging | unknown | ethereum | [`0x478409...ec29ed`](./contracts/ethereum-1/0x478409d856cd759cbfaa6639d88b7cdcb8ec29ed/) | ⚠️ Unaudited |
| PhasedEscrow | operational_periphery | ethereum | 4 deployments: ethereum [`0x964d45...2ec157`](./contracts/ethereum-1/0x964d45256c73df0239a26216cec155d7e12ec157/); ethereum `0x973005...8a0f0a`; ethereum `0x991cc3...ac65f9`; ethereum `0xfa2390...04b1cd` | ⚠️ Unaudited |
| PlainTransferEscrowBeneficiary | operational_periphery | ethereum | [`0x8fa3ef...3666c0`](./contracts/ethereum-1/0x8fa3ef45137c3aff337e42f98023c1d7dd3666c0/) | ⚠️ Unaudited |
| Portal | unknown | ethereum | 7 deployments: ethereum [`0x0b459c...ddeafd`](./contracts/ethereum-1/0x0b459cae3f5f91469b910a8811723606b2ddeafd/); ethereum `0x2dfdeb...88076b`; ethereum `0x3bba45...23548e`; ethereum `0xab13b8...5b8a39`; ethereum `0xb3696c...ab64d8`; ethereum `0xd7097a...46fe60`; ethereum `0xeaaf2b...502216` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 2 deployments: ethereum [`0x16a76d...b5c706`](./contracts/ethereum-1/0x16a76d3cd3c1e3ce843c6680d6b37e9116b5c706/); ethereum `0x7affa0...92008e` | ⚠️ Unaudited |
| RandomBeacon | registry | ethereum | [`0x5499f5...e3d80b`](./contracts/ethereum-1/0x5499f54b4a1cb4816eefcf78962040461be3d80b/) | ⚠️ Unaudited |
| RandomBeaconChaosnet | registry | ethereum | [`0xf23fc1...b0294a`](./contracts/ethereum-1/0xf23fc18ece6afe7fb57ba59979e8600bb4b0294a/) | ⚠️ Unaudited |
| RandomBeaconGovernance | registry | ethereum | [`0xd0a308...cb1c63`](./contracts/ethereum-1/0xd0a3088ed9fff4357b79cd3896bd38876fcb1c63/) | ⚠️ Unaudited |
| Redemption | unknown | ethereum | 3 deployments: ethereum [`0x7d807e...a25914`](./contracts/ethereum-1/0x7d807e9ce1ef73048fee9a4214e75e894ea25914/); ethereum `0x8ef1be...ac9f5e`; ethereum `0xfa4fc5...47a1ff` | ⚠️ Unaudited |
| RedemptionScript | unknown | ethereum | [`0x0972e6...adb887`](./contracts/ethereum-1/0x0972e6062eac0fe8686d82ea010504066dadb887/) | ⚠️ Unaudited |
| RedemptionWatchtower | unknown | ethereum | 2 deployments: ethereum [`0xb8df0a...38e6d3`](./contracts/ethereum-1/0xb8df0a949ac45ff8f401553a1dcb742feb38e6d3/); ethereum `0xbfd04e...cf1daf` | ⚠️ Unaudited |
| RiskManagerV1 | governance | ethereum | [`0x2355d7...f62b30`](./contracts/ethereum-1/0x2355d701d8d85ed161ab66a0a7e759c463f62b30/) | ⚠️ Unaudited |
| SignerBondsManualSwap | unknown | ethereum | [`0x43faf6...f7442f`](./contracts/ethereum-1/0x43faf6fe84e01dd186cfeb9ea2f0854a1ef7442f/) | ⚠️ Unaudited |
| SortitionPool | core_logic | ethereum | 2 deployments: ethereum [`0x4e4cba...ecbcf6`](./contracts/ethereum-1/0x4e4cba3779d56386ed43631b4dcd6d8eacecbcf6/); ethereum `0xc2731f...5bb4dc` | ⚠️ Unaudited |
| StakerRewardsBeneficiary | core_logic | ethereum | [`0xbb59f4...8a0b81`](./contracts/ethereum-1/0xbb59f486135145ad247b82f9cdf52be4a58a0b81/) | ⚠️ Unaudited |
| StakingPoolRewardsEscrowBeneficiary | operational_periphery | ethereum | 8 deployments: ethereum [`0x118b76...069bd8`](./contracts/ethereum-1/0x118b7642b91bcf02c565a3c417534e29e4069bd8/); ethereum `0x143a06...f7ff51`; ethereum `0x68c912...2b32df`; ethereum `0x8381e6...047037`; ethereum `0xcb3570...938e83`; ethereum `0xebadc7...e0ce3a`; ethereum `0xee8287...1a6cef`; ethereum `0xf6a1ca...e50648` | ⚠️ Unaudited |
| StakingPortBacker | unknown | ethereum | [`0x236aa5...ab794b`](./contracts/ethereum-1/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | ⚠️ Unaudited |
| stBTC | unknown | ethereum | 3 deployments: ethereum [`0xdf217e...854017`](./contracts/ethereum-1/0xdf217efd8f3ecb5e837aedf203c28c1f06854017/); ethereum `0xef96b9...cb22c4`; ethereum `0xf71fc6...042a7e` | ⚠️ Unaudited |
| T | unknown | ethereum | [`0xcdf702...94bee5`](./contracts/ethereum-1/0xcdf7028ceab81fa0c6971208e83fa7872994bee5/) | ⚠️ Unaudited |
| TBTC | unknown | ethereum | [`0x18084f...d93a88`](./contracts/ethereum-1/0x18084fba666a33d37592fa2633fd49a74dd93a88/) | ⚠️ Unaudited |
| TBTCConstants | unknown | ethereum | [`0x63a152...26750d`](./contracts/ethereum-1/0x63a152ea1cd78ac3c7c1fcf1322dc6de1126750d/) | ⚠️ Unaudited |
| TBTCDepositToken | token | ethereum | [`0x10b66b...37cdf0`](./contracts/ethereum-1/0x10b66bd1e3b5a936b7f8dbc5976004311037cdf0/) | ⚠️ Unaudited |
| TBTCSystem | unknown | ethereum | [`0xe20a5c...1ab64a`](./contracts/ethereum-1/0xe20a5c79b39bc8c363f0f49adcfa82c2a01ab64a/) | ⚠️ Unaudited |
| TBTCVault | core_logic | ethereum | 2 deployments: ethereum [`0x52818e...277fd4`](./contracts/ethereum-1/0x52818e501612d3c5b37b5f9b83b024342c277fd4/); ethereum `0x9c0700...4fe3cd` | ⚠️ Unaudited |
| Timelock | governance | ethereum | 2 deployments: ethereum [`0x82f080...82b25a`](./contracts/ethereum-1/0x82f08041f1bc1aa399320743f33f75cca482b25a/); ethereum `0x92f2d8...b4913d` | ⚠️ Unaudited |
| TokenStakingEscrow | operational_periphery | ethereum | [`0xda534b...681365`](./contracts/ethereum-1/0xda534b567099ca481384133bc121d5843f681365/) | ⚠️ Unaudited |
| TopUps | unknown | ethereum | [`0x41c9b5...79d91a`](./contracts/ethereum-1/0x41c9b5639e3f2f6c61e9b78b2c6ff3746e79d91a/) | ⚠️ Unaudited |
| UnderwriterToken | token | ethereum | 2 deployments: ethereum [`0x007854...0df843`](./contracts/ethereum-1/0x007854fdcc9c6f748b435e63745599fb1a0df843/); ethereum `0x2aa24d...df5d8b` | ⚠️ Unaudited |
| VendingMachine | unknown | ethereum | 4 deployments: ethereum [`0x1cca7e...47680e`](./contracts/ethereum-1/0x1cca7e410ee41739792ea0a24e00349dd247680e/); ethereum `0x526c08...05d2ac`; ethereum `0x6590df...e6d85f`; ethereum `0xe47c80...d16bb0` | ⚠️ Unaudited |
| VendingMachineV2 | unknown | ethereum | [`0xce1f98...026d4b`](./contracts/ethereum-1/0xce1f983c29f7a6c0c0dfa78c4d8fe7bdfe026d4b/) | ⚠️ Unaudited |
| VendingMachineV3 | unknown | ethereum | [`0x7570a2...6437e6`](./contracts/ethereum-1/0x7570a2350183b4bdf7ca74fad3fc19048e6437e6/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | 3 deployments: ethereum [`0x326483...0e86c6`](./contracts/ethereum-1/0x3264834ada73a8b0b132ee52fd5a367cf60e86c6/); ethereum `0x9e5651...72a16c`; ethereum `0xb6881e...8980be` | ⚠️ Unaudited |
| WalletCoordinator | unknown | ethereum | 3 deployments: ethereum [`0x10fb59...43ffe5`](./contracts/ethereum-1/0x10fb5943e2f4f67ee6a533dae49b6d4cc443ffe5/); ethereum `0x64ea4b...420093`; ethereum `0x9eae6e...ad32ba` | ⚠️ Unaudited |
| WalletProposalValidator | unknown | ethereum | [`0x30019d...fbdec2`](./contracts/ethereum-1/0x30019d85a86abd3cda1167f4c052690c32fbdec2/) | ⚠️ Unaudited |
| WalletRegistry | registry | ethereum | 3 deployments: ethereum [`0x08d7e8...65c832`](./contracts/ethereum-1/0x08d7e8ce124921caafd7670502379ced0065c832/); ethereum `0x46d52e...5204eb`; ethereum `0xfbae13...0398fb` | ⚠️ Unaudited |
| WalletRegistryGovernance | registry | ethereum | [`0x6aed6c...d47fe8`](./contracts/ethereum-1/0x6aed6cc30d1b2770771052555d257da86ed47fe8/) | ⚠️ Unaudited |
| Wallets | unknown | ethereum | 2 deployments: ethereum [`0xc67913...ba47bf`](./contracts/ethereum-1/0xc67913137429985416dbce28d9fa9ec960ba47bf/); ethereum `0xc989d3...e32fbc` | ⚠️ Unaudited |
| WormholeTransceiver | unknown | ethereum | 5 deployments: ethereum [`0x147379...f2d786`](./contracts/ethereum-1/0x147379a0174780570d07d70a14fb244ee5f2d786/); ethereum `0x76ddb3...d18d3e`; ethereum `0x920871...9283b1`; ethereum `0xb7c552...2f7017`; ethereum `0xc3b5d8...5df77c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x122a60...d280bf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2663a2...c5d2b9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x305cab...45d240` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x32574c...6385b2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x350df6...de47cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x41d6f5...5d33a5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x55021f...899e47` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5c2ae6...0a0f3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6f49b3...a2369f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x744596...4c5340` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x978e57...27bb88` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x97fb21...5a6b75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9b4e39...faa3d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa10ad2...9bc747` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa5ab95...d7d6ce` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa981a3...8b5d95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaac423...65b71f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb08e45...04c637` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb0ee3a...ca4f61` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc065e0...e785f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc08dcc...e5fda6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc4e0b2...c09e5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd6f2c3...a92915` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdf6542...41f4c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe5408c...cd468e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xeec3e1...63239b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf816cf...cff738` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf94d0d...3ffc17` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xcfc5bd...8d29cf`](./contracts/ethereum-1/0xcfc5bd99915aaa815401c5a41a927ab7a38d29cf/) | THUSDToken | token | $200,791,495.00 | Verified native implementation with $200,791,495.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x21b86f...d28d5d`](./contracts/ethereum-1/0x21b86fdc93f23fd52022a283828df8e808d28d5d/) | AssetPool | core_logic | $9,966.03 | Verified native implementation with $9,966.03 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x369fce...17f9cc`](./contracts/ethereum-1/0x369fce62b33512b2a883cf217635ee28dd17f9cc/) | ReimbursementPool | core_logic | $0.00 | Verified native implementation with $0.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4a6e0d...afd18d`](./contracts/ethereum-1/0x4a6e0d0189c1d09eb4c63a53693d2be26cafd18d/) | AcreMultiAssetVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xabe008...e33fe1`](./contracts/ethereum-1/0xabe0080ea5f7a58b90398b1c87093cc225e33fe1/) | Auction | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x773a4c...37b3c4`](./contracts/ethereum-1/0x773a4cacbca8e3704f8f7842531eab83e437b3c4/) | AuctionBidder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x65fbae...9d9fc6`](./contracts/ethereum-1/0x65fbae61ad2c8836ffbfb502a0da41b0789d9fc6/) | Bank | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b8e50...f831ca`](./contracts/ethereum-1/0x1b8e50ec9fbf844c3671bc178df8eadfcff831ca/) | BatchedPhasedEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x632c2d...6e83e8`](./contracts/ethereum-1/0x632c2d58ad870fbd4569da0a4e82ddf4b56e83e8/) | BeaconAuthorization | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fec9c...ffbfff`](./contracts/ethereum-1/0x8fec9cf78087064f1f32269f68f94ae343ffbfff/) | BeaconBackportRewards | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24c0fb...f07647`](./contracts/ethereum-1/0x24c0fbd3ff8e742080c60881f8527ca3baf07647/) | BeaconBackportRewardsEscrowBeneficiary | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x024a69...2abd84`](./contracts/ethereum-1/0x024a697788918007592572f7cd020df2bc2abd84/) | BeaconDkg | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4edc83...653f94`](./contracts/ethereum-1/0x4edc83c5c5b0c41a594371485554b95280653f94/) | BeaconDkgValidator | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67a26f...941ec0`](./contracts/ethereum-1/0x67a26f2ebdb2448605936fe9a5f496cda7941ec0/) | BeaconInactivity | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf5180...f5f491`](./contracts/ethereum-1/0xbf51807acb3394b8550f0554fb9098856ef5f491/) | BeaconRewards | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b15fe...e68ff0`](./contracts/ethereum-1/0x9b15fef1bfa4aff9b51f7b3b2df4d197cde68ff0/) | BeaconRewardsEscrowBeneficiary | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04b94f...0f4d32`](./contracts/ethereum-1/0x04b94f55780682478c8d8329368aaafd320f4d32/) | BitcoinDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f2766...4839a5`](./contracts/ethereum-1/0x1f2766373e74f268d5dbde32a395eb1c924839a5/) | BitcoinRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x655205...e020cd`](./contracts/ethereum-1/0x6552059b6efc6aa4ae3ea45f28ed4d92ace020cd/) | BLS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa9e838...22c105`](./contracts/ethereum-1/0xa9e838fcb9295fa44d89d06ed59811ae1a22c105/) | BondedECDSAKeep | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a7cd8...35c5d7`](./contracts/ethereum-1/0x6a7cd8e1384d49f502b4a4ce9ac9eb320835c5d7/) | BondedECDSAKeepFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c46f4...2ede4f`](./contracts/ethereum-1/0x0c46f496c410465975a427e34a976fc15a2ede4f/) | BondedSortitionPoolFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x265054...2e2ec5`](./contracts/ethereum-1/0x265054f72bad343fdee3e018269cbb899e2e2ec5/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa94dd6...0778ee`](./contracts/ethereum-1/0xa94dd662e2a247493facceab9f2459aaf90778ee/) | BridgeGovernance | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce4b16...0d3443`](./contracts/ethereum-1/0xce4b16b81a28d785feeb7b1d56a9b97d450d3443/) | BridgeGovernanceParameters | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d7b62...6d811a`](./contracts/ethereum-1/0x7d7b622c07f216d99efc3efb9cf71872f46d811a/) | CoveragePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22428b...2ee39b`](./contracts/ethereum-1/0x22428b09efc87709ab49a77da6f9ce4ffa2ee39b/) | CoveragePoolBeneficiary | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ac184...c04dc5`](./contracts/ethereum-1/0x1ac1841a47054e070236f1664991e52c30c04dc5/) | Deposit | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87effe...0faf8b`](./contracts/ethereum-1/0x87effef56c7ff13e2463b5d4dce81be2340faf8b/) | DepositFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x62d128...ccd125`](./contracts/ethereum-1/0x62d1286683507939c065c12f2d1e80cca8ccd125/) | DepositFunding | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ca506...081a56`](./contracts/ethereum-1/0x1ca5060bf142c58168aedb974aabb020bc081a56/) | DepositLiquidation | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x817c0f...372323`](./contracts/ethereum-1/0x817c0f6332392ad65d7688ed22f59b227e372323/) | DepositRedemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8695ff...ae1c80`](./contracts/ethereum-1/0x8695ff199a1216fc7e2bf97303bf662babae1c80/) | DepositStates | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x392635...ac9b95`](./contracts/ethereum-1/0x392635646bc22fc13c86859d1f02b27974ac9b95/) | DepositSweep | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ad83d...212517`](./contracts/ethereum-1/0x2ad83decf0555945094e5d25129c1f324f212517/) | DepositUtils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa544b7...50e672`](./contracts/ethereum-1/0xa544b70dc6af906862f68eb8e68c27bb7150e672/) | DonationVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe9ca1a...c036fa`](./contracts/ethereum-1/0xe9ca1abe343515312eb6d13178c5a2dce3c036fa/) | ECDSABackportRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82ab5f...c76108`](./contracts/ethereum-1/0x82ab5f02993bf312d9aca03157f26febebc76108/) | ECDSABackportRewardsEscrowBeneficiary | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0125c8...d4ef27`](./contracts/ethereum-1/0x0125c8977a02b2fa3970b1ed9af02f5bedd4ef27/) | EcdsaDkgValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8263ef...46f764`](./contracts/ethereum-1/0x8263efcb8f28246697585c89fed0501cd946f764/) | EcdsaInactivity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5ac5a...ffca88`](./contracts/ethereum-1/0xc5ac5a8892230e0a3e1c473881a2de7353ffca88/) | ECDSARewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b9e48...91bbb3`](./contracts/ethereum-1/0x5b9e48f8818962699fe38f5989b130cee691bbb3/) | ECDSARewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa77ec9...952042`](./contracts/ethereum-1/0xa77ec9c89a0c889bcb05d15df42d49b706952042/) | ECDSARewardsDistributorEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x037a91...5efb84`](./contracts/ethereum-1/0x037a91d627cdbdd5ae20d6912fa15ae29b5efb84/) | ECDSARewardsEscrowBeneficiary | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xaf3fff...f94789`](./contracts/ethereum-1/0xaf3fff06b75f99352d8c2a3c4bef1339a2f94789/) | FeeRebateToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51bbef...ba3559`](./contracts/ethereum-1/0x51bbef1c7cc3a1d3bc5e64ce6c3ba6e66fba3559/) | Fraud | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x94c70c...93d063`](./contracts/ethereum-1/0x94c70c36b519e03705ddc26982d438f71993d063/) | FundingScript | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c0a34...e46ab3`](./contracts/ethereum-1/0x2c0a348500638aace229d6868c26b4e64fe46ab3/) | GasPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02612d...8a3db3`](./contracts/ethereum-1/0x02612d20cc087670a959bb12ca3c5fd56c8a3db3/) | GrantStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27321f...89a3d5`](./contracts/ethereum-1/0x27321f84704a599ab740281e285cc4463d89a3d5/) | KeepBonding | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x29fa8f...78261c`](./contracts/ethereum-1/0x29fa8f46cbb9562b87773c8f50a7f9f27178261c/) | KeepFactorySelection | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf7084...fcf9de`](./contracts/ethereum-1/0xdf708431162ba247ddae362d2c919e0fbafcf9de/) | KeepRandomBeaconOperator | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3975ce...5718e7`](./contracts/ethereum-1/0x3975ce253ff9d586cf08c3898f95064b7a5718e7/) | KeepRandomBeaconOperatorStatistics | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06b586...13fd7d`](./contracts/ethereum-1/0x06b5869aadcf3fa9a2733dd93d4240a6d813fd7d/) | KeepTokenGeyserRewardsEscrowBeneficiary | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdf00da...016c87`](./contracts/ethereum-1/0xdf00dac2be1250cf62cbfc617ee7bc45c0016c87/) | KeepVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x836cdf...35896e`](./contracts/ethereum-1/0x836cdfe63fe2d63f8bdb69b96f6097f36635896e/) | LightRelay | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ca2f6...efa3c8`](./contracts/ethereum-1/0x4ca2f6206da1a7cb8155fea68797efdf25efa3c8/) | LightRelayMaintainerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6c84a8...d0de40`](./contracts/ethereum-1/0x6c84a8f1c29108f47a79964b5fe888d4f4d0de40/) | Locks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x47a5f2...9d6f44`](./contracts/ethereum-1/0x47a5f2ffdf66d13ed7e317581f458d09b49d6f44/) | LPRewardsKEEPETH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78aa83...482edd`](./contracts/ethereum-1/0x78aa83bd6c9de5de0a2231366900ab060a482edd/) | LPRewardsTBTCSaddle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6ad9e8...03f76d`](./contracts/ethereum-1/0x6ad9e8e5236c0e2cf6d755bb7be4eabcbc03f76d/) | LPRewardsTBTCv2Saddle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x535e01...40140f`](./contracts/ethereum-1/0x535e01f948458e0b64f9db2a01da6f32e240140f/) | MaintainerProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e1d7e...e2b5df`](./contracts/ethereum-1/0x3e1d7ea6c2f5a39e90a21450a57269ca50e2b5df/) | MezoAllocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1af817...27d1f5`](./contracts/ethereum-1/0x1af817c36708fd0d057c87a51c92fbb0e527d1f5/) | MezoBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x310667...d42123`](./contracts/ethereum-1/0x3106675ede4a64d70131247466fd8704a3d42123/) | MovingFunds | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x478409...ec29ed`](./contracts/ethereum-1/0x478409d856cd759cbfaa6639d88b7cdcb8ec29ed/) | OutsourceDepositLogging | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x964d45...2ec157`](./contracts/ethereum-1/0x964d45256c73df0239a26216cec155d7e12ec157/) | PhasedEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8fa3ef...3666c0`](./contracts/ethereum-1/0x8fa3ef45137c3aff337e42f98023c1d7dd3666c0/) | PlainTransferEscrowBeneficiary | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b459c...ddeafd`](./contracts/ethereum-1/0x0b459cae3f5f91469b910a8811723606b2ddeafd/) | Portal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5499f5...e3d80b`](./contracts/ethereum-1/0x5499f54b4a1cb4816eefcf78962040461be3d80b/) | RandomBeacon | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0a308...cb1c63`](./contracts/ethereum-1/0xd0a3088ed9fff4357b79cd3896bd38876fcb1c63/) | RandomBeaconGovernance | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7d807e...a25914`](./contracts/ethereum-1/0x7d807e9ce1ef73048fee9a4214e75e894ea25914/) | Redemption | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0972e6...adb887`](./contracts/ethereum-1/0x0972e6062eac0fe8686d82ea010504066dadb887/) | RedemptionScript | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2355d7...f62b30`](./contracts/ethereum-1/0x2355d701d8d85ed161ab66a0a7e759c463f62b30/) | RiskManagerV1 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x43faf6...f7442f`](./contracts/ethereum-1/0x43faf6fe84e01dd186cfeb9ea2f0854a1ef7442f/) | SignerBondsManualSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e4cba...ecbcf6`](./contracts/ethereum-1/0x4e4cba3779d56386ed43631b4dcd6d8eacecbcf6/) | SortitionPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb59f4...8a0b81`](./contracts/ethereum-1/0xbb59f486135145ad247b82f9cdf52be4a58a0b81/) | StakerRewardsBeneficiary | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x118b76...069bd8`](./contracts/ethereum-1/0x118b7642b91bcf02c565a3c417534e29e4069bd8/) | StakingPoolRewardsEscrowBeneficiary | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x236aa5...ab794b`](./contracts/ethereum-1/0x236aa50979d5f3de3bd1eeb40e81137f22ab794b/) | StakingPortBacker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcdf702...94bee5`](./contracts/ethereum-1/0xcdf7028ceab81fa0c6971208e83fa7872994bee5/) | T | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18084f...d93a88`](./contracts/ethereum-1/0x18084fba666a33d37592fa2633fd49a74dd93a88/) | TBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x63a152...26750d`](./contracts/ethereum-1/0x63a152ea1cd78ac3c7c1fcf1322dc6de1126750d/) | TBTCConstants | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10b66b...37cdf0`](./contracts/ethereum-1/0x10b66bd1e3b5a936b7f8dbc5976004311037cdf0/) | TBTCDepositToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe20a5c...1ab64a`](./contracts/ethereum-1/0xe20a5c79b39bc8c363f0f49adcfa82c2a01ab64a/) | TBTCSystem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x52818e...277fd4`](./contracts/ethereum-1/0x52818e501612d3c5b37b5f9b83b024342c277fd4/) | TBTCVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82f080...82b25a`](./contracts/ethereum-1/0x82f08041f1bc1aa399320743f33f75cca482b25a/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda534b...681365`](./contracts/ethereum-1/0xda534b567099ca481384133bc121d5843f681365/) | TokenStakingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41c9b5...79d91a`](./contracts/ethereum-1/0x41c9b5639e3f2f6c61e9b78b2c6ff3746e79d91a/) | TopUps | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x007854...0df843`](./contracts/ethereum-1/0x007854fdcc9c6f748b435e63745599fb1a0df843/) | UnderwriterToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cca7e...47680e`](./contracts/ethereum-1/0x1cca7e410ee41739792ea0a24e00349dd247680e/) | VendingMachine | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xce1f98...026d4b`](./contracts/ethereum-1/0xce1f983c29f7a6c0c0dfa78c4d8fe7bdfe026d4b/) | VendingMachineV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7570a2...6437e6`](./contracts/ethereum-1/0x7570a2350183b4bdf7ca74fad3fc19048e6437e6/) | VendingMachineV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10fb59...43ffe5`](./contracts/ethereum-1/0x10fb5943e2f4f67ee6a533dae49b6d4cc443ffe5/) | WalletCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x30019d...fbdec2`](./contracts/ethereum-1/0x30019d85a86abd3cda1167f4c052690c32fbdec2/) | WalletProposalValidator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08d7e8...65c832`](./contracts/ethereum-1/0x08d7e8ce124921caafd7670502379ced0065c832/) | WalletRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6aed6c...d47fe8`](./contracts/ethereum-1/0x6aed6cc30d1b2770771052555d257da86ed47fe8/) | WalletRegistryGovernance | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc67913...ba47bf`](./contracts/ethereum-1/0xc67913137429985416dbce28d9fa9ec960ba47bf/) | Wallets | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 104 |
| upstream | 4 |
| standard_library | 6 |
| needs_review | 24 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
