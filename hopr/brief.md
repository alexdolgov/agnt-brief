# Agentic Audit Brief: HOPR

## Project Overview

- Project: HOPR (`hopr`)
- Website: [https://hoprnet.org](https://hoprnet.org)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.625Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: gnosis
- Contract surface: 75 unique implementations (147 raw deployments)
- DeFi Llama TVL: $862,408.19
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Privacy. Structurally: 27 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 13 common project-authored base contract(s) (ownable2step, context, ierc777). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 253; live-surface contracts included: 147 (85 live, 62 unknown).
- Excluded by liveness: 106 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/13 (7.7%)
- Deployed-live implementations: 13 of 75 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/17
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 58
- Unique implementations: 75
- Raw deployments: 147
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: 7.7% (ChainSecurity)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 1 | 5.9% | 2021-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HoprChannels | unknown | gnosis | n/a | 9 deployments: gnosis [`0x09b77f370c2f379f3db42b799fa7edbb37d9e51a`](./contracts/gnosis-100/0x09b77f370c2f379f3db42b799fa7edbb37d9e51a/); gnosis `0x2ccd294e00593ce482216b88f3b481df5eeff357`; gnosis `0x4663ef95617fdb156346a36b6bd64df014115a52`; gnosis `0x55271288d8c0ba3b2ff2d55bdc5fdafee6188732`; gnosis `0x5bd809bdbaa8d3d5f37743ae86bfef766dee56b6`; gnosis `0x69e63a01a2209f733c83eca619ddda2bea4d5cdf`; gnosis `0x7a33eb3900db3e02a4c149e49dbc1f0359921b16`; gnosis `0x81a79fcde8ffe6452e51d8e0493b37c2a5a09c57`; gnosis `0x9680f21d4583ad27f2e6bc3005edf120fff057b7` | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BoostUtilsLib | unknown | gnosis | n/a | [`0x8197525557233031b110038ae52dfc3c4a75567a`](./contracts/gnosis-100/0x8197525557233031b110038ae52dfc3c4a75567a/) | ⚠️ Unaudited |
| HoprAnnouncements | unknown | gnosis | n/a | 7 deployments: gnosis [`0x0347a131861881604ea841b678210ba60b8e6d82`](./contracts/gnosis-100/0x0347a131861881604ea841b678210ba60b8e6d82/); gnosis `0x2ecec248ec225834e272a03e10016f890994f29a`; gnosis `0x5ce40e4b330ea20d9217f0120e3329b98017f9fb`; gnosis `0x9c2e991a0b2579d1873f1d8e39550245ebf11f46`; gnosis `0xca77a29b5a993bbe4a983d7461bf0a296698d048`; gnosis `0xe45a8dbdadafd86ab7e2368b4749864083331cfc`; gnosis `0xe79cfb480447980f86988dd580411c4b280b2814` | ⚠️ Unaudited |
| HoprAnnouncementsProxy | unknown | gnosis | n/a | 3 deployments: gnosis [`0x060dbc55867f0ffc20e69f9273113aeb90f4d049`](./contracts/gnosis-100/0x060dbc55867f0ffc20e69f9273113aeb90f4d049/); gnosis `0x191ee0d1494eb159a5f758bc7c05e434cfaff6e1`; gnosis `0x45b000742a693ab00fa4839a086dfb6155a15d3c` | ⚠️ Unaudited |
| HoprDummyProxyForNetworkRegistry | registry | gnosis | n/a | 8 deployments: gnosis [`0x306c54123f0197bec232fe754f0b7cb9059d6db9`](./contracts/gnosis-100/0x306c54123f0197bec232fe754f0b7cb9059d6db9/); gnosis `0x4d1a65716cba81b7b9b34ae6adc67c8eafb0af20`; gnosis `0x717cb24f3118b6d0895e3065d495e21a77c20e13`; gnosis `0x720a25152c8343f05dfd6a328df13b7312c42295`; gnosis `0x879fa1eedfe2fa49e69fa729dc0298b6a07423c0`; gnosis `0x8b33f0bddb1de051c6af70cf165e9ea0ebe822a5`; gnosis `0x9bcba0c73fc68b445fa398f98b8a1650dea81ce3`; gnosis `0xb167f8c83a5e7ffb4b0ad978274498961d3b2ca2` | ⚠️ Unaudited |
| HoprNetworkRegistry | registry | gnosis | n/a | 2 deployments: gnosis [`0x15a315e1320cff0de84671c0139042ee320ce38d`](./contracts/gnosis-100/0x15a315e1320cff0de84671c0139042ee320ce38d/); gnosis `0x582b4b586168621daf83beb2aeadb5fb20f8d50d` | ⚠️ Unaudited |
| HoprNodeManagementModule | unknown | gnosis | n/a | 10 deployments: gnosis [`0x1167fb204298799b0b9e98896d58958caed164b0`](./contracts/gnosis-100/0x1167fb204298799b0b9e98896d58958caed164b0/); gnosis `0x1e158754342432d866f1ab6e2e23dd71e496bc6b`; gnosis `0x3b008cb90d252b731ceb8952a6ed78b84ab31ea3`; gnosis `0x3f59b44bff48427373db13504c2830ada2d600a3`; gnosis `0x4db69d5d0ccad110a6f327bc837fe5b7e1ffbdae`; gnosis `0x5d6ad492888472f585de6b2aced217ed3db87ae7`; gnosis `0x5f36592e29d90558bc629a4afd87d37d38d9a595`; gnosis `0x79c3bf06e96a9373765284afb0a35e9529e2b3f2`; gnosis `0x7bf108c2707658971e24e488aaceae73535b2b9c`; gnosis `0xe74ebb2a63ac86a84d6c0040a17465e3997f3f68` | ⚠️ Unaudited |
| HoprNodeSafeMigration | operational_periphery | gnosis | n/a | 7 deployments: gnosis [`0x06e01a5cebad283c0f00f857c06fbd804b054910`](./contracts/gnosis-100/0x06e01a5cebad283c0f00f857c06fbd804b054910/); gnosis `0x593ea8942e8b1d36f7714a15d43b5914def7b449`; gnosis `0x6e3ef29b17fb33c1db372b06b19ce937894b317a`; gnosis `0x74dfcdf50340b772696caef3f3bc4cd776d37e8a`; gnosis `0xb9a6f18b40f632869defa4bbb2212c63767eb159`; gnosis `0xe95b481aa95e1d071a4b250ea5f9dd498a19646b`; gnosis `0xe9670b5d87c87111c9050d915971b73b9f5021a9` | ⚠️ Unaudited |
| HoprNodeSafeRegistry | registry | gnosis | n/a | 7 deployments: gnosis [`0x0e4e1a2d851663462523bf38ca56259aceccbc76`](./contracts/gnosis-100/0x0e4e1a2d851663462523bf38ca56259aceccbc76/); gnosis `0x4f7c7de3ba2b29ed8b2448df2213ca43f94e45c0`; gnosis `0x549dce2ce8ba1c177b080d372580fa4d85123671`; gnosis `0x7b8e16ada4720eb87b8000b9d5700eebbb6b1b5c`; gnosis `0x8cdf9a10646403c9aa797610d4c782ad26d334f4`; gnosis `0xafa257f2799835d2e29e7ec7ee448530f9d8cb20`; gnosis `0xe15c24a0910311c83ac78b5930d771089e93077b` | ⚠️ Unaudited |
| HoprNodeStakeFactory | registry | gnosis | n/a | 11 deployments: gnosis [`0x048d04c9f5f74d65e76626b943779dec6edcefec`](./contracts/gnosis-100/0x048d04c9f5f74d65e76626b943779dec6edcefec/); gnosis `0x098b275485c406573d042848d66eb9d63fca311c`; gnosis `0x439f5457ff58cee941f7d946cb919c52ea30cfb3`; gnosis `0x63e44a4e1349d1c3f0cfc52c4dae7710a6345761`; gnosis `0x6827ec1bf6232b07f30c2f2924ea681412b07687`; gnosis `0x878ea9591726e70aa06f820c3ba5142a0c8ab58b`; gnosis `0x87e1ebd42f0f79d88e5af212d0c24dc155ea78c0`; gnosis `0x8e9e7bedae175d57054d15e8870e00e5bc66d954`; gnosis `0xcb0841cc3dbde97ac52b945f02ee4f3d8707d977`; gnosis `0xe9a9cf50534eb0817f9fbb115e00bf8463e973db`; gnosis `0xfb22ecee9fb5b91c096d34649892ecc509912684` | ⚠️ Unaudited |
| HoprStakeSeason7 | unknown | gnosis | n/a | [`0x65c39e6bd97f80b5ae5d2120a47644578fd2b8dc`](./contracts/gnosis-100/0x65c39e6bd97f80b5ae5d2120a47644578fd2b8dc/) | ⚠️ Unaudited |
| HoprStakingProxyForNetworkRegistry | unknown | gnosis | n/a | [`0x1c0c4efb9a2cce18d66eaffc585876d8ca768013`](./contracts/gnosis-100/0x1c0c4efb9a2cce18d66eaffc585876d8ca768013/) | ⚠️ Unaudited |
| HoprTicketPriceOracle | operational_periphery | gnosis | n/a | 12 deployments: gnosis [`0x147899ca57111d9081df125c2bcbd839981f04c2`](./contracts/gnosis-100/0x147899ca57111d9081df125c2bcbd839981f04c2/); gnosis `0x27de67e72a57d18e99d0828a31298d4cc1c43d46`; gnosis `0x344f8dd6dbcd5bc0b396ddd47f20fdc9a89c3c90`; gnosis `0x46aa0d83b8a28005580ae83477056f4ada9afa2f`; gnosis `0x4dd10ea363323935b933778f5d869d87747c7b44`; gnosis `0x624af123a0149670848fa95e972b35ffee6a48fb`; gnosis `0x95566efb62b7d1e95a9ba05e1e43042a95da1e42`; gnosis `0xca2c60433ec6a10ddeabbbe3ce7f9737b1a0628c`; gnosis `0xca9559e2fba20bcdf455879b17158a28f26f6b39`; gnosis `0xcffe25caf9b1cca3cc4b54842a4e0e520a05ae17`; gnosis `0xf69a919baf23e16a83fcebb56f6b50602a91fd6e`; gnosis `0xfa251d4c367683d6181531afd5964e660acf43a0` | ⚠️ Unaudited |
| HoprToken | token | gnosis | n/a | 3 deployments: gnosis [`0x428246bd8632f727fec70662b10dc37b519624df`](./contracts/gnosis-100/0x428246bd8632f727fec70662b10dc37b519624df/); gnosis `0x66225de86cac02b32f34992eb3410f59de416698`; gnosis `0x9c312f8997f215ada9802da9fb281206350ead2b` | ⚠️ Unaudited |
| HoprWinningProbabilityOracle | operational_periphery | gnosis | n/a | 5 deployments: gnosis [`0x3c5cbdfc873a6a52093c1d3801e29c2d78b26c7f`](./contracts/gnosis-100/0x3c5cbdfc873a6a52093c1d3801e29c2d78b26c7f/); gnosis `0x5136bac09c78af89bda56f5086a3f3e2ee4eafca`; gnosis `0x74329f8153cbb33aabded79ee84748fe8923c5e3`; gnosis `0xa641822a52acbdc0c0123337f715c1d9756c21bd`; gnosis `0xf2d64bb29a5207dfcf6185161e43364d3b2d9a27` | ⚠️ Unaudited |
| MyERC20Swapper | unknown | gnosis | n/a | [`0xb331b22815e1dc0eedee370fbc4f793eff78ee97`](./contracts/gnosis-100/0xb331b22815e1dc0eedee370fbc4f793eff78ee97/) | ⚠️ Unaudited |
| UniswapV2Swapper | unknown | gnosis | n/a | [`0x44ae0c2911e1cd04b4b7b66b6583c6948fd43e06`](./contracts/gnosis-100/0x44ae0c2911e1cd04b4b7b66b6583c6948fd43e06/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (58)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | gnosis | n/a | `0x03a13cfd79009b56b7d62c68fc3b8fbb3b2b0752` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x15b362617891169f7e448d88322d572f205e3c78` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x2f3243adc9805f6dd3e01c9e9ed31675a5b16902` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3065d24595cbcadb03b33c91c00593dc6119ef14` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3c00454fb6559e4807b36b40bfc704eef5b9775a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3e7c4720934ff6a9fe122cb761f36a11e9b848d9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3faf312607bf4fd346f22d588ca24c0cad962305` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x3fca373de74f7643038a9d83b996ed35605dd2a3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x43bfd18535983233b39d79a5c426ed5c33093203` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x44f9383000905c1c94fab6efc32441a69c1eb38d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x490be8ac0fe25ac93c3133ae73cec0c433961a34` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x4c3bb6470b72a749db1bb394c024a92ab60a793e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x4d3d5fe22d7e4078af8c3d1106f71f42d4062694` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x4e7031069760877cae542d64e1f630c495b3e958` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x51b0bda0af2d760302ca433adedd3858f9bfb4c4` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x53225b539b39a7a8cc5bf2f0f9f4b73e15569029` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x545e7f67f80e60928052bd0385e76f71dc694262` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x58d2938bb8b4cf8954b2169b032122645592b953` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x5bc5e9cd02d0caab0a478b69a7c97068fe5f031f` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x600aa477eaa2f7dfc06c4d04314679405efdb226` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x6279e6966b5702af5cf28c2643470a42dbaf4886` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x6508ca6da67492512954d711f42b9b4680388de9` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x683d3859dfb5a8c0f00703f9466f4cc09a6431d2` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x6af01f9b2ee06349a93032e9625d739fd8c199b1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x6ccbfe8f403748285fc51f3618a28fd83fee935c` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x6e078019eee40b249fa3a876e7a6b089b77cff9b` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x712284b2184490b99f7139bd6db50fa5330bddf8` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x715978dc28c44410a187c7d3d5a308c7d7b1096d` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x71b66fd833f0bb7473b388e2a7e2fa5e1c85e09e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x74f38cf6ce668d9513c195cceb0ae96feb0a1e05` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x7535253433526db01500a226cfb25efa5af8e884` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x75b1e7e99f1cdded81ea3cf162746f68f1ea4d50` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x810c39897b0fb2f7801878dca399e4f92f8afe5e` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x8506b40a57afadc1e7f31f0a693843e39c1f3f59` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x8d9978466161c2897f483a93f51adea9e52d8d32` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x920cc23b58add4621327e6bee1282ba47ec17be0` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0x9d665647c833687c2afd353b4a6dc65650d76114` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa11cc45ddf3564ac17da2c15a9e22ad932b66a5a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa2e2f71f687914f5dc2010632bc2debb1b9fc1d5` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xa8ad804139585d12fdb787a4274d57378b302125` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xae254e8e28680f7b1a5ce1a2b24d1aa5e8fc41a3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb12bc245b2f2a5ce4abc10dbf2828b36ee615ba7` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xb3b09fa6504f9d59f1a9740f68f3e904ca857a82` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc51a5616689ed23800a7948f1a67a7635adc2141` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc76e4c5774b354488143551fdb7221c6a53438cc` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc797f94d98f08003d8fb23dab0982645546cf2e1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xc87850338815d8bbaddbfc5d67938500525f8f5a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xcb8f0bdb575d5695732a10400e877784504ac853` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xcc0ffa538c3eee252c25077859e72ecb50de7013` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd2c191dd9757d9f19f9815751a1a29b9933ffa63` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xd47a3fac305c2e272ad2344c1b718b2f70f81955` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe89c68311edf0f10a1aa89c4976220604c4abb43` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xe9ac0501004877d5ad530d58b1f149dd0736b9e1` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xea4673c9b049bfdd89d136d1de76ac6e6853d44a` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xed3b6d8c36a0a0406b6d8314e716980e136e40fb` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf20190bc14b6481a79f216b7b5f7683bdc820b25` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xf4c6e161036bc7cd087642d5601f56e3e2871aa3` | ❓ Unverified |
| UnnamedContract | unknown | gnosis | n/a | `0xffb525604eaf206fdef48e199dba377f7fe1deec` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ChainSecurity_HOPRNet_PaymentChannel_Audit.pdf](https://reports.chainsecurity.com/HOPRNet/ChainSecurity_HOPRNet_PaymentChannel_Audit.pdf) | ChainSecurity | Audit | 2021-09 | stale | Direct | contract_name | 1 | n/a |
| [www.chainsecurity.com/security-audit/hopr-payment-channels](https://www.chainsecurity.com/security-audit/hopr-payment-channels) | ChainSecurity | Audit | n/a | unknown | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| gnosis | [`0x8197525557233031b110038ae52dfc3c4a75567a`](./contracts/gnosis-100/0x8197525557233031b110038ae52dfc3c4a75567a/) | BoostUtilsLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0347a131861881604ea841b678210ba60b8e6d82`](./contracts/gnosis-100/0x0347a131861881604ea841b678210ba60b8e6d82/) | HoprAnnouncements | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x060dbc55867f0ffc20e69f9273113aeb90f4d049`](./contracts/gnosis-100/0x060dbc55867f0ffc20e69f9273113aeb90f4d049/) | HoprAnnouncementsProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x306c54123f0197bec232fe754f0b7cb9059d6db9`](./contracts/gnosis-100/0x306c54123f0197bec232fe754f0b7cb9059d6db9/) | HoprDummyProxyForNetworkRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x15a315e1320cff0de84671c0139042ee320ce38d`](./contracts/gnosis-100/0x15a315e1320cff0de84671c0139042ee320ce38d/) | HoprNetworkRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x1167fb204298799b0b9e98896d58958caed164b0`](./contracts/gnosis-100/0x1167fb204298799b0b9e98896d58958caed164b0/) | HoprNodeManagementModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x06e01a5cebad283c0f00f857c06fbd804b054910`](./contracts/gnosis-100/0x06e01a5cebad283c0f00f857c06fbd804b054910/) | HoprNodeSafeMigration | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x0e4e1a2d851663462523bf38ca56259aceccbc76`](./contracts/gnosis-100/0x0e4e1a2d851663462523bf38ca56259aceccbc76/) | HoprNodeSafeRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x048d04c9f5f74d65e76626b943779dec6edcefec`](./contracts/gnosis-100/0x048d04c9f5f74d65e76626b943779dec6edcefec/) | HoprNodeStakeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x65c39e6bd97f80b5ae5d2120a47644578fd2b8dc`](./contracts/gnosis-100/0x65c39e6bd97f80b5ae5d2120a47644578fd2b8dc/) | HoprStakeSeason7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x1c0c4efb9a2cce18d66eaffc585876d8ca768013`](./contracts/gnosis-100/0x1c0c4efb9a2cce18d66eaffc585876d8ca768013/) | HoprStakingProxyForNetworkRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x147899ca57111d9081df125c2bcbd839981f04c2`](./contracts/gnosis-100/0x147899ca57111d9081df125c2bcbd839981f04c2/) | HoprTicketPriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x428246bd8632f727fec70662b10dc37b519624df`](./contracts/gnosis-100/0x428246bd8632f727fec70662b10dc37b519624df/) | HoprToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x3c5cbdfc873a6a52093c1d3801e29c2d78b26c7f`](./contracts/gnosis-100/0x3c5cbdfc873a6a52093c1d3801e29c2d78b26c7f/) | HoprWinningProbabilityOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0xb331b22815e1dc0eedee370fbc4f793eff78ee97`](./contracts/gnosis-100/0xb331b22815e1dc0eedee370fbc4f793eff78ee97/) | MyERC20Swapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 58 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Fork inheritance lineage and inherited audits are included when available.
