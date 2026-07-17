# Agentic Audit Brief: LendFlare

## Project Overview

- Project: LendFlare (`lendflare`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:29.924Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: ethereum
- Contract surface: 56 unique implementations (197 raw deployments)
- DeFi Llama TVL: $942,765.50
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 39 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 2 common project-authored base contract(s) (multicall, owned). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 311; live-surface contracts included: 190 (150 live, 40 unknown).
- Excluded by liveness: 121 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/17 (0.0%)
- Deployed-live implementations: 19 of 56 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/20
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 36
- Unique implementations: 56
- Raw deployments: 197
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 5.0% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ConvexBoosterV2 | core_logic | ethereum | n/a | [`0x4c3c78cebc9cc87436deed2782998bc002f2b69f`](./contracts/ethereum-1/0x4c3c78cebc9cc87436deed2782998bc002f2b69f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ConvexBooster | unknown | ethereum | n/a | [`0x64e965deed764b84882903e26d021e4856b083e6`](./contracts/ethereum-1/0x64e965deed764b84882903e26d021e4856b083e6/) | ⚠️ Unaudited |
| CurveExchangeAdapter | unknown | ethereum | n/a | [`0x7d64291b5f9cafa25dc95113955c39ae7c8c1fd4`](./contracts/ethereum-1/0x7d64291b5f9cafa25dc95113955c39ae7c8c1fd4/) | ⚠️ Unaudited |
| DepegShield | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5e6b51b181f52fc470db062a07f0210eed248ac1`](./contracts/ethereum-1/0x5e6b51b181f52fc470db062a07f0210eed248ac1/); ethereum `0x99fc40934b60bdeb10c251e854a77ea47ad628ae` | ⚠️ Unaudited |
| DepegShieldWrappers | unknown | ethereum | n/a | [`0x8a06635c5a84bd0f2edaeb31c0d5da0f5523af77`](./contracts/ethereum-1/0x8a06635c5a84bd0f2edaeb31c0d5da0f5523af77/) | ⚠️ Unaudited |
| LendFlareCRV | unknown | ethereum | n/a | 2 deployments: ethereum [`0x65368954e911f3003e6827388eadc03922e7ef19`](./contracts/ethereum-1/0x65368954e911f3003e6827388eadc03922e7ef19/); ethereum `0x9e96598713e7533a33418062d5402b6801ff156a` | ⚠️ Unaudited |
| LendFlareProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1fa362339392f910bd69af8e13dd20c5942d446f`](./contracts/ethereum-1/0x1fa362339392f910bd69af8e13dd20c5942d446f/); ethereum `0xbd507de9e8a86b4da201eba187f08d18120e02e8` | ⚠️ Unaudited |
| LendFlareProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7720a95be2b7ce0fb5abe4678d2e2a245bcd7aa5`](./contracts/ethereum-1/0x7720a95be2b7ce0fb5abe4678d2e2a245bcd7aa5/); ethereum `0x882f464fbd355b736e35f1a2634d536c8979aa43` | ⚠️ Unaudited |
| LendFlareProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb620be8a1949aa9532e6a3510132864ef9bc3f82`](./contracts/ethereum-1/0xb620be8a1949aa9532e6a3510132864ef9bc3f82/); ethereum `0xef9423d140c8009597d1185b4b6d5302df21ca0f` | ⚠️ Unaudited |
| LendFlareVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x803ffdff8150093be6fc78a0963f443e9bd9c378`](./contracts/ethereum-1/0x803ffdff8150093be6fc78a0963f443e9bd9c378/); ethereum `0xd61401ccfd30356c8c00349eebb6a60d145810ff` | ⚠️ Unaudited |
| LendFlareVotingEscrowV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x19ac8e582a9e6f059e56ce77015c46e250c711d2`](./contracts/ethereum-1/0x19ac8e582a9e6f059e56ce77015c46e250c711d2/); ethereum `0x96738a3b759df57ee96c8dab36f33cf66dd4bf00` | ⚠️ Unaudited |
| LendFlareZap | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbcdc45372847b95bb4bd6d524b4a801aac98619c`](./contracts/ethereum-1/0xbcdc45372847b95bb4bd6d524b4a801aac98619c/); ethereum `0xd7c86a52411235169565fa85f56e74fcdda303ca` | ⚠️ Unaudited |
| LendingMarket | unknown | ethereum | n/a | 2 deployments: ethereum [`0x402e3c8e2ba9db00005d934260157b1b648cac5e`](./contracts/ethereum-1/0x402e3c8e2ba9db00005d934260157b1b648cac5e/); ethereum `0xa7c45ba4476949a2bc8a7318f62bb12fdd5e88c0` | ⚠️ Unaudited |
| LendingMarket | unknown | ethereum | n/a | [`0x9997fde74acb0c191cdc7fcdc72255d3a3f7f179`](./contracts/ethereum-1/0x9997fde74acb0c191cdc7fcdc72255d3a3f7f179/) | ⚠️ Unaudited |
| LendingMarketV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x03f744a9ec8d350d1991ac6704fce0c211fce26d`](./contracts/ethereum-1/0x03f744a9ec8d350d1991ac6704fce0c211fce26d/); ethereum `0xac86b0d995a2ba4058860eaf0c0230895b8daa07` | ⚠️ Unaudited |
| LendingMarketV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4f69ad74a5d443b4adc908474c61f5f77ab79d52`](./contracts/ethereum-1/0x4f69ad74a5d443b4adc908474c61f5f77ab79d52/); ethereum `0xc8937e9eb757b2fa686f797e83ca410219061119` | ⚠️ Unaudited |
| SupplyBooster | unknown | ethereum | n/a | 2 deployments: ethereum [`0xbabb974596343a189930982fabdc7a0d9298522f`](./contracts/ethereum-1/0xbabb974596343a189930982fabdc7a0d9298522f/); ethereum `0xff9e834d00d9b10860a04c49f4d15b6613195f21` | ⚠️ Unaudited |
| SupplyPoolExtraRewardFactory | unknown | ethereum | n/a | 2 deployments: ethereum [`0x77be80a3c5706973a925c468bdc8eaccd187d1ba`](./contracts/ethereum-1/0x77be80a3c5706973a925c468bdc8eaccd187d1ba/); ethereum `0x796669470a1f4b975b50c7691544546659d9a110` | ⚠️ Unaudited |
| VirtualBalanceWrapper | unknown | ethereum | n/a | 31 deployments: ethereum [`0x0d66b49a68affddcdadddfe06cd6369307b2ba46`](./contracts/ethereum-1/0x0d66b49a68affddcdadddfe06cd6369307b2ba46/); ethereum `0x0e44e003ca8b7a2dd0742286fc1a3fad754a5450`; ethereum `0x10a377ba353cd480e43800018a27742054904c1a`; ethereum `0x1acc3ffb27c31c541695ff75b21569cfaedca877`; ethereum `0x247b24e945d604c896165ccb2f15e190560f2133`; ethereum `0x2cb79c6bb40346a08ad7a7baf65a8b4315876e26`; ethereum `0x2d3a0eca75c429b00627af759a14223c34bf910f`; ethereum `0x2fbe41e4861b5d0936aa01bb32bd3402d34f11fa`; ethereum `0x47a2eec0d7502ba1fec0cae0eeaff64dcf28af60`; ethereum `0x518802d8764c2823610a619be95bf089aa121ba5`; ethereum `0x51cec58171863ea82ce3b99a190f3843fe7aabf5`; ethereum `0x6d18e830a938f0eaf206f1bd80b79a851e5f37a3`; ethereum `0x6f114a680915b3335c65225b7f61e2021419b24b`; ethereum `0x7538345c421467a2a58cbe9fa3dfbdeb6fb2c15a`; ethereum `0x7fb09845695f6bd88f4a0752e6a539a2209b6707`; ethereum `0x83d6e9ba460130d82194620ca0b16d025064d139`; ethereum `0x83ec519b6121ea1b6ae05177e7e9f9c046a5fe20`; ethereum `0x85b7cc4fd8767651c752d9ea76fc7dd388e391a0`; ethereum `0x86b26838f03c3724cb9a9d4d165df052c401a257`; ethereum `0x86ca9713762c04e10d2e2057952b91917dc650f2`; ethereum `0x8856738191dcf0b582e491bea99e880ab734f4e6`; ethereum `0x8f48eb0d8c298abbc68be5dece86c6faa4e33497`; ethereum `0x99b496d54848f2a98c4aa0b934f23b0f5c298e31`; ethereum `0xa16d36ea387aee0f625425ada2540d1a95dc2440`; ethereum `0xa91d85b2e9fe1f0371559a9a7dcb1bbe1acf9587`; ethereum `0xc0e4f5758e218762960bca9706fc7b6cf337e3c2`; ethereum `0xcc29655c9f9a211fb11c25d905306aa93a685ef3`; ethereum `0xccbc7fcc994db1d8f5fff17104532c0e0e78b449`; ethereum `0xd8252a4ec16de33fad1c69f2d3e80e9f7b8cef12`; ethereum `0xe1c0b5302e5a627141746acb1025c43f9fe87ca8`; ethereum `0xeae58fd59225a192ed897c3c8b382727dc322335` | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 99 deployments: ethereum [`0x02d341ccb60faaf662bc0554d13778015d1b285c`](./contracts/ethereum-1/0x02d341ccb60faaf662bc0554d13778015d1b285c/); ethereum `0x055be5ddb7a925bfef3417fc157f53ca77ca7222`; ethereum `0x06325440d014e39736583c165c2963ba99faf14e`; ethereum `0x075b1bb99792c9e1041ba13afef80c91a1e70fb3`; ethereum `0x08380a4999be1a958e2abba07968d703c7a3027c`; ethereum `0x094d12e5b541784701fd8d65f11fc0598fbc6332`; ethereum `0x0ce6a5ff5217e38315f87032cf90686c96627caa`; ethereum `0x0f9cb53ebe405d49a0bbdbd291a65ff571bc83e1`; ethereum `0x11137b10c210b579405c21a07489e28f3c040ab1`; ethereum `0x11f419adabbff8d595e7d5b223eee3863bb3902c`; ethereum `0x182b723a58739a9c974cfdb385ceadb237453c28`; ethereum `0x194ebd173f6cdace046c53eacce9b953f28411d1`; ethereum `0x1aef73d49dedc4b1778d0706583995958dc862e6`; ethereum `0x1cebdb0856dd985fae9b8fea2262469360b8a3a6`; ethereum `0x1de7f0866e2c4adac7b457c58cc25c8688cda1f2`; ethereum `0x2dded6da1bf5dbdf597c45fcfaa3194e53ecfeaf`; ethereum `0x2fe94ea3d5d4a175184081439753de15aef9d614`; ethereum `0x3a664ab939fd8482048609f652f9a0b0677337b9`; ethereum `0x3b7020743bc2a4ca9eaf9d0722d42e20d6935855`; ethereum `0x3c0ffff15ea30c35d7a85b85c0782d6c94e1d238`; ethereum `0x3c8caee4e09296800f8d29a68fa3837e2dae4940`; ethereum `0x3e01dd8a5e1fb3481f0f589056b428fc308af0fb`; ethereum `0x410e3e86ef427e30b9235497143881f717d93c2a`; ethereum `0x42d7025938bec20b69cbae5a77421082407f053a`; ethereum `0x43b4fdfd4ff969587185cdb6f0bd875c5fc83f8c`; ethereum `0x462253b8f74b72304c145db0e4eebd326b22ca39`; ethereum `0x4807862aa8b2bf68830e4c8dc86d0e9a998e085a`; ethereum `0x49849c98ae39fff122806c06791fa73784fb3675`; ethereum `0x4bfb2fa13097e5312b19585042fdbf3562dc8676`; ethereum `0x4f062658eaaf2c1ccf8c8e36d6824cdf41167956`; ethereum `0x4f3e8f405cf5afc05d68142f3783bdfe13811522`; ethereum `0x4fd86ce7ecea88f7e0aa78dc12625996fb3a04bc`; ethereum `0x5282a4ef67d9c33135340fb3289cc1711c13638c`; ethereum `0x53a901d48795c58f485cbb38df08fa96a24669d5`; ethereum `0x571ff5b7b346f706aa48d696a9a4a288e9bb4091`; ethereum `0x58a3c68e2d3aaf316239c003779f71acb870ee47`; ethereum `0x5a6a4d54456819380173272a5e8e9b9904bdf41b`; ethereum `0x5b5cfe992adac0c9d48e05854b2d91c73a003858`; ethereum `0x6070fbd4e608ee5391189e7205d70cc4a274c017`; ethereum `0x61e10659fe3aa93d036d099405224e4ac24996d0`; ethereum `0x64448b78561690b70e17cbe8029a3e5c1bb7136e`; ethereum `0x64eda51d3ad40d56b9dfc5554e06f94e1dd786fd`; ethereum `0x6955a55416a06839309018a8b0cb72c4ddc11f15`; ethereum `0x6c3f90f043a72fa612cbac8115ee7e52bde6e490`; ethereum `0x6d10ed2cf043e6fcf51a0e7b4c2af3fa06695707`; ethereum `0x6d65b498cb23deaba52db31c93da9bffb340fb8f`; ethereum `0x7e1444ba99dcdffe8fbdb42c02f0005d14f13be1`; ethereum `0x7eb40e450b9655f4b3cc4259bcc731c63ff55ae6`; ethereum `0x8038c01a0390a8c547446a0b2c18fc9aefecc10c`; ethereum `0x803a2b40c5a9bb2b86dd630b274fa2a9202874c2`; ethereum `0x824f13f1a2f29cfeea81154b46c0fc820677a637`; ethereum `0x8474ddbe98f5aa3179b3b3f5942d724afcdec9f6`; ethereum `0x890f4e345b1daed0367a877a1612f86a1f86985f`; ethereum `0x8925d9d9b4569d737a48499def3f67baa5a144b9`; ethereum `0x90e00ace148ca3b23ac1bc8c240c2a7dd9c2d7f5`; ethereum `0x94e131324b6054c0d789b190b2dac504e4361b53`; ethereum `0x9582c4adacb3bce56fea3e590f05c3ca2fb9c477`; ethereum `0x97e2768e8e73511ca874545dc5ff8067eb19b787`; ethereum `0xa3d87fffce63b53e0d54faa1cc983b7eb0b74a9c`; ethereum `0xa464e6dcda8ac41e03616f95f4bc98a13b8922dc`; ethereum `0xa96a65c051bf88b4095ee1f2451c2a9d43f53ae2`; ethereum `0xaa17a236f2badc98ddc0cf999abb47d47fc0a6cf`; ethereum `0xaa82ca713d94bba7a89ceab55314f9effeddc78c`; ethereum `0xb0a0716841f2fc03fba72a891b8bb13584f52f2d`; ethereum `0xb19059ebb43466c323583928285a49f558e572fd`; ethereum `0xb9fc157394af804a3578134a6585c0dc9cc990d4`; ethereum `0xbe175115bf33e12348ff77ccfee4726866a0fbd5`; ethereum `0xc25099792e9349c7dd09759744ea681c7de2cb66`; ethereum `0xc25a3a3b969415c80451098fa907ec722572917f`; ethereum `0xc2b1df84112619d190193e48148000e3990bf627`; ethereum `0xc2ee6b0334c261ed60c72f6054450b61b8f18e35`; ethereum `0xc45b2eee6e09ca176ca3bb5f7eee7c47bf93c756`; ethereum `0xc5424b857f758e906013f3555dad202e4bdb4567`; ethereum `0xc5cfada84e902ad92dd40194f0883ad49639b023`; ethereum `0xcee60cfa923170e4f8204ae08b4fa6a3f5656f3a`; ethereum `0xd2967f45c4f384deea880f807be904762a3dea07`; ethereum `0xd30dd0b919cb4012b3add78f6dcb6eb7ef225ac8`; ethereum `0xd5bcf53e2c81e1991570f33fa881c49eea570c8d`; ethereum `0xd632f22692fac7611d2aa1c0d552930d43caed3b`; ethereum `0xd662908ada2ea1916b3318327a97eb18ad588b5d`; ethereum `0xd7d147c6bb90a718c3de8c0568f9b560c79fa416`; ethereum `0xd81da8d904b52208541bade1bd6595d8a251f8dd`; ethereum `0xd8b712d29381748db89c36bca0138d7c75866ddf`; ethereum `0xdc24316b9ae028f1497c275eb9192a3ea0f67022`; ethereum `0xde5331ac4b3630f94853ff322b66407e0d6331e8`; ethereum `0xdebf20617708857ebe4f679508e7b7863a8a8eee`; ethereum `0xdefd8fdd20e0f34115c7018ccfb655796f6b2168`; ethereum `0xe7a24ef0c5e95ffb0f6684b813a78f2a3ad7d171`; ethereum `0xeb16ae0052ed37f479f7fe63849198df1765a733`; ethereum `0xecb456ea5365865ebab8a2661b0c503410e9b347`; ethereum `0xed279fdd11ca84beef15af5d39bb4d4bee23f0ca`; ethereum `0xf178c0b5bb7e7abf4e12a4838c7b7c5ba2c623c0`; ethereum `0xf1f85a74ad6c64315f85af52d3d46bf715236adc`; ethereum `0xf5194c3325202f456c95c1cf0ca36f8475c1949f`; ethereum `0xf9440930043eb3997fc70e1339dbb11f341de7a8`; ethereum `0xf98450b5602fa59cc66e1379dffb6fddc724cfc4`; ethereum `0xfa9a30350048b2bf66865ee20363067c66f67e58`; ethereum `0xfd2a8fa60abd58efe3eee34dd494cd491dc14900`; ethereum `0xfd4d8a17df4c27c1dd245d153ccf4499e806c87d` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (36)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x036ec656894568e2be9a6e53146ec6b3e446c11a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x042326b115b4c91207e0d13c08960ed815b03217` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04af91bf6c6452c9f998a7270027ae9b11b5303d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x09e15afff1e1fbfcc665a50691d78c2d1a216626` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10538872ded50241d9b4f4323fedfe6ed32c0e27` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x124716add6ecaa55a482c3dc81a557ae53638ccf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15452c66649368a42d0fbde91fb5241fb0573484` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24c7ce842bdbbc9eebb84b73eb238b41b60d4fd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ed8727881a07bb8192c94d1a21ac827d22fc25c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f3adbd7a2d549043608b7c5f731b85f5b08f513` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f209428d8c52f2f9ccacf3f679b87ec1a54a571` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41f50577af6f917d2366a04cc11bddc42f6d940a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x450c357be4b8108a5b2ad1085c0a04fc33879605` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4cfc695ec2bf1afadb07a9effdfbefa25403ecc3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a7aa38f903228c75c1da5ee40b6d3ed60671507` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c53956d4743e4e1ba5881fee27357c5670c013b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6ec5859a310740d8b1e6b803dc1cea8e8fb958ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7baad50a656c484330f9e9ae720798edcd739c83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7c054a0dda66cd4d0aacfe3b98b9d49b9365dcd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x80caaad7a0e977f3e93a86f4acf5db70b4c89af2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99f742505243e4a0f43fdf731a0bd746227c6e8b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa571190ebbaaed0580557c83185b7ffdc4c19ca5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb14477c24da6a63856a676739950b244ec6fbc5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbb8055914657195a795bb4fc127877ceab35b8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc05105c25a6de48f587507170de58c56ef8f8a67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc49dfa9177613b01abc91ba75e9ebc785e9b6bd8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4a059e9cf1d18f386cd4e31e1052db380e016a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc4e6062a3a7fa246202905b70ecb4da1137e755f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca02c2a1eabfc1f529085820a1f3be8ab71fa4fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xced2c6f8680bf4da2a429b04bdf528619e24cdc7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbe281e17540da5305eb2aefb8cef70e6db1a0a9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5fdbab9ad428bbb469dee4cb6608c0a8895cba5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf77a1eb7d4a2d6f0a5153e7e0f42191d43b8bf6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa17c594732d71611bbf5e959d595600135feb87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfe3affcd6e172592479aca42251cf7da89847074` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfef6ee493a60fc7cb496fef54512d465646d1135` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/lend-flare](https://skynet.certik.com/projects/lend-flare) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x7d64291b5f9cafa25dc95113955c39ae7c8c1fd4`](./contracts/ethereum-1/0x7d64291b5f9cafa25dc95113955c39ae7c8c1fd4/) | CurveExchangeAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5e6b51b181f52fc470db062a07f0210eed248ac1`](./contracts/ethereum-1/0x5e6b51b181f52fc470db062a07f0210eed248ac1/) | DepegShield | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8a06635c5a84bd0f2edaeb31c0d5da0f5523af77`](./contracts/ethereum-1/0x8a06635c5a84bd0f2edaeb31c0d5da0f5523af77/) | DepegShieldWrappers | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x65368954e911f3003e6827388eadc03922e7ef19`](./contracts/ethereum-1/0x65368954e911f3003e6827388eadc03922e7ef19/) | LendFlareCRV | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1fa362339392f910bd69af8e13dd20c5942d446f`](./contracts/ethereum-1/0x1fa362339392f910bd69af8e13dd20c5942d446f/) | LendFlareProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7720a95be2b7ce0fb5abe4678d2e2a245bcd7aa5`](./contracts/ethereum-1/0x7720a95be2b7ce0fb5abe4678d2e2a245bcd7aa5/) | LendFlareProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb620be8a1949aa9532e6a3510132864ef9bc3f82`](./contracts/ethereum-1/0xb620be8a1949aa9532e6a3510132864ef9bc3f82/) | LendFlareProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x803ffdff8150093be6fc78a0963f443e9bd9c378`](./contracts/ethereum-1/0x803ffdff8150093be6fc78a0963f443e9bd9c378/) | LendFlareVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x19ac8e582a9e6f059e56ce77015c46e250c711d2`](./contracts/ethereum-1/0x19ac8e582a9e6f059e56ce77015c46e250c711d2/) | LendFlareVotingEscrowV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbcdc45372847b95bb4bd6d524b4a801aac98619c`](./contracts/ethereum-1/0xbcdc45372847b95bb4bd6d524b4a801aac98619c/) | LendFlareZap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x402e3c8e2ba9db00005d934260157b1b648cac5e`](./contracts/ethereum-1/0x402e3c8e2ba9db00005d934260157b1b648cac5e/) | LendingMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9997fde74acb0c191cdc7fcdc72255d3a3f7f179`](./contracts/ethereum-1/0x9997fde74acb0c191cdc7fcdc72255d3a3f7f179/) | LendingMarket | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x03f744a9ec8d350d1991ac6704fce0c211fce26d`](./contracts/ethereum-1/0x03f744a9ec8d350d1991ac6704fce0c211fce26d/) | LendingMarketV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f69ad74a5d443b4adc908474c61f5f77ab79d52`](./contracts/ethereum-1/0x4f69ad74a5d443b4adc908474c61f5f77ab79d52/) | LendingMarketV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbabb974596343a189930982fabdc7a0d9298522f`](./contracts/ethereum-1/0xbabb974596343a189930982fabdc7a0d9298522f/) | SupplyBooster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77be80a3c5706973a925c468bdc8eaccd187d1ba`](./contracts/ethereum-1/0x77be80a3c5706973a925c468bdc8eaccd187d1ba/) | SupplyPoolExtraRewardFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0d66b49a68affddcdadddfe06cd6369307b2ba46`](./contracts/ethereum-1/0x0d66b49a68affddcdadddfe06cd6369307b2ba46/) | VirtualBalanceWrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02d341ccb60faaf662bc0554d13778015d1b285c`](./contracts/ethereum-1/0x02d341ccb60faaf662bc0554d13778015d1b285c/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 36 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
