# Agentic Audit Brief: Rumpel Labs

⚠️ Lifecycle status: DECLINING - TVL dropped 14.7% over 90 days

## Project Overview

- Project: Rumpel Labs (`rumpel-labs`)
- Website: [https://www.rumpel.xyz](https://www.rumpel.xyz)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:12.153Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 115 unique implementations (316 raw deployments)
- DeFi Llama TVL: $1,892,481.62
- On-chain TVL (included contracts): $1,039,269,130.27
- TVL by chain: Ethereum $1,039,269,130.27

## Project Description

Rumpel Labs is a point-tokenization protocol that enables users to tokenize, mint, and trade exposure to offchain loyalty or reward points earned through supported integrations. Its products are focused on representing points and potential future rewards onchain, including possible redemption or settlement mechanics, rather than operating as a broad structured-yield or synthetic-asset exposure aggregator.

### Architecture

All contracts belong to a single product family, sharing infrastructure like proxy patterns (TransparentUpgradeableProxy, BeaconProxy) and token wrappers. Vaults interact with external protocols (Fluid, Pendle, Mellow) and use supporting resolvers and collateral contracts to manage positions and risk.

## Audit Coverage Summary

- Verified implementations audited: 2/101 (2.0%)
- Verified + Unaudited implementations: 99
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 115
- Raw deployments: 316
- Audits discovered: 4
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $1,039,269,130.27
- Latest audit: 2024-07 (aging)
- Staleness: 0 fresh, 2 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $1,039,269,130.27 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Darklinear | Tier 2 | 2 | 2.0% | 2024-07 |
| unknown | Tier 2 | 1 | 1.0% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| PointTokenVault | core_logic | ethereum | [`0xe47f9d...45ba61`](./contracts/ethereum-1/0xe47f9dbbfe98d6930562017ee212c1a1ae45ba61/) | ✅ Audited |
| RumpelWalletFactory | registry | ethereum | [`0x5774ab...db2937`](./contracts/ethereum-1/0x5774abcf415f34592514698eb075051e97db2937/) | ✅ Audited |

### ⚠️ Verified + Unaudited (99)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| OsTokenVaultController | core_logic | ethereum | 2 deployments: ethereum [`0x2a261e...000306`](./contracts/ethereum-1/0x2a261e60fb14586b474c208b1b7ac6d0f5000306/); ethereum `0xfe7083...44b521` | ⚠️ Unaudited |
| OsToken | token | ethereum | 2 deployments: ethereum [`0x475e7d...b96702`](./contracts/ethereum-1/0x475e7d2bd7428deb68deaa933dbf0d5850b96702/); ethereum `0xf1c9ac...190e38` | ⚠️ Unaudited |
| EthGenesisVault | core_logic | ethereum | 5 deployments: ethereum [`0x124c33...510928`](./contracts/ethereum-1/0x124c33d07f94b31adf87c12f7ca3a586d3510928/); ethereum `0x2d491b...135f31`; ethereum `0x7aa02b...549733`; ethereum `0x9481a4...2fabd7`; ethereum `0xac0f90...652885` | ⚠️ Unaudited |
| ZtakingPool | core_logic | ethereum | 2 deployments: ethereum [`0x221c2b...d881f0`](./contracts/ethereum-1/0x221c2b6ee63dcede31ea703898ae15d889d881f0/); ethereum `0xf047ab...aeafa6` | ⚠️ Unaudited |
| swETH | token | ethereum | [`0xf951e3...7ded78`](./contracts/ethereum-1/0xf951e335afb289353dc249e82926178eac7ded78/) | ⚠️ Unaudited |
| LendingPool | core_logic | ethereum | [`0xe1b4d3...8e6c2e`](./contracts/ethereum-1/0xe1b4d34e8754600962cd944b535180bd758e6c2e/) | ⚠️ Unaudited |
| SimpleToken | token | ethereum | 8 deployments: ethereum [`0x35533f...16868b`](./contracts/ethereum-1/0x35533f54740f1f1aa4179e57ba37039dfa16868b/); ethereum `0x35e5db...e8a4b9`; ethereum `0x46c1c1...caeaab`; ethereum `0x4956b5...528f96`; ethereum `0x66a1e3...f3e110`; ethereum `0xb1b385...99f15c`; ethereum `0xc31389...aa5fdc`; ethereum `0xef4c4b...a1fabe` | ⚠️ Unaudited |
| MultiVault | core_logic | ethereum | 13 deployments: ethereum [`0x241835...fab696`](./contracts/ethereum-1/0x24183535a24cf0272841b05047a26e200ffab696/); ethereum `0x375a8e...ebeba0`; ethereum `0x49cd58...8232a9`; ethereum `0x4f3cc6...5dc961`; ethereum `0x7a4eff...327e3a`; ethereum `0x7b31f0...855249`; ethereum `0x82dc32...07163b`; ethereum `0x84631c...a9f93a`; ethereum `0x8c9532...3e9811`; ethereum `0xb908c9...26c72d`; ethereum `0xbeef69...2e6abc`; ethereum `0xcc36e5...82ebad`; ethereum `0xd6e09a...37931b` | ⚠️ Unaudited |
| MellowSymbioticVault | core_logic | ethereum | 2 deployments: ethereum [`0x08f39b...152547`](./contracts/ethereum-1/0x08f39b3d75712148dacdb2669c3eacc7f1152547/); ethereum `0xe4357b...bf125d` | ⚠️ Unaudited |
| VaultTokenized | core_logic | ethereum | 3 deployments: ethereum [`0x65b560...d69d63`](./contracts/ethereum-1/0x65b560d887c010c4993c8f8b36e595c171d69d63/); ethereum `0xb8fd82...ff056c`; ethereum `0xc10a7f...e3a1da` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | 2 deployments: ethereum [`0x2dabce...68adac`](./contracts/ethereum-1/0x2dabcea55a12d73191aece59f508b191fb68adac/); ethereum `0xbe3ca3...9aff4e` | ⚠️ Unaudited |
| MellowVaultCompat | core_logic | ethereum | 5 deployments: ethereum [`0x3a828c...45b4c7`](./contracts/ethereum-1/0x3a828c183b3f382d030136c824844ea30145b4c7/); ethereum `0x64047d...3f877f`; ethereum `0x7f43fd...9ce444`; ethereum `0x82f510...9e0b26`; ethereum `0xc65433...c47bd8` | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | [`0x917cee...909d88`](./contracts/ethereum-1/0x917cee801a67f933f2e6b33fc0cd1ed2d5909d88/) | ⚠️ Unaudited |
| PendleMarketV3 | core_logic | ethereum | [`0x09fa04...6d4fb9`](./contracts/ethereum-1/0x09fa04aac9c6d1c6131352ee950cd67ecc6d4fb9/) | ⚠️ Unaudited |
| EVault | core_logic | ethereum | [`0x9f12d2...1f9899`](./contracts/ethereum-1/0x9f12d29c7cc72bb3d237e2d042a6d890421f9899/) | ⚠️ Unaudited |
| WrappedDollarVault | core_logic | ethereum | 16 deployments: ethereum [`0x057d76...be1cde`](./contracts/ethereum-1/0x057d761e9e9fa14a85b66f99d1061792ddbe1cde/); ethereum `0x09dcfa...d860c6`; ethereum `0x122ba9...b32ac6`; ethereum `0x1d56d2...851999`; ethereum `0x253c2d...c5a65e`; ethereum `0x5c9960...945778`; ethereum `0x68aa53...d60379`; ethereum `0x7d5305...1b5dda`; ethereum `0x7e59b4...abfa7b`; ethereum `0xcdfb1f...bc8253`; ethereum `0xd1a6c3...7b6e32`; ethereum `0xd27ff9...37411b`; ethereum `0xd2de09...12d3b7`; ethereum `0xd961c8...f9b5cd`; ethereum `0xdb46cc...a955c7`; ethereum `0xfad078...975005` | ⚠️ Unaudited |
| AaveV3TreasuryConnector | operational_periphery | ethereum | [`0x91eda2...03c8ca`](./contracts/ethereum-1/0x91eda28735ce089a8b5133476263c3fb8303c8ca/) | ⚠️ Unaudited |
| AddressesWhitelist | unknown | ethereum | 3 deployments: ethereum [`0x2d0049...6b0f77`](./contracts/ethereum-1/0x2d00499079d7145163a213ab1443056cce6b0f77/); ethereum `0x594302...311255`; ethereum `0xfff167...c01ad6` | ⚠️ Unaudited |
| AnchorageTokenUSDtb | token | ethereum | [`0xc13919...18ac1c`](./contracts/ethereum-1/0xc139190f447e929f090edeb554d95abb8b18ac1c/) | ⚠️ Unaudited |
| BatchMigrator | periphery | ethereum | 2 deployments: ethereum [`0x008f8e...f87f74`](./contracts/ethereum-1/0x008f8e5cb02a2f6f79fc91ed2ca3a6fe0ff87f74/); ethereum `0xacaa4d...c74252` | ⚠️ Unaudited |
| CumulativeMerkleDrop | operational_periphery | ethereum | 2 deployments: ethereum [`0x849da6...02e540`](./contracts/ethereum-1/0x849da65afed8483152f8baa75f776c6f2c02e540/); ethereum `0xf6bbbc...ad5354` | ⚠️ Unaudited |
| DefaultCollateral | unknown | ethereum | 14 deployments: ethereum [`0x03bf48...ffa5ac`](./contracts/ethereum-1/0x03bf48b8a1b37fbead1ecabcf15b98b924ffa5ac/); ethereum `0x0c969c...99032c`; ethereum `0x19d0d8...91939a`; ethereum `0x21dbba...1d2c7c`; ethereum `0x422f5a...695f85`; ethereum `0x475d3e...7c304a`; ethereum `0x5198cb...2769d2`; ethereum `0x52cb8a...b8ab2a`; ethereum `0x594380...17bd4d`; ethereum `0x940750...0843fa`; ethereum `0x971e5b...f82618`; ethereum `0x9c0823...64f448`; ethereum `0xb09a50...9bad1c`; ethereum `0xe39b5f...9fcc84` | ⚠️ Unaudited |
| DepositDataRegistry | registry | ethereum | [`0x75ab6d...35223e`](./contracts/ethereum-1/0x75ab6ddce07556639333d3df1eaa684f5735223e/) | ⚠️ Unaudited |
| DineroTreasuryConnector | operational_periphery | ethereum | 2 deployments: ethereum [`0x75ec06...493c70`](./contracts/ethereum-1/0x75ec066efb238cf211baa73b28db539541493c70/); ethereum `0x9971f7...0af812` | ⚠️ Unaudited |
| DVV | unknown | ethereum | [`0x5e362e...85430b`](./contracts/ethereum-1/0x5e362eb2c0706bd1d134689ec75176018385430b/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | [`0x5c4606...f59219`](./contracts/ethereum-1/0x5c4606cb0ee50fdc4fad8722c99e8d6d49f59219/) | ⚠️ Unaudited |
| EthBlocklistErc20Vault | core_logic | ethereum | 4 deployments: ethereum [`0x0b4f6b...099556`](./contracts/ethereum-1/0x0b4f6bfb694790051e0203db83edbb5888099556/); ethereum `0x5f31ed...058988`; ethereum `0x84d44a...311e9e`; ethereum `0xc25529...30f14a` | ⚠️ Unaudited |
| EthBlocklistVault | core_logic | ethereum | 3 deployments: ethereum [`0x00e3af...d4cd3c`](./contracts/ethereum-1/0x00e3af59e2496d030e5b2c629784db284fd4cd3c/); ethereum `0x2d29f3...d4bcad`; ethereum `0xd19e4b...9c8478` | ⚠️ Unaudited |
| EthenaLPStaking | unknown | ethereum | [`0x8707f2...cfc512`](./contracts/ethereum-1/0x8707f238936c12c309bfc2b9959c35828acfc512/) | ⚠️ Unaudited |
| EthErc20Vault | core_logic | ethereum | 5 deployments: ethereum [`0x3acdbd...7646e9`](./contracts/ethereum-1/0x3acdbdbf0459d376df9378c02af50c83dc7646e9/); ethereum `0x6ddc10...26cb53`; ethereum `0x7e5198...ceb5d5`; ethereum `0x8ee00c...6773de`; ethereum `0xca8665...d98207` | ⚠️ Unaudited |
| EthOsTokenVaultEscrow | operational_periphery | ethereum | [`0x09e842...763605`](./contracts/ethereum-1/0x09e84205df7c68907e619d07afd90143c5763605/) | ⚠️ Unaudited |
| EthPrivErc20Vault | core_logic | ethereum | 4 deployments: ethereum [`0x28f325...429e71`](./contracts/ethereum-1/0x28f325dd287a5984b754d34cfca38af3a8429e71/); ethereum `0x453056...668e3e`; ethereum `0x9488a7...558c88`; ethereum `0xf5f205...1ba69a` | ⚠️ Unaudited |
| EthPrivVault | core_logic | ethereum | 4 deployments: ethereum [`0x135f45...47a035`](./contracts/ethereum-1/0x135f45e0179dd928e73422b40bdc6c5d7047a035/); ethereum `0x81ab00...57798c`; ethereum `0xb1bfaf...8197fb`; ethereum `0xb53a6c...fbf3bc` | ⚠️ Unaudited |
| EthRestakeBlocklistErc20Vault | core_logic | ethereum | [`0x5fcd8b...d49e4e`](./contracts/ethereum-1/0x5fcd8bb2e3dde5809b2106039b741c041bd49e4e/) | ⚠️ Unaudited |
| EthRestakeBlocklistVault | core_logic | ethereum | [`0x3e3037...addb67`](./contracts/ethereum-1/0x3e30370cabd4b4d95be17706d840ff9de1addb67/) | ⚠️ Unaudited |
| EthRestakeErc20Vault | core_logic | ethereum | [`0x215f4c...b0eee4`](./contracts/ethereum-1/0x215f4c69c3d1461c7aa38c9c73c27e10cfb0eee4/) | ⚠️ Unaudited |
| EthRestakePrivErc20Vault | core_logic | ethereum | [`0xedebe7...c36ee5`](./contracts/ethereum-1/0xedebe792c6190be612cbe97f628137faa8c36ee5/) | ⚠️ Unaudited |
| EthRestakePrivVault | core_logic | ethereum | [`0x792ff3...25e353`](./contracts/ethereum-1/0x792ff341e1db4ab20fbfb93c0fc071501525e353/) | ⚠️ Unaudited |
| EthRestakeVault | core_logic | ethereum | [`0x59adb4...e073bb`](./contracts/ethereum-1/0x59adb46407ebf4cba923f91f2c06acc4b2e073bb/) | ⚠️ Unaudited |
| EthRestakeVaultFactory | registry | ethereum | 6 deployments: ethereum [`0x026df3...d11b2c`](./contracts/ethereum-1/0x026df36ec050e7f473cbfc30aa42946d3ed11b2c/); ethereum `0x32634d...4c9fce`; ethereum `0x44ecc3...c565e1`; ethereum `0x6a2835...cc31e1`; ethereum `0x807305...d6f0af`; ethereum `0xf63666...6bf3a2` | ⚠️ Unaudited |
| EthValidatorsChecker | unknown | ethereum | [`0xac9125...fafc84`](./contracts/ethereum-1/0xac9125646185cb58e86e77d5f402efa3fafafc84/) | ⚠️ Unaudited |
| EthVault | core_logic | ethereum | 4 deployments: ethereum [`0x0cb2cb...5cae78`](./contracts/ethereum-1/0x0cb2cbdf9a030ffbdea6f20a019f1feaca5cae78/); ethereum `0x35dc75...2ca6cf`; ethereum `0xba0b5b...ccff23`; ethereum `0xdecb60...610f8f` | ⚠️ Unaudited |
| EthVaultFactory | registry | ethereum | 18 deployments: ethereum [`0x170618...8dfe5e`](./contracts/ethereum-1/0x170618936cd96b1ed8112ec3d3778374b38dfe5e/); ethereum `0x1be3ad...41b07c`; ethereum `0x2a0335...667960`; ethereum `0x42fe3b...07f699`; ethereum `0x4e3d81...774017`; ethereum `0x551805...e2ee7d`; ethereum `0x58fdd3...3a2949`; ethereum `0x7a4f99...1cba4a`; ethereum `0x875059...5f1bb8`; ethereum `0x96fff3...e175ee`; ethereum `0xb7832c...f4c896`; ethereum `0xd2468d...8f2cba`; ethereum `0xdada5a...659fcc`; ethereum `0xe84183...b5bb11`; ethereum `0xe9f3e6...27ba0f`; ethereum `0xf3c94c...daf3b8`; ethereum `0xfaa059...715d53`; ethereum `0xff0650...9362ca` | ⚠️ Unaudited |
| ExternalRequestsCoordinator | unknown | ethereum | 2 deployments: ethereum [`0x36c9b5...76c043`](./contracts/ethereum-1/0x36c9b5e8f039381d1da79b94a206af8bc076c043/); ethereum `0xf47af3...82ba80` | ⚠️ Unaudited |
| ExternalRequestsManager | governance | ethereum | 2 deployments: ethereum [`0x10f4d4...dfc872`](./contracts/ethereum-1/0x10f4d4ead6bcd4de7849898403d88528e3dfc872/); ethereum `0x1de327...6c8ea9` | ⚠️ Unaudited |
| ExternalRequestsManagerBetaV1 | governance | ethereum | 4 deployments: ethereum [`0x052b1c...0fda1b`](./contracts/ethereum-1/0x052b1cacbdea7b4d711c6f428a20618ef60fda1b/); ethereum `0x3ed5dc...9bd45d`; ethereum `0x8ade71...6e86e9`; ethereum `0xda6cef...c6b360` | ⚠️ Unaudited |
| FluidDexReservesResolver | unknown | ethereum | [`0xc93876...81a27c`](./contracts/ethereum-1/0xc93876c0eed99645dd53937b25433e311881a27c/) | ⚠️ Unaudited |
| FluidDexResolver | unknown | ethereum | [`0x71783f...af9a3d`](./contracts/ethereum-1/0x71783f64719899319b56bda4f27e1219d9af9a3d/) | ⚠️ Unaudited |
| FluidDexT1 | unknown | ethereum | 3 deployments: ethereum [`0x1dd125...61fa9b`](./contracts/ethereum-1/0x1dd125c32e4b5086c63cc13b3ca02c4a2a61fa9b/); ethereum `0xde632c...8fee45`; ethereum `0xf063bd...645d4a` | ⚠️ Unaudited |
| FluidVaultPositionsResolver | core_logic | ethereum | [`0x3e3dae...76801c`](./contracts/ethereum-1/0x3e3dae4f30347782089d398d462546eb5276801c/) | ⚠️ Unaudited |
| FluidVaultT1 | core_logic | ethereum | 4 deployments: ethereum [`0x1c6068...644278`](./contracts/ethereum-1/0x1c6068ec051f0ac1688ca1fe76810fa9c8644278/); ethereum `0x2f3780...04dffa`; ethereum `0x399646...8744dd`; ethereum `0xbc3452...a38da5` | ⚠️ Unaudited |
| FluidVaultT2 | core_logic | ethereum | 2 deployments: ethereum [`0x43d1ca...1f428d`](./contracts/ethereum-1/0x43d1ca906c72f09d96291b4913d7255e241f428d/); ethereum `0x989a44...90f881` | ⚠️ Unaudited |
| FluidVaultT2Operate | core_logic | ethereum | [`0x7503b5...bea6d0`](./contracts/ethereum-1/0x7503b58bb29937e7e2980f70d3fd021b7ebea6d0/) | ⚠️ Unaudited |
| FluidVaultT3 | core_logic | ethereum | [`0xe210d8...8d0034`](./contracts/ethereum-1/0xe210d8ded13abe836a10e8aa956dd424658d0034/) | ⚠️ Unaudited |
| FluidVaultT4 | core_logic | ethereum | [`0xe3cac7...cb5acc`](./contracts/ethereum-1/0xe3cac7cc6b0eed28e16331f08be7948bbfcb5acc/) | ⚠️ Unaudited |
| GhoToken | token | ethereum | [`0x40d16f...ae6c2f`](./contracts/ethereum-1/0x40d16fc0246ad3160ccc09b8d0d3a2cd28ae6c2f/) | ⚠️ Unaudited |
| Groth16Verifier | periphery | ethereum | [`0x8a526f...005234`](./contracts/ethereum-1/0x8a526f919c391105ef251ddede15067027005234/) | ⚠️ Unaudited |
| GUD | unknown | ethereum | [`0xa8f9e1...d08713`](./contracts/ethereum-1/0xa8f9e1d9630e7a3eb6c654b256dc7845a9d08713/) | ⚠️ Unaudited |
| Keeper | operational_periphery | ethereum | 2 deployments: ethereum [`0x435192...ba3f7a`](./contracts/ethereum-1/0x435192a898a5ee86bbc8951471e5fbe721ba3f7a/); ethereum `0x6b5815...b487b5` | ⚠️ Unaudited |
| LidoTreasuryConnector | operational_periphery | ethereum | [`0xb63a5e...b048a7`](./contracts/ethereum-1/0xb63a5eb2f20cd7a2ee9b1421fc06059cf7b048a7/) | ⚠️ Unaudited |
| MockToken | token | ethereum | [`0xe90ec1...58d16b`](./contracts/ethereum-1/0xe90ec12369fbbcbcdaaa320da59134281458d16b/) | ⚠️ Unaudited |
| Morpho | unknown | ethereum | [`0xbbbbbb...eeffcb`](./contracts/ethereum-1/0xbbbbbbbbbb9cc5e90e3b3af64bdaf62c37eeffcb/) | ⚠️ Unaudited |
| Multicall | periphery | ethereum | [`0xba610d...8df947`](./contracts/ethereum-1/0xba610d8c8c93580c19fb8800fc406227de8df947/) | ⚠️ Unaudited |
| Oracles | operational_periphery | ethereum | [`0xf0c167...c678d6`](./contracts/ethereum-1/0xf0c1670364d4b5c4e9dc8062cdd45068d9c678d6/) | ⚠️ Unaudited |
| OsTokenConfig | governance | ethereum | 3 deployments: ethereum [`0x287d1e...66eb59`](./contracts/ethereum-1/0x287d1e2a8de183a8bf8f2b09fa1340fbd766eb59/); ethereum `0x2aae83...a22120`; ethereum `0xe88222...fb1cd5` | ⚠️ Unaudited |
| OsTokenFlashLoans | token | ethereum | [`0xebe12d...fbf5d2`](./contracts/ethereum-1/0xebe12d858e55ddc5fc5a8153dc3e117824fbf5d2/) | ⚠️ Unaudited |
| PendleYieldToken | token | ethereum | 27 deployments: ethereum [`0x029d62...9c1840`](./contracts/ethereum-1/0x029d6247adb0a57138c62e3019c92d3dfc9c1840/); ethereum `0x0310a8...7fcbcb`; ethereum `0x03722c...ea3987`; ethereum `0x079f21...542e32`; ethereum `0x08aefe...b7d2b0`; ethereum `0x11ccff...064aba`; ethereum `0x1de6ff...52abbe`; ethereum `0x1e24b0...aebf6f`; ethereum `0x27f6f2...9877f7`; ethereum `0x3568f1...c83978`; ethereum `0x48bbbe...f165da`; ethereum `0x4a8036...b0c9ee`; ethereum `0x5d8b3c...09b3ed`; ethereum `0x5db8a2...29f988`; ethereum `0x708dd9...3eb868`; ethereum `0x719b51...8f1d7a`; ethereum `0x733ee9...322464`; ethereum `0x77de4b...d2cc39`; ethereum `0x7b64b9...916ce1`; ethereum `0x89e7f4...ce9971`; ethereum `0x946934...906264`; ethereum `0x965122...cd2b9f`; ethereum `0xaac7db...43ea02`; ethereum `0xb7e51d...27272b`; ethereum `0xbe0553...937427`; ethereum `0xe8ef80...391712`; ethereum `0xeb993b...1f368e` | ⚠️ Unaudited |
| Pool | core_logic | ethereum | [`0x481f28...799592`](./contracts/ethereum-1/0x481f28c0d733614af87897e43d0d52c451799592/) | ⚠️ Unaudited |
| PriceFeed | operational_periphery | ethereum | 2 deployments: ethereum [`0x802351...dfe471`](./contracts/ethereum-1/0x8023518b2192fb5384dadc596765b3dd1cdfe471/); ethereum `0xb31f53...11d702` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | 2 deployments: ethereum [`0x3c405f...9acd68`](./contracts/ethereum-1/0x3c405f68d5c6ece868e5646cac926679839acd68/); ethereum `0x63a11f...a8d7fe` | ⚠️ Unaudited |
| ResolvStakingV2 | unknown | ethereum | 3 deployments: ethereum [`0xbf1762...1649df`](./contracts/ethereum-1/0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df/); ethereum `0xd10625...99705a`; ethereum `0xeef363...4acdd3` | ⚠️ Unaudited |
| RewardDistributor | operational_periphery | ethereum | 4 deployments: ethereum [`0x32a07b...f39f7a`](./contracts/ethereum-1/0x32a07be243ac4ea140b6fef69e3aa44d59f39f7a/); ethereum `0x9ace20...1b4cf9`; ethereum `0x9f805f...fdad12`; ethereum `0xbe23bb...9c1ba9` | ⚠️ Unaudited |
| RewardEthToken | token | ethereum | [`0x01d34a...3ecee0`](./contracts/ethereum-1/0x01d34aee72325f1d4a748f13c2169404523ecee0/) | ⚠️ Unaudited |
| RewardSplitter | operational_periphery | ethereum | 3 deployments: ethereum [`0x439b60...febcd9`](./contracts/ethereum-1/0x439b60d3c886e711dad30cf23a2bbd5388febcd9/); ethereum `0x67561c...6aca9b`; ethereum `0xe00512...5b1902` | ⚠️ Unaudited |
| RewardSplitterFactory | operational_periphery | ethereum | 3 deployments: ethereum [`0x256af2...6cc5f8`](./contracts/ethereum-1/0x256af27ce81282a0491a5361172c1db08f6cc5f8/); ethereum `0x8c512f...8b1dba`; ethereum `0x90a942...797449` | ⚠️ Unaudited |
| RlpPriceAggregatorV3Interface | operational_periphery | ethereum | 2 deployments: ethereum [`0x4e35e7...474ecb`](./contracts/ethereum-1/0x4e35e7b1e03a37e40b0f1a4ee27813fe2d474ecb/); ethereum `0xadb2c1...4e66b2` | ⚠️ Unaudited |
| RlpPriceStorage | operational_periphery | ethereum | 5 deployments: ethereum [`0x03f75a...fff85c`](./contracts/ethereum-1/0x03f75a4dce6a2aa260d98d10c2c606e5bcfff85c/); ethereum `0x313198...06371e`; ethereum `0x5e90b0...8e1aa1`; ethereum `0xaa33e5...b2d565`; ethereum `0xae2364...f3574d` | ⚠️ Unaudited |
| RlpUpOnlyPriceStorage | operational_periphery | ethereum | 3 deployments: ethereum [`0x093285...ab0dc6`](./contracts/ethereum-1/0x093285c34515c01a55e15a25812bcf87e7ab0dc6/); ethereum `0x2d748a...82a2c0`; ethereum `0x40b988...aa0580` | ⚠️ Unaudited |
| SharedMevEscrow | operational_periphery | ethereum | 2 deployments: ethereum [`0x07a98f...488a2f`](./contracts/ethereum-1/0x07a98f01f5a91043f1396f101a21e91e90488a2f/); ethereum `0x48319f...20ff86` | ⚠️ Unaudited |
| SimpleOFTAdapter | adapter | ethereum | 8 deployments: ethereum [`0x142198...69de32`](./contracts/ethereum-1/0x14219845c6b7984aa5ec0a39754dcc327169de32/); ethereum `0x1fc1bc...ffdeaf`; ethereum `0x234c90...1ad06c`; ethereum `0x271872...26b654`; ethereum `0x5daa06...62084b`; ethereum `0xab17c1...451978`; ethereum `0xc45430...30eb28`; ethereum `0xd2ee27...d4be0e` | ⚠️ Unaudited |
| StakedEthToken | token | ethereum | [`0x82fe8c...baaa75`](./contracts/ethereum-1/0x82fe8c78cae0013471179e76224ef89941baaa75/) | ⚠️ Unaudited |
| StakedTokenDistributor | operational_periphery | ethereum | 4 deployments: ethereum [`0x53c5b7...08031e`](./contracts/ethereum-1/0x53c5b703465234f97c5a7b17b602c6224a08031e/); ethereum `0x6ac1f6...04dbaf`; ethereum `0xbac23e...72ac69`; ethereum `0xbb2213...85e32c` | ⚠️ Unaudited |
| StakedUSDeV2 | token | ethereum | [`0x6bf967...bac41d`](./contracts/ethereum-1/0x6bf967288ffef9420b142fb97ccf236584bac41d/) | ⚠️ Unaudited |
| StUSR | unknown | ethereum | 6 deployments: ethereum [`0x0da21d...cabf61`](./contracts/ethereum-1/0x0da21d330f3f75d730a1b5f1535ca75061cabf61/); ethereum `0x56abf7...32ecc2`; ethereum `0x6c8984...10aab4`; ethereum `0xba1600...973da7`; ethereum `0xcf3e9d...5678bd`; ethereum `0xf8391a...84c46b` | ⚠️ Unaudited |
| TestnetERC20 | token | ethereum | [`0xabb158...3cbea7`](./contracts/ethereum-1/0xabb15848b98d3ef7ad20a69127b003c7613cbea7/) | ⚠️ Unaudited |
| TheCounter | unknown | ethereum | 2 deployments: ethereum [`0xa27a69...e55861`](./contracts/ethereum-1/0xa27a69ae180e202fde5d38189a3f24fe24e55861/); ethereum `0xc7ab90...1eafa0` | ⚠️ Unaudited |
| Timelock | governance | ethereum | [`0x290d95...f6ebee`](./contracts/ethereum-1/0x290d9544669c9c7a64f6899a0a3b28d563f6ebee/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | ethereum | 4 deployments: ethereum [`0x0795ab...aa28c3`](./contracts/ethereum-1/0x0795ab0dc75497a2c3f6345f2de0feef0eaa28c3/); ethereum `0x47ebb0...11b8ed`; ethereum `0xa411cc...c94f9c`; ethereum `0xdc876a...3cef1b` | ⚠️ Unaudited |
| Treasury | operational_periphery | ethereum | 2 deployments: ethereum [`0xacb702...d62b8e`](./contracts/ethereum-1/0xacb7027f271b03b502d65feba617a0d817d62b8e/); ethereum `0xc657b2...428691` | ⚠️ Unaudited |
| TreasuryIntermediateEscrow | operational_periphery | ethereum | 2 deployments: ethereum [`0x84b883...acfed6`](./contracts/ethereum-1/0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6/); ethereum `0xdce795...6c76a8` | ⚠️ Unaudited |
| USDtb | token | ethereum | [`0xea8a76...39e475`](./contracts/ethereum-1/0xea8a763b5b1f9c9c7aea64f33947448d9e39e475/) | ⚠️ Unaudited |
| USDtbMinting | token | ethereum | [`0xa3ddbf...48416a`](./contracts/ethereum-1/0xa3ddbf92077b850e29c4805df0a2459ae048416a/) | ⚠️ Unaudited |
| UsrExternalRequestsManager | governance | ethereum | [`0xac85ef...a95f2e`](./contracts/ethereum-1/0xac85ef29192487e0a109b7f9e40c267a9ea95f2e/) | ⚠️ Unaudited |
| USRPriceAggregatorV3Interface | operational_periphery | ethereum | 2 deployments: ethereum [`0x8a9341...c46f64`](./contracts/ethereum-1/0x8a93414f88f597922a9829df5f7c94b81bc46f64/); ethereum `0xf9c7c2...7ce88c` | ⚠️ Unaudited |
| UsrPriceStorage | operational_periphery | ethereum | 2 deployments: ethereum [`0x7f4518...9c261c`](./contracts/ethereum-1/0x7f45180d6ffd0435d8dd695fd01320e6999c261c/); ethereum `0xc16b2a...c2785d` | ⚠️ Unaudited |
| UsrRedemptionExtension | adapter | ethereum | 3 deployments: ethereum [`0x60a7b7...897c37`](./contracts/ethereum-1/0x60a7b7915980ed34fde6e239618fadcf67897c37/); ethereum `0x7078c8...d52489`; ethereum `0xb69b2e...c96be6` | ⚠️ Unaudited |
| VaultRouter | adapter | ethereum | 7 deployments: ethereum [`0x231fa7...331c3c`](./contracts/ethereum-1/0x231fa76fd55284082ec5aba51272b9ff68331c3c/); ethereum `0x414f02...17539a`; ethereum `0x4cbd14...7af11e`; ethereum `0x651ef8...a59890`; ethereum `0x7f8053...13d956`; ethereum `0xc13865...1784a2`; ethereum `0xe61f34...b7c87b` | ⚠️ Unaudited |
| VaultsRegistry | registry | ethereum | 2 deployments: ethereum [`0x3a0008...4fc20e`](./contracts/ethereum-1/0x3a0008a588772446f6e656133c2d5029cc4fc20e/); ethereum `0xbbe532...ba0bc2` | ⚠️ Unaudited |
| WstUSR | unknown | ethereum | 4 deployments: ethereum [`0x1202f5...c75055`](./contracts/ethereum-1/0x1202f5c7b4b9e47a1a484e8b270be34dbbc75055/); ethereum `0x6ed548...359cc0`; ethereum `0x878943...43dd34`; ethereum `0x8b480b...c44ee6` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x2998d4...51c670` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x35af40...a7d593` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3e2cc1...76dc65` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x574952...42139a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x58ca83...3e9a16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x630f27...5294de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x932f09...b936fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa42ef8...ad593e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xad0627...a1f6fc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xad64a5...84cf2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xaf8268...9fed29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb713c3...d9d914` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc2ecc7...49579a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfe7f6a...fe6763` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024.04.25 FPS Points Tokenization.pdf](https://github.com/sense-finance/point-tokenization-vault/blob/main/audits/2024.04.25%20FPS%20Points%20Tokenization.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 1 | high |
| [2024.07.22 Darklinear Rumpel Wallet.pdf](https://github.com/sense-finance/rumpel-wallet/blob/main/audits/2024.07.22%20Darklinear%20Rumpel%20Wallet.pdf) | Darklinear | Audit | 2024-07 | aging | Direct | contract_name | 2 | high |
| [2024.07.15 FPS Rumpel Wallet.pdf](https://github.com/sense-finance/rumpel-wallet/blob/main/audits/2024.07.15%20FPS%20Rumpel%20Wallet.pdf) | FPS | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [audits.sherlock.xyz/contests/494](https://audits.sherlock.xyz/contests/494) | Sherlock | Contest | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x2a261e...000306`](./contracts/ethereum-1/0x2a261e60fb14586b474c208b1b7ac6d0f5000306/) | OsTokenVaultController | core_logic | $304,912,474.90 | Verified native implementation with $304,912,474.90 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x475e7d...b96702`](./contracts/ethereum-1/0x475e7d2bd7428deb68deaa933dbf0d5850b96702/) | OsToken | token | $296,804,613.64 | Verified native implementation with $296,804,613.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x124c33...510928`](./contracts/ethereum-1/0x124c33d07f94b31adf87c12f7ca3a586d3510928/) | EthGenesisVault | core_logic | $295,959,279.79 | Verified native implementation with $295,959,279.79 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x221c2b...d881f0`](./contracts/ethereum-1/0x221c2b6ee63dcede31ea703898ae15d889d881f0/) | ZtakingPool | core_logic | $38,687,740.89 | Verified native implementation with $38,687,740.89 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35533f...16868b`](./contracts/ethereum-1/0x35533f54740f1f1aa4179e57ba37039dfa16868b/) | SimpleToken | token | $16,237,093.28 | Verified native implementation with $16,237,093.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x65b560...d69d63`](./contracts/ethereum-1/0x65b560d887c010c4993c8f8b36e595c171d69d63/) | VaultTokenized | core_logic | $1,827,941.60 | Verified native implementation with $1,827,941.60 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x057d76...be1cde`](./contracts/ethereum-1/0x057d761e9e9fa14a85b66f99d1061792ddbe1cde/) | WrappedDollarVault | core_logic | $984.92 | Verified native implementation with $984.92 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2d0049...6b0f77`](./contracts/ethereum-1/0x2d00499079d7145163a213ab1443056cce6b0f77/) | AddressesWhitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x008f8e...f87f74`](./contracts/ethereum-1/0x008f8e5cb02a2f6f79fc91ed2ca3a6fe0ff87f74/) | BatchMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x849da6...02e540`](./contracts/ethereum-1/0x849da65afed8483152f8baa75f776c6f2c02e540/) | CumulativeMerkleDrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03bf48...ffa5ac`](./contracts/ethereum-1/0x03bf48b8a1b37fbead1ecabcf15b98b924ffa5ac/) | DefaultCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x75ab6d...35223e`](./contracts/ethereum-1/0x75ab6ddce07556639333d3df1eaa684f5735223e/) | DepositDataRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b4f6b...099556`](./contracts/ethereum-1/0x0b4f6bfb694790051e0203db83edbb5888099556/) | EthBlocklistErc20Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00e3af...d4cd3c`](./contracts/ethereum-1/0x00e3af59e2496d030e5b2c629784db284fd4cd3c/) | EthBlocklistVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3acdbd...7646e9`](./contracts/ethereum-1/0x3acdbdbf0459d376df9378c02af50c83dc7646e9/) | EthErc20Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09e842...763605`](./contracts/ethereum-1/0x09e84205df7c68907e619d07afd90143c5763605/) | EthOsTokenVaultEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x28f325...429e71`](./contracts/ethereum-1/0x28f325dd287a5984b754d34cfca38af3a8429e71/) | EthPrivErc20Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x135f45...47a035`](./contracts/ethereum-1/0x135f45e0179dd928e73422b40bdc6c5d7047a035/) | EthPrivVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5fcd8b...d49e4e`](./contracts/ethereum-1/0x5fcd8bb2e3dde5809b2106039b741c041bd49e4e/) | EthRestakeBlocklistErc20Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3e3037...addb67`](./contracts/ethereum-1/0x3e30370cabd4b4d95be17706d840ff9de1addb67/) | EthRestakeBlocklistVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x215f4c...b0eee4`](./contracts/ethereum-1/0x215f4c69c3d1461c7aa38c9c73c27e10cfb0eee4/) | EthRestakeErc20Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xedebe7...c36ee5`](./contracts/ethereum-1/0xedebe792c6190be612cbe97f628137faa8c36ee5/) | EthRestakePrivErc20Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x792ff3...25e353`](./contracts/ethereum-1/0x792ff341e1db4ab20fbfb93c0fc071501525e353/) | EthRestakePrivVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59adb4...e073bb`](./contracts/ethereum-1/0x59adb46407ebf4cba923f91f2c06acc4b2e073bb/) | EthRestakeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x026df3...d11b2c`](./contracts/ethereum-1/0x026df36ec050e7f473cbfc30aa42946d3ed11b2c/) | EthRestakeVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac9125...fafc84`](./contracts/ethereum-1/0xac9125646185cb58e86e77d5f402efa3fafafc84/) | EthValidatorsChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cb2cb...5cae78`](./contracts/ethereum-1/0x0cb2cbdf9a030ffbdea6f20a019f1feaca5cae78/) | EthVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x170618...8dfe5e`](./contracts/ethereum-1/0x170618936cd96b1ed8112ec3d3778374b38dfe5e/) | EthVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36c9b5...76c043`](./contracts/ethereum-1/0x36c9b5e8f039381d1da79b94a206af8bc076c043/) | ExternalRequestsCoordinator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10f4d4...dfc872`](./contracts/ethereum-1/0x10f4d4ead6bcd4de7849898403d88528e3dfc872/) | ExternalRequestsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x052b1c...0fda1b`](./contracts/ethereum-1/0x052b1cacbdea7b4d711c6f428a20618ef60fda1b/) | ExternalRequestsManagerBetaV1 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa8f9e1...d08713`](./contracts/ethereum-1/0xa8f9e1d9630e7a3eb6c654b256dc7845a9d08713/) | GUD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x435192...ba3f7a`](./contracts/ethereum-1/0x435192a898a5ee86bbc8951471e5fbe721ba3f7a/) | Keeper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe90ec1...58d16b`](./contracts/ethereum-1/0xe90ec12369fbbcbcdaaa320da59134281458d16b/) | MockToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0c167...c678d6`](./contracts/ethereum-1/0xf0c1670364d4b5c4e9dc8062cdd45068d9c678d6/) | Oracles | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x287d1e...66eb59`](./contracts/ethereum-1/0x287d1e2a8de183a8bf8f2b09fa1340fbd766eb59/) | OsTokenConfig | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xebe12d...fbf5d2`](./contracts/ethereum-1/0xebe12d858e55ddc5fc5a8153dc3e117824fbf5d2/) | OsTokenFlashLoans | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x481f28...799592`](./contracts/ethereum-1/0x481f28c0d733614af87897e43d0d52c451799592/) | Pool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x802351...dfe471`](./contracts/ethereum-1/0x8023518b2192fb5384dadc596765b3dd1cdfe471/) | PriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbf1762...1649df`](./contracts/ethereum-1/0xbf1762fdbb06e8ee715ae59495b2bf14fb1649df/) | ResolvStakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x32a07b...f39f7a`](./contracts/ethereum-1/0x32a07be243ac4ea140b6fef69e3aa44d59f39f7a/) | RewardDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01d34a...3ecee0`](./contracts/ethereum-1/0x01d34aee72325f1d4a748f13c2169404523ecee0/) | RewardEthToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x439b60...febcd9`](./contracts/ethereum-1/0x439b60d3c886e711dad30cf23a2bbd5388febcd9/) | RewardSplitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x256af2...6cc5f8`](./contracts/ethereum-1/0x256af27ce81282a0491a5361172c1db08f6cc5f8/) | RewardSplitterFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e35e7...474ecb`](./contracts/ethereum-1/0x4e35e7b1e03a37e40b0f1a4ee27813fe2d474ecb/) | RlpPriceAggregatorV3Interface | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03f75a...fff85c`](./contracts/ethereum-1/0x03f75a4dce6a2aa260d98d10c2c606e5bcfff85c/) | RlpPriceStorage | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07a98f...488a2f`](./contracts/ethereum-1/0x07a98f01f5a91043f1396f101a21e91e90488a2f/) | SharedMevEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x82fe8c...baaa75`](./contracts/ethereum-1/0x82fe8c78cae0013471179e76224ef89941baaa75/) | StakedEthToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53c5b7...08031e`](./contracts/ethereum-1/0x53c5b703465234f97c5a7b17b602c6224a08031e/) | StakedTokenDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xabb158...3cbea7`](./contracts/ethereum-1/0xabb15848b98d3ef7ad20a69127b003c7613cbea7/) | TestnetERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa27a69...e55861`](./contracts/ethereum-1/0xa27a69ae180e202fde5d38189a3f24fe24e55861/) | TheCounter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x290d95...f6ebee`](./contracts/ethereum-1/0x290d9544669c9c7a64f6899a0a3b28d563f6ebee/) | Timelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x84b883...acfed6`](./contracts/ethereum-1/0x84b883f8833e7eefd17b6a5e4e885b22f4acfed6/) | TreasuryIntermediateEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xac85ef...a95f2e`](./contracts/ethereum-1/0xac85ef29192487e0a109b7f9e40c267a9ea95f2e/) | UsrExternalRequestsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a9341...c46f64`](./contracts/ethereum-1/0x8a93414f88f597922a9829df5f7c94b81bc46f64/) | USRPriceAggregatorV3Interface | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x60a7b7...897c37`](./contracts/ethereum-1/0x60a7b7915980ed34fde6e239618fadcf67897c37/) | UsrRedemptionExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x231fa7...331c3c`](./contracts/ethereum-1/0x231fa76fd55284082ec5aba51272b9ff68331c3c/) | VaultRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a0008...4fc20e`](./contracts/ethereum-1/0x3a0008a588772446f6e656133c2d5029cc4fc20e/) | VaultsRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 61 |
| upstream | 15 |
| standard_library | 23 |
| needs_review | 16 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=3

Zero-match audit list:

- [2955] 2024.07.15 FPS Rumpel Wallet.pdf
- [2956] audits.sherlock.xyz/contests/494

Fork inheritance lineage and inherited audits are included when available.
