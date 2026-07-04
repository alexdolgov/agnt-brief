# Agentic Audit Brief: Pika Protocol

## Project Overview

- Project: Pika Protocol (`pika-protocol`)
- Website: [https://pikaprotocol.com](https://pikaprotocol.com)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:42.356Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: optimism
- Contract surface: 64 unique implementations (418 raw deployments)
- DeFi Llama TVL: $401,558.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 76 project-authored contract(s) across 1 chain(s); 6 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 2 common project-authored base contract(s) (governable, erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 551; live-surface contracts included: 418 (397 live, 21 unknown).
- Excluded by liveness: 133 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/44 (13.6%)
- Deployed-live implementations: 44 of 64 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/44
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 20
- Unique implementations: 64
- Raw deployments: 418
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-05 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 6 | 13.6% | 2023-05 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OrderBook | unknown | optimism | n/a | 60 deployments: optimism [`0x0195bf...9af92b`](./contracts/optimism-10/0x0195bf18d510188d62edc2f7f9b7bfc8069af92b/); optimism `0x072a62...dfa4dd`; optimism `0x0a4e78...306ee7`; optimism `0x0c7d59...eac627`; optimism `0x14eba8...07bbbd`; optimism `0x17b4ce...f97819`; optimism `0x199794...82e70c`; optimism `0x2203da...42fe04`; optimism `0x270b18...7c28b5`; optimism `0x270b22...1f75ee`; optimism `0x2714fb...650f53`; optimism `0x28aa83...4818fb`; optimism `0x2b6742...70d3e0`; optimism `0x2cba7e...ea5eda`; optimism `0x31941d...10ffa4`; optimism `0x3ef581...7453c4`; optimism `0x403b45...f244ca`; optimism `0x43556b...2083fe`; optimism `0x44f2ed...05e94a`; optimism `0x464d5d...335ac8`; optimism `0x52f5d2...450087`; optimism `0x57624d...9bf730`; optimism `0x5d013e...932288`; optimism `0x5f47fe...09a2fc`; optimism `0x67d0fe...577c1f`; optimism `0x6acc84...368f95`; optimism `0x6c420e...4160b1`; optimism `0x6e8be5...5f95d7`; optimism `0x71be80...2ecc55`; optimism `0x835a17...9d2e7c`; optimism `0x8d30ee...57fbf3`; optimism `0x8e67db...7ebdfd`; optimism `0x931533...792062`; optimism `0x93e403...52d844`; optimism `0x98692f...a30989`; optimism `0x986b84...8292e9`; optimism `0x9948f3...32d304`; optimism `0xa0be4c...101be3`; optimism `0xa4dc08...28070c`; optimism `0xab4401...3edfd5`; optimism `0xac0a3c...eef6ce`; optimism `0xaeee0e...33e063`; optimism `0xb04a64...b46a2f`; optimism `0xb4fe9f...f6b8de`; optimism `0xb8455d...615f88`; optimism `0xbb6b0f...a4c4c7`; optimism `0xce54e3...a9ec0d`; optimism `0xd37fa4...2625ac`; optimism `0xd40edc...d33558`; optimism `0xd46f6b...0f4771`; optimism `0xdac570...24d208`; optimism `0xdbdf58...ef3479`; optimism `0xdcb08f...329e21`; optimism `0xdf9574...696b77`; optimism `0xe48207...4f1c8e`; optimism `0xe66d35...caff6d`; optimism `0xefaecd...67aa3f`; optimism `0xf03dd6...253238`; optimism `0xf9b19d...9bea4e`; optimism `0xfe39d3...c8be55` | ✅ Audited |
| Pika | unknown | optimism | n/a | 6 deployments: optimism [`0x6c4ed8...489276`](./contracts/optimism-10/0x6c4ed8cccd7546d5bc30f468b1451a3936489276/); optimism `0x9a601c...0c3027`; optimism `0xd026c3...4f6873`; optimism `0xd42e39...1cd3f2`; optimism `0xdf89a3...b275a1`; optimism `0xfb427b...aeee97` | ✅ Audited |
| PikaPerpV2 | unknown | optimism | n/a | [`0x2fae8c...353698`](./contracts/optimism-10/0x2fae8c7edd26213ca1a88fc57b65352dbe353698/) | ✅ Audited |
| PikaPerpV3 | unknown | optimism | n/a | 8 deployments: optimism [`0x25fc51...4caac4`](./contracts/optimism-10/0x25fc51d490deb96e6b87f1934ed01c94be4caac4/); optimism `0x543618...d7e01c`; optimism `0x783dc9...2cbedb`; optimism `0x85c4ff...21e43b`; optimism `0xa8a243...cf9f02`; optimism `0xc190dd...593bb3`; optimism `0xccb94e...22d3ca`; optimism `0xd5a8f2...597002` | ✅ Audited |
| PikaStaking | unknown | optimism | n/a | 8 deployments: optimism [`0x323c8b...0f240a`](./contracts/optimism-10/0x323c8b8306d8d10d7fb78151b6d4be6f160f240a/); optimism `0x53918f...1df8c1`; optimism `0x549ea2...65c5d0`; optimism `0x6c440c...45c14a`; optimism `0xac6c1b...388928`; optimism `0xae3806...25936e`; optimism `0xbc1004...a0f7ab`; optimism `0xfbee67...56140a` | ✅ Audited |
| PositionManager | unknown | optimism | n/a | 58 deployments: optimism [`0x0ee954...bbd8f8`](./contracts/optimism-10/0x0ee954f13d8b2d570df8e8573c63211937bbd8f8/); optimism `0x1851cc...ef10f1`; optimism `0x19f7b1...a122d0`; optimism `0x1c93a6...8f30d5`; optimism `0x2249e2...872bed`; optimism `0x346545...89e258`; optimism `0x39305b...10e9fb`; optimism `0x49822b...b57066`; optimism `0x4c60ac...71c3fc`; optimism `0x4c7557...fd9de5`; optimism `0x513d32...6e2e0f`; optimism `0x514c50...1e1a1f`; optimism `0x548cdb...cb4edc`; optimism `0x54ad5a...c72b01`; optimism `0x5e37ca...382e42`; optimism `0x646f45...e0ffd3`; optimism `0x675737...4706ec`; optimism `0x67c072...75f3e6`; optimism `0x67f3f4...dee5a9`; optimism `0x6d6110...609581`; optimism `0x736061...76a6c8`; optimism `0x795424...18993e`; optimism `0x7afa44...5d8781`; optimism `0x8123dc...1a0a02`; optimism `0x82d25e...e8107a`; optimism `0x868c37...724e91`; optimism `0x8add31...4fd9a5`; optimism `0x8cd0a1...db8193`; optimism `0x8f0ccb...2fb78f`; optimism `0x936177...93befa`; optimism `0x966504...cbd23a`; optimism `0x9ed440...e3a71d`; optimism `0xa4fad2...1101e4`; optimism `0xa54c43...404b20`; optimism `0xaf3ac4...c9e8e5`; optimism `0xb122d6...0aa849`; optimism `0xb126fa...5acaf4`; optimism `0xb5d337...109ec9`; optimism `0xb67c15...1b0e27`; optimism `0xbe765e...1d7336`; optimism `0xc2308c...dd59c8`; optimism `0xc9b595...33939f`; optimism `0xcabe9b...716db1`; optimism `0xcaec8e...10e5ee`; optimism `0xce2c93...c4d643`; optimism `0xce6f28...d8a569`; optimism `0xcfc9d6...763a62`; optimism `0xd27a9f...a87847`; optimism `0xd4d778...76101e`; optimism `0xd9dd04...18b829`; optimism `0xe0c663...2e8ddc`; optimism `0xe17149...2d8c9b`; optimism `0xe2ff08...d83482`; optimism `0xe6c2c3...a313ec`; optimism `0xe979f0...a8d0c7`; optimism `0xf11fc8...6f4a55`; optimism `0xf97b94...9fa600`; optimism `0xfbdcc2...f3ab03` | ✅ Audited |

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BatchSender | periphery | optimism | n/a | [`0x5ae0f2...0ddb75`](./contracts/optimism-10/0x5ae0f2910d0a166d432afe8fb1d0d48c400ddb75/) | ⚠️ Unaudited |
| DummyPriceFeed | operational_periphery | optimism | n/a | 7 deployments: optimism [`0x5a32bb...de3150`](./contracts/optimism-10/0x5a32bba3023216e3aad558b518d29b2620de3150/); optimism `0x651b09...a0444f`; optimism `0x70be42...d7f384`; optimism `0x856854...c96c6c`; optimism `0x939ae1...4e0fb7`; optimism `0xabf1ef...9d1e30`; optimism `0xb01c13...4f2d14` | ⚠️ Unaudited |
| EmptyImplementation | unknown | optimism | n/a | 4 deployments: optimism [`0xb980ad...946f90`](./contracts/optimism-10/0xb980adb094088e5b08d7a10f6550c7c4f5946f90/); optimism `0xbfb590...6ffb7c`; optimism `0xc88f82...0ca47f`; optimism `0xf0f7b9...f6b0e7` | ⚠️ Unaudited |
| EsPika | unknown | optimism | n/a | 3 deployments: optimism [`0x1508fb...3b0e78`](./contracts/optimism-10/0x1508fbb7928aedc86bee68c91bc4afcf493b0e78/); optimism `0x8d8610...f6e589`; optimism `0xfebe22...fd5ecb` | ⚠️ Unaudited |
| EsPikaRedeem | unknown | optimism | n/a | 2 deployments: optimism [`0xafef63...ed04f0`](./contracts/optimism-10/0xafef63b40d1857d74ea6f4e6e048636396ed04f0/); optimism `0xc5e959...10e1c5` | ⚠️ Unaudited |
| EsTestToken | token | optimism | n/a | [`0xfd1d31...c1ff96`](./contracts/optimism-10/0xfd1d31201ce72c054db0f560a672049f1bc1ff96/) | ⚠️ Unaudited |
| FeeCalculator | unknown | optimism | n/a | 5 deployments: optimism [`0x5bc52e...073c54`](./contracts/optimism-10/0x5bc52ef6fb0c4c5c064945690c3bd497fb073c54/); optimism `0x918ed9...7396e8`; optimism `0xe15b5b...97bbf2`; optimism `0xe3451b...b4d7c1`; optimism `0xf201ce...41fdbe` | ⚠️ Unaudited |
| FeeRewardBatchUpdate | periphery | optimism | n/a | 4 deployments: optimism [`0x7e1b12...0a88be`](./contracts/optimism-10/0x7e1b1279087441112d657465ecbd4feb590a88be/); optimism `0xa693d6...063fe9`; optimism `0xaee7e6...405ae3`; optimism `0xb22a50...4351c3` | ⚠️ Unaudited |
| FundingManager | unknown | optimism | n/a | 9 deployments: optimism [`0x1ffecc...6e18da`](./contracts/optimism-10/0x1ffecc488267a048a98d9a5a29a7485d176e18da/); optimism `0x3028a9...06f1de`; optimism `0x6e0dca...0e76e1`; optimism `0x7f4de8...1dca78`; optimism `0x8af150...c2636c`; optimism `0xbb198f...0d261b`; optimism `0xd851c6...68d2c0`; optimism `0xeb0646...30cec2`; optimism `0xf33291...c4f883` | ⚠️ Unaudited |
| FundingManagerReader | unknown | optimism | n/a | 7 deployments: optimism [`0x107daa...cbdfe2`](./contracts/optimism-10/0x107daa44d5d0cc93246256dea9c9c30052cbdfe2/); optimism `0x4cd495...f47edc`; optimism `0x85be35...3d24c8`; optimism `0xab04fe...b6c002`; optimism `0xb88c25...b36dce`; optimism `0xed57fb...7dee21`; optimism `0xfdc2b5...e42427` | ⚠️ Unaudited |
| Liquidator | unknown | optimism | n/a | 15 deployments: optimism [`0x10f26a...9510d0`](./contracts/optimism-10/0x10f26a1adfd5f90a8f01bbd69895e822449510d0/); optimism `0x13e533...f079fc`; optimism `0x2b4bdb...964662`; optimism `0x4090af...c4074c`; optimism `0x41b4e2...ab4671`; optimism `0x4212e3...71d037`; optimism `0x7e6bc0...0493fe`; optimism `0x8123e5...b7da86`; optimism `0x857f05...174c85`; optimism `0xab9c44...c2cc46`; optimism `0xafdaff...03bcd7`; optimism `0xb2694b...7c43f2`; optimism `0xcb2d8d...1466ea`; optimism `0xe706b8...58fba1`; optimism `0xf79589...176bbe` | ⚠️ Unaudited |
| MerkleDistributor | operational_periphery | optimism | n/a | 12 deployments: optimism [`0x194bd2...f66d24`](./contracts/optimism-10/0x194bd2944039c90b3a2ca4eb7127fd84c6f66d24/); optimism `0x67a9e3...a4d4be`; optimism `0xb56568...bc164a`; optimism `0xba1b30...e8ba08`; optimism `0xd8c5b5...51a051`; optimism `0xe3f934...838e99`; optimism `0xe9ae01...ac1a9f`; optimism `0xf07108...edbc49`; optimism `0xf1a19a...044cf6`; optimism `0xf3ea7b...f60774`; optimism `0xf7b7c6...819455`; optimism `0xfcc293...1ef6ec` | ⚠️ Unaudited |
| MultipleMerkleDistributor | operational_periphery | optimism | n/a | 5 deployments: optimism [`0x575420...114b93`](./contracts/optimism-10/0x575420596141388fbce8663bf728ff8485114b93/); optimism `0x993703...86c0d8`; optimism `0xb6fd7c...2379d1`; optimism `0xd61d11...4d50a8`; optimism `0xd733c5...c6543c` | ⚠️ Unaudited |
| MultipleMerkleDistributorReader | operational_periphery | optimism | n/a | [`0xf57511...9cb6f2`](./contracts/optimism-10/0xf57511d5bb0dfcc956acb2ecfdea289e099cb6f2/) | ⚠️ Unaudited |
| PendingPnlManager | governance | optimism | n/a | 6 deployments: optimism [`0x6fe979...a58712`](./contracts/optimism-10/0x6fe9798a61280310579cca9730ab658efda58712/); optimism `0xa3e737...c48128`; optimism `0xc06ace...7a9def`; optimism `0xe0c42a...540fbd`; optimism `0xe8de4d...f0bee5`; optimism `0xfd08d2...11d274` | ⚠️ Unaudited |
| PikaFeeReward | unknown | optimism | n/a | 7 deployments: optimism [`0x69db96...73c344`](./contracts/optimism-10/0x69db965bfe90c687b5229f446f420bb09073c344/); optimism `0x6ca92f...e0e9a5`; optimism `0x7f7368...e00677`; optimism `0xbe53a2...be44f8`; optimism `0xd9a009...efc50f`; optimism `0xdc839c...6cd12a`; optimism `0xef2dd7...8c2ce4` | ⚠️ Unaudited |
| PikaPerpV4 | unknown | optimism | n/a | 30 deployments: optimism [`0x084a88...cbb842`](./contracts/optimism-10/0x084a888d533b8e0a106722c15a88ac8927cbb842/); optimism `0x0d32fa...cec722`; optimism `0x17b626...4dc40a`; optimism `0x1f18df...b0172b`; optimism `0x20fc47...f41635`; optimism `0x528f78...e79d3d`; optimism `0x556fe9...db1124`; optimism `0x56b110...0f7a8b`; optimism `0x68a56b...8af527`; optimism `0x6c42b0...e98bc4`; optimism `0x6fec08...b060e1`; optimism `0x708957...3a0834`; optimism `0x7ff82c...7e425a`; optimism `0x875e7a...2fafae`; optimism `0x8c9b6a...16d25e`; optimism `0x9591ef...9d2a86`; optimism `0x9b86b2...5975ab`; optimism `0x9e67c6...f32f68`; optimism `0xb212c6...4d7bcd`; optimism `0xb52858...a0e8a7`; optimism `0xb7d509...1a8ec5`; optimism `0xc68b47...6baf67`; optimism `0xd28332...fc1935`; optimism `0xd6721d...d4ae18`; optimism `0xe08276...16bbf2`; optimism `0xebfdfa...74e276`; optimism `0xf5b947...e3ac22`; optimism `0xf9d888...a16c02`; optimism `0xfa1901...b62f9a`; optimism `0xff90bb...c528d2` | ⚠️ Unaudited |
| PikaPriceFeed | operational_periphery | optimism | n/a | 3 deployments: optimism [`0xdb4174...bd828a`](./contracts/optimism-10/0xdb4174e1a4005a30f5a0924f43c8dfcb8cbd828a/); optimism `0xe32cac...ffb86d`; optimism `0xf9135e...e45e34` | ⚠️ Unaudited |
| PikaPriceFeedPyth | operational_periphery | optimism | n/a | 5 deployments: optimism [`0xb46f0a...764c2c`](./contracts/optimism-10/0xb46f0ab7999b7df52c11d782185f73e882764c2c/); optimism `0xba6e95...fd48cb`; optimism `0xcc2003...380cfb`; optimism `0xd42431...5a4f0b`; optimism `0xeab7bd...f239f7` | ⚠️ Unaudited |
| PikaReader | unknown | optimism | n/a | 22 deployments: optimism [`0x283271...7858fa`](./contracts/optimism-10/0x283271f69baf4a10b7d5f3dc21491f5d8a7858fa/); optimism `0x2dc27d...0582f8`; optimism `0x2e55b6...56dc8f`; optimism `0x3b6209...b07fe7`; optimism `0x3cbdb9...25810a`; optimism `0x4794c6...e40f35`; optimism `0x4ecacf...bc47d5`; optimism `0x57084f...01cb8f`; optimism `0x6a912f...4487ee`; optimism `0x83b5cb...ed3dae`; optimism `0x846597...a44305`; optimism `0x8ca907...221a40`; optimism `0x8fa7e4...d6cd16`; optimism `0x9a1286...93dcff`; optimism `0x9ed10c...8143f3`; optimism `0xa30f6c...c978b7`; optimism `0xb5cd27...672d18`; optimism `0xc84405...b20be2`; optimism `0xd15887...63ee39`; optimism `0xd4c8e5...423b71`; optimism `0xdde437...6e0d44`; optimism `0xfb64c0...1cf07f` | ⚠️ Unaudited |
| PikaStakingDelegation | unknown | optimism | n/a | 13 deployments: optimism [`0x3976b7...e38bb0`](./contracts/optimism-10/0x3976b7c6bd982ab0e3a0d6ed898932fc81e38bb0/); optimism `0x5cc304...10071d`; optimism `0x6051e8...4a143a`; optimism `0x719b83...46ef26`; optimism `0x75dfac...98278f`; optimism `0x762e7c...8a0171`; optimism `0x7ba146...8c4e92`; optimism `0x950791...9cd0aa`; optimism `0xa8e943...2a7bb9`; optimism `0xdac67b...6b1e55`; optimism `0xe5b41b...3c5db6`; optimism `0xebcb3e...2b79a0`; optimism `0xedfd13...85e70d` | ⚠️ Unaudited |
| PikaStakingReader | unknown | optimism | n/a | 2 deployments: optimism [`0x66f63f...282b05`](./contracts/optimism-10/0x66f63f7db6bce657d1d9d68d7a67255864282b05/); optimism `0xc8e617...745a0e` | ⚠️ Unaudited |
| PikaTokenGeneration | token | optimism | n/a | 7 deployments: optimism [`0x648dda...fe1935`](./contracts/optimism-10/0x648dda7779d9e3e655fe7a75ddbdfed4fdfe1935/); optimism `0x723dad...4730a0`; optimism `0x89c718...a320c7`; optimism `0xba6790...320d01`; optimism `0xc67ce2...a238d6`; optimism `0xd4bcfc...47ecdd`; optimism `0xe10821...08a03e` | ⚠️ Unaudited |
| PikaTokenGenerationPublic | token | optimism | n/a | 13 deployments: optimism [`0x7c4ace...d207ae`](./contracts/optimism-10/0x7c4ace93f0d279f656f9ea4baea1c39940d207ae/); optimism `0x824026...630dad`; optimism `0x83222c...c04546`; optimism `0x835883...003cd7`; optimism `0x8fcb6e...e60d3b`; optimism `0xa01e23...2bf3f4`; optimism `0xb10101...889f79`; optimism `0xb210f3...4b9b62`; optimism `0xb2c231...d14f99`; optimism `0xb7a6d2...332449`; optimism `0xc37277...646953`; optimism `0xeb66f5...e8813b`; optimism `0xf61b1c...296be0` | ⚠️ Unaudited |
| PikaTokenReward | token | optimism | n/a | 2 deployments: optimism [`0x622a35...9c7b76`](./contracts/optimism-10/0x622a3549a3c857095f7172e76a92bd58979c7b76/); optimism `0xfd9d52...d278ca` | ⚠️ Unaudited |
| PositionRouter | adapter | optimism | n/a | 27 deployments: optimism [`0x573864...e348c4`](./contracts/optimism-10/0x573864748fae686fe6567e704cf83eefeee348c4/); optimism `0x582641...ed12d7`; optimism `0x5e268e...0526c7`; optimism `0x64a912...dd2f2f`; optimism `0x71b4d6...ab4171`; optimism `0x77d432...828edb`; optimism `0x7ae43c...1406e0`; optimism `0x7caa1f...db0389`; optimism `0x87459f...06efc8`; optimism `0x91939e...fa512b`; optimism `0x939adb...26532f`; optimism `0xa10327...df79c1`; optimism `0xa78cd8...5078cc`; optimism `0xa8ed31...6ba494`; optimism `0xab4771...7aee85`; optimism `0xafef59...d440e1`; optimism `0xbca22c...38c7f2`; optimism `0xc46fac...3cd807`; optimism `0xc701a9...0479f7`; optimism `0xcae484...804165`; optimism `0xd73ce7...ed88a3`; optimism `0xe07db5...04b2d6`; optimism `0xe2152f...3cc0cf`; optimism `0xe6e808...5f9d4b`; optimism `0xf9cc04...c4494e`; optimism `0xfbf706...77ec28`; optimism `0xff9e26...28a22b` | ⚠️ Unaudited |
| ReferralCodesRegistry | registry | optimism | n/a | [`0xd1fb77...fce553`](./contracts/optimism-10/0xd1fb7706eb0b8c9dd09567cde90a6077f2fce553/) | ⚠️ Unaudited |
| ReferralReader | unknown | optimism | n/a | [`0xa1b7a8...ba0823`](./contracts/optimism-10/0xa1b7a8c8e6e66de5f36eb297aa9c007b57ba0823/) | ⚠️ Unaudited |
| ReferralStorage | token | optimism | n/a | 8 deployments: optimism [`0x66e4ba...724d94`](./contracts/optimism-10/0x66e4bace1256cf6a6c72b0d70a53b2c07d724d94/); optimism `0x943425...3496b1`; optimism `0x9b7568...ab2688`; optimism `0xad85a9...be1321`; optimism `0xc66ca1...342c5a`; optimism `0xcd3db9...866d9c`; optimism `0xd68111...34493e`; optimism `0xe24045...a719cc` | ⚠️ Unaudited |
| TestToken | token | optimism | n/a | 2 deployments: optimism [`0xd916d8...4f80c5`](./contracts/optimism-10/0xd916d839f71c0d6d21d61fa42ee90f53b64f80c5/); optimism `0xea3d30...7a28cc` | ⚠️ Unaudited |
| TimelockController | governance | optimism | n/a | [`0x7e47f4...40fb9f`](./contracts/optimism-10/0x7e47f4b446e42b8379207998822095438040fb9f/) | ⚠️ Unaudited |
| UserMapping | unknown | optimism | n/a | [`0xc412d5...d38b91`](./contracts/optimism-10/0xc412d5e42fec1b38ac89fe3e677a509538d38b91/) | ⚠️ Unaudited |
| VaultFeeReward | core_logic | optimism | n/a | 6 deployments: optimism [`0x060c4c...3253fe`](./contracts/optimism-10/0x060c4cb78f1a4508ad84cf2a65c6df9afe3253fe/); optimism `0x0e431e...e1011a`; optimism `0xd26404...b090b3`; optimism `0xd3e9b3...667ee7`; optimism `0xd6bb26...11e6e5`; optimism `0xd85379...9f197d` | ⚠️ Unaudited |
| VaultRouter | adapter | optimism | n/a | 6 deployments: optimism [`0x59fd9d...249bee`](./contracts/optimism-10/0x59fd9da5dd96b9898cd53db572e03e1240249bee/); optimism `0x5d055b...347c8f`; optimism `0x7223bd...04e3fb`; optimism `0x9c570b...9115e3`; optimism `0xedd0d8...1d29b2`; optimism `0xf52fc7...becba2` | ⚠️ Unaudited |
| VaultTokenReward | core_logic | optimism | n/a | 9 deployments: optimism [`0x5a8737...83afd0`](./contracts/optimism-10/0x5a8737294c515958e865ea3887082961a883afd0/); optimism `0x703d07...a344d9`; optimism `0x841258...d04c64`; optimism `0xa6cac9...3fbaeb`; optimism `0xbce11d...5e82d9`; optimism `0xc71ce7...c4acbb`; optimism `0xce90fb...e082df`; optimism `0xf6f64b...ae7912`; optimism `0xfd407e...6bb2da` | ⚠️ Unaudited |
| Vester | operational_periphery | optimism | n/a | 7 deployments: optimism [`0x71f25b...277605`](./contracts/optimism-10/0x71f25bac9fb59a04bf39830ad2d8d0df9c277605/); optimism `0x9ba3f2...afd076`; optimism `0xc4100e...1713c3`; optimism `0xee964b...f48c3d`; optimism `0xf6bf9e...bbbbeb`; optimism `0xfbf4a1...456811`; optimism `0xfefd4d...ebf8a7` | ⚠️ Unaudited |
| VesterReader | operational_periphery | optimism | n/a | [`0x654359...b897aa`](./contracts/optimism-10/0x6543593557b363ca92f9690e0af4680555b897aa/) | ⚠️ Unaudited |
| Vesting | operational_periphery | optimism | n/a | [`0xef5855...0799aa`](./contracts/optimism-10/0xef5855aa7a6e6035a3e39fee0ed1397c4e0799aa/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (20)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | optimism | n/a | `0x0a1e7f...d07218` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x17e8d2...7004d8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x20d52d...94da65` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x31a7d1...8c13fa` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4c55cf...d9e99b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x56d830...e598de` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5d974d...37615c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x666d4e...99dca4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7884b1...805b13` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x80590b...f6e6f8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa74d0f...0ccb6f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xacb86a...80e314` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb3d258...3eb124` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb4b4e3...ec2717` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbf991b...fd202a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe3a50e...73b92e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe7c1cf...8ab25e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe939df...7776a9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf56b05...5b2a6d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xfbe2e2...5a6881` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/pikaprotocol](https://skynet.certik.com/projects/pikaprotocol) | CertiK | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |
| [PeckShield-Audit-Report-PikaPerpV2-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-PikaPerpV2-v1.0.pdf) | PeckShield | Audit | 2022-01 | stale | Direct | contract_name | 2 | n/a |
| [PeckShield-Audit-Report-PikaPerpV3Audit2-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-PikaPerpV3Audit2-v1.0.pdf) | PeckShield | Audit | 2023-05 | stale | Direct | contract_name | 4 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 64 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=6

Zero-match audit list:

- [13678] skynet.certik.com/projects/pikaprotocol

Fork inheritance lineage and inherited audits are included when available.
