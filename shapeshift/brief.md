# Agentic Audit Brief: ShapeShift

## Project Overview

- Project: ShapeShift (`shapeshift`)
- Website: [https://shapeshift.com](https://shapeshift.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:55.363Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-0679
- Chains: arbitrum, ethereum, gnosis, polygon
- Contract surface: 117 unique implementations (130 raw deployments)
- DeFi Llama TVL: $1,047,942.74
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 11 project-authored contract(s) across 4 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 1 common project-authored base contract(s) (proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 130; live-surface contracts included: 130 (27 live, 103 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/12 (16.7%)
- Deployed-live implementations: 14 of 117 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/14
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 103
- Unique implementations: 117
- Raw deployments: 130
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 14.3% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Staking | unknown | ethereum | n/a | [`0x96f98ed74639689c3a11daf38ef86e59f43417d3`](./contracts/ethereum-1/0x96f98ed74639689c3a11daf38ef86e59f43417d3/) | ✅ Audited |
| Staking | unknown | ethereum | n/a | [`0xee77aa3fd23bbebaf94386dd44b548e9a785ea4b`](./contracts/ethereum-1/0xee77aa3fd23bbebaf94386dd44b548e9a785ea4b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccToke | unknown | ethereum | n/a | [`0xa374a62ddbd21e3d5716cb04821cb710897c0972`](./contracts/ethereum-1/0xa374a62ddbd21e3d5716cb04821cb710897c0972/) | ⚠️ Unaudited |
| EtherRouterCreate3 | adapter | arbitrum | n/a | [`0x5c59d0ec51729e40c413903be6a4612f4e2452da`](./contracts/arbitrum-42161/0x5c59d0ec51729e40c413903be6a4612f4e2452da/) | ⚠️ Unaudited |
| FOX | unknown | ethereum | n/a | [`0xc770eefad204b5180df6a14ee197d99d808ee52d`](./contracts/ethereum-1/0xc770eefad204b5180df6a14ee197d99d808ee52d/) | ⚠️ Unaudited |
| Foxy | unknown | ethereum | n/a | [`0xdc49108ce5c57bc3408c3a5e95f3d864ec386ed3`](./contracts/ethereum-1/0xdc49108ce5c57bc3408c3a5e95f3d864ec386ed3/) | ⚠️ Unaudited |
| PermittableToken | token | gnosis | n/a | [`0x21a42669643f45bc0e086b8fc2ed70c23d67509d`](./contracts/gnosis-100/0x21a42669643f45bc0e086b8fc2ed70c23d67509d/) | ⚠️ Unaudited |
| RewardHash | unknown | ethereum | n/a | [`0x5ec3ec6a8ac774c7d53665ebc5ddf89145d02fb6`](./contracts/ethereum-1/0x5ec3ec6a8ac774c7d53665ebc5ddf89145d02fb6/) | ⚠️ Unaudited |
| Rewards | unknown | ethereum | n/a | 2 deployments: ethereum [`0x086b9734d33783bbe4fbc8249df4c686aae27054`](./contracts/ethereum-1/0x086b9734d33783bbe4fbc8249df4c686aae27054/); ethereum `0x79dd22579112d8a5f7347c5ed7e609e60da713c5` | ⚠️ Unaudited |
| StakingRewards | unknown | ethereum | n/a | 9 deployments: ethereum [`0x212ebf9fd3c10f371557b08e993eaab385c3932b`](./contracts/ethereum-1/0x212ebf9fd3c10f371557b08e993eaab385c3932b/); ethereum `0x24fd7fb95dc742e23dc3829d3e656feeb5f67fa0`; ethereum `0x5939783dbf3e9f453a69bc9ddc1e492efac1fbcb`; ethereum `0x721720784b76265aa3e34c1c7ba02a6027bcd3e5`; ethereum `0xc14eaa8284feff79edc118e06cadbf3813a7e555`; ethereum `0xc54b9f82c1c54e9d4d274d633c7523f2299c42a0`; ethereum `0xdd80e21669a664bce83e3ad9a0d74f8dad5d9e72`; ethereum `0xe7e16e2b05440c2e484c5c41ac3e5a4d15da2744`; ethereum `0xebb1761ad43034fd7faa64d84e5bbd8cb5c40b68` | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0xf929de51d91c77e42f5090069e0ad7a09e513c73`](./contracts/arbitrum-42161/0xf929de51d91c77e42f5090069e0ad7a09e513c73/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x65a05db8322701724c197af82c9cae41195b0aa8`](./contracts/polygon-137/0x65a05db8322701724c197af82c9cae41195b0aa8/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | 4 deployments: ethereum [`0x470e8de2ebaef52014a47cb5e6af86884947f08c`](./contracts/ethereum-1/0x470e8de2ebaef52014a47cb5e6af86884947f08c/); gnosis `0x8a0bee989c591142414ad67fb604539d917889df`; gnosis `0xc22313fd39f7d4d73a89558f9e8e444c86464bac`; arbitrum `0x5f6ce0ca13b87bd738519545d3e018e70e339c24` | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | arbitrum | n/a | 2 deployments: ethereum `0xad0e10df5dcdf21396b9d64715aadaf543f8b376`; arbitrum [`0x76d4d1eaa0c4b3645e75c46e573c1d4f75e9041e`](./contracts/arbitrum-42161/0x76d4d1eaa0c4b3645e75c46e573c1d4f75e9041e/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (103)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x0139b34012a6639e896b883901b7dc1bb6e6f15a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03dcccd17cc36ee61f9004bcfd7a85f58b2d360d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x04bda0cf6ad025948af830e75228ed420b0e860d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x061aee9ab655e73719577ea1df116d7139b2a7e7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0882ab38c4ff4a5a9fe175bc5147018b8ee7da64` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ad818271471f2430be55aba528efb58713bb7f7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0ce34f4c26ba69158bc2eb8bf513221e44fdfb75` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fc45523d4c63a70f263dceaec9d08c947954b4f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x15a629f0665a3eb97d7ae9a7ce7abf73aeb79415` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x16031783d3d27ce25ebcfb341f4eec8f7ba915be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x168ef867e3009c1864103c746d399b66482536ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b05128b262ca335de162c8ad5e9281d5f7d4404` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1b429e75369ea5cd84421c1cc182cee5f3192fd3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c5868847e7594d9fd1491dafc4fba4866ccba7a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1d7858a79ca0bdedf9f16af2b3e352b9231b4d43` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1dddf8ef2a9c181e7c7fd7c8175da30a221d0122` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x21910ea77801273918f0ee46ffcaf06f80ec171c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2445e2f04d6bd2995003c1cb115292942d91e63c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2650d4e7cb4402c6b999eed1aa920a939072e28f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x28cb0de9c70ba1b5116df57d0c421770b5f44d45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d3eade781c4e203c6028dac11abb5711c022029` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e9d63788249371f1dfc918a52f8d799f4a38c94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e9f9becf5229379825d0d3c1299759943bd4fed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2fc6e9c1b2c07e18632efe51879415a580ad22e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x378ba0c8b4b04b4409103711846e46e63b3fbaf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37a9be1aaea3567ea0d69c17838c3ebb8cb08649` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x38c279761864a2329b8298b730ba5e31bf4736c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bc59a43d82c1acf3a597652eadd3a02082d3671` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3cce05568008916d739479958f7a1af5f67661dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3eb1b58dbe245b89c8494b8cff42b8ddbadc0a23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3f2647952208c1f22d8045e1b55d361abcec3bf5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40ce0773e09fdfe87d2e41aa39eb603f988d7446` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40e2d2de799c8e58efa7f42086197b0bae87b747` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x41f6a95bacf9bc43704c4a4902ba5473a8b00263` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x43094ed6d6d214e43c31c38da91231d2296ca511` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x45a11b190545924f8ed1c4017e25daa96bcdd409` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47fa8651ba35be1bc5b975e1c54a7424e3f705df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x482258099de8de2d0bda84215864800ea7e6b03d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48a4b40d4a8ee48e5af8ba98e4084fda8c96be3d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50b82e9b1811125b4c4fc463616580d60b80feea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x572a7de03d4d2bded8c3e6faa99fb835b226aaa2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59170d9d1d3db8ac3539c6705fb38c735af9f4c9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5967234b0fa896f308b6b0087717a206e111ebee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61fcabb591d63d00e897a67c64658d376fead816` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65e1f22b8b17371e6ea93bcc3d20d5532203506e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66ded32d3cb6bab81bdcf0d82158fce8dbd80176` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x714e6c8361e13c4c7db5373b85de3835ec92f09f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7211508d283353e77b9a7ed2f22334c219ad4b4c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x77f18a6968a38f9aef1af676420c4799e8b864ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7a75ec20249570c935ec93403a2b840fbdac63fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7cdbbd9d6eb284f7f2a45236b50eee9c94e96d06` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d4a5e0fe8f19b07f2ebae3b59d4e6133441fc96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x800df6754ec48f56572b406ea3fcdfd9e2d9f5e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x803ec0b526c226cd73ec5633701f4baa59bc22bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x808d3e6b23516967ceae4f17a5f9038383ed5311` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8858a739ea1dd3d80fe577ef4e0d03e88561faa3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x89e8eaee5d722bbda3d3c4ca85e110f6835cce57` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d2254f3ae37201efe9dfd9131924fe0bdd97832` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ec637fe2800940c7959f9bad4fe69e41225cd39` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93b34b6a6f1ddbccb60244e3efdce6b8a83d25f8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x941f1098faf955f88adb6c1a18697cf60444ca1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94671a3cee8c7a12ea72602978d1bb84e920efb2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d98a2792e78e8975eae54abd7e845f3646d145e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9eee9ee0cbd35014e12e1283d9388a40f69797a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9fe6086c5e0648b101dacf73b6c7d26e39a569d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1a7ece4d54f1403187f81880346962f667721dd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa37811563a85634cb7d43db8f427d40b2f1541dc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa760e26aa76747020171fcf8bda108dfde8eb930` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa86e412109f77c45a3bc1c5870b880492fb86a14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xabcf56d1a0f721a690d70da06c72380dc1fa195c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xadf15ec41689fc5b6dca0db7c53c9bfe7981e655` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb104a7fa1041168556218ddb40fe2516f88246d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb21ebf79bbb522f3f61d1ba0dc12a2e6c7129ae8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7df31acc5fb9a0ff1780b480c60279fe248a4a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbbfc7d1d53116830326478f77f489530cec7ba8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6807bb6f498337e0dc388d6507666af7566e0bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc727defdb67974a63832d47ed08dd65cea6559e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc803737d3e12cc4034dde0b2457684322100ac38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc89f742452f534ece603c7b62df76102aacf00df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc8e257930d4f0a455a09bf8d189ed588d344da8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca5e07804beef19b6e71b9db18327d215cd58d4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca77a278a03f3e4648f9dc073729427862d5da31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3b5d9a561c293fb42b446fe7e237daa9bf9aa84` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd3d13a578a53685b4ac36a1bab31912d2b2a2f36` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd54d2bc6ffd2981a05daf99eef2db0f6f7695bd1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd813b2a8a0c206dc2e5ff7a44e11fd0396c51a21` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd899ac9283a44533c36bc8373f5c898b0d5fc03e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb55e51d33157d3213ce57f20c36fa052f25d4ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdb707406aefd74c739311e013f7ee0a0f0d1e86e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdc0b02849bb8e0f126a216a2840275da829709b0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf9c664d28e216eaeff94b7d5361f2a86eaa30b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe301a3fc14a9a236a5fb66b03e255c49ab95849d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe5943d8dc61282fbb4eeabf0e30166bf7f6ba92f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7a7d17e2177f66d035d9d50a7f48d8d8e31532d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeac275b19d55cc2b79783c894fbac218c0f6d8d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecaa8d0a9b2bd5aed3c0964d8349c2aaf8385e19` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef8670da2d381a523953e157cf52b704b94a955b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeff721eae19885e17f5b80187d6527aad3ffc8de` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf31d02071c70b9a54748358b03999719676f2651` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf46dae26df78274a35ec2545e012dce5e9c516d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf49764c9c5d644ece6ae2d18ffd9f1e902629777` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf663f4b30dd18546cb71a607b7a89a36e92a244c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf82337cf52979411b769176c156daa88e2b54f63` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [rFOX_v02.pdf](https://github.com/shapeshift/rFOX/blob/main/audits/rFOX_v02.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [ZokyoAudit.pdf](https://github.com/shapeshift/yearn-router/blob/development/security/ZokyoAudit.pdf) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |
| [Zokyo_Security_Audit.pdf](https://github.com/shapeshift/yieldies/blob/develop/docs/Zokyo_Security_Audit.pdf) | unknown | Audit | 2022-03 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa374a62ddbd21e3d5716cb04821cb710897c0972`](./contracts/ethereum-1/0xa374a62ddbd21e3d5716cb04821cb710897c0972/) | AccToke | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5c59d0ec51729e40c413903be6a4612f4e2452da`](./contracts/arbitrum-42161/0x5c59d0ec51729e40c413903be6a4612f4e2452da/) | EtherRouterCreate3 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc770eefad204b5180df6a14ee197d99d808ee52d`](./contracts/ethereum-1/0xc770eefad204b5180df6a14ee197d99d808ee52d/) | FOX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc49108ce5c57bc3408c3a5e95f3d864ec386ed3`](./contracts/ethereum-1/0xdc49108ce5c57bc3408c3a5e95f3d864ec386ed3/) | Foxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| gnosis | [`0x21a42669643f45bc0e086b8fc2ed70c23d67509d`](./contracts/gnosis-100/0x21a42669643f45bc0e086b8fc2ed70c23d67509d/) | PermittableToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ec3ec6a8ac774c7d53665ebc5ddf89145d02fb6`](./contracts/ethereum-1/0x5ec3ec6a8ac774c7d53665ebc5ddf89145d02fb6/) | RewardHash | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x086b9734d33783bbe4fbc8249df4c686aae27054`](./contracts/ethereum-1/0x086b9734d33783bbe4fbc8249df4c686aae27054/) | Rewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x212ebf9fd3c10f371557b08e993eaab385c3932b`](./contracts/ethereum-1/0x212ebf9fd3c10f371557b08e993eaab385c3932b/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf929de51d91c77e42f5090069e0ad7a09e513c73`](./contracts/arbitrum-42161/0xf929de51d91c77e42f5090069e0ad7a09e513c73/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x65a05db8322701724c197af82c9cae41195b0aa8`](./contracts/polygon-137/0x65a05db8322701724c197af82c9cae41195b0aa8/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 103 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=2

Zero-match audit list:

- [9416] rFOX_v02.pdf
- [9427] ZokyoAudit.pdf

Fork inheritance lineage and inherited audits are included when available.
