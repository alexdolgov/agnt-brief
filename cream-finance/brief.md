# Agentic Audit Brief: CREAM Finance

## Project Overview

- Project: CREAM Finance (`cream-finance`)
- Website: [https://cream.finance/](https://cream.finance/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.605Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, bsc, ethereum, polygon
- Contract surface: 69 unique implementations (250 raw deployments)
- DeFi Llama TVL: $1,253,258.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 76 project-authored contract(s) across 4 chain(s); 26 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 31 common project-authored base contract(s) (ctokeninterface, ctokenstorage, cerc20interface). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 514; live-surface contracts included: 250 (223 live, 27 unknown).
- Excluded by liveness: 264 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/42 (0.0%)
- Deployed-live implementations: 42 of 69 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/42
- Verified + Unaudited implementations: 42
- Verified by bytecode match: 0
- Unverified implementations: 27
- Unique implementations: 69
- Raw deployments: 250
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (42)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CCakeLPDelegate | unknown | bsc | n/a | 10 deployments: bsc [`0x04c61ef58a6f1d6c572045a39a5434ab9dee69fb`](./contracts/bsc-56/0x04c61ef58a6f1d6c572045a39a5434ab9dee69fb/); bsc `0x19b08ff7d90d63ad109c6fabb8e0fcc866477a41`; bsc `0x26a490a0f419dcfbed97e568403654c2746a7110`; bsc `0x36cdf5972aca2b70f10d0f7af0d95871abc065d9`; bsc `0x5ea2dd1de21ed3b5316cef89985edc66cf9b2a0e`; bsc `0x5fa61a5a65920f90af970b13b7f28daeef0440b7`; bsc `0x7fd568d6a1a11b19427c8ccb90f7bb80e4ab1c5f`; bsc `0x98b7871702b602e65eaef46051d75ca334f872d0`; bsc `0x9972dd9912367cf395bea752ad49d81f33f7ca85`; bsc `0xe39b9e0366940eb3ca62b85ffae838ef0f8b14e0` | ⚠️ Unaudited |
| CCollateralCapErc20 | unknown | ethereum | n/a | [`0x6a6fd01c92f0390670cce399b532017cdb2b930f`](./contracts/ethereum-1/0x6a6fd01c92f0390670cce399b532017cdb2b930f/) | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | token | ethereum | n/a | 23 deployments: ethereum [`0x00e5c0774a5f065c285068170b20393925c84bf3`](./contracts/ethereum-1/0x00e5c0774a5f065c285068170b20393925c84bf3/); ethereum `0x12a9cc33a980daa74e00cc2d1a0e74c57a93d12c`; ethereum `0x1b3e95e8ecf7a7cab6c4de1b344f94865abd12d5`; ethereum `0x215f34af6557a6598dbda9aa11cc556f5ae264b1`; ethereum `0x226f3738238932ba0db2319a8117d9555446102f`; ethereum `0x30190a3b52b5ab1daf70d46d72536f5171f22340`; ethereum `0x3c9f5385c288ce438ed55620938a4b967c080101`; ethereum `0x48759f220ed983db51fa7a8c0d2aab8f3ce4166a`; ethereum `0x672473908587b10e65dab177dbaeadcbb30bf40b`; ethereum `0x76eb2fe28b36b3ee97f3adae0c69606eedb2a37c`; ethereum `0x7736ffb07104c0c400bb0cc9a7c228452a732992`; ethereum `0x86bbd9ac8b9b44c95ffc6baae58e25033b7548aa`; ethereum `0x8e595470ed749b85c6f7669de83eae304c2ec68f`; ethereum `0x8fc8bfd80d6a9f17fb98a373023d72531792b431`; ethereum `0x9e8e207083ffd5bdc3d99a1f32d1e6250869c1a9`; ethereum `0xa7c4054afd3dbbbf5bfe80f41862b89ea05c9806`; ethereum `0xa8caea564811af0e92b1e044f3edd18fa9a73e4f`; ethereum `0xb8c5af54bbdcc61453144cf472a9276ae36109f9`; ethereum `0xca55f9c4e77f7b8524178583b0f7c798de17fd54`; ethereum `0xe7bff2da8a2f619c2586fb83938fa56ce803aa16`; ethereum `0xecab2c76f1a8359a06fab5fa0ceea51280a97ecf`; ethereum `0xfa3472f7319477c9bfecdd66e4b948569e7621b9`; ethereum `0xfeeb92386a055e2ef7c2b598c872a4047a7db59f` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | token | ethereum | n/a | [`0x41c84c0e2ee0b740cf0d31f63f3b6f627dc6b393`](./contracts/ethereum-1/0x41c84c0e2ee0b740cf0d31f63f3b6f627dc6b393/) | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | bsc | n/a | 12 deployments: ethereum `0x29791bef310305d15b8fa4cd57953bd8db805305`; ethereum `0x6ada0e02763ede6cb428caebc5f5aa3080fda83c`; ethereum `0x8dc840cead11a46f59c65b1697698a2b60fa0789`; ethereum `0xf330c109dd91d391b5cd654b7fa595fa1a8ac470`; ethereum `0xfd42f5e741dd747749d220804eeb96c3f0d4c304`; bsc [`0x09e470fe983812df81fb8bf6f14fe9a7832fe7ec`](./contracts/bsc-56/0x09e470fe983812df81fb8bf6f14fe9a7832fe7ec/); bsc `0x272613ccd1f6d20ec1ba1a7c61d0c68564d0ae50`; bsc `0xaac5b4bd9528887802e5bd6994afdf1bb0fb1cc5`; bsc `0xcec434c83179604fe2b76121c14cca08f7661730`; polygon `0x5441090c0401ee256b09deb35679ad175d1a0c97`; polygon `0x5b4058a9000e86fe136ac896352c4dfd539e32a1`; arbitrum `0x20d5d319c2964ecb52e1b006a4c059b7f6d6ad0a` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | token | bsc | n/a | 34 deployments: bsc [`0x0e9d900c884964dc4b26db96ba113825b1a09baa`](./contracts/bsc-56/0x0e9d900c884964dc4b26db96ba113825b1a09baa/); bsc `0x11883cdea6bab720092791cc89affa54428ce069`; bsc `0x19ee64850862cfd234e20c0db4eda286f12ec907`; bsc `0x1af8c1c3ad36a041cb6678fed86b1e095004fd16`; bsc `0x264bc4ea2f45cf6331ad6c3ac8d7257cf487fcbc`; bsc `0x2bc4eb013ddee29d37920938b96d353171289b7c`; bsc `0x2d3bfadf9bc94e3ab796029a030e863f1898aa06`; bsc `0x3942936782d788ce69155f776a51a5f1c9dd9b22`; bsc `0x3b0be453a4008ebc2edd457e7bd355f1c5469d68`; bsc `0x4cb7f1f4ad7a6b53802589af3b90612c1674fec4`; bsc `0x4ebdef163ff08ac1d56a89bafefd6c01cc28a48f`; bsc `0x53d88d2ffdbe71e81d95b08ae0ca49d0c4a8515f`; bsc `0x738f3810b3da0f3e6dc8c689d0d72f3b4992c43b`; bsc `0x7e545caa813b102d2c6bfb7d6b07a0ea699ccac2`; bsc `0x7f746a80506a4cafa39938f7c08ad59cfa6de418`; bsc `0x8166974222577f9ef674c1633f0742256f5a06cf`; bsc `0x81c15d3e956e55e77e1f3f257f0a65bd2725fc55`; bsc `0x84902bd5ccef97648bf69c5096729a9367043beb`; bsc `0x8cc7e2a6de999758499658bb702143fd025e09b2`; bsc `0x9095e8d707e40982affce41c61c10895157a1b22`; bsc `0x9b53e7d5e3f6cc8694840ed6c9f7fee79e7bcee5`; bsc `0xa8d75a0d17d2f4f2f4673975ab8470269d019c96`; bsc `0xaa46e2c21b7763a73db48e9b318899253e66e20c`; bsc `0xb31f5d117541825d6692c10e4357008edf3e2bcd`; bsc `0xbe7e1d74acae787355169bc61a8729b2040fce6b`; bsc `0xbf9b95b78bc42f6cf53ff2a0ce19d607cfe1ff82`; bsc `0xc17c8c5b8bb9456c624f8534fde6cbda2451488c`; bsc `0xcb87cee8c77cdfd310fb3c58ff72e688d46f90b1`; bsc `0xd83c88db3a6ca4a32fff1603b0f7ddce01f5f727`; bsc `0xdcf60e349a5aaeeecdd2fb6772931fbf3486ed1c`; bsc `0xe692714717a89e4f2ab89dd17d8dddd7bb52de8e`; bsc `0xea466cd2583a0290b9e7b987a769a7eb468fb0a5`; bsc `0xef6d459fe81c3ed53d292c936b2df5a8084975de`; bsc `0xf77df34f4bf632fb5ca928592a73a29a42bcf0b1` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | polygon | n/a | 16 deployments: polygon [`0x20d5d319c2964ecb52e1b006a4c059b7f6d6ad0a`](./contracts/polygon-137/0x20d5d319c2964ecb52e1b006a4c059b7f6d6ad0a/); polygon `0x2ee80614ccbc5e28654324a66a396458fa5cd7cc`; polygon `0x4486835e0c567a320c0636d8f6e6e6679a46a271`; polygon `0x468a7bf78f11da82c90b17a93adb7b14999af5ab`; polygon `0x4eceddf62277ed78623f9a94995c680f8fd6c00e`; polygon `0x5dc3a30d8c5937f1529c3c93507c16d86a17072a`; polygon `0x73cf8c5d14aa0ebc89f18272a568319f5bab6cbd`; polygon `0x7ea7174dd0cb4ab84f42177f01e9a8a79475d381`; polygon `0x7ef18d0a9c3fb1a716ff6c3ed0edf52a2427f716`; polygon `0x98182bf525a4252c436ac349a4b79c7e6cd0eb7a`; polygon `0x9b21eb2e30d8320c3c1b8d8465284d78e58cb971`; polygon `0xc29c28132a5b84d38d17660f0580aa6addb5a837`; polygon `0xd4409b8d17d5d49a7ed9ae734b0e8edba29b9ffa`; polygon `0xe82225ba6bed28406912522f01c7102dd9f07e78`; polygon `0xf976c9bc0e16b250e0b1523cffaa9e4c07bc5c8a`; polygon `0xfbbfa5fd64246046e683c423aa2ab0470fbd328d` | ⚠️ Unaudited |
| CCollateralCapErc20Delegate | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x5eb35daf9ef97e9e8cc33c486bad884a62cae9ce`](./contracts/arbitrum-42161/0x5eb35daf9ef97e9e8cc33c486bad884a62cae9ce/); arbitrum `0xc29c28132a5b84d38d17660f0580aa6addb5a837`; arbitrum `0xd5794ea7b269db3a0ccb396774cc2d0936ffbd86` | ⚠️ Unaudited |
| CCollateralCapErc20NoInterestDelegate | unknown | ethereum | n/a | [`0xca1041f188ffecc499e8d4d0f08dd31b0f41c157`](./contracts/ethereum-1/0xca1041f188ffecc499e8d4d0f08dd31b0f41c157/) | ⚠️ Unaudited |
| CErc20Delegate | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8ec370ea274748620f3f7aab026ccc31b474c4db`](./contracts/ethereum-1/0x8ec370ea274748620f3f7aab026ccc31b474c4db/); polygon `0xd528697008ac67a21818751a5e3c58c8dae54696` | ⚠️ Unaudited |
| CEther | unknown | bsc | n/a | 2 deployments: ethereum `0xd06527d5e56a3495252a528c4987003b712860ee`; bsc [`0x1ffe17b99b439be0afc831239ddecda2a790ff3a`](./contracts/bsc-56/0x1ffe17b99b439be0afc831239ddecda2a790ff3a/) | ⚠️ Unaudited |
| Comp | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2ba592f78db6436527729929aaf6c908497cb200`](./contracts/ethereum-1/0x2ba592f78db6436527729929aaf6c908497cb200/); bsc `0xd4cb328a82bdf5f03eb737f37fa6b370aef3e888` | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3d5bc3c8d13dcb8bf317092d84783c2697ae9258`](./contracts/ethereum-1/0x3d5bc3c8d13dcb8bf317092d84783c2697ae9258/); ethereum `0x7aa375f1fe5e04e18a6b02b4294cfd57ca9f53ba` | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0x5ef4c9384d9d7c39cbc12b62e82900042f1205b4`](./contracts/ethereum-1/0x5ef4c9384d9d7c39cbc12b62e82900042f1205b4/) | ⚠️ Unaudited |
| Comptroller | unknown | ethereum | n/a | [`0xab1c342c7bf5ec5f02adea1c2270670bca144cbb`](./contracts/ethereum-1/0xab1c342c7bf5ec5f02adea1c2270670bca144cbb/) | ⚠️ Unaudited |
| Comptroller | unknown | bsc | n/a | 39 deployments: ethereum `0x44a420700aac02c1f10b16152f93acb3aadff193`; ethereum `0x4b147984b0314260fda782a7f508749df4e5a083`; ethereum `0x5d62020528f76bfdbd2b0ee2caa1f4c3cf2117c8`; ethereum `0x76b34af6394f3b98e21eb9b16c89434caa063828`; ethereum `0x78962e442181bc1178fbdd1f0af3fa5467892963`; ethereum `0x7930275241970149be9bf22ce96320eb4ccb16bd`; ethereum `0x79757e7f37b84993345693f298155440735a86c7`; ethereum `0x7d506f872760fa016554595cef4b17ee78ef9902`; ethereum `0x823498fee1d55cbf0581e589c2eb242394239367`; ethereum `0x86c2bb2407fc215c009d4f3df04067881c2e4fe9`; ethereum `0x8a2707e93c9cee3e46a97c2637546988ede4e088`; ethereum `0x9ac75fc3cb8a631f4ecf4c16a89ee95d847b64a7`; ethereum `0xa05e35136ed8ebdd8d620806cc003ebae3a7e88d`; ethereum `0xa7d4f888014c6f80bff622f18c9485633e34708b`; ethereum `0xb036141f1b6b317147784186c93979310164df27`; ethereum `0xb4cf50e2e7dc2ee44890ce5214718a9bb538f957`; ethereum `0xc4ff0ab6883ddd0216bb2cde2104ea462cd0c4e9`; ethereum `0xc855b3a339392abac4e5f89ba5a29c984edd2dde`; ethereum `0xcbb626f91df8057a7ee4bf65cf10d97884e4111c`; ethereum `0xcdca6103791210495a2369021e980fb6118d5aa3`; ethereum `0xd96c52375a63506d3e3fdcfbcc640dccc076367d`; ethereum `0xe293a96b37cc855e3afb07d8f1f1c68258f76e63`; ethereum `0xe376ed92fe72125aa1f6eb9e113da7483dd11bb9`; ethereum `0xf1cd0056fb74de307f4302a9dadaa486d8f494f4`; bsc [`0x0549a7232759066282f4abe97a9d8da02f99d618`](./contracts/bsc-56/0x0549a7232759066282f4abe97a9d8da02f99d618/); bsc `0x105a2a5f18b09fab97941f6f4043b2e25867560b`; bsc `0x127bae9d0f0754886788bf4f2250b5e12f272390`; bsc `0x3952a5b4dd825b44a8b54ae374e4e8e8704155a0`; bsc `0x3b36addc9d193f3b49810e1a2412f3edb0a208b2`; bsc `0x49a08f9f445af5734cf15a1deab3b1c6a7988fb4`; bsc `0x643f20488667bf8e35499d42e1be272b9544157d`; bsc `0x82cd95a302e614a7dbad05fae42c7f9a61f05125`; bsc `0xcaef460e70bdf91ba133a0c0b50b3659e44e20ae`; bsc `0xf851a6ade8c08677b8f0ad7fb1cfa18b01406a81`; bsc `0xffd75711b2fae2acec2f94a0493118febc2cca85`; polygon `0x3ab0e418be311a0bd00c9bac0d0e2029017e01d2`; polygon `0x520b78e8dc48157b2f13edd519a2f8f2f101db80`; polygon `0x9bf8757d33e20713d3fa61c889c892b00f3b3b6e`; arbitrum `0xcc3e89fbc10e155f1164f8c9cf0703acde53f6fd` | ⚠️ Unaudited |
| Comptroller | unknown | bsc | n/a | 2 deployments: bsc [`0x2450fd71da52b942f3a3dc67cf7221287339a519`](./contracts/bsc-56/0x2450fd71da52b942f3a3dc67cf7221287339a519/); bsc `0x4db74baaecc4cf591115949b62d0cf945c82d4fd` | ⚠️ Unaudited |
| Comptroller | unknown | bsc | n/a | 2 deployments: bsc [`0x589de0f0ccf905477646599bb3e5c622c84cc0ba`](./contracts/bsc-56/0x589de0f0ccf905477646599bb3e5c622c84cc0ba/); bsc `0x8075f0a6490ce1bd065eac9032d14dd2468ba6b9` | ⚠️ Unaudited |
| Comptroller | unknown | polygon | n/a | 2 deployments: polygon [`0x20ca53e2395fa571798623f1cfbd11fe2c114c24`](./contracts/polygon-137/0x20ca53e2395fa571798623f1cfbd11fe2c114c24/); polygon `0x8b9a81b66131a62aef5f229d218ee22b42e92ac2` | ⚠️ Unaudited |
| Comptroller | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xbadac56c9aca307079e8b8fc699987aac89813ee`](./contracts/arbitrum-42161/0xbadac56c9aca307079e8b8fc699987aac89813ee/); arbitrum `0xd96877ce3771c0504f0643a98f7646ce2226543f` | ⚠️ Unaudited |
| CreamEth2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x49d72e3973900a195a155a46441f0c08179fdb64`](./contracts/ethereum-1/0x49d72e3973900a195a155a46441f0c08179fdb64/); ethereum `0xcbc1065255cbc3ab41a6868c22d1f1c573ab89fd` | ⚠️ Unaudited |
| CreamLock | unknown | ethereum | n/a | 3 deployments: ethereum [`0x780f75ad0b02afeb6039672e6a6cede7447a8b45`](./contracts/ethereum-1/0x780f75ad0b02afeb6039672e6a6cede7447a8b45/); ethereum `0xd5586c1804d2e1795f3fbbafb1fbb9099ee20a6c`; ethereum `0xe618c25f580684770f2578faca31fb7acb2f5945` | ⚠️ Unaudited |
| CreamY | unknown | ethereum | n/a | [`0x1d09144f3479bb805cb7c92346987420bcbdc10c`](./contracts/ethereum-1/0x1d09144f3479bb805cb7c92346987420bcbdc10c/) | ⚠️ Unaudited |
| CTokenAdmin | unknown | bsc | n/a | 4 deployments: ethereum `0xa67b44e37200e92e6da6249d8ae6d48f832a038d`; bsc [`0x0dfd3bca58f7e0639e87fba6f778c87bfa138ba7`](./contracts/bsc-56/0x0dfd3bca58f7e0639e87fba6f778c87bfa138ba7/); arbitrum `0x5b4058a9000e86fe136ac896352c4dfd539e32a1`; arbitrum `0xf976c9bc0e16b250e0b1523cffaa9e4c07bc5c8a` | ⚠️ Unaudited |
| CWrappedNativeDelegate | unknown | bsc | n/a | 4 deployments: bsc [`0x01e2b783d076087f3e00a852ae0ae45ca77ca922`](./contracts/bsc-56/0x01e2b783d076087f3e00a852ae0ae45ca77ca922/); polygon `0x1cc6cf8455f7783980b1ee06ecd4ed9acd94e1c7`; polygon `0x543e7ddfa005966254dd49494c5403b86488506b`; arbitrum `0x468a7bf78f11da82c90b17a93adb7b14999af5ab` | ⚠️ Unaudited |
| CWrappedNativeDelegate | unknown | polygon | n/a | 2 deployments: polygon [`0x3fae5e5722c51cdb5b0afd8c7082e8a6af336ee8`](./contracts/polygon-137/0x3fae5e5722c51cdb5b0afd8c7082e8a6af336ee8/); polygon `0xd96877ce3771c0504f0643a98f7646ce2226543f` | ⚠️ Unaudited |
| CWrappedNativeDelegate | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x5441090c0401ee256b09deb35679ad175d1a0c97`](./contracts/arbitrum-42161/0x5441090c0401ee256b09deb35679ad175d1a0c97/); arbitrum `0x8b9a81b66131a62aef5f229d218ee22b42e92ac2` | ⚠️ Unaudited |
| FlashloanLender | unknown | arbitrum | n/a | 4 deployments: bsc `0xb7132898491431b63c7c90df31f13dc6dc414b5a`; polygon `0xb3c68d69e95b095ab4b33b4cb67dbc0fbf3edf56`; arbitrum [`0x1cc6cf8455f7783980b1ee06ecd4ed9acd94e1c7`](./contracts/arbitrum-42161/0x1cc6cf8455f7783980b1ee06ecd4ed9acd94e1c7/); arbitrum `0x4eceddf62277ed78623f9a94995c680f8fd6c00e` | ⚠️ Unaudited |
| Maximillion | unknown | ethereum | n/a | 2 deployments: ethereum [`0x06091717521c2002f2859c75f53987eaf1e5aa2f`](./contracts/ethereum-1/0x06091717521c2002f2859c75f53987eaf1e5aa2f/); bsc `0x803bb411e0c0200349e30314d60c30a7509b6245` | ⚠️ Unaudited |
| Normalizer | unknown | ethereum | n/a | [`0x734279a9059dbb72cd3401983ef7f40f2ac6d3e9`](./contracts/ethereum-1/0x734279a9059dbb72cd3401983ef7f40f2ac6d3e9/) | ⚠️ Unaudited |
| PriceOracle | operational_periphery | polygon | n/a | 6 deployments: ethereum `0x3abce8f1db258fbc64827b0926e14a0f90525cf7`; ethereum `0x4250a6d3bd57455d7c6821eecb6206f507576cd2`; ethereum `0x9a975fe93cff8b0387b958adb9082b0ed0659ad2`; bsc `0x541876d6e61a200efd99711c5fda1f7a50d14847`; bsc `0x78af64b8a02ea3f6445096a4d866eb8f27141b4b`; polygon [`0x0a4accd9d150ad4ddc7ea2e6151243ce668bf2f5`](./contracts/polygon-137/0x0a4accd9d150ad4ddc7ea2e6151243ce668bf2f5/) | ⚠️ Unaudited |
| PriceOracleFUSDT | unknown | bsc | n/a | [`0x3b4bc12971290b9561b99b77f3bea8c5e9e39caa`](./contracts/bsc-56/0x3b4bc12971290b9561b99b77f3bea8c5e9e39caa/) | ⚠️ Unaudited |
| PriceOracleProxy | unknown | ethereum | n/a | 15 deployments: ethereum [`0x1d8e3881cc063e593673625bbb9e5191be61ae3c`](./contracts/ethereum-1/0x1d8e3881cc063e593673625bbb9e5191be61ae3c/); ethereum `0x3a4b89e371e9f1209fbffb4914087d0760eeafa1`; ethereum `0x4b7dba23bea9d1a2d652373bcd1b78b0e9e0188a`; ethereum `0x647a539282e8456a64dfe28923b7999b66091488`; ethereum `0x653f72f57418132136609cd638d0603990823cae`; ethereum `0x6b96c414ce762578c3e7930da9114cffc88704cb`; ethereum `0x72dbf592fb7add76911450058324d6e512db74a5`; ethereum `0x88e79e39a4f630be09efa4bf473388ab2636370d`; ethereum `0x9a5135157a74b753d11197a821e7f199f5b2fed0`; ethereum `0xc78cad9f1a1ff360fc6d2c07a2919b116750da23`; ethereum `0xe4c1e5d96360847de7dff72d2bd1c4b3d4284e97`; ethereum `0xecb0b5f5387732085a952714be391965c7dc1886`; ethereum `0xf74f976841209efed472ae9e447fa96765b6cd94`; bsc `0xa82958c9f2ff63f6d2dc7d8ee22ae69fd0819477`; bsc `0xdce8c990534283a6e0c8020e18cc42dcfb1b0ca4` | ⚠️ Unaudited |
| PriceOracleProxyBSC | unknown | bsc | n/a | 7 deployments: bsc [`0x64e1c4fbba871b391333bcfce817a55aef356041`](./contracts/bsc-56/0x64e1c4fbba871b391333bcfce817a55aef356041/); bsc `0x6eedcf47711373e758a0ab4e467a36bc2151cd6a`; bsc `0x913b6e507bb1253150433e49a18791c6292a3d7c`; bsc `0xa7ae01e2d0e391ef1e800dd4e0712d36228a1c7d`; bsc `0xab548fff4db8693c999e98551c756e6c2948c408`; bsc `0xaf2b0a5192f01574105d8ad546a5ce614a5eced4`; bsc `0xc2e7fc53503eb419c8078d56895cb598c71177dd` | ⚠️ Unaudited |
| PriceOracleProxyIB | unknown | ethereum | n/a | [`0xde19f5a7cf029275be9cec538e81aa298e297266`](./contracts/ethereum-1/0xde19f5a7cf029275be9cec538e81aa298e297266/) | ⚠️ Unaudited |
| PriceOracleProxyUSD | unknown | arbitrum | n/a | 4 deployments: polygon `0x812c0b2a2a0a74f6f6ed620fbd2b67fec7db2190`; arbitrum [`0x06288754f31d100039b21e62a429e4b81e56b626`](./contracts/arbitrum-42161/0x06288754f31d100039b21e62a429e4b81e56b626/); arbitrum `0x73cf8c5d14aa0ebc89f18272a568319f5bab6cbd`; arbitrum `0xe82225ba6bed28406912522f01c7102dd9f07e78` | ⚠️ Unaudited |
| PriceOracleV1 | operational_periphery | arbitrum | n/a | [`0x20ca53e2395fa571798623f1cfbd11fe2c114c24`](./contracts/arbitrum-42161/0x20ca53e2395fa571798623f1cfbd11fe2c114c24/) | ⚠️ Unaudited |
| StakingRewardsLock | unknown | ethereum | n/a | [`0x0b471a71c3f6d4aadc7eb20aab7d730ae385e150`](./contracts/ethereum-1/0x0b471a71c3f6d4aadc7eb20aab7d730ae385e150/) | ⚠️ Unaudited |
| StandardArbERC20 | token | arbitrum | n/a | [`0xf4d48ce3ee1ac3651998971541badbb9a14d7234`](./contracts/arbitrum-42161/0xf4d48ce3ee1ac3651998971541badbb9a14d7234/) | ⚠️ Unaudited |
| TetherToken | token | ethereum | n/a | [`0xc581b735a1688071a1746c968e0798d642ede491`](./contracts/ethereum-1/0xc581b735a1688071a1746c968e0798d642ede491/) | ⚠️ Unaudited |
| Unitroller | unknown | polygon | n/a | [`0xbadac56c9aca307079e8b8fc699987aac89813ee`](./contracts/polygon-137/0xbadac56c9aca307079e8b8fc699987aac89813ee/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | [`0x3986425b96f11972d31c78ff340908832c5c0043`](./contracts/ethereum-1/0x3986425b96f11972d31c78ff340908832c5c0043/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (27)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1d919a8f5d9584cbc89430de6b5b0dcb26b9b858` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24e45b60e13b6f96e983bb01ea1326fa5169ccd5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x25bd5c8ed1705793a3daa273c9bc7f15b22c630e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x70339079ac505bbe46fcf5365c87809585e69112` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x867072d6245467edfdbd0fc8e9f2bf0701f40f94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b7f980e5b37e46d0dc5d0f1a9a6e452809e56c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d77680d75ab51d8f889f45770d3d3c14bd2664d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb424bebf463648d0594239dce71df0eb4f33e95f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf7aecf4d4e2215ee2b6b83a3884acd2e0d9adb1c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2412921958db8701b526fe8e64516f1ad94e8629` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x284bb6e4d82de30de4dadaceff4fe1a75e47749b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x32a237d2138b2bfff2316d0520c29dc05542d28c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4fb9e40430526629425dc753e1c17edcb1c0f039` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6af4738ceb03ba0ac6ef6f6094a45d52dd28822d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6de04aa3b1750eabd20e5608d3a96c552ddd3b0c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ea00ae96bc03c7f255f4adf5b6956c11c90ae70` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84d6fe44d88bcda3097f957389ed976cd0807604` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc977c6427f255d0ec38da7fc6b46ecd9640ea2bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd44029845b2ac6952bf9b58fb23f49e381b60055` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe630c712b52763240a270ffe6a20b22b7721786e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe85d398d016f76337c4398f245f15bf073275afc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5eb35daf9ef97e9e8cc33c486bad884a62cae9ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x520b78e8dc48157b2f13edd519a2f8f2f101db80` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x66e9c76b76f73b7f04108e26d201bc4023386fa6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x812c0b2a2a0a74f6f6ed620fbd2b67fec7db2190` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd528697008ac67a21818751a5e3c58c8dae54696` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xee0c0a840cbfc2145580c517b10afabd0b788328` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CREAMSummary.pdf](https://github.com/trailofbits/publications/blob/master/reviews/CREAMSummary.pdf) | Trail of Bits | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |
| [trailofbits-CREAMSummary.pdf](https://github.com/CreamFi/compound-protocol/blob/master/audits/trailofbits-CREAMSummary.pdf) | Trail of Bits | Audit | 2021-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x04c61ef58a6f1d6c572045a39a5434ab9dee69fb`](./contracts/bsc-56/0x04c61ef58a6f1d6c572045a39a5434ab9dee69fb/) | CCakeLPDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a6fd01c92f0390670cce399b532017cdb2b930f`](./contracts/ethereum-1/0x6a6fd01c92f0390670cce399b532017cdb2b930f/) | CCollateralCapErc20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00e5c0774a5f065c285068170b20393925c84bf3`](./contracts/ethereum-1/0x00e5c0774a5f065c285068170b20393925c84bf3/) | CCollateralCapErc20Delegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41c84c0e2ee0b740cf0d31f63f3b6f627dc6b393`](./contracts/ethereum-1/0x41c84c0e2ee0b740cf0d31f63f3b6f627dc6b393/) | CCollateralCapErc20Delegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x09e470fe983812df81fb8bf6f14fe9a7832fe7ec`](./contracts/bsc-56/0x09e470fe983812df81fb8bf6f14fe9a7832fe7ec/) | CCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0e9d900c884964dc4b26db96ba113825b1a09baa`](./contracts/bsc-56/0x0e9d900c884964dc4b26db96ba113825b1a09baa/) | CCollateralCapErc20Delegate | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x20d5d319c2964ecb52e1b006a4c059b7f6d6ad0a`](./contracts/polygon-137/0x20d5d319c2964ecb52e1b006a4c059b7f6d6ad0a/) | CCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5eb35daf9ef97e9e8cc33c486bad884a62cae9ce`](./contracts/arbitrum-42161/0x5eb35daf9ef97e9e8cc33c486bad884a62cae9ce/) | CCollateralCapErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca1041f188ffecc499e8d4d0f08dd31b0f41c157`](./contracts/ethereum-1/0xca1041f188ffecc499e8d4d0f08dd31b0f41c157/) | CCollateralCapErc20NoInterestDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ec370ea274748620f3f7aab026ccc31b474c4db`](./contracts/ethereum-1/0x8ec370ea274748620f3f7aab026ccc31b474c4db/) | CErc20Delegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1ffe17b99b439be0afc831239ddecda2a790ff3a`](./contracts/bsc-56/0x1ffe17b99b439be0afc831239ddecda2a790ff3a/) | CEther | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ba592f78db6436527729929aaf6c908497cb200`](./contracts/ethereum-1/0x2ba592f78db6436527729929aaf6c908497cb200/) | Comp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d5bc3c8d13dcb8bf317092d84783c2697ae9258`](./contracts/ethereum-1/0x3d5bc3c8d13dcb8bf317092d84783c2697ae9258/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5ef4c9384d9d7c39cbc12b62e82900042f1205b4`](./contracts/ethereum-1/0x5ef4c9384d9d7c39cbc12b62e82900042f1205b4/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xab1c342c7bf5ec5f02adea1c2270670bca144cbb`](./contracts/ethereum-1/0xab1c342c7bf5ec5f02adea1c2270670bca144cbb/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0549a7232759066282f4abe97a9d8da02f99d618`](./contracts/bsc-56/0x0549a7232759066282f4abe97a9d8da02f99d618/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2450fd71da52b942f3a3dc67cf7221287339a519`](./contracts/bsc-56/0x2450fd71da52b942f3a3dc67cf7221287339a519/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x589de0f0ccf905477646599bb3e5c622c84cc0ba`](./contracts/bsc-56/0x589de0f0ccf905477646599bb3e5c622c84cc0ba/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x20ca53e2395fa571798623f1cfbd11fe2c114c24`](./contracts/polygon-137/0x20ca53e2395fa571798623f1cfbd11fe2c114c24/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xbadac56c9aca307079e8b8fc699987aac89813ee`](./contracts/arbitrum-42161/0xbadac56c9aca307079e8b8fc699987aac89813ee/) | Comptroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x49d72e3973900a195a155a46441f0c08179fdb64`](./contracts/ethereum-1/0x49d72e3973900a195a155a46441f0c08179fdb64/) | CreamEth2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x780f75ad0b02afeb6039672e6a6cede7447a8b45`](./contracts/ethereum-1/0x780f75ad0b02afeb6039672e6a6cede7447a8b45/) | CreamLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d09144f3479bb805cb7c92346987420bcbdc10c`](./contracts/ethereum-1/0x1d09144f3479bb805cb7c92346987420bcbdc10c/) | CreamY | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0dfd3bca58f7e0639e87fba6f778c87bfa138ba7`](./contracts/bsc-56/0x0dfd3bca58f7e0639e87fba6f778c87bfa138ba7/) | CTokenAdmin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x01e2b783d076087f3e00a852ae0ae45ca77ca922`](./contracts/bsc-56/0x01e2b783d076087f3e00a852ae0ae45ca77ca922/) | CWrappedNativeDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x3fae5e5722c51cdb5b0afd8c7082e8a6af336ee8`](./contracts/polygon-137/0x3fae5e5722c51cdb5b0afd8c7082e8a6af336ee8/) | CWrappedNativeDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x5441090c0401ee256b09deb35679ad175d1a0c97`](./contracts/arbitrum-42161/0x5441090c0401ee256b09deb35679ad175d1a0c97/) | CWrappedNativeDelegate | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1cc6cf8455f7783980b1ee06ecd4ed9acd94e1c7`](./contracts/arbitrum-42161/0x1cc6cf8455f7783980b1ee06ecd4ed9acd94e1c7/) | FlashloanLender | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x06091717521c2002f2859c75f53987eaf1e5aa2f`](./contracts/ethereum-1/0x06091717521c2002f2859c75f53987eaf1e5aa2f/) | Maximillion | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x734279a9059dbb72cd3401983ef7f40f2ac6d3e9`](./contracts/ethereum-1/0x734279a9059dbb72cd3401983ef7f40f2ac6d3e9/) | Normalizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x0a4accd9d150ad4ddc7ea2e6151243ce668bf2f5`](./contracts/polygon-137/0x0a4accd9d150ad4ddc7ea2e6151243ce668bf2f5/) | PriceOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x3b4bc12971290b9561b99b77f3bea8c5e9e39caa`](./contracts/bsc-56/0x3b4bc12971290b9561b99b77f3bea8c5e9e39caa/) | PriceOracleFUSDT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1d8e3881cc063e593673625bbb9e5191be61ae3c`](./contracts/ethereum-1/0x1d8e3881cc063e593673625bbb9e5191be61ae3c/) | PriceOracleProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x64e1c4fbba871b391333bcfce817a55aef356041`](./contracts/bsc-56/0x64e1c4fbba871b391333bcfce817a55aef356041/) | PriceOracleProxyBSC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xde19f5a7cf029275be9cec538e81aa298e297266`](./contracts/ethereum-1/0xde19f5a7cf029275be9cec538e81aa298e297266/) | PriceOracleProxyIB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x06288754f31d100039b21e62a429e4b81e56b626`](./contracts/arbitrum-42161/0x06288754f31d100039b21e62a429e4b81e56b626/) | PriceOracleProxyUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x20ca53e2395fa571798623f1cfbd11fe2c114c24`](./contracts/arbitrum-42161/0x20ca53e2395fa571798623f1cfbd11fe2c114c24/) | PriceOracleV1 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0b471a71c3f6d4aadc7eb20aab7d730ae385e150`](./contracts/ethereum-1/0x0b471a71c3f6d4aadc7eb20aab7d730ae385e150/) | StakingRewardsLock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xf4d48ce3ee1ac3651998971541badbb9a14d7234`](./contracts/arbitrum-42161/0xf4d48ce3ee1ac3651998971541badbb9a14d7234/) | StandardArbERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc581b735a1688071a1746c968e0798d642ede491`](./contracts/ethereum-1/0xc581b735a1688071a1746c968e0798d642ede491/) | TetherToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xbadac56c9aca307079e8b8fc699987aac89813ee`](./contracts/polygon-137/0xbadac56c9aca307079e8b8fc699987aac89813ee/) | Unitroller | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3986425b96f11972d31c78ff340908832c5c0043`](./contracts/ethereum-1/0x3986425b96f11972d31c78ff340908832c5c0043/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 42 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 27 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2998] CREAMSummary.pdf
- [2999] trailofbits-CREAMSummary.pdf

Fork inheritance lineage and inherited audits are included when available.
