# Agentic Audit Brief: Equalizer

## Project Overview

- Project: Equalizer (`equalizer`)
- Website: [https://equalizer.exchange/](https://equalizer.exchange/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.845Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: base, fantom, sonic
- Contract surface: 226 unique implementations (399 raw deployments)
- DeFi Llama TVL: $741,145.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 64 project-authored contract(s) across 2 chain(s); 2 ERC4626 vaults, 3 ERC20 tokens, 5 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 9 functional families. Its contracts share 11 common project-authored base contract(s) (ownableupgradeable, contextupgradeable, guard). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 491; live-surface contracts included: 398 (164 live, 234 unknown).
- Excluded by liveness: 93 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/47 (0.0%)
- Deployed-live implementations: 51 of 226 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/52
- Verified + Unaudited implementations: 52
- Verified by bytecode match: 0
- Unverified implementations: 174
- Unique implementations: 226
- Raw deployments: 399
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (52)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BeaconProxyFactory | registry | sonic | n/a | 3 deployments: sonic [`0x0d4e88ea618bb5b4bc7f143bd16e4b5640212967`](./contracts/sonic-146/0x0d4e88ea618bb5b4bc7f143bd16e4b5640212967/); sonic `0x15864c84d67280f779d2d7a0b2338c16adb01dfc`; sonic `0x769e380850b075c80b7304469d6d973eb3c6ccdd` | ⚠️ Unaudited |
| Burner | unknown | sonic | n/a | [`0xe79ea8606577fc1a846013e23ff2532919f75f51`](./contracts/sonic-146/0xe79ea8606577fc1a846013e23ff2532919f75f51/) | ⚠️ Unaudited |
| ElitenessERC20 | token | base | n/a | 12 deployments: sonic `0x31b59fdd00b67ec1510b3d099f1e110c4dafc109`; sonic `0xcc835d13543cec819ac0226dd9ff35b6312b8fca`; sonic `0xd4aa386bfceeedd9de0875b3ba07f51808592e22`; sonic `0xd8a6f92b921a7f56348b9c9ee6571d88ba3028db`; sonic `0xdc2de2f2c0122ff7cb8482dc47da75a6a5d1a88b`; base [`0x17b9b0d1d64a26e9380289600231f18e37fe24eb`](./contracts/base-8453/0x17b9b0d1d64a26e9380289600231f18e37fe24eb/); base `0x223bfac1488d6157bf9f5ad6d8699da92e5838d7`; base `0x248bb3446328b8e1474bf79c50fce1cfa5ab7c61`; base `0x49d19c0c20da95a64c0c05c34d2c1b22d4173ac7`; base `0x549a36aa02bfe1e8b83c0178dd3b34971eda7d7e`; base `0x981b34765c14cca1de33ba3955014acdcf1d065b`; base `0xf704d98630976f5fbf9218eb94c093d6a4d6f754` | ⚠️ Unaudited |
| elitenessERC4626 | unknown | sonic | n/a | 2 deployments: sonic [`0x8de568691a1a6356b46418fdc12e1694a1ba1e22`](./contracts/sonic-146/0x8de568691a1a6356b46418fdc12e1694a1ba1e22/); sonic `0xac4bb9312c6f8a6a0c198851484e9512cd6c8877` | ⚠️ Unaudited |
| ElitenessFarmland | unknown | sonic | n/a | 5 deployments: sonic [`0x11cfb329caaca6d7da69734d10c7ec70afd75240`](./contracts/sonic-146/0x11cfb329caaca6d7da69734d10c7ec70afd75240/); sonic `0x21c99eae2aaf8e1cc8f948775f371529fa90e006`; sonic `0x381a53763155b1bc00be98ad0b68828a5981073e`; sonic `0xd58273aeaf985d069866d7ba42bafc9c2121faa0`; sonic `0xfaa72e9bd6eba120c649da8ec8257dea2db87f40` | ⚠️ Unaudited |
| eliteRingsManager | governance | sonic | n/a | 6 deployments: sonic [`0x22cfb3161076a2bf472627127271747d2968893f`](./contracts/sonic-146/0x22cfb3161076a2bf472627127271747d2968893f/); sonic `0x5af02bb20aeefb2dcddb145ed520069fc4d6f0ff`; sonic `0xa5fea6ea872287ec5216746b7b05dcfabfe190eb`; sonic `0xad605d40dfd9046ce4a851484a4663c3538d0906`; sonic `0xae1a80e66a2b2d562dfe34a46ebce917c5ab8735`; sonic `0xdabb71f5780799933bed84a9fdea36783c8b8773` | ⚠️ Unaudited |
| eLOCK | unknown | base | n/a | [`0xb212f32270177c820330fe1e9493ec00ceab5442`](./contracts/base-8453/0xb212f32270177c820330fe1e9493ec00ceab5442/) | ⚠️ Unaudited |
| eLOCKS | unknown | base | n/a | [`0xa9a3e305955bc462768483249e785c5e5a0d6a6a`](./contracts/base-8453/0xa9a3e305955bc462768483249e785c5e5a0d6a6a/) | ⚠️ Unaudited |
| ElToken | token | base | n/a | 4 deployments: base [`0x1613ab1a7cbd35ce942beb6ae857444d78f58bef`](./contracts/base-8453/0x1613ab1a7cbd35ce942beb6ae857444d78f58bef/); base `0x5301bcc884b79e8a85c87676e6dd3e17291ffe5c`; base `0x74ebd0d422d250ace442b06481fae85a27fc3502`; base `0x7e55f92e644493e388b2733181bcd8afd56c8f62` | ⚠️ Unaudited |
| elTokenZap | adapter | sonic | n/a | 3 deployments: sonic [`0x7f142a18f1b476809c4994c63811fef4afd14134`](./contracts/sonic-146/0x7f142a18f1b476809c4994c63811fef4afd14134/); sonic `0xba65aa3954878a9b225b10355e1e24cc4dd10692`; sonic `0xe339f4b7c065f15d6bb43d39d5f107ee56265055` | ⚠️ Unaudited |
| Equal | unknown | base | n/a | [`0xdf486980df72446a5eff76263efb2fa9391be136`](./contracts/base-8453/0xdf486980df72446a5eff76263efb2fa9391be136/) | ⚠️ Unaudited |
| EqualizerLibrary | unknown | base | n/a | 3 deployments: base [`0x10b1df11a6834ac8afe6efa654fc8c8396e47d10`](./contracts/base-8453/0x10b1df11a6834ac8afe6efa654fc8c8396e47d10/); base `0x3ba64e3d39aaaf65e1c8bafc37ec91d40256a481`; base `0x75a1d75f4dc8ad7740cd0a1ea93cd6da57053859` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | sonic | n/a | 2 deployments: sonic [`0x5300db6baf9a1272121f74b7b2df0d2f79631dd2`](./contracts/sonic-146/0x5300db6baf9a1272121f74b7b2df0d2f79631dd2/); sonic `0x83291ffc4831844dbcb5cd31fd8aab39e93ac4d4` | ⚠️ Unaudited |
| fBOMB | unknown | sonic | n/a | 2 deployments: sonic [`0x807c19badabc848336fe0379bd659e4e4608542d`](./contracts/sonic-146/0x807c19badabc848336fe0379bd659e4e4608542d/); sonic `0xedf8b632b537d5993adb5e2e15882cd791c284cb` | ⚠️ Unaudited |
| FeeSynthesizer | unknown | base | n/a | 5 deployments: base [`0x11b3dc196ce5195e0ab82052cb9dfd468da1218e`](./contracts/base-8453/0x11b3dc196ce5195e0ab82052cb9dfd468da1218e/); base `0x4031fcef4b30da197d4a29b8e5b0b2f0014f4cc8`; base `0x8ad889dfca6667ef014b944c04c2aaec09c78f13`; base `0x9bf40a7d80ba9e2b4d4fdfa8d87677d4ad83bace`; base `0xbd52ef870792b4a875167374e4c1ce98e6fa11d1` | ⚠️ Unaudited |
| FeeTierManager_2Thick | governance | sonic | n/a | [`0x5126cbc2597681cdc7c648dd74b19fb12f77dc30`](./contracts/sonic-146/0x5126cbc2597681cdc7c648dd74b19fb12f77dc30/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | base | n/a | 4 deployments: base [`0x7b7faf5f614f8c13f80a8775b61d1c22f48ebd27`](./contracts/base-8453/0x7b7faf5f614f8c13f80a8775b61d1c22f48ebd27/); base `0x9997408b7735db87747a055a51ea39607591885f`; base `0xa4d2b96c1dd4d404b371c7013fda386dfc8b0c85`; base `0xcc835d13543cec819ac0226dd9ff35b6312b8fca` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | base | n/a | [`0xb136b45e3e241bb0d0c037395446cf42e4db13d6`](./contracts/base-8453/0xb136b45e3e241bb0d0c037395446cf42e4db13d6/) | ⚠️ Unaudited |
| impermaxBorrowableERC4626Wrapper | core_logic | sonic | n/a | 2 deployments: sonic [`0xc7d31877e3b1d55ff48a6e3dcfa846fa3e00d083`](./contracts/sonic-146/0xc7d31877e3b1d55ff48a6e3dcfa846fa3e00d083/); sonic `0xffa942079e238353423ab468acc10dc9343dccf0` | ⚠️ Unaudited |
| Minter | operational_periphery | base | n/a | 2 deployments: base [`0x41c4d6e7d3ea574bc1c8b2b34544cb2e3789a7e4`](./contracts/base-8453/0x41c4d6e7d3ea574bc1c8b2b34544cb2e3789a7e4/); base `0xa1b88ec609223113e6ed5aa4c75a487fffab54b4` | ⚠️ Unaudited |
| MultiNotify | unknown | sonic | n/a | 2 deployments: sonic [`0x990d2cd2b095fd57d532cf12d9f58dbe3e7fab3b`](./contracts/sonic-146/0x990d2cd2b095fd57d532cf12d9f58dbe3e7fab3b/); base `0xf7d8c4094c330f3d70f597ba892c44206f07d792` | ⚠️ Unaudited |
| multiNotifyEqualToEltokenGauge | operational_periphery | sonic | n/a | 6 deployments: sonic [`0x608469806c0845dd9fa1568480c34c2c68baa077`](./contracts/sonic-146/0x608469806c0845dd9fa1568480c34c2c68baa077/); sonic `0x79f90ddb40c5c83b70fca3a29f1cbd6221236f49`; sonic `0x8a969057f9888992dd72a9613999f15df4d83e9a`; sonic `0xe377f23e13ec2cf5d8d575f7c6d3e0bb017cf89c`; sonic `0xfb3e3d1e7b1919e08ed84de83ea9a493127be6bc`; sonic `0xff1329d7b2c088ea5e173324e6af2d171562856e` | ⚠️ Unaudited |
| NFP_Staker | core_logic | sonic | n/a | 8 deployments: sonic [`0x00a76d63cf6a514f1f9038a5afd7fb5b29df1306`](./contracts/sonic-146/0x00a76d63cf6a514f1f9038a5afd7fb5b29df1306/); sonic `0x8273ae81fd417c3d87beda5386939a1c6b780af1`; sonic `0x9a18740dd1938ca5cd7cf1d39c89474dfe3b8209`; sonic `0xafe7acc555cb8d5bd2a8d665fb53fbf741103ad8`; sonic `0xcfa61dfd052b833b6005ae6ff76957b03913dca2`; sonic `0xd7a6f11de764184f193d82fb4b9d71a78d35c56c`; sonic `0xdc58475bc731673b0413873a8cec5ba5485ee35f`; sonic `0xdf805701f2ad494c1289cb9a778a2ca412828c09` | ⚠️ Unaudited |
| NFTDescriptor | token | base | n/a | [`0x97a7b2f95fda7181da16aec3072cd55a58d85073`](./contracts/base-8453/0x97a7b2f95fda7181da16aec3072cd55a58d85073/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | 3 deployments: sonic `0x79c26d7ac184bb9c453b996475f484668e516de5`; base [`0x2b52294425a9a229322228de659ede9d146d7c2f`](./contracts/base-8453/0x2b52294425a9a229322228de659ede9d146d7c2f/); base `0x79c26d7ac184bb9c453b996475f484668e516de5` | ⚠️ Unaudited |
| Pair | unknown | base | n/a | [`0x83240b049fa89b65be714aed68e5b074df6aac84`](./contracts/base-8453/0x83240b049fa89b65be714aed68e5b074df6aac84/) | ⚠️ Unaudited |
| PairFactory | registry | base | n/a | 4 deployments: base [`0x39cc812e698a61f1883f7b9dba54159aa7b1d91c`](./contracts/base-8453/0x39cc812e698a61f1883f7b9dba54159aa7b1d91c/); base `0x653ce153d56f749671d42d58b749d02fd9ad3414`; base `0xc295f619afc2b8543d91c8970ea4c0726f197250`; base `0xd7627edf607c49f525212fc09d650a91a9b222e1` | ⚠️ Unaudited |
| PriceGuru | operational_periphery | base | n/a | [`0x02c32e0a34ab6fa5825565254f79c8c690d98666`](./contracts/base-8453/0x02c32e0a34ab6fa5825565254f79c8c690d98666/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | sonic | n/a | 16 deployments: sonic [`0x0be40f3289c1a2b7c380086490393e6ef7c1d1aa`](./contracts/sonic-146/0x0be40f3289c1a2b7c380086490393e6ef7c1d1aa/); sonic `0x1d864a2087c61cdcce1d6ff4b9ebc400e7ed1f2e`; sonic `0x3ba64e3d39aaaf65e1c8bafc37ec91d40256a481`; sonic `0x4fdd88e41b9f3e67ac874b698802d44c35487c6c`; sonic `0x5cfdf393f776f696c7c123e7c63e7ab2f8627db6`; sonic `0x6d93a966dc69a667d9584befc2eeb167df9f8356`; sonic `0x93b25ca96088e09ebb85ac979f087a899c891738`; sonic `0xa543f1b89cdb3b45c90b81b559948b1c54ea7324`; sonic `0xc55ebfb742a6a43a14bf3b68b20a9c300dbe0979`; sonic `0xcd4f9a345aa5ad9d34e92635d7c1d9b609ae0304`; sonic `0xeaa0dc1077d743f2b4a86a21949c9cd9d792125a`; sonic `0xf2d79a0f220679ddda599e63484877c93c4846ca`; base `0x23c5e56183371e1fead04674730be924f1a4d71e`; base `0x687dad08623c88452a5deb3a4482c979fa3f571e`; base `0x7de81435f4686734835a79ae753f791068e71c1e`; base `0xfab311fe3e3be4bb3fed77257ee294fb22fa888b` | ⚠️ Unaudited |
| ProxyAdmin4 | governance | sonic | n/a | [`0x8eb10eb24d258f832f0d6603544b7ab794ebfa10`](./contracts/sonic-146/0x8eb10eb24d258f832f0d6603544b7ab794ebfa10/) | ⚠️ Unaudited |
| QuoterV2 | periphery | base | n/a | 2 deployments: base [`0xc701e92db1ef14ab64f66f18536b1e07678db678`](./contracts/base-8453/0xc701e92db1ef14ab64f66f18536b1e07678db678/); base `0xf5b7181877feab982a4b49a99e84bb7cbebeff98` | ⚠️ Unaudited |
| Router02 | adapter | sonic | n/a | [`0x7635cd591cfe965be8bec60da6ea69b6dcd27e4b`](./contracts/sonic-146/0x7635cd591cfe965be8bec60da6ea69b6dcd27e4b/) | ⚠️ Unaudited |
| Router03 | adapter | sonic | n/a | [`0xcc6169aa1e879d3a4227536671f85afdb2d23fad`](./contracts/sonic-146/0xcc6169aa1e879d3a4227536671f85afdb2d23fad/) | ⚠️ Unaudited |
| sAMM_Oracle | operational_periphery | sonic | n/a | [`0x0d809fc015810ce75aa1c939c28e1355ad789048`](./contracts/sonic-146/0x0d809fc015810ce75aa1c939c28e1355ad789048/) | ⚠️ Unaudited |
| Scalepounder | unknown | base | n/a | 3 deployments: base [`0x659aa8d33caaba3e178551af4e439f99dd12b9e9`](./contracts/base-8453/0x659aa8d33caaba3e178551af4e439f99dd12b9e9/); base `0x74a022ccd2d15d19633a44b4e869c26299dbc272`; base `0xde0ec128c6b0f6d3077de315684da741c7d61606` | ⚠️ Unaudited |
| ScaleRouter | adapter | base | n/a | 2 deployments: base [`0x2f87bf58d5a9b2efade55cdbd46153a0902be6fa`](./contracts/base-8453/0x2f87bf58d5a9b2efade55cdbd46153a0902be6fa/); base `0x5e9d25014d01323d6f8c0c6640572e4444d11c94` | ⚠️ Unaudited |
| SolidlyExtendedRouter03 | adapter | base | n/a | 3 deployments: base [`0x6411350def83147130b26c1e90dc7afbbb66e9bb`](./contracts/base-8453/0x6411350def83147130b26c1e90dc7afbbb66e9bb/); base `0x750281e6b7d14d6afe29f6d1295ba3d8869e422f`; base `0xa78618818503902f369748a6fb3b379f6897aaab` | ⚠️ Unaudited |
| SSR2Thick_Factory | registry | sonic | n/a | 2 deployments: sonic [`0x25374db31147061cac658af137c4231ac77a1af9`](./contracts/sonic-146/0x25374db31147061cac658af137c4231ac77a1af9/); sonic `0x6ea84bbdee1885f46bca590e611bee08ab32525c` | ⚠️ Unaudited |
| SuperVoter | unknown | base | n/a | 2 deployments: sonic `0xb6dfc39b3270f059f32eb9d680d994cdecfad93f`; base [`0x0225664e04b25a1eb71a7ad0b93c9aa6ec3c74a0`](./contracts/base-8453/0x0225664e04b25a1eb71a7ad0b93c9aa6ec3c74a0/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | base | n/a | 2 deployments: sonic `0xe4ba08712c404042b8eefc3fdf3b603c977500df`; base [`0x1f7a12b40bfc8e8561008bc2ca1fbdc71a36d0e8`](./contracts/base-8453/0x1f7a12b40bfc8e8561008bc2ca1fbdc71a36d0e8/) | ⚠️ Unaudited |
| ThickALMGaugeEquivalentFarmland | operational_periphery | base | n/a | 21 deployments: base [`0x02c88d4067988a0981ffd0bd0c34a6a2ed3ad6df`](./contracts/base-8453/0x02c88d4067988a0981ffd0bd0c34a6a2ed3ad6df/); base `0x159aef7df8d1bdef4f99c825a8b7931c01919ef2`; base `0x17a0d9b9147b139eeb4470da2ca92bbcb9112baa`; base `0x1dcdf000566622e4dc53e9d7359e83552425890c`; base `0x2735a783a160e3be8ce91b2b51fb39f5d6f53191`; base `0x338b1832a84813a52634471ac3015ae54508b5f3`; base `0x3c93f6391f1a3e9609e23c7424ffe4c029f2035a`; base `0x3f4d382f48562978bdc58ecd4a584296cb16a13e`; base `0x427141e639dda0ad344df29b35241d7c480eecb6`; base `0x56c90e0673e1e2d1c732841f5f41b251e37916c2`; base `0x5b50274ff4439424b7c501c3fd8a426464f9de7b`; base `0x66a5dfec671685fa4479bb1abbe1cfb99145dcc6`; base `0x8d6afe72a159baabded2d1314660476a180f1733`; base `0x98adfea120f646315eb8d7492be29a177344fd1e`; base `0xa7672a68a3ab5215f4adac2789376487fbc6ae8e`; base `0xb1486253757cb88fd006b242cbed82401e56e8d3`; base `0xc8eaae6e26434e2f0d0cce23309e3f453abf6a72`; base `0xdeba7ad89eab7e155413d35e59ff5893a17d6327`; base `0xf1580aff4ad58357a75b44adaacb35e621444354`; base `0xf269270d0b6fdbf34ba57bf8293455dedae2bf1d`; base `0xfcc85a764b6ae62fdaee33b8e7a2b59297b69068` | ⚠️ Unaudited |
| TickLens | periphery | base | n/a | [`0xb80a72281c76464cc0e1fbf2431a897393e0d757`](./contracts/base-8453/0xb80a72281c76464cc0e1fbf2431a897393e0d757/) | ⚠️ Unaudited |
| TvlGuru_ThickALM | unknown | base | n/a | [`0x7b54dfec0d532808d23cc24e0035d74557e46f75`](./contracts/base-8453/0x7b54dfec0d532808d23cc24e0035d74557e46f75/) | ⚠️ Unaudited |
| TvlGuru_ThickThickALM | unknown | base | n/a | [`0x9a949959057fbbdf1be20b489ceea51994fa59c9`](./contracts/base-8453/0x9a949959057fbbdf1be20b489ceea51994fa59c9/) | ⚠️ Unaudited |
| TvlGuru_v21 | unknown | sonic | n/a | [`0x1ff98b4236c11f3fd2716ff81d5c509dc1074f7e`](./contracts/sonic-146/0x1ff98b4236c11f3fd2716ff81d5c509dc1074f7e/) | ⚠️ Unaudited |
| UniswapInterfaceMulticall | periphery | base | n/a | 2 deployments: sonic `0x9b500c0a544b870d9c4c441147dcaef599e542e7`; base [`0x4c29682a07c50dd5f6bdf36eb97fb28f5c1681e3`](./contracts/base-8453/0x4c29682a07c50dd5f6bdf36eb97fb28f5c1681e3/) | ⚠️ Unaudited |
| UniswapV3Factory | registry | sonic | n/a | 3 deployments: sonic [`0x7ca1dccfb4f49564b8f13e18a67747fd428f1c40`](./contracts/sonic-146/0x7ca1dccfb4f49564b8f13e18a67747fd428f1c40/); base [`0x7ca1dccfb4f49564b8f13e18a67747fd428f1c40`](./contracts/base-8453/0x7ca1dccfb4f49564b8f13e18a67747fd428f1c40/); base `0xe6da85feb3b4e0d6aed95c41a125fba859bb9d24` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | sonic | n/a | 2 deployments: sonic [`0x5ebd6536a0f8dc9b2aad4a8e750eafff60047437`](./contracts/sonic-146/0x5ebd6536a0f8dc9b2aad4a8e750eafff60047437/); sonic `0xb654fa8d1027a305e4213709371d380d549beead` | ⚠️ Unaudited |
| Voter | unknown | base | n/a | 8 deployments: sonic `0x5bce722013d21dceb75276f48f69810af1663bc3`; sonic `0xe164f4ddd1c804813cfc6b4e0b9795a3c7e1fb47`; base [`0x050b424b074ae99a8c4fd176aad21fafa8d4e842`](./contracts/base-8453/0x050b424b074ae99a8c4fd176aad21fafa8d4e842/); base `0x18c7ad880a07d363f2d034a8523ae34b8068845a`; base `0x4232781d0ffa68440ba6aa6d5e8ba04c25a325a3`; base `0xa8bc72582856b0d4939e30988773df882f849aa2`; base `0xf795188d24c65255ad712cafca6756c7d05b9d31`; base `0xf88005d839a2f14e6b4f14938bb3deb4521cff21` | ⚠️ Unaudited |
| Voter | unknown | base | n/a | [`0x46abb88ae1f2a35ea559925d99fdc5441b592687`](./contracts/base-8453/0x46abb88ae1f2a35ea559925d99fdc5441b592687/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | base | n/a | 2 deployments: base [`0x3ce7ba8ad19fe33ae2ce20a4cc1b0d91c5053549`](./contracts/base-8453/0x3ce7ba8ad19fe33ae2ce20a4cc1b0d91c5053549/); base `0x88c3211ed3220c08376a28a3ba7c67d7d4be7db1` | ⚠️ Unaudited |
| weightedMultiTokenBalance | token | sonic | n/a | [`0xe41b49a03b367ecb41f834801c7f1922d8587eae`](./contracts/sonic-146/0xe41b49a03b367ecb41f834801c7f1922d8587eae/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (174)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | sonic | n/a | `0x02ea3bf01f74acdaeb80efa0128e7a9fb29187cb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x062ebc912ba97d1377edbd28a921c66dde2faaaf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x069a953ab1ff8f2ad1f17dd753b2e8fbb8344442` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x09e6c1edbd4f106a452611515d40b71a7dc5a4da` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0b2e3610f21088c65f7e8fd58ce8aa22c79ac204` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0c2b506e2fe63d32e1f2e77caf32a99bfdb220aa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0cb18bc7d3244153e4a9bbd5fa51aac3dbd8a818` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1448d5c6c64dab7f1cea8e8c27167b88f2fd08c2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1547620568e0494c4dbbe67e0c7543ce1c4eb361` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1a61f0cd3ff95844fd8b45067b191b63eef2ddd2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1ae47e8d7eda17bc3fc4716c290aaa840fb99293` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1b1c9a41a96de931c7508bd2c653c57c63cd32a4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1bf6ad96f89b475dd24b51b5af21d5284a737ff2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1d50ebd0db4c832b5bbd16fc2f4162130a4167dc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1f60ee0c9de0480b68dd299103396cf59146d5fa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x23072c68ec53f19eed09d85aa6193affe18a08f9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2453b0f6b2267101d1ab370284f1c9a0fd93d69a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2696f94f11dff0d77875e2652fcdb537274b9ce7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x284d3cbc5ead19f016412c1dd4d1d6a23c903179` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2b5cb80a1501b83ef35baca7403585ca801c00e9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2c34a616da514f6083a55c01d351a605288efbf1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2cf503ace60d2c9321a77401f8b1c9c1d9910380` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2fc7879c6d0a4242acd59c900965cca8159e382e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x302e60a0a669878f0e960042e572df214af3cbca` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x30f45defbbce0030ee14f9e08d36102115e5ce3b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x311c256aab987414afc886669801344ac556198e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x31686c006a915904efa2da955f87e7a40424699f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x316e8bb62549e7f3ebcf38f146daa974a2d8c165` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x31e812c1302331caca4c5f211c52821b0f023392` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3244084d18ea2e652fa7ab4deb6d9cabaa2bcefc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x326b73b2674ef61f12f6c63899bc85a7204564af` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3466dc7641fc59763db95b50c125b877bd54d0d2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x36fb2d01dff252167daa6e7d04df17e1a243b92c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3d37f2076b2c16e80c7d1621182795ec47399ae8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x430997c51a6f6f8a7a60bdcd2ad5f44347d86dd0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x430a47353cb2b7db4a0f311d7a48bcaeec1db6c3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x43da59150c4a392cf9dc19b9013729382ac05f46` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x45482bb70b9737c2a0e07a623fe828fb4546ab66` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4696ffbb324b643578103dd4cde6e04f9121d8bc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4b175408aaa9d87da71b6f549ac16a9727b85db2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4cfcc95cb36fcbe0e35c2404ed9b29c7dc1b5a1d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4d9c51bea6ea827ea18fe87d287821a66177faf1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x50c24424746716ba2eed4baffd42a8c88c0f6e97` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x54080ba6edf63aeab03e19bd84507ecd19215c04` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x547db6759b0af9e050855106993e3cefc16e937e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x55936f612dfea43ac6180534de31002896ce5810` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x56f86380c506d9d082252722122bce7254894f0f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x594230fa4999c3de8a37d925738998e5094b6bbb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x59c3cbf0e9cad3c7e9995973a1b0e27c727f6b56` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5ae3295f198dcba4b88371a33ebbd059863889bd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5ea576bb35d38b59dc35891b57c8047efd6de45d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x67b0cbdf0548c459ad3734d63b580beadc7c931c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x67ce89f6eeaed5d3c4a0dbd4002c3414f2051979` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6ec438cc50ca75b261a93039c4342e697468e272` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x70532d4caea4bb9df61794e7e0864f5a1bf11262` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7169b46d8f99719beaf39ec63dbc798e1aa9000d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x77081dd15d399b1dca135885a0e299b833ef95d4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x771a9923422a9f3538ee5606a3404f384395a170` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x79719592eac65aeacc4cf2eb39aee40d73bede99` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7a45a53aae3d6c2c32b07139874610320e5b1d29` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7c9ec9189120a9142b4a55b228abbff21794c1ae` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7dde13416ee7560155c2353ceaae26594741b3e5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7ebf10a03a5aee2e475e07e2271afe3c0b5b16bd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x7febd8342077d7ca2a36ea6fca6daf70d9ff8d95` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x82f244020a41264f26dadc3e09ec6990d04a3de3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8394946b44cb0643a13cb29958ea70875560c6fc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x83a4daa49f5257407179400c17c201c0406e015e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x85348cdd5d20ea246cd18e48717ab788d102eff7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x87ca0bb1260bf6d4622630029e3c26100db4600c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8bedd6227445ae061ed42645fc4d32be897ed2ec` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8d111f63ea50e966f3cb1ad4b26942d481d470cf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8d3413c1368b347f1e15a134fac54b302090e793` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x93590cdbc4ba47f419bc3652d54634e3ac361615` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x945763239775f324f14286913c6551a1feaa21bf` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x94920b0b84a7df3299ef05e3478dc922f0e566b2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x955f99aff4b66def6f0866b6295344bee46a83d4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9858027470c9d464e7465e1d50933f5666029bac` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x994d38babb4c6a3766cb658df9a5ed3f42369295` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9d9682577ca889c882412056669bd936894663fd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9dddb1cd8db2630204819e3550940b1edff1897c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa0abf1669d2cc0edd227a5979759949f775d1174` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa174350f831698336b8cf241b27b3a1d9241c6fb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa2a6a1a0543fa8752f6f5b52478df7fac5916298` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa3ffc79679ac2a422bc52f4cad83a4c09d0721a8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa6faf97f04dcfbe42fc269ec7329b361f94007e3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa722586c2ca505182aa52ef016d08bb0d3b9a636` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa87f2260c2a0e7fdbf8a3121aa911b589515dd41` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa8e5d922774c2b0360083b64879fb23869fcd343` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xab492b40817e9dc5195df543fbd8c71974855d56` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb32f2f6f808da563e86a42776f3ec4e25e4c02f5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb79f47a60c44334dd4e2a9663a9242eb3c41ec9b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbf4bfeb838de95d64726d55dfae5295b3dfb4b4b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc218d5b24fdea3011e22747dd8bfbefe1f13a61e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc28ca71006e2dc0510d12a6efca90e71498f1dac` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc33c20d4798a637aec2bbc6e1ffcd59b461aadf0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xceb494c78b73670574bf7c5bb531be5eb249926d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd2ce7238c07746e00ed1aec4ae3472e0cb18fc2d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd3b05b1e4869a5ffe5ed0ab8d8182771dfcef7b8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd5876948078eb89b3fea6d102112bf1910b7a994` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd6d75f1dabeda4068aa8c0f1dc614b55876811b9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd78d00bce60ff268bfc2833319f70032087bc3f1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xda0b0e91e5fb62a8e01c4121f36ba30505949911` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xde33b82c5e46f1d43ff49991f13d482500868ed2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdf486980df72446a5eff76263efb2fa9391be136` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe07c8782f7cf1571639900aa60882de39f82b619` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe188f2cd8cd7bc0b32e4d21135e0f7ee9d947f5a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe38145a0974a42f8f1ae33e469363874eacb9fba` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe63dfbd304cc6fe47e7c263fd9631631821f26cc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe7313f025167f5c22af8aa5a3b03eab215350a95` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe8615b3549e69a274bc311429efd8daba8d0a6d6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xeae1040fba00d7907ba97e85acf8cf122ddaabaa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xef085d64ddc05d5b0a372792cac5e0573dbbcea1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf08413857af2cfbb6edb69a92475cc27ea51453b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf2858f778656b181c1b1628dd17ed82b74890f16` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf29754a856798af118317a26dca23337aaa1b7f6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf2e90116e9436b8ecc78fc5f8ec60dd90ff7b120` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf3022ee1a5da06a3b1efa1062074b710dd570130` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf5b6cc236ff06ff9681a761a869da61c7564925f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf726dfcf71eccf6462ff533ac3ba32819fc85b94` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfaad658bf2614c00369592df2ea0bd6ba168402c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfab311fe3e3be4bb3fed77257ee294fb22fa888b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xfe554406879023921c69bb4c5d07622247ee7c15` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 59 deployments: fantom `0x07378e3b1fc43f7a37630c739a2f29f5b2442e60`; fantom `0x17fa9da6e01ad59513707f92033a6eb03ccb10b4`; fantom `0x180da8bd91406dd41f18b6200c53deb553f86180`; fantom `0x1a05eb736873485655f29a37def8a0aa87f5a447`; fantom `0x1c065b52c73d791951572e343b21b5f476d303fa`; fantom `0x1f7a12b40bfc8e8561008bc2ca1fbdc71a36d0e8`; fantom `0x2aa07920e4ecb4ea8c801d9dfece63875623b285`; fantom `0x2b52294425a9a229322228de659ede9d146d7c2f`; fantom `0x3045119766352ff250b3d45312bd0973cbf7235a`; fantom `0x30f45defbbce0030ee14f9e08d36102115e5ce3b`; fantom `0x33da53f731458d6bc970b0c5fcbb0b3db4aaa470`; fantom `0x3e8b14b5534333a2b83a31d778ec3bcd9dc946f4`; fantom `0x3fd3a0c85b70754efc07ac9ac0cbbdce664865a6`; fantom `0x4bebeb8188aef8287f9a7d1e4f01d76cbe060d5b`; fantom `0x4bfb3993733b13bba2376e56f9d7ffaf56e047cf`; fantom `0x4c29682a07c50dd5f6bdf36eb97fb28f5c1681e3`; fantom `0x547db6759b0af9e050855106993e3cefc16e937e`; fantom `0x58be1f04029ffdccbd34919fe0118cd207d746b0`; fantom `0x5b3220cb732245ffe8e26df228ac93feb685c157`; fantom `0x5d4589bba42df0c53bbcb7ec59160de64b9d4308`; fantom `0x687dad08623c88452a5deb3a4482c979fa3f571e`; fantom `0x6bd73537da943723124c2a50f0f95557f4acc9a2`; fantom `0x6ef2fa893319db4a06e864d1dee17a90fcc34130`; fantom `0x7635cd591cfe965be8bec60da6ea69b6dcd27e4b`; fantom `0x777928f0b5f9066a14f7317d57e660f1d754cad8`; fantom `0x79c26d7ac184bb9c453b996475f484668e516de5`; fantom `0x7ba9b16586593a0cae883c9873b114e16f69eb6a`; fantom `0x7ca1dccfb4f49564b8f13e18a67747fd428f1c40`; fantom `0x8313f3551c4d3984ffbadfb42f780d0c8763ce94`; fantom `0x85e7f59248d1c52bd635f27518333f75fb80c72d`; fantom `0x88171375f6236885f463341d001b419d477edb74`; fantom `0x8b3e5efaa3ea8e875112c6464218c28db8f0b4d9`; fantom `0x8f02357cb55dbad26df5a7558cd810d5d0f05f43`; fantom `0x8f6666bd81c4811f433b8232a1c7d4383f11b2dc`; fantom `0x93b97347722b8a0d21b0dddf79ae1c85c05041f8`; fantom `0x97a7b2f95fda7181da16aec3072cd55a58d85073`; fantom `0x9b500c0a544b870d9c4c441147dcaef599e542e7`; fantom `0x9e4105f9e2284532474f69e65680e440f4c91cb8`; fantom `0xa83f31af44e812d2edf0536516e7d274cd7301b8`; fantom `0xaec6d3e4d319cdc6553f0379e4ff9001d022bea9`; fantom `0xb6dfc39b3270f059f32eb9d680d994cdecfad93f`; fantom `0xb80a72281c76464cc0e1fbf2431a897393e0d757`; fantom `0xbf4bfeb838de95d64726d55dfae5295b3dfb4b4b`; fantom `0xbf65ca2747a1eeebf8a1b0d119de8be0540c57cb`; fantom `0xc6366efd0af1d09171fe0ebf32c7943bb310832a`; fantom `0xc701e92db1ef14ab64f66f18536b1e07678db678`; fantom `0xc8be3d680e31187a94b47119c5b2b095ce2be578`; fantom `0xcc6169aa1e879d3a4227536671f85afdb2d23fad`; fantom `0xcc82bff654433c5674945c10ab0808863d4c8c48`; fantom `0xd311fd89e8403c2e90593457543e99cecc70d511`; fantom `0xddd9845ba0d8f38d3045f804f67a1a8b9a528fcc`; fantom `0xddf26b42c1d903de8962d3f79a74a501420d5f19`; fantom `0xe3d1a117df7dcac2eb0ac8219341bad92f18dac1`; fantom `0xe4ba08712c404042b8eefc3fdf3b603c977500df`; fantom `0xe6da85feb3b4e0d6aed95c41a125fba859bb9d24`; fantom `0xe8ca91bae8aa0e9229f6e78f8976b837134b60e8`; fantom `0xf2bfb9ca6e21b30034b9d56cb4735d2c180cc7e1`; fantom `0xf5b7181877feab982a4b49a99e84bb7cbebeff98`; fantom `0xfb0c0ce1d43b373b7535ef556e1d55d285156887` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x01d5505ff29871afdca8984e7e95f0e943f34072` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d153abe762083b507329618969b8f34c9136dd8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1633670d2ae6ebe5ff7d9d9c24a8c59b617e4884` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x165f11f698fd7765cff7cc92989e872e511bb977` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x16e3ca4d54db5d8cbd070c1743043a9a7b19ff3f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20cfe3733db39d9c1cdefd6b6fe5186c74b8f448` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x24584bb7ca5274c78cbbaa21138f8dc1e813189a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2dcc87751fff3e250a4dd0037991653472bffa64` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x30e118c1a6f1c83b4fab64f6a6c9150f0b2f480c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x30f45defbbce0030ee14f9e08d36102115e5ce3b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3979d8149099b98cde35e08722f05dc477f55b97` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x39cc1c9691a2d6bef97db057bc09039869f17536` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f0458ffb6d106d2f5cdec9cedc9054a69275489` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f34e0fd8dac50868ccb28eb2042f11e687886c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f73079e99244b15fb7fa9a2bef2e3a1eb9926e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4046c4a45b0472fbce61965c7b84e05fe90a40c4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x480a9864f941804a8d8b0f3e3c6660097954fbdc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4bcb116341b0de791a0105e6caebb93b9b12aaf9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4d0c30815893b381558a91a8dd889552aa6e2cda` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5023217a94416ddb2aa4fbf00b4fd24cbf56f04c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x547db6759b0af9e050855106993e3cefc16e937e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x548551b86edce0614d6d77f3f3829b049d730813` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x54967f6e63a5cadb35f5a713be82a8fab80c67ce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6693bc4d757bd1b625f1f429d2c3045da44e416d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x68a5d249d9ac9a6404eb816285e61d980df1299f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x68ea7c60f14c7faac59dbb546836237afd0eb023` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6bd73537da943723124c2a50f0f95557f4acc9a2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6c60189e1fec8fdbd950873898561aa696d20945` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x771a9923422a9f3538ee5606a3404f384395a170` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7898a099b61fdecd83a26f4006812ef04e0ceb08` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x861fe22b721602954d34f2e4a5843e6a295811c7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8b759517f13337e351e0e715d5fa7de2c5c4388d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ddd725a8a8666c4166879e45c8704d60df6c60d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x931389186c11eb3e9dc3fe388b2291ea80327bb7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x93b25ca96088e09ebb85ac979f087a899c891738` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x94ea6664805a871201f8716e5a54262466acdb59` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x97dd08a563ae4af9c39c0c9cb294fab76ca1f55a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9b500c0a544b870d9c4c441147dcaef599e542e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9d88ac7c10826b377e28b61f9ef11d07b7c58612` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa2a6a1a0543fa8752f6f5b52478df7fac5916298` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb5aed208a908bbad4cd8e4308a8ef9e69e644127` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe83cd6c533c6048554871e7e84a713fc75f9876` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbed5a253797e9be02ed5433c49f65eb4342fc3ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcc1eff4e5f1b82a96179b9044e93e142285fee93` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd45f5dc2adf3b3a35a00d8b4e51b2b4afffccf9b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd467b1bb20e9c5569ad8bc91d2236a8ceb574075` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe4ba08712c404042b8eefc3fdf3b603c977500df` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xee52637ecc95f3d20c67b6e26c986add50fdfa9d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf024aa99d33e3818c0248302eb9c286af67e779b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf3e31b7e8f9ba4bca8aa81ff63052d97b6a8bda9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf4f5af3502916314ec17ebc813fd33f5bd29c986` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x0d4e88ea618bb5b4bc7f143bd16e4b5640212967`](./contracts/sonic-146/0x0d4e88ea618bb5b4bc7f143bd16e4b5640212967/) | BeaconProxyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xe79ea8606577fc1a846013e23ff2532919f75f51`](./contracts/sonic-146/0xe79ea8606577fc1a846013e23ff2532919f75f51/) | Burner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x17b9b0d1d64a26e9380289600231f18e37fe24eb`](./contracts/base-8453/0x17b9b0d1d64a26e9380289600231f18e37fe24eb/) | ElitenessERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x8de568691a1a6356b46418fdc12e1694a1ba1e22`](./contracts/sonic-146/0x8de568691a1a6356b46418fdc12e1694a1ba1e22/) | elitenessERC4626 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x11cfb329caaca6d7da69734d10c7ec70afd75240`](./contracts/sonic-146/0x11cfb329caaca6d7da69734d10c7ec70afd75240/) | ElitenessFarmland | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x22cfb3161076a2bf472627127271747d2968893f`](./contracts/sonic-146/0x22cfb3161076a2bf472627127271747d2968893f/) | eliteRingsManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb212f32270177c820330fe1e9493ec00ceab5442`](./contracts/base-8453/0xb212f32270177c820330fe1e9493ec00ceab5442/) | eLOCK | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa9a3e305955bc462768483249e785c5e5a0d6a6a`](./contracts/base-8453/0xa9a3e305955bc462768483249e785c5e5a0d6a6a/) | eLOCKS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1613ab1a7cbd35ce942beb6ae857444d78f58bef`](./contracts/base-8453/0x1613ab1a7cbd35ce942beb6ae857444d78f58bef/) | ElToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7f142a18f1b476809c4994c63811fef4afd14134`](./contracts/sonic-146/0x7f142a18f1b476809c4994c63811fef4afd14134/) | elTokenZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xdf486980df72446a5eff76263efb2fa9391be136`](./contracts/base-8453/0xdf486980df72446a5eff76263efb2fa9391be136/) | Equal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x10b1df11a6834ac8afe6efa654fc8c8396e47d10`](./contracts/base-8453/0x10b1df11a6834ac8afe6efa654fc8c8396e47d10/) | EqualizerLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x807c19badabc848336fe0379bd659e4e4608542d`](./contracts/sonic-146/0x807c19badabc848336fe0379bd659e4e4608542d/) | fBOMB | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x11b3dc196ce5195e0ab82052cb9dfd468da1218e`](./contracts/base-8453/0x11b3dc196ce5195e0ab82052cb9dfd468da1218e/) | FeeSynthesizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5126cbc2597681cdc7c648dd74b19fb12f77dc30`](./contracts/sonic-146/0x5126cbc2597681cdc7c648dd74b19fb12f77dc30/) | FeeTierManager_2Thick | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7b7faf5f614f8c13f80a8775b61d1c22f48ebd27`](./contracts/base-8453/0x7b7faf5f614f8c13f80a8775b61d1c22f48ebd27/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb136b45e3e241bb0d0c037395446cf42e4db13d6`](./contracts/base-8453/0xb136b45e3e241bb0d0c037395446cf42e4db13d6/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xc7d31877e3b1d55ff48a6e3dcfa846fa3e00d083`](./contracts/sonic-146/0xc7d31877e3b1d55ff48a6e3dcfa846fa3e00d083/) | impermaxBorrowableERC4626Wrapper | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x41c4d6e7d3ea574bc1c8b2b34544cb2e3789a7e4`](./contracts/base-8453/0x41c4d6e7d3ea574bc1c8b2b34544cb2e3789a7e4/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x990d2cd2b095fd57d532cf12d9f58dbe3e7fab3b`](./contracts/sonic-146/0x990d2cd2b095fd57d532cf12d9f58dbe3e7fab3b/) | MultiNotify | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x608469806c0845dd9fa1568480c34c2c68baa077`](./contracts/sonic-146/0x608469806c0845dd9fa1568480c34c2c68baa077/) | multiNotifyEqualToEltokenGauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x00a76d63cf6a514f1f9038a5afd7fb5b29df1306`](./contracts/sonic-146/0x00a76d63cf6a514f1f9038a5afd7fb5b29df1306/) | NFP_Staker | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x97a7b2f95fda7181da16aec3072cd55a58d85073`](./contracts/base-8453/0x97a7b2f95fda7181da16aec3072cd55a58d85073/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2b52294425a9a229322228de659ede9d146d7c2f`](./contracts/base-8453/0x2b52294425a9a229322228de659ede9d146d7c2f/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x83240b049fa89b65be714aed68e5b074df6aac84`](./contracts/base-8453/0x83240b049fa89b65be714aed68e5b074df6aac84/) | Pair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x39cc812e698a61f1883f7b9dba54159aa7b1d91c`](./contracts/base-8453/0x39cc812e698a61f1883f7b9dba54159aa7b1d91c/) | PairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02c32e0a34ab6fa5825565254f79c8c690d98666`](./contracts/base-8453/0x02c32e0a34ab6fa5825565254f79c8c690d98666/) | PriceGuru | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x8eb10eb24d258f832f0d6603544b7ab794ebfa10`](./contracts/sonic-146/0x8eb10eb24d258f832f0d6603544b7ab794ebfa10/) | ProxyAdmin4 | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc701e92db1ef14ab64f66f18536b1e07678db678`](./contracts/base-8453/0xc701e92db1ef14ab64f66f18536b1e07678db678/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7635cd591cfe965be8bec60da6ea69b6dcd27e4b`](./contracts/sonic-146/0x7635cd591cfe965be8bec60da6ea69b6dcd27e4b/) | Router02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xcc6169aa1e879d3a4227536671f85afdb2d23fad`](./contracts/sonic-146/0xcc6169aa1e879d3a4227536671f85afdb2d23fad/) | Router03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0d809fc015810ce75aa1c939c28e1355ad789048`](./contracts/sonic-146/0x0d809fc015810ce75aa1c939c28e1355ad789048/) | sAMM_Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x659aa8d33caaba3e178551af4e439f99dd12b9e9`](./contracts/base-8453/0x659aa8d33caaba3e178551af4e439f99dd12b9e9/) | Scalepounder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2f87bf58d5a9b2efade55cdbd46153a0902be6fa`](./contracts/base-8453/0x2f87bf58d5a9b2efade55cdbd46153a0902be6fa/) | ScaleRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6411350def83147130b26c1e90dc7afbbb66e9bb`](./contracts/base-8453/0x6411350def83147130b26c1e90dc7afbbb66e9bb/) | SolidlyExtendedRouter03 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x25374db31147061cac658af137c4231ac77a1af9`](./contracts/sonic-146/0x25374db31147061cac658af137c4231ac77a1af9/) | SSR2Thick_Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0225664e04b25a1eb71a7ad0b93c9aa6ec3c74a0`](./contracts/base-8453/0x0225664e04b25a1eb71a7ad0b93c9aa6ec3c74a0/) | SuperVoter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1f7a12b40bfc8e8561008bc2ca1fbdc71a36d0e8`](./contracts/base-8453/0x1f7a12b40bfc8e8561008bc2ca1fbdc71a36d0e8/) | SwapRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02c88d4067988a0981ffd0bd0c34a6a2ed3ad6df`](./contracts/base-8453/0x02c88d4067988a0981ffd0bd0c34a6a2ed3ad6df/) | ThickALMGaugeEquivalentFarmland | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb80a72281c76464cc0e1fbf2431a897393e0d757`](./contracts/base-8453/0xb80a72281c76464cc0e1fbf2431a897393e0d757/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7b54dfec0d532808d23cc24e0035d74557e46f75`](./contracts/base-8453/0x7b54dfec0d532808d23cc24e0035d74557e46f75/) | TvlGuru_ThickALM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9a949959057fbbdf1be20b489ceea51994fa59c9`](./contracts/base-8453/0x9a949959057fbbdf1be20b489ceea51994fa59c9/) | TvlGuru_ThickThickALM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1ff98b4236c11f3fd2716ff81d5c509dc1074f7e`](./contracts/sonic-146/0x1ff98b4236c11f3fd2716ff81d5c509dc1074f7e/) | TvlGuru_v21 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x050b424b074ae99a8c4fd176aad21fafa8d4e842`](./contracts/base-8453/0x050b424b074ae99a8c4fd176aad21fafa8d4e842/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x46abb88ae1f2a35ea559925d99fdc5441b592687`](./contracts/base-8453/0x46abb88ae1f2a35ea559925d99fdc5441b592687/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3ce7ba8ad19fe33ae2ce20a4cc1b0d91c5053549`](./contracts/base-8453/0x3ce7ba8ad19fe33ae2ce20a4cc1b0d91c5053549/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xe41b49a03b367ecb41f834801c7f1922d8587eae`](./contracts/sonic-146/0xe41b49a03b367ecb41f834801c7f1922d8587eae/) | weightedMultiTokenBalance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 47 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 175 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
