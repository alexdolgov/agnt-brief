# Agentic Audit Brief: Neku

## Project Overview

- Project: Neku (`neku`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.618Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: arbitrum, moonriver
- Contract surface: 128 unique implementations (165 raw deployments)
- DeFi Llama TVL: $1,598,052.81
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 18 project-authored contract(s) across 2 chain(s); 6 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 4 common project-authored base contract(s) (operator, exponentialnoerror, ctokeninterface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 266; live-surface contracts included: 165 (45 live, 120 unknown).
- Excluded by liveness: 101 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 8 of 128 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 120
- Unique implementations: 128
- Raw deployments: 165
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-11 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CErc20Delegator | token | arbitrum | n/a | 38 deployments: arbitrum [`0x19714ee460f9d030e310bf1730b5172f5b50ab5f`](./contracts/arbitrum-42161/0x19714ee460f9d030e310bf1730b5172f5b50ab5f/); arbitrum `0x1ea64325e194e0520a8e219c4d1227681cdbb2fe`; arbitrum `0x2907c3ece448f72e5399f07be87c0d39afa9b43b`; arbitrum `0x2fda3af71967add50380c7a35799ec3a41209bce`; arbitrum `0x3631de81f1098df530015a97b092bdfff7e93ea8`; arbitrum `0x374aed793f60a01aaf00385fd3a05cdccdb2799a`; arbitrum `0x3823d2b0cec7d1023ac7d69e76b48bafcc31f28b`; arbitrum `0x38a0697a97fd4d65b8f1055821e3418d7c83cd1c`; arbitrum `0x3ae83a39ce92c13beb51e5e6b4280143d20ed251`; arbitrum `0x3d2c1333309d3c2d91270a1f3ecac96dbbd50d5b`; arbitrum `0x6557732b996e94e2b70d9ff8a8ded16715c01912`; arbitrum `0x660474510ec741368ad6a16f7731cbf03844396f`; arbitrum `0x679818bed06eb59a75b775f7384e654a1bbbe205`; arbitrum `0x70d27974441845811b36e9be0d3f43eb60c814a3`; arbitrum `0x70faf3509dc8320faffb40666d717224b26af0db`; arbitrum `0x71ad16c11b13466832c2aad2319820783032e920`; arbitrum `0x7fd87581d0eae4744a8625bffe909ffb3af52163`; arbitrum `0x8153303f72ab12f13180c946723bcacae05a4c4a`; arbitrum `0x82015cfee29e3697afcb6dfdce59dc07ed33eb20`; arbitrum `0x874a86e9e78d123abb745cae5e97369d79d41554`; arbitrum `0x8e9027803d0f448dd96dd73069c35b0641151b07`; arbitrum `0x9ac8f7a521dcbc12cb4d54b22fa1fbf1c5f50caf`; arbitrum `0xa7ad08399bce6dd0f7110d88cc6303f9561acd48`; arbitrum `0xa9958d6a3ec9604507f6f99f402103eaa2cae784`; arbitrum `0xb5dc005d89d0b4d0bc4a9459c7f77a403e9bfeea`; arbitrum `0xba7dabf931a23c334b8f6be15eb1e9425330e6b3`; arbitrum `0xbd1bf670692aacbbc96f0cbdd2f868f20e8f3296`; arbitrum `0xbd65ae81d1d79236d69d01631ddde5a994c96915`; arbitrum `0xc7dec270bffc808458dcf687a378958afe7494ea`; arbitrum `0xcb2b0b3380f3993f051b9d5355e8ad8e1bdaf95a`; arbitrum `0xccb8da4ffc616060d7594250d19997fb2e98aa15`; arbitrum `0xd73ed2df40c7b671de0553b1f355ff46dd37bdd1`; arbitrum `0xdac3b16d35bcdc3d135633a5d2e0d0d114070a29`; arbitrum `0xdbfd9c0fc225e323a8eff1bcd1aa787be8c11a26`; arbitrum `0xdee7e973657853a15305d360d2ac46a1e279c68c`; arbitrum `0xdf19d746b5ab2b7b040daf0ec3341000cfe17bae`; arbitrum `0xee2a8949e5106d0b273bb6a63a01beb41ef6e07f`; arbitrum `0xfd4224a5358162d5d4f97c3c51966383642f0553` | ⚠️ Unaudited |
| CEther | unknown | arbitrum | n/a | [`0xbc4a19345c598d73939b62371cf9891128eccb8b`](./contracts/arbitrum-42161/0xbc4a19345c598d73939b62371cf9891128eccb8b/) | ⚠️ Unaudited |
| Comp | unknown | arbitrum | n/a | [`0x3bf0880fd26e49c46d1a1e69adb268889b4be840`](./contracts/arbitrum-42161/0x3bf0880fd26e49c46d1a1e69adb268889b4be840/) | ⚠️ Unaudited |
| MasterChef | unknown | moonriver | n/a | [`0x1e930c6a1ec0e098617a2c202939ed0345a9641e`](./contracts/moonriver-1285/0x1e930c6a1ec0e098617a2c202939ed0345a9641e/) | ⚠️ Unaudited |
| OracleObserver | operational_periphery | arbitrum | n/a | [`0xf8e3c6d39a4f05fc8980cea6710c79d7a9d57c98`](./contracts/arbitrum-42161/0xf8e3c6d39a4f05fc8980cea6710c79d7a9d57c98/) | ⚠️ Unaudited |
| StableMint | unknown | arbitrum | n/a | [`0xb575244296c27e7897382e6c140708c44a6a4229`](./contracts/arbitrum-42161/0xb575244296c27e7897382e6c140708c44a6a4229/) | ⚠️ Unaudited |
| TVL | unknown | arbitrum | n/a | [`0x4c02f377eec59f41b4ba3a83a03cae7f79d3691f`](./contracts/arbitrum-42161/0x4c02f377eec59f41b4ba3a83a03cae7f79d3691f/) | ⚠️ Unaudited |
| WrappedToken | token | arbitrum | n/a | [`0xa4cc4a18a44595d8c7dc34431a99994545997ce3`](./contracts/arbitrum-42161/0xa4cc4a18a44595d8c7dc34431a99994545997ce3/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (120)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | moonriver | n/a | `0x02ef4c7d0ced1c2e5703ae32a939682f161cc9e9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x09d2f3023cf5b9987bcabd14798c510b526f9d3e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0c233ec1d12401636c5bd6a8f56440f4f33607ec` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0f5bf2160e9927694827c5b3b939acd1ad85ec1f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x0f81bb0c28ba3e173fa3a25a168c1a34b89cec87` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x10a90c1c4cc0944a905ed62eb32665630b99e87d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x10ca092dc6e30ac487a7c8c85a1fb04634f5e9f3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x17fc53f822de6249309313bd6eb913e6da9350d9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x18045bd78ec9f82c3ea3528ed56bf009a63f4233` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1985f3cb9a38cf4e9c7f782ee177fa504dfe00c6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1a8ef8ef8a0c9b5c6a7955f38fbf56bdb16017ca` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1cfffd7eb3df8cdca513622cb9beacc9a2099cc0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1d96ace43978eb3af0f36592d0f4e525eaa1109a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1e08ae28753112202b7d39fc82682f72837df0b6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x1ff6f6652afa4b6ab6124ddff238f33064a2e72c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x20187f1f042811de4b45fbee1542077ca8090317` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x22413712d6dd7a14fab4c91cfb3818622e5f9c59` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2259cd7a7d3f6398904659370af28beed221a027` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2776ed190f574091d0b2155153338e9323b72077` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x28b4d2f4cceec048203122105bab58870474a155` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2dbd8d252ebba2c8c3cb6c4a26ba318f456966ea` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x2eaa6cfb753ebac14f0ef5863137a45942b6eb8d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x307fd8984e4f1185180aaf9897d2c12e9e3f1c45` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3153a0a781e0701ea52097e4939ac3e744aebba3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x322b2e93414640be297380a642b5df45d1f64d05` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x34c0f1e25be36f63c3f4c4a813c570620b61d834` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x37960ef3ae09f8412b1dcdcb9e1b2eab3a6ffc1c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3805b1cdfa875ab01fb064d380432a19af74219b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x3fd51f5edc98a0e52377403be6d4e367e4af7abf` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x40a3271a107aa5196e71d73186546eac37d3405f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x435d1cccaa095f30ef210ab5b36d3dd0b673bf86` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x44085223f041683e3881ca32e3b67f1c1c751ec9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x440b54caa00130ba0858e7014f8a16f93a5926ab` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x44ed29ceed5a5d4df1431108aa72e45e4f52374b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x46f43d1e7753f19eaba44d5fca02fd6c249c9417` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x47206e16e0184e4f9ed56431bc994a3c4c276c56` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x480b30521a76e62867987dca83bf7754f0ead3cb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4831b6de489c4058248168e5e4cb4745ac27a10c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4bfa4087121cb0b75d1bccab8be1743c437c4940` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4c7c9585cbf4dfe5a36ec0cc319e55c957dd4361` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x4cfeb7f3ee2edd5099231fe48cb91a401fe9a02a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x50c1105aed575d49a38edcc90355fde2f45c18f5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x527d10a1d6f41d01e550abef462bc3ab239f9fd5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x535cd57db4a71691224fa74ab41a7a58a213c662` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x563f5d8ac5f0d5f541016e501425608c8b5d8d93` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x58436d4cb73889d81d62a182dacaf570812220bb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5b8725a8cfbcb75d572b600743d8f28a0bbab617` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5c027c178247b48e17c49f594410b62cd1f2b30e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5c560969dde964c8e67b48955b13e15a90525ed5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5cb43755a9490bc069a80a5cec1a4701bced600a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x5f9a3f21d40a8ea6ad540e3b845ab5bbe3f87e98` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x61a53af4594ce0d315e15ac178a12b72c999a12d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x644781e608bc95831d76386f146b8ea9af61938c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x644a8506f9aa0dac2bfbb747adfa58da4e3c7cb7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x64e2cda481086a09becf56f2b3be86b72a9ecb82` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x65a8fe03f6a97fde60ca7ccc9b159d6f34a953c2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x66f02fb1a6db511fe7859cfb17a0d49bea03ef44` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6bbbb34c16e1e2046c26fdc7952ffbfa047578eb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x6ecfd021e5d7f6647efd623b9d9e9df35d6445bc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7482f0d7f6903560419a4a0db1b638076f77b101` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7485e3c36affd87b805cf303d37c11ef75980f28` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x757207b722ce524ea8a692ae373c416b55680d49` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x797b9aa2228143ed798f57b3be67420952922bf6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7aed168b6a30d46474487fc6c0f4ff3de3930798` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7b99bc7284229b9f0a6d776014a7a6c4dd62ba15` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x7daa3e47ec185b4bd4e877eb2522c3ac3a97ac2b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x815f24c34230b833cd33f92388bc58d38386efec` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8689352796a67d3333e0c9b4377473239f673486` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8b8107f2128c6ae22333e2bb5514719e0e8fe930` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x8dfd47408b686dbd478a8119b43acc8cde5ec698` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x91385b8fb153d44c9b9c084aac31d6d6bc057a3d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x91b6a9321c8b5ab7db54c47f799dd7177bb4a3ba` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9220c2a6f92a293bf694ec355aa7ee5a22d77d3a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x92d098a09301fa2585b73dea276cfd1615f33fbb` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x93a6815312d267dcfb285b2e3f04a317df2f9193` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x997b95f3fa2660793872270798e28ee16eb18035` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9a0a85dcc6a4d42219cfc805d926721cb406f118` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0x9b068c7862cfbf7b70de7e7a90c0b4a3f44f2d71` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa0f191846e476b1f1d0b54a2624f139eb1ba5a32` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa49c30a762cf8b2def5dc7f292c1938a6f393660` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa49f4c5e88914524d2bdd162cca083d09aafd82b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa73ab9d879bd2424b01dfc7a1ae64bee3e60dd18` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xa92b9d9c17f7ba8571f787b41c69041bcb03face` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xac5812f47ec9d72e3280f9d7076aa6b4d953cfaf` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xafe7ed8d635adfd6a576afca0607cbe7699536a6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb1262475034efcb9c47271f07b9524e99a62fd3e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb1bbd4b3e5ca7e12ff81a6b13af6eab8b0602ad3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb2ebfe6544a033642beb200b0607316fafabe797` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb35172efd2049765b6f9dbae2fa646bafea1990c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb4955213e8615406d9b7e2c416b17bebb8fa48f5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xb5001fb81dd59209fe58c46550311e606d9a4f59` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbc9c029d436f7eb99c32e81f2c549b02bb25dafd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xbd09565d19632364e62c622a84a24023bff5c443` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc3976de48c35784d0433bfee7481028466a067b2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xc7aa0164c87cd71ced7cd436ed0a29ae30b1c1b5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xca9a77b3f778fed422941e148f37e671bbcaf396` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd4784cf01cd5f45342de9a45279bdd225583abe7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd5f78143d18e35d5ae30768b533f1114b6ff59c2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xd86a409a30eb02b421feae953672c83914481f17` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xde97854a2d872681c437b35795cee49743010f84` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xdea0869c13cb0ce5db64c4e2e5ebeb54dba0d28e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe18cc920c4d0486aac80d3a4386097364f92035a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe1f8c5825dcb7a4e3e94c56048e0f4dc54bd76cf` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe454d0f958861f1d63940771827004ac03e9502a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xe7f6d60d4c1e13e4aa529d6b438f63e39ecb0f56` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xea9853330f6df979e5d1a1122d6ead411b93163f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xebd1c0687826bff2bced93b9c3b554de80ec272e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xecb9ce1d3e05995349e298d73b32db2d35f720c7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf261b306292d93beb7744e8e08cb2c4983b38806` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xf815e05584887c7b3995422bf8fb677a267b6d21` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | n/a | `0xfbd90abc5880c3005be6f734c0b356ae56c6b7fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0140d4b73128aefa1fb391cd24ecdb66c657a814` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1bddee9e22547b17f12180a872dd87d569b4d250` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2703e446a00d42abf4b1fc93a46127b84e6774b2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ba34d0ca796e31a075cc1f124c11502a6730629` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x87746c74a0f2143f16872d0d563c9136576f0d31` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x893c6f09237625f8474642420d90118b2c759ba5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xae221886a8966df6a8ddd15c6b78b0661344f9e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbbb52df876c3e4d5c3f08210b19d6c58980bd0a4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc4a982065f4ae0df9156456330803f5dab462b6b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/nekufinance](https://skynet.certik.com/projects/nekufinance) | CertiK | Audit | 2021-11 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x19714ee460f9d030e310bf1730b5172f5b50ab5f`](./contracts/arbitrum-42161/0x19714ee460f9d030e310bf1730b5172f5b50ab5f/) | CErc20Delegator | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbc4a19345c598d73939b62371cf9891128eccb8b`](./contracts/arbitrum-42161/0xbc4a19345c598d73939b62371cf9891128eccb8b/) | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3bf0880fd26e49c46d1a1e69adb268889b4be840`](./contracts/arbitrum-42161/0x3bf0880fd26e49c46d1a1e69adb268889b4be840/) | Comp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x1e930c6a1ec0e098617a2c202939ed0345a9641e`](./contracts/moonriver-1285/0x1e930c6a1ec0e098617a2c202939ed0345a9641e/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf8e3c6d39a4f05fc8980cea6710c79d7a9d57c98`](./contracts/arbitrum-42161/0xf8e3c6d39a4f05fc8980cea6710c79d7a9d57c98/) | OracleObserver | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xb575244296c27e7897382e6c140708c44a6a4229`](./contracts/arbitrum-42161/0xb575244296c27e7897382e6c140708c44a6a4229/) | StableMint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4c02f377eec59f41b4ba3a83a03cae7f79d3691f`](./contracts/arbitrum-42161/0x4c02f377eec59f41b4ba3a83a03cae7f79d3691f/) | TVL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xa4cc4a18a44595d8c7dc34431a99994545997ce3`](./contracts/arbitrum-42161/0xa4cc4a18a44595d8c7dc34431a99994545997ce3/) | WrappedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 120 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3021] skynet.certik.com/projects/nekufinance

Fork inheritance lineage and inherited audits are included when available.
