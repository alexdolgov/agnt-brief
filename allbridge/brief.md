# Agentic Audit Brief: Allbridge

⚠️ Lifecycle status: DECLINING - TVL dropped 5.5% over 90 days

## Project Overview

- Project: Allbridge (`allbridge`)
- Website: [https://app.allbridge.io](https://app.allbridge.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:22:10.586Z
- Pipeline run: v2-pipeline-2026-06-10-b79301-df6b
- Chains: arbitrum, aurora, avalanche, base, bsc, celo, ethereum, fantom, harmony, optimism, polygon, sonic, unichain
- Contract surface: 282 unique implementations (537 raw deployments)
- DeFi Llama TVL: $26,552,200.00
- On-chain TVL (included contracts): $19,333,323.22
- TVL by chain: Ethereum $16,153,065.95 | Arbitrum $761,941.23 | Polygon $663,601.83 | Base $652,024.37 | Bsc $539,697.07 | Celo $282,251.27 | Avalanche $158,422.69 | Optimism $74,308.37 | Unichain $26,646.96 | Sonic $21,363.48

## Project Description

Allbridge is a cross-chain bridge for transferring assets between blockchains. Its current Allbridge Core product supports cross-chain swaps and transfers of native stablecoins using liquidity pools, while Allbridge Classic is the legacy wrapped-token bridge. LayerZero/OFT should only be referenced for specific adapter contracts when directly supported by scope evidence.

### Architecture

Allbridge Classic and Allbridge Core are separate bridge implementations that do not share infrastructure. The Classic bridge is being deprecated in favor of Core, which uses a different architecture based on liquidity pools and OFT adapters.

## Audit Coverage Summary

- Verified implementations audited: 0/82 (0.0%)
- Verified + Unaudited implementations: 75
- Verified by bytecode match: 7
- Unverified implementations: 200
- Unique implementations: 282
- Raw deployments: 537
- Audits discovered: 8
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $19,333,323.22
- Latest audit: 2022-07 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 5 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $19,333,323.22 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (75)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| YellowToken | token | polygon | 2 deployments: ethereum `0x90b7e2...8a3320`; polygon [`0x18e73a...ab7b81`](./contracts/polygon-137/0x18e73a5333984549484348a94f4d219f4fab7b81/) | ⚠️ Unaudited |
| BEP20Token | token | bsc | [`0xc2c28b...115148`](./contracts/bsc-56/0xc2c28b58db223da89b567a0a98197fc17c115148/) | ⚠️ Unaudited |
| StableTokenV2 | token | celo | [`0xe8537a...ab4787`](./contracts/celo-42220/0xe8537a3d056da446677b9e9d6c5db704eaab4787/) | ⚠️ Unaudited |
| Accounts | unknown | celo | 8 deployments: celo [`0x0fe151...67ef53`](./contracts/celo-42220/0x0fe15138b6ecf2b9cc3b2bc12fe9671d4267ef53/); celo `0x565677...e2b98c`; celo `0x75ec00...ad9cef`; celo `0x7c4934...7a6683`; celo `0x907f5c...9c525a`; celo `0xbac4a3...05f603`; celo `0xc72cf6...25adce`; celo `0xccf3e2...0d3c08` | ⚠️ Unaudited |
| AddressLinkedList | unknown | celo | [`0x939c9c...712801`](./contracts/celo-42220/0x939c9cefbce3aa3a212d424b5ba978ac1b712801/) | ⚠️ Unaudited |
| AddressSortedLinkedList | unknown | celo | [`0x0e3e96...5a1552`](./contracts/celo-42220/0x0e3e96a0d64b59b46872432f47bed6a1825a1552/) | ⚠️ Unaudited |
| Ariadne | unknown | ethereum | [`0xb1c9bc...2a81d2`](./contracts/ethereum-1/0xb1c9bc94acd2fae6aabf4ffae4429b93512a81d2/) | ⚠️ Unaudited |
| AttestationsProxy | unknown | celo | 18 deployments: celo [`0x2496fd...8e9a3d`](./contracts/celo-42220/0x2496fda4b928e8cf799ac04ea79861ac828e9a3d/); celo `0x252b03...5f1649`; celo `0x30b3c1...0595ac`; celo `0x3a4936...edb3f4`; celo `0x488deb...6c8fa6`; celo `0x4a241b...877da9`; celo `0x65e25c...799411`; celo `0x673f19...74eecb`; celo `0x68da81...504785`; celo `0x93d52a...a0ecf7`; celo `0xb53ce2...d8d96a`; celo `0xc834e7...359afd`; celo `0xcc6517...9e8fbe`; celo `0xdadd05...6f9303`; celo `0xdd944d...99f451`; celo `0xeaaf55...bc9149`; celo `0xf114c7...f5406a`; celo `0xff2ba5...c9fd2d` | ⚠️ Unaudited |
| BatchTransfer | periphery | polygon | [`0x61a588...60be1b`](./contracts/polygon-137/0x61a58822d24534fdb1b035ac8fb85611ce60be1b/) | ⚠️ Unaudited |
| BlockchainParameters | unknown | celo | 3 deployments: celo [`0x3058c4...c46672`](./contracts/celo-42220/0x3058c4197c56c9a9c92d3516f2d4bb8a76c46672/); celo `0xdefbc8...217955`; celo `0xf33854...832d25` | ⚠️ Unaudited |
| CctpBridge | operational_periphery | optimism | 10 deployments: ethereum `0x965a5e...5f31d1`; ethereum `0xc51397...2210d6`; optimism [`0x08391e...7c1cd0`](./contracts/optimism-10/0x08391edf36f41f05d27a1e0fd7a29448417c1cd0/); optimism `0x125ead...13b5d2`; polygon `0x43330f...166dcf`; base `0x1efe2c...6314f6`; base `0xaefb62...56af62`; arbitrum `0x23e1ae...92ccdb`; arbitrum `0x2ed095...b98a29`; avalanche `0x791a36...47ba6d` | ⚠️ Unaudited |
| CeloUnreleasedTreasury | operational_periphery | celo | 3 deployments: celo [`0x0148a2...0ec9d7`](./contracts/celo-42220/0x0148a25d13cbd39d2ff5749369356cbde20ec9d7/); celo `0x7a8c7a...8a434f`; celo `0xa58ce5...f2fae5` | ⚠️ Unaudited |
| CeloUnreleasedTreasuryProxy | operational_periphery | celo | 2 deployments: celo [`0x2efd9e...e86c03`](./contracts/celo-42220/0x2efd9e29cfbfaf32713fbe53fd9033217ee86c03/); celo `0xc50a46...c90c12` | ⚠️ Unaudited |
| Distributor | operational_periphery | ethereum | [`0x92f7cc...fb9bf4`](./contracts/ethereum-1/0x92f7cc43fcba972c4296d851cc31c33676fb9bf4/) | ⚠️ Unaudited |
| DoubleSigningSlasher | unknown | celo | 3 deployments: celo [`0x078d04...82ffdf`](./contracts/celo-42220/0x078d04807e1a2ab0a1fbe75e7dcf7ce60c82ffdf/); celo `0x4bb82b...568a12`; celo `0xd6d73e...32f0cb` | ⚠️ Unaudited |
| DowntimeSlasher | unknown | celo | 4 deployments: celo [`0x71cac3...463fdd`](./contracts/celo-42220/0x71cac3b31c138f3327c6ca14f9a1c8d752463fdd/); celo `0x7ae1bd...b3145e`; celo `0x9ebb6a...a7246f`; celo `0xb07329...8e4c4b` | ⚠️ Unaudited |
| DucklingsV1 | unknown | polygon | 3 deployments: polygon [`0x435b74...c7b0f0`](./contracts/polygon-137/0x435b74f6dc4a0723ca19e4dd2ac8aa1361c7b0f0/); polygon `0x6966c8...6a7add`; polygon `0x8ba842...fe2499` | ⚠️ Unaudited |
| DucklingsV2 | unknown | polygon | 2 deployments: polygon [`0x1debb8...1febe2`](./contracts/polygon-137/0x1debb826578c6736898982d6c6b4b8511a1febe2/); polygon `0x8056f8...a6b4d0` | ⚠️ Unaudited |
| DuckyFamilyV1 | unknown | polygon | 3 deployments: polygon [`0x2e1380...f57977`](./contracts/polygon-137/0x2e13807a9b9577651f37322fc79ae786fff57977/); polygon `0x7cf9ed...37c1c8`; polygon `0xb66bf7...ff7675` | ⚠️ Unaudited |
| Election | unknown | celo | 6 deployments: celo [`0x169c94...3009bc`](./contracts/celo-42220/0x169c946c9f70094b8ad74ee16477f27e713009bc/); celo `0x31efa3...70d77b`; celo `0x3db69c...9f6f28`; celo `0x5ad30f...c0d10b`; celo `0xbd7d39...31780e`; celo `0xcde503...c455d4` | ⚠️ Unaudited |
| EpochManager | governance | celo | 5 deployments: celo [`0x0007fc...5edb5b`](./contracts/celo-42220/0x0007fce3fe6d2f84f2eaddcdac8e8aa1605edb5b/); celo `0x2f9592...530c0e`; celo `0x91e35c...dfc535`; celo `0xd390c7...010787`; celo `0xf424b5...26725e` | ⚠️ Unaudited |
| EpochManagerEnabler | governance | celo | 3 deployments: celo [`0x27075b...5bf0e3`](./contracts/celo-42220/0x27075b83a1df9dcc098c95f0bc45f079f05bf0e3/); celo `0x2d4148...38b687`; celo `0x6d78c7...015312` | ⚠️ Unaudited |
| EpochManagerEnablerProxy | governance | celo | [`0xb50216...f223a3`](./contracts/celo-42220/0xb50216c8225b0802f0197cc8c7e567a6d5f223a3/) | ⚠️ Unaudited |
| EpochRewards | unknown | celo | 6 deployments: celo [`0x33285c...63464b`](./contracts/celo-42220/0x33285cab4df24f37899dc14f324530661c63464b/); celo `0x4cadba...562aba`; celo `0x563ba8...177eda`; celo `0x755c14...73ff33`; celo `0x97f1b9...382e89`; celo `0x9dc549...f050d9` | ⚠️ Unaudited |
| ERC20Lookup | token | ethereum | [`0x6e7285...1e7ef0`](./contracts/ethereum-1/0x6e7285c3e47c242e3ad62edd5d0f19886f1e7ef0/) | ⚠️ Unaudited |
| Escrow | operational_periphery | celo | 2 deployments: celo [`0x7a097d...4420c1`](./contracts/celo-42220/0x7a097d13f2b9f4e32efffbf2a5ea756dab4420c1/); celo `0xcc4e6c...88e835` | ⚠️ Unaudited |
| Exchange | unknown | celo | 2 deployments: celo [`0x9a470d...39906c`](./contracts/celo-42220/0x9a470d789bcd392ae4c8f22db8425b5ef139906c/); celo `0xedf3f7...2501a4` | ⚠️ Unaudited |
| ExchangeBRL | unknown | celo | 3 deployments: celo [`0x0d4a42...a2d112`](./contracts/celo-42220/0x0d4a42b2fc30afbf6b6e8f5ce49a659e38a2d112/); celo `0x21772f...883fee`; celo `0x8f2cf9...68a4ea` | ⚠️ Unaudited |
| ExchangeEUR | unknown | celo | 3 deployments: celo [`0x32c2dc...b5dc8d`](./contracts/celo-42220/0x32c2dcb7730ed6fc1eac0444a668f38fd7b5dc8d/); celo `0x622833...0234d9`; celo `0xe38339...d53d1d` | ⚠️ Unaudited |
| FederatedAttestations | unknown | celo | 2 deployments: celo [`0x0ad5b1...d6aff2`](./contracts/celo-42220/0x0ad5b1d0c25ecf6266dd951403723b2687d6aff2/); celo `0x76a4da...53ea85` | ⚠️ Unaudited |
| FeeCurrencyDirectory | unknown | celo | 3 deployments: celo [`0x15f344...2c6276`](./contracts/celo-42220/0x15f344b9e6c3cb6f0376a36a64928b13f62c6276/); celo `0x8a9acf...ae24b6`; celo `0xf6fb74...6d0463` | ⚠️ Unaudited |
| FeeCurrencyDirectoryProxy | unknown | celo | [`0x60f636...d210fa`](./contracts/celo-42220/0x60f6362550868fd1d6e92b2f680f5e02f4d210fa/) | ⚠️ Unaudited |
| FeeCurrencyWhitelist | unknown | celo | 3 deployments: celo [`0x07bd1d...619f58`](./contracts/celo-42220/0x07bd1d6c15c9caed92bedec84f1ae0fc54619f58/); celo `0xa9d609...881afd`; celo `0xbc7534...220953` | ⚠️ Unaudited |
| FeeHandler | unknown | celo | 4 deployments: celo [`0x558c20...fea36c`](./contracts/celo-42220/0x558c209b246d5f21cc32a11da29a1cdbdcfea36c/); celo `0x90ed9a...7373a5`; celo `0xcd4377...6b8778`; celo `0xea8f09...0fa97f` | ⚠️ Unaudited |
| FixedAmountVesting | operational_periphery | ethereum | 4 deployments: ethereum [`0x187b9b...1c8f80`](./contracts/ethereum-1/0x187b9ba6dc6df1c03c39afe6711c2216181c8f80/); ethereum `0x6d2463...73c820`; ethereum `0xabccdf...535af9`; bsc `0xacfde4...bfd768` | ⚠️ Unaudited |
| GasOracle | operational_periphery | ethereum | 7 deployments: ethereum [`0x0bdf61...5b96e0`](./contracts/ethereum-1/0x0bdf6139f2841a7856ca154d851182c52f5b96e0/); optimism `0x4ad835...199d9a`; polygon `0x163f20...29d612`; base `0x7b2f61...7c6841`; base `0x7b806a...42f6d6`; arbitrum `0x2476b2...ebcb10`; avalanche `0x175fda...a2d29e` | ⚠️ Unaudited |
| GasPriceMinimum | operational_periphery | celo | 5 deployments: celo [`0x0b8464...da1b0f`](./contracts/celo-42220/0x0b8464659baa4e12a2eee42745e1131a6eda1b0f/); celo `0x28905e...3ab53e`; celo `0x52737f...bd6610`; celo `0x7c4194...a52361`; celo `0x8c3d2a...e3ba90` | ⚠️ Unaudited |
| GoldToken | token | celo | 7 deployments: celo [`0x04a182...c7edb2`](./contracts/celo-42220/0x04a182a01a303a4f1333a5ce1213ae54f0c7edb2/); celo `0x4ddeb8...f4abb4`; celo `0x8f5eca...31255e`; celo `0xb16516...b2c19d`; celo `0xcb8710...6a7a39`; celo `0xfa7752...0ad6d5`; celo `0xfea1b3...c4f7b1` | ⚠️ Unaudited |
| Governance | unknown | celo | 8 deployments: celo [`0x074a48...3db55e`](./contracts/celo-42220/0x074a4810015d67bafac5fe522c70761f343db55e/); celo `0x1914ea...347f46`; celo `0x19f78d...211b28`; celo `0x40bca4...1824e6`; celo `0x40cac0...a6c57a`; celo `0xd8476f...490966`; celo `0xf2d7aa...24cb13`; celo `0xf51d27...7a215d` | ⚠️ Unaudited |
| GovernanceSlasher | unknown | celo | 2 deployments: celo [`0xb1b7b6...c51e9e`](./contracts/celo-42220/0xb1b7b6af5bb6b527094c7cc5ce8bab32f4c51e9e/); celo `0xed1073...6dbe14` | ⚠️ Unaudited |
| GrandaMento | unknown | celo | 3 deployments: celo [`0x03f684...454a49`](./contracts/celo-42220/0x03f6842b82dd2c9276931a17dd23d73c16454a49/); celo `0x40857e...e73007`; celo `0x5b2c9e...6f9ab4` | ⚠️ Unaudited |
| HAPI | unknown | ethereum | [`0xd9c2d3...84fb54`](./contracts/ethereum-1/0xd9c2d319cd7e6177336b0a9c93c21cb48d84fb54/) | ⚠️ Unaudited |
| HAPIBSC | unknown | bsc | [`0xd9c2d3...84fb54`](./contracts/bsc-56/0xd9c2d319cd7e6177336b0a9c93c21cb48d84fb54/) | ⚠️ Unaudited |
| HedgetToken | token | bsc | [`0xc7d8d3...071731`](./contracts/bsc-56/0xc7d8d35eba58a0935ff2d5a33df105dd9f071731/) | ⚠️ Unaudited |
| ImpossibleFinance | unknown | bsc | [`0xb0e1fc...614af1`](./contracts/bsc-56/0xb0e1fc65c1a741b4662b813eb787d369b8614af1/) | ⚠️ Unaudited |
| IntegerSortedLinkedList | unknown | celo | [`0xa86051...0d047c`](./contracts/celo-42220/0xa86051f29c45218b5f6cd121ebafb690660d047c/) | ⚠️ Unaudited |
| LockedGold | unknown | celo | 6 deployments: celo [`0x55e1a0...f213d5`](./contracts/celo-42220/0x55e1a0c8f376964bd339167476063bfed7f213d5/); celo `0x5eaf00...64f4d2`; celo `0xbc5186...1de5ad`; celo `0xc683d9...58283f`; celo `0xdebe38...965e93`; celo `0xe1b236...a5831b` | ⚠️ Unaudited |
| LPStaker | core_logic | bsc | [`0xff3dfe...a87286`](./contracts/bsc-56/0xff3dfebdc111178297289003aabe7cee36a87286/) | ⚠️ Unaudited |
| MentoFeeHandlerSeller | unknown | celo | 4 deployments: celo [`0x4efa27...921a74`](./contracts/celo-42220/0x4efa274b7e33476c961065000d58ee09f7921a74/); celo `0x86142c...e12b82`; celo `0xbcf237...3d8c09`; celo `0xd1b237...037aad` | ⚠️ Unaudited |
| Messenger | unknown | ethereum | 6 deployments: ethereum [`0x203e87...9086da`](./contracts/ethereum-1/0x203e8785b4d4312c4152d0c42ba3fa8bd79086da/); optimism `0x309a09...093695`; polygon `0x3e0383...38451c`; base `0x9bc674...558271`; arbitrum `0xd5826d...bc4f9d`; avalanche `0xfd6e9d...36446f` | ⚠️ Unaudited |
| MultiSend | unknown | bsc | [`0x3ace30...ed6368`](./contracts/bsc-56/0x3ace30394aec6a47120626893878b11010ed6368/) | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | bsc | [`0x758361...8670b6`](./contracts/bsc-56/0x7583619e11a92b22419e4c10140e0876b68670b6/) | ⚠️ Unaudited |
| NftBridge | operational_periphery | bsc | [`0x999cdf...b4bced`](./contracts/bsc-56/0x999cdf7e4a9e95d499bfef29f349e02cf2b4bced/) | ⚠️ Unaudited |
| OdisPayments | unknown | celo | 2 deployments: celo [`0x9ea5e9...14bf78`](./contracts/celo-42220/0x9ea5e9b9b48a72325d59b3eba147f42b1b14bf78/); celo `0xae6b29...56d0cb` | ⚠️ Unaudited |
| OUpgradeable | proxy | unichain | 2 deployments: unichain [`0x63f2f0...116ad8`](./contracts/unichain-130/0x63f2f03b44bbbd04483dbeb1b2615f6ef1116ad8/); unichain `0xf48e70...cd32e3` | ⚠️ Unaudited |
| PEN | unknown | ethereum | [`0x5ee318...c88f66`](./contracts/ethereum-1/0x5ee3188a3f8adee1d736edd4ae85000105c88f66/) | ⚠️ Unaudited |
| PortfolioToken | token | celo | [`0xbeff0c...63120d`](./contracts/celo-42220/0xbeff0ca03f5a9d4eb79057c81d2596265a63120d/) | ⚠️ Unaudited |
| Proposals | unknown | celo | [`0x38afc0...ebfba8`](./contracts/celo-42220/0x38afc0dc55415ae27b81c24b5a5fbfe433ebfba8/) | ⚠️ Unaudited |
| Proxy | proxy | celo | 3 deployments: celo [`0x38dd9f...181c9f`](./contracts/celo-42220/0x38dd9fa2409758fa0d73440ee18f8e0249181c9f/); celo `0xd626c0...a1bbbb`; celo `0xf10011...e4cf27` | ⚠️ Unaudited |
| ProxyAdmin | governance | unichain | 2 deployments: unichain [`0x818861...73c97a`](./contracts/unichain-130/0x818861321540148dbf6058d585cc0427f273c97a/); unichain `0xcb768e...dc59cc` | ⚠️ Unaudited |
| Random | unknown | celo | 3 deployments: celo [`0x221a13...e3bdab`](./contracts/celo-42220/0x221a13e96d5c0cecb17ffd8a4a458c47ece3bdab/); celo `0x42e074...65bacd`; celo `0xe43ea9...457028` | ⚠️ Unaudited |
| Reserve | unknown | celo | 2 deployments: celo [`0x907f37...726aa0`](./contracts/celo-42220/0x907f37a0e9b003df15500c025f7acb496a726aa0/); celo `0xc683e6...85d607` | ⚠️ Unaudited |
| Rewards | unknown | bsc | [`0x88f042...085110`](./contracts/bsc-56/0x88f042fdea1d94ccd7b848686f9f529552085110/) | ⚠️ Unaudited |
| ScoreManager | governance | celo | 3 deployments: celo [`0x1077e8...d5a937`](./contracts/celo-42220/0x1077e8bd92b2fe31f605631390cb7436aed5a937/); celo `0xba8332...1bf3eb`; celo `0xef3b9c...2f603b` | ⚠️ Unaudited |
| ScoreManagerProxy | governance | celo | [`0x19cdf4...620505`](./contracts/celo-42220/0x19cdf4689d9ee3590fdbe75adefee375b4620505/) | ⚠️ Unaudited |
| SortedOracles | operational_periphery | celo | 3 deployments: celo [`0x35a4f0...6f6ab5`](./contracts/celo-42220/0x35a4f0c8c0b48769f036b79f9d428bea286f6ab5/); celo `0x6ceb70...09d171`; celo `0x93da60...f41f72` | ⚠️ Unaudited |
| StableToken | token | celo | [`0x18e6bf...495bcb`](./contracts/celo-42220/0x18e6bfdc909063f7445e410a5495264619495bcb/) | ⚠️ Unaudited |
| StableTokenBRL | token | celo | [`0x5e7297...eddec8`](./contracts/celo-42220/0x5e72978225b5777298b28b7ea543bf0c5feddec8/) | ⚠️ Unaudited |
| StableTokenEUR | token | celo | 2 deployments: celo [`0x09933e...240bb3`](./contracts/celo-42220/0x09933e89986fea776c3be3556dbf9ba23c240bb3/); celo `0x665cb5...a60b78` | ⚠️ Unaudited |
| StableTokenV3 | token | celo | [`0xd8763c...d6ca73`](./contracts/celo-42220/0xd8763cba276a3738e6de85b4b3bf5fded6d6ca73/) | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | unichain | 3 deployments: unichain [`0x01bff4...bc1071`](./contracts/unichain-130/0x01bff41798a0bcf287b996046ca68b395dbc1071/); unichain `0x915143...60ecc5`; unichain `0xaf37e8...0847ff` | ⚠️ Unaudited |
| TreasureVault | core_logic | polygon | 2 deployments: polygon [`0x68d1e3...74d852`](./contracts/polygon-137/0x68d1e3f802058ce517e9ba871ab182299e74d852/); polygon `0xa0f014...d246d8` | ⚠️ Unaudited |
| TwoWeeksNotice | unknown | bsc | [`0xee170d...8626f6`](./contracts/bsc-56/0xee170d3dc00f792e5116b42fe36628f4f28626f6/) | ⚠️ Unaudited |
| Validators | unknown | celo | 4 deployments: celo [`0x2e3b47...e7c68d`](./contracts/celo-42220/0x2e3b47cf3163de47e852ff11d53a9ad8dfe7c68d/); celo `0x4b84c7...b71428`; celo `0xa47961...c8dc95`; celo `0xbc8ca2...b88d1a` | ⚠️ Unaudited |
| WormholeMessenger | unknown | arbitrum | 2 deployments: optimism `0xf98a37...49e377`; arbitrum [`0x5f4e0a...bfc313`](./contracts/arbitrum-42161/0x5f4e0a6b848db318f4afc0b238c09747eebfc313/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (7)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Pool | core_logic | polygon | 28 deployments: ethereum `0x1d3df1...8d403c`; ethereum `0x542ad3...a9ce97`; ethereum `0x7dbf07...74135d`; ethereum `0xa7062b...c57c4d`; ethereum `0xb827b1...9d1b0e`; ethereum `0xcab34d...51abad`; ethereum `0xce01bc...539172`; ethereum `0xe6fc2a...97063c`; optimism `0x3b96f8...f1f68f`; optimism `0xb24a05...b0deea`; unichain `0xba2fba...a094d7`; unichain `0xd0a1ff...d9fce1`; polygon [`0x0394c4...090791`](./contracts/polygon-137/0x0394c4f17738a10096510832beab89a9dd090791/); polygon `0x171f3f...a47826`; polygon `0x218556...0bd604`; polygon `0x4c42df...2eb0a6`; polygon `0x58cc62...9437da`; polygon `0x6d92cf...9e3622`; sonic `0xca0dc3...43c71f`; base `0xda6bb1...5e96d5`; arbitrum `0x2b5e5e...c59d6d`; arbitrum `0x47235c...8472c7`; arbitrum `0x690e66...8a21df`; arbitrum `0xb51905...0f9f82`; arbitrum `0xfd22b7...7c5423`; celo `0xfb2c7c...e2b5af`; avalanche `0x2d2f46...8b5784`; avalanche `0xe82735...38ec9f` | ⚠️ Unaudited (bytecode match) |
| Token | unknown | polygon | 4 deployments: ethereum `0xa11bd3...ce8c7c`; ethereum `0xf74134...ea3615`; bsc `0x37dfac...0aacb7`; polygon [`0x14743e...4103e7`](./contracts/polygon-137/0x14743e1c6f812154f7ecc980d890f0f5234103e7/) | ⚠️ Unaudited (bytecode match) |
| WrappedToken | token | polygon | 48 deployments: ethereum `0x087095...f1863f`; ethereum `0x2bd1f3...3f5f0f`; ethereum `0x34ac7e...52d469`; ethereum `0x48b847...9bba72`; ethereum `0x572614...9ab9da`; ethereum `0x934ac3...6ee8a9`; ethereum `0xac5c23...94c294`; bsc `0x0556c7...cbe29c`; bsc `0x4f161e...f8ce9e`; bsc `0x6756d5...4b86fd`; bsc `0x68784f...f42b4a`; bsc `0x6ae4b1...2ff416`; bsc `0x8445b8...a153d7`; bsc `0x9df465...71f8f0`; bsc `0xa0a996...e73d97`; bsc `0xb3404f...b2ea1d`; bsc `0xc259b0...1bbae1`; bsc `0xcd41ef...c3731b`; polygon [`0x04429f...293346`](./contracts/polygon-137/0x04429fbb948bbd09327763214b45e505a5293346/); polygon `0x42a16b...a1fd01`; polygon `0x5639c4...319543`; polygon `0x707d64...830b4d`; polygon `0x72bd80...af6f2f`; polygon `0x7dff46...2ea7a4`; polygon `0xb6ebc3...7b38ca`; polygon `0xbe276e...9b4b19`; polygon `0xbe8096...a9547c`; polygon `0xfc69f1...3c8831`; celo `0x173234...aed450`; celo `0x33827b...0e941d`; celo `0x47264a...7346a8`; celo `0x6e512b...680cc9`; celo `0x8d2c77...95f92d`; celo `0x8e3670...89b690`; celo `0xed193c...02835c`; celo `0xf0c3fc...3e8b34`; avalanche `0x48b847...9bba72`; avalanche `0x9a3b53...007388`; avalanche `0xafc436...b291c9`; aurora `0x0f0057...5afd48`; aurora `0x0fad0e...bf41b5`; aurora `0x2bae00...630111`; aurora `0x486d4c...3d785b`; aurora `0x5c92a4...589783`; aurora `0x5ce9f0...34a9dc`; aurora `0x7b8d18...bc51eb`; aurora `0xb14674...f6e762`; aurora `0xc4bdd2...038096` | ⚠️ Unaudited (bytecode match) |
| Bridge | operational_periphery | base | 20 deployments: ethereum `0x609c69...af0c9e`; ethereum `0xa31433...a3bea9`; ethereum `0xbbbd1b...1de884`; ethereum `0xd5d6b2...5d6fc4`; optimism `0x97e5bf...50d5ab`; bsc `0xbbbd1b...1de884`; bsc `0xd5d6b2...5d6fc4`; unichain `0x782e91...05c598`; polygon `0x7775d6...d7d3e0`; polygon `0xbbbd1b...1de884`; polygon `0xd5d6b2...5d6fc4`; sonic `0x801217...19a116`; base [`0x001e3f...35def7`](./contracts/base-8453/0x001e3f136c2f804854581da55ad7660a2b35def7/); arbitrum `0x9ce344...92d189`; celo `0x80858f...c6ba0e`; celo `0xbbbd1b...1de884`; celo `0xd5d6b2...5d6fc4`; avalanche `0x9068e1...caeea9`; avalanche `0xbbbd1b...1de884`; aurora `0xbbbd1b...1de884` | ⚠️ Unaudited (bytecode match) |
| FeeOracle | unknown | ethereum | 5 deployments: ethereum [`0xba6d8d...f2e1f6`](./contracts/ethereum-1/0xba6d8de08f13a3d22fcec54752812dd4dcf2e1f6/); bsc [`0xba6d8d...f2e1f6`](./contracts/bsc-56/0xba6d8de08f13a3d22fcec54752812dd4dcf2e1f6/); polygon [`0xba6d8d...f2e1f6`](./contracts/polygon-137/0xba6d8de08f13a3d22fcec54752812dd4dcf2e1f6/); celo [`0xba6d8d...f2e1f6`](./contracts/celo-42220/0xba6d8de08f13a3d22fcec54752812dd4dcf2e1f6/); avalanche [`0xba6d8d...f2e1f6`](./contracts/avalanche-43114/0xba6d8de08f13a3d22fcec54752812dd4dcf2e1f6/) | ⚠️ Unaudited (bytecode match) |
| MultiSig | unknown | celo | 10 deployments: celo [`0x066f67...bd25f2`](./contracts/celo-42220/0x066f672c03347a24ee3f52d1f184f04f7abd25f2/); celo `0x120c00...49e892`; celo `0x65534a...043372`; celo `0x68e231...ee3903`; celo `0x72306f...72c33d`; celo `0xad52b8...14e7fc`; celo `0xb7feac...ff582a`; celo `0xbcb789...c3a567`; celo `0xc99d54...dd411e`; celo `0xed68f8...84aaf7` | ⚠️ Unaudited (bytecode match) |
| Validator | unknown | polygon | 6 deployments: ethereum `0x937465...5bd74b`; bsc `0x937465...5bd74b`; polygon [`0x0fad0e...bf41b5`](./contracts/polygon-137/0x0fad0ed848a7a16526e8a7574e418b015dbf41b5/); polygon `0xa1f17b...889d0f`; celo `0x937465...5bd74b`; avalanche `0x937465...5bd74b` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (200)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x1b337b...b56bf2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3415ca...fbd34b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3461fb...229644` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x366a90...dbee50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3b91b2...0a04a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x4074ab...ba3b62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x44f9e6...52cf15` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x47dfcb...191bfd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x70d1f1...be8b4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7972d6...d15c33` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb0719a...965e58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb24c64...e60efa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdc8889...f9c2eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe0b6e0...ef31e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xec455f...47ab7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf4830e...3da83f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x63b693...55e933` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xea7251...b077f1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xf357f3...bce9ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0ac4a2...8a7229` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0dae5e...7d3bfc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1f9016...db5724` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3420cc...71c4b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3461fb...229644` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x442ca9...fdaf5c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x454d10...8afb10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x47dfcb...191bfd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5b0b25...c6a5f6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x619c99...c05ffd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7bb5df...8a8cdc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x80f955...af396b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x95603f...66ea40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa69083...204c78` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xbabbcf...7bcf25` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcc4e74...1fd416` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd16ab8...da6204` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xda0a16...99eabf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe4631d...4fb58b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xecc1ae...fc14c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xf119b1...3e2022` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x13313c...524c4f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x3070c6...e85486` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0x44abfa...f62cc0` | ❓ Unverified |
| UnnamedContract | unknown | unichain | `0xe8a580...c0528b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3461fb...229644` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x44aaa9...3a84d1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x620a78...b21aae` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x9bb344...e75cf2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb25bdd...6d96f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb30d4d...4a4832` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xb43b97...746fbc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd32880...20595b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xd45268...d736c6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xda0a16...99eabf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xdbbe85...54669e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x83b71b...e170c3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x92b033...76634e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0xc5b78b...6aac70` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x1bb92e...0caa39` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x44f723...e0f296` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x543acd...87b679` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xbbbd1b...1de884` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xc3e16e...6ee327` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xda0a16...99eabf` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x214d97...6d7fad` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4dc269...9cd337` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9f4be8...a908e2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc75553...e307fd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe0c333...c67188` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x05266f...3cfe60` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x24c679...47e560` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x42f9e8...01ad9b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x5ab965...543c30` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7746e4...bea56a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x7ed534...88ca18` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9d7124...574eac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa82b9e...e54d76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xb074e7...94fdea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xdf8d0c...ef6f04` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xe76d1b...66f130` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x017fa8...763148` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x031961...c0c5ff` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x033392...4d7d5e` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x03e39a...7d1089` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x05bda1...f22faf` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x0775ce...580259` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x086732...e1df0e` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x08a4b5...f0bd29` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x0bfe85...5f20eb` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x0cb6fd...42422f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x0d6d2c...f2900a` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x100a08...48bf03` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x147f2a...86c941` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x176697...adfd79` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x195bbd...8c3994` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x1b7a41...8865b7` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x1e3d01...42ba5f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x28079a...7bc798` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x2abea6...a9dd09` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x2abf27...cea929` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x2c4c1f...3cbd7d` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x2dad1c...64f261` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x30584e...9f3f7d` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x311a6b...106f74` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x3461fb...229644` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x34c1c7...32e63b` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x34fe12...119725` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x399e78...6e5a8b` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x4c83d1...61af45` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x4efa94...8bc05e` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x4f86a6...2cc01a` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x5519a8...9d7deb` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x55f3b4...ecb381` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x585109...685427` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x5d90c0...8c5377` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x5f86cc...e156f1` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x660668...21e73e` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x6da06a...806ef5` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x6fd841...057e62` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x719936...b2fe87` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x72a1fc...d3543e` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x72ce6c...eb3771` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x7b586a...060860` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x7da5cf...f188a1` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x7e3278...471cb3` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x8162ed...c1c148` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x822515...2022e5` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x843fdc...4e49e6` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x8bc96d...272e59` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x8c2756...11e014` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x8cccd3...e903af` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x8d7049...58428b` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x8db17f...d97f8d` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x8fa407...eedf84` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x942bc5...5dd617` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0x99de1b...61e2ff` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa16fb1...10a360` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa987a6...dc5752` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa9d3dc...b4b716` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xa9da17...ebd17e` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xab8650...703c23` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xb511ed...52b488` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xb658b5...be2b54` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xb766b6...2fe062` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xb98746...ae9feb` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xb9e35d...7a1664` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xbc4ee7...0f606a` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xbdec4c...18b2ce` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xbef9ee...57148a` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xc285ed...afc73b` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xc4cf82...a4a77e` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xc682c3...67330d` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xcb32ea...d10f3f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd0716c...015c3f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd161fb...550caa` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd3c300...f2d9ed` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd66c72...339491` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd6d02c...16e6d1` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xd8459c...473d34` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xda0a16...99eabf` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xdbfa3e...76f1bc` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xddf776...0b27fe` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe0bd67...cf5657` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe26ae3...79c025` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe46ffe...6f75cb` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe4f927...3984bc` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe507f1...70aea0` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe52eac...f2c697` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xe7a9d3...b6fd37` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xea736c...53abba` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xee3708...07213f` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xeee820...ba66e1` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xf488ad...1aba21` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xf895f9...c40855` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xf8dc3b...0d9374` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xf9cc29...dcffdf` | ❓ Unverified |
| UnnamedContract | unknown | celo | `0xfabf6a...8464c5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4b0093...1e5970` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x513d0d...fcd5ac` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5fbf8d...b521c0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x65de05...3b57ff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x713157...32db10` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa666ec...297bd4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd36ce9...2b010a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xda0a16...99eabf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdcf579...ea40d2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf216f2...7fd100` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x937465...5bd74b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xba6d8d...f2e1f6` | ❓ Unverified |
| UnnamedContract | unknown | harmony | `0x5cb524...9fcd4b` | ❓ Unverified |
| UnnamedContract | unknown | harmony | `0x788ba0...dcad4f` | ❓ Unverified |
| UnnamedContract | unknown | harmony | `0xa21aab...664fd4` | ❓ Unverified |
| UnnamedContract | unknown | harmony | `0xcc9d14...37e71c` | ❓ Unverified |
| UnnamedContract | unknown | harmony | `0xf80ed1...f3383c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [<>](https://hacken.io/audits) | Hacken | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [<>](https://drive.google.com/file/d/1geBAoT0iuLy3s7EnlUBDKfXr-BwZWpHZ/view) | Kudelski Security | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [20211105-Neodyme.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20211105-Neodyme.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [20211117-LeastAuthority.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20211117-LeastAuthority.pdf) | unknown | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |
| [20220916-Halborn.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20220916-Halborn.pdf) | Halborn | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [20221104-AckeeBlockchain.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20221104-AckeeBlockchain.pdf) | Ackee Blockchain | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [20221208-Halborn.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20221208-Halborn.pdf) | Halborn | Audit | 2022 | stale | Direct | n/a | 0 | n/a |
| [20230607-Neodyme.pdf](https://github.com/allbridge-public/neon-evm/blob/container/audit/20230607-Neodyme.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x0394c4...090791`](./contracts/polygon-137/0x0394c4f17738a10096510832beab89a9dd090791/) | Pool | core_logic | $9,678,982.91 | Verified native implementation with $9,678,982.91 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x14743e...4103e7`](./contracts/polygon-137/0x14743e1c6f812154f7ecc980d890f0f5234103e7/) | Token | unknown | $6,401,612.94 | Verified native implementation with $6,401,612.94 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xe8537a...ab4787`](./contracts/celo-42220/0xe8537a3d056da446677b9e9d6c5db704eaab4787/) | StableTokenV2 | token | $222,962.24 | Verified native implementation with $222,962.24 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x04429f...293346`](./contracts/polygon-137/0x04429fbb948bbd09327763214b45e505a5293346/) | WrappedToken | token | $77,316.70 | Verified native implementation with $77,316.70 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x939c9c...712801`](./contracts/celo-42220/0x939c9cefbce3aa3a212d424b5ba978ac1b712801/) | AddressLinkedList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x0e3e96...5a1552`](./contracts/celo-42220/0x0e3e96a0d64b59b46872432f47bed6a1825a1552/) | AddressSortedLinkedList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1c9bc...2a81d2`](./contracts/ethereum-1/0xb1c9bc94acd2fae6aabf4ffae4429b93512a81d2/) | Ariadne | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x2496fd...8e9a3d`](./contracts/celo-42220/0x2496fda4b928e8cf799ac04ea79861ac828e9a3d/) | AttestationsProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x61a588...60be1b`](./contracts/polygon-137/0x61a58822d24534fdb1b035ac8fb85611ce60be1b/) | BatchTransfer | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x3058c4...c46672`](./contracts/celo-42220/0x3058c4197c56c9a9c92d3516f2d4bb8a76c46672/) | BlockchainParameters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x001e3f...35def7`](./contracts/base-8453/0x001e3f136c2f804854581da55ad7660a2b35def7/) | Bridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x08391e...7c1cd0`](./contracts/optimism-10/0x08391edf36f41f05d27a1e0fd7a29448417c1cd0/) | CctpBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x2efd9e...e86c03`](./contracts/celo-42220/0x2efd9e29cfbfaf32713fbe53fd9033217ee86c03/) | CeloUnreleasedTreasuryProxy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x92f7cc...fb9bf4`](./contracts/ethereum-1/0x92f7cc43fcba972c4296d851cc31c33676fb9bf4/) | Distributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x71cac3...463fdd`](./contracts/celo-42220/0x71cac3b31c138f3327c6ca14f9a1c8d752463fdd/) | DowntimeSlasher | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1debb8...1febe2`](./contracts/polygon-137/0x1debb826578c6736898982d6c6b4b8511a1febe2/) | DucklingsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2e1380...f57977`](./contracts/polygon-137/0x2e13807a9b9577651f37322fc79ae786fff57977/) | DuckyFamilyV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x169c94...3009bc`](./contracts/celo-42220/0x169c946c9f70094b8ad74ee16477f27e713009bc/) | Election | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xb50216...f223a3`](./contracts/celo-42220/0xb50216c8225b0802f0197cc8c7e567a6d5f223a3/) | EpochManagerEnablerProxy | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6e7285...1e7ef0`](./contracts/ethereum-1/0x6e7285c3e47c242e3ad62edd5d0f19886f1e7ef0/) | ERC20Lookup | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x9a470d...39906c`](./contracts/celo-42220/0x9a470d789bcd392ae4c8f22db8425b5ef139906c/) | Exchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x0d4a42...a2d112`](./contracts/celo-42220/0x0d4a42b2fc30afbf6b6e8f5ce49a659e38a2d112/) | ExchangeBRL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x32c2dc...b5dc8d`](./contracts/celo-42220/0x32c2dcb7730ed6fc1eac0444a668f38fd7b5dc8d/) | ExchangeEUR | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x0ad5b1...d6aff2`](./contracts/celo-42220/0x0ad5b1d0c25ecf6266dd951403723b2687d6aff2/) | FederatedAttestations | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x15f344...2c6276`](./contracts/celo-42220/0x15f344b9e6c3cb6f0376a36a64928b13f62c6276/) | FeeCurrencyDirectory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x60f636...d210fa`](./contracts/celo-42220/0x60f6362550868fd1d6e92b2f680f5e02f4d210fa/) | FeeCurrencyDirectoryProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x558c20...fea36c`](./contracts/celo-42220/0x558c209b246d5f21cc32a11da29a1cdbdcfea36c/) | FeeHandler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xba6d8d...f2e1f6`](./contracts/ethereum-1/0xba6d8de08f13a3d22fcec54752812dd4dcf2e1f6/) | FeeOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x187b9b...1c8f80`](./contracts/ethereum-1/0x187b9ba6dc6df1c03c39afe6711c2216181c8f80/) | FixedAmountVesting | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bdf61...5b96e0`](./contracts/ethereum-1/0x0bdf6139f2841a7856ca154d851182c52f5b96e0/) | GasOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x074a48...3db55e`](./contracts/celo-42220/0x074a4810015d67bafac5fe522c70761f343db55e/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x03f684...454a49`](./contracts/celo-42220/0x03f6842b82dd2c9276931a17dd23d73c16454a49/) | GrandaMento | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd9c2d3...84fb54`](./contracts/ethereum-1/0xd9c2d319cd7e6177336b0a9c93c21cb48d84fb54/) | HAPI | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xa86051...0d047c`](./contracts/celo-42220/0xa86051f29c45218b5f6cd121ebafb690660d047c/) | IntegerSortedLinkedList | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xff3dfe...a87286`](./contracts/bsc-56/0xff3dfebdc111178297289003aabe7cee36a87286/) | LPStaker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x4efa27...921a74`](./contracts/celo-42220/0x4efa274b7e33476c961065000d58ee09f7921a74/) | MentoFeeHandlerSeller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x203e87...9086da`](./contracts/ethereum-1/0x203e8785b4d4312c4152d0c42ba3fa8bd79086da/) | Messenger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ee318...c88f66`](./contracts/ethereum-1/0x5ee3188a3f8adee1d736edd4ae85000105c88f66/) | PEN | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xbeff0c...63120d`](./contracts/celo-42220/0xbeff0ca03f5a9d4eb79057c81d2596265a63120d/) | PortfolioToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x38afc0...ebfba8`](./contracts/celo-42220/0x38afc0dc55415ae27b81c24b5a5fbfe433ebfba8/) | Proposals | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x38dd9f...181c9f`](./contracts/celo-42220/0x38dd9fa2409758fa0d73440ee18f8e0249181c9f/) | Proxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x221a13...e3bdab`](./contracts/celo-42220/0x221a13e96d5c0cecb17ffd8a4a458c47ece3bdab/) | Random | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x88f042...085110`](./contracts/bsc-56/0x88f042fdea1d94ccd7b848686f9f529552085110/) | Rewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x19cdf4...620505`](./contracts/celo-42220/0x19cdf4689d9ee3590fdbe75adefee375b4620505/) | ScoreManagerProxy | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x35a4f0...6f6ab5`](./contracts/celo-42220/0x35a4f0c8c0b48769f036b79f9d428bea286f6ab5/) | SortedOracles | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x18e6bf...495bcb`](./contracts/celo-42220/0x18e6bfdc909063f7445e410a5495264619495bcb/) | StableToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x5e7297...eddec8`](./contracts/celo-42220/0x5e72978225b5777298b28b7ea543bf0c5feddec8/) | StableTokenBRL | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x09933e...240bb3`](./contracts/celo-42220/0x09933e89986fea776c3be3556dbf9ba23c240bb3/) | StableTokenEUR | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0xd8763c...d6ca73`](./contracts/celo-42220/0xd8763cba276a3738e6de85b4b3bf5fded6d6ca73/) | StableTokenV3 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xee170d...8626f6`](./contracts/bsc-56/0xee170d3dc00f792e5116b42fe36628f4f28626f6/) | TwoWeeksNotice | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| celo | [`0x2e3b47...e7c68d`](./contracts/celo-42220/0x2e3b47cf3163de47e852ff11d53a9ad8dfe7c68d/) | Validators | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 144 |
| upstream | 13 |
| standard_library | 6 |
| needs_review | 119 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1819] <>
- [1820] <>
- [9788] 20211105-Neodyme.pdf
- [9789] 20211117-LeastAuthority.pdf
- [9790] 20220916-Halborn.pdf
- [9791] 20221104-AckeeBlockchain.pdf
- [9792] 20221208-Halborn.pdf
- [9793] 20230607-Neodyme.pdf

Fork inheritance lineage and inherited audits are included when available.
