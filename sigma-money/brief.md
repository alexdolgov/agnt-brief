# Agentic Audit Brief: Sigma Money

## Project Overview

- Project: Sigma Money (`sigma-money`)
- Website: [https://sigma.money](https://sigma.money)
- Lifecycle: active (Tier 0, 82.6% below peak)
- Generated: 2026-06-10T20:59:16.155Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: bsc
- Contract surface: 231 unique implementations (1379 raw deployments)
- DeFi Llama TVL: $3,089,795.81
- On-chain TVL (included contracts): $593,368,835.44
- TVL by chain: Bsc $593,368,835.44

## Audit Coverage Summary

- Verified implementations audited: 0/188 (0.0%)
- Verified + Unaudited implementations: 188
- Verified by bytecode match: 0
- Unverified implementations: 43
- Unique implementations: 231
- Raw deployments: 1379
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $593,368,835.44
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (188)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MoolahVault | core_logic | bsc | 52 deployments: bsc [`0x0e5247...31c610`](./contracts/bsc-56/0x0e52472cc585f8e28322ca4536ebd7094431c610/); bsc `0x1d285d...37df2b`; bsc `0x2cb60a...676cc6`; bsc `0x2d98c9...a47405`; bsc `0x2e3bbd...eee7e8`; bsc `0x2f1e42...ecd735`; bsc `0x2fa11f...3a41b0`; bsc `0x33a343...d15a1b`; bsc `0x34a436...84ca45`; bsc `0x3602b6...908d89`; bsc `0x37b48a...472ec5`; bsc `0x384729...c22fb0`; bsc `0x410941...c46d6f`; bsc `0x4e82fa...c7a004`; bsc `0x509326...fdb3f3`; bsc `0x52844a...6a6743`; bsc `0x57134a...e3e2d0`; bsc `0x5728b3...96bba7`; bsc `0x60eed3...f91163`; bsc `0x6213fa...687833`; bsc `0x6357a5...8f2714`; bsc `0x6402d6...0f162d`; bsc `0x68e83c...ae24ab`; bsc `0x6936c7...d0003a`; bsc `0x6d6783...502525`; bsc `0x78fbb2...45f2d6`; bsc `0x8703d3...66f183`; bsc `0x89d6f9...2617b6`; bsc `0x8a06ac...571869`; bsc `0x8de848...1eeee4`; bsc `0x8f9475...2e51c3`; bsc `0x9a17fd...75a759`; bsc `0xa1f832...c15982`; bsc `0xaab620...78a777`; bsc `0xab251d...0ce1fc`; bsc `0xb5854e...e7841f`; bsc `0xb5fcba...97702c`; bsc `0xb798bb...3ee6ea`; bsc `0xcb995f...e72484`; bsc `0xd39429...5158fe`; bsc `0xd5cfc0...b5a81e`; bsc `0xd61dd1...5058f2`; bsc `0xe03d86...9b6529`; bsc `0xe27433...550aa7`; bsc `0xe46b8e...f4c705`; bsc `0xe55c7d...de617b`; bsc `0xeb4f6f...b6ba33`; bsc `0xee161d...51b5b5`; bsc `0xf21308...8f39fd`; bsc `0xfa27f1...fbe627`; bsc `0xfaeccd...785f4c`; bsc `0xfb6bc4...bc9e79` | ⚠️ Unaudited |
| RWAEarnPool | core_logic | bsc | 5 deployments: bsc [`0x505829...357a33`](./contracts/bsc-56/0x505829773ebda34d6f627bb493cf993a1e357a33/); bsc `0x60512a...3e7282`; bsc `0x82664f...2ecd56`; bsc `0xa4eb03...c7dd1b`; bsc `0xaf886f...21901a` | ⚠️ Unaudited |
| PoolManager | core_logic | bsc | 31 deployments: bsc [`0x001ac9...f6b90c`](./contracts/bsc-56/0x001ac9ca8741a1370b8262e0edfebad190f6b90c/); bsc `0x0a43ca...ca600e`; bsc `0x0b16cf...e367cc`; bsc `0x146cfd...7a84d0`; bsc `0x1aa0a0...6bfb77`; bsc `0x28df4c...31a39c`; bsc `0x307078...85d151`; bsc `0x33b9b0...1582d0`; bsc `0x34bd81...a5ebd9`; bsc `0x3634d3...895346`; bsc `0x396615...1164d3`; bsc `0x3b9d0f...8ca554`; bsc `0x3c9a60...6c3f4e`; bsc `0x5bb751...635517`; bsc `0x5f12a3...1c00c8`; bsc `0x62d43d...d664cf`; bsc `0x66471b...6cb4cb`; bsc `0x903d3c...fb88f0`; bsc `0x9d4dce...582f86`; bsc `0xa8a986...a03ade`; bsc `0xa8b69b...b6acbf`; bsc `0xa9cab8...873929`; bsc `0xc68738...7fe63f`; bsc `0xcadb57...67b7ec`; bsc `0xceac33...6866e9`; bsc `0xd3a88d...c1ec36`; bsc `0xdaef8c...289901`; bsc `0xe0f291...e0bfde`; bsc `0xf7b9ae...275a2a`; bsc `0xfa50c6...8dc73d`; bsc `0xfdd69c...26fa93` | ⚠️ Unaudited |
| BnbUSDBasePool | core_logic | bsc | 30 deployments: bsc [`0x02da65...46ce48`](./contracts/bsc-56/0x02da65d692637bfeafbf1f97e629ff339f46ce48/); bsc `0x11212d...ab39f9`; bsc `0x14dc04...b8e3b0`; bsc `0x16d39a...754c94`; bsc `0x1a36aa...86a635`; bsc `0x1c7443...1fb26c`; bsc `0x1cc2e8...fc201c`; bsc `0x1edd9b...384d9e`; bsc `0x219be2...c4ca94`; bsc `0x2b82a2...cd8147`; bsc `0x2b9c1f...4a3aa3`; bsc `0x3f1b7d...367771`; bsc `0x53273f...87edfe`; bsc `0x717efb...8bc53e`; bsc `0x79d91d...51bb49`; bsc `0x89b70c...3f8598`; bsc `0x8efbb1...8651c6`; bsc `0x99b488...1086e2`; bsc `0x9c5f8b...0c3d04`; bsc `0xa85958...38f02c`; bsc `0xb323c8...a826a4`; bsc `0xb69066...a25576`; bsc `0xc30b04...4d3060`; bsc `0xc7f067...cd8653`; bsc `0xd41d57...fa3daf`; bsc `0xdc0d3d...050bdd`; bsc `0xde1bdd...eacea7`; bsc `0xe2b286...94a8ee`; bsc `0xf0ebab...991a9d`; bsc `0xfc2c83...433f82` | ⚠️ Unaudited |
| MoolahVaultManager | core_logic | bsc | 2 deployments: bsc [`0x502131...d91aa9`](./contracts/bsc-56/0x5021319c1b8245e0680f19b7aa84a0f0f3d91aa9/); bsc `0x6784b6...f6f800` | ⚠️ Unaudited |
| AaveFundingPool | core_logic | bsc | 4 deployments: bsc [`0x060eef...15b86d`](./contracts/bsc-56/0x060eef4ddd95d5cc31096976102a10484b15b86d/); bsc `0x705523...1cd593`; bsc `0x9c215e...122cc4`; bsc `0xe7b186...5f5e32` | ⚠️ Unaudited |
| AccessHub | unknown | bsc | 4 deployments: bsc [`0x1cd4e4...f1456d`](./contracts/bsc-56/0x1cd4e4bd0bd0a6f712c23d51e874905490f1456d/); bsc `0x86884a...3c3e8e`; bsc `0xa0efda...1e3327`; bsc `0xbc0a9b...49eda3` | ⚠️ Unaudited |
| AsBnbPriceFeed | operational_periphery | bsc | [`0xa13542...00704d`](./contracts/bsc-56/0xa13542f7e49e9852e5c333beaf8617c4cb00704d/) | ⚠️ Unaudited |
| AsterVault | core_logic | bsc | 2 deployments: bsc [`0x5f97a1...87a12b`](./contracts/bsc-56/0x5f97a18f317abe825cf1023ff61452e4d387a12b/); bsc `0xb3df1b...687c42` | ⚠️ Unaudited |
| AsUsdfOracle | operational_periphery | bsc | 2 deployments: bsc [`0x53c702...9a2fb1`](./contracts/bsc-56/0x53c7024411e5d12c0b17d412943c3dd5939a2fb1/); bsc `0xd99f92...1170de` | ⚠️ Unaudited |
| AutoRefunder | unknown | bsc | 2 deployments: bsc [`0x9d1659...f46cea`](./contracts/bsc-56/0x9d16591537f939a341ca2a221781586b15f46cea/); bsc `0xee98aa...673f66` | ⚠️ Unaudited |
| BasePegKeeper | operational_periphery | bsc | 9 deployments: bsc [`0x2f39cc...782076`](./contracts/bsc-56/0x2f39ccc2b78746406a67459a672f7d19cd782076/); bsc `0x6d22d5...2d584c`; bsc `0x702dc7...59c6a4`; bsc `0x9dd8e6...4ae7c5`; bsc `0xa76bc9...43f27c`; bsc `0xb0a52e...eba950`; bsc `0xc95220...00e0c7`; bsc `0xdcb013...87a020`; bsc `0xea854e...569d26` | ⚠️ Unaudited |
| BatchManagementUtils | periphery | bsc | 4 deployments: bsc [`0x10548a...36e00f`](./contracts/bsc-56/0x10548a32ad10ba55b1bbf082a1ac5e912036e00f/); bsc `0x458437...b4bf3d`; bsc `0xc34791...ce03e8`; bsc `0xf4ab34...7f3e71` | ⚠️ Unaudited |
| BNBPriceOracle | operational_periphery | bsc | 12 deployments: bsc [`0x032e07...9e6e22`](./contracts/bsc-56/0x032e0774310949897f29e750c1d578f61f9e6e22/); bsc `0x151e88...63d601`; bsc `0x369309...4b5954`; bsc `0x45dcdf...3efa3e`; bsc `0x604b27...d3ecd6`; bsc `0x67fdfa...d0c372`; bsc `0x837bd2...3e6c89`; bsc `0x90ace5...0d248e`; bsc `0xa3096e...6d83fd`; bsc `0xa8a94c...d8aef8`; bsc `0xd8447d...e4e61a`; bsc `0xee0b0b...73e6df` | ⚠️ Unaudited |
| BNBProvider | unknown | bsc | 9 deployments: bsc [`0x227849...b7d179`](./contracts/bsc-56/0x227849ab84d54f561c5cdaae9ef876875ab7d179/); bsc `0x2def76...afb35d`; bsc `0x367384...fd5701`; bsc `0x4a9f0b...12d867`; bsc `0x501be1...1a35c9`; bsc `0x76c291...c1a5b6`; bsc `0x7901cb...8ef64e`; bsc `0x793c0b...993aa7`; bsc `0xd2ff01...10b173` | ⚠️ Unaudited |
| BNBSlisBNBConverter | unknown | bsc | [`0x9844e7...be9693`](./contracts/bsc-56/0x9844e7db4497065c99764a9f9d6b3232d7be9693/) | ⚠️ Unaudited |
| BnbUSDPriceOracle | operational_periphery | bsc | 2 deployments: bsc [`0x69ada3...781c17`](./contracts/bsc-56/0x69ada394a92933cf8d98a0809ed192b1a9781c17/); bsc `0x9a63d1...3483b7` | ⚠️ Unaudited |
| BorrowListaDistributor | operational_periphery | bsc | 8 deployments: bsc [`0x031a6f...7c1461`](./contracts/bsc-56/0x031a6f543449d5fbf9c3e77f907043f7be7c1461/); bsc `0x155b5c...4e9694`; bsc `0x3a2bbc...27a0b0`; bsc `0x5f43c6...4c30f1`; bsc `0x6d5849...6b1201`; bsc `0x9f0aa6...bc947d`; bsc `0xbafb0b...113b34`; bsc `0xf4db11...8dd788` | ⚠️ Unaudited |
| BrokerInterestRelayer | unknown | bsc | 11 deployments: bsc [`0x262dd5...abbd54`](./contracts/bsc-56/0x262dd5e34d03605e6c7f76705497349e74abbd54/); bsc `0x2a119f...840587`; bsc `0x35720f...1a9dac`; bsc `0x837b20...18a863`; bsc `0x934892...27e73f`; bsc `0xcb2590...2c9d6a`; bsc `0xcb845b...f6211c`; bsc `0xd2d974...9e9828`; bsc `0xe394e1...4dc09b`; bsc `0xf1752f...bb6b7b`; bsc `0xf2d18e...c2bdbe` | ⚠️ Unaudited |
| BrokerLiquidator | operational_periphery | bsc | 3 deployments: bsc [`0x1cb5b9...27d8a7`](./contracts/bsc-56/0x1cb5b91e24fed296feec2bec8d09b653e327d8a7/); bsc `0x3aa647...aa4868`; bsc `0xef30b2...d56eee` | ⚠️ Unaudited |
| Buyback | unknown | bsc | 7 deployments: bsc [`0x098a0c...cc9bfb`](./contracts/bsc-56/0x098a0c419915bffa99983abee5d960c193cc9bfb/); bsc `0x65825a...a87155`; bsc `0x7e67e4...3a658f`; bsc `0x9a7ca2...4222e1`; bsc `0xa2d1a0...989224`; bsc `0xc3904a...adc615`; bsc `0xda30ad...e12a3b` | ⚠️ Unaudited |
| CDPLiquidator | operational_periphery | bsc | 3 deployments: bsc [`0x1ce9c8...5123b5`](./contracts/bsc-56/0x1ce9c8884714bf6fc78d6e31e6d5b7b6af5123b5/); bsc `0x556d96...6c7b87`; bsc `0xbd6477...3e2f5b` | ⚠️ Unaudited |
| Clipper | unknown | bsc | 6 deployments: bsc [`0x63393e...a96b2b`](./contracts/bsc-56/0x63393e8a6fa3dab6874729ae680b370c0ca96b2b/); bsc `0x89df28...1c43ad`; bsc `0xa76684...20912d`; bsc `0xb438c3...2b44f6`; bsc `0xdeb934...a6562e`; bsc `0xe7e809...2011ac` | ⚠️ Unaudited |
| ClisBNBLaunchPoolDistributor | operational_periphery | bsc | 3 deployments: bsc [`0x8b7d33...40f990`](./contracts/bsc-56/0x8b7d334d243b74d63c4b963893267a0f5240f990/); bsc `0xa2525f...3d95fc`; bsc `0xac840d...b031d7` | ⚠️ Unaudited |
| CollateralListaDistributor | operational_periphery | bsc | 8 deployments: bsc [`0x0383d8...af7a0f`](./contracts/bsc-56/0x0383d85f4169897a02aed14bda2ae5db38af7a0f/); bsc `0x2f54f1...63eb0e`; bsc `0x35c23a...bb32c0`; bsc `0x9712b0...0599a9`; bsc `0xd60316...04e579`; bsc `0xde10bb...49d0f6`; bsc `0xef419a...b66404`; bsc `0xf53330...f93a46` | ⚠️ Unaudited |
| ConverterRegistry | registry | bsc | [`0xfee2d1...74b1a1`](./contracts/bsc-56/0xfee2d164de712d09894b7ae4b00c871f6774b1a1/) | ⚠️ Unaudited |
| CoreDeployer | unknown | bsc | [`0xd23eb2...769c1c`](./contracts/bsc-56/0xd23eb2517c7a2e38c2aec212728df1e5d3769c1c/) | ⚠️ Unaudited |
| CreditBroker | unknown | bsc | 5 deployments: bsc [`0x1f819b...73f7d9`](./contracts/bsc-56/0x1f819b91e29e3d28ca63f8370a0b367b7c73f7d9/); bsc `0x1f8d8d...003436`; bsc `0x2a6704...04d578`; bsc `0x9ea317...02074d`; bsc `0xb63989...efad89` | ⚠️ Unaudited |
| CreditBrokerInfo | periphery | bsc | 2 deployments: bsc [`0x20ea8f...c4af93`](./contracts/bsc-56/0x20ea8ff10d3d9e487570011c6c107a44aac4af93/); bsc `0x8e58eb...76dd63` | ⚠️ Unaudited |
| CreditBrokerInterestRelayer | unknown | bsc | 2 deployments: bsc [`0x315b29...c4c1a4`](./contracts/bsc-56/0x315b29b9e12b0c93f610a46c8995684db7c4c1a4/); bsc `0xbd94c4...1adc47` | ⚠️ Unaudited |
| CreditNote | unknown | bsc | 2 deployments: bsc [`0x05c7a6...40bf02`](./contracts/bsc-56/0x05c7a6addb9c81fc7f799ac5e52fe4572740bf02/); bsc `0x061d2b...20ef3e` | ⚠️ Unaudited |
| CreditToken | token | bsc | 2 deployments: bsc [`0x1f9831...eb52d8`](./contracts/bsc-56/0x1f9831626ce85909794eeaa5c35bf34db3eb52d8/); bsc `0x3ea042...3835a2` | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | bsc | 2 deployments: bsc [`0xe6e290...741cd4`](./contracts/bsc-56/0xe6e2905f54baf7625f4943b74c50338362741cd4/); bsc `0xed55ff...5507ff` | ⚠️ Unaudited |
| CurveTwocryptoOptimized | unknown | bsc | [`0xb84637...bbf625`](./contracts/bsc-56/0xb84637ab9be835580821a67823f414ffd0bbf625/) | ⚠️ Unaudited |
| Diamond | unknown | bsc | 4 deployments: bsc [`0x52acea...5d7f5c`](./contracts/bsc-56/0x52acea285781d8eb4be67d19feb272588c5d7f5c/); bsc `0x79d024...77174b`; bsc `0x89d42c...fe6574`; bsc `0xb37ac2...83b8be` | ⚠️ Unaudited |
| DiamondCutFacet | unknown | bsc | 6 deployments: bsc [`0x2f60a7...9f19e3`](./contracts/bsc-56/0x2f60a7e096c3015ee141d188f3eaaf528d9f19e3/); bsc `0x4f6797...14bf88`; bsc `0xbc44ba...0fcedd`; bsc `0xd8950c...ce99aa`; bsc `0xee9559...66c2a0`; bsc `0xf1cc7f...b0d2ac` | ⚠️ Unaudited |
| DiamondLoupeFacet | unknown | bsc | 6 deployments: bsc [`0x622d87...9ebaf5`](./contracts/bsc-56/0x622d879fa793062955246511b6822451569ebaf5/); bsc `0x63fcf7...807ea1`; bsc `0x8dbd7c...9fb17c`; bsc `0x95646d...d530fe`; bsc `0xd91c72...b774ba`; bsc `0xf8bfd1...d4e75a` | ⚠️ Unaudited |
| EmergencyShutdown | unknown | bsc | [`0x4f6de1...00a5b1`](./contracts/bsc-56/0x4f6de11aa3dea237092e2101ec9f3ddb2800a5b1/) | ⚠️ Unaudited |
| EmergencySwitchHub | unknown | bsc | 4 deployments: bsc [`0x07e1e0...9cf40d`](./contracts/bsc-56/0x07e1e05274fee68d10484adc8405786c2c9cf40d/); bsc `0x1c83fd...19096b`; bsc `0x4455e7...8801df`; bsc `0x6575fc...710bff` | ⚠️ Unaudited |
| EmptyContract | unknown | bsc | 24 deployments: bsc [`0x01d2c1...af068e`](./contracts/bsc-56/0x01d2c1df6686453595d423bc946d457682af068e/); bsc `0x07d60c...6293d3`; bsc `0x22e744...8419b1`; bsc `0x2b67cf...31b17a`; bsc `0x2f6256...52c72e`; bsc `0x42e34b...86e200`; bsc `0x5c375f...adc2ae`; bsc `0x678913...67f286`; bsc `0x6a95f4...d8a2bb`; bsc `0x8120fa...f7b3c4`; bsc `0x827362...01e6ea`; bsc `0x833643...30649c`; bsc `0x867e51...bda1f8`; bsc `0x9322b4...e40101`; bsc `0x944dd8...54a7ae`; bsc `0x984e62...7db630`; bsc `0xa0e3ed...1f8f14`; bsc `0xa699f3...a80899`; bsc `0xb1069e...29482c`; bsc `0xb7e8ac...87d854`; bsc `0xc5f94e...354fc9`; bsc `0xc6d80f...a8fd7f`; bsc `0xcccedf...8f431c`; bsc `0xffff06...8384ed` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | bsc | 45 deployments: bsc [`0x12ebc1...572a1a`](./contracts/bsc-56/0x12ebc1709e2d751d5f6e327259c79a57e8572a1a/); bsc `0x15cc25...30ac30`; bsc `0x17c1bf...53aca7`; bsc `0x185cd2...9c1c86`; bsc `0x19c329...facf2b`; bsc `0x1cb5b9...3bd677`; bsc `0x28ef29...a8bd88`; bsc `0x2d460c...6db19d`; bsc `0x301b82...0bcd6c`; bsc `0x355949...a6e738`; bsc `0x38b741...89abce`; bsc `0x3d35d2...3dfb6d`; bsc `0x487545...d7068f`; bsc `0x5147e4...c2cf5e`; bsc `0x56d654...cf5c7a`; bsc `0x68fd8f...6af095`; bsc `0x6b0173...edbe04`; bsc `0x8127ca...dbdaa0`; bsc `0x92fe47...8976e3`; bsc `0x938cc7...a1556f`; bsc `0x96f66b...6b1dac`; bsc `0x97ac42...bfa52d`; bsc `0x9bdfa6...bf014f`; bsc `0x9daf5d...47b080`; bsc `0x9f80a7...e7a510`; bsc `0xa1efd2...cff036`; bsc `0xac1c50...91d0b9`; bsc `0xb2477a...e522b8`; bsc `0xb79660...50f020`; bsc `0xc25688...38bcde`; bsc `0xc26caa...d39c79`; bsc `0xc45583...dd07e2`; bsc `0xcb712c...940cc3`; bsc `0xcd00c2...6542d0`; bsc `0xcfa6b1...411d17`; bsc `0xd12c4d...a7fdd4`; bsc `0xd5fcc3...70334b`; bsc `0xd69e4b...31fddb`; bsc `0xd76665...1e93ef`; bsc `0xd7dd08...cea28c`; bsc `0xe1e887...7b2ed2`; bsc `0xe52592...e7031b`; bsc `0xf0ca1c...1a5e0d`; bsc `0xf93ecb...ca64ac`; bsc `0xfc2a24...8ac1fc` | ⚠️ Unaudited |
| Erc20Provider | token | bsc | 2 deployments: bsc [`0x53e953...e52410`](./contracts/bsc-56/0x53e953994a11b3e02737d58c69bc0f75d0e52410/); bsc `0xd093bd...8cfdf7` | ⚠️ Unaudited |
| FixedRateIrm | unknown | bsc | 5 deployments: bsc [`0x10c9cc...f08c82`](./contracts/bsc-56/0x10c9cc38a9117eaee1e0d0d24cf4de7804f08c82/); bsc `0x14efa5...bdac72`; bsc `0x36f278...a87af9`; bsc `0x5f9f91...9797e6`; bsc `0xadd935...fc82cb` | ⚠️ Unaudited |
| FxUSDBasePool | core_logic | bsc | 7 deployments: bsc [`0x0c5631...b41ea0`](./contracts/bsc-56/0x0c5631630cf6cb507b54b85a51b9ff1cdfb41ea0/); bsc `0x36a744...f31c8f`; bsc `0x3db29a...e0c3c8`; bsc `0x552f1e...685be4`; bsc `0x5e9f4e...f29f6e`; bsc `0xd2f295...783ef1`; bsc `0xe45661...5d6805` | ⚠️ Unaudited |
| FxUSDBasePoolV2Facet | core_logic | bsc | 6 deployments: bsc [`0x05c0a7...cbae62`](./contracts/bsc-56/0x05c0a77daab7f1479c9f36d0b80d81c2c8cbae62/); bsc `0x69724d...180c33`; bsc `0x93cc21...d144b5`; bsc `0xb2624f...774345`; bsc `0xbc22dd...7ea6ed`; bsc `0xe5fca7...801d45` | ⚠️ Unaudited |
| GaugeEmission | operational_periphery | bsc | 5 deployments: bsc [`0x02ab9f...973b0e`](./contracts/bsc-56/0x02ab9fe6180d4dbfe94a55c75560b9709e973b0e/); bsc `0x0626bd...f70348`; bsc `0x460b41...a67412`; bsc `0xca5956...670b3e`; bsc `0xed724f...1956ae` | ⚠️ Unaudited |
| GemJoin | unknown | bsc | 6 deployments: bsc [`0x68b9a9...f63807`](./contracts/bsc-56/0x68b9a9ea70f4391c016746be240037e5d4f63807/); bsc `0x8b3529...e9e164`; bsc `0x97f10c...0ad0fe`; bsc `0xa64c28...e0b1fb`; bsc `0xb53e69...cf632f`; bsc `0xdd308e...40866a` | ⚠️ Unaudited |
| HelioETHProvider | unknown | bsc | [`0xa16bb6...8e6ad9`](./contracts/bsc-56/0xa16bb61c80b29f7458d677009b3b5f4b868e6ad9/) | ⚠️ Unaudited |
| HelioProviderV2 | unknown | bsc | 2 deployments: bsc [`0x6c9f8c...f37c11`](./contracts/bsc-56/0x6c9f8c739843b5a5fd29da1a2bdf26811af37c11/); bsc `0xcc0330...e1e701` | ⚠️ Unaudited |
| Interaction | unknown | bsc | 3 deployments: bsc [`0x4dcc11...16d3d7`](./contracts/bsc-56/0x4dcc1182f3bc8a968927faeedf5e32a0d716d3d7/); bsc `0x7d482d...db439d`; bsc `0xce3389...110ed3` | ⚠️ Unaudited |
| InterestRateModel | operational_periphery | bsc | 6 deployments: bsc [`0x34f834...dc8141`](./contracts/bsc-56/0x34f8345b9ec201f8ba6144516fc3a213aedc8141/); bsc `0x4b64f6...97b824`; bsc `0x74e0aa...44462d`; bsc `0xbdb2cf...443d33`; bsc `0xdc45ed...93e22d`; bsc `0xfe7dae...9cde7c` | ⚠️ Unaudited |
| InverseBnbPriceOracle | operational_periphery | bsc | [`0xa9eb54...974bc0`](./contracts/bsc-56/0xa9eb54d992f2462f135a52ff9af3a01de3974bc0/) | ⚠️ Unaudited |
| L2FxUSD | unknown | bsc | 26 deployments: bsc [`0x09966c...108b30`](./contracts/bsc-56/0x09966c6f8a774f3e5237e55d4e70abf6a4108b30/); bsc `0x0d1f51...814ba4`; bsc `0x0fb12a...b3080a`; bsc `0x13fc1e...721790`; bsc `0x14c2fe...c72203`; bsc `0x29eb22...f66a5f`; bsc `0x2b59c5...0970da`; bsc `0x2e5c75...049f6f`; bsc `0x3dbcf5...b7fb7a`; bsc `0x4429ee...751998`; bsc `0x483966...6fd514`; bsc `0x4f93ce...4b5b0e`; bsc `0x5519a4...fda265`; bsc `0x5b6348...63f8bd`; bsc `0x7432bf...b7a94f`; bsc `0x750e14...39e531`; bsc `0x98f0a4...209e48`; bsc `0xa46c1e...e2b7aa`; bsc `0xb32abe...f515a0`; bsc `0xb46f0c...57d208`; bsc `0xb47d4e...43e06a`; bsc `0xbd66c9...1c4b4b`; bsc `0xe362dc...1cedf6`; bsc `0xe5bae5...f8b2f0`; bsc `0xefd66f...c5b405`; bsc `0xff7cee...bcd379` | ⚠️ Unaudited |
| LendingBroker | core_logic | bsc | 97 deployments: bsc [`0x039c4a...36bbe9`](./contracts/bsc-56/0x039c4a60c53ff684b5113f0303a91f1d5336bbe9/); bsc `0x07b72a...c0cd74`; bsc `0x0cffd5...bc2014`; bsc `0x0f8aab...7a6b8d`; bsc `0x111a52...4ae568`; bsc `0x1cbd43...69afa8`; bsc `0x1fa260...be8b54`; bsc `0x218095...b38d78`; bsc `0x28fb75...ac74fc`; bsc `0x2ef465...b83223`; bsc `0x305a50...20d39e`; bsc `0x306b71...7528d7`; bsc `0x30ddb3...75bae1`; bsc `0x31f60d...eef54b`; bsc `0x3350fc...68bb94`; bsc `0x3a2c35...3200ee`; bsc `0x3ade95...db1287`; bsc `0x3be25d...7f331f`; bsc `0x3c4b64...7e7877`; bsc `0x3e4f45...06ef6d`; bsc `0x41e2a8...df7981`; bsc `0x44cf38...eccdd5`; bsc `0x463efd...17fbab`; bsc `0x46d795...f630aa`; bsc `0x48f93a...41d405`; bsc `0x52ee1f...839864`; bsc `0x580275...054282`; bsc `0x5d440a...b707c0`; bsc `0x5ee171...ff3a23`; bsc `0x67e0d8...913b48`; bsc `0x681df8...daa956`; bsc `0x684e01...9cc30f`; bsc `0x6a183f...637ac4`; bsc `0x6baf96...bd59bc`; bsc `0x6d1377...d50011`; bsc `0x6e0200...57e853`; bsc `0x714e63...535b1c`; bsc `0x761e97...aef544`; bsc `0x7deb46...a1d718`; bsc `0x8307b2...6b7364`; bsc `0x83192f...656609`; bsc `0x85ec16...d4a9d6`; bsc `0x864e21...439f5d`; bsc `0x882064...067307`; bsc `0x900b4d...ba5f0e`; bsc `0x91e79f...18c48c`; bsc `0x948c51...a7d36d`; bsc `0x9b1f52...d355bf`; bsc `0x9cba0d...4f8d34`; bsc `0x9e8574...3b5c59`; bsc `0xa26488...5072dd`; bsc `0xa654cf...351513`; bsc `0xa6c832...ad3d9b`; bsc `0xa94d92...62613d`; bsc `0xa96553...9882fd`; bsc `0xa9ca92...0f0350`; bsc `0xad04ad...6e153d`; bsc `0xb1aa81...551e09`; bsc `0xb680d4...5858bb`; bsc `0xba2692...1ae278`; bsc `0xba2d27...e87b43`; bsc `0xbdc978...dff7aa`; bsc `0xbf7c2a...e4c1fd`; bsc `0xc7c519...7d854e`; bsc `0xc8a0ae...57352c`; bsc `0xc97e90...25a061`; bsc `0xca5929...a425b3`; bsc `0xcc0795...89381b`; bsc `0xcde5e3...7db0a0`; bsc `0xd051ed...c89639`; bsc `0xd0ccb2...88ed5b`; bsc `0xd16ee3...1d6425`; bsc `0xd2d086...25aa25`; bsc `0xd3db90...f2da18`; bsc `0xd54ff6...53f621`; bsc `0xd7242c...be6d4e`; bsc `0xdf0577...91d628`; bsc `0xe07fcf...292279`; bsc `0xe1fc38...f769bf`; bsc `0xea3dd7...c92043`; bsc `0xea51d4...628301`; bsc `0xec19e3...215b0e`; bsc `0xee82e1...f1a30a`; bsc `0xef2468...71379a`; bsc `0xef377c...dd28ed`; bsc `0xf07b74...32d9d2`; bsc `0xf28d38...9d4b72`; bsc `0xf3c6df...0b9d0a`; bsc `0xf4801d...dbeb3d`; bsc `0xf4c4fd...bcbb1f`; bsc `0xf65756...da711a`; bsc `0xf7c470...e03f9d`; bsc `0xf95025...a8344f`; bsc `0xfa25b6...a2c6e3`; bsc `0xfd13bb...c1b292`; bsc `0xfdfc9a...3a6e72`; bsc `0xfeb7d3...40ff69` | ⚠️ Unaudited |
| LendingFeeRecipient | operational_periphery | bsc | 6 deployments: bsc [`0x01e88f...35e208`](./contracts/bsc-56/0x01e88f69c798adf75120f4972539ac77fd35e208/); bsc `0x2e2eed...3551f3`; bsc `0x44dc4c...bd549b`; bsc `0x8a6e34...6f8131`; bsc `0xd4ce01...6a3be6`; bsc `0xe3c0d0...6d89ff` | ⚠️ Unaudited |
| LendingRevenueDistributor | operational_periphery | bsc | 2 deployments: bsc [`0xe004ef...86fa21`](./contracts/bsc-56/0xe004efc1753ef845628b95d16058af1a9f86fa21/); bsc `0xea5595...d0b866` | ⚠️ Unaudited |
| LendingRewardsDistributor | operational_periphery | bsc | 2 deployments: bsc [`0x3e49ef...091959`](./contracts/bsc-56/0x3e49efd13693822507a8dfc0f9aa13ca14091959/); bsc `0x665410...163d29` | ⚠️ Unaudited |
| LendingRewardsDistributorV2 | operational_periphery | bsc | 6 deployments: bsc [`0x11691e...82a504`](./contracts/bsc-56/0x11691e3235541daace55c419fbea5ff12282a504/); bsc `0x2993e9...b3ae76`; bsc `0x5cf0fb...1460d0`; bsc `0xc003fb...c4886c`; bsc `0xdd100f...bba5e0`; bsc `0xf17bd7...832a68` | ⚠️ Unaudited |
| Liquidator | operational_periphery | bsc | 5 deployments: bsc [`0x534ae7...1973d0`](./contracts/bsc-56/0x534ae76dd9fccb0aa483f309b1a350d4f61973d0/); bsc `0x6a87c1...97a59a`; bsc `0x93414b...f138a5`; bsc `0xe284c8...740567`; bsc `0xff0895...4d8b1d` | ⚠️ Unaudited |
| LisAster | unknown | bsc | 2 deployments: bsc [`0x4183b7...4314b7`](./contracts/bsc-56/0x4183b7045cac1b56bc9cb3e694d1f551a84314b7/); bsc `0xa17a49...9c9f06` | ⚠️ Unaudited |
| LisAsterDistributor | operational_periphery | bsc | 2 deployments: bsc [`0x9e80fe...ac227d`](./contracts/bsc-56/0x9e80fec60bd4a9fed7af740ba8d0104e05ac227d/); bsc `0xedd105...ca696f` | ⚠️ Unaudited |
| LisAsterRewards | unknown | bsc | 2 deployments: bsc [`0x2bb416...7b2462`](./contracts/bsc-56/0x2bb41616323994b4ada381ea40cb2d135f7b2462/); bsc `0x6b5001...3a4f1f` | ⚠️ Unaudited |
| LisAsterStaking | unknown | bsc | 2 deployments: bsc [`0x2d0a2d...e4c3eb`](./contracts/bsc-56/0x2d0a2d15ce64afa586fceca4e8156087b6e4c3eb/); bsc `0x3d786c...69fd71` | ⚠️ Unaudited |
| ListaAirdrop | operational_periphery | bsc | 8 deployments: bsc [`0x087b98...7d5089`](./contracts/bsc-56/0x087b9843155597bd447088c4eccde485357d5089/); bsc `0x30639f...613cc3`; bsc `0x3127b4...d370a1`; bsc `0x42d9dd...0627b6`; bsc `0xa18ae7...400d61`; bsc `0xa64fe2...099301`; bsc `0xc59f2f...dfcc9d`; bsc `0xf7b841...dbea01` | ⚠️ Unaudited |
| ListaAutoBuyback | unknown | bsc | 3 deployments: bsc [`0x362d27...9446ea`](./contracts/bsc-56/0x362d279284ed18fdc3e04bf0edd8bc453e9446ea/); bsc `0x55fd8e...29b186`; bsc `0xedd876...2f4214` | ⚠️ Unaudited |
| ListaDAORateProvider | unknown | bsc | 4 deployments: bsc [`0x2db9fc...c35208`](./contracts/bsc-56/0x2db9fc2b21ded0b23fd082cef3137f7af5c35208/); bsc `0x36283d...33b444`; bsc `0x5652dc...0419c8`; bsc `0x833213...2c47df` | ⚠️ Unaudited |
| ListaRevenueDistributor | operational_periphery | bsc | 2 deployments: bsc [`0x95cacf...b14635`](./contracts/bsc-56/0x95cacf296483efafbc924c8c30f72f9f51b14635/); bsc `0xa45625...5dacba` | ⚠️ Unaudited |
| ListaStakeManager | governance | bsc | 3 deployments: bsc [`0x5bf5c3...9f301c`](./contracts/bsc-56/0x5bf5c3b5f5c29dbc647d2557cc22b00ed29f301c/); bsc `0x89b2eb...e9486a`; bsc `0xd99ab8...c64e91` | ⚠️ Unaudited |
| ListaStrategy | core_logic | bsc | 2 deployments: bsc [`0x5cf8a3...827b76`](./contracts/bsc-56/0x5cf8a3781f96f50543cdd8fe7c0d0ff228827b76/); bsc `0xd8c4e5...14495e` | ⚠️ Unaudited |
| ListaStrategyV2 | core_logic | bsc | 6 deployments: bsc [`0x288f27...6370c8`](./contracts/bsc-56/0x288f275f238cbff9d0c6d115a95bf0a2916370c8/); bsc `0x42d6bd...fd8c9c`; bsc `0x434a55...35f87e`; bsc `0x5137cd...da0485`; bsc `0x6dbc02...936668`; bsc `0x8843fa...971b86` | ⚠️ Unaudited |
| ListaVault | core_logic | bsc | 2 deployments: bsc [`0x29202d...457167`](./contracts/bsc-56/0x29202d64986097a099575807ed8284b0fd457167/); bsc `0x7dcafc...36adaf` | ⚠️ Unaudited |
| lisUSDPriceFeed | operational_periphery | bsc | [`0x989af6...d7c2c0`](./contracts/bsc-56/0x989af6aa3db449e49f1b3210b8750446bed7c2c0/) | ⚠️ Unaudited |
| LongPositionOperateFacet | unknown | bsc | 8 deployments: bsc [`0x071104...a64664`](./contracts/bsc-56/0x071104d080e4954dd848bf76f2ad1e2a88a64664/); bsc `0x5eb095...6346f7`; bsc `0x9d49ae...9b9181`; bsc `0xa249fa...d973fb`; bsc `0xb99040...c090e0`; bsc `0xc0f9f5...1f1836`; bsc `0xe87add...a26ff8`; bsc `0xf0db6d...99ecb9` | ⚠️ Unaudited |
| LpProxy | unknown | bsc | 2 deployments: bsc [`0x12b09b...1424c0`](./contracts/bsc-56/0x12b09bb62fb7bbcf732e6c2e166012dd7c1424c0/); bsc `0x81d163...6e2e4d` | ⚠️ Unaudited |
| LpUsd | unknown | bsc | 7 deployments: bsc [`0x0a2381...8802de`](./contracts/bsc-56/0x0a23817c68a234425f7ebec215d4e8ea528802de/); bsc `0x1b7ba5...181f2f`; bsc `0x5887c3...73106e`; bsc `0x81de52...1d4ade`; bsc `0xbe924a...6d02ee`; bsc `0xe9fddd...60d96f`; bsc `0xee3f09...e3eea1` | ⚠️ Unaudited |
| MarketFactory | registry | bsc | 2 deployments: bsc [`0x12bb76...a128e3`](./contracts/bsc-56/0x12bb76cd6a2a1ccf2ac2cff64072fed6d8a128e3/); bsc `0xce2685...286ab2` | ⚠️ Unaudited |
| mBTCProvider | unknown | bsc | [`0xad745b...731521`](./contracts/bsc-56/0xad745bcb555746317e3c2bc6aa583f43ad731521/) | ⚠️ Unaudited |
| MerkleVerifier | operational_periphery | bsc | 9 deployments: bsc [`0x084bd8...9a33f7`](./contracts/bsc-56/0x084bd8392eaebfca8b6c020c7c8ddf02909a33f7/); bsc `0x1a9bee...306ae3`; bsc `0x239c40...3242f3`; bsc `0x375fda...c428ba`; bsc `0x92dffe...a1aa3e`; bsc `0xac6a68...a95739`; bsc `0xaf2982...6a722d`; bsc `0xcf7b18...9fe9d0`; bsc `0xd69e7b...281eac` | ⚠️ Unaudited |
| Minter | operational_periphery | bsc | [`0xa12663...55ee3d`](./contracts/bsc-56/0xa1266373dd701fc179f60eafbc3ae76cf355ee3d/) | ⚠️ Unaudited |
| MockERC20 | token | bsc | [`0x13393f...059bb4`](./contracts/bsc-56/0x13393ff6a9db93b3c3383f1be2cb4ba9a8059bb4/) | ⚠️ Unaudited |
| MockGauge | operational_periphery | bsc | 6 deployments: bsc [`0x489981...d9e513`](./contracts/bsc-56/0x48998147af0c904efa9fcabeec5737fe88d9e513/); bsc `0x501240...dd53d2`; bsc `0x71fbec...8d7b41`; bsc `0xb03e82...684ce0`; bsc `0xc8dd8a...2a2f7f`; bsc `0xf08d6c...384c0f` | ⚠️ Unaudited |
| Moolah | unknown | bsc | [`0x8f73b6...8e5d8c`](./contracts/bsc-56/0x8f73b65b4caaf64fba2af91cc5d4a2a1318e5d8c/) | ⚠️ Unaudited |
| MoolahVaultFactory | registry | bsc | 11 deployments: bsc [`0x0d1fac...b9fb52`](./contracts/bsc-56/0x0d1fac46e766aa64cf4a23c07fbb966937b9fb52/); bsc `0x2a0cb6...1d9671`; bsc `0x3984e9...28a443`; bsc `0x49fab7...7d5bdf`; bsc `0x54ec19...8e2728`; bsc `0x55a937...8cf5fc`; bsc `0x79367b...415c28`; bsc `0x7cc20a...596569`; bsc `0xa505ac...4af80f`; bsc `0xcd13a4...cb91ac`; bsc `0xdcae13...535134` | ⚠️ Unaudited |
| MultiPathConverter | unknown | bsc | [`0xf44ef3...3179a3`](./contracts/bsc-56/0xf44ef3dd983d4a8612c7176eb71243ac113179a3/) | ⚠️ Unaudited |
| mXRPPriceFeed | operational_periphery | bsc | 2 deployments: bsc [`0x0999ca...3f84bf`](./contracts/bsc-56/0x0999ca2e63fbb2923bc4c3853b37e371b33f84bf/); bsc `0xcec9dd...6d2a51` | ⚠️ Unaudited |
| OracleAdaptor | operational_periphery | bsc | 3 deployments: bsc [`0x00066f...e06fd4`](./contracts/bsc-56/0x00066f933bf16014143c284be85847a3a2e06fd4/); bsc `0x21650e...597b58`; bsc `0x274cf4...edb517` | ⚠️ Unaudited |
| OracleHub | operational_periphery | bsc | 2 deployments: bsc [`0x80e663...b2641e`](./contracts/bsc-56/0x80e663ba9ef857d3f377f814c2f3d00187b2641e/); bsc `0x9726e7...b45764` | ⚠️ Unaudited |
| OwnershipFacet | unknown | bsc | 6 deployments: bsc [`0x030e6f...1f09a2`](./contracts/bsc-56/0x030e6f7089591f9b3145991c0228071d311f09a2/); bsc `0x31527f...1e2f95`; bsc `0x620632...caab3f`; bsc `0x84047b...238c77`; bsc `0xb83d60...4abd6d`; bsc `0xdc7365...f622f8` | ⚠️ Unaudited |
| PancakeSwapExample | unknown | bsc | 2 deployments: bsc [`0x354c4b...2e46bc`](./contracts/bsc-56/0x354c4bc4cc6c81362e049c0de57dffd3632e46bc/); bsc `0x89f85f...675e1e` | ⚠️ Unaudited |
| PancakeSwapV3LpProvider | unknown | bsc | 7 deployments: bsc [`0x104e7b...d42058`](./contracts/bsc-56/0x104e7b187a6455ebf79158a8d7140ea193d42058/); bsc `0x117c7c...42d67d`; bsc `0x3fbe56...308667`; bsc `0x4f8e6f...505fce`; bsc `0x92468a...1a3e60`; bsc `0x9d23ef...d5493c`; bsc `0xe83e36...e88aa3` | ⚠️ Unaudited |
| PancakeSwapV3LpStakingHub | unknown | bsc | 5 deployments: bsc [`0x3da4f7...4b5606`](./contracts/bsc-56/0x3da4f7c6b5dc3c7b35fba746001542a4844b5606/); bsc `0x871f80...fee1fa`; bsc `0xa30c8f...1a26a7`; bsc `0xc83e1c...9209cd`; bsc `0xe44447...6a4ccf` | ⚠️ Unaudited |
| PancakeSwapV3LpStakingVault | core_logic | bsc | 5 deployments: bsc [`0x0998cd...71941d`](./contracts/bsc-56/0x0998cd70b60ee5cf5a41a69d7d121d065d71941d/); bsc `0x31deb2...bc2104`; bsc `0xaa0451...a30986`; bsc `0xf85f52...d9d236`; bsc `0xfe955c...f41e86` | ⚠️ Unaudited |
| PancakeV3SpotPriceReader | operational_periphery | bsc | 23 deployments: bsc [`0x033555...4e4e67`](./contracts/bsc-56/0x0335554570fa20773b760c55e0141845104e4e67/); bsc `0x0871bb...554389`; bsc `0x0b2e66...668970`; bsc `0x0e1bb5...968f06`; bsc `0x11cf98...a18def`; bsc `0x1fea48...c05eed`; bsc `0x211c99...47a32d`; bsc `0x220ed3...4780e5`; bsc `0x289146...f58c4d`; bsc `0x41e926...3a9c53`; bsc `0x451a41...5d6ec5`; bsc `0x453923...e05e11`; bsc `0x4b1a50...6923c4`; bsc `0x6d8723...05db2c`; bsc `0xbcaa5b...af316c`; bsc `0xc2f0dd...7a921c`; bsc `0xc30d13...935ff0`; bsc `0xcb1132...9ee05e`; bsc `0xd76387...2dc46a`; bsc `0xdb0b57...ed32fa`; bsc `0xdf23e3...8989b8`; bsc `0xeded81...be3c84`; bsc `0xf39e92...1691e5` | ⚠️ Unaudited |
| PausableMock | unknown | bsc | 3 deployments: bsc [`0x7e8ef7...4a5ee0`](./contracts/bsc-56/0x7e8ef7053322c6e2fb5ff0304a620f8ce84a5ee0/); bsc `0xead4fe...fda3a7`; bsc `0xf5e80f...fc77a0` | ⚠️ Unaudited |
| PegKeeper | operational_periphery | bsc | 30 deployments: bsc [`0x0644a9...6d5515`](./contracts/bsc-56/0x0644a92dd678f52fa0d60b3747453c2d4c6d5515/); bsc `0x0762fd...b3c36f`; bsc `0x087dd7...063f85`; bsc `0x1ac727...c98d93`; bsc `0x1f13a0...fd57c0`; bsc `0x24a4ef...7b06fc`; bsc `0x2bbd84...3516b1`; bsc `0x3572ca...2cd554`; bsc `0x4bf6a8...a0668b`; bsc `0x550128...0472b8`; bsc `0x6059b8...6be168`; bsc `0x704ab0...026475`; bsc `0x775402...0bd2b8`; bsc `0x7ad8c1...172352`; bsc `0x7c05d7...f835eb`; bsc `0x835e75...b07dad`; bsc `0x95f23f...00e556`; bsc `0x9687ca...19e5b4`; bsc `0xa00a1e...e1677b`; bsc `0xa12c79...50f9c9`; bsc `0xcb1ea5...5a09ee`; bsc `0xceee5a...80409d`; bsc `0xd043f9...47422b`; bsc `0xd5283c...b82492`; bsc `0xd83df8...2597c2`; bsc `0xeaa146...03f1d5`; bsc `0xee3f89...7373f6`; bsc `0xf68897...ebd80a`; bsc `0xfc5de1...30e677`; bsc `0xff5d0e...d88b2d` | ⚠️ Unaudited |
| PoolConfiguration | core_logic | bsc | 2 deployments: bsc [`0x528d64...8a76fd`](./contracts/bsc-56/0x528d6463a855e93e04142d729e69d465d68a76fd/); bsc `0xaefba4...a0c2e7` | ⚠️ Unaudited |
| PositionManager | governance | bsc | 2 deployments: bsc [`0x8ebfa9...df3ec0`](./contracts/bsc-56/0x8ebfa9e687af71ec2e87a0380f73b9f57fdf3ec0/); bsc `0xb0e3b6...8b4cfb` | ⚠️ Unaudited |
| PositionMigrator | periphery | bsc | 2 deployments: bsc [`0x2b3e5b...21d0a4`](./contracts/bsc-56/0x2b3e5b695722756130a553e9bb5a45e16d21d0a4/); bsc `0xc77909...be5190` | ⚠️ Unaudited |
| ProtocolTreasury | operational_periphery | bsc | 3 deployments: bsc [`0x0925ec...e20c04`](./contracts/bsc-56/0x0925eca7a9137a3a7020cc2895c0a688a3e20c04/); bsc `0x250c53...fd26bd`; bsc `0xad087d...fd9988` | ⚠️ Unaudited |
| ProxyAdmin | governance | bsc | 49 deployments: bsc [`0x0808bd...1c3eb0`](./contracts/bsc-56/0x0808bdd4f4636479b9b6a9408808a5436f1c3eb0/); bsc `0x0c1879...cff8ad`; bsc `0x0e91ee...f398a8`; bsc `0x10c9f7...063320`; bsc `0x17b84b...57ab14`; bsc `0x1bf235...dab8e3`; bsc `0x1e65de...9eac90`; bsc `0x2088df...b5c138`; bsc `0x252b59...e840b3`; bsc `0x26a2a1...1db06e`; bsc `0x27b7aa...2bac40`; bsc `0x288e44...e533da`; bsc `0x2d332f...4434f4`; bsc `0x2f0927...032c11`; bsc `0x37e0b4...af9fd3`; bsc `0x38819e...952932`; bsc `0x3ed43c...95a9d6`; bsc `0x3ee560...e71c73`; bsc `0x47480e...26d444`; bsc `0x4776d0...597678`; bsc `0x57b40a...5884c1`; bsc `0x5afc98...8d3492`; bsc `0x5d0929...4fed91`; bsc `0x608f49...612bc7`; bsc `0x6560d1...8fdc46`; bsc `0x696001...5a2b20`; bsc `0x6b4b0d...78741c`; bsc `0x7254bf...39c136`; bsc `0x73fbf1...6dc596`; bsc `0x794105...d5e9be`; bsc `0x808d1b...a08105`; bsc `0x8662ce...585d8f`; bsc `0x8f0512...29a4a1`; bsc `0x9627b4...a9ac7d`; bsc `0x9acdc9...fee1f3`; bsc `0x9c0e2b...c3fc20`; bsc `0x9f114e...eeee22`; bsc `0xa05c04...028fcf`; bsc `0xa1e000...bb51f7`; bsc `0xa2e52c...aad0a4`; bsc `0xb6df19...920134`; bsc `0xb9e701...9c9f6c`; bsc `0xe2a252...7b9d2a`; bsc `0xe4a1c4...98d2ca`; bsc `0xeeda1b...ed5cab`; bsc `0xf094b0...219a61`; bsc `0xf12b56...0cd409`; bsc `0xf3bd8d...a3fb02`; bsc `0xff8cb5...30f22a` | ⚠️ Unaudited |
| PTLinearDiscountMarketOracle | operational_periphery | bsc | 5 deployments: bsc [`0x1a438f...67ac17`](./contracts/bsc-56/0x1a438f71bc56514f47142c96a8f580ab5767ac17/); bsc `0x3fa64d...f6bc31`; bsc `0x4a4a53...3ec1f1`; bsc `0xab1b9e...78ab3d`; bsc `0xf9135d...8ba265` | ⚠️ Unaudited |
| PTLinearDiscountOracle | operational_periphery | bsc | 83 deployments: bsc [`0x01ccc0...cce29f`](./contracts/bsc-56/0x01ccc0f0ae8907bd3efa947b2ce841082bcce29f/); bsc `0x09e664...534fe9`; bsc `0x0ed93c...b9072e`; bsc `0x0f5fef...c72695`; bsc `0x11e73c...1d41f6`; bsc `0x13ea68...6960d1`; bsc `0x155e98...918ba5`; bsc `0x168931...ef8da3`; bsc `0x1b2d36...4cd91b`; bsc `0x1ccefa...74d7a2`; bsc `0x1d002c...05dd86`; bsc `0x1d25dd...00ec86`; bsc `0x2311f9...9dde70`; bsc `0x24284b...3d9e9c`; bsc `0x246917...6915ec`; bsc `0x25efb2...cb8e91`; bsc `0x2e3295...610774`; bsc `0x30b255...b2f9ec`; bsc `0x31f884...870c8f`; bsc `0x3340df...efc133`; bsc `0x344dbc...efa74d`; bsc `0x358614...3a0c66`; bsc `0x39d534...dbd511`; bsc `0x3afcaa...4849d8`; bsc `0x3b41a7...a66aa5`; bsc `0x3e739b...9a44bd`; bsc `0x3f71d5...6d6b94`; bsc `0x525674...73b94f`; bsc `0x56007b...2614c6`; bsc `0x5dc848...26faff`; bsc `0x64f9de...766f76`; bsc `0x6606cc...2a39b2`; bsc `0x68a892...a2cdb1`; bsc `0x6961fe...fbed13`; bsc `0x725a4a...ff2937`; bsc `0x74f733...0e8739`; bsc `0x75856b...57edd1`; bsc `0x77e49a...5ddde1`; bsc `0x784554...00f748`; bsc `0x7b4717...3b6aa4`; bsc `0x7b61aa...3fc943`; bsc `0x7ca108...70110c`; bsc `0x80c9ba...21a0be`; bsc `0x86b919...25ecb9`; bsc `0x89852c...7ec370`; bsc `0x8e34f6...1185a8`; bsc `0x97093f...3afea3`; bsc `0x9a7b02...027a63`; bsc `0x9b6be1...684a20`; bsc `0x9b7fae...6b5e11`; bsc `0x9bb8a4...b478d0`; bsc `0xa23b3b...384c8f`; bsc `0xa4da30...10a5ab`; bsc `0xa60540...61806c`; bsc `0xa7dd75...1d63ef`; bsc `0xa8552c...3ba57c`; bsc `0xb3be6e...7387f0`; bsc `0xb7a1f4...de824f`; bsc `0xb9df6c...92cfda`; bsc `0xbef5df...170491`; bsc `0xc36a8f...b59cf3`; bsc `0xc5dddf...e4c062`; bsc `0xc948b0...e9e7bb`; bsc `0xcabe73...191151`; bsc `0xcd5aea...83c880`; bsc `0xd84d26...8f57e5`; bsc `0xda994f...93d9f2`; bsc `0xdb3593...5e4540`; bsc `0xe09e7b...6ac914`; bsc `0xe0c61e...62cc22`; bsc `0xe55052...104acf`; bsc `0xe8c210...8d27c9`; bsc `0xe98e6d...fd991a`; bsc `0xe9c487...4acb76`; bsc `0xef3f95...a52c53`; bsc `0xf5ed7f...fce294`; bsc `0xf69389...2e8091`; bsc `0xf87e99...e77ef3`; bsc `0xf91432...6c47b8`; bsc `0xfb25a8...5f549d`; bsc `0xfd31ad...ab5665`; bsc `0xfe6325...fe4216`; bsc `0xffe3a7...d5074d` | ⚠️ Unaudited |
| PTLinearDiscountPriceOracle | operational_periphery | bsc | 2 deployments: bsc [`0x96146e...8959a2`](./contracts/bsc-56/0x96146ef4c6e1c42e05439ab037fc3d60188959a2/); bsc `0xd1bd18...340796` | ⚠️ Unaudited |
| PublicLiquidator | operational_periphery | bsc | 3 deployments: bsc [`0x50c542...e42572`](./contracts/bsc-56/0x50c542774620da722c90cc2ce709c4c1d2e42572/); bsc `0x882475...ecc6d9`; bsc `0xc73f58...3b0053` | ⚠️ Unaudited |
| PufETHPriceFeed | operational_periphery | bsc | [`0x303cb4...efc61b`](./contracts/bsc-56/0x303cb4c83f98d806d5a5c1190908540999efc61b/) | ⚠️ Unaudited |
| PumpBTCProvider | unknown | bsc | [`0xe701f1...d10b1e`](./contracts/bsc-56/0xe701f1a3064c3c06f2a6092c921e2a9946d10b1e/) | ⚠️ Unaudited |
| RateCalculator | unknown | bsc | 4 deployments: bsc [`0x3a8431...05c5de`](./contracts/bsc-56/0x3a84315d6e14291dace3fbc62d24f52c3505c5de/); bsc `0x757898...837a22`; bsc `0xd7e46d...3342d8`; bsc `0xf81a30...be2330` | ⚠️ Unaudited |
| ReservePool | core_logic | bsc | 18 deployments: bsc [`0x016b34...9a4647`](./contracts/bsc-56/0x016b342f67b97f479459a25a7e04b478969a4647/); bsc `0x0776c7...b0790d`; bsc `0x0c16de...d7e79e`; bsc `0x1be63b...a810f7`; bsc `0x3a94a1...e3e371`; bsc `0x63142b...e51c39`; bsc `0x657114...62d878`; bsc `0x683039...4f477e`; bsc `0x72c551...418e60`; bsc `0x7c5e3c...bc4611`; bsc `0x8b6a5b...fc4639`; bsc `0xb5b2d8...0f4237`; bsc `0xc7c7ef...b663e0`; bsc `0xd54344...b035e3`; bsc `0xec69a0...09d363`; bsc `0xf7314c...6064b6`; bsc `0xfc6b69...928570`; bsc `0xfe708f...a373f4` | ⚠️ Unaudited |
| RevenueCollector | unknown | bsc | 4 deployments: bsc [`0x86e092...d8945c`](./contracts/bsc-56/0x86e09296aeda129d3b0b4c134b3202b84cd8945c/); bsc `0x8762c7...0870ed`; bsc `0xba1dd3...b7e7b4`; bsc `0xd08be4...fca179` | ⚠️ Unaudited |
| RevenuePool | core_logic | bsc | 61 deployments: bsc [`0x0164a2...65c3dd`](./contracts/bsc-56/0x0164a23a87e8a80182b04af38e9ee2927165c3dd/); bsc `0x048df3...d7fbf4`; bsc `0x0d0b40...10a768`; bsc `0x185949...53de52`; bsc `0x1b54fe...e08d44`; bsc `0x1fdb6d...001e7b`; bsc `0x22b13b...c00e33`; bsc `0x232da2...64d4cb`; bsc `0x2387ab...213446`; bsc `0x2bd7c4...51ebf8`; bsc `0x2c21ec...0fa846`; bsc `0x2dbf30...6aa29e`; bsc `0x3dff67...8b6a68`; bsc `0x4739ce...107705`; bsc `0x48a854...1583d5`; bsc `0x4a45a8...71a7a0`; bsc `0x4c3917...b560f1`; bsc `0x58b408...af03ca`; bsc `0x63f724...5aad44`; bsc `0x65232b...725fb5`; bsc `0x6566c6...e2fe9a`; bsc `0x692c00...30714d`; bsc `0x750a22...fc5ad6`; bsc `0x78886b...d08723`; bsc `0x78f491...25d2ec`; bsc `0x80ac75...b56787`; bsc `0x82d83d...b624fc`; bsc `0x8acbde...80e460`; bsc `0x95d565...05851c`; bsc `0x981a49...d45538`; bsc `0x9861be...e47a0c`; bsc `0x9a4c05...424e42`; bsc `0x9e3ddb...e56554`; bsc `0xa1fa84...6bb7a8`; bsc `0xa23868...8aa310`; bsc `0xa2a915...5b1fa7`; bsc `0xa32630...543d93`; bsc `0xa41e1b...789e6c`; bsc `0xa6f4fb...9f65cd`; bsc `0xa7ed2c...ed7423`; bsc `0xb0eaa5...309b36`; bsc `0xb38ad2...f31d5a`; bsc `0xb5c93f...9129ac`; bsc `0xb9e8f1...f4cba7`; bsc `0xc22432...25d272`; bsc `0xc46347...5c3580`; bsc `0xcd1119...61fd2f`; bsc `0xd55d9d...404f62`; bsc `0xd58e23...4056e9`; bsc `0xd69ac4...b45d3b`; bsc `0xdc42ca...fd4eb2`; bsc `0xddb4bb...ee38f3`; bsc `0xdf3292...00aad8`; bsc `0xe02586...daf6cd`; bsc `0xe5acc1...7ea153`; bsc `0xee7878...98a3a4`; bsc `0xeffd62...9e129f`; bsc `0xf48913...2f92e6`; bsc `0xf6c92e...b3efb5`; bsc `0xf8b14b...584027`; bsc `0xf98e7a...7c4e37` | ⚠️ Unaudited |
| ReverseStabilityPool | core_logic | bsc | 6 deployments: bsc [`0x2f4d20...4a8657`](./contracts/bsc-56/0x2f4d20169a2c00805e8b2b93e8633e56e94a8657/); bsc `0x60eb36...34c7fd`; bsc `0x720961...fb60f6`; bsc `0x78f333...99a6b1`; bsc `0x95bece...645e1b`; bsc `0x992b0d...09c376` | ⚠️ Unaudited |
| RewardClaimers | operational_periphery | bsc | 2 deployments: bsc [`0x56c9f9...55b8f1`](./contracts/bsc-56/0x56c9f9190af9ba6f970a8b1bfd1c87f21d55b8f1/); bsc `0x9c524b...a3708f` | ⚠️ Unaudited |
| RewardsRouter | adapter | bsc | 14 deployments: bsc [`0x2073dd...9d9f1f`](./contracts/bsc-56/0x2073ddce6d268ebbfc541d7f5d418de9ca9d9f1f/); bsc `0x2e1b43...16d07a`; bsc `0x32e788...d754af`; bsc `0x634e29...fb9724`; bsc `0x6d00a5...56e859`; bsc `0x7266b9...c8b490`; bsc `0x83f84e...3231ab`; bsc `0x8b0bbc...b51ef9`; bsc `0x94f48c...7cf265`; bsc `0x9c1012...70e7bd`; bsc `0xa2e64b...e12dae`; bsc `0xb69507...b1549e`; bsc `0xbf7604...bda705`; bsc `0xcb571b...e5bff4` | ⚠️ Unaudited |
| RouterManagementFacet | adapter | bsc | 8 deployments: bsc [`0x0f2818...2c3aeb`](./contracts/bsc-56/0x0f2818c6ccb89b3e9990a8fd466dedc0af2c3aeb/); bsc `0x16a19c...b997e7`; bsc `0x1fbb16...d51496`; bsc `0x5a1690...3efe12`; bsc `0x624edc...247f87`; bsc `0x8d488e...3c1a26`; bsc `0xc24de5...49e4b6`; bsc `0xcf1b6d...daa1a9` | ⚠️ Unaudited |
| RWAAdapter | adapter | bsc | 6 deployments: bsc [`0x0b116d...e350eb`](./contracts/bsc-56/0x0b116d1944e05348003479b517355b1ccee350eb/); bsc `0x24ef66...17516e`; bsc `0x69d15b...c50105`; bsc `0x86f7c1...41ce7a`; bsc `0xc1aeeb...3f5fc6`; bsc `0xf7b187...26e0d9` | ⚠️ Unaudited |
| SafeGuard | governance | bsc | 3 deployments: bsc [`0x59828a...770ef6`](./contracts/bsc-56/0x59828a98b4ba4e69a12718bbdd831f10a2770ef6/); bsc `0xb35276...0ffb6c`; bsc `0xb4a366...7d3097` | ⚠️ Unaudited |
| SafeProxy | unknown | bsc | [`0x0609c8...317f34`](./contracts/bsc-56/0x0609c8c37baab0f38f4a99e63eb0d4b433317f34/) | ⚠️ Unaudited |
| Shadow | unknown | bsc | [`0x85375d...0a40e7`](./contracts/bsc-56/0x85375d3e9c4a39350f1140280a8b0de6890a40e7/) | ⚠️ Unaudited |
| ShortPoolManager | core_logic | bsc | [`0xdcf90d...a2fc0d`](./contracts/bsc-56/0xdcf90d6361e11a3673ce52ef9912d428cea2fc0d/) | ⚠️ Unaudited |
| ShortPositionOperateFacet | unknown | bsc | 2 deployments: bsc [`0x09a5fb...8b347a`](./contracts/bsc-56/0x09a5fbe112eddfc77bbd711a73fb0ba02b8b347a/); bsc `0x1b6ac7...0d9536` | ⚠️ Unaudited |
| SigmaAirdrop | operational_periphery | bsc | 10 deployments: bsc [`0x08ad73...e6ab54`](./contracts/bsc-56/0x08ad7351fe79133d75af41e1117c1e5c2be6ab54/); bsc `0x34ac34...d96f7a`; bsc `0x54db51...652cf0`; bsc `0x5e7109...2c00f5`; bsc `0x7f29d9...5f0a6a`; bsc `0x82ba7a...17bcf9`; bsc `0xa39144...35ab7f`; bsc `0xad465f...f3d138`; bsc `0xc328a4...de8ff5`; bsc `0xdd6876...3dd713` | ⚠️ Unaudited |
| SigmaClisBNBPool | core_logic | bsc | 18 deployments: bsc [`0x0b0f50...736511`](./contracts/bsc-56/0x0b0f505eb93d4cc1145177c4c75263435a736511/); bsc `0x1aa821...7bcb66`; bsc `0x1b6e6e...553bf2`; bsc `0x1edbd6...ab27ff`; bsc `0x26f99c...e7c2ce`; bsc `0x31bc65...ac034f`; bsc `0x60c9ef...7c8b80`; bsc `0x7601aa...d6eb58`; bsc `0x782b16...368f5f`; bsc `0x868c85...9f0edf`; bsc `0xa3d7e7...35c25c`; bsc `0xa857f6...cc0355`; bsc `0xb247cb...1e68c7`; bsc `0xb9fe05...f5d4ea`; bsc `0xdc8b62...af56b3`; bsc `0xe7e501...579f8a`; bsc `0xed94de...1d813c`; bsc `0xf4f429...dff568` | ⚠️ Unaudited |
| SigmaClisBNBPriceOracle | operational_periphery | bsc | 12 deployments: bsc [`0x52b3f3...ffdb17`](./contracts/bsc-56/0x52b3f3b441e9864a73cbfc8cce04bf368cffdb17/); bsc `0x7fe50e...d2f8c9`; bsc `0x8f9d40...ae5ee0`; bsc `0x949673...1496d1`; bsc `0x987dad...45996c`; bsc `0x9a62b8...d046d7`; bsc `0xcae968...6bea3e`; bsc `0xce315d...f93564`; bsc `0xd1a55e...5e1bb1`; bsc `0xdcadbe...06d40b`; bsc `0xe23d61...72a6a5`; bsc `0xef9f01...b7a4fa` | ⚠️ Unaudited |
| SigmaClisBNBSY | governance | bsc | 27 deployments: bsc [`0x141d00...2262f2`](./contracts/bsc-56/0x141d006bac2d15934a99cdd39ec12153ef2262f2/); bsc `0x1de1fd...824a7c`; bsc `0x22c4c1...838bb5`; bsc `0x2bef04...207ffa`; bsc `0x331b2a...6fd0f9`; bsc `0x4ad309...783b6c`; bsc `0x6a1f7c...7443ce`; bsc `0x6c47bf...515fef`; bsc `0x6fc086...f148e8`; bsc `0x8b9856...847a29`; bsc `0x931247...12af06`; bsc `0x9632d1...9fae0e`; bsc `0x9ad89b...fa0c7e`; bsc `0x9c16d5...2c9f4c`; bsc `0xa1f57c...c7be5c`; bsc `0xa4476f...661c04`; bsc `0xa813a3...bf48ad`; bsc `0xaa3a1b...5d0379`; bsc `0xc011d7...7febbe`; bsc `0xc77d0c...c7924f`; bsc `0xc80a20...406659`; bsc `0xc8692d...78e8ce`; bsc `0xd72bea...ec89c8`; bsc `0xe8f124...827813`; bsc `0xf15747...39086b`; bsc `0xf194cc...64b080`; bsc `0xfbf84c...0d6ed1` | ⚠️ Unaudited |
| SigmaClisBNBSYBNBRateProvider | governance | bsc | 10 deployments: bsc [`0x05440f...490a99`](./contracts/bsc-56/0x05440f228c26f2faf1551d240662199647490a99/); bsc `0x199bc7...c17f2a`; bsc `0x1cf9bf...a92095`; bsc `0x4fbeb5...ce0492`; bsc `0x5737f5...5c1baf`; bsc `0x6e88c9...53bbcf`; bsc `0x7ef811...8886dc`; bsc `0xb0bca5...74d17e`; bsc `0xc59568...d7c9f3`; bsc `0xd6bea4...129136` | ⚠️ Unaudited |
| SigmaClisBNBSYSlisBNBRateProvider | governance | bsc | 6 deployments: bsc [`0x274992...18ee5c`](./contracts/bsc-56/0x274992df2b7a36230dea16c7260cd480b218ee5c/); bsc `0x2a3100...3a5949`; bsc `0x363349...274b0e`; bsc `0x8b8207...9b024a`; bsc `0xcd27cc...6b3fb4`; bsc `0xd916d1...3b961d` | ⚠️ Unaudited |
| SigmaController | governance | bsc | 46 deployments: bsc [`0x01b312...61e76e`](./contracts/bsc-56/0x01b31200925ac95677214420293161c41d61e76e/); bsc `0x02a4a2...680da7`; bsc `0x04e494...78b906`; bsc `0x086b97...6164cb`; bsc `0x088a3c...a64e57`; bsc `0x2bf6ac...e6a929`; bsc `0x342aa2...298a1c`; bsc `0x3c0eec...aec2bb`; bsc `0x3d30bd...33cbf7`; bsc `0x3e4b09...6a2f71`; bsc `0x450970...90891c`; bsc `0x45667d...b02445`; bsc `0x471a4c...ceb01f`; bsc `0x4bcea4...f1da3f`; bsc `0x54b583...0560f8`; bsc `0x552143...0c1868`; bsc `0x5ae2be...8f58d7`; bsc `0x65338a...fdaeb0`; bsc `0x657bf4...f3c4ea`; bsc `0x73bd59...1bb2c8`; bsc `0x74432f...f9023c`; bsc `0x78d1c6...b3ebf2`; bsc `0x7ac1f4...7ef385`; bsc `0x7eb2df...2bd92d`; bsc `0x856516...ced47a`; bsc `0x8aef3e...800b15`; bsc `0x8f8e7e...9ce75a`; bsc `0x91281e...df16d8`; bsc `0xa42539...55e091`; bsc `0xab98d1...01188b`; bsc `0xabf3a7...a83a98`; bsc `0xae4f78...a9271a`; bsc `0xb0257c...12f8ad`; bsc `0xb911ea...79d95d`; bsc `0xb9c0c1...7a337f`; bsc `0xbade8c...bfe4be`; bsc `0xbe0a91...2e22a7`; bsc `0xc74378...cdf0b5`; bsc `0xc7f495...f1385b`; bsc `0xd57b86...05665a`; bsc `0xde66a9...d2306b`; bsc `0xe1853a...cbf64d`; bsc `0xe18dff...eeb863`; bsc `0xec5fa8...bf0a30`; bsc `0xf4259e...8d5e2b`; bsc `0xf5729f...06ab53` | ⚠️ Unaudited |
| SigmaDisperser | unknown | bsc | [`0xf9a16c...292dbe`](./contracts/bsc-56/0xf9a16ccc27680a8880c7a2f8673f4e40ab292dbe/) | ⚠️ Unaudited |
| SigmaFeeDistributorFactory | operational_periphery | bsc | 4 deployments: bsc [`0x163ec8...915c7a`](./contracts/bsc-56/0x163ec866b08dc9dc3e5ab0085c419c6d25915c7a/); bsc `0x7e0cca...defa11`; bsc `0x8937e9...efe316`; bsc `0xceda08...ebf638` | ⚠️ Unaudited |
| SigmaGaugeFactory | operational_periphery | bsc | 4 deployments: bsc [`0x73ce30...6eab09`](./contracts/bsc-56/0x73ce30d722bde748e10d898aeae234cc246eab09/); bsc `0xaf2b59...4d9533`; bsc `0xb5e189...04fbd7`; bsc `0xb93b95...5e656b` | ⚠️ Unaudited |
| SigmaLongPool | core_logic | bsc | 3 deployments: bsc [`0x31c464...4f70fb`](./contracts/bsc-56/0x31c464cfe506d44ceaa86c05cdbb94b5c94f70fb/); bsc `0x8ae92f...474d6d`; bsc `0xe8a16f...187b7d` | ⚠️ Unaudited |
| SigmaSPAdapter | adapter | bsc | [`0xc04f63...57e91b`](./contracts/bsc-56/0xc04f63543b3ea6827374bbe95450bc107757e91b/) | ⚠️ Unaudited |
| SigmaSPAdapterExample | adapter | bsc | [`0x03557a...890bb3`](./contracts/bsc-56/0x03557a350ec139190ee2914f6f3558b5bb890bb3/) | ⚠️ Unaudited |
| SigmaVesting | operational_periphery | bsc | [`0x042666...c84e53`](./contracts/bsc-56/0x042666c0300cff4dadb7e2c553b2300668c84e53/) | ⚠️ Unaudited |
| SlisBnbOracle | operational_periphery | bsc | 2 deployments: bsc [`0x114742...80819b`](./contracts/bsc-56/0x11474297387d096ae101a272ff6ad79b7280819b/); bsc `0xc49b40...c7a58d` | ⚠️ Unaudited |
| SlisBnbPriceFeed | operational_periphery | bsc | [`0x125bce...1dc1a3`](./contracts/bsc-56/0x125bcea7ae8ff45083e513faf4913a14bc1dc1a3/) | ⚠️ Unaudited |
| SlisBNBProvider | unknown | bsc | 10 deployments: bsc [`0x0aefec...820c70`](./contracts/bsc-56/0x0aefec58e6339c663e80306e38ffebbae0820c70/); bsc `0x33f7a9...7d4d5f`; bsc `0x53c14f...280f1c`; bsc `0x92a504...40b8ab`; bsc `0x9498e3...c6e890`; bsc `0x9d9d18...d0adf8`; bsc `0xb3c4ed...693db0`; bsc `0xbae10a...7f2f59`; bsc `0xc4ebc6...9085ae`; bsc `0xd10a02...8b0d30` | ⚠️ Unaudited |
| slisBNBx | unknown | bsc | [`0x44f987...64c5aa`](./contracts/bsc-56/0x44f987fe1fd3597abcf95b8790351d00ff64c5aa/) | ⚠️ Unaudited |
| SlisBNBxMinter | unknown | bsc | 2 deployments: bsc [`0x2959c4...73f11a`](./contracts/bsc-56/0x2959c423bfe5cc6e41516599d982a29c0773f11a/); bsc `0x774a8c...a09328` | ⚠️ Unaudited |
| SLisLibrary | unknown | bsc | [`0xb03518...d36da8`](./contracts/bsc-56/0xb03518022f7845e901f35ea39c64b0904cd36da8/) | ⚠️ Unaudited |
| SmartProvider | unknown | bsc | 17 deployments: bsc [`0x1f48d5...6ea87f`](./contracts/bsc-56/0x1f48d539f1900ceb9901988087eee499c76ea87f/); bsc `0x3356bf...7f6c38`; bsc `0x450cfe...6667f2`; bsc `0x59fa44...6baeda`; bsc `0x5fd397...75c06b`; bsc `0x6bdb0d...039369`; bsc `0x8dadaf...c63ff6`; bsc `0x9994d7...d4c841`; bsc `0x99bf20...31caf3`; bsc `0x9edecb...4d297b`; bsc `0xa5f53c...2749db`; bsc `0xa76220...83bf95`; bsc `0xb51e9c...3bf9d2`; bsc `0xc3be83...2024de`; bsc `0xc3ea03...b35de3`; bsc `0xcc93cb...0e5a1b`; bsc `0xddcd4f...112d5e` | ⚠️ Unaudited |
| StableAsUsdfPriceFeed | operational_periphery | bsc | [`0xd5342f...a60042`](./contracts/bsc-56/0xd5342ff1ae0621be72c11ecb620a5cec0aa60042/) | ⚠️ Unaudited |
| StableSwapFactory | registry | bsc | 2 deployments: bsc [`0x63dc1c...c6378d`](./contracts/bsc-56/0x63dc1c139a62dea7bcc7736f9465c283dac6378d/); bsc `0xde9c8e...cb49b4` | ⚠️ Unaudited |
| StableSwapLP | unknown | bsc | [`0x7c43dc...87a84c`](./contracts/bsc-56/0x7c43dca54fdd9b43c1f627edfb9e24d5b387a84c/) | ⚠️ Unaudited |
| StableSwapLPCollateral | unknown | bsc | 13 deployments: bsc [`0x1a7226...81a806`](./contracts/bsc-56/0x1a7226eafb48ad71d28ade957f20d9dc4d81a806/); bsc `0x1d76e2...b86f59`; bsc `0x23bc29...af3330`; bsc `0x24632b...819683`; bsc `0x627b55...821a58`; bsc `0x637020...105098`; bsc `0x6f4d75...1a9f03`; bsc `0x719f64...4bcfee`; bsc `0x7ea1d4...d28e19`; bsc `0x9e9b73...ccee46`; bsc `0xbbd3e7...7cd05a`; bsc `0xc0c4a8...496cc6`; bsc `0xd6afbf...793293` | ⚠️ Unaudited |
| StableSwapPool | core_logic | bsc | 3 deployments: bsc [`0x212b83...a3a126`](./contracts/bsc-56/0x212b836dc1ee8c8daefd1284bd27e96a2ea3a126/); bsc `0x74082e...0c2615`; bsc `0xfe76a4...387862` | ⚠️ Unaudited |
| StableSwapPoolInfo | core_logic | bsc | 2 deployments: bsc [`0x395720...67fd70`](./contracts/bsc-56/0x3957208ba04b83796e1d9394baf2a6796467fd70/); bsc `0x73d262...557a1a` | ⚠️ Unaudited |
| StableUsdtPriceFeed | operational_periphery | bsc | [`0x6e6492...2e0b56`](./contracts/bsc-56/0x6e64923a9c1dc94e2b746c5dc58abebd2d2e0b56/) | ⚠️ Unaudited |
| StoneOracle | operational_periphery | bsc | [`0x76d830...a4a8bf`](./contracts/bsc-56/0x76d830581d0e73014a944d919411c1f410a4a8bf/) | ⚠️ Unaudited |
| StonePriceFeed | operational_periphery | bsc | [`0xd6860a...55c4d8`](./contracts/bsc-56/0xd6860a2e20d7b158aac422a4030648bf2655c4d8/) | ⚠️ Unaudited |
| sUSD1PriceFeed | operational_periphery | bsc | [`0x54e881...b380b3`](./contracts/bsc-56/0x54e8810cdde88f531485d2f04321a28e7db380b3/) | ⚠️ Unaudited |
| sUSDePriceFeed | operational_periphery | bsc | [`0x1b7ccb...fa6d9b`](./contracts/bsc-56/0x1b7ccb0e6061d3a3bada5d97eedd252e39fa6d9b/) | ⚠️ Unaudited |
| sUSDXLiquidationPriceFeed | operational_periphery | bsc | [`0x152624...7c81c0`](./contracts/bsc-56/0x1526249ef1501bb4207e1431c285ffc2e17c81c0/) | ⚠️ Unaudited |
| sUSDXPriceFeed | operational_periphery | bsc | [`0x7da003...1265e0`](./contracts/bsc-56/0x7da003f123c48f42a2149bfff107ac5d531265e0/) | ⚠️ Unaudited |
| SyrupUSDTPriceFeed | operational_periphery | bsc | [`0x573ca8...c5c308`](./contracts/bsc-56/0x573ca8c797f68fb8cc5aa96df5a19e3bb0c5c308/) | ⚠️ Unaudited |
| TimeLock | governance | bsc | 5 deployments: bsc [`0x2162c6...b05da8`](./contracts/bsc-56/0x2162c6f603e178ce219798da20b2451a66b05da8/); bsc `0x2e2807...ccbb85`; bsc `0x5e3358...d30752`; bsc `0x90b1f0...01b08a`; bsc `0x9705cd...0e7e3e` | ⚠️ Unaudited |
| TimelockedTransparentUpgradableProxy | governance | bsc | [`0xa82fad...dcad79`](./contracts/bsc-56/0xa82fad385ea96a61dcf810ca4a64e4c93ddcad79/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | 72 deployments: bsc [`0x00ef4b...f05425`](./contracts/bsc-56/0x00ef4bb95d80b7f4206207091d9f9b4ec2f05425/); bsc `0x0ef74a...7f13a0`; bsc `0x110ec5...4e8191`; bsc `0x112612...b7296c`; bsc `0x1523b0...a605b7`; bsc `0x15ec39...d59ee7`; bsc `0x169469...3c3683`; bsc `0x1826e3...de20d9`; bsc `0x18878a...933fc9`; bsc `0x1a172b...6c95b9`; bsc `0x1bf29b...9d34fc`; bsc `0x1d6282...a432ab`; bsc `0x1e3771...838bfe`; bsc `0x22ebf9...4d97e7`; bsc `0x23d92a...cb46d0`; bsc `0x2a1896...32ed19`; bsc `0x2b01c6...5b5337`; bsc `0x2c8ccf...688eda`; bsc `0x2dea11...6f83ea`; bsc `0x2e4276...8de4fa`; bsc `0x2fdcf2...c7ff5b`; bsc `0x355e32...f2af15`; bsc `0x36eb3a...c3bf73`; bsc `0x3a9aee...f2d697`; bsc `0x4242ba...72e0ce`; bsc `0x43be4c...f6f7c6`; bsc `0x4fbd64...cbeb65`; bsc `0x512b66...479e3d`; bsc `0x5854ce...50b8d3`; bsc `0x5ce9d3...531848`; bsc `0x5f394d...82c258`; bsc `0x69c692...d165ec`; bsc `0x6d5a76...f43c02`; bsc `0x6dc7b5...e16b63`; bsc `0x6df2e2...751e1c`; bsc `0x6eb970...becf35`; bsc `0x6f1c4a...6f0f6b`; bsc `0x72227f...2c79af`; bsc `0x72dac4...01ab24`; bsc `0x76ccdf...432e12`; bsc `0x7c62e9...653346`; bsc `0x837854...b7f10a`; bsc `0x86c193...9473c0`; bsc `0x8ea874...26ec3d`; bsc `0x8eaf54...f015e1`; bsc `0x9043e6...f1e68b`; bsc `0x92ab25...163b7a`; bsc `0x9c0724...d4fe50`; bsc `0x9cb24d...5c92a4`; bsc `0xa5c65b...e5fe3a`; bsc `0xaa0d47...ffd1ff`; bsc `0xabc2d0...cad1e9`; bsc `0xbb557b...b38e55`; bsc `0xbb78ee...0b8329`; bsc `0xc0a44a...435754`; bsc `0xc23675...9e9d7f`; bsc `0xc2a6dc...85d335`; bsc `0xc83dfd...95f191`; bsc `0xd042f9...d1e4af`; bsc `0xd3a168...a51ab5`; bsc `0xd40cf9...6a7cbf`; bsc `0xd6527d...7adc9c`; bsc `0xd690ab...7ec5b4`; bsc `0xda230c...7f273c`; bsc `0xe1d0bb...c18afe`; bsc `0xe2b995...6a4ab0`; bsc `0xe2ec4c...c5daf6`; bsc `0xea5e7e...d37948`; bsc `0xec6a6a...16c895`; bsc `0xecf341...465254`; bsc `0xf0ba22...07fbc8`; bsc `0xf9a27d...9da1ad` | ⚠️ Unaudited |
| uniBTCPriceFeed | operational_periphery | bsc | [`0x150d8f...bbb936`](./contracts/bsc-56/0x150d8f804ebfd30202f59bc374301512e6bbb936/) | ⚠️ Unaudited |
| Usd1Oracle | operational_periphery | bsc | 2 deployments: bsc [`0x40d695...1b39fa`](./contracts/bsc-56/0x40d695986c4dd086c4e3a94392ab6c12781b39fa/); bsc `0xd111f1...90e72e` | ⚠️ Unaudited |
| UsdfOracle | operational_periphery | bsc | 2 deployments: bsc [`0x070975...8c4aa2`](./contracts/bsc-56/0x0709755a26b78ce8e1f4cab598ac7477858c4aa2/); bsc `0xa53a9a...b6b107` | ⚠️ Unaudited |
| USDXLiquidationPriceFeed | operational_periphery | bsc | [`0x7a4c41...626d2d`](./contracts/bsc-56/0x7a4c41f4479f42dc5ebe4aca94b12501e6626d2d/) | ⚠️ Unaudited |
| VaultAllocator | operational_periphery | bsc | 2 deployments: bsc [`0x8eba9b...8fc7c2`](./contracts/bsc-56/0x8eba9befd7e0ed7e41f0b644be2b2e3be48fc7c2/); bsc `0x9ecf66...5b524a` | ⚠️ Unaudited |
| VaultDistributor | operational_periphery | bsc | 2 deployments: bsc [`0x73b1b1...573f6c`](./contracts/bsc-56/0x73b1b172e2278a09d2b3bc116659d9d887573f6c/); bsc `0x76390c...8f7b1d` | ⚠️ Unaudited |
| VeFunderGaugeFactory | operational_periphery | bsc | 4 deployments: bsc [`0x1d0fd2...8621cf`](./contracts/bsc-56/0x1d0fd2603ace68e5ef64ce579935bc2ea08621cf/); bsc `0x3de258...772353`; bsc `0x704231...603f31`; bsc `0xffb02c...917fb0` | ⚠️ Unaudited |
| VeLista | unknown | bsc | [`0x765d17...70274e`](./contracts/bsc-56/0x765d17e43be4fa44b1cf75a01dc10ab95470274e/) | ⚠️ Unaudited |
| VeListaInterestRebater | unknown | bsc | 2 deployments: bsc [`0x40c34a...0818fe`](./contracts/bsc-56/0x40c34acecfc302a1dc3c3592ecea52e17a0818fe/); bsc `0xda1e93...1b3253` | ⚠️ Unaudited |
| VeListaRevenueDistributor | operational_periphery | bsc | 2 deployments: bsc [`0xe4153e...74ee76`](./contracts/bsc-56/0xe4153eb04417be05b8d6b2222e4cdd8ae674ee76/); bsc `0xf820fb...82fd70` | ⚠️ Unaudited |
| VeListaRewardsCourier | unknown | bsc | [`0x321abb...19caee`](./contracts/bsc-56/0x321abb57a8355818211d460fc91ca9b79019caee/) | ⚠️ Unaudited |
| VestingWallet | operational_periphery | bsc | 9 deployments: bsc [`0x0e45f7...8229df`](./contracts/bsc-56/0x0e45f70831642454d2102392c38977e2938229df/); bsc `0x260df7...53ee56`; bsc `0x315e18...6b2218`; bsc `0x6789e8...c50a40`; bsc `0x86a305...047b72`; bsc `0x86a412...7d68ba`; bsc `0xa1f41a...e9c242`; bsc `0xc248fe...1e305c`; bsc `0xea0197...6e6122` | ⚠️ Unaudited |
| VoteModule | unknown | bsc | 6 deployments: bsc [`0x3fab76...f99965`](./contracts/bsc-56/0x3fab767ff8340973a87975db13999fd1eaf99965/); bsc `0x3ffd01...d515c5`; bsc `0xaa492b...269515`; bsc `0xc6bd25...d38194`; bsc `0xe6cf7f...56f9c0`; bsc `0xe70302...2ab444` | ⚠️ Unaudited |
| Voter | unknown | bsc | 3 deployments: bsc [`0x031ab3...bf5ed1`](./contracts/bsc-56/0x031ab3eecc167485faf6753b5bcb2fd844bf5ed1/); bsc `0x3e8832...80f56e`; bsc `0xdc2630...29b009` | ⚠️ Unaudited |
| WBETHOracle | operational_periphery | bsc | [`0x6f3da9...384584`](./contracts/bsc-56/0x6f3da9ee8965ef22228a103df4719a74b7384584/) | ⚠️ Unaudited |
| WBETHPriceFeed | operational_periphery | bsc | [`0xeb3ac5...92f5a6`](./contracts/bsc-56/0xeb3ac57d6af35519db62bd150bef7388f892f5a6/) | ⚠️ Unaudited |
| WBNBSlisBNBConverter | unknown | bsc | [`0xf30c24...0f8134`](./contracts/bsc-56/0xf30c24cd63860cd73cf2dae7f9cfe9549b0f8134/) | ⚠️ Unaudited |
| wNLPUSDTPriceFeed | operational_periphery | bsc | [`0xf86155...de4262`](./contracts/bsc-56/0xf86155a27b5cd958732a29829d80017727de4262/) | ⚠️ Unaudited |
| wsrUSDPriceFeed | operational_periphery | bsc | [`0xfee2c5...76a46f`](./contracts/bsc-56/0xfee2c5ad734e64c8a63105187a5b465c3176a46f/) | ⚠️ Unaudited |
| WstETHOracle | operational_periphery | bsc | [`0x07399c...ee04b0`](./contracts/bsc-56/0x07399c1ca8e3e2aadd3858376cd7adaa16ee04b0/) | ⚠️ Unaudited |
| WstETHPriceFeed | operational_periphery | bsc | [`0x950620...d23fc5`](./contracts/bsc-56/0x950620918c66b080990b18635f1d7d4f70d23fc5/) | ⚠️ Unaudited |
| wstUSRNewPriceFeed | operational_periphery | bsc | [`0xdc3360...324104`](./contracts/bsc-56/0xdc3360252a4f94c1e0d93816ff1335440e324104/) | ⚠️ Unaudited |
| wstUSRPriceFeed | operational_periphery | bsc | [`0x5439ec...4722c8`](./contracts/bsc-56/0x5439ec87e111b1ac0ae676dbf561cd66164722c8/) | ⚠️ Unaudited |
| x33 | unknown | bsc | [`0xdf7fea...4af7df`](./contracts/bsc-56/0xdf7fea060a78b2e12485b8fa4fbf5733df4af7df/) | ⚠️ Unaudited |
| XShadow | unknown | bsc | 6 deployments: bsc [`0x2b808d...050605`](./contracts/bsc-56/0x2b808d0a0e6bb5979ecc87813dacb9ec6a050605/); bsc `0x587612...3247a9`; bsc `0x66a247...2e8442`; bsc `0x87b662...675fb3`; bsc `0x9922bc...213b03`; bsc `0xce611e...d9c340` | ⚠️ Unaudited |
| xSolvBTCOracle | operational_periphery | bsc | [`0xd7e6cb...26527c`](./contracts/bsc-56/0xd7e6cb9dd8ee997d341e80cddb448beee526527c/) | ⚠️ Unaudited |
| xSolvBtcPriceFeed | operational_periphery | bsc | [`0x267cbe...a0bc5e`](./contracts/bsc-56/0x267cbe0e9c37d7ab6c9f61ef4065a0ce8da0bc5e/) | ⚠️ Unaudited |
| YieldStrategy | core_logic | bsc | 14 deployments: bsc [`0x07d46d...8598c4`](./contracts/bsc-56/0x07d46db002df1f43a2dc77b703c5f33cef8598c4/); bsc `0x1e5ada...48d089`; bsc `0x2001ae...f2e6f7`; bsc `0x39cc74...2c4154`; bsc `0x3c9d73...fbcf82`; bsc `0x53f28d...8ef2fc`; bsc `0x6b8cb4...fe52ab`; bsc `0x7ffeab...8e502e`; bsc `0xa43afe...3d3ce9`; bsc `0xabfb0b...0e24b4`; bsc `0xbd92ae...b18994`; bsc `0xd69a0a...daa0ca`; bsc `0xde06b1...b21e73`; bsc `0xeec811...7a934e` | ⚠️ Unaudited |
| yUSDFixedPriceFeed | operational_periphery | bsc | [`0xaaff27...6d3365`](./contracts/bsc-56/0xaaff27ce7d8247d2d7725cdf5e590f72ca6d3365/) | ⚠️ Unaudited |
| yUSDPriceFeed | operational_periphery | bsc | [`0x687c3e...e24a04`](./contracts/bsc-56/0x687c3ee02e0b6a26d025b1b5babd54c3a2e24a04/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (43)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | bsc | `0x04bd5c...05b2ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x05a8d0...143a54` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x11a77a...065e28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x11eb9f...7209eb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x17e6e5...59c62b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x1f04a2...5d95f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2903fd...67942b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2d4662...44ba37` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x2eb07a...ac00b0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x3591d7...e4d045` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x38454f...6a4a8e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x49d842...7f7a0d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x50c0e0...60d9fe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x582388...f41561` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5934b8...4a3387` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x5eb696...910c4b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x623fd8...81e405` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x66eb74...d24fae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6a25b4...a74ae5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x6d3568...4348f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x703e54...4b06a0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x76928a...4855c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x76cb63...7cd38d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7b35e3...804dfa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7e1f2e...8a07ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x844860...fced24` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x8a6786...d081ca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x936454...ee1151` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x947d86...43c490` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x984cae...7c777a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9c369e...9cf85a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9ee9ba...642b8b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x9fa29e...58796a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa2f28f...50b089` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa8c4a0...912063` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xa930c5...96f56d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xaa5b88...4f1a1a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xba500b...0176e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xd1d993...6d2c97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xdced7e...60d8fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xe7b17b...e222ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xecc477...f2559f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xeeb0f0...eda6c9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 231 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
