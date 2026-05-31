# Agentic Audit Brief: Turtle Club

⚠️ Lifecycle status: DEAD - TVL dropped 80.8% over 90 days

## Project Overview

- Project: Turtle Club (`turtle-club`)
- Website: [https://app.turtle.xyz/](https://app.turtle.xyz/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-31T11:25:02.029Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: avalanche, bsc, ethereum, linea
- Contract surface: 516 unique implementations (1230 raw deployments)
- DeFi Llama TVL: $1,231,786.55
- On-chain TVL (included contracts): $59,810,162.27
- TVL by chain: Ethereum $42,954,236.45 | Avalanche $16,837,416.83 | Linea $18,509.00

## Project Description

Turtle Club is an onchain capital allocator that provides yield‑generating vaults, liquid staking derivatives, and governance infrastructure across multiple EVM chains. It aggregates user deposits into strategies like EigenLayer restaking, Morpho lending, and Aave/Compound yield, while managing rewards and voting power through its token ecosystem.

### Architecture

The Contracts family provides the governance and staking token layer that underpins the Turtle Club vaults. Vaults in the Turtle Club family use shared infrastructure like proxy patterns (OptinProxy, TransparentUpgradeableProxy) and access control (SafeProxy, GnosisSafeProxy) to manage deposits and rewards, while tokens from the Contracts family are used for staking and governance across the ecosystem.

## Audit Coverage Summary

- Verified implementations audited: 0/342 (0.0%)
- Verified + Unaudited implementations: 340
- Verified by bytecode match: 2
- Unverified implementations: 174
- Unique implementations: 516
- Raw deployments: 1230
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $59,810,162.27
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $59,810,162.27 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (340)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| RswETH | token | ethereum | [`0xfae103...afa6c0`](./contracts/ethereum-1/0xfae103dc9cf190ed75350761e95403b7b8afa6c0/) | ⚠️ Unaudited |
| TokenggAVAX | token | avalanche | 5 deployments: avalanche [`0x576d98...ca7323`](./contracts/avalanche-43114/0x576d98d26419c5ce9595833403f64d919eca7323/); avalanche `0x84e71c...ceb922`; avalanche `0xa25eaf...b703e3`; avalanche `0xf80eb4...57843e`; avalanche `0xfad33e...163752` | ⚠️ Unaudited |
| EzRVault | core_logic | ethereum | [`0x77b118...368f60`](./contracts/ethereum-1/0x77b1183e730275f6a8024ce53d54bcc12b368f60/) | ⚠️ Unaudited |
| PlasmaVaultBase | core_logic | ethereum | 18 deployments: ethereum [`0x08dd57...e48ee8`](./contracts/ethereum-1/0x08dd57a51025a266cecc85154860aa4e71e48ee8/); ethereum `0x29d322...8fafbb`; ethereum `0x2de732...0171ab`; ethereum `0x3151ce...809d90`; ethereum `0x394356...49df44`; ethereum `0x43a32d...4a1e68`; ethereum `0x43ee02...9c7ca2`; ethereum `0x64d47d...3a464f`; ethereum `0x6f66b8...6a8c40`; ethereum `0x7ef926...6964d2`; ethereum `0x842494...7d5062`; ethereum `0x978141...c7b37b`; ethereum `0x9824dc...878607`; ethereum `0x9dc281...8126d9`; ethereum `0xabab98...c18e3e`; ethereum `0xb4790c...d447ae`; ethereum `0xb530a1...37a3ed`; ethereum `0xe9385e...b4fb5f` | ⚠️ Unaudited |
| LevvaToken | token | ethereum | 2 deployments: ethereum [`0x624355...abfc76`](./contracts/ethereum-1/0x6243558a24cc6116abe751f27e6d7ede50abfc76/); ethereum `0xac3a8f...2653b6` | ⚠️ Unaudited |
| TokenGGP | token | avalanche | [`0x69260b...2cd11d`](./contracts/avalanche-43114/0x69260b9483f9871ca57f81a90d91e2f96c2cd11d/) | ⚠️ Unaudited |
| Vault | core_logic | linea | 21 deployments: ethereum `0x2e8949...e1e1b0`; ethereum `0x423b46...19bc52`; ethereum `0x53281e...63111b`; ethereum `0x60837b...b0aa2e`; ethereum `0x649fca...e84e5d`; ethereum `0x78f7c7...df3bdf`; ethereum `0x7b8ef4...be0b3f`; ethereum `0x89e0e6...34fe95`; ethereum `0xbca723...fd555c`; ethereum `0xd56031...7b26ce`; ethereum `0xd8f7bd...4bdaea`; ethereum `0xdf9800...ae4e80`; ethereum `0xe0dfbe...bf9621`; ethereum `0xe1942d...b43a0e`; ethereum `0xe8632c...d0d469`; avalanche `0x304892...db54af`; avalanche `0x662e5e...78bd08`; avalanche `0xb893c8...0d25e3`; avalanche `0xd45cb6...41e6ba`; linea [`0x1b316f...2f0f71`](./contracts/linea-59144/0x1b316fa2d6c44b65c1ed6d29b37743cd362f0f71/); linea `0x7df7e4...1a07f7` | ⚠️ Unaudited |
| IporToken | token | ethereum | [`0x1e4746...289090`](./contracts/ethereum-1/0x1e4746dc744503b53b4a082cb3607b169a289090/) | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | 3 deployments: ethereum [`0x294eec...a9fbad`](./contracts/ethereum-1/0x294eecec65a0142e84aedfd8eb2fbea8c9a9fbad/); ethereum `0x699e04...976490`; ethereum `0x6bf340...1c3ddf` | ⚠️ Unaudited |
| SiloToken | token | ethereum | [`0xf0b2dd...486bb0`](./contracts/ethereum-1/0xf0b2dd79324a66d2108c961d680f7616e1486bb0/) | ⚠️ Unaudited |
| RewardToken | token | ethereum | [`0xf3e621...b4e696`](./contracts/ethereum-1/0xf3e621395fc714b90da337aa9108771597b4e696/) | ⚠️ Unaudited |
| PlasmaVault | core_logic | ethereum | 13 deployments: ethereum [`0x0552e2...bb6ca8`](./contracts/ethereum-1/0x0552e28123a19ff2853d1ed3be75ef1329bb6ca8/); ethereum `0x1fdf5d...4d1bad`; ethereum `0x20e934...b9ac44`; ethereum `0x3a58d6...8ef697`; ethereum `0x5904da...032eb2`; ethereum `0x5ddd76...787d88`; ethereum `0x707d81...cb7a80`; ethereum `0x78cc13...7a64fe`; ethereum `0x981a6c...4db5bc`; ethereum `0xae4362...9a573c`; ethereum `0xc1926c...e63b5d`; ethereum `0xfb696d...307541`; ethereum `0xffb090...6b0472` | ⚠️ Unaudited |
| SiloGovernanceToken | token | ethereum | [`0x6f8031...8ab1f8`](./contracts/ethereum-1/0x6f80310ca7f2c654691d1383149fa1a57d8ab1f8/) | ⚠️ Unaudited |
| AccessManagerFactory | registry | ethereum | 3 deployments: ethereum [`0x0d6028...00a740`](./contracts/ethereum-1/0x0d60285f0c37d977260d22e23df7984a0800a740/); ethereum `0xced97f...89305e`; ethereum `0xf902af...8ea3c1` | ⚠️ Unaudited |
| AirdropClaimKey | operational_periphery | linea | [`0x142665...4e31e4`](./contracts/linea-59144/0x142665217f6d4084a47706b423dc3aad884e31e4/) | ⚠️ Unaudited |
| AirdropDistribution | operational_periphery | ethereum | 2 deployments: ethereum [`0x89e813...0896ed`](./contracts/ethereum-1/0x89e813661628a277714c76d80c7fcb192a0896ed/); ethereum `0xefc39e...1181ef` | ⚠️ Unaudited |
| AirdropTaxCollector | operational_periphery | ethereum | 2 deployments: ethereum [`0xa6cd24...2a4c01`](./contracts/ethereum-1/0xa6cd248943f3d3415458b264e2c890ff422a4c01/); ethereum `0xd4ab6c...313434` | ⚠️ Unaudited |
| AlgebraV1Twap | unknown | linea | [`0xdb28d2...4c21fd`](./contracts/linea-59144/0xdb28d27a556c16a333f6420ec0512bb1e64c21fd/) | ⚠️ Unaudited |
| Allowance | operational_periphery | ethereum | 2 deployments: ethereum [`0xcc96a8...543a78`](./contracts/ethereum-1/0xcc96a8a0a85f5083a68c48ca6adb389169543a78/); ethereum `0xfc80f4...e82c75` | ⚠️ Unaudited |
| AmmCloseSwapLens | periphery | ethereum | 4 deployments: ethereum [`0x066cbd...bbaac2`](./contracts/ethereum-1/0x066cbd24d8285e25cb38222ea669735bdebbaac2/); ethereum `0x17bf30...94095d`; ethereum `0x8d99d6...132aa0`; ethereum `0xff69f7...32aaf8` | ⚠️ Unaudited |
| AmmCloseSwapService | unknown | ethereum | 2 deployments: ethereum [`0x6650de...825ee3`](./contracts/ethereum-1/0x6650de6837839dfcb05d188c50b927b008825ee3/); ethereum `0x7dc23a...10ecb5` | ⚠️ Unaudited |
| AmmCloseSwapServiceDai | unknown | ethereum | 3 deployments: ethereum [`0x072467...1dd183`](./contracts/ethereum-1/0x072467b69354fd3274123c908adbc75f9f1dd183/); ethereum `0x735b3f...6fc3d9`; ethereum `0xe14a72...a849e4` | ⚠️ Unaudited |
| AmmCloseSwapServiceStEth | unknown | ethereum | 2 deployments: ethereum [`0x578ba0...2973c2`](./contracts/ethereum-1/0x578ba09c35532e878764c54e879308dbf82973c2/); ethereum `0xe26126...eb6524` | ⚠️ Unaudited |
| AmmCloseSwapServiceStEthBaseV2 | unknown | ethereum | [`0xa07f30...292734`](./contracts/ethereum-1/0xa07f30cb9797b537f7bc4739477ab3a650292734/) | ⚠️ Unaudited |
| AmmCloseSwapServiceUsdc | unknown | ethereum | 3 deployments: ethereum [`0x128ced...aa747f`](./contracts/ethereum-1/0x128cedfe2134d15ec69cc885d22ad0e5f0aa747f/); ethereum `0x623750...673d95`; ethereum `0x9a9f60...69f8e8` | ⚠️ Unaudited |
| AmmCloseSwapServiceUsdt | token | ethereum | 3 deployments: ethereum [`0x11a02a...ab56f9`](./contracts/ethereum-1/0x11a02a63e9142ed929b9fd95357762fc7bab56f9/); ethereum `0x6d0045...d94237`; ethereum `0x8fe90f...743ed2` | ⚠️ Unaudited |
| AmmGovernanceService | unknown | ethereum | 5 deployments: ethereum [`0x4f7ef2...bda46d`](./contracts/ethereum-1/0x4f7ef28c5416b536a7baefb14fdd3dda37bda46d/); ethereum `0x8ab4d1...6e2023`; ethereum `0x8ec9ae...52158d`; ethereum `0xbd7407...95264d`; ethereum `0xbf0a6e...03f4bc` | ⚠️ Unaudited |
| AmmGovernanceServiceBaseV1 | unknown | ethereum | [`0xb64f71...5f0470`](./contracts/ethereum-1/0xb64f71300626499d3d9f8e87bfa34f50c75f0470/) | ⚠️ Unaudited |
| AmmOpenSwapService | unknown | ethereum | 2 deployments: ethereum [`0x4ef45e...8016d1`](./contracts/ethereum-1/0x4ef45eccc64e4bb36b9c46b9ad353855a48016d1/); ethereum `0x78034b...7ae119` | ⚠️ Unaudited |
| AmmOpenSwapServiceStEth | unknown | ethereum | 2 deployments: ethereum [`0x042ec3...59cd2c`](./contracts/ethereum-1/0x042ec3f075c48cd644797e0af12ba6257c59cd2c/); ethereum `0x0ccccd...3ab361` | ⚠️ Unaudited |
| AmmPoolsLens | core_logic | ethereum | 2 deployments: ethereum [`0x1f44c5...40e04a`](./contracts/ethereum-1/0x1f44c5ada019cbb0729e277775877ccdb940e04a/); ethereum `0xb653ed...940d01` | ⚠️ Unaudited |
| AmmPoolsLensBaseV1 | core_logic | ethereum | [`0xce9680...7db70d`](./contracts/ethereum-1/0xce96800a16791d68ee96706915ead714d67db70d/) | ⚠️ Unaudited |
| AmmPoolsLensEth | core_logic | ethereum | [`0x8bea65...28be1e`](./contracts/ethereum-1/0x8bea65298c3e1a6cbb961a44b720d0216028be1e/) | ⚠️ Unaudited |
| AmmPoolsLensStEth | core_logic | ethereum | [`0xb0a485...24904a`](./contracts/ethereum-1/0xb0a4855134f63bf81f3dc6da38de8894fb24904a/) | ⚠️ Unaudited |
| AmmPoolsLensUsdm | core_logic | ethereum | [`0x326293...eac8eb`](./contracts/ethereum-1/0x326293feb79193e97d63e1ec3d6bcd774beac8eb/) | ⚠️ Unaudited |
| AmmPoolsLensWeEth | core_logic | ethereum | [`0xb0d64c...e165a6`](./contracts/ethereum-1/0xb0d64c0375201911e09b0f8c4d38c5a286e165a6/) | ⚠️ Unaudited |
| AmmPoolsService | core_logic | ethereum | 2 deployments: ethereum [`0x912ae5...98f337`](./contracts/ethereum-1/0x912ae5d95bd86f4ae6e580a0fa14a124c998f337/); ethereum `0x9bcde3...400517` | ⚠️ Unaudited |
| AmmPoolsServiceEth | core_logic | ethereum | [`0xa30845...1a9bed`](./contracts/ethereum-1/0xa30845738443aa2dd6bd0783a47b0af8c01a9bed/) | ⚠️ Unaudited |
| AmmPoolsServiceStEth | core_logic | ethereum | 2 deployments: ethereum [`0x406812...428be1`](./contracts/ethereum-1/0x406812ac6f106f7d53b4181d42342e2565428be1/); ethereum `0xcd96ba...fbebbc` | ⚠️ Unaudited |
| AmmPoolsServiceUsdm | core_logic | ethereum | [`0x5765d0...95294c`](./contracts/ethereum-1/0x5765d00dee4cb808b266a46411059a518795294c/) | ⚠️ Unaudited |
| AmmPoolsServiceWeEth | core_logic | ethereum | 2 deployments: ethereum [`0x6966de...c5a318`](./contracts/ethereum-1/0x6966defb920d4d0aa8886feddc7f84e1b1c5a318/); ethereum `0x7b071c...e475ac` | ⚠️ Unaudited |
| AmmStorage | unknown | ethereum | 9 deployments: ethereum [`0x229e0b...7411fe`](./contracts/ethereum-1/0x229e0b9443b1f31d5cd0df69d50b9171667411fe/); ethereum `0x364f11...f5b1ce`; ethereum `0x4508ce...e8c0f0`; ethereum `0x622827...593f2e`; ethereum `0x91c35e...8f6ab1`; ethereum `0x98123c...de36da`; ethereum `0xb3d1c1...924ba5`; ethereum `0xb99f2a...c56e61`; ethereum `0xec6f77...d283e6` | ⚠️ Unaudited |
| AmmStorageBaseV1 | unknown | ethereum | 6 deployments: ethereum [`0x08a8ec...0197c6`](./contracts/ethereum-1/0x08a8ec037df2e54194b397cd7c761631440197c6/); ethereum `0x2b0277...f114d0`; ethereum `0x4f4f16...84ef8c`; ethereum `0x77fe3a...41e3b5`; ethereum `0x95257e...94a281`; ethereum `0x9c9846...701017` | ⚠️ Unaudited |
| AmmSwapsLens | periphery | ethereum | 3 deployments: ethereum [`0x41e347...0172cf`](./contracts/ethereum-1/0x41e34756a7772a4ca1115afbe2e2afbd1b0172cf/); ethereum `0x476c44...2dcd8c`; ethereum `0x5a1cf5...4c50c2` | ⚠️ Unaudited |
| AmmSwapsLensLibBaseV1 | periphery | ethereum | [`0x1decfd...c7032c`](./contracts/ethereum-1/0x1decfd7e774ea8da143e90c14602fe4646c7032c/) | ⚠️ Unaudited |
| AmmTreasury | operational_periphery | ethereum | 9 deployments: ethereum [`0x137000...2e7dc9`](./contracts/ethereum-1/0x137000352b4ed784e8fa8815d225c713ab2e7dc9/); ethereum `0x28bc58...96b687`; ethereum `0x6f4506...dc5944`; ethereum `0x866d6c...a0eb49`; ethereum `0x916202...d3aa48`; ethereum `0xabcb3a...49a82b`; ethereum `0xe9facd...b74dc1`; ethereum `0xeb011b...f88a0c`; ethereum `0xed7d74...4e7523` | ⚠️ Unaudited |
| AmmTreasuryBaseV1 | operational_periphery | ethereum | 4 deployments: ethereum [`0x060bf7...40556a`](./contracts/ethereum-1/0x060bf70ae6ec15121c819a081e56456d5f40556a/); ethereum `0x390e7e...68aabd`; ethereum `0x9a449e...37123b`; ethereum `0xa19b16...1bfaad` | ⚠️ Unaudited |
| AmmTreasuryBaseV2 | operational_periphery | ethereum | 4 deployments: ethereum [`0x30ae18...05153c`](./contracts/ethereum-1/0x30ae182cc30d312dd4f2824c635b8dc5f805153c/); ethereum `0x63395e...8dee4e`; ethereum `0xb1c0cc...44f0c0`; ethereum `0xcc2ff2...d74196` | ⚠️ Unaudited |
| AmmTreasuryEth | operational_periphery | ethereum | [`0xe7193c...50dc22`](./contracts/ethereum-1/0xe7193cac850f0cfaa50c64bb69950cc3bd50dc22/) | ⚠️ Unaudited |
| ApexMaker | unknown | avalanche | [`0xf98ea8...e4f18e`](./contracts/avalanche-43114/0xf98ea8531cf95ec46c327f4a36484ff33ce4f18e/) | ⚠️ Unaudited |
| ApexMakerV2 | unknown | avalanche | [`0x3bf597...4e53ab`](./contracts/avalanche-43114/0x3bf59726d92a382256d2d30434c1bdcbdc4e53ab/) | ⚠️ Unaudited |
| ApexPremier | unknown | avalanche | [`0xd189d2...d8daac`](./contracts/avalanche-43114/0xd189d2a687238efe5ab4ec41a6e0952b3dd8daac/) | ⚠️ Unaudited |
| AssetLocker | unknown | avalanche | 2 deployments: avalanche [`0x376862...6b8853`](./contracts/avalanche-43114/0x37686293c9423a1c5a171aada28ab5c9086b8853/); avalanche `0xd7c8f6...cbd07b` | ⚠️ Unaudited |
| AssetManagementDai | unknown | ethereum | 2 deployments: ethereum [`0x160dae...cdace3`](./contracts/ethereum-1/0x160daea1e07e50c184e6d6778e943212dfcdace3/); ethereum `0xa6ac8b...96e2b0` | ⚠️ Unaudited |
| AssetManagementLens | periphery | ethereum | 2 deployments: ethereum [`0x1d4c4c...5f6e09`](./contracts/ethereum-1/0x1d4c4c07e34a6b43f104204d243aae084d5f6e09/); ethereum `0xb8dbde...192389` | ⚠️ Unaudited |
| AssetManagementUsdc | unknown | ethereum | 2 deployments: ethereum [`0x7aa7b0...9bf260`](./contracts/ethereum-1/0x7aa7b0b738c2570c2f9f892cb7ca5bb89b9bf260/); ethereum `0xd9f0c6...0d2a7b` | ⚠️ Unaudited |
| AssetManagementUsdt | token | ethereum | 2 deployments: ethereum [`0x6416e3...7f7ddd`](./contracts/ethereum-1/0x6416e385f08421f524e2c7335444e56e897f7ddd/); ethereum `0x8e679c...64d6b5` | ⚠️ Unaudited |
| AsyncActionBalanceFuse | unknown | ethereum | [`0x37fb99...92bf6f`](./contracts/ethereum-1/0x37fb994757856ec994203d01b54adb7ae092bf6f/) | ⚠️ Unaudited |
| AsyncActionFuse | unknown | ethereum | [`0x04bd1e...671870`](./contracts/ethereum-1/0x04bd1e6caf008ed831f888ced406cd616c671870/) | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | [`0x238789...d4086a`](./contracts/ethereum-1/0x23878914efe38d27c4d67ab83ed1b93a74d4086a/) | ⚠️ Unaudited |
| AutoETHAdapter | adapter | ethereum | [`0xbcac2b...20ae4e`](./contracts/ethereum-1/0xbcac2b4b09b2d33d0bb3f618bb0189fbf220ae4e/) | ⚠️ Unaudited |
| AutoUSDAdapter | adapter | ethereum | [`0xbcf18d...9bafa9`](./contracts/ethereum-1/0xbcf18d9081be42eaf439bca93f35f3a5cd9bafa9/) | ⚠️ Unaudited |
| Balance | unknown | ethereum | 2 deployments: ethereum [`0x9c86fc...cda956`](./contracts/ethereum-1/0x9c86fc9389baf66114f4b7097f18ebe141cda956/); ethereum `0xe5ca50...e6bd57` | ⚠️ Unaudited |
| BalanceFusesReader | unknown | ethereum | [`0x870e1f...0aec1f`](./contracts/ethereum-1/0x870e1fb75bedbc2efb92857dc2b2cf171a0aec1f/) | ⚠️ Unaudited |
| BIFKN314 | unknown | avalanche | 4 deployments: avalanche [`0x666a53...2d1909`](./contracts/avalanche-43114/0x666a53d7025136be4aa651af20fc5245ff2d1909/); avalanche `0xcbcc39...79d338`; avalanche `0xcffb86...9363dd`; avalanche `0xfe47b6...d529ee` | ⚠️ Unaudited |
| BIFKN314Factory | registry | avalanche | 2 deployments: avalanche [`0x96a97d...dab0f0`](./contracts/avalanche-43114/0x96a97d36fc007075e300399da892f5cedfdab0f0/); avalanche `0xad2203...8bc71d` | ⚠️ Unaudited |
| BIFKN314FactoryV2 | registry | avalanche | 3 deployments: avalanche [`0x4ecd8b...59f450`](./contracts/avalanche-43114/0x4ecd8bdc617d68789ac2afefbab5d24e2859f450/); avalanche `0x576fbd...da622b`; avalanche `0xdcaece...81f99a` | ⚠️ Unaudited |
| BIFKN314FeeHook | unknown | avalanche | 2 deployments: avalanche [`0x2af654...038306`](./contracts/avalanche-43114/0x2af654340459b0a294f9b441b374e64b9a038306/); avalanche `0xa56b59...8ac70c` | ⚠️ Unaudited |
| BIFKN314FeeHookLegacyFix | unknown | avalanche | [`0x3aa19b...2bc262`](./contracts/avalanche-43114/0x3aa19b923e93850b093d5c48c4971de0042bc262/) | ⚠️ Unaudited |
| BIFKN314Mintable | unknown | avalanche | 24 deployments: avalanche [`0x18e015...25a649`](./contracts/avalanche-43114/0x18e0155c8dbd145bd8ebd32bc4cccdd2fa25a649/); avalanche `0x19b7cc...7f4fed`; avalanche `0x1b923f...3b1516`; avalanche `0x1c7b3f...aad39a`; avalanche `0x2e3ac2...e536fb`; avalanche `0x4df08c...f5dc9a`; avalanche `0x5b5913...481ce1`; avalanche `0x5facc8...a26461`; avalanche `0x65fcc0...e053f0`; avalanche `0x836094...e47cd1`; avalanche `0x8ab6a0...c4aa02`; avalanche `0x8bb1e4...324bed`; avalanche `0x8e02a1...f65d96`; avalanche `0x9a25d8...f70736`; avalanche `0x9af107...5d697e`; avalanche `0x9fa9b0...92c15e`; avalanche `0xb643d9...5b5720`; avalanche `0xbe2ff4...fc545b`; avalanche `0xbf835b...ae176d`; avalanche `0xce6450...616da6`; avalanche `0xcec0b5...0442bd`; avalanche `0xda5d3f...b00947`; avalanche `0xdd4bfa...956d14`; avalanche `0xeb3dfd...6a8734` | ⚠️ Unaudited |
| BIFKN314Oracle | operational_periphery | avalanche | 6 deployments: avalanche [`0x2c4ea5...305c96`](./contracts/avalanche-43114/0x2c4ea5a5cbe68d2e88e4e61d7b0632aac4305c96/); avalanche `0x42bff7...255951`; avalanche `0xa0f24a...8f5760`; avalanche `0xc04d3a...c44020`; avalanche `0xca94e2...7b38e3`; avalanche `0xf8ac03...e98df1` | ⚠️ Unaudited |
| BIFKN314Router | adapter | avalanche | [`0x5f4378...03d8cd`](./contracts/avalanche-43114/0x5f4378a634cc046f12143ee9403d31fd4e03d8cd/) | ⚠️ Unaudited |
| BIFKN314RouterV2 | adapter | avalanche | 2 deployments: avalanche [`0x6242c8...2744fc`](./contracts/avalanche-43114/0x6242c833fe85de19c38b3e280a2ddcee262744fc/); avalanche `0xa6d21c...11a682` | ⚠️ Unaudited |
| BIFKN314Wrapper | unknown | avalanche | [`0x978f58...a7e951`](./contracts/avalanche-43114/0x978f58455318c7a0ffa14216d62760b4c8a7e951/) | ⚠️ Unaudited |
| BIFKN314WrapperFactoryV2 | registry | avalanche | 2 deployments: avalanche [`0x709d66...6315cc`](./contracts/avalanche-43114/0x709d667c0f7cb42e6099b1a2b2b71409086315cc/); avalanche `0xfb68c9...5c5bd2` | ⚠️ Unaudited |
| BIFKN314WrapperMintable | unknown | avalanche | 31 deployments: avalanche [`0x0133a8...374bff`](./contracts/avalanche-43114/0x0133a82c4a2ec404ea61529c45ee15b08d374bff/); avalanche `0x098086...18b3da`; avalanche `0x1a308e...620f54`; avalanche `0x1f6c7e...f8e50f`; avalanche `0x1fb3f2...49c612`; avalanche `0x26ab72...3124d5`; avalanche `0x28f699...ad020c`; avalanche `0x430dde...ab2f46`; avalanche `0x485ea0...d6ed82`; avalanche `0x52e44b...e119ad`; avalanche `0x5c84b4...c3e9f9`; avalanche `0x5fe449...1ac6d6`; avalanche `0x636483...3b8941`; avalanche `0x69e852...87143b`; avalanche `0x6c5d31...5f05a2`; avalanche `0x737805...6a2e68`; avalanche `0x77cb12...9e8573`; avalanche `0x7e4126...811b5d`; avalanche `0x9dcde3...8be6c4`; avalanche `0xa28745...c00abe`; avalanche `0xae3f01...1b47a0`; avalanche `0xb47f0d...7ce5c3`; avalanche `0xb51dfb...361f31`; avalanche `0xbf2b86...97789e`; avalanche `0xbf88e0...31bb18`; avalanche `0xc80f88...fc817d`; avalanche `0xd714f2...fba4ec`; avalanche `0xde2468...0114a1`; avalanche `0xf31856...7d639a`; avalanche `0xfb0cf8...d29332`; avalanche `0xfc6c9b...4e3d81` | ⚠️ Unaudited |
| BIFKNChefStrategy | core_logic | avalanche | [`0x421d0d...128815`](./contracts/avalanche-43114/0x421d0df5f147aefe3819466f6bc93fd278128815/) | ⚠️ Unaudited |
| BIFKNChefV2 | unknown | avalanche | [`0x599587...ed38d3`](./contracts/avalanche-43114/0x5995876c9c6e2c23c1c5fc902661127ff9ed38d3/) | ⚠️ Unaudited |
| Blacklist | unknown | ethereum | 2 deployments: ethereum [`0x86ac05...5703a5`](./contracts/ethereum-1/0x86ac05d945a1c1fe6e3ca285c05dffc61c5703a5/); ethereum `0xfb739b...06f935` | ⚠️ Unaudited |
| Blub | unknown | avalanche | [`0x0f6698...b1b5cd`](./contracts/avalanche-43114/0x0f669808d88b2b0b3d23214dcd2a1cc6a8b1b5cd/) | ⚠️ Unaudited |
| BribeFactoryV4 | operational_periphery | linea | 2 deployments: linea [`0x795998...ef0886`](./contracts/linea-59144/0x795998e1d0e57b02a6b8bb57dd8623010fef0886/); linea `0xca79b7...b325b0` | ⚠️ Unaudited |
| BribeV2 | operational_periphery | linea | [`0xb03c9d...3f8aed`](./contracts/linea-59144/0xb03c9df82c045aa546c007486c535ce0c63f8aed/) | ⚠️ Unaudited |
| BurnMintTokenPool | core_logic | bsc | 4 deployments: ethereum `0xd3bd7d...2f8bbb`; bsc [`0x455960...04335a`](./contracts/bsc-56/0x4559605e3003fda8c059e14af4f16ba9a004335a/); linea `0x7263bc...c0c647`; linea `0xe9a64f...d612b2` | ⚠️ Unaudited |
| BurnRequestFeeFuse | unknown | ethereum | [`0x79e8b1...d29ab4`](./contracts/ethereum-1/0x79e8b115bd41baee318c1940f42f1a2d94d29ab4/) | ⚠️ Unaudited |
| BurstFactoryV5 | registry | avalanche | 2 deployments: avalanche [`0xb83ad9...13a903`](./contracts/avalanche-43114/0xb83ad9bf9ae8841ff1e0ec37cbf83d4c5d13a903/); avalanche `0xb91b66...f463d1` | ⚠️ Unaudited |
| BurstToken | token | avalanche | 2 deployments: avalanche [`0x52d370...1203b6`](./contracts/avalanche-43114/0x52d370e60c8220497da6abff36bb2587a31203b6/); avalanche `0x7824ef...5e3b5e` | ⚠️ Unaudited |
| CalculateWeightedLpTokenBalanceEthereum | token | ethereum | 3 deployments: ethereum [`0x3843f9...c18915`](./contracts/ethereum-1/0x3843f9b977c5731b0459bb44de6bf8fd3cc18915/); ethereum `0x6df58f...ca5971`; ethereum `0x77bf38...ff549c` | ⚠️ Unaudited |
| CallbackHandlerEuler | unknown | ethereum | [`0x3b219f...d98602`](./contracts/ethereum-1/0x3b219fd68a7bf5c505503d0cb528148a06d98602/) | ⚠️ Unaudited |
| CallbackHandlerReader | unknown | ethereum | [`0x5b0584...20e393`](./contracts/ethereum-1/0x5b05841aa46db37510e65ea6e61a569e9c20e393/) | ⚠️ Unaudited |
| ClaimNodeOp | unknown | avalanche | [`0xb42cfa...afc35c`](./contracts/avalanche-43114/0xb42cfad450b46fdc9cac5fbf14bc2e6091afc35c/) | ⚠️ Unaudited |
| ClaimProtocolDAO | unknown | avalanche | 2 deployments: avalanche [`0x4169cf...49476c`](./contracts/avalanche-43114/0x4169cf88c7ed811e6f6e61917c5b915bea49476c/); avalanche `0x6476a7...bb286c` | ⚠️ Unaudited |
| CLFeesVault | core_logic | linea | [`0x4569f2...15f5e7`](./contracts/linea-59144/0x4569f2346c5006e1e219bb9e9149f00fa415f5e7/) | ⚠️ Unaudited |
| CockpitDataProvider | unknown | ethereum | 3 deployments: ethereum [`0x124bc6...0e97dc`](./contracts/ethereum-1/0x124bc6be021d3f9e5fbd6194b2839f6df30e97dc/); ethereum `0x720e64...b144ee`; ethereum `0xacbb7e...cc09f5` | ⚠️ Unaudited |
| CollateralTokenOnMorphoMarketPriceFeedFactory | operational_periphery | ethereum | [`0x0ed13e...8bb5a7`](./contracts/ethereum-1/0x0ed13eec003ea0f51214c4a641a3d0a0718bb5a7/) | ⚠️ Unaudited |
| ConfigManager | governance | ethereum | 2 deployments: ethereum [`0x9b3fac...49f03f`](./contracts/ethereum-1/0x9b3fac455c34b45b8febfe844391bfb06849f03f/); ethereum `0xb88600...d35d64` | ⚠️ Unaudited |
| ConfigureInstantWithdrawalFuse | operational_periphery | ethereum | [`0xd58f0e...b33799`](./contracts/ethereum-1/0xd58f0ef796618f09f7fc6e63c25fae25ceb33799/) | ⚠️ Unaudited |
| ContextManager | governance | ethereum | 23 deployments: ethereum [`0x0f2e1c...9592b7`](./contracts/ethereum-1/0x0f2e1ce94519a0b0056a243d055352d3119592b7/); ethereum `0x0fe8d7...62a702`; ethereum `0x1822a8...664d4f`; ethereum `0x226b2c...a6d167`; ethereum `0x3782bc...3c9fd8`; ethereum `0x3db87a...a910c1`; ethereum `0x446f85...700153`; ethereum `0x4f1f51...aa3dd2`; ethereum `0x503873...b3ab72`; ethereum `0x58f50b...f4cb9b`; ethereum `0x695d74...68de3a`; ethereum `0x75c991...b7bf5b`; ethereum `0x9627ed...236014`; ethereum `0xabc0fd...67df0e`; ethereum `0xba6839...270317`; ethereum `0xc223ea...8cc210`; ethereum `0xe5b4ff...49f8af`; ethereum `0xe62a03...fcab36`; ethereum `0xecb36d...90243a`; ethereum `0xeda1e6...78c0a4`; ethereum `0xeeddc5...fe7d10`; ethereum `0xfdb898...f1b526`; ethereum `0xfdd67a...8e731f` | ⚠️ Unaudited |
| ContextManagerFactory | registry | ethereum | 3 deployments: ethereum [`0x1a8404...2decc4`](./contracts/ethereum-1/0x1a8404fb75e221ac472119aebfec61e1212decc4/); ethereum `0x9a5b39...9a9850`; ethereum `0xea0b11...607815` | ⚠️ Unaudited |
| ContractRegistry | registry | ethereum | [`0x8dbc09...b214bd`](./contracts/ethereum-1/0x8dbc09c0bd6d99af01b8254432a13e6ff1b214bd/) | ⚠️ Unaudited |
| ControllerContract | governance | ethereum | 2 deployments: ethereum [`0x7c33ab...c9cb99`](./contracts/ethereum-1/0x7c33abe7c6d0cb7cdb1a9546780fafa696c9cb99/); ethereum `0xed9273...d4c774` | ⚠️ Unaudited |
| CrossAdapter | adapter | ethereum | 16 deployments: ethereum [`0x007274...3ff43d`](./contracts/ethereum-1/0x007274f6e5615c1131c860d376309f2a663ff43d/); ethereum `0x0bfb5f...de52c2`; ethereum `0x0c27d5...d4a29f`; ethereum `0x33141f...9ebb74`; ethereum `0x3981e3...7037a9`; ethereum `0x5454c1...26c7f3`; ethereum `0x5520ec...a5865f`; ethereum `0x5601a6...d5230e`; ethereum `0x5d16d2...687d5a`; ethereum `0x77ab13...d14220`; ethereum `0x833ab7...acc25c`; ethereum `0x9046a3...3f522c`; ethereum `0xaa9215...af2b0c`; ethereum `0xbc3bf0...23d6b1`; ethereum `0xd3e5ef...326c84`; ethereum `0xdf12b8...748f5e` | ⚠️ Unaudited |
| DaoCollateral | unknown | ethereum | 2 deployments: ethereum [`0x0eec86...22af4e`](./contracts/ethereum-1/0x0eec861d49f15f585d6bb4301fc4f89bce22af4e/); ethereum `0x472dd0...75d185` | ⚠️ Unaudited |
| DistributeFees | unknown | linea | 2 deployments: linea [`0xf7fff8...8454ad`](./contracts/linea-59144/0xf7fff84426ba183e0a18becddecc31339f8454ad/); linea `0xfa638e...45c469` | ⚠️ Unaudited |
| DistributionModule | unknown | ethereum | 3 deployments: ethereum [`0x373114...adb24b`](./contracts/ethereum-1/0x373114587ca96deb35a73ace1995dbed36adb24b/); ethereum `0x75cc0c...11e36a`; ethereum `0xa60677...03260f` | ⚠️ Unaudited |
| Drip | unknown | ethereum | 7 deployments: ethereum [`0x0c140d...dc01a5`](./contracts/ethereum-1/0x0c140dc69b02033e45c32c9ba7d7fe48d2dc01a5/); ethereum `0x455960...04335a`; ethereum `0x4d7017...d3466a`; ethereum `0x6b7239...5e6bbd`; ethereum `0x904de7...814a4b`; bsc `0x56aa6d...bae8ef`; linea `0xd3fd41...4f1cd3` | ⚠️ Unaudited |
| DualCrossReferencePriceFeedFactory | operational_periphery | ethereum | 2 deployments: ethereum [`0x78f46f...5a4357`](./contracts/ethereum-1/0x78f46f2c4aaa83a4c26dc5ac05d272f8f55a4357/); ethereum `0x8b94c1...d0b303` | ⚠️ Unaudited |
| EbisuAdjustInterestRateFuse | operational_periphery | ethereum | [`0xf82a57...6c67f9`](./contracts/ethereum-1/0xf82a5730adce3e30c41d057928e1edf4606c67f9/) | ⚠️ Unaudited |
| EbisuAdjustTroveFuse | unknown | ethereum | [`0xe30b07...7cc9e8`](./contracts/ethereum-1/0xe30b07bb32181d1ffb76e1e1f88b6107a97cc9e8/) | ⚠️ Unaudited |
| EbisuWethEthAdapterAddressReader | adapter | ethereum | [`0xe88ed7...b53451`](./contracts/ethereum-1/0xe88ed7dc0a22807a3e5b27aa9c1c81da60b53451/) | ⚠️ Unaudited |
| EbisuZapperBalanceFuse | adapter | ethereum | [`0xb3a7f1...eefb33`](./contracts/ethereum-1/0xb3a7f15034d664fa295b472732bffc6953eefb33/) | ⚠️ Unaudited |
| EbisuZapperCreateFuse | adapter | ethereum | 2 deployments: ethereum [`0x1aba47...37069e`](./contracts/ethereum-1/0x1aba4764dde4ae6d29c97ae3a20a95267a37069e/); ethereum `0x586a81...2551f4` | ⚠️ Unaudited |
| EbisuZapperLeverModifyFuse | adapter | ethereum | [`0xa3babe...836102`](./contracts/ethereum-1/0xa3babe2e9a1fda1350b76eb77c40dd394c836102/) | ⚠️ Unaudited |
| EmissionsToken | operational_periphery | avalanche | [`0xaaab9d...081c6b`](./contracts/avalanche-43114/0xaaab9d12a30504559b0c5a9a5977fee4a6081c6b/) | ⚠️ Unaudited |
| EpochController | governance | linea | 2 deployments: linea [`0x62fc3b...6f0822`](./contracts/linea-59144/0x62fc3b63f7cbaebc74b4876f6cf32e03ba6f0822/); linea `0xd8a570...f8a9b9` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | avalanche | 15 deployments: avalanche [`0x0d8db5...e18a15`](./contracts/avalanche-43114/0x0d8db5209ac4994b8cb78b5d777ea854d7e18a15/); avalanche `0x2542d3...9a2521`; avalanche `0x2aabaf...32a2b2`; avalanche `0x4f7078...eaf769`; avalanche `0x5974d0...1be4a8`; avalanche `0x754a0c...820f01`; avalanche `0x759a06...c7a8e5`; avalanche `0x7e71e4...ee4813`; avalanche `0x85d148...05c927`; avalanche `0x8ade2c...1d591b`; avalanche `0xbc74a3...c07cdd`; avalanche `0xc331d7...3a9f8b`; avalanche `0xd49d18...bfb6e7`; avalanche `0xdd4d94...91ad42`; avalanche `0xe3593d...8f8cfa` | ⚠️ Unaudited |
| Erc4626BalanceFuse | unknown | ethereum | 18 deployments: ethereum [`0x10e2c2...cdb336`](./contracts/ethereum-1/0x10e2c21205c180654b8eea5b75c3a51014cdb336/); ethereum `0x1469e4...512ee8`; ethereum `0x19e332...6e7906`; ethereum `0x2c10c3...c75d5e`; ethereum `0x2e3266...79e7dd`; ethereum `0x318dc5...0c2edf`; ethereum `0x32971e...ecf8e7`; ethereum `0x560c83...7772f0`; ethereum `0x5d4474...2b9a9a`; ethereum `0x806b55...23fb94`; ethereum `0x8c8f2a...ce78af`; ethereum `0x933bff...f8749b`; ethereum `0xa0777a...0e0cee`; ethereum `0xa72f83...ee92cf`; ethereum `0xcb6bb5...ba6566`; ethereum `0xe1fd88...a9a7f3`; ethereum `0xf3d20c...27bf11`; ethereum `0xf9a1f7...1308fe` | ⚠️ Unaudited |
| ERC4626PriceFeed | operational_periphery | ethereum | 2 deployments: ethereum [`0x3c3f08...922d93`](./contracts/ethereum-1/0x3c3f08a0ce5dc1608d7e11167c60244e16922d93/); ethereum `0xdbffc3...7f89b3` | ⚠️ Unaudited |
| ERC4626PriceFeedFactory | operational_periphery | ethereum | 2 deployments: ethereum [`0xe08aff...d1aa61`](./contracts/ethereum-1/0xe08aff4910fb61acc2eacb03b0a6132b01d1aa61/); ethereum `0xf58fcc...0c0fdc` | ⚠️ Unaudited |
| Erc4626SupplyFuse | unknown | ethereum | 18 deployments: ethereum [`0x01d4fa...d45cdf`](./contracts/ethereum-1/0x01d4fa645f3b98fc9d870dd687de3665f0d45cdf/); ethereum `0x06b53a...a5d3b2`; ethereum `0x12fd0e...515870`; ethereum `0x361baf...1c9434`; ethereum `0x53ecc2...c81a6b`; ethereum `0x59e58d...d38f89`; ethereum `0x5e58d1...fa6a88`; ethereum `0x62679b...2649e8`; ethereum `0x6b9489...7bfb90`; ethereum `0x83be46...e4e754`; ethereum `0x87e3b7...cd590b`; ethereum `0x95acdf...35485d`; ethereum `0x970b4f...836dfd`; ethereum `0xbd8a19...47ca9f`; ethereum `0xd6fa88...43b783`; ethereum `0xe49207...80b4ae`; ethereum `0xf16119...73d8e3`; ethereum `0xf492e2...7bf5e7` | ⚠️ Unaudited |
| ERC4626ZapIn | adapter | ethereum | [`0x9af838...76dac3`](./contracts/ethereum-1/0x9af838b8bb05269dac4f30a127f171d3cf76dac3/) | ⚠️ Unaudited |
| ERC4626ZapInWithNativeToken | adapter | ethereum | [`0x677251...d89c00`](./contracts/ethereum-1/0x677251190c0cccc6e7e71c385b3ea660dfd89c00/) | ⚠️ Unaudited |
| EscrowDelegateCheckpoints | operational_periphery | linea | 4 deployments: linea [`0x17a785...9d43d9`](./contracts/linea-59144/0x17a785e0b969cdcf2f6c2f4a4f2988f90b9d43d9/); linea `0x5310a5...541e27`; linea `0x73aebf...429bcf`; linea `0xa61538...f0c249` | ⚠️ Unaudited |
| EthPlusPriceFeed | operational_periphery | ethereum | [`0xd529f4...580199`](./contracts/ethereum-1/0xd529f458bc879be231e36ec62968416c07580199/) | ⚠️ Unaudited |
| Eul | unknown | ethereum | [`0xd9fcd9...aae07b`](./contracts/ethereum-1/0xd9fcd98c322942075a5c3860693e9f4f03aae07b/) | ⚠️ Unaudited |
| EulerV2BalanceFuse | unknown | ethereum | 2 deployments: ethereum [`0xa60785...eeacdc`](./contracts/ethereum-1/0xa607855ec4881b5f25711d1404e0cddeadeeacdc/); ethereum `0xae9a37...7baabd` | ⚠️ Unaudited |
| EulerV2BatchFuse | periphery | ethereum | [`0x45f3bf...7dda6f`](./contracts/ethereum-1/0x45f3bf4f5318d9683357fa8f9f4442263f7dda6f/) | ⚠️ Unaudited |
| EulerV2BorrowFuse | core_logic | ethereum | 2 deployments: ethereum [`0x20c782...9e32c2`](./contracts/ethereum-1/0x20c782c94800d709541660e322035785c89e32c2/); ethereum `0x6b339a...f7f2f6` | ⚠️ Unaudited |
| EulerV2CollateralFuse | unknown | ethereum | 2 deployments: ethereum [`0x07d809...e36514`](./contracts/ethereum-1/0x07d80997d57ad9489a4c48f6134df91822e36514/); ethereum `0xf58d96...672618` | ⚠️ Unaudited |
| EulerV2ControllerFuse | governance | ethereum | 2 deployments: ethereum [`0x4bfea0...ca9b55`](./contracts/ethereum-1/0x4bfea07593844155c0bd5ee656ce54e864ca9b55/); ethereum `0x4dca6f...ec6c25` | ⚠️ Unaudited |
| EulerV2SupplyFuse | unknown | ethereum | 3 deployments: ethereum [`0x225d3e...7e7bf0`](./contracts/ethereum-1/0x225d3e01d3ba0ddf904e1fbb46256f7d3a7e7bf0/); ethereum `0x9425cc...57f217`; ethereum `0xdd33b4...6fd5b5` | ⚠️ Unaudited |
| ExchangeRateValidatorPreHook | unknown | ethereum | [`0xef23ea...706199`](./contracts/ethereum-1/0xef23ea0ec8cb31aa78e8d4f59771f24b84706199/) | ⚠️ Unaudited |
| FeeManager | governance | ethereum | 3 deployments: ethereum [`0x2bb5ca...3a4391`](./contracts/ethereum-1/0x2bb5cafee239687ec1cd0644bb7fd6f4563a4391/); ethereum `0x6951d7...1baa20`; ethereum `0xbde68f...4e2255` | ⚠️ Unaudited |
| FeeManagerFactory | registry | ethereum | 3 deployments: ethereum [`0x061d41...c88985`](./contracts/ethereum-1/0x061d41f63d37231a3c7a4ed74c7b222e6ac88985/); ethereum `0x587a7a...b76aef`; ethereum `0xe8c0f9...3c1bc7` | ⚠️ Unaudited |
| FixedAirdrop | operational_periphery | ethereum | [`0x9a94e4...7c4539`](./contracts/ethereum-1/0x9a94e4d777f81de7e390d5f93b40269cdf7c4539/) | ⚠️ Unaudited |
| FixedRateOracle | operational_periphery | ethereum | [`0x242ed4...a0f9b0`](./contracts/ethereum-1/0x242ed4bfc5c2fdfc0b38f634f49b5e9fafa0f9b0/) | ⚠️ Unaudited |
| FlowsService | unknown | ethereum | [`0xd3486d...e665ac`](./contracts/ethereum-1/0xd3486d81d52b52125b9fb1ae9d674645ece665ac/) | ⚠️ Unaudited |
| FluidInstadappClaimFuse | unknown | ethereum | [`0x59da0c...788c25`](./contracts/ethereum-1/0x59da0ce05cfcf0da3257a96446e5b98edb788c25/) | ⚠️ Unaudited |
| FluidInstadappStakingBalanceFuse | unknown | ethereum | [`0xe9d0e2...a16aba`](./contracts/ethereum-1/0xe9d0e294a0524962c43eedfa935f1e8112a16aba/) | ⚠️ Unaudited |
| FluidInstadappStakingSupplyFuse | unknown | ethereum | [`0xa61324...1d590f`](./contracts/ethereum-1/0xa613249ef6d0c3df83d0593abb63e0638d1d590f/) | ⚠️ Unaudited |
| FluidProofClaimFuse | unknown | ethereum | [`0x30ade0...558fe0`](./contracts/ethereum-1/0x30ade01153cb697bb751cacb6392f49c22558fe0/) | ⚠️ Unaudited |
| FusionFactory | registry | ethereum | 6 deployments: ethereum [`0x034947...cf88a8`](./contracts/ethereum-1/0x034947614513e69d4bd8d31e464276d1bfcf88a8/); ethereum `0x08732e...21d497`; ethereum `0x930434...d41367`; ethereum `0xba84b0...aabe08`; ethereum `0xcd0590...d9b852`; ethereum `0xd48d95...5d5e0d` | ⚠️ Unaudited |
| GaugeFactoryV2 | operational_periphery | linea | 2 deployments: linea [`0x8418f2...1454b6`](./contracts/linea-59144/0x8418f2b6c428a4e4b6408e4eb5148fdb7c1454b6/); linea `0xb94404...41948e` | ⚠️ Unaudited |
| GaugeFactoryV2_CL | operational_periphery | linea | 2 deployments: linea [`0x7b555a...ee1f2e`](./contracts/linea-59144/0x7b555a3ed56af0411cd7fdafc909f4082aee1f2e/); linea `0xc04d35...2783ee` | ⚠️ Unaudited |
| GaugeV2 | operational_periphery | linea | [`0x7a34d6...5d49de`](./contracts/linea-59144/0x7a34d6bead779a36c129f6e0c2176f2c5c5d49de/) | ⚠️ Unaudited |
| GaugeV2_CL | operational_periphery | linea | [`0x88f8b3...37daf9`](./contracts/linea-59144/0x88f8b3679846a0c8e8e828b6950c6364b737daf9/) | ⚠️ Unaudited |
| GearboxV3FarmBalanceFuse | unknown | ethereum | [`0xe88982...0b45f2`](./contracts/ethereum-1/0xe88982097ecdf1dcfc4d500e3392ee0eb70b45f2/) | ⚠️ Unaudited |
| GearboxV3FarmDTokenClaimFuse | token | ethereum | [`0xf710b1...e67072`](./contracts/ethereum-1/0xf710b1daab1623feeb78d32bf34e288c3ee67072/) | ⚠️ Unaudited |
| GearboxV3FarmSupplyFuse | unknown | ethereum | [`0xf6016a...61c34e`](./contracts/ethereum-1/0xf6016a183745c86dd584488c9e75c00bbd61c34e/) | ⚠️ Unaudited |
| GGAVAXPriceFeed | operational_periphery | avalanche | [`0x358283...af8020`](./contracts/avalanche-43114/0x3582837738a46985f900e8ab30191198e0af8020/) | ⚠️ Unaudited |
| GGAVAXRateProvider | unknown | avalanche | [`0x1bb74e...9a0a7f`](./contracts/avalanche-43114/0x1bb74ec551ccd9fe416c71f904d64f42079a0a7f/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | linea | [`0x1fee19...368216`](./contracts/linea-59144/0x1fee198a3d28b2419bf0ab4bbbd6cc8f75368216/) | ⚠️ Unaudited |
| GuessGame | unknown | ethereum | [`0x58d7d6...27a67c`](./contracts/ethereum-1/0x58d7d693788f50fcc1df7aaf08e64db81b27a67c/) | ⚠️ Unaudited |
| HarvestDoHardWorkFuse | operational_periphery | ethereum | [`0xda45fe...b43e50`](./contracts/ethereum-1/0xda45fe8099358bba400554c9b640170246b43e50/) | ⚠️ Unaudited |
| InterestRateDataResolver | operational_periphery | ethereum | 2 deployments: ethereum [`0x69a753...708909`](./contracts/ethereum-1/0x69a753b2dd4ab6cb7197308913f3ebb82d708909/); ethereum `0xa8d5df...982cc6` | ⚠️ Unaudited |
| InterestRateModel | operational_periphery | ethereum | [`0x7e9e7e...a5fd44`](./contracts/ethereum-1/0x7e9e7ea94e1ff36e216a703d6d66ece356a5fd44/) | ⚠️ Unaudited |
| IporFusionAccessManager | governance | ethereum | 30 deployments: ethereum [`0x1dc356...79ae8a`](./contracts/ethereum-1/0x1dc356117aa5dcf8ce836aee851dafd04479ae8a/); ethereum `0x3df9d7...9eabae`; ethereum `0x428691...c6d585`; ethereum `0x49cced...527c06`; ethereum `0x4f9a58...2e256e`; ethereum `0x56e767...b4af56`; ethereum `0x57d771...ba6508`; ethereum `0x6857b2...66e0c7`; ethereum `0x69c121...1d5532`; ethereum `0x7c20c9...28cc6c`; ethereum `0x818912...7df7aa`; ethereum `0x82d3d0...52196c`; ethereum `0x85fd76...72325e`; ethereum `0x8bff06...1c654d`; ethereum `0x922350...eb1d42`; ethereum `0x956d09...ba8f4b`; ethereum `0x962661...20256d`; ethereum `0xae92a0...2ac544`; ethereum `0xb2d9f7...df8a05`; ethereum `0xb46dca...c1f434`; ethereum `0xb7394c...75be04`; ethereum `0xc025ec...d545df`; ethereum `0xcee55b...207a97`; ethereum `0xd1813b...2033a6`; ethereum `0xd887ea...eac106`; ethereum `0xdcf1ec...dd2e46`; ethereum `0xdd15eb...d192a9`; ethereum `0xe593cf...0050ba`; ethereum `0xfb1506...ccce9a`; ethereum `0xfe2242...ea07b5` | ⚠️ Unaudited |
| IporOracle | operational_periphery | ethereum | 8 deployments: ethereum [`0x20a5d2...b2cdd7`](./contracts/ethereum-1/0x20a5d253d6e79972516f5061e2ae5d49a1b2cdd7/); ethereum `0x421c69...8a6876`; ethereum `0x7ff633...b1091c`; ethereum `0x9c2a4e...51d64c`; ethereum `0xbed8a5...6d8562`; ethereum `0xcea315...c58f54`; ethereum `0xcf7124...d71221`; ethereum `0xe76a43...069906` | ⚠️ Unaudited |
| IporOracleFacadeDataProvider | operational_periphery | ethereum | 2 deployments: ethereum [`0x161c5f...c11df0`](./contracts/ethereum-1/0x161c5f5cc8f1e06aa6c65b9b3473cfb4fec11df0/); ethereum `0x7ebc09...f1b1b6` | ⚠️ Unaudited |
| IporProtocolRouter | adapter | ethereum | 8 deployments: ethereum [`0x114f33...130132`](./contracts/ethereum-1/0x114f331f424ed559a0a7c73c041198f2a3130132/); ethereum `0x1c26ab...37a28d`; ethereum `0x38a409...daaee2`; ethereum `0x47f13d...4635d9`; ethereum `0x695264...7d214c`; ethereum `0xc17548...82b838`; ethereum `0xf4d002...1cffbd`; ethereum `0xf9f580...eec3de` | ⚠️ Unaudited |
| IporProtocolRouterEthereum | adapter | ethereum | 2 deployments: ethereum [`0x16d104...3c26fd`](./contracts/ethereum-1/0x16d104009964e694761c0bf09d7be49b7e3c26fd/); ethereum `0xcc735c...9461d6` | ⚠️ Unaudited |
| IporRiskManagementOracle | operational_periphery | ethereum | 2 deployments: ethereum [`0xa5f814...736af7`](./contracts/ethereum-1/0xa5f814872cc000b0b71d1fca822cf07acb736af7/); ethereum `0xfb22c1...1d11b8` | ⚠️ Unaudited |
| IporWeighted | unknown | ethereum | 8 deployments: ethereum [`0x229253...518fbc`](./contracts/ethereum-1/0x229253cf61e706da502558047a48572d54518fbc/); ethereum `0x32d8d5...65ff49`; ethereum `0x53b4c5...b288d9`; ethereum `0x8712a2...5669bb`; ethereum `0x9d4bd8...e85140`; ethereum `0xb00c99...9efe34`; ethereum `0xba610f...edcc7a`; ethereum `0xed21f0...44a81d` | ⚠️ Unaudited |
| IpToken | token | ethereum | 3 deployments: ethereum [`0x9ac509...fda4cb`](./contracts/ethereum-1/0x9ac5092e027f0d9f24b4a1065c70973f3afda4cb/); ethereum `0xac5b04...166125`; ethereum `0xc40431...0c1f0c` | ⚠️ Unaudited |
| IpTokenDai | token | ethereum | [`0x8537b1...dadaf8`](./contracts/ethereum-1/0x8537b194bff354c4738e9f3c81d67e3371dadaf8/) | ⚠️ Unaudited |
| IpTokenUsdt | token | ethereum | 2 deployments: ethereum [`0x7c0e72...621a88`](./contracts/ethereum-1/0x7c0e72f431fd69560d951e4c04a4de3657621a88/); ethereum `0x9bd217...e1edc6` | ⚠️ Unaudited |
| IvTokenDai | token | ethereum | [`0xf93e0e...009b26`](./contracts/ethereum-1/0xf93e0edc76f3147c63f53e7ed245330b96009b26/) | ⚠️ Unaudited |
| IvTokenUsdt | token | ethereum | 2 deployments: ethereum [`0xe176f8...52a95c`](./contracts/ethereum-1/0xe176f879ee386b4a4bf31b5704b500854952a95c/); ethereum `0xe966d1...e19048` | ⚠️ Unaudited |
| JosephDai | unknown | ethereum | 4 deployments: ethereum [`0x086d4d...b65045`](./contracts/ethereum-1/0x086d4daab14741b195dee65aff050ba184b65045/); ethereum `0x6f18b9...00787d`; ethereum `0x7cd10f...be5d04`; ethereum `0x9cb5e8...d3cfd8` | ⚠️ Unaudited |
| JosephUsdt | token | ethereum | 5 deployments: ethereum [`0x33c5a4...4324ac`](./contracts/ethereum-1/0x33c5a44fd6e76fc2b50a9187cfeac336a74324ac/); ethereum `0x470c3a...baa37f`; ethereum `0x8ae47c...1c319b`; ethereum `0xc52569...133277`; ethereum `0xd29f9b...9fc1b0` | ⚠️ Unaudited |
| LevvaAirdrop | operational_periphery | ethereum | [`0xe3f64a...27697e`](./contracts/ethereum-1/0xe3f64a918a2007059d8b5cd083c2b7891927697e/) | ⚠️ Unaudited |
| LevvaAirdropV2 | operational_periphery | ethereum | 3 deployments: ethereum [`0x44eb44...818f73`](./contracts/ethereum-1/0x44eb44642e381f16eb787d1fe0f770096c818f73/); ethereum `0x6329d4...62cbe7`; ethereum `0xadb221...f6b2d4` | ⚠️ Unaudited |
| LevvaPoolAdapter | adapter | ethereum | 10 deployments: ethereum [`0x02b50e...e6e66b`](./contracts/ethereum-1/0x02b50e308b7b49e2ef5c69b06319a8e16ee6e66b/); ethereum `0x0721fa...0de54d`; ethereum `0x0d66f2...87b0ff`; ethereum `0x10cc5e...144696`; ethereum `0x1b5b05...2b9cb5`; ethereum `0x75eb30...6db7f3`; ethereum `0x7cd87c...7f8c1b`; ethereum `0xa02f9a...ad7559`; ethereum `0xef55d7...ffb655`; ethereum `0xf9e6ba...21baea` | ⚠️ Unaudited |
| LevvaVault | core_logic | ethereum | 3 deployments: ethereum [`0x9b36e0...3e55e2`](./contracts/ethereum-1/0x9b36e02b13c9d53bf3cb371a5b0ce789243e55e2/); ethereum `0xbc0c3d...a1dfc5`; ethereum `0xf0f560...68f182` | ⚠️ Unaudited |
| LevvaVaultAdapter | adapter | ethereum | [`0x86baa9...b1b16d`](./contracts/ethereum-1/0x86baa92651b5d636c98eb804d24cdd8bf5b1b16d/) | ⚠️ Unaudited |
| LevvaVaultFactory | registry | ethereum | 6 deployments: ethereum [`0x10f9cf...78c180`](./contracts/ethereum-1/0x10f9cf840b359ad8b4cf0a52ad337fbcf478c180/); ethereum `0x3e104b...f99559`; ethereum `0x7feb51...207de0`; ethereum `0xb540e3...619b00`; ethereum `0xb97b62...b610f4`; ethereum `0xe73b54...d38fd0` | ⚠️ Unaudited |
| LiquidationHelper | periphery | ethereum | [`0x58f6a7...1ca85d`](./contracts/ethereum-1/0x58f6a780fe047b1ec4e4f8a4fd418b81361ca85d/) | ⚠️ Unaudited |
| LiquidityMining | unknown | ethereum | 6 deployments: ethereum [`0x22363b...b9466d`](./contracts/ethereum-1/0x22363bb570ed9eb039b2f153a1f0e50aceb9466d/); ethereum `0x32ab94...abeae3`; ethereum `0x758e7d...621a7e`; ethereum `0xac0dcb...ab644e`; ethereum `0xe00834...0efc02`; ethereum `0xfa556d...f51b1c` | ⚠️ Unaudited |
| LiquidityMiningEthereum | unknown | ethereum | 3 deployments: ethereum [`0x0a06ec...c45edc`](./contracts/ethereum-1/0x0a06ec4004c02fd514ee02c455d20062f7c45edc/); ethereum `0xb0984f...5ff846`; ethereum `0xcc3fc4...0ff366` | ⚠️ Unaudited |
| LiquidityMiningLens | periphery | ethereum | [`0x769d54...b39e98`](./contracts/ethereum-1/0x769d54d25dd9da2159fa690e67b27484eeb39e98/) | ⚠️ Unaudited |
| LiquityBalanceFuse | unknown | ethereum | [`0xf71339...9daa97`](./contracts/ethereum-1/0xf713395a26400c2ecd4af9faf0f6ad7c569daa97/) | ⚠️ Unaudited |
| LynexKeys | unknown | linea | [`0x86751c...d3d7ed`](./contracts/linea-59144/0x86751cbf87b0490617c03b7b83c97488e6d3d7ed/) | ⚠️ Unaudited |
| MarginlyAdapter | adapter | ethereum | [`0x3431bf...29ef3c`](./contracts/ethereum-1/0x3431bf32a9b2be58d6ba80b23e2229426d29ef3c/) | ⚠️ Unaudited |
| MerklClaimFuse | unknown | ethereum | [`0x47aca4...b4bbcc`](./contracts/ethereum-1/0x47aca48086036d213f2a5faa6764a62777b4bbcc/) | ⚠️ Unaudited |
| MerkleTreeKey | operational_periphery | linea | [`0xa1ea0e...71a3bc`](./contracts/linea-59144/0xa1ea0e1d58ae20bfb9ab43b157d8063f1e71a3bc/) | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | ethereum | 3 deployments: ethereum [`0x0bb275...f5046a`](./contracts/ethereum-1/0x0bb2751a90fff62e844b1521637ded28f3f5046a/); ethereum `0x1e2aaa...9f5741`; ethereum `0xb5e457...4ef9e0` | ⚠️ Unaudited |
| MidasBalanceFuse | unknown | ethereum | 2 deployments: ethereum [`0x1bfb9e...22e050`](./contracts/ethereum-1/0x1bfb9e4b7d849c641e7ff896849a4d446322e050/); ethereum `0x8193ca...c96eb2` | ⚠️ Unaudited |
| MidasRequestSupplyFuse | unknown | ethereum | 2 deployments: ethereum [`0x1b66a7...209a3c`](./contracts/ethereum-1/0x1b66a7dd521ae6ee23c280af3277e54bdd209a3c/); ethereum `0x45209c...bdcab8` | ⚠️ Unaudited |
| MidasSupplyFuse | unknown | ethereum | 2 deployments: ethereum [`0x99bc01...bec386`](./contracts/ethereum-1/0x99bc0136ba3cc8d1a920e68eadff4fd899bec386/); ethereum `0x9aa21e...ba6db1` | ⚠️ Unaudited |
| Migrations | operational_periphery | ethereum | 2 deployments: ethereum [`0x85b23b...2cbe74`](./contracts/ethereum-1/0x85b23b710c74685484f7dda47746eb7d272cbe74/); ethereum `0xb56e99...253c2c` | ⚠️ Unaudited |
| MiltonDai | unknown | ethereum | 10 deployments: ethereum [`0x16d236...4dd42e`](./contracts/ethereum-1/0x16d2369a3206d084ce2c3e4a7843adf19c4dd42e/); ethereum `0x1fbd08...0ff864`; ethereum `0x22d87b...e9a4d6`; ethereum `0x7a9990...00073a`; ethereum `0x9def0a...1143c7`; ethereum `0xb1cee7...8fea67`; ethereum `0xb6a547...ac11f2`; ethereum `0xbf71dd...ce79d5`; ethereum `0xcd7e5e...bc03be`; ethereum `0xf5f62c...03b5ce` | ⚠️ Unaudited |
| MiltonFacadeDataProvider | unknown | ethereum | 2 deployments: ethereum [`0x7520c9...25015b`](./contracts/ethereum-1/0x7520c967cad6d872c8b0fa1444ed3ed26025015b/); ethereum `0xd5ef0d...5b236c` | ⚠️ Unaudited |
| MiltonSpreadModelDai | unknown | ethereum | 2 deployments: ethereum [`0x9cf78e...68c5d9`](./contracts/ethereum-1/0x9cf78e518507b8922634a3ac02e8d8136768c5d9/); ethereum `0xfb2ee9...e95318` | ⚠️ Unaudited |
| MiltonSpreadModelUsdc | unknown | ethereum | 2 deployments: ethereum [`0x2a8998...5600ac`](./contracts/ethereum-1/0x2a8998bfbecfd39136572def74c6df6f9e5600ac/); ethereum `0x6bcb29...245467` | ⚠️ Unaudited |
| MiltonSpreadModelUsdt | token | ethereum | 4 deployments: ethereum [`0x3eea8a...5eca9e`](./contracts/ethereum-1/0x3eea8a8967c3c56967f46597613ccc633b5eca9e/); ethereum `0x49f282...a3a8b0`; ethereum `0xd49b20...4efdc8`; ethereum `0xedaaf1...beac3d` | ⚠️ Unaudited |
| MiltonStorage | unknown | ethereum | 2 deployments: ethereum [`0x5f4829...94c1d2`](./contracts/ethereum-1/0x5f4829b14a27e73dcbd1c9238d8c4fc9a594c1d2/); ethereum `0x644149...831069` | ⚠️ Unaudited |
| MiltonUsdc | unknown | ethereum | 3 deployments: ethereum [`0x371f6e...159d29`](./contracts/ethereum-1/0x371f6eb514eb8de60f29e4c246bfba1108159d29/); ethereum `0x6a259c...e7eb48`; ethereum `0xdb75be...974579` | ⚠️ Unaudited |
| MiltonUsdt | token | ethereum | 11 deployments: ethereum [`0x0d5522...dc59b2`](./contracts/ethereum-1/0x0d55221929cf67c8ca060f799a6bb1d0d9dc59b2/); ethereum `0x473285...a197b0`; ethereum `0x72f856...906283`; ethereum `0x80def4...4fa53e`; ethereum `0x8fcd17...ba8fcb`; ethereum `0xb92635...328b21`; ethereum `0xccadc4...a905e3`; ethereum `0xd15b8f...c53165`; ethereum `0xe37cfe...ef922b`; ethereum `0xe3c67a...099195`; ethereum `0xf739f3...f2c4db` | ⚠️ Unaudited |
| MiningCalculationAccountPowerUp | unknown | ethereum | 2 deployments: ethereum [`0x9a293a...a28458`](./contracts/ethereum-1/0x9a293ac079fdeaa54fcf3810e07b914672a28458/); ethereum `0xe8e51e...7ea585` | ⚠️ Unaudited |
| MinipoolManager | core_logic | avalanche | 4 deployments: avalanche [`0x9e6579...b280e9`](./contracts/avalanche-43114/0x9e6579161c6f53722541edbd5ac96779c5b280e9/); avalanche `0xb84fa0...d1ed08`; avalanche `0xc8de41...da7037`; avalanche `0xe51262...208dea` | ⚠️ Unaudited |
| MinipoolStreamliner | core_logic | avalanche | [`0x0a75a4...efa430`](./contracts/avalanche-43114/0x0a75a480af4adc81b20b1664a1da2bd7caefa430/) | ⚠️ Unaudited |
| MinterUpgradeableV2 | unknown | linea | 2 deployments: linea [`0x9030ae...eb19d4`](./contracts/linea-59144/0x9030ae4d0997658de58d274f79d3074b1beb19d4/); linea `0xa996de...903826` | ⚠️ Unaudited |
| MultisigManager | governance | avalanche | [`0x7fff41...1b6a3b`](./contracts/avalanche-43114/0x7fff419c562dd8b3cf16c335a01cdb37ea1b6a3b/) | ⚠️ Unaudited |
| N2MERC721NS | token | linea | [`0x398f0a...af4749`](./contracts/linea-59144/0x398f0a3e303afd3cae2b602d6bbe01b1c1af4749/) | ⚠️ Unaudited |
| Ocyticus | unknown | avalanche | 2 deployments: avalanche [`0x9189d1...ea210b`](./contracts/avalanche-43114/0x9189d18f453b1ec1f02e40a8e3711334f9ea210b/); avalanche `0xffdc3b...ad5542` | ⚠️ Unaudited |
| OdosSwapperFuse | adapter | ethereum | [`0xc13f3f...1cb691`](./contracts/ethereum-1/0xc13f3fd20556a595990c35612e9e5c1c071cb691/) | ⚠️ Unaudited |
| OneValuePriceFeed | operational_periphery | ethereum | [`0xd7aa52...0e61cf`](./contracts/ethereum-1/0xd7aa529ce055a1f745a40c1eea98ccb9b90e61cf/) | ⚠️ Unaudited |
| OptionFeeDistributor | operational_periphery | linea | 2 deployments: linea [`0x9190f0...d475e4`](./contracts/linea-59144/0x9190f0508263d645a6510988d5d566f353d475e4/); linea `0x9cf90f...828b38` | ⚠️ Unaudited |
| OptionTokenV3 | token | linea | [`0x63349b...400b60`](./contracts/linea-59144/0x63349ba5e1f71252ecd56e8f950d1a518b400b60/) | ⚠️ Unaudited |
| Oracle | operational_periphery | avalanche | [`0x30fb91...a16db7`](./contracts/avalanche-43114/0x30fb915258d844e9dc420b2c3aa97420aea16db7/) | ⚠️ Unaudited |
| OraclePublisher | operational_periphery | ethereum | 2 deployments: ethereum [`0x254a66...b505ff`](./contracts/ethereum-1/0x254a663790cdaff53204c7072cf0c75231b505ff/); ethereum `0xa735b8...7dd508` | ⚠️ Unaudited |
| OriginETHAdapter | adapter | ethereum | 2 deployments: ethereum [`0x9b6f39...3acfac`](./contracts/ethereum-1/0x9b6f395d0f1cc253ca85e3b2ce54f915d03acfac/); ethereum `0xc7f296...f8aee6` | ⚠️ Unaudited |
| PairAPI | unknown | linea | 2 deployments: linea [`0x6c8432...7c3665`](./contracts/linea-59144/0x6c84329cc8c37376eb32db50a17f3bfc917c3665/); linea `0xef599b...16f2cc` | ⚠️ Unaudited |
| PauseFunctionPreHook | unknown | ethereum | [`0x7846be...984d59`](./contracts/ethereum-1/0x7846bed0b55048db0e6a5388b89e92f091984d59/) | ⚠️ Unaudited |
| PermissionsRegistry | registry | linea | [`0xc68a70...c45cb8`](./contracts/linea-59144/0xc68a70aa8bca0b4513be719be2c5e2eea9c45cb8/) | ⚠️ Unaudited |
| PlasmaVaultFactory | registry | ethereum | 4 deployments: ethereum [`0x3bbe70...0da9a8`](./contracts/ethereum-1/0x3bbe7003ef4288a7a405aacb911c81b5f20da9a8/); ethereum `0x7c9119...3007e2`; ethereum `0xcdc799...edc09c`; ethereum `0xee47a6...7eb9a5` | ⚠️ Unaudited |
| PlasmaVaultRedeemFromRequestFuse | core_logic | ethereum | [`0x906af6...53af0d`](./contracts/ethereum-1/0x906af6a42079adaf1abd92f924a5d4263653af0d/) | ⚠️ Unaudited |
| PlasmaVaultRequestSharesFuse | core_logic | ethereum | [`0x713038...e09542`](./contracts/ethereum-1/0x7130383298822097531cf5cc5e3414dda1e09542/) | ⚠️ Unaudited |
| PowerToken | token | ethereum | 4 deployments: ethereum [`0x586ac8...6d49eb`](./contracts/ethereum-1/0x586ac86675bd933c4b9a26c55b6e62b6496d49eb/); ethereum `0x78dbf1...84a0f7`; ethereum `0xd72915...95409f`; ethereum `0xf4725f...7f3ab1` | ⚠️ Unaudited |
| PowerTokenLens | token | ethereum | [`0x5a4fc8...d21ec3`](./contracts/ethereum-1/0x5a4fc8f98ca356b7e957d18c155bc62e32d21ec3/) | ⚠️ Unaudited |
| PRBMathCommon | unknown | ethereum | [`0x5dea8b...2bdc1b`](./contracts/ethereum-1/0x5dea8bbcc1fca0aaa72872aba72990278d2bdc1b/) | ⚠️ Unaudited |
| PRBMathSD59x18 | unknown | ethereum | [`0xd0ad0c...ea91f2`](./contracts/ethereum-1/0xd0ad0cdf6c0a08048d95a140fd0eecbeb7ea91f2/) | ⚠️ Unaudited |
| PreHooksInfoReader | periphery | ethereum | [`0x1ecd96...e19821`](./contracts/ethereum-1/0x1ecd96fd20f2c1a32e5906cccaec87e8afe19821/) | ⚠️ Unaudited |
| PriceManagerFactory | operational_periphery | ethereum | 3 deployments: ethereum [`0x0fc2d5...b07609`](./contracts/ethereum-1/0x0fc2d5046937f10805a7581f0f68984ef3b07609/); ethereum `0x6558eb...0ab162`; ethereum `0x7d49c6...e3fe82` | ⚠️ Unaudited |
| PriceOracleMiddleware | operational_periphery | ethereum | 3 deployments: ethereum [`0x09321c...024da2`](./contracts/ethereum-1/0x09321c70b4e51f3f21bdad79c61d11fba1024da2/); ethereum `0x6bf0ff...0385c9`; ethereum `0xb7018c...66f2f7` | ⚠️ Unaudited |
| PriceOracleMiddlewareManager | operational_periphery | ethereum | 15 deployments: ethereum [`0x07fc09...062930`](./contracts/ethereum-1/0x07fc092fa44c52516decd5f7545061316d062930/); ethereum `0x18fda4...187d5e`; ethereum `0x213bb7...75dc4d`; ethereum `0x3ac655...189b5a`; ethereum `0x45d0e1...74c115`; ethereum `0x4e3c90...83575b`; ethereum `0x654ff3...d776b1`; ethereum `0x6d16b7...4abc02`; ethereum `0x7c6f94...8ec03e`; ethereum `0x80c086...b8c1aa`; ethereum `0x8b1ebe...8029e8`; ethereum `0x962131...90ee87`; ethereum `0x9f6993...dc8548`; ethereum `0xc3eb0c...8d5787`; ethereum `0xcb5ef9...179362` | ⚠️ Unaudited |
| PriceOracleMiddlewareWithRoles | operational_periphery | ethereum | 2 deployments: ethereum [`0xc9f32d...d664c6`](./contracts/ethereum-1/0xc9f32d65a278b012371858fd3cde315b12d664c6/); ethereum `0xeba87a...f9317c` | ⚠️ Unaudited |
| PriceProvidersRepository | operational_periphery | ethereum | [`0x7c2ca9...05029f`](./contracts/ethereum-1/0x7c2ca9d502f2409beceafa68e97a176ff805029f/) | ⚠️ Unaudited |
| ProtocolDAO | unknown | avalanche | 3 deployments: avalanche [`0x41a763...195d0b`](./contracts/avalanche-43114/0x41a76343eb93b4790e53c8e2789e09ef41195d0b/); avalanche `0xa008cc...8ef546`; avalanche `0xfc3ea3...d8051a` | ⚠️ Unaudited |
| ProxyAdmin | governance | avalanche | 5 deployments: avalanche [`0x5313c3...b247cf`](./contracts/avalanche-43114/0x5313c309cd469b751ad3947568d65d4a70b247cf/); avalanche `0x6e8fd3...aed940`; avalanche `0x9484d5...416c71`; avalanche `0xbc5627...e9e190`; linea `0xb15242...407889` | ⚠️ Unaudited |
| PtPriceFeedFactory | operational_periphery | ethereum | 2 deployments: ethereum [`0x1cb493...26007c`](./contracts/ethereum-1/0x1cb493392367a0283090bf965503a9588d26007c/); ethereum `0xe2a264...52db9b` | ⚠️ Unaudited |
| ReferralPlasmaVault | core_logic | ethereum | [`0x399502...063585`](./contracts/ethereum-1/0x399502b8dc8a38e2cd2d670f4f40cc168c063585/) | ⚠️ Unaudited |
| Renzo | unknown | ethereum | [`0x3b5080...3fa6f9`](./contracts/ethereum-1/0x3b50805453023a91a8bf641e279401a0b23fa6f9/) | ⚠️ Unaudited |
| ResolvAdapter | adapter | ethereum | [`0x812e32...bbc3bb`](./contracts/ethereum-1/0x812e3249b0a4bf41fee4201987b4cc4d53bbc3bb/) | ⚠️ Unaudited |
| RewardAPIV2 | unknown | linea | 2 deployments: linea [`0x6dc1df...4f8b41`](./contracts/linea-59144/0x6dc1dff60096195c9d4c2b89c4bd64c3644f8b41/); linea `0xcd9df6...f6408d` | ⚠️ Unaudited |
| RewardEulerTokenClaimFuse | token | ethereum | [`0xaa2442...d0866a`](./contracts/ethereum-1/0xaa2442f310d8d4a6d42160b1d2a22acb1dd0866a/) | ⚠️ Unaudited |
| RewardsClaimManager | governance | ethereum | 25 deployments: ethereum [`0x11cbc3...10367f`](./contracts/ethereum-1/0x11cbc30008dde93db992ac0190848852d310367f/); ethereum `0x1f8397...02ded0`; ethereum `0x23c8dc...21cdec`; ethereum `0x2d1a21...af2792`; ethereum `0x3b1dac...b967b1`; ethereum `0x3e9dba...b9c67c`; ethereum `0x4d99e7...3bddb3`; ethereum `0x4de58c...7d3e23`; ethereum `0x536783...7a91a9`; ethereum `0x5a5f43...18aa01`; ethereum `0x5cb733...208a71`; ethereum `0x7a79b5...749aea`; ethereum `0x84c87f...375cb1`; ethereum `0x9beff3...e42051`; ethereum `0xb20e1d...0cd802`; ethereum `0xb401b9...fdc3e2`; ethereum `0xb58423...79a4c8`; ethereum `0xcb1bbc...34f224`; ethereum `0xcd397f...ed6889`; ethereum `0xcdb0a6...8b5821`; ethereum `0xd0e170...937901`; ethereum `0xd6dc84...9a2946`; ethereum `0xda376f...214721`; ethereum `0xf4c6fe...93cdc8`; ethereum `0xf5db3e...d0be61` | ⚠️ Unaudited |
| RewardsDistributorV2 | operational_periphery | linea | [`0x2222c5...910ee4`](./contracts/linea-59144/0x2222c569387b2a98fe1a9350f2cacde918910ee4/) | ⚠️ Unaudited |
| RewardsManagerFactory | registry | ethereum | 3 deployments: ethereum [`0x274567...c54028`](./contracts/ethereum-1/0x274567024cc733e78d6e47644a745936a3c54028/); ethereum `0x5d9f02...c3c71a`; ethereum `0xb03a4f...d6752e` | ⚠️ Unaudited |
| RewardsPool | operational_periphery | avalanche | [`0xaa8fd0...7c1b1d`](./contracts/avalanche-43114/0xaa8fd06cc3f1059b6d35870bbf625c1bac7c1b1d/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | [`0x2e0355...7f25b2`](./contracts/ethereum-1/0x2e0355922ef3a5b77d29287c808aeafb4e7f25b2/) | ⚠️ Unaudited |
| SafeL2 | unknown | avalanche | 2 deployments: avalanche [`0x58a916...78e811`](./contracts/avalanche-43114/0x58a916ad66584811c939aa844025036e5078e811/); linea [`0x58a916...78e811`](./contracts/linea-59144/0x58a916ad66584811c939aa844025036e5078e811/) | ⚠️ Unaudited |
| SafeProxy | unknown | avalanche | [`0xb63019...1d3a25`](./contracts/avalanche-43114/0xb6301976f04e6a58d6e57ff04144a31d911d3a25/) | ⚠️ Unaudited |
| SDaiPriceFeedEthereum | operational_periphery | ethereum | [`0x974672...70805d`](./contracts/ethereum-1/0x974672fa995917fec4a5c9db32784d36c370805d/) | ⚠️ Unaudited |
| SiloFactory | registry | ethereum | [`0x4d919c...737589`](./contracts/ethereum-1/0x4d919cecfd4793c0d47866c8d0a02a0950737589/) | ⚠️ Unaudited |
| SiloGovernanceTokenV2 | token | ethereum | [`0xc0c899...fc3248`](./contracts/ethereum-1/0xc0c89911c20453b1d897355ee7208e8270fc3248/) | ⚠️ Unaudited |
| SiloGovernor | governance | ethereum | [`0xa89163...eeaf61`](./contracts/ethereum-1/0xa89163f7b2d68a8fba6ca36beed32bd4f3eeaf61/) | ⚠️ Unaudited |
| SiloLens | periphery | ethereum | [`0xf12c37...8d92ea`](./contracts/ethereum-1/0xf12c3758c1ec393704f0db8537ef7f57368d92ea/) | ⚠️ Unaudited |
| SiloLiquidationLens | periphery | ethereum | [`0x06bed4...2680a4`](./contracts/ethereum-1/0x06bed4637e8cf9e4efc1b227e0c322d7042680a4/) | ⚠️ Unaudited |
| SiloModule | unknown | ethereum | [`0xb98bc3...37f1af`](./contracts/ethereum-1/0xb98bc3e3b9ea8d86f6ee321737fa23710737f1af/) | ⚠️ Unaudited |
| SiloRepository | registry | ethereum | [`0xd998c3...cf309d`](./contracts/ethereum-1/0xd998c35b7900b344bbbe6555cc11576942cf309d/) | ⚠️ Unaudited |
| SiloRouter | adapter | ethereum | [`0xb2374f...322a0c`](./contracts/ethereum-1/0xb2374f84b3ceeff6492943df613c9bcf45322a0c/) | ⚠️ Unaudited |
| SiloSnapshotWrapper | unknown | ethereum | [`0xce3d2e...b168a4`](./contracts/ethereum-1/0xce3d2e0331d6776c79f329140d7ace2e94b168a4/) | ⚠️ Unaudited |
| SiloV2BalanceFuse | unknown | ethereum | [`0x086aca...17998f`](./contracts/ethereum-1/0x086aca94aa413932c6ac5e09b863ac2cbe17998f/) | ⚠️ Unaudited |
| SiloV2BorrowFuse | core_logic | ethereum | [`0x1d24b8...13005b`](./contracts/ethereum-1/0x1d24b8d16d87a570e8539c2849a23bbc5f13005b/) | ⚠️ Unaudited |
| SiloV2SupplyBorrowableCollateralFuse | core_logic | ethereum | [`0xb3d5c1...038fb5`](./contracts/ethereum-1/0xb3d5c1b8d512bd41d845817f84e4ea29bf038fb5/) | ⚠️ Unaudited |
| SiloV2SupplyNonBorrowableCollateralFuse | core_logic | ethereum | [`0x897d96...defa56`](./contracts/ethereum-1/0x897d96a7c91e2f1b8213f240cad031f9acdefa56/) | ⚠️ Unaudited |
| SoapIndicatorRebalanceLogic | unknown | ethereum | 6 deployments: ethereum [`0x213534...4d7100`](./contracts/ethereum-1/0x21353473a7847bd8e44b0ab5e5d466b0cb4d7100/); ethereum `0x4c9a6f...64a2b0`; ethereum `0x9cae0d...c2ce95`; ethereum `0xb70a2e...8d99e6`; ethereum `0xb933b5...0cc060`; ethereum `0xea87d3...64e0a1` | ⚠️ Unaudited |
| Spread28Days | unknown | ethereum | [`0xb8d531...e8dad5`](./contracts/ethereum-1/0xb8d531ea16caf1cf7b7cbc333e8963db59e8dad5/) | ⚠️ Unaudited |
| Spread60Days | unknown | ethereum | [`0x36618c...9a81ab`](./contracts/ethereum-1/0x36618ce1615305f3b99eeb9df8d4272e729a81ab/) | ⚠️ Unaudited |
| Spread90Days | unknown | ethereum | [`0x22c1cf...7795d5`](./contracts/ethereum-1/0x22c1cf8fcde74a373791863953b8c9ab417795d5/) | ⚠️ Unaudited |
| SpreadBaseV1 | unknown | ethereum | [`0x768762...a358fb`](./contracts/ethereum-1/0x768762712eca97bc9ec930320d3ee0bd91a358fb/) | ⚠️ Unaudited |
| SpreadCloseSwapService | unknown | ethereum | [`0x948548...5dcacd`](./contracts/ethereum-1/0x948548414a364c7d6f379ed73aeddb3c795dcacd/) | ⚠️ Unaudited |
| SpreadRouter | adapter | ethereum | 3 deployments: ethereum [`0x11cc7a...81ede2`](./contracts/ethereum-1/0x11cc7a3b0519ad10542907d985e6b0780281ede2/); ethereum `0xaa14eb...0c90a8`; ethereum `0xac1c86...2338ed` | ⚠️ Unaudited |
| SpreadStorageLens | periphery | ethereum | [`0xb50c61...6c12c6`](./contracts/ethereum-1/0xb50c618d63806ec1594547ecdb3e97737d6c12c6/) | ⚠️ Unaudited |
| SpreadStorageService | unknown | ethereum | [`0x45336f...f1493e`](./contracts/ethereum-1/0x45336f3fa7b0f6e030f60eada71de147bff1493e/) | ⚠️ Unaudited |
| Stake | unknown | ethereum | 2 deployments: ethereum [`0x194e34...9826c8`](./contracts/ethereum-1/0x194e3458a94c1a54687b8c6a217c0255e79826c8/); ethereum `0x7c329f...d48825` | ⚠️ Unaudited |
| StakeDaoV2BalanceFuse | token | ethereum | [`0x0c59d9...1c3816`](./contracts/ethereum-1/0x0c59d9cd3859673edc70b0bcf66e2715831c3816/) | ⚠️ Unaudited |
| StakeDaoV2ClaimFuse | token | ethereum | [`0x7ec22c...77defc`](./contracts/ethereum-1/0x7ec22c4defe53ec35f03f0b6468ec319c577defc/) | ⚠️ Unaudited |
| StakeDaoV2SupplyFuse | token | ethereum | [`0x5be6e7...ce3c1e`](./contracts/ethereum-1/0x5be6e757763a3b7106d211df5017823366ce3c1e/) | ⚠️ Unaudited |
| StakeService | unknown | ethereum | 2 deployments: ethereum [`0x379038...36f6c7`](./contracts/ethereum-1/0x3790383f8685b439391dc1bc56f7b3f82236f6c7/); ethereum `0xf83027...deafea` | ⚠️ Unaudited |
| StakeToken | token | ethereum | 2 deployments: ethereum [`0x233cbc...73e7fc`](./contracts/ethereum-1/0x233cbc0109475b5a85da23b997105fc16b73e7fc/); ethereum `0xe2a8cd...375ec5` | ⚠️ Unaudited |
| Staking | unknown | ethereum | 11 deployments: ethereum [`0x062ab4...9e2e7b`](./contracts/ethereum-1/0x062ab43e7c2d0419d996ccfd634161d6289e2e7b/); ethereum `0x24bab6...55f0a6`; ethereum `0x4f8d96...f28f71`; ethereum `0x52055c...8262b0`; ethereum `0x6d1fba...9e230e`; ethereum `0xb08b28...89adb4`; ethereum `0xd348fb...77d975`; ethereum `0xd56320...d1aa3b`; avalanche `0x439776...374a5f`; avalanche `0x9946e6...531d00`; avalanche `0xb6ddbf...26aecb` | ⚠️ Unaudited |
| StanleyDai | unknown | ethereum | 2 deployments: ethereum [`0x8f0279...13a817`](./contracts/ethereum-1/0x8f0279e4a5d3447e6dd9b536e03504f20313a817/); ethereum `0xadeb2f...3c1872` | ⚠️ Unaudited |
| StanleyDsrDai | unknown | ethereum | [`0xe945ef...a339e4`](./contracts/ethereum-1/0xe945ef2449a22958267c67a7df63519454a339e4/) | ⚠️ Unaudited |
| StanleyUsdc | unknown | ethereum | [`0xb512e3...14114b`](./contracts/ethereum-1/0xb512e32e56f270e9a1dbd56be6fa7baf0014114b/) | ⚠️ Unaudited |
| StanleyUsdt | token | ethereum | [`0xb6923e...5903d6`](./contracts/ethereum-1/0xb6923eaa3cd97c6f4369c8a40bd9324ffa5903d6/) | ⚠️ Unaudited |
| StAvaxWavaxOracle | operational_periphery | avalanche | 2 deployments: avalanche [`0x7759c6...cb618d`](./contracts/avalanche-43114/0x7759c62e0e3c1c6ee5789b60ccd0826936cb618d/); avalanche `0xa582a3...bc3a4b` | ⚠️ Unaudited |
| StEthWrapperFuse | unknown | ethereum | 2 deployments: ethereum [`0x176f64...e69584`](./contracts/ethereum-1/0x176f645b837663f4af2579f37059bdc22ee69584/); ethereum `0xab97e4...ea1bad` | ⚠️ Unaudited |
| StrategyAave | core_logic | ethereum | 3 deployments: ethereum [`0x526d00...f1f62f`](./contracts/ethereum-1/0x526d0047725d48bbc6e24c7b82a3e47c1af1f62f/); ethereum `0x58703d...c5127d`; ethereum `0x77fcae...ba028f` | ⚠️ Unaudited |
| StrategyCompound | core_logic | ethereum | 3 deployments: ethereum [`0x87cef1...9fc774`](./contracts/ethereum-1/0x87cef19aca214d12082e201e6130432df39fc774/); ethereum `0xe4cd9a...9ab5b1`; ethereum `0xe5257c...82f526` | ⚠️ Unaudited |
| StrategyDsrDai | core_logic | ethereum | 3 deployments: ethereum [`0xc26be5...97239c`](./contracts/ethereum-1/0xc26be51e50a358ec6d366147d78ab94e9597239c/); ethereum `0xceceb6...60ec2d`; ethereum `0xd45763...44d6db` | ⚠️ Unaudited |
| Stream | adapter | bsc | 3 deployments: ethereum `0xcd3f84...650ae6`; bsc [`0x54beea...eb54d0`](./contracts/bsc-56/0x54beea0a1a450883801c2bc1426aae7ad3eb54d0/); linea `0x558996...f01a4c` | ⚠️ Unaudited |
| StreamFactory | registry | linea | 5 deployments: ethereum `0x2a3b30...358920`; ethereum `0xf44399...4a6cae`; bsc `0xc651ce...b68e6b`; linea [`0x24452a...99dfbe`](./contracts/linea-59144/0x24452a82e3e4f20734e2fe9a511c8d839999dfbe/); linea `0x63fbed...25fb99` | ⚠️ Unaudited |
| StreamFactoryProxy | registry | bsc | [`0x298d29...b3c120`](./contracts/bsc-56/0x298d2967588b5c93a137ce1a05d0b8cfffb3c120/) | ⚠️ Unaudited |
| SwapExecutorEth | unknown | ethereum | [`0x5e3654...1bd1c4`](./contracts/ethereum-1/0x5e3654082406519e35a5426bb54f29d2651bd1c4/) | ⚠️ Unaudited |
| SwapExecutorRestricted | unknown | ethereum | 2 deployments: ethereum [`0x1a7034...5205e9`](./contracts/ethereum-1/0x1a7034b0a5b5356e6975c5efe9217b25085205e9/); ethereum `0xe092b9...5f1b09` | ⚠️ Unaudited |
| SwapperEngine | adapter | ethereum | [`0xf65b0c...6e57d3`](./contracts/ethereum-1/0xf65b0c88f65d620ea325ffb1ad46a5ba8a6e57d3/) | ⚠️ Unaudited |
| SyrupClaimFuse | unknown | ethereum | [`0x5b1a6b...41f537`](./contracts/ethereum-1/0x5b1a6b2e6af64e74275015a65687de0ca941f537/) | ⚠️ Unaudited |
| Timelock | governance | avalanche | [`0xcd385f...14af41`](./contracts/avalanche-43114/0xcd385f1947d532186f3f6aaa93966e3e9c14af41/) | ⚠️ Unaudited |
| TimelockController | governance | ethereum | [`0xe1f03b...aa7d22`](./contracts/ethereum-1/0xe1f03b7b0ebf84e9b9f62a1db40f1efb8faa7d22/) | ⚠️ Unaudited |
| TimelockControllerEnumerable | governance | linea | 2 deployments: linea [`0x7d496d...cc3229`](./contracts/linea-59144/0x7d496d0c1cb8aaf8e4fa5460affacb4dd9cc3229/); linea `0xeb1215...5ec953` | ⚠️ Unaudited |
| TimelockControllerUpgradeable | governance | ethereum | 4 deployments: ethereum [`0x24452a...99dfbe`](./contracts/ethereum-1/0x24452a82e3e4f20734e2fe9a511c8d839999dfbe/); ethereum `0x63fbed...25fb99`; ethereum `0x9b496a...6091b4`; ethereum `0xe9a64f...d612b2` | ⚠️ Unaudited |
| TimelockWhitelist | governance | ethereum | [`0xcf515e...bf982c`](./contracts/ethereum-1/0xcf515e7cb2a636cde81d63a37f2433100cbf982c/) | ⚠️ Unaudited |
| TokemakAdapter | adapter | ethereum | 2 deployments: ethereum [`0x446b6d...300af4`](./contracts/ethereum-1/0x446b6d4ba19647c06be4b06597fbc7e0c0300af4/); ethereum `0xc59e64...757b56` | ⚠️ Unaudited |
| TokenBatchTransfer | token | ethereum | [`0x35cb40...2bb7f1`](./contracts/ethereum-1/0x35cb400f5c443d8efa7e2ea5d123eb78332bb7f1/) | ⚠️ Unaudited |
| TokenMinter | token | ethereum | 2 deployments: ethereum [`0x0313d8...cf8fa4`](./contracts/ethereum-1/0x0313d8abf579f99d16d50a6feff21968eacf8fa4/); ethereum `0x254163...d82eb2` | ⚠️ Unaudited |
| TokenpstAVAX | token | avalanche | [`0x82e153...79b241`](./contracts/avalanche-43114/0x82e1534a5b9b299028e8939a2aef5bcbc079b241/) | ⚠️ Unaudited |
| TokensFactory | registry | ethereum | [`0x0e37df...6ad622`](./contracts/ethereum-1/0x0e37df413f97fc198a84a21bc463c41b516ad622/) | ⚠️ Unaudited |
| TradeHelper | periphery | linea | [`0x0c0bfb...ed1095`](./contracts/linea-59144/0x0c0bfbb5ab2a1293e9d430e956fd630e43ed1095/) | ⚠️ Unaudited |
| TradingCompetitionRewards | unknown | ethereum | 2 deployments: ethereum [`0x0aa4a0...05f824`](./contracts/ethereum-1/0x0aa4a0706fc8196710203ab097db97f96f05f824/); ethereum `0x3d1438...5623e6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | 5 deployments: avalanche [`0x6b3775...e5aaf8`](./contracts/avalanche-43114/0x6b37756df77a3798fd4f1476ef48c62be7e5aaf8/); avalanche `0x752ab1...163ae1`; avalanche `0x7a212f...b9a6dc`; avalanche `0x8b85ca...f33d0b`; avalanche `0xf45117...e27848` | ⚠️ Unaudited |
| TreasuryVester | operational_periphery | ethereum | 32 deployments: ethereum [`0x01d360...ed8508`](./contracts/ethereum-1/0x01d360c54eb27a6a95ea1f8e309e5c8263ed8508/); ethereum `0x08605e...72ab53`; ethereum `0x09c897...c92110`; ethereum `0x0bc03a...d9372b`; ethereum `0x174ce3...687639`; ethereum `0x239f61...128bdb`; ethereum `0x25d3a8...28a10c`; ethereum `0x3a6df8...26e8e1`; ethereum `0x44f76e...644b7a`; ethereum `0x48a6e2...0c4cc5`; ethereum `0x4ec034...48a455`; ethereum `0x6e5c82...d07831`; ethereum `0x81b8ae...103dcc`; ethereum `0x83053a...aadcd7`; ethereum `0x85578f...d2813a`; ethereum `0x86c9ec...d56a49`; ethereum `0x895bb5...f17002`; ethereum `0x9bae78...4929bb`; ethereum `0xa1c7dc...42f4da`; ethereum `0xa53890...7abc18`; ethereum `0xa9f316...1b92cc`; ethereum `0xac2c2f...95dcc6`; ethereum `0xb0ba55...4cf0b9`; ethereum `0xbd5fb1...0c1a2b`; ethereum `0xc43de3...dbf79e`; ethereum `0xcfeedb...f87823`; ethereum `0xd6b294...4bc22e`; ethereum `0xe3006d...59cf23`; ethereum `0xe519f3...519c13`; ethereum `0xf2b438...81f276`; ethereum `0xf60c1e...c321e1`; ethereum `0xfcc848...558fec` | ⚠️ Unaudited |
| Turtle | unknown | linea | 8 deployments: ethereum `0x66fd8d...0d3afd`; ethereum `0x67e718...9ba3f0`; bsc `0x66fd8d...0d3afd`; bsc `0x67e718...9ba3f0`; linea [`0x455960...04335a`](./contracts/linea-59144/0x4559605e3003fda8c059e14af4f16ba9a004335a/); linea `0x56aa6d...bae8ef`; linea `0x7ab965...a52551`; linea `0x9b496a...6091b4` | ⚠️ Unaudited |
| TurtleGovernor | governance | ethereum | 4 deployments: ethereum [`0x27cbb9...4ffece`](./contracts/ethereum-1/0x27cbb991eff5e5c7b6734675e837eddf924ffece/); ethereum `0x665160...5a97e3`; ethereum `0xa11885...2cd3f4`; ethereum `0xddcda4...fcdf21` | ⚠️ Unaudited |
| TwapGGP | unknown | avalanche | [`0x3155a8...d56cfe`](./contracts/avalanche-43114/0x3155a8f74f8618ebfdf4e04b40e86e5a51d56cfe/) | ⚠️ Unaudited |
| UniversalTokenSwapperEthFuse | adapter | ethereum | 3 deployments: ethereum [`0xa07780...1fdbe5`](./contracts/ethereum-1/0xa07780fdaf46c0efd5c4f6349268065e5d1fdbe5/); ethereum `0xd932d4...f2dbf0`; ethereum `0xee9a18...218768` | ⚠️ Unaudited |
| UniversalTokenSwapperFuse | adapter | ethereum | 3 deployments: ethereum [`0x54c860...df5d50`](./contracts/ethereum-1/0x54c860323ccd609405a18e46b0f799beb5df5d50/); ethereum `0x641b81...9675b3`; ethereum `0xa301d6...1f1584` | ⚠️ Unaudited |
| UniversalTokenSwapperWithVerificationFuse | adapter | ethereum | [`0x4e0b22...da53e0`](./contracts/ethereum-1/0x4e0b22a5052b640967c55b92401b1c067fda53e0/) | ⚠️ Unaudited |
| UpdateBalancesIgnoreDustPreHook | unknown | ethereum | [`0x0cf053...fc1a5c`](./contracts/ethereum-1/0x0cf053385492fef81e538f849e1e5308befc1a5c/) | ⚠️ Unaudited |
| UpdateWithdrawManagerMaintenanceFuse | operational_periphery | ethereum | [`0x74ca34...0bb0d0`](./contracts/ethereum-1/0x74ca34c2c47d0865856a54060246ab736a0bb0d0/) | ⚠️ Unaudited |
| Usd0 | unknown | ethereum | 2 deployments: ethereum [`0xae12f6...fc821e`](./contracts/ethereum-1/0xae12f6f805842e6dafe71a6d2b41b28ba5fc821e/); ethereum `0xff0cb8...153cf6` | ⚠️ Unaudited |
| Usd0PP | unknown | ethereum | [`0xe7859a...dc96a8`](./contracts/ethereum-1/0xe7859a49e6fe8422add6aabd26a3231030dc96a8/) | ⚠️ Unaudited |
| USDO | unknown | ethereum | 2 deployments: ethereum [`0x375ea8...6e62bf`](./contracts/ethereum-1/0x375ea8da180ebb6f5adaa6090fa0ae31346e62bf/); ethereum `0x98f2ab...7ac2fc` | ⚠️ Unaudited |
| Usual | unknown | ethereum | 2 deployments: ethereum [`0x2b65f9...6a9c2f`](./contracts/ethereum-1/0x2b65f9d2e4b84a2df6ff0525741b75d1276a9c2f/); ethereum `0xc4441c...0de38e` | ⚠️ Unaudited |
| UsualS | unknown | ethereum | 2 deployments: ethereum [`0x094b36...677b89`](./contracts/ethereum-1/0x094b360ae512a65584d4f5be33d68b2e08677b89/); ethereum `0x57e353...a21b63` | ⚠️ Unaudited |
| UsualSP | unknown | ethereum | 2 deployments: ethereum [`0x24a246...272f65`](./contracts/ethereum-1/0x24a2461f3e67e82930c2df2ab032e9272a272f65/); ethereum `0xa55af3...757d37` | ⚠️ Unaudited |
| UsualX | unknown | ethereum | 3 deployments: ethereum [`0x06b964...4d4b8e`](./contracts/ethereum-1/0x06b964d96f5dcf7eae9d7c559b09edce244d4b8e/); ethereum `0x56b8dd...ee0713`; ethereum `0xb8819c...b7b37d` | ⚠️ Unaudited |
| VeArtProxyUpgradeable | unknown | linea | 2 deployments: linea [`0xaf1b70...1324ee`](./contracts/linea-59144/0xaf1b70f4cf9a20603c9ca2fcca7cae0d1e1324ee/); linea `0xb224f3...f37c1d` | ⚠️ Unaudited |
| VeloraSwapperFuse | adapter | ethereum | [`0x8771e2...15d48b`](./contracts/ethereum-1/0x8771e28451f0a2b891b3401c94bcfa272215d48b/) | ⚠️ Unaudited |
| veNFTAPIV2 | token | linea | 2 deployments: linea [`0x8297f1...796672`](./contracts/linea-59144/0x8297f18d1e55013620f46fda07ff59f393796672/); linea `0x8a63c3...fb582c` | ⚠️ Unaudited |
| Verified | unknown | ethereum | 3 deployments: ethereum [`0x08a403...8ce873`](./contracts/ethereum-1/0x08a4032f9510cd84785b3befa9ebd5eee68ce873/); ethereum `0x5b8a3e...2d1021`; ethereum `0x967c8f...2cbffc` | ⚠️ Unaudited |
| VestingAirdrop | operational_periphery | ethereum | [`0x87858b...3e20e0`](./contracts/ethereum-1/0x87858b848c4b64bda3d694a554c5188f4c3e20e0/) | ⚠️ Unaudited |
| VestingWalletFactory | operational_periphery | ethereum | [`0x7da941...a67f2c`](./contracts/ethereum-1/0x7da94120c2c680e0ad1641e48c32a30466a67f2c/) | ⚠️ Unaudited |
| VoterV5 | unknown | linea | 2 deployments: linea [`0x0b2c83...3b63c5`](./contracts/linea-59144/0x0b2c83b6e39e32f694a86633b4d1fe69d13b63c5/); linea `0x2a9142...2a2ff1` | ⚠️ Unaudited |
| VoterV5_GaugeLogic | operational_periphery | linea | [`0xf09634...7d7893`](./contracts/linea-59144/0xf09634d2b1472bfca58157b9177b1c40927d7893/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | avalanche | 2 deployments: avalanche [`0xaaaea1...b9ce6f`](./contracts/avalanche-43114/0xaaaea1fb9f3de3f70e89f37b69ab11b47eb9ce6f/); linea [`0xaaaea1...b9ce6f`](./contracts/linea-59144/0xaaaea1fb9f3de3f70e89f37b69ab11b47eb9ce6f/) | ⚠️ Unaudited |
| VotingEscrowV2Upgradeable | operational_periphery | linea | 5 deployments: linea [`0x2df7fb...35d1bd`](./contracts/linea-59144/0x2df7fba2338126f9be9b745b4a2638889e35d1bd/); linea `0x77dfab...d6e1fc`; linea `0x8d95f5...9b4c0c`; linea `0xd658aa...a1ed3c`; linea `0xfcc338...973a3b` | ⚠️ Unaudited |
| WhitelistWrappedPlasmaVaultFactory | registry | ethereum | 3 deployments: ethereum [`0x30378c...125151`](./contracts/ethereum-1/0x30378c767a5f2c444287bcbdbdb29a73af125151/); ethereum `0xabd643...b4374d`; ethereum `0xfa5f2e...a7d8db` | ⚠️ Unaudited |
| WithdrawalQueue | operational_periphery | ethereum | 3 deployments: ethereum [`0xb886d4...45464b`](./contracts/ethereum-1/0xb886d4ed71c5677347ad891a6a71dfe4fa45464b/); ethereum `0xcb3b03...976168`; ethereum `0xee1186...fdd66e` | ⚠️ Unaudited |
| WithdrawManager | operational_periphery | ethereum | 26 deployments: ethereum [`0x0a78c1...336d2d`](./contracts/ethereum-1/0x0a78c1a2d99f1c9a03277a7c64734b7ffb336d2d/); ethereum `0x19e5ac...02737c`; ethereum `0x22524f...2bd0a1`; ethereum `0x468de9...6d7b76`; ethereum `0x4ba0f2...25e6fd`; ethereum `0x5903e1...77b2dd`; ethereum `0x5b7aec...7b5c81`; ethereum `0x75742c...db6a86`; ethereum `0x784008...842c1b`; ethereum `0x79f140...79bbdb`; ethereum `0x7f4474...722349`; ethereum `0x8138fd...4584e1`; ethereum `0x83bc53...df28b7`; ethereum `0xa76aa0...11448c`; ethereum `0xa90196...44b77d`; ethereum `0xac8479...c69c2b`; ethereum `0xbacf97...80ad28`; ethereum `0xcb1cea...80b111`; ethereum `0xcb5d69...9f2bb1`; ethereum `0xd685ce...ff44d3`; ethereum `0xd9d6ac...a401f3`; ethereum `0xdaf066...bc2b3c`; ethereum `0xdbe385...7fb444`; ethereum `0xefde29...9fae28`; ethereum `0xf08cb4...ad1386`; ethereum `0xf215cf...fbd101` | ⚠️ Unaudited |
| WithdrawManagerFactory | operational_periphery | ethereum | 3 deployments: ethereum [`0x00b0c4...6fe521`](./contracts/ethereum-1/0x00b0c40cfff6bb23816f110387593032b26fe521/); ethereum `0x86ea41...b488ae`; ethereum `0xe37b58...33e587` | ⚠️ Unaudited |
| WithdrawQueue | operational_periphery | avalanche | 7 deployments: avalanche [`0x3dc349...5d08e2`](./contracts/avalanche-43114/0x3dc34920e12067de82de2a94cd46544b255d08e2/); avalanche `0x4043da...b45e6e`; avalanche `0x472e82...f56238`; avalanche `0x55eadf...bd8a16`; avalanche `0x61f908...5849a3`; avalanche `0x87c1b4...b48a64`; avalanche `0xf25dc8...c10afd` | ⚠️ Unaudited |
| WrappedPlasmaVault | core_logic | ethereum | 2 deployments: ethereum [`0x74714b...8b2c12`](./contracts/ethereum-1/0x74714bc6fbf7c2dfabc7650dd40e97f05e8b2c12/); ethereum `0x757e1b...fb7058` | ⚠️ Unaudited |
| WrappedPlasmaVaultFactory | registry | ethereum | 2 deployments: ethereum [`0x3f68a6...3311f5`](./contracts/ethereum-1/0x3f68a6a4fca2e6b85d041a53eb4090f6ac3311f5/); ethereum `0xb17a9d...f353c8` | ⚠️ Unaudited |
| WstETHPriceFeedEthereum | operational_periphery | ethereum | [`0x4329e2...c5d8b0`](./contracts/ethereum-1/0x4329e2178d41d058cf2808c11436a9e83bc5d8b0/) | ⚠️ Unaudited |
| Xai | unknown | ethereum | [`0xd7c9f0...c3beac`](./contracts/ethereum-1/0xd7c9f0e536dc865ae858b0c0453fe76d13c3beac/) | ⚠️ Unaudited |
| xBIFKN314 | unknown | avalanche | [`0xa43f06...86374f`](./contracts/avalanche-43114/0xa43f06724e10561ea416ad7438ccfc94f486374f/) | ⚠️ Unaudited |
| ynETH | unknown | ethereum | [`0x09db87...373a48`](./contracts/ethereum-1/0x09db87a538bd693e9d08544577d5ccfaa6373a48/) | ⚠️ Unaudited |
| YUSDWithdrawalAdapter | operational_periphery | ethereum | [`0xf26ffa...09bdca`](./contracts/ethereum-1/0xf26ffa13064939ac6d2253acaf2329750d09bdca/) | ⚠️ Unaudited |
| ZeroBalanceFuse | unknown | ethereum | 5 deployments: ethereum [`0x3aae99...94ee51`](./contracts/ethereum-1/0x3aae99dfdf99bf86c400b618f470f1d2de94ee51/); ethereum `0x48bd85...b1d1e6`; ethereum `0x759ddf...048e6e`; ethereum `0xb5c14b...0be9c9`; ethereum `0xbc2907...474efb` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AccessManagerUpgradeable | governance | linea | 9 deployments: ethereum `0x6e22a6...fce86e`; ethereum `0xd5e4ac...5f7bfb`; bsc `0x6e22a6...fce86e`; bsc `0xd5e4ac...5f7bfb`; linea [`0x1071d9...7f54dc`](./contracts/linea-59144/0x1071d94a22e806e6c155ba3b35ffc438d17f54dc/); linea `0x66fd8d...0d3afd`; linea `0x67e718...9ba3f0`; linea `0x6e22a6...fce86e`; linea `0xd3bd7d...2f8bbb` | ⚠️ Unaudited (bytecode match) |
| BIFKNRewarder | unknown | avalanche | 41 deployments: avalanche [`0x091e3e...9dce7a`](./contracts/avalanche-43114/0x091e3e6ef5b8a509a036946a24aa449ce99dce7a/); avalanche `0x096459...49cef6`; avalanche `0x0d4c97...134a4b`; avalanche `0x0ff749...4926fb`; avalanche `0x273a7a...433025`; avalanche `0x3438fe...bc7c01`; avalanche `0x3f7229...a2416a`; avalanche `0x43b617...f30ddf`; avalanche `0x49070a...912382`; avalanche `0x4da6c4...9dd044`; avalanche `0x518a8d...6715b0`; avalanche `0x59c76d...bfb5ac`; avalanche `0x5a2d94...b51c64`; avalanche `0x6e33f5...36d041`; avalanche `0x70e5e1...71d058`; avalanche `0x78ce75...9ff37b`; avalanche `0x7d8416...4332b0`; avalanche `0x812f7e...c45248`; avalanche `0x882342...aed475`; avalanche `0x8890c4...1aad8b`; avalanche `0x88db87...9d97f3`; avalanche `0x8d7946...fa85b8`; avalanche `0x8df656...3cd581`; avalanche `0x982c47...da4418`; avalanche `0x9a78ec...0bb340`; avalanche `0x9f1908...745aeb`; avalanche `0xb32f18...d8163e`; avalanche `0xb683a3...eff7b0`; avalanche `0xc05d6a...e0d70a`; avalanche `0xc158d2...67194f`; avalanche `0xc36a0b...7da63d`; avalanche `0xc52749...f37727`; avalanche `0xc9b97d...3cc2f7`; avalanche `0xcc5cd9...361da7`; avalanche `0xdc35e5...42e34c`; avalanche `0xde7780...e015b2`; avalanche `0xe95da2...7c99e8`; avalanche `0xeda361...026a71`; avalanche `0xf07776...9296e1`; avalanche `0xf11e82...31f7ea`; avalanche `0xfde2ea...a81f19` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (174)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x0146b8f75b9f03e0c08627e9ce2d3d07f59937af) | proxy | avalanche | `0x22bafb...a1d073` | ❓ Unverified |
| Proxy (impl: 0x3ccef51d2e4042b1d01b41e2115a6eae8c7e805a) | proxy | avalanche | `0xb306c9...b20b04` | ❓ Unverified |
| Proxy (impl: 0x52950ffee4ae5c6206d598a639647df27f8f7bd2) | proxy | avalanche | `0x27ce13...f62b7e` | ❓ Unverified |
| Proxy (impl: 0x697d7c12853a59429b62ab4d310975335dba2c68) | proxy | avalanche | `0x9bfade...590819` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x012d96...142923` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x03fcd0...acf88c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x04ed10...989c4a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0d9f3e...9061aa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x0f11c5...2cb341` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x102aad...e08401` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x14522e...2e5d96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x16230f...ee588c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x240a30...79d319` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2e2e7c...87946a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x2fc9c3...4366f5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x335f9b...d13272` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x372256...3af073` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3bca0e...f1aa77` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3f03a2...fc48e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x47733f...61035d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x47a460...37ea04` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x50ea68...7b6034` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x54fd21...7a62ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x554cb7...0c31a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5e1854...4bd422` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x601cef...ae54c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x6021cc...ac48ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x692d20...bb7d8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x731a78...a75b5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x78622f...21b16b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7e75c0...c03d7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x7e9a00...747f7d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8205ef...e76137` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x8e3953...84e495` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x92dbc2...a33f29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9546d8...3c9065` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x978fb4...657c8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9c8aea...72f677` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9cc4d6...f63243` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x9f9925...c6397b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa0f0e6...bcec58` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa40f6c...113857` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa70422...17ec6d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa98837...c76103` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb11bf3...cee4af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb51889...8fe512` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb67e33...52c23f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xb7dc4e...221e34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xc572f9...a13e29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd94a56...c02ce3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xdcb76f...141ba2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe082f0...96c3d3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe6c81b...a6b16c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xe9f1a7...3dd0d4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xed065d...b8377a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xed0f68...942e81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xed66eb...aaca51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfc314c...d3570e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x00f9e4...07e51a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0146b8...9937af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x019258...623001` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x043026...3b4416` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x096c04...7560b4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0c1992...e01244` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0ea552...cede12` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x12005b...896754` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x143ddb...b4562c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x15dbf0...68ce47` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x171c78...1972e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x17395a...222199` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x18e360...c18973` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x19da5d...d439f4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1c8df0...1d0dfc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1d2771...0e1192` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1f62f4...36f1ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1ff575...914d2f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2025ad...cffea8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x206336...a869e1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x26760c...11c9ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x27b12f...c84c7e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x286fab...848205` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2aaad9...974761` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2affb6...dcb9bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2c3694...e9d1a9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x301946...37cd6e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x317828...ea4573` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x31e9a8...d21d4e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x36ef5b...624b00` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x39ab4a...83f4b4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3ccef5...7e805a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3d193d...106a87` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x456a6e...76e87b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x463a7e...c75e9a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x490bf7...02e3eb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x49424f...1d5586` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4a47cd...952c76` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4a8876...2e6138` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4ab51b...404d80` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4e6b2a...f4590c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x52950f...8f7bd2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5410bb...15c0b6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x58dd21...99eded` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5906ca...ed62bf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5bfdea...467ea5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5d2dda...28082b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5d7dcc...a666fd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5fb5d0...ee2666` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x697d7c...ba2c68` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6aba46...d788eb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6c0a29...b05e98` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6c8823...612602` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x70fd1a...fd1b65` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x72cf3a...7cd315` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x734d8c...d38f79` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x737729...ad4893` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x746f2c...c1ecd8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x772ebf...308cdc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7cdf0d...fffb98` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x801089...8b89e9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x84926d...913d8b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x87f073...74d66e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x884400...e2ec61` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x89cf78...b9b64d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8a2de3...9ac366` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8c05d7...96115c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8e3751...85f63d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x958704...486a92` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x96b905...19d672` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9e8502...ef486a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa0de70...ce0a82` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa242da...23e8b5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa55894...8d06d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaa2cee...6b1c4f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xab9356...0d1ad6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xabfbfe...345e9a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xae1e7b...3ce4b1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaeb261...a06e22` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb39224...71e8c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb5f2ed...90e560` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb86490...0a2b6d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbb5deb...efff66` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbb6b57...a7d43a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbc47f3...09890b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc095ec...24194c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc1e38f...4df212` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc300bc...268ee7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc6d086...1468dc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc6f992...05d89b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc7fef2...d7a6c6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc9871b...6fa33b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc9fbf1...ce4e00` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xce4d39...d9677b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcf5de4...e8f857` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xcf7b2c...ee3532` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd13510...8bf5c8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd153fe...8d1e92` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd74fd3...eab9e7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd92558...c4929f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd960ce...16e584` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdaebd8...71b72a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xde2762...d0c9a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdef673...ad5ef6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdfb880...845802` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe0ee1a...ef035e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe33d44...b2928d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe6666f...5926c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xeed436...afb465` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xef89a7...276644` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf04aa1...f8a9ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf43d68...33a15e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf4c562...1620a9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfd3a5a...1cdee3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfe6ca6...e8fe3e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xffdb03...22da98` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [[Drip Contract Audit 10/18/25]()](https://drive.google.com/file/d/1vsfYioACulqb17qgNKXHKjDSbj_WDT60/view?usp=sharing) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [[Streams Contract Audit (Cantina)]()](https://drive.google.com/file/d/17-KHHhgcOTUVI6JcwTLvhoWp7lrNTyJP/view?usp=sharing) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x08dd57...e48ee8`](./contracts/ethereum-1/0x08dd57a51025a266cecc85154860aa4e71e48ee8/) | PlasmaVaultBase | core_logic | $3,008,445.92 | Verified native implementation with $3,008,445.92 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x624355...abfc76`](./contracts/ethereum-1/0x6243558a24cc6116abe751f27e6d7ede50abfc76/) | LevvaToken | token | $2,056,617.47 | Verified native implementation with $2,056,617.47 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1b316f...2f0f71`](./contracts/linea-59144/0x1b316fa2d6c44b65c1ed6d29b37743cd362f0f71/) | Vault | core_logic | $863,519.34 | Verified native implementation with $863,519.34 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e4746...289090`](./contracts/ethereum-1/0x1e4746dc744503b53b4a082cb3607b169a289090/) | IporToken | token | $790,322.00 | Verified native implementation with $790,322.00 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x294eec...a9fbad`](./contracts/ethereum-1/0x294eecec65a0142e84aedfd8eb2fbea8c9a9fbad/) | BoringVault | core_logic | $658,216.50 | Verified native implementation with $658,216.50 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf3e621...b4e696`](./contracts/ethereum-1/0xf3e621395fc714b90da337aa9108771597b4e696/) | RewardToken | token | $218,594.13 | Verified native implementation with $218,594.13 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0552e2...bb6ca8`](./contracts/ethereum-1/0x0552e28123a19ff2853d1ed3be75ef1329bb6ca8/) | PlasmaVault | core_logic | $6,265.79 | Verified native implementation with $6,265.79 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d6028...00a740`](./contracts/ethereum-1/0x0d60285f0c37d977260d22e23df7984a0800a740/) | AccessManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x89e813...0896ed`](./contracts/ethereum-1/0x89e813661628a277714c76d80c7fcb192a0896ed/) | AirdropDistribution | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcc96a8...543a78`](./contracts/ethereum-1/0xcc96a8a0a85f5083a68c48ca6adb389169543a78/) | Allowance | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x066cbd...bbaac2`](./contracts/ethereum-1/0x066cbd24d8285e25cb38222ea669735bdebbaac2/) | AmmCloseSwapLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa07f30...292734`](./contracts/ethereum-1/0xa07f30cb9797b537f7bc4739477ab3a650292734/) | AmmCloseSwapServiceStEthBaseV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1f44c5...40e04a`](./contracts/ethereum-1/0x1f44c5ada019cbb0729e277775877ccdb940e04a/) | AmmPoolsLens | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb0a485...24904a`](./contracts/ethereum-1/0xb0a4855134f63bf81f3dc6da38de8894fb24904a/) | AmmPoolsLensStEth | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb0d64c...e165a6`](./contracts/ethereum-1/0xb0d64c0375201911e09b0f8c4d38c5a286e165a6/) | AmmPoolsLensWeEth | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa30845...1a9bed`](./contracts/ethereum-1/0xa30845738443aa2dd6bd0783a47b0af8c01a9bed/) | AmmPoolsServiceEth | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1decfd...c7032c`](./contracts/ethereum-1/0x1decfd7e774ea8da143e90c14602fe4646c7032c/) | AmmSwapsLensLibBaseV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x060bf7...40556a`](./contracts/ethereum-1/0x060bf70ae6ec15121c819a081e56456d5f40556a/) | AmmTreasuryBaseV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d4c4c...5f6e09`](./contracts/ethereum-1/0x1d4c4c07e34a6b43f104204d243aae084d5f6e09/) | AssetManagementLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6416e3...7f7ddd`](./contracts/ethereum-1/0x6416e385f08421f524e2c7335444e56e897f7ddd/) | AssetManagementUsdt | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37fb99...92bf6f`](./contracts/ethereum-1/0x37fb994757856ec994203d01b54adb7ae092bf6f/) | AsyncActionBalanceFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04bd1e...671870`](./contracts/ethereum-1/0x04bd1e6caf008ed831f888ced406cd616c671870/) | AsyncActionFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbcac2b...20ae4e`](./contracts/ethereum-1/0xbcac2b4b09b2d33d0bb3f618bb0189fbf220ae4e/) | AutoETHAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbcf18d...9bafa9`](./contracts/ethereum-1/0xbcf18d9081be42eaf439bca93f35f3a5cd9bafa9/) | AutoUSDAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9c86fc...cda956`](./contracts/ethereum-1/0x9c86fc9389baf66114f4b7097f18ebe141cda956/) | Balance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x870e1f...0aec1f`](./contracts/ethereum-1/0x870e1fb75bedbc2efb92857dc2b2cf171a0aec1f/) | BalanceFusesReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x091e3e...9dce7a`](./contracts/avalanche-43114/0x091e3e6ef5b8a509a036946a24aa449ce99dce7a/) | BIFKNRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86ac05...5703a5`](./contracts/ethereum-1/0x86ac05d945a1c1fe6e3ca285c05dffc61c5703a5/) | Blacklist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0f6698...b1b5cd`](./contracts/avalanche-43114/0x0f669808d88b2b0b3d23214dcd2a1cc6a8b1b5cd/) | Blub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x79e8b1...d29ab4`](./contracts/ethereum-1/0x79e8b115bd41baee318c1940f42f1a2d94d29ab4/) | BurnRequestFeeFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3843f9...c18915`](./contracts/ethereum-1/0x3843f9b977c5731b0459bb44de6bf8fd3cc18915/) | CalculateWeightedLpTokenBalanceEthereum | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b219f...d98602`](./contracts/ethereum-1/0x3b219fd68a7bf5c505503d0cb528148a06d98602/) | CallbackHandlerEuler | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5b0584...20e393`](./contracts/ethereum-1/0x5b05841aa46db37510e65ea6e61a569e9c20e393/) | CallbackHandlerReader | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x124bc6...0e97dc`](./contracts/ethereum-1/0x124bc6be021d3f9e5fbd6194b2839f6df30e97dc/) | CockpitDataProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd58f0e...b33799`](./contracts/ethereum-1/0xd58f0ef796618f09f7fc6e63c25fae25ceb33799/) | ConfigureInstantWithdrawalFuse | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f2e1c...9592b7`](./contracts/ethereum-1/0x0f2e1ce94519a0b0056a243d055352d3119592b7/) | ContextManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a8404...2decc4`](./contracts/ethereum-1/0x1a8404fb75e221ac472119aebfec61e1212decc4/) | ContextManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8dbc09...b214bd`](./contracts/ethereum-1/0x8dbc09c0bd6d99af01b8254432a13e6ff1b214bd/) | ContractRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c33ab...c9cb99`](./contracts/ethereum-1/0x7c33abe7c6d0cb7cdb1a9546780fafa696c9cb99/) | ControllerContract | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x007274...3ff43d`](./contracts/ethereum-1/0x007274f6e5615c1131c860d376309f2a663ff43d/) | CrossAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0eec86...22af4e`](./contracts/ethereum-1/0x0eec861d49f15f585d6bb4301fc4f89bce22af4e/) | DaoCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x373114...adb24b`](./contracts/ethereum-1/0x373114587ca96deb35a73ace1995dbed36adb24b/) | DistributionModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c140d...dc01a5`](./contracts/ethereum-1/0x0c140dc69b02033e45c32c9ba7d7fe48d2dc01a5/) | Drip | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x78f46f...5a4357`](./contracts/ethereum-1/0x78f46f2c4aaa83a4c26dc5ac05d272f8f55a4357/) | DualCrossReferencePriceFeedFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb3a7f1...eefb33`](./contracts/ethereum-1/0xb3a7f15034d664fa295b472732bffc6953eefb33/) | EbisuZapperBalanceFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1aba47...37069e`](./contracts/ethereum-1/0x1aba4764dde4ae6d29c97ae3a20a95267a37069e/) | EbisuZapperCreateFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa3babe...836102`](./contracts/ethereum-1/0xa3babe2e9a1fda1350b76eb77c40dd394c836102/) | EbisuZapperLeverModifyFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xaaab9d...081c6b`](./contracts/avalanche-43114/0xaaab9d12a30504559b0c5a9a5977fee4a6081c6b/) | EmissionsToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10e2c2...cdb336`](./contracts/ethereum-1/0x10e2c21205c180654b8eea5b75c3a51014cdb336/) | Erc4626BalanceFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3c3f08...922d93`](./contracts/ethereum-1/0x3c3f08a0ce5dc1608d7e11167c60244e16922d93/) | ERC4626PriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe08aff...d1aa61`](./contracts/ethereum-1/0xe08aff4910fb61acc2eacb03b0a6132b01d1aa61/) | ERC4626PriceFeedFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01d4fa...d45cdf`](./contracts/ethereum-1/0x01d4fa645f3b98fc9d870dd687de3665f0d45cdf/) | Erc4626SupplyFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9af838...76dac3`](./contracts/ethereum-1/0x9af838b8bb05269dac4f30a127f171d3cf76dac3/) | ERC4626ZapIn | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x677251...d89c00`](./contracts/ethereum-1/0x677251190c0cccc6e7e71c385b3ea660dfd89c00/) | ERC4626ZapInWithNativeToken | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd529f4...580199`](./contracts/ethereum-1/0xd529f458bc879be231e36ec62968416c07580199/) | EthPlusPriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45f3bf...7dda6f`](./contracts/ethereum-1/0x45f3bf4f5318d9683357fa8f9f4442263f7dda6f/) | EulerV2BatchFuse | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xef23ea...706199`](./contracts/ethereum-1/0xef23ea0ec8cb31aa78e8d4f59771f24b84706199/) | ExchangeRateValidatorPreHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bb5ca...3a4391`](./contracts/ethereum-1/0x2bb5cafee239687ec1cd0644bb7fd6f4563a4391/) | FeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x061d41...c88985`](./contracts/ethereum-1/0x061d41f63d37231a3c7a4ed74c7b222e6ac88985/) | FeeManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a94e4...7c4539`](./contracts/ethereum-1/0x9a94e4d777f81de7e390d5f93b40269cdf7c4539/) | FixedAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x242ed4...a0f9b0`](./contracts/ethereum-1/0x242ed4bfc5c2fdfc0b38f634f49b5e9fafa0f9b0/) | FixedRateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd3486d...e665ac`](./contracts/ethereum-1/0xd3486d81d52b52125b9fb1ae9d674645ece665ac/) | FlowsService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x034947...cf88a8`](./contracts/ethereum-1/0x034947614513e69d4bd8d31e464276d1bfcf88a8/) | FusionFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x1bb74e...9a0a7f`](./contracts/avalanche-43114/0x1bb74ec551ccd9fe416c71f904d64f42079a0a7f/) | GGAVAXRateProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xda45fe...b43e50`](./contracts/ethereum-1/0xda45fe8099358bba400554c9b640170246b43e50/) | HarvestDoHardWorkFuse | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69a753...708909`](./contracts/ethereum-1/0x69a753b2dd4ab6cb7197308913f3ebb82d708909/) | InterestRateDataResolver | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7e9e7e...a5fd44`](./contracts/ethereum-1/0x7e9e7ea94e1ff36e216a703d6d66ece356a5fd44/) | InterestRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1dc356...79ae8a`](./contracts/ethereum-1/0x1dc356117aa5dcf8ce836aee851dafd04479ae8a/) | IporFusionAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x20a5d2...b2cdd7`](./contracts/ethereum-1/0x20a5d253d6e79972516f5061e2ae5d49a1b2cdd7/) | IporOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ac509...fda4cb`](./contracts/ethereum-1/0x9ac5092e027f0d9f24b4a1065c70973f3afda4cb/) | IpToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8537b1...dadaf8`](./contracts/ethereum-1/0x8537b194bff354c4738e9f3c81d67e3371dadaf8/) | IpTokenDai | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c0e72...621a88`](./contracts/ethereum-1/0x7c0e72f431fd69560d951e4c04a4de3657621a88/) | IpTokenUsdt | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe176f8...52a95c`](./contracts/ethereum-1/0xe176f879ee386b4a4bf31b5704b500854952a95c/) | IvTokenUsdt | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3f64a...27697e`](./contracts/ethereum-1/0xe3f64a918a2007059d8b5cd083c2b7891927697e/) | LevvaAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x44eb44...818f73`](./contracts/ethereum-1/0x44eb44642e381f16eb787d1fe0f770096c818f73/) | LevvaAirdropV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9b36e0...3e55e2`](./contracts/ethereum-1/0x9b36e02b13c9d53bf3cb371a5b0ce789243e55e2/) | LevvaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x86baa9...b1b16d`](./contracts/ethereum-1/0x86baa92651b5d636c98eb804d24cdd8bf5b1b16d/) | LevvaVaultAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10f9cf...78c180`](./contracts/ethereum-1/0x10f9cf840b359ad8b4cf0a52ad337fbcf478c180/) | LevvaVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x58f6a7...1ca85d`](./contracts/ethereum-1/0x58f6a780fe047b1ec4e4f8a4fd418b81361ca85d/) | LiquidationHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22363b...b9466d`](./contracts/ethereum-1/0x22363bb570ed9eb039b2f153a1f0e50aceb9466d/) | LiquidityMining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a06ec...c45edc`](./contracts/ethereum-1/0x0a06ec4004c02fd514ee02c455d20062f7c45edc/) | LiquidityMiningEthereum | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x769d54...b39e98`](./contracts/ethereum-1/0x769d54d25dd9da2159fa690e67b27484eeb39e98/) | LiquidityMiningLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x99bc01...bec386`](./contracts/ethereum-1/0x99bc0136ba3cc8d1a920e68eadff4fd899bec386/) | MidasSupplyFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x85b23b...2cbe74`](./contracts/ethereum-1/0x85b23b710c74685484f7dda47746eb7d272cbe74/) | Migrations | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x16d236...4dd42e`](./contracts/ethereum-1/0x16d2369a3206d084ce2c3e4a7843adf19c4dd42e/) | MiltonDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9cf78e...68c5d9`](./contracts/ethereum-1/0x9cf78e518507b8922634a3ac02e8d8136768c5d9/) | MiltonSpreadModelDai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3eea8a...5eca9e`](./contracts/ethereum-1/0x3eea8a8967c3c56967f46597613ccc633b5eca9e/) | MiltonSpreadModelUsdt | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f4829...94c1d2`](./contracts/ethereum-1/0x5f4829b14a27e73dcbd1c9238d8c4fc9a594c1d2/) | MiltonStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x371f6e...159d29`](./contracts/ethereum-1/0x371f6eb514eb8de60f29e4c246bfba1108159d29/) | MiltonUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d5522...dc59b2`](./contracts/ethereum-1/0x0d55221929cf67c8ca060f799a6bb1d0d9dc59b2/) | MiltonUsdt | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9a293a...a28458`](./contracts/ethereum-1/0x9a293ac079fdeaa54fcf3810e07b914672a28458/) | MiningCalculationAccountPowerUp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0a75a4...efa430`](./contracts/avalanche-43114/0x0a75a480af4adc81b20b1664a1da2bd7caefa430/) | MinipoolStreamliner | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd7aa52...0e61cf`](./contracts/ethereum-1/0xd7aa529ce055a1f745a40c1eea98ccb9b90e61cf/) | OneValuePriceFeed | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x254a66...b505ff`](./contracts/ethereum-1/0x254a663790cdaff53204c7072cf0c75231b505ff/) | OraclePublisher | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7846be...984d59`](./contracts/ethereum-1/0x7846bed0b55048db0e6a5388b89e92f091984d59/) | PauseFunctionPreHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bbe70...0da9a8`](./contracts/ethereum-1/0x3bbe7003ef4288a7a405aacb911c81b5f20da9a8/) | PlasmaVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x906af6...53af0d`](./contracts/ethereum-1/0x906af6a42079adaf1abd92f924a5d4263653af0d/) | PlasmaVaultRedeemFromRequestFuse | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x713038...e09542`](./contracts/ethereum-1/0x7130383298822097531cf5cc5e3414dda1e09542/) | PlasmaVaultRequestSharesFuse | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x586ac8...6d49eb`](./contracts/ethereum-1/0x586ac86675bd933c4b9a26c55b6e62b6496d49eb/) | PowerToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5a4fc8...d21ec3`](./contracts/ethereum-1/0x5a4fc8f98ca356b7e957d18c155bc62e32d21ec3/) | PowerTokenLens | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1ecd96...e19821`](./contracts/ethereum-1/0x1ecd96fd20f2c1a32e5906cccaec87e8afe19821/) | PreHooksInfoReader | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0fc2d5...b07609`](./contracts/ethereum-1/0x0fc2d5046937f10805a7581f0f68984ef3b07609/) | PriceManagerFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09321c...024da2`](./contracts/ethereum-1/0x09321c70b4e51f3f21bdad79c61d11fba1024da2/) | PriceOracleMiddleware | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x07fc09...062930`](./contracts/ethereum-1/0x07fc092fa44c52516decd5f7545061316d062930/) | PriceOracleMiddlewareManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7c2ca9...05029f`](./contracts/ethereum-1/0x7c2ca9d502f2409beceafa68e97a176ff805029f/) | PriceProvidersRepository | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1cb493...26007c`](./contracts/ethereum-1/0x1cb493392367a0283090bf965503a9588d26007c/) | PtPriceFeedFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x399502...063585`](./contracts/ethereum-1/0x399502b8dc8a38e2cd2d670f4f40cc168c063585/) | ReferralPlasmaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x11cbc3...10367f`](./contracts/ethereum-1/0x11cbc30008dde93db992ac0190848852d310367f/) | RewardsClaimManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x274567...c54028`](./contracts/ethereum-1/0x274567024cc733e78d6e47644a745936a3c54028/) | RewardsManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa89163...eeaf61`](./contracts/ethereum-1/0xa89163f7b2d68a8fba6ca36beed32bd4f3eeaf61/) | SiloGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf12c37...8d92ea`](./contracts/ethereum-1/0xf12c3758c1ec393704f0db8537ef7f57368d92ea/) | SiloLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb98bc3...37f1af`](./contracts/ethereum-1/0xb98bc3e3b9ea8d86f6ee321737fa23710737f1af/) | SiloModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd998c3...cf309d`](./contracts/ethereum-1/0xd998c35b7900b344bbbe6555cc11576942cf309d/) | SiloRepository | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb2374f...322a0c`](./contracts/ethereum-1/0xb2374f84b3ceeff6492943df613c9bcf45322a0c/) | SiloRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x213534...4d7100`](./contracts/ethereum-1/0x21353473a7847bd8e44b0ab5e5d466b0cb4d7100/) | SoapIndicatorRebalanceLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb8d531...e8dad5`](./contracts/ethereum-1/0xb8d531ea16caf1cf7b7cbc333e8963db59e8dad5/) | Spread28Days | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x36618c...9a81ab`](./contracts/ethereum-1/0x36618ce1615305f3b99eeb9df8d4272e729a81ab/) | Spread60Days | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x768762...a358fb`](./contracts/ethereum-1/0x768762712eca97bc9ec930320d3ee0bd91a358fb/) | SpreadBaseV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb50c61...6c12c6`](./contracts/ethereum-1/0xb50c618d63806ec1594547ecdb3e97737d6c12c6/) | SpreadStorageLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x194e34...9826c8`](./contracts/ethereum-1/0x194e3458a94c1a54687b8c6a217c0255e79826c8/) | Stake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x379038...36f6c7`](./contracts/ethereum-1/0x3790383f8685b439391dc1bc56f7b3f82236f6c7/) | StakeService | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x062ab4...9e2e7b`](./contracts/ethereum-1/0x062ab43e7c2d0419d996ccfd634161d6289e2e7b/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb512e3...14114b`](./contracts/ethereum-1/0xb512e32e56f270e9a1dbd56be6fa7baf0014114b/) | StanleyUsdc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb6923e...5903d6`](./contracts/ethereum-1/0xb6923eaa3cd97c6f4369c8a40bd9324ffa5903d6/) | StanleyUsdt | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x176f64...e69584`](./contracts/ethereum-1/0x176f645b837663f4af2579f37059bdc22ee69584/) | StEthWrapperFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x54beea...eb54d0`](./contracts/bsc-56/0x54beea0a1a450883801c2bc1426aae7ad3eb54d0/) | Stream | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x298d29...b3c120`](./contracts/bsc-56/0x298d2967588b5c93a137ce1a05d0b8cfffb3c120/) | StreamFactoryProxy | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e3654...1bd1c4`](./contracts/ethereum-1/0x5e3654082406519e35a5426bb54f29d2651bd1c4/) | SwapExecutorEth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a7034...5205e9`](./contracts/ethereum-1/0x1a7034b0a5b5356e6975c5efe9217b25085205e9/) | SwapExecutorRestricted | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf65b0c...6e57d3`](./contracts/ethereum-1/0xf65b0c88f65d620ea325ffb1ad46a5ba8a6e57d3/) | SwapperEngine | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf515e...bf982c`](./contracts/ethereum-1/0xcf515e7cb2a636cde81d63a37f2433100cbf982c/) | TimelockWhitelist | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x35cb40...2bb7f1`](./contracts/ethereum-1/0x35cb400f5c443d8efa7e2ea5d123eb78332bb7f1/) | TokenBatchTransfer | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0313d8...cf8fa4`](./contracts/ethereum-1/0x0313d8abf579f99d16d50a6feff21968eacf8fa4/) | TokenMinter | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e37df...6ad622`](./contracts/ethereum-1/0x0e37df413f97fc198a84a21bc463c41b516ad622/) | TokensFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0aa4a0...05f824`](./contracts/ethereum-1/0x0aa4a0706fc8196710203ab097db97f96f05f824/) | TradingCompetitionRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x01d360...ed8508`](./contracts/ethereum-1/0x01d360c54eb27a6a95ea1f8e309e5c8263ed8508/) | TreasuryVester | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x27cbb9...4ffece`](./contracts/ethereum-1/0x27cbb991eff5e5c7b6734675e837eddf924ffece/) | TurtleGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa07780...1fdbe5`](./contracts/ethereum-1/0xa07780fdaf46c0efd5c4f6349268065e5d1fdbe5/) | UniversalTokenSwapperEthFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x54c860...df5d50`](./contracts/ethereum-1/0x54c860323ccd609405a18e46b0f799beb5df5d50/) | UniversalTokenSwapperFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4e0b22...da53e0`](./contracts/ethereum-1/0x4e0b22a5052b640967c55b92401b1c067fda53e0/) | UniversalTokenSwapperWithVerificationFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0cf053...fc1a5c`](./contracts/ethereum-1/0x0cf053385492fef81e538f849e1e5308befc1a5c/) | UpdateBalancesIgnoreDustPreHook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x74ca34...0bb0d0`](./contracts/ethereum-1/0x74ca34c2c47d0865856a54060246ab736a0bb0d0/) | UpdateWithdrawManagerMaintenanceFuse | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8771e2...15d48b`](./contracts/ethereum-1/0x8771e28451f0a2b891b3401c94bcfa272215d48b/) | VeloraSwapperFuse | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x87858b...3e20e0`](./contracts/ethereum-1/0x87858b848c4b64bda3d694a554c5188f4c3e20e0/) | VestingAirdrop | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7da941...a67f2c`](./contracts/ethereum-1/0x7da94120c2c680e0ad1641e48c32a30466a67f2c/) | VestingWalletFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb886d4...45464b`](./contracts/ethereum-1/0xb886d4ed71c5677347ad891a6a71dfe4fa45464b/) | WithdrawalQueue | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a78c1...336d2d`](./contracts/ethereum-1/0x0a78c1a2d99f1c9a03277a7c64734b7ffb336d2d/) | WithdrawManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00b0c4...6fe521`](./contracts/ethereum-1/0x00b0c40cfff6bb23816f110387593032b26fe521/) | WithdrawManagerFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x74714b...8b2c12`](./contracts/ethereum-1/0x74714bc6fbf7c2dfabc7650dd40e97f05e8b2c12/) | WrappedPlasmaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3f68a6...3311f5`](./contracts/ethereum-1/0x3f68a6a4fca2e6b85d041a53eb4090f6ac3311f5/) | WrappedPlasmaVaultFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4329e2...c5d8b0`](./contracts/ethereum-1/0x4329e2178d41d058cf2808c11436a9e83bc5d8b0/) | WstETHPriceFeedEthereum | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd7c9f0...c3beac`](./contracts/ethereum-1/0xd7c9f0e536dc865ae858b0c0453fe76d13c3beac/) | Xai | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf26ffa...09bdca`](./contracts/ethereum-1/0xf26ffa13064939ac6d2253acaf2329750d09bdca/) | YUSDWithdrawalAdapter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3aae99...94ee51`](./contracts/ethereum-1/0x3aae99dfdf99bf86c400b618f470f1d2de94ee51/) | ZeroBalanceFuse | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 194 |
| upstream | 24 |
| standard_library | 38 |
| needs_review | 260 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3322] [Drip Contract Audit 10/18/25]()
- [3323] [Streams Contract Audit (Cantina)]()

Fork inheritance lineage and inherited audits are included when available.
