# Agentic Audit Brief: YieldSeeker

## Project Overview

- Project: YieldSeeker (`yieldseeker`)
- Website: [https://yieldseeker.xyz](https://yieldseeker.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.731Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: base
- Contract surface: 288 unique implementations (680 raw deployments)
- DeFi Llama TVL: $1,287,639.03
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 46 project-authored contract(s) across 1 chain(s); 7 ERC4626 vaults, 8 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 20 common project-authored base contract(s) (multicall, ownable2step, constants). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 680; live-surface contracts included: 680 (436 live, 244 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/51 (0.0%)
- Deployed-live implementations: 59 of 288 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/60
- Verified + Unaudited implementations: 60
- Verified by bytecode match: 0
- Unverified implementations: 228
- Unique implementations: 288
- Raw deployments: 680
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (60)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveStrategy | operational_periphery | base | n/a | [`0x023d357d04f2d024993f6c002837ed3195537fcf`](./contracts/base-8453/0x023d357d04f2d024993f6c002837ed3195537fcf/) | ⚠️ Unaudited |
| AutoCompound | unknown | base | n/a | 16 deployments: base [`0x06f64f46415aa307c46692f73fd85649086bd7b9`](./contracts/base-8453/0x06f64f46415aa307c46692f73fd85649086bd7b9/); base `0x1218bb17d6650b7f9dbaac0241ceb6ec0b6add80`; base `0x16d89bb855a8801775c4179339fb812a4f6f48f2`; base `0x31d3c6081d59ed3335ae48b1ea07bf7f809a43c2`; base `0x3f0a5823523b6e6097b8f80d358401df1412b43e`; base `0x46396ebaaf17deeb90469de4f0814016270f7cb7`; base `0x4a2d241fcad7b736f709c306c0540a2120a41357`; base `0x4d2f64e1f28c418e386ccf0a49b18bb89deea3e8`; base `0x5953942af51ab50a9dbf352c78a3074a98205aa0`; base `0x5b1c319f52ff939ac8f61f895210d46bb51e24aa`; base `0x91a7fdfb6cb09cf72323769ed61a0a22d73c3cae`; base `0xa148be8f41bddb9c827f2af3ba397ac4fce26ba1`; base `0xbb94c224586b08ff2a6c76ab34980745f6047ae5`; base `0xd6bfe1ce777511716125eeacc25c6303a56ec349`; base `0xdf46f1406434e5258d34a0c769d9ec65b792f185`; base `0xeaa2885a32ec5da2dd9892095b97838301d407d1` | ⚠️ Unaudited |
| AutopoolETH | core_logic | base | n/a | [`0x9c6864105aec23388c89600046213a44c384c831`](./contracts/base-8453/0x9c6864105aec23388c89600046213a44c384c831/) | ⚠️ Unaudited |
| BeaconProxy | registry | base | n/a | [`0x611745c9107d0197f161556691c5129fd9b898d1`](./contracts/base-8453/0x611745c9107d0197f161556691c5129fd9b898d1/) | ⚠️ Unaudited |
| CommunityRewards | unknown | base | n/a | 2 deployments: base [`0x3c113d68c2eeb665c2219b26d3090074e257e46d`](./contracts/base-8453/0x3c113d68c2eeb665c2219b26d3090074e257e46d/); base `0xe63f5ff2d54118c158fe0e27b226aa76da109aa2` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | n/a | [`0xa456c77d358c9c89f4dfb294fa2a47470b7da37c`](./contracts/base-8453/0xa456c77d358c9c89f4dfb294fa2a47470b7da37c/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | n/a | [`0xbdae5df498a45c5f058e3a09afe9ba4da7b248aa`](./contracts/base-8453/0xbdae5df498a45c5f058e3a09afe9ba4da7b248aa/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | n/a | [`0xfc81dfde25083a286723b7c9dd7213f8723369fe`](./contracts/base-8453/0xfc81dfde25083a286723b7c9dd7213f8723369fe/) | ⚠️ Unaudited |
| EVault | core_logic | base | n/a | 4 deployments: base [`0x085178078796da17b191f9081b5e2fccc79a7ee7`](./contracts/base-8453/0x085178078796da17b191f9081b5e2fccc79a7ee7/); base `0x0a1a3b5f2041f33522c4efc754a7d096f880ee16`; base `0x4c1aeda9b43efcf1da1d1755b18802aabe90f61e`; base `0xc063c3b3625df5f362f60f35b0bcd98e0fa650fb` | ⚠️ Unaudited |
| ExactOutSwapperV2 | adapter | base | n/a | [`0x2ad9914cb303c4797ac513e6b736c9ed286b6a7a`](./contracts/base-8453/0x2ad9914cb303c4797ac513e6b736c9ed286b6a7a/) | ⚠️ Unaudited |
| ExactOutSwapperV2 | adapter | base | n/a | [`0xf016fe66103c2a9f3d156fef32d2da8db8e38ad9`](./contracts/base-8453/0xf016fe66103c2a9f3d156fef32d2da8db8e38ad9/) | ⚠️ Unaudited |
| Execute | unknown | base | n/a | [`0xdbdd7b8a8747904f53eb7aef655a6ff81e2c306a`](./contracts/base-8453/0xdbdd7b8a8747904f53eb7aef655a6ff81e2c306a/) | ⚠️ Unaudited |
| FlashloanLiquidator | operational_periphery | base | n/a | 2 deployments: base [`0x6bcb1ae7b3aec6086066dc4348dc679c93eeac5b`](./contracts/base-8453/0x6bcb1ae7b3aec6086066dc4348dc679c93eeac5b/); base `0xaa4a65e04496d94919ff029606591051e3716673` | ⚠️ Unaudited |
| fToken | token | base | n/a | [`0xf42f5795d9ac7e9d757db633d693cd548cfd9169`](./contracts/base-8453/0xf42f5795d9ac7e9d757db633d693cd548cfd9169/) | ⚠️ Unaudited |
| GaugeManager | operational_periphery | base | n/a | 55 deployments: base [`0x03486dd203b725337a0ba72ea60f26c3966a0e11`](./contracts/base-8453/0x03486dd203b725337a0ba72ea60f26c3966a0e11/); base `0x071e48662d78085a4073e2772335759757f0e3a3`; base `0x0bc5e4b1be764a8d325cc7be9b5d6827cf03fb2b`; base `0x111559ed297239c921338d6e349a9815f9849cdb`; base `0x1462a8bb4aa4bc32666e4b697893bf20c4ac600a`; base `0x16fec3e95f9ed515c5971c01ff9008366ab84338`; base `0x19f92c572d0cb8e9e27ad80ea1b4cdb8a194ba04`; base `0x1a2b34e824b779fcca100eb6ea8a5a82a39dc4e8`; base `0x1ac20bd4e85573abdb4c6bdb47e676541f9d11b9`; base `0x1e9f312a4515bd779eb355e70433e0b37518242b`; base `0x1f44aa4f0925a97aafa5f992ba70122e069b25c4`; base `0x233da915abf825393ce6f164d70ebff984c95673`; base `0x2365c3bdddba5ce8fd0eeb0aa371d321bc527615`; base `0x284b809f194eea237561c75eaf4090613f061743`; base `0x32eb0ff84ae13fb2d0a7a0d173e69446edbd88c4`; base `0x3411e48290826f47ea376a24d5168bbcd7856b7d`; base `0x3a9cb8c9b358ed3bc44a539b9bb356fe64b08559`; base `0x3de4534a5a8a7117fd52696dc46e81f5667fb0fc`; base `0x3ef141442ca8133c0098c5dadea7309b610f63ce`; base `0x5b6ccd0f3238ca2a1a4a9bfbc2d06efe2b8a79ab`; base `0x5c9a7d105b607d09162446b9b94cc0145e7f5d82`; base `0x66a2481b784cf26103441ca6067f997f90d3e129`; base `0x6eeee423297481ce9e4e007e191e789ed3b4da21`; base `0x75e77d54a14d5336827d5f2fff4534f377d54025`; base `0x779657616999713444469131536875575d7c231e`; base `0x7a5d83f557f75aeed350872d052ccd7e43e7f471`; base `0x7e3db255fe8e6629cce2f34639a6f75ee4aa8be7`; base `0x7edbfcc5c03a8482b73091cda893fa34d63585e4`; base `0x7f6b6080f0e5982e520ffbea72fa2b9e56a95e68`; base `0x8131cc40b2c3d704f90d0d56ac9d77590ed7855f`; base `0x8508f916dbf0b3e1819f0e582b953527250dcfac`; base `0x85cf3b3ceecde6d0330efd4ac53e764cc000159e`; base `0x8abc86a5ba8be6e3c1a9437aa45f215844000ce7`; base `0x90ab972b3fde682ba58f4cf0c15f404e3ca8644f`; base `0x92687770ec6ac0a1ce6e12b27c83f911a413c16f`; base `0x96beb0075f0e86ff99fd4883aa454752b28c35ca`; base `0x9d01fe804ffb769c169b746e49bf0f75db4bbfa5`; base `0xa2754543f69dc036764bbfad16d2a74f5cd15667`; base `0xa38ba047e554bf5b9e046894e1cd7ac032e10c7a`; base `0xb14384a2ad9424400cee5631f1bcb9d0cc4d6615`; base `0xb8a43dc239f986ab3bf73b9f99ad5e62a52edc7b`; base `0xb922131d2614902a6d995d6e0c978ed37150b165`; base `0xbe08ff47cb69abeb7ceafb066e017b4088d237ec`; base `0xbe28684605addcf997f52daf7057f3f57291ad19`; base `0xbfe23ebd3756b531411fcc9d8a73d13c97b2bd3b`; base `0xc010d054ba80aa416cfb0f385428aaaef7f9c9ba`; base `0xc311bef0edb2f2a91429d195bb58070857f027d2`; base `0xc92c015861ad0e7216df9d1a01a1ab07d05ec8c8`; base `0xd37cfe20320f0f5e0f123a47fdd0d08ba16d03de`; base `0xdbc592dd850555c08c544df2358441df6a79d141`; base `0xe6999112cdaeb33b63203ed2f2eca8b82c683e8c`; base `0xe7a8d95542c8d8ea341d7ef52c3cecba948e24a8`; base `0xe8e4f06047e6941a93840eaf45e79fca2bc6715f`; base `0xf10b6c658a9cf2d39380932dfeb9db34138dfff8`; base `0xf3e49ebb9d4d12ed74f0de2bfb0f33113e87bb92` | ⚠️ Unaudited |
| InterestRateModel | operational_periphery | base | n/a | 59 deployments: base [`0x03688efa97662d3a2fc7be8a322e02d4810053f9`](./contracts/base-8453/0x03688efa97662d3a2fc7be8a322e02d4810053f9/); base `0x049c4bd0b173909b0a016d95bbe572e971f6767e`; base `0x04fd015175a6a90528e9694c304a848bf7c4fa85`; base `0x084531c07863b829dd65299bd5453fb8028d2923`; base `0x089d27189a43dcae283ee16f8c125e426b5322f0`; base `0x09e49a044b6141ad21d9c58630feceeecabcb41f`; base `0x0cf4d58ef7df50135a4793326b1c570a8592da7f`; base `0x108885122cfaa25b6bbdff8683e4c57de29e2527`; base `0x10e98166c6ddee5c98b54c61ba9f68adc7729fe2`; base `0x11f87754c4f9602f65bb81ca4a26998f9a71872e`; base `0x180044d880d18a7a4f9b1bde2027250602fc56c4`; base `0x1905d50f7e92e77d5da427c7ada5eeadc9182553`; base `0x20d3c83101ae2772bb7799ddb2c884d8809abc2b`; base `0x22f1d44e21f271207aee766353337699dec87f42`; base `0x2774e0bdea902a3d789b68cd596e5bb0a4a98e7f`; base `0x30c4341c17aaf442d549658132179cf528c47719`; base `0x364606af4e21adc5ce039521e7a5b217d1630fc7`; base `0x39b583ee5913cbeff0fddcdb32528c34499d481a`; base `0x3ab6af6ace299bb623364c600df8c1c42da9ce57`; base `0x4139d4d40bb88d51809b8bee0fbd791d7bb5dd72`; base `0x414690e77a1fcfc2e2086260b6b9fb8cafb9d283`; base `0x447a68d33be002b4660ee41554a70ea12aacf7ee`; base `0x4560754818fa9460a570800ab5957f88825a4276`; base `0x61ad778d9a1adea6ba7614a460088bd713204415`; base `0x65aa452d39f7abcedbea5d8fce5198d3a55f0fd0`; base `0x660588965eb31a1425042fa7b10f1aaf654aa715`; base `0x70079c3c26f5c0e6e86b03d969c491c9afbfad7a`; base `0x71b45d25ddc44bf040e1e7c91c55264b5a6104cc`; base `0x7655479e58455738d56bc5151f5c8b9ce90898ce`; base `0x76c9aec0ecd5a12cf732236ed6c0b7ea49473519`; base `0x775e3d284de29d1ba7e6b1d72873a33a380a12d3`; base `0x7b9b1fb6c10201403eac4ce828c16305f3b6f35c`; base `0x7fcef7ea3d81661517344cd3f8ea5867484b052c`; base `0x86dde721c4c365f826b58e0c57f62104935f4ec9`; base `0x87d676f269cf19673f1bf258ee2eba2e64d0039e`; base `0x915dde968ed90a8cd2e1af0ae5d5d33585af3350`; base `0x93463eb03a73d4a1e93b23963c30d4ac792bf4e3`; base `0x948ce97edbdcf1a941367d11b7c05a6d35bc1138`; base `0xb1bbe8e224ca7fe50de15d02d289fdebae6664fc`; base `0xb3aeb2c275b5193b35ec4f95a21145c65cf2372b`; base `0xb547683e0697282daaecb558816112169e11f0d5`; base `0xb6845c4690b2103b19cc4cff2124708a08550be5`; base `0xb80fec7e825ee02643d807ad5bebdf548f7e78c3`; base `0xbf25a8accfafb8601558699d779156045363e739`; base `0xcddb011c2b037f18e75a2dacb5ef08512747fa70`; base `0xd0524a77c8e2bd22b1f57268fd6bea1973ac7927`; base `0xd09053a11e07609445806a9581f2678cbf73af52`; base `0xd1909c692af0576dcf0f62ee6ab7cf5a797aecff`; base `0xd24c18c25204128955a8773d8016b404fac7577f`; base `0xd887fb8a10aa897aefa990201ed555467f9d60ce`; base `0xdcd43599b788e7a1bd4e50a9070440087ec93f3e`; base `0xdd34a16b2601b3768ef783354d524dcf8b6fc1c5`; base `0xe2ebb8eb324d8fa1353b2adde3ee21a250a839cb`; base `0xe6ec36b7260f98ecb716abf0bcd003940ff27523`; base `0xe7bf8fa0bcd1edfb99d6feed9662d78c6bdf81ea`; base `0xe8b6368dd6f8f08b0e2dc980e66f48ee2f622c67`; base `0xf24139cae7f3d53be45660090b128dfec26bfabe`; base `0xf44ebd7c9d4461418856d3f440726b4f0450f2ab`; base `0xf535632bbd434a1cc6d94bde20bd1b0e65dd35c4` | ⚠️ Unaudited |
| LeverageTransformer | unknown | base | n/a | 59 deployments: base [`0x05981339909992a8d9d13e8c651e54f306ec4e98`](./contracts/base-8453/0x05981339909992a8d9d13e8c651e54f306ec4e98/); base `0x082de29892c23abeebc76496eb1a41201f8b95a4`; base `0x086dcacc22f15f7aa824334e19b1d7e32e6de157`; base `0x1535ea36b2eeabb6e26feda576c59f64320db30a`; base `0x15c1f75dfec62d8dc1d2201c65eb5851220dd5d6`; base `0x16ea81e48a5e4eac41cbce0c210532f52a98bc92`; base `0x1d4f04fc6aeb73907f3984d087a36a38635fb7be`; base `0x21cbd9d62a822f863bca8466153bd84cb479bc51`; base `0x26581732e52870c819657f155116a4d8fdec3bb8`; base `0x26bf32663cba2f53941aa99de37e00e276259875`; base `0x2827cb0bbe8e84ca7079bba6c079542da4dbc07f`; base `0x2d470db8e7dc37105924687ad5a06a659f1c4dfe`; base `0x2e20e1c42aaee5c88aad5adb2d63a75281a3d5e7`; base `0x36fc9c45b94776ae0a01d3389020590da49b556a`; base `0x40b8e697204099f4ad08a48ad42e2bb6ca7abf48`; base `0x416f315384ff74ed4beb29d68e975fd4748a24b1`; base `0x44138ed8a900d0a3872c688891568adacb4d709b`; base `0x45085afef83df8d7ecac61aa632dfbec040fd1f8`; base `0x468695c0e0885591cf441126cfd77852c99f0d0d`; base `0x50d58c57f3faffc52a7fcd7772e44e3425c28b63`; base `0x5130511646ce542979d561ae2d3d30359edaa022`; base `0x5253a57184d5e9ee08ea29f85b13cecacd8d4d85`; base `0x52fff38682cb978d59a8b0eae24875dd1bea79d6`; base `0x5964f2e1753469d3a125cd8adca55bccedb099ed`; base `0x5d45ead42c8ca8b727408306db5ccfadb7ae52b8`; base `0x5e97a478184993d3e376eec00b603f80463d9b23`; base `0x624870cbc7f540574cd9746786b3466f4f61bf48`; base `0x674afc4d8a04984ba8c64858e9a833f5375a045c`; base `0x69193c4b2011870d78f7cb7463d4c8c2ef18562d`; base `0x691f843b9d1ce1b282149440771a3a4341c1c188`; base `0x706d3e782234ca8459e8650b7d1688dda76d951d`; base `0x73790214182d339fe80724e2f2c3f76d09c8e878`; base `0x787fd54554606b9c832063cb77537e535d582c4d`; base `0x7c29988283361516e916ed5fb4ff020aae2d363c`; base `0x969df52695d6223adba3ed012c7bee89026970c4`; base `0x9743e3db2d0c110530e617f67c848881b5ce2a3f`; base `0x97b02f05664283b012b7dafad8d877b76f0ed481`; base `0xa4bcaf31e988dc875306b88abee65c89e4adfd83`; base `0xab95a138916aa46e7ce0f2081d729735dffcb604`; base `0xad7e16cddddf62f9a9403177007285c1515daaa7`; base `0xae53b360ca8b47a4cd76a6f9554c74cca701e9b7`; base `0xb2f65fabd51b2acd84c3369a64da035300284471`; base `0xb3562ea4019b41fa5af3fcf10c75460285b35546`; base `0xba8619b42c467dfe7544edcb15362047e1b0a129`; base `0xbb8bc23d6866f39c0c180e67c9cf3aba403c4286`; base `0xc138d1f6391c96fbcd3e88a4f9d404007666722e`; base `0xc2a0e231ff096da553e62627152b47edd6354753`; base `0xc8fd28af526e6b669e3fee0860123a560a103029`; base `0xcbc1022fe35c3ef41f93a0205c60253a90173b5d`; base `0xcbda6f78898f5ceb1217980a238bd157f7c0b804`; base `0xd899e0160fd734b1436cffa6be389400bafc8fe0`; base `0xdd10fa1e67c85bd423771913679d501287d9449c`; base `0xe0c65897fafcaca42e2bae01870cc29a9386936c`; base `0xe328d8d7109d86d914fda7818a9bad2158873f07`; base `0xe44de5350acfee3e7bf285a146cb69868de8a998`; base `0xe5c8ff84bc30f0b45c8a0fdec6429af017b98ce7`; base `0xf47d5da4b35f80f90eb24bf6865076e62c3f5b68`; base `0xf84ef1849671020684ed1c428166944506404c7a`; base `0xf8d45668aec5a8a8e9429e770f6987f40b80da51` | ⚠️ Unaudited |
| Loan | unknown | base | n/a | 8 deployments: base [`0x371d2b977e9f3b780ee0a032ae664edc5db234e1`](./contracts/base-8453/0x371d2b977e9f3b780ee0a032ae664edc5db234e1/); base `0x3addab0925bf311b6de8e5231a7d66052c7657fa`; base `0x8b51e596921f92bdbac1062dab94dd2df2836d9d`; base `0x92f4cf4067c1068cfa1622da14099640dc408f0b`; base `0x9c0fc730e14068a2fa4790525f85602188391d32`; base `0xdd9b03c5eb95531448b47cc8466f2b3822c735c3`; base `0xebeb86b5d9df1594bfa2d3d6c982b8e990a29708`; base `0xf6a044c3b2a3373ef2909e2474f3229f23279b5f` | ⚠️ Unaudited |
| Loan | unknown | base | n/a | [`0x87f18b377e625b62c708d5f6ea96ec193558efd0`](./contracts/base-8453/0x87f18b377e625b62c708d5f6ea96ec193558efd0/) | ⚠️ Unaudited |
| LoanV2Native | unknown | base | n/a | 5 deployments: base [`0x2acf5cde1f0ccaed7cc9b457df0232eb87cacdec`](./contracts/base-8453/0x2acf5cde1f0ccaed7cc9b457df0232eb87cacdec/); base `0x71a28faed365f65ce924ce8810a14139f8476341`; base `0xe2addcb41d3a03a9761fb2110dcad99b6ff7e108`; base `0xf535d5e8e65c3959135ea0eb12bfe38c3a5caf27`; base `0xf755ece7eb7035c935d9de4b7b56bb4846f249c4` | ⚠️ Unaudited |
| MetaMorpho | unknown | base | n/a | 6 deployments: base [`0x12afdefb2237a5963e7bab3e2d46ad0eee70406e`](./contracts/base-8453/0x12afdefb2237a5963e7bab3e2d46ad0eee70406e/); base `0xbeef010f9cb27031ad51e3333f9af9c6b1228183`; base `0xc0c5689e6f4d256e861f65465b691aeecc0deb12`; base `0xc1256ae5ff1cf2719d4937adb3bbccab2e00a2ca`; base `0xdb90a4e973b7663ce0ccc32b6fbd37ffb19bfa83`; base `0xee8f4ec5672f09119b96ab6fb59c27e1b7e44b61` | ⚠️ Unaudited |
| MetaMorphoV1_1 | unknown | base | n/a | 11 deployments: base [`0x1401d1271c47648ac70cbcdfa3776d4a87ce006b`](./contracts/base-8453/0x1401d1271c47648ac70cbcdfa3776d4a87ce006b/); base `0x1d3b1cd0a0f242d598834b3f2d126dc6bd774657`; base `0x43e623ff7d14d5b105f7be9c488f36dbf11d1f46`; base `0x5435bc53f2c61298167cdb11cdf0db2bfa259ca0`; base `0x75e1a1f9535c01cdce25e51ea4aff0d171337e1f`; base `0x8773447e6369472d9b72f064ea62e405216e9084`; base `0xbeefa74640a5f7c28966cba82466eed5609444e0`; base `0xbeefa7b88064feef0cee02aaebbd95d30df3878f`; base `0xcddcdd18a16ed441f6cb10c3909e5e7ec2b9e8f3`; base `0xe74c499fa461af1844fca84204490877787ced56`; base `0xef417a2512c5a41f69ae4e021648b69a7cde5d03` | ⚠️ Unaudited |
| PairInfos | periphery | base | n/a | [`0x81f22d0cc22977c91befe648c9fddf1f2bd977e5`](./contracts/base-8453/0x81f22d0cc22977c91befe648c9fddf1f2bd977e5/) | ⚠️ Unaudited |
| PartnerFeeManager | governance | base | n/a | [`0x25f32be475f6499b0d60d665688a2e4f8e0bb4a5`](./contracts/base-8453/0x25f32be475f6499b0d60d665688a2e4f8e0bb4a5/) | ⚠️ Unaudited |
| PartnerFeeManager | governance | base | n/a | [`0xf0714a3e2f4d78ffc1b400bfdacb7b8869bfe1be`](./contracts/base-8453/0xf0714a3e2f4d78ffc1b400bfdacb7b8869bfe1be/) | ⚠️ Unaudited |
| PerpManager | governance | base | n/a | [`0xec3e4e0fdb50411f4c5ee9f75436d8b20cf7d70e`](./contracts/base-8453/0xec3e4e0fdb50411f4c5ee9f75436d8b20cf7d70e/) | ⚠️ Unaudited |
| PriceAggregator | operational_periphery | base | n/a | [`0x64e2625621970f8cfa17b294670d61cb883da511`](./contracts/base-8453/0x64e2625621970f8cfa17b294670d61cb883da511/) | ⚠️ Unaudited |
| Referral | unknown | base | n/a | [`0xa96f577821933d127b491d0f91202405b0dbb1bd`](./contracts/base-8453/0xa96f577821933d127b491d0f91202405b0dbb1bd/) | ⚠️ Unaudited |
| Swapper | adapter | base | n/a | [`0x0638add2b856e0a6157f2bae3aa08c2923c83982`](./contracts/base-8453/0x0638add2b856e0a6157f2bae3aa08c2923c83982/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | base | n/a | [`0x08292dff21e8f5ed5510a82cfca5ee141274503d`](./contracts/base-8453/0x08292dff21e8f5ed5510a82cfca5ee141274503d/) | ⚠️ Unaudited |
| TimelockController | governance | base | n/a | 3 deployments: base [`0x36bf9981ba905ca63bdd3271775db43cc57eb1cf`](./contracts/base-8453/0x36bf9981ba905ca63bdd3271775db43cc57eb1cf/); base `0x47768309db25b1e4f6a402cae0a39aa3dbbada13`; base `0x7814ea7f5aafe6064225d9d73d16ae249477ae49` | ⚠️ Unaudited |
| Trading | unknown | base | n/a | [`0x5ff292d70ba9cd9e7ccb313782811b3d7120535f`](./contracts/base-8453/0x5ff292d70ba9cd9e7ccb313782811b3d7120535f/) | ⚠️ Unaudited |
| TradingStorage | unknown | base | n/a | [`0x8a311d7048c35985aa31c131b9a13e03a5f7422d`](./contracts/base-8453/0x8a311d7048c35985aa31c131b9a13e03a5f7422d/) | ⚠️ Unaudited |
| Tranche | core_logic | base | n/a | [`0x83084cb182162473d6feffcd3aa48ba55a7b66f7`](./contracts/base-8453/0x83084cb182162473d6feffcd3aa48ba55a7b66f7/) | ⚠️ Unaudited |
| Tranche | core_logic | base | n/a | [`0x944766f715b51967e56afde5f0aa76ceacc9e7f9`](./contracts/base-8453/0x944766f715b51967e56afde5f0aa76ceacc9e7f9/) | ⚠️ Unaudited |
| V3Oracle | operational_periphery | base | n/a | 60 deployments: base [`0x06a1ebf7e086c69c11318486c967f24f0d073a7b`](./contracts/base-8453/0x06a1ebf7e086c69c11318486c967f24f0d073a7b/); base `0x08d9206dc8ddf2b4d78309a1a19f67241b0bd1bb`; base `0x0a922830c4329a3ae79901ec7885d90657ea7db3`; base `0x0bb922727a3a00cff2f9eec78418a7447959cabc`; base `0x0d16d5316c9ec63689b78d6afb43b676766804b5`; base `0x0e752029b8262327b413ff417a83e17c4e8df829`; base `0x14b0b9120ffc7e63c89e01566b7da986d660625e`; base `0x1572f985bd203eabc2ae14cd436d5b7bdfe91e22`; base `0x21df5847e3d1f1ef41c89f4ba6f8f0cca61af9e2`; base `0x298816603d27879d3008c84bcee288205a70a6db`; base `0x2d2b853b178f3d1e3410ef65c34eab7e94bf1bf3`; base `0x2e300fe2a2ebe87aec97dfc6db54b60d5296757f`; base `0x31c8ae1e4d7a1788536ac19c92ce3ebae3f4731f`; base `0x3679b7bbb1c16525148c94f0d44c0133418ffc21`; base `0x42ca6f4d891b988c4f21bcc991c7258aec0ea1ee`; base `0x446d5ddf58a541d4f4da32617d39ef4c7b65762a`; base `0x4652ac812874ce9cad61bfde694ebaf84d081260`; base `0x46df44691c040a3d31ffd6644e745e110111fd01`; base `0x4d1f01a76b1be532154f3531ad1dd3931f14ef60`; base `0x4ec09a92d7ad1639c4714e2e14b09c6b555fbae2`; base `0x52fe739898c7ad9f4df4efa00a42b334eb810e5c`; base `0x5358b4e981e3020404a8a98bad68ecece10e4af0`; base `0x56e88640eec31e3a8d0091adef29c892bac8cf6d`; base `0x57282692319c8b8b6a292428dd99c7b748cd3a67`; base `0x5a6cd5e1afd72ea6c80e62ffac9c2d788c19e7f6`; base `0x5cf66918855457266338ded97566f2b2e5e35984`; base `0x5d1e743c3b7b8a952392d19902cb636a8446bc57`; base `0x5ec4214c022d4a1a6c293ca6a613eeb30244908b`; base `0x6014db5542cb8d9f155d3abdbdb9b34bed5a63a9`; base `0x6e28dddd0361fb857818dafb0be06e48c9388100`; base `0x7c73a666e62c2f2a8f750ad1f88ae80ce9efcff6`; base `0x82e7881797a7e79a83cfbe9607ecd82e8bbb67c8`; base `0x896a2feb2cd936b4083e8d13390da2dc78935279`; base `0x90af66c9cf41df3d281f5ab6cf86e2a1619423bc`; base `0x92105474ab102741a73481a40e361d9898248d7f`; base `0x950fa01731b20893439064ced69bda984ffc1d47`; base `0xa1e6d9d906b148b1767bcf04bf7065bc85479285`; base `0xa33f14f1cf02d741e36191d87de64a32bc9a691b`; base `0xa53f1d98824d44d4f3d0aa170a5fdb89755ac178`; base `0xad6239235ca1f512c205bcb772db6116363cc096`; base `0xaed99727d7cce74101f654be79671536e09aa7dd`; base `0xb077e7b9fa2a0f1045316426ce16d87ac0853b54`; base `0xb2fe049f32f1394a1f9088cf93320bf3adc148ae`; base `0xbbaa5afec5d31c748537e3ced7fdf1752b5c893f`; base `0xbefa9d5ebd5dfb86a26694811b4c54ad29a8c988`; base `0xc128e9e66ca3c8135b55906838c6201277077db4`; base `0xc27d159513c951e6e9713cc916fd6b783be85521`; base `0xc38f80096ead25adde7ab88df5267f3c0becbd0d`; base `0xc43d787af0f57328da3fd4f0dd9b3b600dd4f91a`; base `0xc5664a1b5a96b6fca3c837be3029796158a32d4f`; base `0xc7037f66b6572e605dd7609a850b68b1e7ef666f`; base `0xcced0bdddfb6301ab09899d4829228845dbc310c`; base `0xcd2e4fd7f632be22852a5dc436b336f0ce168ec1`; base `0xcf33e40099fb20d8dc6729ef8dd9f8633a779967`; base `0xd29e128c4f2222de8dad9762f269a2a3307712af`; base `0xe865a28c24cdf7d79b5d42d78bc730da8562c929`; base `0xeccfe1cabfa17d4684d5244e594d4ccc1d7d9eb8`; base `0xee49e448c7992719c48e76412e10d8f806365131`; base `0xf3b0abf511ba6c993b39c1f4ad72b5fb18a1d4d1`; base `0xf3f647f03dd6cc68a14661c1349fbadda6d05e2d` | ⚠️ Unaudited |
| V3Utils | unknown | base | n/a | 2 deployments: base [`0x7d1f9fc22bed0798cda3fdb18b14a96fc838b9e1`](./contracts/base-8453/0x7d1f9fc22bed0798cda3fdb18b14a96fc838b9e1/); base `0x98ec492942090364ac0736ef1a741ae6c92ec790` | ⚠️ Unaudited |
| V3Vault | core_logic | base | n/a | 28 deployments: base [`0x02c51413a0c76af2c71d74cfadb414a0ed1528cd`](./contracts/base-8453/0x02c51413a0c76af2c71d74cfadb414a0ed1528cd/); base `0x1625d8ec0eff80cbcca49cd465ae11a2b318971f`; base `0x22ce292d882c7799183949509b011512352454cb`; base `0x2736e689d5828d89f7181895def8c6518c5f302d`; base `0x33a8abf9ebc9d971a231c71402ba90e8d9c901a6`; base `0x348633df128b52d55952adb865d1b67c3eaa988d`; base `0x36aeae0e411a1e28372e0d66f02e57744ebe7599`; base `0x3a23ec541901fb0ee5e43e5ac2f2ca5697563d3a`; base `0x4aba43594236320c85976e75eaa2cc660041904b`; base `0x50a854e1c996220cfe7bdd0667cd5d2641ac154f`; base `0x5166463c55710260f8c45a035a1a49860722a7a0`; base `0x55fe009244938d68f9ec13ad900b680bbf7a2619`; base `0x632fff4a31aefd42ca372071c94ec571c6dc6564`; base `0x77f769dad2e036cc675c1021e8b7317a590fc5f4`; base `0x82132b2660e6846e07fb176d23d1bc391931c758`; base `0x93db99aeb08e44d21f4eb2af247b9dc6f1eccd26`; base `0xa1ccfb5b47fa4e5c403aeb0aa45f1b8047005859`; base `0xa2ffbeb14e0156712ee74c9e60ec03f68a8f66b5`; base `0xb0a1a917a142d1fdca4d37d43bdd553f0e53a639`; base `0xb4694159ef30fa21bcc9d963c7fa3716b0821e38`; base `0xc09d7d451bc07becd8b8fe1e6a03ff4974c69084`; base `0xce56140e8eed0cdd2c6407abb980f2e0e9d67460`; base `0xd4c6175d01970d005c0233e9e30bc4613bb06156`; base `0xdfeba94bc072294b57bd80451f2b65d729a55adc`; base `0xdff54fd62bfd681e707cce95579447721e994054`; base `0xe91793e53965efb045fe2b8a9e40c89d9617c3d9`; base `0xeca1836f6b1580fe15f6ca70dfaa4e39c83e6466`; base `0xed8125d6941c8d7b23d933892a1f505152cf9d55` | ⚠️ Unaudited |
| Vault | core_logic | base | n/a | 2 deployments: base [`0x053e49f058851bb56469ebce4905b320fe19e3e9`](./contracts/base-8453/0x053e49f058851bb56469ebce4905b320fe19e3e9/); base `0xb99b6df96d4d5448cc0a5b3e0ef7896df9507cf5` | ⚠️ Unaudited |
| VaultManager | core_logic | base | n/a | [`0xe9fb8c70af1b99f2baaa07aa926fcf3d237348dd`](./contracts/base-8453/0xe9fb8c70af1b99f2baaa07aa926fcf3d237348dd/) | ⚠️ Unaudited |
| VeTranche | core_logic | base | n/a | [`0x6914110efe4e61cfa0f28de5f6606baa33d21693`](./contracts/base-8453/0x6914110efe4e61cfa0f28de5f6606baa33d21693/) | ⚠️ Unaudited |
| VeTranche | core_logic | base | n/a | [`0x7bf094c44b3cff8c95e06a76557443f5408efb05`](./contracts/base-8453/0x7bf094c44b3cff8c95e06a76557443f5408efb05/) | ⚠️ Unaudited |
| WasabiRouter | adapter | base | n/a | [`0xfae69f2c82747f878f74c1e57a1aed945ed8558f`](./contracts/base-8453/0xfae69f2c82747f878f74c1e57a1aed945ed8558f/) | ⚠️ Unaudited |
| WasabiVault | core_logic | base | n/a | 80 deployments: base [`0x00d7c86c29f11206cae7f30951047bd278990ea1`](./contracts/base-8453/0x00d7c86c29f11206cae7f30951047bd278990ea1/); base `0x04acd5f315562284b2f70abd06adc139230f5d30`; base `0x091a22979df5b3393bc9a53f49374bca2f862eda`; base `0x0da575d3edd4e3ee1d904936f94ec043c06bb12b`; base `0x0e54d31f84b0aa4638b9a57572edeae1488f0939`; base `0x1140732f229d89592f256d2b3c251793feda64dd`; base `0x11a03038a94d8540d4c5d1aaccd74a69688fc212`; base `0x12c9de7c7d16b7c9bc6e2c7c5e38381b46f9cf49`; base `0x181dc306249f521657bb52efdfdb0ac3e8cbeb13`; base `0x19793485df8484646d1e5c7b3fe7321041181313`; base `0x1e5f25983cf46f86a75b24bbadd7e0a087aa3915`; base `0x215c8d1ab5bcaf172feb7f4b4cf618973af584ba`; base `0x228dca5b1ab36b61bfe2215fe88aa60ea76d192f`; base `0x277c83a5ec25a3da4f3fa71ce1a86b6447ce3ddd`; base `0x2a3c708b6f1df4535db37614c33f109157f9b442`; base `0x2d638c13a9c3f6e3ac7a9e7ac27f03d2e1c54f16`; base `0x2eef8243b231fb93600e3677738b1e1c6152ceaa`; base `0x313409b70a2a6bd149ebe632634659b0dd0b8b2d`; base `0x3733b6804834bf701b19ce5297293cc48cdad959`; base `0x38ba55103afa011769d65381f1fb3d51b20d9865`; base `0x38dc85f3ae4d0d1bb25e873e29c4d5033b384939`; base `0x3b55875a566cd68af90d0b225b5ec9844c1cd8ce`; base `0x3bc860e1db72da9c7ac52d25eeaae85b887f9792`; base `0x3edc1f55d47ff2095216be0f081d907513f3863f`; base `0x3f47af8902dfe25736005b589aa6b8ec40d089af`; base `0x42011d686517cf45e7397c339e9703f54d2e695e`; base `0x4bd3c99d0a79821558701dd8bda72f362de3765b`; base `0x4e8fb8196c765aee1885e71528d244c9d9eb2a2f`; base `0x4eeaed57fbb562cc83d9b8d67ad7f4a231df99f6`; base `0x50afcb5769b8172b756a683bd5cea2900f874687`; base `0x52c88e152ff3551c9c7e4313e98c9dc0a17b2a40`; base `0x542b5dea7c814718ceba73a779127f453893b191`; base `0x55dcdaced7e76d3b3f26eb4216f377c5071af8c2`; base `0x5955cf324283f675848c2734a5c28665bea8cb60`; base `0x5c9258ffbb93d0d99e18b5e72af6c19b579806b0`; base `0x5caa336eb22169c0be3e2bd9e35c8220316c1c2e`; base `0x5f164bae58afa045a8eff8395f2f23ea4b1922da`; base `0x6378a7ffdeb29c3faaced4a44fd82d2359142afd`; base `0x65d8f66537d9497a90ba307f45c1914fb97e94d2`; base `0x6655cfb05f755aeed1d812ac1b344c63a2160f66`; base `0x699cbfed500bd793c5630ef5242ea3948c2dba2c`; base `0x70b808b8e87153b7d2df5ba18bb6aae52b4f979c`; base `0x74b1e4cd04ff9050378aa4a50122cbe3d739780d`; base `0x76106b8d542c84e44845e92cb717835c9d364a95`; base `0x7daa6cdc6d758bbf61e82bad17dab7df3d880d3b`; base `0x7e7d9a262fd841854680b26f585ebd5b00869c94`; base `0x82ff77ab1e41242a7a1c3c4abf1dbbe0dc61dfbe`; base `0x837277a3f10617b6728e64fe8bbe39566bec208c`; base `0x8379dc41795fb1f50f15bcf08c57cafef2285374`; base `0x87b416cec396d0f1233dab5d241ff4fd50ac459e`; base `0x893f9393cc40b259d855b1315db963544cde2c89`; base `0x8d1f90d29ebe420becfc3fc93e998d8f1e601009`; base `0x9a92985cbf3abae6b70b6ae551411e0f5016ea10`; base `0xa10f4d76f19c5ce96eafe87e36b93716c906070f`; base `0xa3480075f3abf26474fb4528b8c08ae379464f80`; base `0xa3a575fa43eb1b6ad393e785ef431dbd53470fb2`; base `0xa3ae97b2420d172b6fb3f7f10953289ab7c2a188`; base `0xabb56620ae17b1a06a11a790d34dc56fc8c3a9d8`; base `0xadac74154febd85a8deb0e972bb26991e8b86a98`; base `0xaec98b9b5e4fddb84ff120f6c543138f6bbd9dd3`; base `0xb1a597b693eb1c843f15485f131eb1d6700bd0c4`; base `0xbcc88965632c84999c29ea4a24588316e7058117`; base `0xbf666865b24c1d64c319fb3e42b58d0a24629cc4`; base `0xc626971985e0c1eee00c95c129924f676cc8970f`; base `0xc84879ac01794fc3bab26b5167e3c287bd1df3e3`; base `0xc857bc762507006c62c1d232173279650cfb4240`; base `0xc8bd3853531dc663a03d8c8b3b0922200b16b5bb`; base `0xcc397465e245290f0c8bbc8fc9509c62d3cdbcf3`; base `0xcc8d0c5f386f28cc830fb30bea57300cc34e6a14`; base `0xcddb2f9224ce99c9707a34d053dd93968258cc8d`; base `0xcfd04fa36e2cb11535fc4be318f45dc03ea8eb6c`; base `0xd7438e9a94c79f51946ef265bf05669a1471d1ac`; base `0xd76dcb65821881f9eafe7fa8d4381584f61af9a1`; base `0xe33cc6783715a4a7c549d3c1664df1f3f95372c5`; base `0xe36530f65efb01f086268a7a76dec63aa6288ca4`; base `0xe8f53b0e5659fb1d925ac69ba79d927bcb8a61bb`; base `0xeb55a1571a8651c6d3922314d2bfdca6013fd4d0`; base `0xeffe2bb4e3bdb3399bcedb5d71271d37a43cea2f`; base `0xf50c6615b6530e61ba15401b597aed5828db1059`; base `0xfb39f454bfc710e92e6fcc5737acd734029cbf8e` | ⚠️ Unaudited |
| WasabiVaultRecoveryV1 | core_logic | base | n/a | 8 deployments: base [`0x078b931f7759ec09d74dd31316c610e09aac94fc`](./contracts/base-8453/0x078b931f7759ec09d74dd31316c610e09aac94fc/); base `0x197d5c29072c1444acb4f0935c219738a47e4a18`; base `0x1c4a802fd6b591bb71daa01d8335e43719048b24`; base `0x833fd94958e35d55f2921f45bee4ae8ac82766b6`; base `0x95c81f13d78449b3a02b39e41f26b18a5597fe95`; base `0xb152e957ab1210153ba0ef07c52f5b559f1ad8c9`; base `0xb8da93ded809ac035c72b543ab728a55017239a0`; base `0xe6c109b1f8052f1977c572a952f66677f49962a2` | ⚠️ Unaudited |
| YieldSeekerAaveV3Adapter | adapter | base | n/a | [`0x2d04c5bdf9ecb7b16833c4d8006c53eb0736baeb`](./contracts/base-8453/0x2d04c5bdf9ecb7b16833c4d8006c53eb0736baeb/) | ⚠️ Unaudited |
| YieldSeekerAdapterRegistry | adapter | base | n/a | [`0x4a5c3cca0ac2a1949d600891a89dd19b35189cf0`](./contracts/base-8453/0x4a5c3cca0ac2a1949d600891a89dd19b35189cf0/) | ⚠️ Unaudited |
| YieldSeekerAdminTimelock | governance | base | n/a | [`0x8e074b7636f6a56097f1f719e708e2c932e23bab`](./contracts/base-8453/0x8e074b7636f6a56097f1f719e708e2c932e23bab/) | ⚠️ Unaudited |
| YieldSeekerAerodromeCLSwapAdapter | adapter | base | n/a | [`0x94565f4c559d146e2a3e1f18bfeb8b2319c6b0c4`](./contracts/base-8453/0x94565f4c559d146e2a3e1f18bfeb8b2319c6b0c4/) | ⚠️ Unaudited |
| YieldSeekerAerodromeV2SwapAdapter | adapter | base | n/a | [`0xa3c92297ed000f2778924872fc5d2cfe341d020f`](./contracts/base-8453/0xa3c92297ed000f2778924872fc5d2cfe341d020f/) | ⚠️ Unaudited |
| YieldSeekerAgentWalletFactory | registry | base | n/a | [`0x9c7410a0facac60850c46ee5b58b518daec95130`](./contracts/base-8453/0x9c7410a0facac60850c46ee5b58b518daec95130/) | ⚠️ Unaudited |
| YieldSeekerAgentWalletV1 | unknown | base | n/a | [`0x32403455357589523435db18b414057d7ce05051`](./contracts/base-8453/0x32403455357589523435db18b414057d7ce05051/) | ⚠️ Unaudited |
| YieldSeekerCompoundV2Adapter | adapter | base | n/a | [`0x3f7de883c831b3f164bdc57855f199616ad5366a`](./contracts/base-8453/0x3f7de883c831b3f164bdc57855f199616ad5366a/) | ⚠️ Unaudited |
| YieldSeekerCompoundV3Adapter | adapter | base | n/a | [`0x66621c39cdea3359c22b6d9de101a3b9d19b3ad0`](./contracts/base-8453/0x66621c39cdea3359c22b6d9de101a3b9d19b3ad0/) | ⚠️ Unaudited |
| YieldSeekerERC4626Adapter | adapter | base | n/a | [`0x3bf2b1e1da1bd2c3d397e9df06b7f717c2f12ad7`](./contracts/base-8453/0x3bf2b1e1da1bd2c3d397e9df06b7f717c2f12ad7/) | ⚠️ Unaudited |
| YieldSeekerFeeTracker | unknown | base | n/a | [`0x26f4bb36dbb42fd38956c6c1e6602a9182c957db`](./contracts/base-8453/0x26f4bb36dbb42fd38956c6c1e6602a9182c957db/) | ⚠️ Unaudited |
| YieldSeekerMerklAdapter | adapter | base | n/a | [`0xda7ac043a74f1f96da01b073743448b6ba2bfc0c`](./contracts/base-8453/0xda7ac043a74f1f96da01b073743448b6ba2bfc0c/) | ⚠️ Unaudited |
| YieldSeekerSwapSellPolicy | unknown | base | n/a | [`0x1ce58b462284b2ee8084ef36030fe03ae89cf3ec`](./contracts/base-8453/0x1ce58b462284b2ee8084ef36030fe03ae89cf3ec/) | ⚠️ Unaudited |
| YieldSeekerUniswapV3SwapAdapter | adapter | base | n/a | [`0x4ad957983f4a419f847664722870f4033c840b58`](./contracts/base-8453/0x4ad957983f4a419f847664722870f4033c840b58/) | ⚠️ Unaudited |
| YoVault_V2 | core_logic | base | n/a | [`0x0000000f2eb9f69274678c76222b35eec7588a65`](./contracts/base-8453/0x0000000f2eb9f69274678c76222b35eec7588a65/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (228)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x0137cff5a7ed63c5fc3aa98dcb0c91940c3f48e8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x030ad5f8a436ac243e8682c8d036cd82bf5a9fe3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0434133f15fa2b2f142565a0d992a7ed4ef62b4a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x053ae60117b2a90041e6872b18403ab102880c0b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x05f018a431a9e1e693504e322c5c9ffe9d325b07` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x07e73f3223ae746577bc5254db2bb838d6cd3666` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x08dcdbf7bade91ccd42cb2a4ea8e5d199d285957` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0a9732dbf587e7c54c75d88919bf1e60afa84d4b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b14fe4a7d5479ef99651275774568f87d602e23` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b4a35ffe50d55cb00bb81f0f5ae61353e6f4c82` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0c01040f642901dcfa8371bf0d04b64cef443913` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d28bcb1ebac497a6ef6d0f980ad4bf74c14610f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d73c202d90a2c03aa8c85c2d827663d5cef5e37` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0ff4b8479c5e72a2ab8e80e134b7a93278f05800` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x100451f9986161bd242b16381bd577f1c88a94fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x126e131f5cfb60fb6c6f574de611e4a62c637a03` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x12a31b6bbf8781ab70b46a4fa0afe27f992fc92d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x142ce7ff652d956354790da9b7feffb2acfc9717` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x18145b7b7df58528ca6733cb2fe920677273a442` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x186ef3bf61c337b4048bb71bfcaf85cf95044a86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x18c2abb47f4d5ea9bffd771ad9a15f21c3e6fe20` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x19c804aa2782561ff03ee3b18f3ca50975c01e08` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1a3b8ae6fe5b9adaa5fb7df49d832c5ff12f1dc2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1adbdd60474b57ce642b0923fa3c232fd1434605` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1bb920e7699449811cce56dcdd134dfb7f118be5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1c0527b9a9de75a5e91be418f6c18f611b9b1af9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1c4888f81c711e558e8d12439f17aebd04008488` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1dc76341ca156e376736ddba042aba071bd3b858` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1e2c316703f1d3b38c81556e5c853cf30fce04fc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1e39cf440f2872d4b23165275e3f79e90dd095c2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x201e6f5a7142fd744d1f51f19209f2409d5ca51d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20a27e9119c7af8f059b5853fb63d62a9e884498` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20b7cd27079f37d382020937d525999c75b97f84` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2182b5532d8eb4b614031ac68924975100b84684` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x21aaaa45411f6b5ad9b27ac25bd8c6c41509189e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x21b48fa22f69ece450a687abbf32a82fe0f3c35e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x21bc6937d96a4011a0106ac5ee7b1899b9eeb6ff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x21fd4175f64d2a646205a2e0644c84b9e3946bcb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x23ca235c86970263b1439d413a86549b3e4c1d0a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x24e4d4b5c20ed4219f4d36bc5747b6a483433551` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25244fe81803c8135dfd37ee5540b2a39c2b9553` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25459efe8cd9474549e2763d4d83934bff7c2e4f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x26ecad2dcb7fc8431db5dace522ba972c2ca3f2a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2867d6a7a17f88db3e7b210c7d2258216c3a8334` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x28fe58c4646d6dcc6f694501e81cb1b21ab4d92a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x295d89220399e7cd0a59bcaef54356b47f273815` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2a1842d7054f079603d51f2e9ba8d5516465a408` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2b80d5345364d2071358ebb1a2d5835c1df0657c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2ea6b2a1cdcb622320b6345d9473cd2b6161d7bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x323b88a7349f1974cadf645b3dcd824ae5f568cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x37eb657b66f1c2b381702ebbcf322c646e5f44fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a0724a5b206f942284417b82ed2cb04922d355f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3b168c70f72e44bfec6dc1380d038d3e5cd486b2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3c7645944bbcf1ec21cc4a2c0938910441349a5c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d1c97fa08a23a15f56fcca7599b0b2a3a4de11b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3ddf12feeacc94c475b6d19a3f342f49adc109cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3dfe6e347bfa1054e1c1d9c63acda78c3f281c4a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f133fdef960406579bfdcb507676122f047b747` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x406fc1e51d1f3affceaee64724f627d0933f8d2b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4425dc7f14edb3eaa4e710bf5b6bac89da3f6e80` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x457c7b95243b2798a41d1ec9d48c77db3a4f9773` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x457fea800f74b26f6bc6d23f218e3bf5aa765b6b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x45d88c2cf1cb1f5ef85bbdd5a3934ed1caf13937` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x478805a5c19a662cfc68127455b024433358d421` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4849fb399ccb541d08b29cff7e8ab4b7df0cc7ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x49507722ad672901e2f80f591dc94ff482f52554` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4b073a6bf252c8de805a778c8ff2aad093ecb73d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c8c3f184507d1f836c37cb8705b84766b3d4f24` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4cccdd06a04a93abd668280f346a0c1926d3e03c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4d858ae66ffe94c1ab40da15275a3a8e2d79349a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4f20b6665ab2dfd00e73987a0ffe8f3f517b0978` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x511cebfafd4cbd364d643b1b7edfa5d6dd831349` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x51abc06f452b4ac625eb10315238b8cf7186fb61` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x51e5a0c13b6e6ac02bd0a27d5d540fe9cdd89fd5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5346052d8b49cab75ad80f99e7738fc6c631ac04` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x53bfd2835db84018fb2021146c790f049dfb1f86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x54ca911a115776318ccbc5beb9c3d7b6e41f3e5e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5523f111c778a128e4f5b8e76df6c0e20a2bf7b5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5557f35607ded91812762aca7754bdb2de255109` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x560b5665293ab61b6f7116a0a3a81cdac21e8d74` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x56e0e3cfbcf646ebff21344a5d821e8c3dcf4e4d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5826e911c021b876c411c2ebad8bebec4a061eb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x583c44639ee28156f0a88af57433553bc4cb477d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5998faa751c44fb3421c59d2e529d14d40632539` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5b5e47bf6dfdcdf4f5cec0814b08979f2fc9c4df` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5b6d7aa172133c9404753142d728a5e71f60a126` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c01161e65936a2d7183263e9eb599494e50a9fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5e515a4028bb83b967d6f345f524eface541b554` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ef03e20d722e4a9633b4b35b54f00c209064655` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5f1a4424365cdbeac39fa02b7669673990751e98` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6188d43285d38dfeb3d6fb3a17ad7502158f4cef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x61c5e2532055da8cff4708d267bd90140d679170` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6201588fbf7c3188a1919773eef1a648533321d7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x63a99309c5719bd96cacd878f912c8b7ed59566e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x63b2f98e3f2ef9ba8650edd405f835d071bd0036` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x64be8d0948b25c51ad0a0def3e237010fb1e7088` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x696d0d73bd8d3820e9c1d697ebadcf2b372045a7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x69e6797118fe7ca98a94171b847259012a7c6972` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a12e6ab226032f66f1b87ee3565cd1a7033b71c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6bd652f20be923fffa0888c72ae7cb55515bafe6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6c98f8d25deffc814cfffcc2c0a62cde5f7e94ed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6da57ce5a5261803d6b71e33cfd2ad340b2027e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x710ab53bd48835d6d7588d893d9d8315c63d9e74` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x71d0355af1a332aeff372aaca3425c68b9eaaf0d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x723ae12117d4c6818050719e435b914438b99a02` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x72cec42bf03a14762dff33e04abd58bbb19bfd6e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x72ecf7cf074557984417eabcf3f128ffebf1255e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x74651420e5023aea77a4d2ab211c0cb975c63913` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x751d49b327b64670d988dcff5c2ca63dd97d196c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x761e200b06c87646c5918ec521426794d1d43c35` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x776ec8a2b2e9b7470631e30c5b6ab4a248585b43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x780cc3f885ceaac8924777dbf94c43a0cbc7c2ce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x78536314b82267ea6c8292d47cfc580217f99af6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7b18b3d5ba36fa0730961b06b47970e7a6aec979` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7df60d32e275629f4e93c4bc1a11da93a0a3e1a2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7e881d250b06895cd75cab1aed139272a41f76ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81116f71027a04e5a276c1bd94e3ecfd040e0706` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x83ac60558c4877d4679e1eabbedc325e6ab57e70` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x83b2184ec0e99798a6acc128dbee9a84ba8e8b9a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x849ac221f6de828cb92a08fec2e6ab3b626b306a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x851fc799c9f1443a2c1e6b966605a80f8a1b1bf2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x85f7d1747ef8c566d04fcdff3e5fdb8c750f3f85` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x885296cbdb758bddb770d9a3932614e352c3615f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x88c38a9d0c73ccaa06a6c5075b9e51f7746f4358` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x88e23db7e2974133cef7aefb470bcc716c2012a3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x892927a8e6cde862c6738c0ab53bd653c49aa03c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x894aac57f816ab3a733cc8842b7daf29c73e26a5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x89941a1574937aff3e02700b7667b5ef945e05b2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ac5aa057da4c86f3896cfd851cbcdfc19a04dfe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8bdec891ced76b333b33ae7e3dff83d351c624a6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ddf5fc64166b4be8278293766fbf772329d7a68` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8fbe841925aefaa7705d4d84cf4e116977d73821` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x90af8701553545df3d78a8a51e24810371daf390` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x93ce08bfd63e89849f8e6b88e589b61ea277c487` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x969ed3807029af64af2edba53cbf5f40048931d4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9762bc0fd654dd6d2f0d6c50f33dee21379dea01` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9b98c7b82df397becea74f030d52ef154d4976de` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9bb199a7c32605391aa72624c4f520c3a1688394` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9c4a4942bcd56a0a8cffdbcb4ff5bb218f265057` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9c58aab553b8edda79e7601aadc252df3cf56971` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9c937625cb2b49a432fbe2ee985b7888ff1e0312` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9e3311c65005ecd1acc34c6b146be2353c1284c2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f1f6f4cd000e137ab6d79d066e0bf508794d32b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9fc66692e2ddbeae402b240963db2d1f58cd7193` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa217ca857a1b6980c80116421fb3cd98ec7f1e1c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa4b628b0fefb23a4bb93e33c6d66f27945e93b52` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa5ba9e4b28b47928cda17952a606b679b0c58dd9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa79c3a4741f35e8994dc44a23eb31966d2e04552` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa8deab7e22622c4d20307171e80278718c1c2046` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa98c3519af6b95e41bafbd7a64614eedf89ebcaf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xab52f8c11e72d00d4f717a657378ef9b8bf7c2b6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac4550eadcd13a8887c2b939acf1eb8739fb3b8a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xad4edc0f27ce49bdc5b69fdcd7b29a2a59bd37ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf20d7f2ff3852b36b164bed95e290497998714a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb1284d7007b2142ad79ceb7c00193c57adbe3cd3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb42520f4c7820778eb1f2446614c09835be20c08` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb622b47f2044e0a05d8346a67a855cfbd62d86c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb6544b6aa9be84839eee4d0ab2e8024a159ef813` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb772e15989ac1680b03ccbcc3dd82e0798bbd772` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb7c3ac496ab2e2e4f7becd599f8743177b1b019e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb88dcffe39af3f1df6d179a1517db6b84a4509c9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb9d6dc7e9d637bf8229b46dbfc167407297e738c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xba0a8519e08cfe85eaa3e879d6ee5f460076c386` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe19d3ffcc47d5e71a1ddcf730189593018eee07` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbfea8285e43437c9ea91e62f7677654339505188` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc1ba1ded1eea624306b1de33cdf3fb6484ae0b5c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc2425bc461d6755a1d0658eff70b472acc092fc8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc2e9ce42325430b9d84722c73f003a736d4ed5ac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc34ed82038a2fcb135c641f7a95cf27eb6e3ac6d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc4c2e18b4f04fc6792677d839857cb7744775f72` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc5d3811be91c54fd7591497cd6f73a2cc96dae8a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc60b95b78b22fe41e4849d51c549cd9b7f288a03` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc69ada3bdb6d89a3599ff6033eca146e2954aa1b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc7f4e75801266709b45f57af044c8119b8cbeb9b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc922792462eafdcea62df63e44aa487a1a8a2a0b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc99eb17309d7c6bdd96373db1e42412e0e1d44a1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcac344c7422c06d21a454cff4d3560f8bd1b7fcc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcc5cc6a3eaea292fbc13a526cb1fc561dae39b75` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xce6b7fc0d8f57f9779e4cc111587073a4f8436c4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd0a246f9fa9de9dc0f6f54523e8c9b938ea8316b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd1cfbc177a1d7171f1dae7b3dbc850d8df0b5b4c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd2f7bcce082646939c47c25fcf5f086414fe2e1e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd3e726b681c9a1e2a620cef9fe0ece49822b11d4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd5ea7dd272449656bbfab120d8e69c026fb82c6c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd627faccda57a93953e1f8b39ce942f69a7ccfe2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd70c799e090450cad94a8423af42602684a1c384` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd78f41c714c662406691055dce4b1c261d9847d2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd9f80f80760bf42c67b6d4791fdb45d762dbb698` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdaf14e91027809f225d9342f38b55d0b0ba5cb1a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xde1734bbb63409165e829f456d853b021836eeb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xde8ac9df18371d179699533576fcfa913035835f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdf74c94eafdea467aad846718fa033ccf6dffe62` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe0151d335a6c4ab0600ae4000a9caaf7b236072f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe02398ba3c10fe9625b576bf58ba8823f0609cce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe2493c811841628554de49fc48a3b63db54ffdc5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe289a47a26dc1480b06ce93844a00c889ea6c5b6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe31ed435d6cfaa9e1b9f016b7c093bca88361dc4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe5579bed593a6a989245cb49db2d98f5b08b3a24` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe639d6868b4f096ad4b16d51f792aef1d0ecebc0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe685f049e472d58568e88c04e7d1e66d77713118` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe6ebfbe68065b7d621f399952cbe50f999a3aab8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe7fcaaed529f501e9dd6dd4c41f4c785f8578bb9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe98f47bf666fe9f004f8259a36adf56c715a211e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xea3952910b4a356617145e1447a5b21ada50cdab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xec0af979b3a3d8e2f5f16cf596748991588be22f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeca3628f9d94db1c6fbab22ed27cd2f457f1db3f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xed071ab812c06012aa80ca342fd0c883a8956915` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeda1e6578f7cca28a36e5b50d71f2f154b93c061` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeec8f87e205fc7d7d1c83431bda269b1c03b8a4c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf1050afb771aec5af4b0e193c23ad0ed5084a4a3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf132bd888897254521d13e2c401e109caaba06a7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf18fcd877cf7586e1e567dde99e57ba7ad5f4a68` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf2e38144aa3e2699cb29ca3c1be36330e2ed1786` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf3299278ebd9afcbcdfa5a71d1980692d9d1e4f8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf4c17e43726d96bb2cbf2c62eb3af7b0ecb0dd26` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf60304d136b30df72ae5102a74a70e5edad0d1da` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf6c04c9927e2b21b9634b4746ae7f21171ce0e4c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf761ac4e28f84b4166f342cd8110b567c4d13d01` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfb505369d01b216004b930e23367f3c6c895fbea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfbba68489f8a026b94b7353a57068a4cb43730a4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfc55abe89ff83fdb2bc8535b3f9230a124f9252f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfc8d74d7f5d59d18a4271fe4d70fd3b796bedcad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfcca37d8f6cbf5d072563e927f2e6e48e994a849` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfce7d66264fef40cbcd1c23a7dc8becf5867a3c0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfce8917e85a8e41ab01749cf8f7fccb41efcd05d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfdb2620738168e45233ad16d62cf024ae0bc7489` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xff86e457750abc2127b9442439495cc8f1e4a305` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xffdf46d1658d528eed9e91cf76c893add4616543` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [20260305-nethermind.pdf](https://github.com/tokenpage/yieldseeker-contracts/blob/main/audits/20260305-nethermind.pdf) | Nethermind | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x06f64f46415aa307c46692f73fd85649086bd7b9`](./contracts/base-8453/0x06f64f46415aa307c46692f73fd85649086bd7b9/) | AutoCompound | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9c6864105aec23388c89600046213a44c384c831`](./contracts/base-8453/0x9c6864105aec23388c89600046213a44c384c831/) | AutopoolETH | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3c113d68c2eeb665c2219b26d3090074e257e46d`](./contracts/base-8453/0x3c113d68c2eeb665c2219b26d3090074e257e46d/) | CommunityRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x085178078796da17b191f9081b5e2fccc79a7ee7`](./contracts/base-8453/0x085178078796da17b191f9081b5e2fccc79a7ee7/) | EVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2ad9914cb303c4797ac513e6b736c9ed286b6a7a`](./contracts/base-8453/0x2ad9914cb303c4797ac513e6b736c9ed286b6a7a/) | ExactOutSwapperV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf016fe66103c2a9f3d156fef32d2da8db8e38ad9`](./contracts/base-8453/0xf016fe66103c2a9f3d156fef32d2da8db8e38ad9/) | ExactOutSwapperV2 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdbdd7b8a8747904f53eb7aef655a6ff81e2c306a`](./contracts/base-8453/0xdbdd7b8a8747904f53eb7aef655a6ff81e2c306a/) | Execute | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6bcb1ae7b3aec6086066dc4348dc679c93eeac5b`](./contracts/base-8453/0x6bcb1ae7b3aec6086066dc4348dc679c93eeac5b/) | FlashloanLiquidator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf42f5795d9ac7e9d757db633d693cd548cfd9169`](./contracts/base-8453/0xf42f5795d9ac7e9d757db633d693cd548cfd9169/) | fToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x03486dd203b725337a0ba72ea60f26c3966a0e11`](./contracts/base-8453/0x03486dd203b725337a0ba72ea60f26c3966a0e11/) | GaugeManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x03688efa97662d3a2fc7be8a322e02d4810053f9`](./contracts/base-8453/0x03688efa97662d3a2fc7be8a322e02d4810053f9/) | InterestRateModel | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x05981339909992a8d9d13e8c651e54f306ec4e98`](./contracts/base-8453/0x05981339909992a8d9d13e8c651e54f306ec4e98/) | LeverageTransformer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x371d2b977e9f3b780ee0a032ae664edc5db234e1`](./contracts/base-8453/0x371d2b977e9f3b780ee0a032ae664edc5db234e1/) | Loan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x87f18b377e625b62c708d5f6ea96ec193558efd0`](./contracts/base-8453/0x87f18b377e625b62c708d5f6ea96ec193558efd0/) | Loan | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2acf5cde1f0ccaed7cc9b457df0232eb87cacdec`](./contracts/base-8453/0x2acf5cde1f0ccaed7cc9b457df0232eb87cacdec/) | LoanV2Native | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x81f22d0cc22977c91befe648c9fddf1f2bd977e5`](./contracts/base-8453/0x81f22d0cc22977c91befe648c9fddf1f2bd977e5/) | PairInfos | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x25f32be475f6499b0d60d665688a2e4f8e0bb4a5`](./contracts/base-8453/0x25f32be475f6499b0d60d665688a2e4f8e0bb4a5/) | PartnerFeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf0714a3e2f4d78ffc1b400bfdacb7b8869bfe1be`](./contracts/base-8453/0xf0714a3e2f4d78ffc1b400bfdacb7b8869bfe1be/) | PartnerFeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xec3e4e0fdb50411f4c5ee9f75436d8b20cf7d70e`](./contracts/base-8453/0xec3e4e0fdb50411f4c5ee9f75436d8b20cf7d70e/) | PerpManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x64e2625621970f8cfa17b294670d61cb883da511`](./contracts/base-8453/0x64e2625621970f8cfa17b294670d61cb883da511/) | PriceAggregator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa96f577821933d127b491d0f91202405b0dbb1bd`](./contracts/base-8453/0xa96f577821933d127b491d0f91202405b0dbb1bd/) | Referral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0638add2b856e0a6157f2bae3aa08c2923c83982`](./contracts/base-8453/0x0638add2b856e0a6157f2bae3aa08c2923c83982/) | Swapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x08292dff21e8f5ed5510a82cfca5ee141274503d`](./contracts/base-8453/0x08292dff21e8f5ed5510a82cfca5ee141274503d/) | SwapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5ff292d70ba9cd9e7ccb313782811b3d7120535f`](./contracts/base-8453/0x5ff292d70ba9cd9e7ccb313782811b3d7120535f/) | Trading | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8a311d7048c35985aa31c131b9a13e03a5f7422d`](./contracts/base-8453/0x8a311d7048c35985aa31c131b9a13e03a5f7422d/) | TradingStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x83084cb182162473d6feffcd3aa48ba55a7b66f7`](./contracts/base-8453/0x83084cb182162473d6feffcd3aa48ba55a7b66f7/) | Tranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x944766f715b51967e56afde5f0aa76ceacc9e7f9`](./contracts/base-8453/0x944766f715b51967e56afde5f0aa76ceacc9e7f9/) | Tranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06a1ebf7e086c69c11318486c967f24f0d073a7b`](./contracts/base-8453/0x06a1ebf7e086c69c11318486c967f24f0d073a7b/) | V3Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7d1f9fc22bed0798cda3fdb18b14a96fc838b9e1`](./contracts/base-8453/0x7d1f9fc22bed0798cda3fdb18b14a96fc838b9e1/) | V3Utils | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02c51413a0c76af2c71d74cfadb414a0ed1528cd`](./contracts/base-8453/0x02c51413a0c76af2c71d74cfadb414a0ed1528cd/) | V3Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x053e49f058851bb56469ebce4905b320fe19e3e9`](./contracts/base-8453/0x053e49f058851bb56469ebce4905b320fe19e3e9/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe9fb8c70af1b99f2baaa07aa926fcf3d237348dd`](./contracts/base-8453/0xe9fb8c70af1b99f2baaa07aa926fcf3d237348dd/) | VaultManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6914110efe4e61cfa0f28de5f6606baa33d21693`](./contracts/base-8453/0x6914110efe4e61cfa0f28de5f6606baa33d21693/) | VeTranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7bf094c44b3cff8c95e06a76557443f5408efb05`](./contracts/base-8453/0x7bf094c44b3cff8c95e06a76557443f5408efb05/) | VeTranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfae69f2c82747f878f74c1e57a1aed945ed8558f`](./contracts/base-8453/0xfae69f2c82747f878f74c1e57a1aed945ed8558f/) | WasabiRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x00d7c86c29f11206cae7f30951047bd278990ea1`](./contracts/base-8453/0x00d7c86c29f11206cae7f30951047bd278990ea1/) | WasabiVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x078b931f7759ec09d74dd31316c610e09aac94fc`](./contracts/base-8453/0x078b931f7759ec09d74dd31316c610e09aac94fc/) | WasabiVaultRecoveryV1 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2d04c5bdf9ecb7b16833c4d8006c53eb0736baeb`](./contracts/base-8453/0x2d04c5bdf9ecb7b16833c4d8006c53eb0736baeb/) | YieldSeekerAaveV3Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4a5c3cca0ac2a1949d600891a89dd19b35189cf0`](./contracts/base-8453/0x4a5c3cca0ac2a1949d600891a89dd19b35189cf0/) | YieldSeekerAdapterRegistry | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8e074b7636f6a56097f1f719e708e2c932e23bab`](./contracts/base-8453/0x8e074b7636f6a56097f1f719e708e2c932e23bab/) | YieldSeekerAdminTimelock | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x94565f4c559d146e2a3e1f18bfeb8b2319c6b0c4`](./contracts/base-8453/0x94565f4c559d146e2a3e1f18bfeb8b2319c6b0c4/) | YieldSeekerAerodromeCLSwapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa3c92297ed000f2778924872fc5d2cfe341d020f`](./contracts/base-8453/0xa3c92297ed000f2778924872fc5d2cfe341d020f/) | YieldSeekerAerodromeV2SwapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9c7410a0facac60850c46ee5b58b518daec95130`](./contracts/base-8453/0x9c7410a0facac60850c46ee5b58b518daec95130/) | YieldSeekerAgentWalletFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x32403455357589523435db18b414057d7ce05051`](./contracts/base-8453/0x32403455357589523435db18b414057d7ce05051/) | YieldSeekerAgentWalletV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3f7de883c831b3f164bdc57855f199616ad5366a`](./contracts/base-8453/0x3f7de883c831b3f164bdc57855f199616ad5366a/) | YieldSeekerCompoundV2Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x66621c39cdea3359c22b6d9de101a3b9d19b3ad0`](./contracts/base-8453/0x66621c39cdea3359c22b6d9de101a3b9d19b3ad0/) | YieldSeekerCompoundV3Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3bf2b1e1da1bd2c3d397e9df06b7f717c2f12ad7`](./contracts/base-8453/0x3bf2b1e1da1bd2c3d397e9df06b7f717c2f12ad7/) | YieldSeekerERC4626Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x26f4bb36dbb42fd38956c6c1e6602a9182c957db`](./contracts/base-8453/0x26f4bb36dbb42fd38956c6c1e6602a9182c957db/) | YieldSeekerFeeTracker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xda7ac043a74f1f96da01b073743448b6ba2bfc0c`](./contracts/base-8453/0xda7ac043a74f1f96da01b073743448b6ba2bfc0c/) | YieldSeekerMerklAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1ce58b462284b2ee8084ef36030fe03ae89cf3ec`](./contracts/base-8453/0x1ce58b462284b2ee8084ef36030fe03ae89cf3ec/) | YieldSeekerSwapSellPolicy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4ad957983f4a419f847664722870f4033c840b58`](./contracts/base-8453/0x4ad957983f4a419f847664722870f4033c840b58/) | YieldSeekerUniswapV3SwapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0000000f2eb9f69274678c76222b35eec7588a65`](./contracts/base-8453/0x0000000f2eb9f69274678c76222b35eec7588a65/) | YoVault_V2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 52 |
| upstream | 3 |
| standard_library | 5 |
| needs_review | 228 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14223] 20260305-nethermind.pdf

Fork inheritance lineage and inherited audits are included when available.
