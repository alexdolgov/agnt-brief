# Agentic Audit Brief: Arbitrum Exchange

⚠️ Lifecycle status: DEAD - TVL dropped 18.5% over 90 days

## Project Overview

- Project: Arbitrum Exchange (`arbitrum-exchange`)
- Lifecycle: dead (Tier 0, 100% below peak)
- Generated: 2026-07-04T14:53:04.039Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-3e24
- Chains: arbitrum
- Contract surface: 136 unique implementations (138 raw deployments)
- DeFi Llama TVL: $11,643.00
- On-chain TVL (included contracts): $3,206.49
- TVL by chain: Arbitrum $3,206.49

## Project Description

Structural profile: 22 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Contracts are linked by 3 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 221; live-surface contracts included: 138 (8 live, 130 unknown).
- Excluded by liveness: 83 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/6 (50.0%)
- Deployed-live implementations: 6 of 136 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/6
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 130
- Unique implementations: 136
- Raw deployments: 138
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-03 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 50.0% | 2023-03 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArxToken | token | arbitrum | n/a | 2 deployments: arbitrum [`0x94e0e99759753d4ad17e508cf7ee25d2ea002486`](./contracts/arbitrum-42161/0x94e0e99759753d4ad17e508cf7ee25d2ea002486/); arbitrum `0xd5954c3084a1ccd70b4da011e67760b8e78aee84` | ✅ Audited |
| ARXPool | core_logic | arbitrum | n/a | [`0xee1d57ace6350d70e8161632769d29d34b2fbfc8`](./contracts/arbitrum-42161/0xee1d57ace6350d70e8161632769d29d34b2fbfc8/) | ✅ Audited |
| MasterChef | unknown | arbitrum | n/a | [`0xd2bcfd6b84e778d2de5bb6a167ecbbef5d053a06`](./contracts/arbitrum-42161/0xd2bcfd6b84e778d2de5bb6a167ecbbef5d053a06/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArbiDexRouter | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x3e48298a5fe88e4d62985dff65dee39a25914975`](./contracts/arbitrum-42161/0x3e48298a5fe88e4d62985dff65dee39a25914975/); arbitrum `0x7238fb45146bd8fcb2c463dc119a53494be57aac` | ⚠️ Unaudited |
| ArbiDexZapV1 | adapter | arbitrum | n/a | [`0x97c397b23836ebaa1f5602894caa469537e85f21`](./contracts/arbitrum-42161/0x97c397b23836ebaa1f5602894caa469537e85f21/) | ⚠️ Unaudited |
| SmartChefInitializable | unknown | arbitrum | n/a | [`0x75bca51be93e97ff7d3198506f368b472730265a`](./contracts/arbitrum-42161/0x75bca51be93e97ff7d3198506f368b472730265a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (130)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x042eba4d224a65ec6537307bd8d1d792bdad7a20` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x04ed471971f31ae2fdc82f10a71c769d318af243` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0b7690fa1db053b046256226ce9ad8ae890117e8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0ea16609c38e483635fc4d8cff5df16c052b57f6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x10cac681d9459d0ebb7b0402a345f5d3c73ac49b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x11646d42ea491986c793372784e631d999c6f732` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x16381bc389e076f94d6827849a5712bd2137b5a0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x164eb64f2b490ac9bb94d598609c52c1d5e73d45` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x19b03f61681fe69c92560ac3d82e0b38c59c068e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1a378efeba74b6b6460fb199e5937107e0a94224` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1bac1e63b976c43396dfa999ffb7a5724f43af5f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1bbc0f940ac7b067f605ea7b2d292b21bdeae536` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1d58f276e89838a36640162853046d23f9586bf9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1f157f0b295b60806921d2310122992cee23314b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1fbfb4a308e8a72b4a206ef97aafdc8f99ce869f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2207679518dbb776f17d066c1473ab681a04ba6e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x22919fd19126c49a7088adb897d0ae227192073f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2462bc78a1d45f86bd2886ac7ac5bf1fa77b23a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2546ff4f9b6d211c482c4fbb5c1b1ddb7120df9f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x28300f1a414767196ab58649fa06168090e41e6e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x29a94d1b97f146a43684cacfb4bf52e9bb4f535c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2b71424d324078e45de7785f01be281f061c2ab2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d5133eec960a9819f07ca01029230e24ef8faf1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2fe04f01bc28462d56ecead8f28f08f721433875` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x314e8de7e4327f0a96ebee26f641d7b1832576b6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x31d2f560d5d2035e383e45eff910458eda711869` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x32012d92369d00df1b0fd983ffd0d31d04107fb7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x323423c84ca8efae08e9f199d63ba6d00ec1cd49` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x34575246efd7d472647da6442668cad4dab152bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3480c9a3fd8f8197a0e8eb915dffebcb059e77bb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x34ff1d8697786d2c7f51c2b5dfce7130089ca1b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3708205028ef165b9f2733a02f16e3e5f7f3f81c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x37f7df54a0a905485c16d5040c0a7e8c153a2499` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x385e596dd997bbfb2db627ff491f227ac680ff24` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3a2de078a0dc8d1df5c52ee8235c453bbbdb6e1e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3bb65f9fd9add0e61337937d1f7287ab97ea529a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3c89ba2da800248193f35c45158469249ec6f89a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3e05b58b470adb766ad2b8eb91ce47fe60077d25` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3ead89c7c2ba1a8e0df4750e70b15c8627339c97` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3eee2f1cd03fb1e5a67eaf62623a8a5169a8599d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x46097120bd734c5c096406d073c22e9de6ccb89b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4928c446b02b91c2503b1483d21669e36242a6ec` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4a1862bf9a92c2497f0886661ea3f7f6a2e83b44` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4eaf2675b51530463948811d0acf21353dc02d73` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4ef1a7a4bf442b7573df705e10d039e6d76923ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5181267d0a24af08afac63b72c53b8c1188a1ea0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x523ad48fc41f2ea77f593e6ef2005e52959e21b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5294cdd066459dd756151f2e871e8d6e4475d095` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x54de45529e9b97fdea0baae1824b6037c30317f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5c91850486c4885709a9c0ce1f0daeb5444398a0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5d14efeb27fcf0e0f631fe165c626f9bd13bc1e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5dd7cb04ed941f6919ab42519f13662323a16e24` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5edd2043bfab1fb3272bde5c8d26b55ffa53d04b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5f76c560d9fb97aafb87fa397f7ca1cf1d6ad4cc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x619e1f05af6cc4d1ed0fe967c074c9f38183813b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x63cbd27ef83e2a67d2e4d5c82cdd4d06aff8f52d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x661fff85d27ef60849188414f188f97c7c12f6ea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6989baa0adaf4574427e80b82bd16dcc60bc64ee` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ad8000b04c932088529fa0cf459ef149a6dd1c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x73425612e8bb0ff510f8ed5f6bf056a9dce5dc7a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x763fb9879f6b5f8cccc80ef65961f16af8e5e05c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x78db9564086f33e36e5e31cdcf0cd04299d4487e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7be633c6f03505a92bb3201d6d6203d2cf1ded77` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7e38b1a2a08397d11ce763fd044899599dac9907` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7e620961c63fd7f87826961e781a1d5a9043bcf2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f3728a010651181d0f5cab2376a911478ab3edb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f7c41a3a3140cccdc9d893974daf662d319eebc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7fdcaa30662e5329ac06ac9af4970f9fd7f36b24` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x840ce18bd7cfb0a72ab80e7dab1c47b26973c3aa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x856cfd5a7fc9bfefc239f83e6b681090ee39754e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8614e4429835f866c696214438ab50f969b0f46f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x87c3a367477c956e2412f792fe73b110728e7c1a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x88314284457fdb011b23627a45fba1f0ebe74179` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a02e051f1eba594b09533f7ca0248d32c2f1655` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a56afddd540621fe9705a535ae206bb2ab90431` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8b7caf868c03e2a0cb28d9c1f794e5c21a15bea4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8e4cf632b3f2c7fa6d29d424e1c675dcb00ca720` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8f147f19ea039e8eb384cb0731118f12dabd42ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x941fa3ffbec725c286c13a1422ff477571e18eaa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x99445b6771a1bfceef3092615de2e1c59e12671a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9a2eebbe428fc03bd84e232b506226ee47d7b060` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9bf6a55fa8b58d9911e71e90890d63ffdc66d4c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9c6652c28b10b4881a7c69221231fc09cbaa1f70` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9cb311b186a220fd7aed12167df83240e18be3f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9ce1e88e9c5978999f5774a7a96a31e3ada7c261` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9d6996fbf7a4d8b7cf393f01a8ccee7524bb7053` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9e6072f790ed9a7d2b4a65bd88967d2e1e5b21c0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9eb7127bd319789cf2e2ef42aec6a25256af5b0f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa00db03eb4ed4997facc71da3d52971793e98abd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa491a95608399a3cf578d6f31d3ca69d1b2225c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa4fe93b845bb801fe8c9ac7d55cd0af2f7acb869` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa634bf782ab05c40827ced7a500821eebe08ce44` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa7a417eb8ba430b3057e59689894fdc44ab95c56` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xacfa3006a474f37e2c90269b072aa20da2ba8ea8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xad4871fb46126fa783e60093b3cca1200e06a383` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xad7c6f736ea53844d7ed9348237e174c2fa58aaa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xafa76a887d04441480f589e2ca87cedc0d90fc1d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb20cd382d6bb275a3ebaaee2cca438c01adf3d12` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb2907ec1ad09d88836f6ebf351ce9f21867adec3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb357aab3549f64a31afe927952121799ba56255a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb37178bf706a0c25674d245f4e9fd270b767dd0f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb8430067e32283a5ddee53ac380b4d2ea0692c79` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba99c162202a5e0d92fd372fd0a7e434b9f83a42` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbf21f51fa53e91b8fc858e743baac780c4a414f5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc0ecec68296344d90c3dc6b84009d2ff06a5d7f3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc25a723d79a54d77eb3de3ca3d4b4f84e1551e1b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc4f0b8febcf55c47fee8613bb0f6f7d4f51acdb1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc77d0bea5e0a881f0b2743c1de83a2a61963344c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc90816c56a475f1ae55306affdbabcb33bb529e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc9186b7b11c85c08b0e21ea050993f4c4a1d1d44` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xca017ca89edf7bff853d43cf71c45fb5f04b1b3d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcd7d01d14f9f010ff64897f37189e8f722880852` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd0f9e9f3014a41885abf623b9aee8662b6e4dac3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd1685ad7c89c8e2ee7afe4c2a8a297b1b654f023` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd40956667b5f21a04c9ad50336d6c4230dbeb7d7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd4acac8d6e3f3a69d74071684fddf8c665cb9caf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd75f0c3dba9f3db381af10b07398772981fcc27e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xda7338683d0fd0bb615716d18082dbb399f78378` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xddfa8714e2a86722cee15af2b1822480dec00ae1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe2d77be5af4502a75ac70bdb679da600e0a5fa6b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe744c7b220425d8e4b0449e2961af31008dff7a2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7c233ce89a96b012a2604353f117358d6f2c908` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xec81e45835f83877ec36e6910d31a6a5a9212c1d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xedb745d1ca6aa9a32579a3a9a92879f034906ba6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf088e3f211a0169290b12d082f2a6f0b5723d769` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf0e8d817d36cfcb3f534c5d8a91c20669c3429c9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf1fed2c88c1874b508e263cc7dd08efb63103120` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf3069a21365b508cf7062782ff750a527d59f9dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf3a3066c7dfb2ec406b168bb1872742f8fafa3ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfcd9d081d9e228b55b672ae8f67d150be48a421f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ARBITRUM EXCHANGE Full AUDIT Report.pdf](https://github.com/Vital-block/Smart-Contract-Audit/blob/03c1a811a69f8e459264c22d140cba99b3a518da/ARBITRUM%20EXCHANGE%20Full%20AUDIT%20Report.pdf) | unknown | Audit | 2023-03 | stale | Direct | contract_name | 3 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x3e48298a5fe88e4d62985dff65dee39a25914975`](./contracts/arbitrum-42161/0x3e48298a5fe88e4d62985dff65dee39a25914975/) | ArbiDexRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x97c397b23836ebaa1f5602894caa469537e85f21`](./contracts/arbitrum-42161/0x97c397b23836ebaa1f5602894caa469537e85f21/) | ArbiDexZapV1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x75bca51be93e97ff7d3198506f368b472730265a`](./contracts/arbitrum-42161/0x75bca51be93e97ff7d3198506f368b472730265a/) | SmartChefInitializable | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 130 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=3

Fork inheritance lineage and inherited audits are included when available.
