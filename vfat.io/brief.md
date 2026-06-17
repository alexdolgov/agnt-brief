# Agentic Audit Brief: vfat.io

## Project Overview

- Project: vfat.io (`vfat.io`)
- Website: [https://vfat.io/yield](https://vfat.io/yield)
- Lifecycle: active (Tier 0, 68.8% below peak)
- Generated: 2026-06-17T07:00:52.823Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, avalanche, base, ethereum, fantom, fraxtal, ink, linea, mantle, mode, optimism, polygon, sonic, unichain
- Contract surface: 355 unique implementations (1817 raw deployments)
- DeFi Llama TVL: $26,853,909.95
- On-chain TVL (included contracts): $0.00
- TVL by chain: Base $0.00

## Project Description

vfat.io is a multi-chain yield aggregator built around the Sickle self-custodial smart-contract-wallet model. It helps users batch and automate yield-farming actions such as concentrated liquidity management, staking, and reward claiming across decentralized exchanges and chains, while users retain self-custody rather than depositing into a custodial vault-like strategy.

### Architecture

The protocol uses SickleFactory to deploy user-specific Sickle contracts that interact with MasterChefV3 staking, NonfungiblePositionManager for liquidity management, and Gauge/Voter systems for reward distribution. Supporting registries and fee libraries provide configuration and fee handling across all core operations.

## Contract Surface Quality

- Indexed contracts: 3354; live-surface contracts included: 1817 (930 live, 887 unknown).
- Excluded by liveness: 1501 inactive, 36 singleton, 0 uninitialized.
- Deployment units: 10/38 live.
- Detected codebases: compound-v2, uniswap-v2, uniswap-v3
- Unverified dependencies: 33/369.

## Audit Coverage Summary

- Verified implementations audited: 27/208 (13.0%)
- Verified + Unaudited implementations: 174
- Verified by bytecode match: 14
- Unverified implementations: 147
- Unique implementations: 355
- Raw deployments: 1817
- Audits discovered: 10
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Staleness: 1 fresh, 4 aging, 5 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Ackee Blockchain | Tier 2 | 24 | 11.5% | 2025-06 |
| Omniscia | Tier 2 | 4 | 1.9% | 2025-04 |

## Contract Surface

### ✅ Verified + Audited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| NftFarmStrategy | core_logic | polygon | n/a | 82 deployments: ethereum `0x26d774...1578d7`; ethereum `0x7d98c3...a474fc`; ethereum `0x97f021...7dbc2d`; ethereum `0x9f5bd7...4fc99a`; ethereum `0xdb5098...cf2018`; optimism `0x10bd16...9fa0f5`; optimism `0x6ba6ec...1f9253`; optimism `0x7dae2c...cb27f5`; optimism `0xcc0b08...ee50f9`; optimism `0xd719f5...db7faa`; optimism `0xe09c92...9bea3a`; unichain `0x1c5a06...e0b142`; unichain `0x7671cb...692171`; polygon [`0x04a606...9e51e7`](./contracts/polygon-137/0x04a606605f3d0d1d4781a12fca38fd7aea9e51e7/); polygon `0x059571...3b74c1`; polygon `0x125caf...4cb45e`; polygon `0x588be0...098b19`; polygon `0xa452df...3bd7c4`; polygon `0xb9e443...e75bc2`; polygon `0xf3442b...56d204`; sonic `0x05a651...071427`; sonic `0x0efadd...1542d5`; sonic `0x83d50c...652fe7`; sonic `0x9b14c4...b3f557`; sonic `0xa05a9e...3a8788`; fraxtal `0x06b559...4d59b5`; fraxtal `0x7671cb...692171`; fraxtal `0x8145e2...329e98`; fraxtal `0x942867...0e74d3`; fraxtal `0xb71907...3cb72c`; fraxtal `0xfc4c50...cd564b`; mantle `0x2f480c...171d1a`; mantle `0x4c0639...7bbb07`; mantle `0xfea81b...f4a0e4`; base `0x0d980d...8c7ea4`; base `0x1cf744...94e5fd`; base `0x1dcdbd...dca4dd`; base `0x264351...ab0b2c`; base `0x3b8886...01e1f3`; base `0x40bd94...78d34c`; base `0x5bb77d...da3312`; base `0x7d98c3...a474fc`; base `0x9699be...36eb45`; base `0x9774e2...a4f3ea`; base `0xbd6946...513156`; base `0xcb9613...283991`; base `0xd51a36...7fcc97`; base `0xd62b33...e36179`; base `0xd826da...b050ea`; base `0xe884ef...6e592c`; base `0xe9bb60...939825`; base `0xea4b92...d349b1`; base `0xf6a107...1b7a30`; mode `0x13c59e...125089`; mode `0x296b3f...e2d03c`; mode `0x588be0...098b19`; mode `0x7d0611...17d094`; mode `0xb3dc04...325ee1`; mode `0xde181c...2284f4`; mode `0xfc4c50...cd564b`; arbitrum `0x326e67...a581a8`; arbitrum `0x4394a4...96dde1`; arbitrum `0x478ec7...a57103`; arbitrum `0x514142...91b862`; arbitrum `0x5acb2e...14715c`; arbitrum `0x606448...c0721e`; arbitrum `0x6eedd0...1a8ce5`; arbitrum `0x76fb09...5dd487`; arbitrum `0x8145e2...329e98`; arbitrum `0x9d70b9...ab7f95`; arbitrum `0xd1095a...a46924`; arbitrum `0xe9eb1a...1d9e44`; arbitrum `0xef5497...3854ac`; arbitrum `0xfb903b...7365c8`; avalanche `0x0bf0f9...949d53`; avalanche `0x2e075e...fbed44`; avalanche `0xab2ee5...3518be`; linea `0x481d6b...00ea35`; linea `0x5a72c0...128a04`; linea `0xd1095a...a46924`; linea `0xd248aa...4f2fa0`; linea `0xd3926a...bcef31` | ✅ Audited |
| FarmStrategy | core_logic | arbitrum | n/a | 76 deployments: ethereum `0x0e1044...3bc311`; ethereum `0x45d00b...b928fd`; ethereum `0x5a72c0...128a04`; ethereum `0x75d57c...d59a16`; ethereum `0xd95b78...7e9303`; optimism `0x115a16...0264c0`; optimism `0x5266e1...e4e6b8`; optimism `0x59a1c3...4063a0`; optimism `0xa1016b...1c702f`; optimism `0xe8f960...ca2a43`; polygon `0x5a2516...05cd3e`; polygon `0x85378f...e4d7c2`; polygon `0x8bc182...60466e`; polygon `0xbd89f4...a9bfb8`; polygon `0xd34d13...878dd2`; polygon `0xde3f58...23165d`; polygon `0xf7e60d...5bd4e9`; sonic `0x923021...70f2f0`; sonic `0xa697ca...0bc8d8`; sonic `0xbd6946...513156`; sonic `0xc49775...4bdfed`; sonic `0xdd4dc3...44dfff`; fraxtal `0x0ecda5...7409b6`; fraxtal `0x528970...cd7ad7`; fraxtal `0x84676e...136f8a`; fraxtal `0x8cf93e...5fdcc0`; fraxtal `0xa2dc70...673d80`; mantle `0x13c59e...125089`; mantle `0x353868...ad7d97`; mantle `0x4ab9eb...ebe8f7`; base `0x1000ed...c9d072`; base `0x13c59e...125089`; base `0x172ec7...13c0b7`; base `0x190915...842b12`; base `0x1c5a06...e0b142`; base `0x2eb61c...7b0427`; base `0x3078d8...eb9539`; base `0x38d346...8f3ef0`; base `0x3ebf49...bbf875`; base `0x481d6b...00ea35`; base `0x49da01...018c92`; base `0x4b516a...751023`; base `0x4f025a...f5a5fd`; base `0x568bd0...76fc02`; base `0x5a72c0...128a04`; base `0x5ce80a...6c2b60`; base `0x691757...58437a`; base `0x991ce3...a88581`; base `0xbb5954...0c8dbb`; base `0xbf325b...999556`; base `0xcc6197...756a98`; base `0xd65eaf...53773d`; mode `0x0eb29e...ddb08a`; mode `0x400b2d...bba104`; mode `0x629d5c...e92262`; mode `0xc49068...586d19`; arbitrum [`0x06b559...4d59b5`](./contracts/arbitrum-42161/0x06b559fef135ed5c9133478a2af502d8d44d59b5/); arbitrum `0x152a4f...bdf01c`; arbitrum `0x19ff84...631cd8`; arbitrum `0x1d74f7...628725`; arbitrum `0x1e2bc5...612f72`; arbitrum `0x372e77...2c5083`; arbitrum `0x400b2d...bba104`; arbitrum `0x588be0...098b19`; arbitrum `0xb4c31b...fba1e8`; arbitrum `0xb61c56...89bf86`; arbitrum `0xbeac74...f9c460`; arbitrum `0xcf82a6...51d508`; arbitrum `0xe56938...4624e9`; avalanche `0x545229...c1e7f9`; avalanche `0xab434e...9a24fc`; avalanche `0xded5c1...ed9938`; linea `0x1e2bc5...612f72`; linea `0x9a61e1...1a6150`; linea `0xb7b53a...d8b8a8`; linea `0xe953ca...40e09b` | ✅ Audited |
| ConnectorRegistry | registry | arbitrum | n/a | 21 deployments: unichain `0x4f8833...e71780`; polygon `0xb4c31b...fba1e8`; polygon `0xc6013e...489c99`; base `0x2cd467...8da825`; base `0x53e205...221faf`; base `0x606448...c0721e`; base `0x69478d...5afcfd`; base `0x8cf93e...5fdcc0`; base `0xa260cd...c53a8c`; base `0xa452df...3bd7c4`; base `0xac7b97...fe9fce`; base `0xb7b53a...d8b8a8`; base `0xc49068...586d19`; base `0xe232e5...1eac7b`; base `0xe2defb...911777`; arbitrum [`0x07d5a8...787104`](./contracts/arbitrum-42161/0x07d5a8f936250b453c520a64d0b119d581787104/); arbitrum `0x3575aa...9622e6`; arbitrum `0x84676e...136f8a`; arbitrum `0xac371d...d851b5`; arbitrum `0xbfc621...2e3401`; arbitrum `0xf3442b...56d204` | ✅ Audited |
| FeesLib | unknown | arbitrum | n/a | 20 deployments: polygon `0x462929...806c2d`; polygon `0x8312be...0cda0c`; polygon `0xa05a9e...3a8788`; fraxtal `0x7b22cc...f70ba6`; base `0x0b6621...afc66b`; base `0x0f6abc...9c81a3`; base `0x19a2dd...3388de`; base `0x50f3c6...6f493f`; base `0x514142...91b862`; base `0x66d5e0...25636b`; base `0x6a7bbf...7de5cf`; base `0xaf0ee4...2622b6`; base `0xea895d...e168ff`; mode `0xd458fc...c2f268`; mode `0xdf70bb...316916`; arbitrum [`0x08f0f1...f99e9c`](./contracts/arbitrum-42161/0x08f0f10ef017cc57d2af1e1c2365807bdff99e9c/); arbitrum `0x61d7f5...7527e2`; arbitrum `0x64f435...7403ce`; arbitrum `0xb60ab0...9a0d76`; arbitrum `0xdf70bb...316916` | ✅ Audited |
| MasterChefV3 | unknown | base | unit-32005 | [`0xc6a2db...8665a3`](./contracts/base-8453/0xc6a2db661d5a5690172d8eb0a7dea2d3008665a3/) | ✅ Audited |
| MasterChefV3 | unknown | arbitrum | unit-32009 | [`0x5e09ac...daa694`](./contracts/arbitrum-42161/0x5e09acf80c0296740ec5d6f643005a4ef8daa694/) | ✅ Audited |
| MasterChefV3 | unknown | linea | n/a | [`0x22e2f2...b55c57`](./contracts/linea-59144/0x22e2f236065b780fa33ec8c4e58b99ebc8b55c57/) | ✅ Audited |
| MultiFarmStrategy | core_logic | base | n/a | 45 deployments: ethereum `0x4de78f...b65582`; ethereum `0x96613d...9a2a8d`; ethereum `0x9a8338...6034f0`; ethereum `0xd621f3...bc735a`; optimism `0x4af712...adeefc`; optimism `0x6b132b...38c1b9`; optimism `0xbe2c2b...04925e`; optimism `0xf3f4c7...49fba1`; unichain `0x5c2866...7e6407`; polygon `0x478ec7...a57103`; polygon `0x4f025a...f5a5fd`; polygon `0x7d055e...a36700`; polygon `0xaf0ee4...2622b6`; polygon `0xf1ce0e...a4a0a7`; sonic `0xb5c190...79cc26`; sonic `0xe54f0f...777567`; sonic `0xf0b9f5...8610d3`; fraxtal `0x43b203...0f988d`; fraxtal `0x529048...4d665f`; fraxtal `0x64dab1...9a4641`; fraxtal `0xef5497...3854ac`; mantle `0x5c204b...fa7bb2`; mantle `0xd6b71d...4f5a5b`; mantle `0xff638d...3d9452`; base [`0x01e0ae...10e0c4`](./contracts/base-8453/0x01e0ae96ca5fa70279a79de4a0dc4cf86110e0c4/); base `0x0ce036...1c48e2`; base `0x4eec42...409d2c`; base `0x5cdd49...3a1c0f`; base `0x69b596...fce086`; base `0x7bb5af...900bc4`; base `0x8064a9...26a4df`; mode `0x40bd94...78d34c`; mode `0xd6b71d...4f5a5b`; mode `0xdf015f...968ac0`; arbitrum `0x1c5a06...e0b142`; arbitrum `0x310f87...ff028a`; arbitrum `0x5a1b74...e7889b`; arbitrum `0x5ce9c2...851cdf`; arbitrum `0x7fcd85...ecce87`; arbitrum `0xe21f25...9005cc`; avalanche `0x0eb29e...ddb08a`; avalanche `0x80de12...9af730`; linea `0x310f87...ff028a`; linea `0x5d0101...de7967`; linea `0xbb478c...38fd10` | ✅ Audited |
| NftSettingsLib | token | polygon | n/a | 8 deployments: polygon [`0x0f592f...0fe04f`](./contracts/polygon-137/0x0f592f2ee1779fa7d81a8482f4cc6d216a0fe04f/); polygon `0x142e69...c7f2ae`; base `0x7e8050...25c6e3`; base `0xb7641a...de7cf0`; base `0xfb25ec...df38c8`; arbitrum `0x4f025a...f5a5fd`; arbitrum `0x528970...cd7ad7`; arbitrum `0xf8d2b5...f980cb` | ✅ Audited |
| NftTransferLib | token | polygon | n/a | 5 deployments: polygon [`0x188f3b...30c943`](./contracts/polygon-137/0x188f3b2b1c40e3bc77bc0993c6c951ce4030c943/); polygon `0x6580ba...7a763a`; base `0x540c02...40a0ae`; base `0x758230...0e85ab`; arbitrum `0x8cf93e...5fdcc0` | ✅ Audited |
| NftZapLib | adapter | base | n/a | 18 deployments: ethereum `0xdf103a...7c8831`; optimism `0xc2baa0...c54ece`; unichain `0x763844...48147a`; polygon `0x152a4f...bdf01c`; polygon `0xa697ca...0bc8d8`; polygon `0xc3fbe1...d5c069`; sonic `0xa6864e...786099`; fraxtal `0x763844...48147a`; mantle `0x568bd0...76fc02`; base [`0x0cc462...cef977`](./contracts/base-8453/0x0cc462c7e86ee484e640ab298fb63dbcaacef977/); base `0x7ca3f5...152d36`; base `0xd1b321...8d249f`; mode `0x5b8ee3...ea8715`; arbitrum `0x49606f...d4890d`; arbitrum `0xe4cdcb...9af07c`; arbitrum `0xe6edb7...345bae`; avalanche `0x17b36a...077b68`; linea `0x4dd790...c7d224` | ✅ Audited |
| PositionSettingsLib | unknown | polygon | n/a | 7 deployments: polygon [`0x04448e...da74fa`](./contracts/polygon-137/0x04448ed523730142b1eaf647123d9029e8da74fa/); polygon `0xeb68b3...f0534e`; base `0x4ecbaf...986462`; base `0xbe2c2b...04925e`; mode `0xef5497...3854ac`; arbitrum `0x67e80f...9862cd`; arbitrum `0xea895d...e168ff` | ✅ Audited |
| PositionSettingsRegistry | registry | polygon | n/a | 16 deployments: ethereum `0x93c4dc...e9ff53`; ethereum `0xa92424...1b039f`; optimism `0x06e702...f7d142`; optimism `0x91105e...9f29fb`; polygon [`0x024273...36e46c`](./contracts/polygon-137/0x02427335676a5bef943eb20b73caaae08936e46c/); polygon `0x60d334...d17698`; sonic `0x8145e2...329e98`; fraxtal `0x23eb5c...7ade3b`; mantle `0xab2ee5...3518be`; base `0x9a961b...078901`; base `0xc069fc...9231fd`; mode `0xf8d2b5...f980cb`; arbitrum `0x3508a7...983596`; arbitrum `0x7affad...181fe2`; avalanche `0x09fadb...380d4d`; linea `0x85e28f...c12aac` | ✅ Audited |
| SickleFactory | registry | linea | n/a | 19 deployments: ethereum `0x9d70b9...ab7f95`; ethereum `0xf0adad...140fd4`; optimism `0x2fb3eb...a82372`; optimism `0xb4c31b...fba1e8`; polygon `0x233d90...567168`; polygon `0xac371d...d851b5`; sonic `0x53d978...cd5fdf`; fraxtal `0x53d978...cd5fdf`; mantle `0xb4c31b...fba1e8`; base `0x266ebc...74e012`; base `0x4394a4...96dde1`; base `0x53d978...cd5fdf`; base `0x8bc182...60466e`; base `0xb01e43...06e08d`; base `0xc0c3e0...d412b7`; base `0xde181c...2284f4`; mode `0x53d978...cd5fdf`; avalanche `0x53d978...cd5fdf`; linea [`0x0f6abc...9c81a3`](./contracts/linea-59144/0x0f6abc6b808b377d6aed8da1fad5e135c99c81a3/) | ✅ Audited |
| SickleMultisig | governance | linea | n/a | 23 deployments: ethereum `0x5cdd49...3a1c0f`; ethereum `0x663e63...0f34e6`; optimism `0x81d34d...f73c4f`; optimism `0xa052d8...eef4be`; unichain `0xff8444...14460d`; polygon `0x5e57c1...c1ac84`; polygon `0xa77d2d...7f2823`; sonic `0x0eb29e...ddb08a`; fraxtal `0x6eedd0...1a8ce5`; mantle `0x23e5d9...4cfa4c`; base `0x51df68...016f74`; base `0x7dd4f0...1b888f`; base `0xad2efd...109fdf`; base `0xcc0b08...ee50f9`; mode `0xe4db0c...700d8f`; arbitrum `0x23eb5c...7ade3b`; arbitrum `0x3bf1a3...23a10b`; arbitrum `0x57732e...2aa00c`; arbitrum `0x991ce3...a88581`; arbitrum `0xa2dc70...673d80`; avalanche `0x5ce9c2...851cdf`; linea [`0x099894...73a8c1`](./contracts/linea-59144/0x0998943d5caec304658b7af3b4367e134c73a8c1/); linea `0xee49aa...3cb580` | ✅ Audited |
| SickleRegistry | registry | base | n/a | 12 deployments: polygon `0x23eb5c...7ade3b`; polygon `0x53d978...cd5fdf`; base [`0x0f592f...0fe04f`](./contracts/base-8453/0x0f592f2ee1779fa7d81a8482f4cc6d216a0fe04f/); base `0x2eaf44...940dab`; base `0x2ef5ea...f2ecf3`; base `0x372e77...2c5083`; base `0x528970...cd7ad7`; base `0xad4dd7...d5864b`; base `0xb9e443...e75bc2`; base `0xbfc621...2e3401`; base `0xdf70bb...316916`; arbitrum `0x2eaf44...940dab` | ✅ Audited |
| SwapLib | unknown | base | n/a | 22 deployments: ethereum `0x985a6a...9d32c0`; optimism `0x7881a6...b2cc9e`; unichain `0xb7ef14...e373ac`; polygon `0x2083a6...47a463`; polygon `0x9fad68...0f710a`; polygon `0xad4dd7...d5864b`; sonic `0x3e8c81...3da755`; fraxtal `0xb7ef14...e373ac`; mantle `0x8940e0...22025f`; base [`0x1d74f7...628725`](./contracts/base-8453/0x1d74f74918b7feef697dcd7346d60f0f06628725/); base `0x8157a9...007b5d`; base `0xa6671e...1fd614`; base `0xe25a13...ae4746`; mode `0x2f480c...171d1a`; mode `0xe56938...4624e9`; mode `0xf1ce0e...a4a0a7`; arbitrum `0x3949a9...5b632e`; arbitrum `0x463353...4cc8b6`; arbitrum `0x72b10d...7bef2e`; arbitrum `0xaf18c0...fba18b`; avalanche `0x8e10b7...7c1a13`; linea `0xe54f0f...777567` | ✅ Audited |
| TransferLib | unknown | avalanche | n/a | 24 deployments: ethereum `0x80de12...9af730`; optimism `0x3f4cc0...777065`; unichain `0x8bc182...60466e`; polygon `0x0626bd...10298b`; polygon `0x955198...13682d`; polygon `0xb61643...030262`; polygon `0xd290f6...212691`; sonic `0x481d6b...00ea35`; fraxtal `0x797683...9b4c9e`; fraxtal `0xc0c3e0...d412b7`; mantle `0xc49068...586d19`; base `0x326e67...a581a8`; base `0x7647f0...6beaa5`; base `0xa60ca9...c199d5`; base `0xd3e42c...a35caf`; mode `0xd65eaf...53773d`; mode `0xf3442b...56d204`; arbitrum `0x19a2dd...3388de`; arbitrum `0x4a1daa...a7b5b3`; arbitrum `0x8bb906...548289`; arbitrum `0xa91916...8337c5`; avalanche [`0x02099a...9bf271`](./contracts/avalanche-43114/0x02099a96d5ef6996d0718e34a229f9c1f79bf271/); avalanche `0x49606f...d4890d`; linea `0xa91916...8337c5` | ✅ Audited |
| VelodromeGaugeRegistry | operational_periphery | optimism | n/a | 4 deployments: optimism [`0x5b60bf...2147fa`](./contracts/optimism-10/0x5b60bf5c8b434ed533b2a4613509e964082147fa/); optimism `0x99460b...1ef5e7`; optimism `0xae94ea...fdb97a`; mode `0xfd2d0d...d850e7` | ✅ Audited |
| ZapLib | adapter | polygon | n/a | 20 deployments: ethereum `0x5310bc...04687a`; optimism `0xb1e94d...bac6da`; unichain `0xf501a9...dec3a9`; polygon [`0x0f6abc...9c81a3`](./contracts/polygon-137/0x0f6abc6b808b377d6aed8da1fad5e135c99c81a3/); polygon `0x64dab1...9a4641`; polygon `0xbbddb9...bdd932`; sonic `0xf9340f...3e06c8`; fraxtal `0xf501a9...dec3a9`; mantle `0x16a54a...4ffcf0`; base `0x2d1732...413d0f`; base `0x7eb798...39b4d4`; base `0xf5f3b9...c991a3`; base `0xf8bd6d...a3669a`; mode `0x99800f...36a8ed`; arbitrum `0x5c7077...8b508e`; arbitrum `0xbdb926...cb719f`; arbitrum `0xc0c3e0...d412b7`; arbitrum `0xfb578a...7dd953`; avalanche `0xb7c1be...d9ab95`; linea `0x5bc457...472566` | ✅ Audited |

### ⚠️ Verified + Unaudited (174)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessHub2 | unknown | sonic | unit-31986 | [`0x5e7a9e...e8e37f`](./contracts/sonic-146/0x5e7a9eea6988063a4dbb9ccddb3e04c923e8e37f/) | ⚠️ Unaudited |
| AcrossDepositAdapter | adapter | ethereum | n/a | 14 deployments: ethereum [`0x24f7eb...190f08`](./contracts/ethereum-1/0x24f7eb9c0a1b93bfbe9aea2ba66e167b88190f08/); ethereum `0xba1b4b...818270`; optimism `0xe8436f...660481`; optimism `0xf378bd...05fce8`; polygon `0x298614...f2b6db`; polygon `0xb347cd...cdfc18`; base `0xd0c591...37bddd`; base `0xf02e0f...b330a2`; mode `0x4de060...983de7`; mode `0xeb76cb...d15e69`; arbitrum `0xd42e09...be2b1a`; arbitrum `0xfb25ec...df38c8`; linea `0x45d00b...b928fd`; linea `0x5310bc...04687a` | ⚠️ Unaudited |
| AcrossRouteAdapter | adapter | base | n/a | 2 deployments: base [`0x0bd719...9a4b57`](./contracts/base-8453/0x0bd719d8ab0e9d36128b0f41f7e2ca75a69a4b57/); base `0x82c544...30e939` | ⚠️ Unaudited |
| AcrossSwapAdapter | adapter | optimism | n/a | 21 deployments: ethereum `0x6890a5...26454f`; ethereum `0xa815f3...78b5d1`; ethereum `0xee7992...9a864a`; optimism [`0x08cd01...22a455`](./contracts/optimism-10/0x08cd017edf396dc80fec52922fb625b51722a455/); optimism `0x1c2549...bcc9ad`; optimism `0x6737dd...0527f7`; polygon `0x0d3e1d...16c0c2`; polygon `0x2a2d2d...7e0deb`; polygon `0x6f3e8f...bc3fe3`; base `0x144ba2...269568`; base `0x34a7d2...944255`; base `0xc12def...ac5e33`; mode `0x57f11f...6e4e62`; mode `0x660bb0...d2b8e4`; mode `0x9b3811...e72306`; arbitrum `0x0b6621...afc66b`; arbitrum `0x3d009b...4c1062`; arbitrum `0xfa7573...fe14f4`; linea `0xaeb2a6...31b9bb`; linea `0xc7aa15...3b1634`; linea `0xdb5098...cf2018` | ⚠️ Unaudited |
| Aero | token | base | n/a | [`0x940181...d98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | ⚠️ Unaudited |
| AerodromeGaugeConnector | operational_periphery | base | n/a | 9 deployments: base [`0x06b559...4d59b5`](./contracts/base-8453/0x06b559fef135ed5c9133478a2af502d8d44d59b5/); base `0x08fc60...c33c95`; base `0x1bcb89...eb3bb4`; base `0x2ebbde...0815e1`; base `0x2edcc1...295bd1`; base `0x9cf9a1...7ccdc1`; base `0xb5c190...79cc26`; base `0xdc6489...c68dec`; base `0xe7d930...ec919a` | ⚠️ Unaudited |
| AerodromeGaugeRegistry | operational_periphery | base | n/a | 16 deployments: base [`0x0a290c...ea1973`](./contracts/base-8453/0x0a290cfe07a781bb6917c8ab5b163fdaa5ea1973/); base `0x19826d...242320`; base `0x1e2bc5...612f72`; base `0x200701...f3157b`; base `0x2a2d2d...7e0deb`; base `0x3508a7...983596`; base `0x3615b8...edd51a`; base `0x6fa6a0...f23dbe`; base `0x70b7af...d6126a`; base `0x768caf...98d19f`; base `0x78a515...9889cf`; base `0x9d70b9...ab7f95`; base `0xb347cd...cdfc18`; base `0xc7ba8f...26a646`; base `0xd9fa47...686693`; base `0xda8414...ffe663` | ⚠️ Unaudited |
| AerodromeRouterAdapter | adapter | polygon | n/a | 11 deployments: ethereum `0x2b5e91...1258a4`; optimism `0x8bc78b...49f007`; polygon [`0x16a54a...4ffcf0`](./contracts/polygon-137/0x16a54ae47b7e2eea0ed60438ab5d970c284ffcf0/); sonic `0xaeb2a6...31b9bb`; fraxtal `0x400b2d...bba104`; mantle `0xa4fb47...552682`; base `0xa8807e...cac716`; mode `0x53e3f3...2f6e6a`; arbitrum `0xdc6489...c68dec`; avalanche `0xd05bcc...7d99a4`; linea `0x5ed2b2...d99f69` | ⚠️ Unaudited |
| AerodromeRouterConnector | adapter | base | n/a | 10 deployments: base [`0x132fbf...61f14e`](./contracts/base-8453/0x132fbfa0f6fefe8fdf128748f90888d06461f14e/); base `0x19216f...5467f1`; base `0x2d0fd2...c64c1d`; base `0x3e00b6...923f41`; base `0x529048...4d665f`; base `0x7f174d...a3876e`; base `0xd4c72e...e6ab07`; base `0xe16b3c...309b4c`; base `0xe4db0c...700d8f`; mode `0xc8994b...e13126` | ⚠️ Unaudited |
| AerodromeSlipstreamGaugeConnector | operational_periphery | base | n/a | 3 deployments: base [`0x477490...37e515`](./contracts/base-8453/0x477490411634646b089fb391cb99dc1a6037e515/); base `0x53e3f3...2f6e6a`; base `0xf0b9f5...8610d3` | ⚠️ Unaudited |
| AerodromeSlipstreamStrategy | core_logic | base | n/a | 9 deployments: base [`0x0efadd...1542d5`](./contracts/base-8453/0x0efadd4d1336926276ead3b74366f76e801542d5/); base `0x1d12ca...a98e31`; base `0x2e3538...181771`; base `0x2f0052...696096`; base `0x4de060...983de7`; base `0x768615...37bf4a`; base `0x83d50c...652fe7`; base `0x8c5e97...9dbb0f`; base `0x916858...a708e6` | ⚠️ Unaudited |
| AerodromeStrategy | core_logic | base | n/a | [`0x472351...fe3717`](./contracts/base-8453/0x472351dd0722e14de6ab3080995d96aebffe3717/) | ⚠️ Unaudited |
| AirdropDistributor | operational_periphery | base | n/a | [`0xe4c69a...bc382f`](./contracts/base-8453/0xe4c69af018b2ea9e575026c0472b6531a2bc382f/) | ⚠️ Unaudited |
| AlgebraPoolAdapter | adapter | arbitrum | n/a | 11 deployments: ethereum `0xe2336e...84a411`; optimism `0xf1928b...df1af9`; polygon `0xa260cd...c53a8c`; sonic `0x4a81be...617259`; fraxtal `0x14d55a...0a0b1d`; mantle `0x83d50c...652fe7`; base `0xfe5a62...ab5a02`; mode `0x0a6154...d49220`; arbitrum [`0x089bb8...0ff675`](./contracts/arbitrum-42161/0x089bb866727c05953d65e193ea090c912b0ff675/); avalanche `0x9f0bd0...4f9d18`; linea `0x386779...4d1f8f` | ⚠️ Unaudited |
| AlgebraRouterAdapter | adapter | linea | n/a | 11 deployments: ethereum `0xd30504...ae4e4a`; optimism `0xa080e2...5fc8c3`; polygon `0x568bd0...76fc02`; sonic `0xd3926a...bcef31`; fraxtal `0xfb903b...7365c8`; mantle `0xee49aa...3cb580`; base `0x2d5b22...4ab6d2`; mode `0xc2d77f...f1a3cc`; arbitrum `0xe16b3c...309b4c`; avalanche `0xd78f51...0359cc`; linea [`0x0385c2...0ebec6`](./contracts/linea-59144/0x0385c27306e0fa285633590ead2814419c0ebec6/) | ⚠️ Unaudited |
| AtlantisIncentiveMakerConnector | unknown | sonic | n/a | 5 deployments: sonic [`0x387885...973f7c`](./contracts/sonic-146/0x387885ebefbb456330d9a0aa186bbe04cc973f7c/); sonic `0x4ca667...b207d3`; sonic `0xc7bb3e...03973e`; sonic `0xf5090d...d56fba`; base `0xb4383a...4780be` | ⚠️ Unaudited |
| AutomatedFarmStrategy | core_logic | arbitrum | n/a | 4 deployments: base `0x64c10b...8aa77c`; base `0xaf6999...d77a55`; arbitrum [`0x5a2516...05cd3e`](./contracts/arbitrum-42161/0x5a25167c72fea35986740e6b6104c70e6505cd3e/); arbitrum `0x8bc182...60466e` | ⚠️ Unaudited |
| BalanceLogicLibrary | unknown | base | n/a | [`0x8e6341...53b648`](./contracts/base-8453/0x8e634181dafb102213fad46b71ba1a4b6153b648/) | ⚠️ Unaudited |
| BlackholeGaugeConnector | operational_periphery | avalanche | n/a | 3 deployments: ethereum `0x855f92...83f953`; avalanche [`0x296b3f...e2d03c`](./contracts/avalanche-43114/0x296b3fcdba0d0deb5ad5e0a1bfaa63f17ae2d03c/); avalanche `0xc9424e...612339` | ⚠️ Unaudited |
| BlackholeGaugeRegistry | operational_periphery | avalanche | n/a | 5 deployments: ethereum `0x5f67db...14136d`; avalanche [`0x26925a...c050d2`](./contracts/avalanche-43114/0x26925ac062c5f267e0fb5c655c2fa8004ac050d2/); avalanche `0x4dd790...c7d224`; avalanche `0x5fd663...198e42`; avalanche `0x66bb55...1c01a1` | ⚠️ Unaudited |
| BlackholeRouterConnector | adapter | avalanche | n/a | 4 deployments: ethereum `0xdd2ffe...834574`; avalanche [`0x3508a7...983596`](./contracts/avalanche-43114/0x3508a7918ac8f31ef3af71f8bb637926b8983596/); avalanche `0xbaa471...173be0`; avalanche `0xcadffd...408826` | ⚠️ Unaudited |
| BlackholeV2Adapter | adapter | ethereum | n/a | 11 deployments: ethereum [`0x212cf6...56c99c`](./contracts/ethereum-1/0x212cf64bbd972df348be70a4b445385a3056c99c/); optimism `0xdc5118...ff3dc6`; polygon `0xa8d2de...a44baf`; sonic `0x3f3126...10034c`; fraxtal `0xd6b71d...4f5a5b`; mantle `0xb7b53a...d8b8a8`; base `0x6b894b...4c57b5`; mode `0x928561...a3029b`; arbitrum `0xcf1184...099fa1`; avalanche `0xc1e2dd...905649`; linea `0x5d2a68...3cf1c6` | ⚠️ Unaudited |
| BlackholeV3Connector | unknown | ethereum | n/a | 6 deployments: ethereum [`0x6d94af...26c292`](./contracts/ethereum-1/0x6d94afb7338e0f88d0c64e87a49e7eeb2626c292/); avalanche `0x74547d...220283`; avalanche `0x7d0611...17d094`; avalanche `0x8d68ab...212a40`; avalanche `0x923021...70f2f0`; avalanche `0x9f5bd7...4fc99a` | ⚠️ Unaudited |
| BlackholeV3GaugeConnector | operational_periphery | avalanche | n/a | 5 deployments: ethereum `0xd64e3a...a703c3`; avalanche [`0x2b0273...141db8`](./contracts/avalanche-43114/0x2b027301799029a64b21060c995f772e02141db8/); avalanche `0x5bc457...472566`; avalanche `0xa8758f...e2ae2e`; avalanche `0xa92424...1b039f` | ⚠️ Unaudited |
| BmxConnector | unknown | base | n/a | 3 deployments: base [`0x2aab70...0d8922`](./contracts/base-8453/0x2aab7012496eb2f5446a64befe56b10ed40d8922/); base `0x4d7271...ff4a18`; base `0x945b71...573b6c` | ⚠️ Unaudited |
| BridgeDepositStrategy | operational_periphery | fraxtal | n/a | 22 deployments: ethereum `0x3ef527...77ff6d`; ethereum `0xd03409...a895f2`; optimism `0x0eb7e3...c10982`; optimism `0x18a0a2...9fbbd5`; polygon `0x84bf32...dba11a`; polygon `0xbfdec1...3f4724`; sonic `0x5ed2b2...d99f69`; sonic `0x9545d2...dbd03a`; fraxtal [`0x02099a...9bf271`](./contracts/fraxtal-252/0x02099a96d5ef6996d0718e34a229f9c1f79bf271/); fraxtal `0x923021...70f2f0`; mantle `0x310f87...ff028a`; mantle `0x81ab96...d3defc`; base `0x160d86...1f513e`; base `0xf82d1a...367593`; mode `0x46d70f...582766`; mode `0xd737c5...704d87`; arbitrum `0x0cc462...cef977`; arbitrum `0x108e14...b9ccbe`; avalanche `0xa6422d...d52403`; avalanche `0xc4d8da...673d92`; linea `0x985a6a...9d32c0`; linea `0x9f58ee...133242` | ⚠️ Unaudited |
| BridgeLib | operational_periphery | linea | n/a | 22 deployments: ethereum `0x603379...b7e4f2`; ethereum `0xf8fc1b...2157bd`; optimism `0xd174c0...75f10e`; optimism `0xd85f14...2de90c`; polygon `0x5c204b...fa7bb2`; polygon `0xbf0230...ca02f7`; sonic `0x5048c0...7c235d`; sonic `0xa978e0...b77a19`; fraxtal `0x54d81f...94eacf`; fraxtal `0xab2ee5...3518be`; mantle `0x916858...a708e6`; mantle `0xaf8afa...c867e6`; base `0x8e62f6...66c0df`; base `0xd7c823...655e7f`; mode `0x5d2fc3...f2ed53`; mode `0x85e28f...c12aac`; arbitrum `0x0e6701...79a890`; arbitrum `0x3078d8...eb9539`; avalanche `0x0acd3f...863730`; avalanche `0xae94ea...fdb97a`; linea [`0x0975c8...e40c38`](./contracts/linea-59144/0x0975c8d3b879db8c645250aa1fac78fc2ce40c38/); linea `0x4a81be...617259` | ⚠️ Unaudited |
| BridgeRouter | operational_periphery | sonic | n/a | 11 deployments: ethereum `0xb0e152...a6a2d4`; optimism `0x7ae5c4...bb4f5a`; polygon `0x3d9cf7...3f79ea`; sonic [`0x26d774...1578d7`](./contracts/sonic-146/0x26d7745573d4be284ad6bcd65469145c0a1578d7/); fraxtal `0x296b3f...e2d03c`; mantle `0xf5090d...d56fba`; base `0xc210fe...8384ca`; mode `0x564dde...68dae1`; arbitrum `0xf81c3a...3ca6d2`; avalanche `0xa9849d...77e8c3`; linea `0xe7feb1...efce31` | ⚠️ Unaudited |
| BridgeRouteReceiver | operational_periphery | base | n/a | 2 deployments: base [`0x3e75fe...088f2b`](./contracts/base-8453/0x3e75fe34ccf3d4b3ee59735b103b8ee310088f2b/); base `0xb0c405...033751` | ⚠️ Unaudited |
| BridgeSwapReceiver | operational_periphery | optimism | n/a | 32 deployments: ethereum `0x29ba97...e82cb7`; ethereum `0xbcefc3...375bbc`; ethereum `0xc2a313...dba57c`; optimism [`0x010a62...d06caa`](./contracts/optimism-10/0x010a62b2682819fc4b9e785595c5e19b35d06caa/); optimism `0x53126b...399b3a`; optimism `0xbeb46e...ecf633`; polygon `0x2cd467...8da825`; polygon `0x629d5c...e92262`; polygon `0xa66aef...c8293a`; sonic `0x0385c2...0ebec6`; sonic `0x96613d...9a2a8d`; sonic `0xfc5254...72441a`; fraxtal `0x5a1b74...e7889b`; fraxtal `0x71de28...07be8f`; fraxtal `0xa57336...d8d15e`; mantle `0x3d660d...492813`; mantle `0xd1095a...a46924`; base `0x16b392...9dd8cf`; base `0x27f3cf...ee7fa4`; base `0xf6d907...e5fabd`; mode `0x3b8886...01e1f3`; mode `0xaccb94...8f4081`; mode `0xee49aa...3cb580`; arbitrum `0x81af02...0450a8`; arbitrum `0xa8e363...7107fa`; arbitrum `0xc069fc...9231fd`; avalanche `0x262b4c...269643`; avalanche `0x3fd528...79ad7f`; avalanche `0x8d9367...8aba4b`; linea `0x93c4dc...e9ff53`; linea `0xa9bb3b...a655d4`; linea `0xb4ec0d...e2a2b2` | ⚠️ Unaudited |
| BridgeWithdrawStrategy | operational_periphery | mantle | n/a | 22 deployments: ethereum `0x331946...57f50d`; ethereum `0xa85498...b1f90b`; optimism `0xd69b2f...cfad90`; optimism `0xea4f5b...5410f6`; polygon `0x1bfe63...389700`; polygon `0x5225cb...0d52a2`; sonic `0x0ce036...1c48e2`; sonic `0xbea0e4...16cf28`; fraxtal `0xace729...8fc17b`; fraxtal `0xffcdd3...67af30`; mantle [`0x0a6154...d49220`](./contracts/mantle-5000/0x0a615483e086665ba253fbe141e33f210fd49220/); mantle `0xb37651...75c015`; base `0x9dbc88...7b5861`; base `0xd4676c...93230d`; mode `0x61afd3...91dc3a`; mode `0xb7b53a...d8b8a8`; arbitrum `0x4768ae...6c6b2d`; arbitrum `0x7eb798...39b4d4`; avalanche `0x117220...82af44`; avalanche `0x5266e1...e4e6b8`; linea `0x3f1b56...da2261`; linea `0x3f3126...10034c` | ⚠️ Unaudited |
| CakeOFT | unknown | linea | n/a | 3 deployments: base `0x305591...2013a1`; arbitrum `0x1b8968...c1ba2c`; linea [`0x0d1e75...5befbe`](./contracts/linea-59144/0x0d1e753a25ebda689453309112904807625befbe/) | ⚠️ Unaudited |
| CamelotV2Adapter | adapter | mode | n/a | 11 deployments: ethereum `0x68e023...c27b4b`; optimism `0xba9315...87ecd9`; polygon `0xff638d...3d9452`; sonic `0x985a6a...9d32c0`; fraxtal `0xa6002c...636430`; mantle `0x481d6b...00ea35`; base `0x59557f...974dd2`; mode [`0x3d660d...492813`](./contracts/mode-34443/0x3d660d59095288fc22b7fc5d244f60ed9c492813/); arbitrum `0xe8547a...ca4a09`; avalanche `0xb286a4...4dd949`; linea `0x6d563f...a2ecdf` | ⚠️ Unaudited |
| CamelotV3Connector | unknown | arbitrum | n/a | 6 deployments: arbitrum [`0x1ef68f...323b0d`](./contracts/arbitrum-42161/0x1ef68f6c17fd9a7ac5a90707cd08d6bdcd323b0d/); arbitrum `0x420b52...51ecb0`; arbitrum `0x74a9ad...21321e`; arbitrum `0x9b565f...e9a8a0`; arbitrum `0xd024b4...7faf40`; arbitrum `0xd3af61...a3cc6b` | ⚠️ Unaudited |
| CLFactory | registry | base | n/a | 5 deployments: optimism `0xcc0bdd...1cd12f`; base [`0x5e7bb1...06809a`](./contracts/base-8453/0x5e7bb104d84c7cb9b682aac2f3d509f5f406809a/); base `0x795ebb...51a01e`; base `0x9592cd...a6d51b`; base `0xcb4d5d...c535ac` | ⚠️ Unaudited |
| CLGauge | operational_periphery | base | n/a | 3 deployments: base [`0x62d499...4f1d8a`](./contracts/base-8453/0x62d4997f9e7cc3c574dec5390e517e3dd94f1d8a/); base `0x955320...e1b5d9`; base `0xb4318c...136f48` | ⚠️ Unaudited |
| CLGaugeFactory | operational_periphery | base | n/a | 3 deployments: base [`0x3e703f...9b6fbc`](./contracts/base-8453/0x3e703fd2b6506e2abcce2c8b5633872a7d9b6fbc/); base `0xa70db2...0ac08d`; base `0xef0efe...17e363` | ⚠️ Unaudited |
| CLPool | core_logic | base | n/a | 4 deployments: base [`0xd51500...bac106`](./contracts/base-8453/0xd5150026c324e4351d18282b540e9b677bbac106/); base `0xe39ef5...cc74ff`; base `0xec8e53...315831`; base `0xf926b5...f5da8e` | ⚠️ Unaudited |
| ConnectorLens | periphery | ethereum | n/a | 16 deployments: ethereum [`0x0bf0f9...949d53`](./contracts/ethereum-1/0x0bf0f966a8c1676d2d76c1863cbd84170b949d53/); optimism `0x84db05...b93bb8`; unichain `0x856c99...fa5095`; polygon `0x49ddd7...eae5c6`; polygon `0xb01e43...06e08d`; polygon `0xc8994b...e13126`; sonic `0x962630...9994fb`; fraxtal `0x3949a9...5b632e`; mantle `0x5b8ee3...ea8715`; base `0x1a87c4...45562c`; base `0x2662bd...b9f53e`; mode `0x57732e...2aa00c`; arbitrum `0x190915...842b12`; arbitrum `0xf0b9f5...8610d3`; avalanche `0xace729...8fc17b`; linea `0xf0b9f5...8610d3` | ⚠️ Unaudited |
| Counter | unknown | base | n/a | 3 deployments: base [`0x430d45...d75fb8`](./contracts/base-8453/0x430d459700add442a501f4b3c70de7f9c3d75fb8/); base `0x5f4ef7...e4987a`; base `0x9cdab0...3368a8` | ⚠️ Unaudited |
| CrossFarmMoveStrategy | operational_periphery | base | n/a | 11 deployments: ethereum `0xe054ae...6bdfa1`; optimism `0xb14df9...d9f891`; polygon `0xaef14a...4839ec`; sonic `0x10bd16...9fa0f5`; fraxtal `0xdf015f...968ac0`; mantle `0x5d0101...de7967`; base [`0x039047...3ff999`](./contracts/base-8453/0x039047aa3847f10f2d58f59ea807da0c963ff999/); mode `0x5b86da...fa6e29`; arbitrum `0xa6671e...1fd614`; avalanche `0x4fe6e6...27d117`; linea `0xc55c0b...06f473` | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | base | n/a | 4 deployments: base [`0x2dd416...1ca9d1`](./contracts/base-8453/0x2dd4162d4685657c06cd8f027cca3208311ca9d1/); base `0x4ebe40...db4114`; base `0xf4171b...69af00`; base `0xfddfa1...c5af6c` | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | base | n/a | 5 deployments: base [`0x0ad083...38ee68`](./contracts/base-8453/0x0ad08370c76ff426f534bb2affd9b5555338ee68/); base `0x3a0a75...88862c`; base `0xe3cb2e...657939`; base `0xe4324a...826be7`; mode `0x151ff9...64cf59` | ⚠️ Unaudited |
| DackieV3Factory | registry | base | n/a | [`0x351591...d232f7`](./contracts/base-8453/0x351591b9af4b61fcca9bbb4b0c5dbf000fd232f7/) | ⚠️ Unaudited |
| DackieV3PoolDeployer | core_logic | base | n/a | 3 deployments: base [`0xc918b1...c1c669`](./contracts/base-8453/0xc918b1c21da06b55be0361adcd5cda3329c1c669/); base `0xef1511...6e3b50`; base `0xf9d712...055b6b` | ⚠️ Unaudited |
| DelegationLogicLibrary | unknown | base | n/a | [`0xd6e6d5...31d59f`](./contracts/base-8453/0xd6e6d57d0627aae127743c79bc795f836431d59f/) | ⚠️ Unaudited |
| DeprecatedAerodromeGaugeRegistry | operational_periphery | base | n/a | 4 deployments: base [`0x275235...fb07e1`](./contracts/base-8453/0x275235c61d46d8a57f136492358c82824afb07e1/); base `0x71e236...a5506c`; base `0x720fdb...34cb6a`; base `0xb0b5b4...d5a6fd` | ⚠️ Unaudited |
| DynamicSwapFeeModule | unknown | mode | n/a | [`0xf3a2a7...ed0f35`](./contracts/mode-34443/0xf3a2a7168438792f6c688ae5374be852c7ed0f35/) | ⚠️ Unaudited |
| EqualizerGaugeConnector | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x8b2321...61eb98`](./contracts/sonic-146/0x8b2321f9f2a56a9930435286fb39bf3ea961eb98/); sonic `0xb051f3...800307` | ⚠️ Unaudited |
| EqualizerNfpgConnector | unknown | sonic | n/a | [`0xd5e121...6079bb`](./contracts/sonic-146/0xd5e121b733a7ee4d4d22298bc50239177b6079bb/) | ⚠️ Unaudited |
| EqualizerNfpgGaugeRegistry | operational_periphery | sonic | n/a | [`0x475a0f...52d8e4`](./contracts/sonic-146/0x475a0f48d432d715bc64eab5bd8b24a50f52d8e4/) | ⚠️ Unaudited |
| EqualizerNftConnector | token | sonic | n/a | [`0x5e8c2c...fb7719`](./contracts/sonic-146/0x5e8c2cf2303d4b63e592586a14b7048192fb7719/) | ⚠️ Unaudited |
| EqualizerRouterConnector | adapter | sonic | n/a | 2 deployments: sonic [`0xbdb852...998d06`](./contracts/sonic-146/0xbdb8520b52be5519f03b28437743f043c9998d06/); sonic `0xd248aa...4f2fa0` | ⚠️ Unaudited |
| EtherexGaugeRegistry | operational_periphery | linea | n/a | 2 deployments: linea [`0x31debc...1537b5`](./contracts/linea-59144/0x31debc0909a1ebf5506d1071b88cc6d4a11537b5/); linea `0x45c831...af3611` | ⚠️ Unaudited |
| EtherexRouterConnector | adapter | linea | n/a | 3 deployments: linea [`0x4ca667...b207d3`](./contracts/linea-59144/0x4ca6672280e8b150c8b142605966d960e6b207d3/); linea `0xdd4dc3...44dfff`; linea `0xe8db41...c6a9bc` | ⚠️ Unaudited |
| EtherexV2GaugeConnector | operational_periphery | linea | n/a | 2 deployments: linea [`0x041166...95c3bb`](./contracts/linea-59144/0x041166c333aacba569b7e108cf4bbb139495c3bb/); linea `0xbaa884...31e636` | ⚠️ Unaudited |
| EtherexV3Connector | unknown | linea | n/a | 5 deployments: linea [`0x1ef68f...323b0d`](./contracts/linea-59144/0x1ef68f6c17fd9a7ac5a90707cd08d6bdcd323b0d/); linea `0x5e8c2c...fb7719`; linea `0x768615...37bf4a`; linea `0x86b066...d1fd69`; linea `0xdfaf68...a2d648` | ⚠️ Unaudited |
| FactoryRegistry | registry | base | n/a | [`0x5c3f18...9e37c0`](./contracts/base-8453/0x5c3f18f06cc09ca1910767a34a20f771039e37c0/) | ⚠️ Unaudited |
| FeeManager | governance | mantle | n/a | [`0x982ce5...929b12`](./contracts/mantle-5000/0x982ce53ab2c9d7b841af04d8df87879f73929b12/) | ⚠️ Unaudited |
| FlashloanLib | unknown | ethereum | n/a | 4 deployments: ethereum [`0x3d8ac2...99e1da`](./contracts/ethereum-1/0x3d8ac28d53ca8475bd2dcf61b8dd7221f099e1da/); ethereum `0x4a81be...617259`; ethereum `0x9f58ee...133242`; ethereum `0xb468fb...a54389` | ⚠️ Unaudited |
| FlashloanStrategy | core_logic | ethereum | n/a | 3 deployments: ethereum [`0xc7aa15...3b1634`](./contracts/ethereum-1/0xc7aa15e458cb4a6e7b132d4057ab6994843b1634/); ethereum `0xd968cf...ec7f69`; ethereum `0xe4c68a...e371a1` | ⚠️ Unaudited |
| Forwarder | unknown | base | n/a | [`0x15e627...a05dcc`](./contracts/base-8453/0x15e62707fca7352fbe35f51a8d6b0f8066a05dcc/) | ⚠️ Unaudited |
| GasDrainingContract | unknown | arbitrum | n/a | [`0xfb1e19...c0f298`](./contracts/arbitrum-42161/0xfb1e19430784338f341a6d9b2b8965c13ec0f298/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | base | n/a | [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | ⚠️ Unaudited |
| GaugeRegistry | operational_periphery | sonic | n/a | [`0x547e55...b21817`](./contracts/sonic-146/0x547e55662ef732fb6e22b4c875433ab7ddb21817/) | ⚠️ Unaudited |
| HydrexMerklConnector | unknown | base | n/a | [`0x77a8ca...34a29d`](./contracts/base-8453/0x77a8ca1febb4f3aa93373a32663491f38c34a29d/) | ⚠️ Unaudited |
| IchiConnector | unknown | sonic | n/a | 2 deployments: sonic [`0xba74d4...abe076`](./contracts/sonic-146/0xba74d4cc3fda0d243441e5390529ff2436abe076/); sonic `0xe9eb1a...1d9e44` | ⚠️ Unaudited |
| IchiVaultRegistry | registry | sonic | n/a | 2 deployments: sonic [`0x86b066...d1fd69`](./contracts/sonic-146/0x86b0660f8620236ae8215d190d059a9119d1fd69/); sonic `0xe21f25...9005cc` | ⚠️ Unaudited |
| KyberLMConnector | unknown | base | n/a | 3 deployments: ethereum `0xa8e363...7107fa`; base [`0x36b02c...b66423`](./contracts/base-8453/0x36b02cdd50041838b62411d77e5fefa37bb66423/); arbitrum `0x45d00b...b928fd` | ⚠️ Unaudited |
| LendingStrategy | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x0e2fff...fbbff7`](./contracts/ethereum-1/0x0e2fff65867422813c25a7404950385e36fbbff7/); ethereum `0x31b731...3cba1f`; ethereum `0x31d747...82d353`; ethereum `0x386779...4d1f8f`; ethereum `0xc74965...9bacb1` | ⚠️ Unaudited |
| LineaVestingConnector | operational_periphery | linea | n/a | 2 deployments: linea [`0xb7c1be...d9ab95`](./contracts/linea-59144/0xb7c1be5b2caabaf4f638d6c9d10d662f27d9ab95/); linea `0xed67e7...b3805a` | ⚠️ Unaudited |
| LPFarmStrategy | core_logic | base | n/a | 5 deployments: base [`0x10bd16...9fa0f5`](./contracts/base-8453/0x10bd1657efa6cd2febb1f3cdd1d3c4a9bc9fa0f5/); base `0x3b79a6...5447a7`; base `0xb024cb...57c5a6`; arbitrum `0x11d9ed...98bf28`; arbitrum `0x942867...0e74d3` | ⚠️ Unaudited |
| ManagedRewardsFactory | registry | base | n/a | [`0xfda1fb...d2bdc3`](./contracts/base-8453/0xfda1fb5a2a5b23638c7017950506a36dcfd2bdc3/) | ⚠️ Unaudited |
| MasterChef | unknown | mantle | unit-31996 | [`0xa756f7...1955b5`](./contracts/mantle-5000/0xa756f7d419e1a5cbd656a438443011a7de1955b5/) | ⚠️ Unaudited |
| MasterchefV3Connector | unknown | arbitrum | n/a | 18 deployments: base `0x117239...5e780a`; base `0x139f15...a67d8d`; base `0x2b1758...104940`; base `0x32ddff...a64b72`; base `0x4f8833...e71780`; base `0x5c7e34...42a90e`; base `0x61d7f5...7527e2`; base `0xa6002c...636430`; base `0xaf8afa...c867e6`; base `0xcf1184...099fa1`; base `0xd458fc...c2f268`; arbitrum [`0x0f592f...0fe04f`](./contracts/arbitrum-42161/0x0f592f2ee1779fa7d81a8482f4cc6d216a0fe04f/); arbitrum `0x5c2866...7e6407`; arbitrum `0x60d334...d17698`; arbitrum `0xa05a9e...3a8788`; arbitrum `0xba3848...8f6ba5`; arbitrum `0xc64cfb...2a2d4d`; arbitrum `0xfc4c50...cd564b` | ⚠️ Unaudited |
| MasterChefV3KeeperV2 | operational_periphery | linea | n/a | 3 deployments: base `0x8c2a36...cd1834`; arbitrum `0xa39da3...d32dbf`; linea [`0x6ca0f5...68dd2e`](./contracts/linea-59144/0x6ca0f5c25075f43a4c6ef7e6a704ceb33468dd2e/) | ⚠️ Unaudited |
| MasterChefV3ReceiverV2 | unknown | linea | n/a | 3 deployments: base `0xfca69d...f71fa7`; arbitrum `0x756af6...99dc52`; linea [`0x1c1081...1d7ecd`](./contracts/linea-59144/0x1c1081e2bb3c2f3805bc89e1951c15be551d7ecd/) | ⚠️ Unaudited |
| MerchantMoeMasterchefConnector | unknown | mantle | n/a | 2 deployments: mantle [`0x298614...f2b6db`](./contracts/mantle-5000/0x298614a6d91a9f80f144784cd916348c08f2b6db/); mantle `0x6fa6a0...f23dbe` | ⚠️ Unaudited |
| MerklConnector | unknown | arbitrum | n/a | 33 deployments: ethereum `0x18ecff...17c54b`; ethereum `0x377b67...4c7582`; ethereum `0xab434e...9a24fc`; ethereum `0xf01c61...128942`; optimism `0x4fe6e6...27d117`; optimism `0x7fd9f6...0c4699`; optimism `0xfbbfc8...f1c962`; unichain `0x23e5d9...4cfa4c`; unichain `0x3cb9ae...7dc83c`; unichain `0xe4cdcb...9af07c`; polygon `0x19a2dd...3388de`; polygon `0x5c7077...8b508e`; polygon `0x7671cb...692171`; polygon `0xed2176...274314`; sonic `0x6cf3b0...5c62d3`; sonic `0xb37651...75c015`; sonic `0xbd6039...c45b11`; sonic `0xd1b264...890774`; base `0x30962d...278317`; base `0x99a2f5...f60dcc`; base `0xd59ac0...33d71d`; base `0xe31ad7...8d9a1a`; arbitrum [`0x03fa97...9b26aa`](./contracts/arbitrum-42161/0x03fa9770db525d5d287da8d851a93a35a39b26aa/); arbitrum `0x29d829...c64125`; arbitrum `0x3ebf49...bbf875`; arbitrum `0x65cb9b...ccfab7`; arbitrum `0x71de28...07be8f`; arbitrum `0xd826da...b050ea`; arbitrum `0xe6ff4f...d5da46`; arbitrum `0xffcdd3...67af30`; avalanche `0x3ecdfe...934007`; avalanche `0x624c75...6c422a`; avalanche `0xb3dc04...325ee1` | ⚠️ Unaudited |
| MigrationStrategy | operational_periphery | base | n/a | 3 deployments: base [`0x1d5038...7b6115`](./contracts/base-8453/0x1d503885f90260e3599fa86ea5deb049e67b6115/); base `0x5c2866...7e6407`; base `0xb60ab0...9a0d76` | ⚠️ Unaudited |
| Minter | operational_periphery | optimism | n/a | 2 deployments: optimism [`0x6dc9e1...d10982`](./contracts/optimism-10/0x6dc9e1c04ee59ed3531d73a72256c0da46d10982/); base `0xeb0183...a33fe5` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | base | n/a | 6 deployments: optimism `0xff79ec...b44722`; sonic `0xcc83a7...e2cd34`; base [`0x0a5aa5...07d5c6`](./contracts/base-8453/0x0a5aa5d3a4d28014f967bf0f29eaa3ff9807d5c6/); base `0x68ec55...234755`; base `0x98fec6...8c5eb7`; base `0xe2af5f...b406e2` | ⚠️ Unaudited |
| ModeStakingRewardsFactory | registry | mode | n/a | 2 deployments: mode [`0xce28c0...2f8504`](./contracts/mode-34443/0xce28c0e65359f48416d0a1d3936b9c53e32f8504/); mode `0xd2f998...3851d7` | ⚠️ Unaudited |
| Moe | unknown | mantle | n/a | [`0x4515a4...dc00c9`](./contracts/mantle-5000/0x4515a45337f461a11ff0fe8abf3c606ae5dc00c9/) | ⚠️ Unaudited |
| MoeRouter | adapter | mantle | n/a | [`0xeaee7e...e7232a`](./contracts/mantle-5000/0xeaee7ee68874218c3558b40063c42b82d3e7232a/) | ⚠️ Unaudited |
| MultiSwapRouter | adapter | arbitrum | n/a | 28 deployments: ethereum `0xd9704c...2affc0`; ethereum `0xf85251...735741`; optimism `0xab1960...33d6a6`; optimism `0xe054ae...6bdfa1`; polygon `0x6fa6a0...f23dbe`; sonic `0x9312f6...e85d6d`; sonic `0x9c418b...ff1b58`; sonic `0xd51a36...7fcc97`; fraxtal `0x61d7f5...7527e2`; fraxtal `0x72b10d...7bef2e`; fraxtal `0x76fb09...5dd487`; mantle `0x928561...a3029b`; base `0x8e5ebb...c7d73b`; base `0xf33ff0...76526c`; mode `0x2a2d2d...7e0deb`; mode `0x5a72c0...128a04`; mode `0x74547d...220283`; arbitrum [`0x05fc2c...d379ff`](./contracts/arbitrum-42161/0x05fc2c6045f108fd587c68e78fcdcaa0d8d379ff/); arbitrum `0x0e9c10...3d606c`; arbitrum `0x12c700...0fdfdc`; arbitrum `0x4763eb...d78fd9`; arbitrum `0x705768...21cd0f`; arbitrum `0xda5133...650e47`; arbitrum `0xe99495...a05a33`; avalanche `0x644c5c...946e1a`; avalanche `0xb9ab7e...3c5a5e`; avalanche `0xedce63...839004`; linea `0xbf831e...974ba4` | ⚠️ Unaudited |
| NFTDescriptor | token | base | n/a | 2 deployments: base [`0x0681d1...4ec818`](./contracts/base-8453/0x0681d141da398e567a677f0eaf13c8815c4ec818/); base `0x49631c...365707` | ⚠️ Unaudited |
| NFTSVG | token | base | n/a | 2 deployments: base [`0x212665...f4dc52`](./contracts/base-8453/0x212665aaea8da0a3b71a47a53b3100ef4cf4dc52/); base `0xe1c8e0...f92c04` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | optimism | unit-31980 | [`0x416b43...dc6f29`](./contracts/optimism-10/0x416b433906b1b72fa758e166e239c43d68dc6f29/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | optimism | unit-31981 | [`0xbb5dfe...56adf4`](./contracts/optimism-10/0xbb5dfe1380333cee4c2eebd7202c80de2256adf4/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | sonic | unit-31983 | [`0x12e66c...0f4406`](./contracts/sonic-146/0x12e66c8f215ddd5d48d150c8f46ad0c6fb0f4406/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | sonic | unit-31990 | [`0xa57fa3...f1542e`](./contracts/sonic-146/0xa57fa38b3fd45922394e9e1077748a2383f1542e/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | unit-32003 | [`0x827922...485b72`](./contracts/base-8453/0x827922686190790b37229fd06084350e74485b72/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | 2 deployments: base [`0xbcb131...7ca71e`](./contracts/base-8453/0xbcb1314b88811085dca2b7dd99351d41f97ca71e/); base `0xf67016...77c45a` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | unit-32006 | [`0xc741be...6a1178`](./contracts/base-8453/0xc741beb2156827704a1466575cca1cbf726a1178/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | arbitrum | unit-32010 | [`0xaa277c...e610ef`](./contracts/arbitrum-42161/0xaa277cb7914b7e5514946da92cb9de332ce610ef/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | linea | unit-32014 | [`0xaaa78e...45946a`](./contracts/linea-59144/0xaaa78e8c4241990b4ce159e105da08129345946a/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | base | n/a | 2 deployments: base [`0x01b0ca...d53c55`](./contracts/base-8453/0x01b0cacb9a8004e08d075c919b5df3b59fd53c55/); base `0xf1503a...a040ed` | ⚠️ Unaudited |
| NuriGaugeConnector | operational_periphery | fraxtal | n/a | 2 deployments: fraxtal [`0x4b7c6f...0cb202`](./contracts/fraxtal-252/0x4b7c6f757b6a62c9359eeaef9a7097e0b70cb202/); fraxtal `0x768caf...98d19f` | ⚠️ Unaudited |
| NuriGaugeRegistry | operational_periphery | fraxtal | n/a | 6 deployments: fraxtal [`0x152a4f...bdf01c`](./contracts/fraxtal-252/0x152a4f338f6765d181234d6996e6f80063bdf01c/); fraxtal `0x1c9d70...b0ed35`; fraxtal `0xa452df...3bd7c4`; fraxtal `0xd458fc...c2f268`; fraxtal `0xe4cdcb...9af07c`; fraxtal `0xf99c9b...55fc20` | ⚠️ Unaudited |
| NuriRouterConnector | adapter | fraxtal | n/a | 2 deployments: fraxtal [`0xc5542d...d9668d`](./contracts/fraxtal-252/0xc5542dceaf587de894d8c2f957cb06e134d9668d/); fraxtal `0xfb578a...7dd953` | ⚠️ Unaudited |
| NuriV3Connector | unknown | fraxtal | n/a | 6 deployments: fraxtal [`0x0f6abc...9c81a3`](./contracts/fraxtal-252/0x0f6abc6b808b377d6aed8da1fad5e135c99c81a3/); fraxtal `0x282f83...983027`; fraxtal `0x2d0fd2...c64c1d`; fraxtal `0x8bc182...60466e`; fraxtal `0x96c64d...f3fa1b`; fraxtal `0xaf18c0...fba18b` | ⚠️ Unaudited |
| OmniV3Connector | unknown | optimism | n/a | 16 deployments: optimism [`0x00dc7a...ed4d1d`](./contracts/optimism-10/0x00dc7a6cb7f1a9c7c38dbc426801133ab9ed4d1d/); optimism `0x2e075e...fbed44`; optimism `0xaa0c34...16a714`; sonic `0x842b3f...3465b8`; sonic `0xbb478c...38fd10`; sonic `0xc7d6e2...c2940b`; base `0x166efa...fc37b4`; base `0x679241...d4ca54`; base `0xa6bb36...17c436`; base `0xbd2de0...5be91a`; arbitrum `0x6e03a6...4a7276`; arbitrum `0x99f309...9fc84c`; arbitrum `0xe32472...0aec9b`; avalanche `0x064abb...16a5e0`; avalanche `0xc7ba8f...26a646`; avalanche `0xf5691e...7da704` | ⚠️ Unaudited |
| PairFactory | registry | sonic | n/a | [`0x2da25e...6374c8`](./contracts/sonic-146/0x2da25e7446a70d7be65fd4c053948becaa6374c8/) | ⚠️ Unaudited |
| PancakeInfinityAdapter | adapter | fraxtal | n/a | 11 deployments: ethereum `0x78def7...0f0425`; optimism `0xcf2a68...92a27a`; polygon `0x9774e2...a4f3ea`; sonic `0xc74965...9bacb1`; fraxtal [`0x29d829...c64125`](./contracts/fraxtal-252/0x29d82976c8babb7d5a82c78c6ef4c2a2ddc64125/); mantle `0xa91916...8337c5`; base `0xfb6b7a...d33805`; mode `0x60f610...a138a7`; arbitrum `0xcc0b08...ee50f9`; avalanche `0x7be0fe...ae0602`; linea `0x608795...d1b31a` | ⚠️ Unaudited |
| PancakeInfinityConnector | unknown | base | n/a | [`0x178b1a...677ccc`](./contracts/base-8453/0x178b1ad7d412c42c0e5baf0c091c3cb98d677ccc/) | ⚠️ Unaudited |
| PancakeInfinityFarmConnector | unknown | base | n/a | [`0xac7bb8...17fc67`](./contracts/base-8453/0xac7bb8ef90ec3d419afa2834618123285417fc67/) | ⚠️ Unaudited |
| PancakeInterfaceMulticallV2 | periphery | base | n/a | 2 deployments: base [`0x3efaab...fda2c0`](./contracts/base-8453/0x3efaab8d7a631cff5ccf5f149d1bbb3b5bfda2c0/); arbitrum `0xbffe39...f84adf` | ⚠️ Unaudited |
| PancakeMasterchefV3Connector | unknown | arbitrum | n/a | 22 deployments: ethereum `0x417e48...8e147c`; ethereum `0x4a1c26...c4b299`; ethereum `0x4d84a2...b64ffb`; ethereum `0x5d2a68...3cf1c6`; ethereum `0x96791c...a26be5`; base `0x3b4a93...8f8f69`; base `0x43be0d...7a29a4`; base `0x62842c...b59dd6`; base `0x7cae87...b57002`; base `0xe4c59e...deb46a`; arbitrum [`0x142403...dba3ff`](./contracts/arbitrum-42161/0x1424037cfbdc0eeb25a31d413c62b2408bdba3ff/); arbitrum `0x1d12ca...a98e31`; arbitrum `0x31debc...1537b5`; arbitrum `0xc26cf5...27c6d8`; arbitrum `0xf15217...4158cf`; arbitrum `0xf7b4a3...2546d5`; linea `0x3ebf49...bbf875`; linea `0x554981...06a831`; linea `0x962630...9994fb`; linea `0xbdb852...998d06`; linea `0xf15217...4158cf`; linea `0xf7b4a3...2546d5` | ⚠️ Unaudited |
| PancakeV3Connector | unknown | sonic | n/a | 25 deployments: ethereum `0x6d563f...a2ecdf`; ethereum `0x9312f6...e85d6d`; ethereum `0xa6c960...fd89ca`; ethereum `0xaf6999...d77a55`; ethereum `0xf5691e...7da704`; sonic [`0x1242d5...5fc80b`](./contracts/sonic-146/0x1242d59fecface4ce7f2a59896537f95255fc80b/); sonic `0x45b83b...372569`; sonic `0xe953ca...40e09b`; base `0x635737...63b92d`; base `0xa1ddfe...e3d9fd`; base `0xb1466a...2aca07`; base `0xbc9725...ad4171`; base `0xc8e6ac...67f245`; base `0xfe653b...62cfbc`; arbitrum `0x6cf3b0...5c62d3`; arbitrum `0xb051f3...800307`; arbitrum `0xb2866b...b9e17b`; arbitrum `0xd65eaf...53773d`; arbitrum `0xe8db41...c6a9bc`; arbitrum `0xe9ef6d...9a7ab1`; linea `0x1d12ca...a98e31`; linea `0x6cf3b0...5c62d3`; linea `0xa7abc7...952aba`; linea `0xb051f3...800307`; linea `0xc50d61...456bd2` | ⚠️ Unaudited |
| PancakeV3LmPoolDeployer | core_logic | arbitrum | n/a | 2 deployments: base `0xa0dd04...a0f4eb`; arbitrum [`0x1c1081...1d7ecd`](./contracts/arbitrum-42161/0x1c1081e2bb3c2f3805bc89e1951c15be551d7ecd/) | ⚠️ Unaudited |
| PangolinV3Connector | unknown | avalanche | n/a | [`0x06e2ea...f34593`](./contracts/avalanche-43114/0x06e2eaea943cacc9c39d170330219218c4f34593/) | ⚠️ Unaudited |
| ParaswapConnector | unknown | arbitrum | n/a | 2 deployments: base `0xace729...8fc17b`; arbitrum [`0x462929...806c2d`](./contracts/arbitrum-42161/0x46292986df2fee3a048dd6753918e62e93806c2d/) | ⚠️ Unaudited |
| PatchedManagedRewardsFactory | registry | base | n/a | [`0x3ab1a1...1be23d`](./contracts/base-8453/0x3ab1a16622bc5bdd1619d427fb1a6f73c71be23d/) | ⚠️ Unaudited |
| PerlinNoise | unknown | base | n/a | [`0x0b3a74...d9990e`](./contracts/base-8453/0x0b3a7479694d678fb34ef737811cb31b9dd9990e/) | ⚠️ Unaudited |
| PharaohGaugeRegistry | operational_periphery | avalanche | n/a | [`0xeb401e...22173a`](./contracts/avalanche-43114/0xeb401ee88149ef9e0230655b8e72c550d822173a/) | ⚠️ Unaudited |
| PharaohRouterConnector | adapter | avalanche | n/a | [`0x24c9d5...012611`](./contracts/avalanche-43114/0x24c9d584b5e2e1d61f30db6d1baca16360012611/) | ⚠️ Unaudited |
| PharaohV2GaugeConnector | operational_periphery | avalanche | n/a | [`0xdfc520...a2d4d2`](./contracts/avalanche-43114/0xdfc5207f1d0797a8544f16bfdf44d8bfc5a2d4d2/) | ⚠️ Unaudited |
| PharaohV3Connector | unknown | avalanche | n/a | 2 deployments: avalanche [`0x119ed2...3877f5`](./contracts/avalanche-43114/0x119ed29f4398c6909d14675bc726e405b13877f5/); avalanche `0x8125f3...7d27fb` | ⚠️ Unaudited |
| ProtocolGovernor | governance | base | n/a | [`0x94c012...33f410`](./contracts/base-8453/0x94c012a23a8a65a6f40608da30534a46a433f410/) | ⚠️ Unaudited |
| QuickswapV3Connector | unknown | polygon | n/a | 5 deployments: polygon [`0x09fadb...380d4d`](./contracts/polygon-137/0x09fadb29cfd15abd73afb007d205c13416380d4d/); polygon `0x4f8833...e71780`; polygon `0x84676e...136f8a`; polygon `0x991ce3...a88581`; polygon `0xdf70bb...316916` | ⚠️ Unaudited |
| Quoter | periphery | sonic | n/a | [`0x3003b4...d79dc7`](./contracts/sonic-146/0x3003b4feaff95e09683feb7fc5d11b330cd79dc7/) | ⚠️ Unaudited |
| QuoterV2 | periphery | sonic | n/a | 6 deployments: optimism `0x89d821...621466`; sonic [`0x219b7a...07535a`](./contracts/sonic-146/0x219b7adebc0935a3ec889a148c6924d51a07535a/); base `0x254cf9...ae15b0`; base `0x9b8731...dca185`; base `0xbb6ad0...c9fa84`; base `0xbe0ec7...9762d7` | ⚠️ Unaudited |
| RamsesGaugeConnector | operational_periphery | arbitrum | n/a | 11 deployments: mantle `0x0d3e1d...16c0c2`; mantle `0x1bfe63...389700`; arbitrum [`0x02099a...9bf271`](./contracts/arbitrum-42161/0x02099a96d5ef6996d0718e34a229f9c1f79bf271/); arbitrum `0x117239...5e780a`; arbitrum `0x2ebbde...0815e1`; arbitrum `0x9b6f97...39862d`; arbitrum `0xd68532...faf0d1`; avalanche `0x400b2d...bba104`; avalanche `0x5e8c2c...fb7719`; linea `0x9b6f97...39862d`; linea `0xa5d2d3...b0daee` | ⚠️ Unaudited |
| RamsesGaugeRegistry | operational_periphery | mantle | n/a | 25 deployments: mantle [`0x125caf...4cb45e`](./contracts/mantle-5000/0x125caffe923eaa451461ab98353c4a88154cb45e/); mantle `0x6f3e8f...bc3fe3`; arbitrum `0x2d0fd2...c64c1d`; arbitrum `0x5a1bc8...5516ed`; arbitrum `0xa60ca9...c199d5`; arbitrum `0xa92424...1b039f`; arbitrum `0xb61643...030262`; arbitrum `0xc07b5d...822b8a`; arbitrum `0xc8d036...b076b0`; arbitrum `0xded5c1...ed9938`; arbitrum `0xf2cfa4...1a8832`; arbitrum `0xfff75d...4761c8`; avalanche `0x18ecff...17c54b`; avalanche `0x298614...f2b6db`; avalanche `0x6f3e8f...bc3fe3`; avalanche `0xc6aacd...1fc2e6`; avalanche `0xd5e121...6079bb`; avalanche `0xd737c5...704d87`; avalanche `0xfb903b...7365c8`; linea `0x7a78c4...cfb411`; linea `0x97e7e3...ceec69`; linea `0xc07b5d...822b8a`; linea `0xc393c1...e9cec5`; linea `0xe894c5...ed39c3`; linea `0xf2cfa4...1a8832` | ⚠️ Unaudited |
| RamsesV2GaugeFactory | operational_periphery | arbitrum | unit-32011 | [`0xaa2fbd...ae4fda`](./contracts/arbitrum-42161/0xaa2fbd0c9393964af7c66c1513e44a8caaae4fda/) | ⚠️ Unaudited |
| RamsesV3Factory | registry | sonic | n/a | [`0xcd2d06...8de6d7`](./contracts/sonic-146/0xcd2d0637c94fe77c2896bbcbb174ceffb08de6d7/) | ⚠️ Unaudited |
| RamsesV3PoolRegistry | registry | arbitrum | n/a | 2 deployments: arbitrum [`0xa452df...3bd7c4`](./contracts/arbitrum-42161/0xa452df37e4f845c15f49489486a9b4e8323bd7c4/); arbitrum `0xf6d5c2...7db262` | ⚠️ Unaudited |
| RebalanceLib | unknown | base | n/a | 2 deployments: base [`0x8660fb...83e9cb`](./contracts/base-8453/0x8660fbea7b5894dac9896de14b3576241d83e9cb/); base `0xdb5098...cf2018` | ⚠️ Unaudited |
| RebalanceStrategy | core_logic | arbitrum | n/a | 9 deployments: base `0x463353...4cc8b6`; base `0x4de78f...b65582`; base `0x75d57c...d59a16`; base `0x9545d2...dbd03a`; base `0x96791c...a26be5`; base `0xa5d2d3...b0daee`; base `0xc26cf5...27c6d8`; arbitrum [`0x2edcc1...295bd1`](./contracts/arbitrum-42161/0x2edcc187e0eb6a04d792ceaa1a1b7ad537295bd1/); arbitrum `0x78a515...9889cf` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | base | n/a | 2 deployments: optimism `0x9d4736...1ea99b`; base [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | ⚠️ Unaudited |
| Router | adapter | sonic | n/a | 3 deployments: optimism `0xa062ae...8b2858`; sonic [`0x1d3687...330cdc`](./contracts/sonic-146/0x1d368773735ee1e678950b7a97bca2cafb330cdc/); base `0xcf77a3...874e43` | ⚠️ Unaudited |
| ShadowGaugeRegistry | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x1d12ca...a98e31`](./contracts/sonic-146/0x1d12ca87c7058ec4c87a402f28b1c88281a98e31/); sonic `0xbaa884...31e636` | ⚠️ Unaudited |
| ShadowRouterConnector | adapter | sonic | n/a | 2 deployments: sonic [`0x45c831...af3611`](./contracts/sonic-146/0x45c83123c70bd9a8a4444d633dc233143aaf3611/); sonic `0x554981...06a831` | ⚠️ Unaudited |
| ShadowV2GaugeConnector | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x9b565f...e9a8a0`](./contracts/sonic-146/0x9b565f6bf3b306b224ed2d690e4b893127e9a8a0/); sonic `0xaf5833...b5724e` | ⚠️ Unaudited |
| ShadowV3Connector | unknown | sonic | n/a | 5 deployments: sonic [`0x1ac18a...46ebb7`](./contracts/sonic-146/0x1ac18a9ff2751e26a513acd419220a8b4e46ebb7/); sonic `0xdadd28...79d995`; sonic `0xe894c5...ed39c3`; sonic `0xea4b92...d349b1`; sonic `0xf2cfa4...1a8832` | ⚠️ Unaudited |
| ShadowV3GaugeConnector | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x3ebf49...bbf875`](./contracts/sonic-146/0x3ebf49368d8449b2c11602827fec41970dbbf875/); sonic `0xdfaf68...a2d648` | ⚠️ Unaudited |
| SickleGovernor | governance | base | n/a | 2 deployments: base [`0x5a1b74...e7889b`](./contracts/base-8453/0x5a1b745155b556216b35b615cd7e2ab01fe7889b/); arbitrum `0xc6013e...489c99` | ⚠️ Unaudited |
| SickleVote | unknown | arbitrum | n/a | 2 deployments: base `0x76fb09...5dd487`; arbitrum [`0x233d90...567168`](./contracts/arbitrum-42161/0x233d9067677dcf1a161954d45b4c965b9d567168/) | ⚠️ Unaudited |
| SimpleFarmStrategy | core_logic | arbitrum | n/a | 11 deployments: optimism `0xff638d...3d9452`; base `0x34ec3c...70f65f`; base `0x48ea9d...6bee4d`; base `0x9960bd...3b9d96`; base `0x9b3811...e72306`; base `0xac8375...d837e9`; base `0xfc5254...72441a`; arbitrum [`0x0ecda5...7409b6`](./contracts/arbitrum-42161/0x0ecda55d6435de080ca26b10873a8bf4da7409b6/); arbitrum `0x32ddff...a64b72`; arbitrum `0x83631c...590c4a`; arbitrum `0xb71907...3cb72c` | ⚠️ Unaudited |
| SimpleLendingStrategy | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x223641...4bd69b`](./contracts/ethereum-1/0x223641e6866f9ce54c4a5783827ca9a6924bd69b/); ethereum `0x28abd9...661a7b`; ethereum `0x8874e9...bad828`; ethereum `0xa9bb3b...a655d4` | ⚠️ Unaudited |
| SinkManager | governance | optimism | n/a | [`0x5aee5f...abcdae`](./contracts/optimism-10/0x5aee5f0e6c2055ebd776db25f48f6c9a68abcdae/) | ⚠️ Unaudited |
| SlipstreamRouterAdapter | adapter | polygon | n/a | 11 deployments: ethereum `0xf228fb...da3a13`; optimism `0xd82b54...09694d`; polygon [`0x1cf744...94e5fd`](./contracts/polygon-137/0x1cf744378c3b794caa6c2e504d6dbad36994e5fd/); sonic `0xc55c0b...06f473`; fraxtal `0xb3dc04...325ee1`; mantle `0x660bb0...d2b8e4`; base `0xa94fc8...f71d7c`; mode `0xaf8afa...c867e6`; arbitrum `0xda8414...ffe663`; avalanche `0x7c2753...2c1bf5`; linea `0xbea0e4...16cf28` | ⚠️ Unaudited |
| SlipstreamSugar | unknown | mode | n/a | [`0xba3aee...5041ca`](./contracts/mode-34443/0xba3aee516399388c779463183d00bb579f5041ca/) | ⚠️ Unaudited |
| SmartChefFactory | registry | base | n/a | 2 deployments: base [`0xd0a3f3...f886d8`](./contracts/base-8453/0xd0a3f3994ecc341f2e5c3aa548c21aa1bdf886d8/); arbitrum `0xd621a4...783d6c` | ⚠️ Unaudited |
| SolidlyAdapter | adapter | arbitrum | n/a | 11 deployments: ethereum `0x3ef42f...a9bdae`; optimism `0x3047d9...530fbe`; polygon `0x8940e0...22025f`; sonic `0xb4ec0d...e2a2b2`; fraxtal `0xd65eaf...53773d`; mantle `0x4de060...983de7`; base `0x75bb8b...e1253f`; mode `0x48ea9d...6bee4d`; arbitrum [`0x1397e2...e58e22`](./contracts/arbitrum-42161/0x1397e210e7ffcb3242ddcec61ccfca7127e58e22/); avalanche `0xc865db...0c4d12`; linea `0x96613d...9a2a8d` | ⚠️ Unaudited |
| SteerRewarderConnector | unknown | sonic | n/a | [`0x064abb...16a5e0`](./contracts/sonic-146/0x064abb264f2290b5d69345426ac9031bec16a5e0/) | ⚠️ Unaudited |
| SugarHelper | periphery | base | n/a | 3 deployments: base [`0x6d2d73...32f8e1`](./contracts/base-8453/0x6d2d739bf37dfd93d804523c2dfa948eaf32f8e1/); base `0x93f3fd...49e0c4`; base `0xa555e5...7cb275` | ⚠️ Unaudited |
| SuperchainGaugeRegistry | operational_periphery | mode | n/a | 7 deployments: unichain `0x74547d...220283`; fraxtal `0x2ebbde...0815e1`; fraxtal `0x5ce9c2...851cdf`; fraxtal `0xded5c1...ed9938`; mode [`0x14d55a...0a0b1d`](./contracts/mode-34443/0x14d55a1528b876d792b08436e32619a1ef0a0b1d/); mode `0xb347cd...cdfc18`; mode `0xc7ba8f...26a646` | ⚠️ Unaudited |
| SwapRouter | adapter | optimism | n/a | 12 deployments: ethereum `0xb6d55b...49a2c1`; optimism [`0x0792a6...cc9676`](./contracts/optimism-10/0x0792a633f0c19c351081cf4b211f68f79bcc9676/); optimism `0x8513e5...a4b1f1`; polygon `0x7badae...03804f`; sonic `0x099894...73a8c1`; fraxtal `0x0eb29e...ddb08a`; mantle `0x564dde...68dae1`; base `0x7424c3...dc657e`; mode `0x428ef7...edd75c`; arbitrum `0x917c50...198be4`; avalanche `0xf6e2d1...6d92c7`; linea `0x0e1044...3bc311` | ⚠️ Unaudited |
| SwapRouter | adapter | sonic | unit-31985 | [`0x5543c6...e2d695`](./contracts/sonic-146/0x5543c6176feb9b4b179078205d7c29eea2e2d695/) | ⚠️ Unaudited |
| SwapRouter | adapter | base | unit-32004 | [`0xbe6d8f...6d18a5`](./contracts/base-8453/0xbe6d8f0d05cc4be24d5167a3ef062215be6d18a5/) | ⚠️ Unaudited |
| SwapxGaugeConnector | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x463353...4cc8b6`](./contracts/sonic-146/0x46335341a458740fe6e82bbcae4fd9fdc94cc8b6/); sonic `0xc393c1...e9cec5` | ⚠️ Unaudited |
| SwapxGaugeRegistry | operational_periphery | sonic | n/a | 2 deployments: sonic [`0xbdb926...cb719f`](./contracts/sonic-146/0xbdb926f4f05c9af08af3d36df37127a396cb719f/); sonic `0xe70721...0172e7` | ⚠️ Unaudited |
| SwapxRouterConnector | adapter | sonic | n/a | 2 deployments: sonic [`0xa7abc7...952aba`](./contracts/sonic-146/0xa7abc7b3fd66b019877bc29c9158bd5500952aba/); sonic `0xe6edb7...345bae` | ⚠️ Unaudited |
| SwapxV3Connector | unknown | sonic | n/a | 5 deployments: sonic [`0x19ff84...631cd8`](./contracts/sonic-146/0x19ff84fb5f66a45f57709dae5ee4942212631cd8/); sonic `0xa3a42b...c635d7`; sonic `0xd621f3...bc735a`; sonic `0xe0266e...b13a68`; sonic `0xf15217...4158cf` | ⚠️ Unaudited |
| ThenaV3Connector | unknown | sonic | n/a | 8 deployments: ethereum `0xfa7573...fe14f4`; sonic [`0x1e2bc5...612f72`](./contracts/sonic-146/0x1e2bc5c694af33a3dd8dc8f06b7b959e70612f72/); sonic `0x2a9ac5...18c1bf`; sonic `0x69b596...fce086`; sonic `0x899fb4...687cc5`; sonic `0x9b6f97...39862d`; sonic `0xa5d2d3...b0daee`; base `0xd6080a...9fd2e1` | ⚠️ Unaudited |
| TimelockController | governance | arbitrum | n/a | 4 deployments: polygon `0x472351...fe3717`; polygon `0x7f4b6f...1f8a6f`; base `0xfb6190...63375c`; arbitrum [`0x34f895...70968c`](./contracts/arbitrum-42161/0x34f895a2b90e60721a046a7cbf330ca74070968c/) | ⚠️ Unaudited |
| Trig | unknown | base | n/a | [`0x1d75c4...1a216f`](./contracts/base-8453/0x1d75c4dda3d28b4f2ab634c439e495cf211a216f/) | ⚠️ Unaudited |
| UniversalRouter | adapter | optimism | n/a | 10 deployments: optimism [`0x4bf3e3...1142fc`](./contracts/optimism-10/0x4bf3e32de155359d1d75e8b474b66848221142fc/); optimism `0xf132bd...3eb817`; sonic `0x92643d...04a9c2`; base `0x6cb442...00be3e`; base `0x72d22d...e454f6`; base `0xf07835...a4da2a`; base `0xf8d44c...a92876`; arbitrum `0xa65342...986275`; arbitrum `0xc82ffd...686c56`; arbitrum `0xd26eef...7a60b7` | ⚠️ Unaudited |
| UnsupportedProtocol | unknown | arbitrum | n/a | [`0x2ab1e8...c38921`](./contracts/arbitrum-42161/0x2ab1e83920f884a96f231a72bccdebb7bfc38921/) | ⚠️ Unaudited |
| VeArtProxy | unknown | base | n/a | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | ⚠️ Unaudited |
| Velo | token | optimism | n/a | [`0x9560e8...1088db`](./contracts/optimism-10/0x9560e827af36c94d2ac33a39bce1fe78631088db/) | ⚠️ Unaudited |
| VelodromeUniversalRouterAdapter | adapter | polygon | n/a | 11 deployments: ethereum `0xd6a993...12df7b`; optimism `0x71f41c...1faf6f`; polygon [`0x1732e3...1e320f`](./contracts/polygon-137/0x1732e3ebc63e8d7c5d32ba8e9bd40982c21e320f/); sonic `0x5310bc...04687a`; fraxtal `0xa8758f...e2ae2e`; mantle `0xbd6946...513156`; base `0xef054b...89c34c`; mode `0xfea81b...f4a0e4`; arbitrum `0x9fe21b...fa27c7`; avalanche `0x7c3c3d...6fe019`; linea `0xe4c68a...e371a1` | ⚠️ Unaudited |
| VeMoe | unknown | mantle | unit-31994 | [`0x55160b...01dee7`](./contracts/mantle-5000/0x55160b0f39848a7b844f3a562210489df301dee7/) | ⚠️ Unaudited |
| VestingContract | operational_periphery | mantle | n/a | 11 deployments: mantle [`0x1549de...2a14f6`](./contracts/mantle-5000/0x1549de86b2de4f619663841b276b1a62002a14f6/); mantle `0x315299...05a8c5`; mantle `0x3905f5...c157cd`; mantle `0x55d86a...7bb554`; mantle `0x55e583...83b689`; mantle `0x55edc7...993fbb`; mantle `0x78bb8f...02894f`; mantle `0x920803...a925da`; mantle `0x9b86c2...80300f`; mantle `0xb9e9dc...98f4c4`; mantle `0xffdeab...741602` | ⚠️ Unaudited |
| VoteModule | unknown | sonic | n/a | [`0xdcb5a2...b666b4`](./contracts/sonic-146/0xdcb5a24ec708cc13cee12bfe6799a78a79b666b4/) | ⚠️ Unaudited |
| Voter | unknown | base | n/a | 3 deployments: optimism `0x41c914...5abf3c`; sonic `0x3af1dd...838f4f`; base [`0x166135...c480a5`](./contracts/base-8453/0x16613524e02ad97edfef371bc883f2f5d6c480a5/) | ⚠️ Unaudited |
| Voter | unknown | arbitrum | unit-32012 | [`0xaaa256...91f499`](./contracts/arbitrum-42161/0xaaa2564deb34763e3d05162ed3f5c2658691f499/) | ⚠️ Unaudited |
| Voter | unknown | linea | unit-32016 | [`0xaaaf3d...8d9869`](./contracts/linea-59144/0xaaaf3d9cdd3602d117c67d80eec37a160c8d9869/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | base | n/a | 2 deployments: optimism `0xfaf8fd...06787d`; base [`0xebf418...67e6b4`](./contracts/base-8453/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4/) | ⚠️ Unaudited |
| VotingRewardsFactory | registry | base | n/a | [`0x45ca74...52b504`](./contracts/base-8453/0x45ca74858c579e717ee29a86042e0d53b252b504/) | ⚠️ Unaudited |
| WindswapGaugeRegistry | operational_periphery | base | n/a | [`0xf95488...2a1e6b`](./contracts/base-8453/0xf95488cbe02fcfe165d0c7b33dca2979472a1e6b/) | ⚠️ Unaudited |
| WrapAdapter | adapter | mantle | n/a | 11 deployments: ethereum `0x27e6ee...a34afd`; optimism `0x1fb1c3...736196`; polygon `0x353868...ad7d97`; sonic `0x28abd9...661a7b`; fraxtal `0xd826da...b050ea`; mantle [`0x1e2bc5...612f72`](./contracts/mantle-5000/0x1e2bc5c694af33a3dd8dc8f06b7b959e70612f72/); base `0x708a48...1dbc03`; mode `0x916858...a708e6`; arbitrum `0x464f20...3454a7`; avalanche `0xd6cdd9...fbcb61`; linea `0xf0adad...140fd4` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (7)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Automation | unknown | fraxtal | n/a | 43 deployments: ethereum `0x3f3126...10034c`; ethereum `0x55bb01...75685c`; optimism `0x0ce036...1c48e2`; optimism `0x4074e0...410cbb`; optimism `0x9cf258...471447`; polygon `0x1c9d70...b0ed35`; polygon `0x5acb2e...14715c`; polygon `0xb07d6a...c1299f`; sonic `0x233d90...567168`; sonic `0x506a53...19afc2`; sonic `0xa2dc70...673d80`; fraxtal [`0x04a606...9e51e7`](./contracts/fraxtal-252/0x04a606605f3d0d1d4781a12fca38fd7aea9e51e7/); fraxtal `0x5a2516...05cd3e`; fraxtal `0xb9e443...e75bc2`; mantle `0xcaa3a4...5885fd`; base `0x0db76e...7f86d0`; base `0x0e6701...79a890`; base `0x1e33f2...77176b`; base `0x9903fb...534ce9`; base `0x9ab3e4...1df7ea`; base `0xd2d4e3...5e2ada`; base `0xebe78f...9f47d2`; base `0xf01c61...128942`; mode `0x4ab9eb...ebe8f7`; mode `0x606448...c0721e`; mode `0x856c99...fa5095`; mode `0xd34d13...878dd2`; mode `0xea895d...e168ff`; mode `0xf6d5c2...7db262`; arbitrum `0x0f6abc...9c81a3`; arbitrum `0x19216f...5467f1`; arbitrum `0x240bd1...87bade`; arbitrum `0x4ca667...b207d3`; arbitrum `0x4f8833...e71780`; arbitrum `0x661874...bc34df`; arbitrum `0x7671cb...692171`; arbitrum `0xb5c190...79cc26`; avalanche `0x5fe05d...2c9279`; avalanche `0xf1ce0e...a4a0a7`; avalanche `0xff8444...14460d`; linea `0x05a651...071427`; linea `0xc49775...4bdfed`; linea `0xc7ba8f...26a646` | ✅ Audited (bytecode match) |
| NftSettingsRegistry | registry | avalanche | n/a | 18 deployments: ethereum `0xc8695f...210ffc`; ethereum `0xe7feb1...efce31`; optimism `0x2def4a...e74bd3`; optimism `0x776918...d6d790`; optimism `0x8fb72a...2fcadc`; polygon `0x372e77...2c5083`; polygon `0x83631c...590c4a`; sonic `0x661874...bc34df`; fraxtal `0x472351...fe3717`; mantle `0x8a09b9...eec40d`; base `0x4763eb...d78fd9`; base `0xf308ba...f06f29`; mode `0x49606f...d4890d`; arbitrum `0x43b203...0f988d`; arbitrum `0xe4db0c...700d8f`; avalanche [`0x2d6a2a...9f6940`](./contracts/avalanche-43114/0x2d6a2a8837bad9ce42bbec462fa62900439f6940/); avalanche `0xc6013e...489c99`; linea `0x364796...7c14ae` | ✅ Audited (bytecode match) |
| Sickle | unknown | base | n/a | 13 deployments: ethereum `0x608795...d1b31a`; optimism `0xadd2b1...41e353`; polygon `0x34f895...70968c`; polygon `0x3575aa...9622e6`; mantle `0xf2d8ae...f2ff68`; base [`0x152a4f...bdf01c`](./contracts/base-8453/0x152a4f338f6765d181234d6996e6f80063bdf01c/); base `0x3949a9...5b632e`; base `0x76fe03...414b2f`; base `0x7f4b6f...1f8a6f`; base `0x85378f...e4d7c2`; base `0xa77d2d...7f2823`; base `0xbeac74...f9c460`; avalanche `0x7f4b6f...1f8a6f` | ✅ Audited (bytecode match) |
| SlipstreamGaugeConnector | operational_periphery | optimism | n/a | 15 deployments: optimism [`0x023038...a0efc3`](./contracts/optimism-10/0x023038ffdbe72857633d8bf4562d47155ba0efc3/); optimism `0x337c2d...e12b59`; unichain `0x5c7077...8b508e`; unichain `0xb60ab0...9a0d76`; fraxtal `0x32ddff...a64b72`; fraxtal `0x5c2866...7e6407`; base `0x09e616...0d19cd`; base `0x1397e2...e58e22`; base `0x353868...ad7d97`; base `0x4c0639...7bbb07`; base `0xc4d912...26abaf`; base `0xeb76cb...d15e69`; base `0xfac2a4...4e603a`; mode `0xa8758f...e2ae2e`; mode `0xaef14a...4839ec` | ✅ Audited (bytecode match) |
| SlipstreamNftConnector | token | base | n/a | 32 deployments: optimism `0x040df7...39c686`; optimism `0x2881ba...96a4f3`; optimism `0x791436...ff4d6c`; optimism `0xa36383...bfbcab`; optimism `0xb29c27...f0a0c5`; unichain `0x07d5a8...787104`; unichain `0x2ebbde...0815e1`; unichain `0x72b10d...7bef2e`; unichain `0x768caf...98d19f`; unichain `0x7affad...181fe2`; fraxtal `0x1c5a06...e0b142`; fraxtal `0x9d70b9...ab7f95`; fraxtal `0xad4dd7...d5864b`; fraxtal `0xb60ab0...9a0d76`; fraxtal `0xfd2d0d...d850e7`; base [`0x008567...123029`](./contracts/base-8453/0x00856733aa4ad4ef7a664d26f04ae12037123029/); base `0x13636d...ce5c38`; base `0x151f71...298b6d`; base `0x2209c4...251cc7`; base `0x5c204b...fa7bb2`; base `0x6a6f4d...671478`; base `0x85d7e0...faa3b3`; base `0x9d80ce...7bf9f1`; base `0xa91916...8337c5`; base `0xb156de...33ab3d`; base `0xda56db...bd67fe`; mode `0x125caf...4cb45e`; mode `0x29d829...c64125`; mode `0x5c204b...fa7bb2`; mode `0xa6002c...636430`; mode `0xd826da...b050ea`; mode `0xfff75d...4761c8` | ✅ Audited (bytecode match) |
| SweepStrategy | core_logic | base | n/a | 34 deployments: ethereum `0x3b8886...01e1f3`; ethereum `0x3f1b56...da2261`; ethereum `0xbaa471...173be0`; optimism `0x194d7b...cc7172`; optimism `0x9b6049...ab4f5c`; unichain `0x4f025a...f5a5fd`; polygon `0x266ebc...74e012`; polygon `0x64f435...7403ce`; polygon `0xa7c8ec...b1f33b`; polygon `0xbfd418...5537d5`; sonic `0x0f592f...0fe04f`; sonic `0x9960bd...3b9d96`; fraxtal `0x661874...bc34df`; fraxtal `0x991ce3...a88581`; mantle `0x40bd94...78d34c`; base [`0x0c2191...adbff2`](./contracts/base-8453/0x0c2191d08d283120f663270616a1fe7bfaadbff2/); base `0x29d829...c64125`; base `0x5048c0...7c235d`; base `0x917c50...198be4`; base `0x951ba1...df11ef`; base `0xad3349...0ab5bb`; base `0xf8818d...872a72`; mode `0xfb903b...7365c8`; arbitrum `0x529048...4d665f`; arbitrum `0x54d81f...94eacf`; arbitrum `0x76fe03...414b2f`; arbitrum `0x8e5ad3...228865`; arbitrum `0xde181c...2284f4`; arbitrum `0xf5090d...d56fba`; avalanche `0x0f592f...0fe04f`; avalanche `0x67e80f...9862cd`; avalanche `0x8a09b9...eec40d`; linea `0x13c59e...125089`; linea `0xf5090d...d56fba` | ✅ Audited (bytecode match) |
| VelodromeRouterConnector | adapter | optimism | n/a | 9 deployments: optimism [`0x5bf353...3c81bf`](./contracts/optimism-10/0x5bf3530851c971cf93467136eb4169d2c63c81bf/); optimism `0xa94afa...2b09c9`; unichain `0xb5c190...79cc26`; unichain `0xf8d2b5...f980cb`; fraxtal `0x856c99...fa5095`; fraxtal `0x8bb906...548289`; mode `0x6fa6a0...f23dbe`; mode `0x84bf32...dba11a`; mode `0xf99c9b...55fc20` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (7)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AcrossV3AmountAdapter | adapter | base | n/a | 8 deployments: ethereum `0x64312b...ff72b7`; optimism `0x5a535a...2d086a`; unichain `0x928561...a3029b`; polygon `0x74547d...220283`; base [`0x21c690...9d11fa`](./contracts/base-8453/0x21c690aea1cd096e291b3132cdef4a1a0c9d11fa/); mode `0xa4fb47...552682`; arbitrum `0x9ed5aa...753e89`; linea `0x31b731...3cba1f` | ⚠️ Unaudited (bytecode match) |
| AggregatorConnector | unknown | base | n/a | 109 deployments: ethereum `0x21bc4f...0c37c5`; ethereum `0x2a2128...eb4aaa`; ethereum `0x5ed2b2...d99f69`; ethereum `0xd2d4e3...5e2ada`; optimism `0x2d68af...15a8e6`; optimism `0x4b01cc...d2602b`; optimism `0x78ef54...e9a180`; unichain `0x4a1daa...a7b5b3`; unichain `0x606448...c0721e`; unichain `0x74a9ad...21321e`; unichain `0x78a515...9889cf`; unichain `0xde181c...2284f4`; polygon `0x06b559...4d59b5`; polygon `0x0ecda5...7409b6`; polygon `0x114f84...8b8f16`; polygon `0x117239...5e780a`; polygon `0x2d6a2a...9f6940`; polygon `0x2edcc1...295bd1`; polygon `0x3fa766...674a55`; polygon `0x4394a4...96dde1`; polygon `0x529048...4d665f`; polygon `0x5a6584...aec8f8`; polygon `0x6eedd0...1a8ce5`; polygon `0x76fe03...414b2f`; polygon `0x7fcd85...ecce87`; polygon `0x942867...0e74d3`; polygon `0xb71907...3cb72c`; polygon `0xb7ef14...e373ac`; polygon `0xbfc621...2e3401`; polygon `0xc64cfb...2a2d4d`; polygon `0xcf82a6...51d508`; polygon `0xf6d5c2...7db262`; polygon `0xff8444...14460d`; sonic `0x5bc457...472566`; sonic `0x6a7bbf...7de5cf`; sonic `0x7a78c4...cfb411`; sonic `0xa91916...8337c5`; sonic `0xd1095a...a46924`; fraxtal `0x7affad...181fe2`; fraxtal `0xea895d...e168ff`; mantle `0x1732e3...1e320f`; mantle `0x2a2d2d...7e0deb`; mantle `0xf80494...ade5ac`; base [`0x00f495...f9bc39`](./contracts/base-8453/0x00f495b2f613e6ac50c22fe55c1399c94cf9bc39/); base `0x0581d2...9c7962`; base `0x089bb8...0ff675`; base `0x0ff9c7...d953c9`; base `0x115a16...0264c0`; base `0x2552ed...3a0cf0`; base `0x28877b...3d4ffe`; base `0x3747fd...af9f38`; base `0x38e118...f96ba5`; base `0x452c51...848f77`; base `0x45d7d3...3ad7fb`; base `0x6a50ff...3290d7`; base `0x6d9a4c...da99fb`; base `0x801407...425396`; base `0x81d34d...f73c4f`; base `0x8ef6e4...c9cfa9`; base `0x9280b5...21e9b9`; base `0x96fbe1...6bcaf3`; base `0x9d5019...26573a`; base `0x9fe21b...fa27c7`; base `0xa19813...709b0d`; base `0xb7aaa3...bc9841`; base `0xbfdec1...3f4724`; base `0xc644f0...190884`; base `0xca32d7...b7e7b3`; base `0xe207cd...d817ca`; base `0xe744db...14c8a2`; base `0xf14d08...36e8b8`; mode `0x0d3e1d...16c0c2`; mode `0x49da01...018c92`; mode `0x4c0639...7bbb07`; mode `0xded5c1...ed9938`; arbitrum `0x059571...3b74c1`; arbitrum `0x0eb29e...ddb08a`; arbitrum `0x296b3f...e2d03c`; arbitrum `0x2d1732...413d0f`; arbitrum `0x2d6a2a...9f6940`; arbitrum `0x2f480c...171d1a`; arbitrum `0x49da01...018c92`; arbitrum `0x71d234...baac31`; arbitrum `0x768615...37bf4a`; arbitrum `0x797683...9b4c9e`; arbitrum `0x7b22cc...f70ba6`; arbitrum `0x7d055e...a36700`; arbitrum `0x923021...70f2f0`; arbitrum `0x99800f...36a8ed`; arbitrum `0x9b14c4...b3f557`; arbitrum `0xa57336...d8d15e`; arbitrum `0xa92b57...daeb01`; arbitrum `0xab2ee5...3518be`; arbitrum `0xb3dc04...325ee1`; arbitrum `0xc5542d...d9668d`; arbitrum `0xd1b264...890774`; arbitrum `0xd290f6...212691`; arbitrum `0xd458fc...c2f268`; arbitrum `0xd6b71d...4f5a5b`; arbitrum `0xde3f58...23165d`; arbitrum `0xe232e5...1eac7b`; arbitrum `0xff8444...14460d`; avalanche `0x364796...7c14ae`; avalanche `0xc8695f...210ffc`; avalanche `0xd95b78...7e9303`; avalanche `0xed67e7...b3805a`; linea `0x2a9ac5...18c1bf`; linea `0x45b83b...372569`; linea `0x5a1bc8...5516ed` | ⚠️ Unaudited (bytecode match) |
| ExactTransferLib | unknown | optimism | n/a | 12 deployments: ethereum `0xb576b9...7d8a68`; optimism [`0x0cfed1...c55302`](./contracts/optimism-10/0x0cfed16b402116eacac8b0e85bb46530a7c55302/); unichain `0xa66aef...c8293a`; polygon `0xf80494...ade5ac`; sonic `0xa741d2...7674da`; fraxtal `0x8a09b9...eec40d`; mantle `0x60f610...a138a7`; base `0xd0debc...7548c3`; mode `0x364796...7c14ae`; arbitrum `0xbe2c2b...04925e`; avalanche `0x7c0968...74f994`; linea `0xdf103a...7c8831` | ⚠️ Unaudited (bytecode match) |
| RamsesRouterConnector | unknown | mantle | n/a | 11 deployments: mantle [`0x2eb61c...7b0427`](./contracts/mantle-5000/0x2eb61ceb6bd6f91587a5616fab0f5fbcab7b0427/); mantle `0x5d2fc3...f2ed53`; arbitrum `0x49ddd7...eae5c6`; arbitrum `0x5f60b6...14dcc3`; arbitrum `0x65d9da...688d56`; arbitrum `0x768caf...98d19f`; arbitrum `0x8a09b9...eec40d`; avalanche `0x475a0f...52d8e4`; avalanche `0x4a1c26...c4b299`; linea `0xaf5833...b5724e`; linea `0xba74d4...abe076` | ⚠️ Unaudited (bytecode match) |
| RamsesV3Connector | unknown | arbitrum | n/a | 29 deployments: mantle `0x629d5c...e92262`; mantle `0x84bf32...dba11a`; mantle `0xa260cd...c53a8c`; mantle `0xa66aef...c8293a`; mantle `0xaef14a...4839ec`; mantle `0xbf0230...ca02f7`; arbitrum [`0x194cdf...8f9f9a`](./contracts/arbitrum-42161/0x194cdf44ef8f1bb58fadbd105b2c485aae8f9f9a/); arbitrum `0x50f3c6...6f493f`; arbitrum `0x547e55...b21817`; arbitrum `0x6f00a2...18eb49`; arbitrum `0x856c99...fa5095`; arbitrum `0xace729...8fc17b`; arbitrum `0xb1396e...206489`; arbitrum `0xc8695f...210ffc`; arbitrum `0xe866f0...747597`; arbitrum `0xf20c4c...695198`; avalanche `0x1bfe63...389700`; avalanche `0x2a2d2d...7e0deb`; avalanche `0x61afd3...91dc3a`; avalanche `0x768615...37bf4a`; avalanche `0x9312f6...e85d6d`; avalanche `0xc12873...f8b746`; avalanche `0xd65eaf...53773d`; linea [`0x194cdf...8f9f9a`](./contracts/linea-59144/0x194cdf44ef8f1bb58fadbd105b2c485aae8f9f9a/); linea `0x547e55...b21817`; linea `0xc7bb3e...03973e`; linea `0xc7d6e2...c2940b`; linea `0xe0266e...b13a68`; linea `0xe32472...0aec9b` | ⚠️ Unaudited (bytecode match) |
| RouterAllowlist | adapter | linea | n/a | 28 deployments: ethereum `0x3b1ed0...296bdf`; ethereum `0xcc8a35...62969b`; optimism `0x3ebc73...a4e5b3`; optimism `0x97f021...7dbc2d`; optimism `0xbcefc3...375bbc`; unichain `0x125caf...4cb45e`; unichain `0x5225cb...0d52a2`; unichain `0xa8d2de...a44baf`; polygon `0x4c0639...7bbb07`; sonic `0x417e48...8e147c`; sonic `0x624c75...6c422a`; sonic `0xcc6197...756a98`; fraxtal `0x3508a7...983596`; fraxtal `0x4a1daa...a7b5b3`; fraxtal `0xe56938...4624e9`; mantle `0xc2d77f...f1a3cc`; base `0xd709d0...d24aa8`; base `0xf73ec9...8b21b0`; mode `0x298614...f2b6db`; mode `0x353868...ad7d97`; mode `0x6f3e8f...bc3fe3`; arbitrum `0x69478d...5afcfd`; arbitrum `0x7b273e...9be878`; arbitrum `0xbe5653...152bf4`; avalanche `0x8f3149...e5ed46`; avalanche `0xa94afa...2b09c9`; avalanche `0xab22e4...816357`; linea [`0x073049...7bf3b7`](./contracts/linea-59144/0x073049917a8f7f41c60aad8232b69b89b37bf3b7/) | ⚠️ Unaudited (bytecode match) |
| VelodromeGaugeConnector | operational_periphery | optimism | n/a | 9 deployments: optimism [`0x06a52d...4fb36c`](./contracts/optimism-10/0x06a52d4c80eee559dd4ebb82362816933b4fb36c/); optimism `0xdc10b4...e59baf`; unichain `0x49606f...d4890d`; unichain `0xea895d...e168ff`; fraxtal `0x11d9ed...98bf28`; fraxtal `0x3cb9ae...7dc83c`; mode `0x26925a...c050d2`; mode `0x5225cb...0d52a2`; mode `0xe232e5...1eac7b` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (147)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0xecb1fe...b670d1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xee7992...9a864a` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x1732e3...1e320f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x190915...842b12` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x19216f...5467f1` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x1bfe63...389700` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x1d5038...7b6115` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x233d90...567168` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x298614...f2b6db` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x2a2d2d...7e0deb` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x2d0fd2...c64c1d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x2eb61c...7b0427` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x2edcc1...295bd1` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x2ef5ea...f2ecf3` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x30d28c...c52e67` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x3508a7...983596` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x353868...ad7d97` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x364796...7c14ae` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x3b8886...01e1f3` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x3d660d...492813` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x43b203...0f988d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x48ea9d...6bee4d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x50f3c6...6f493f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x528970...cd7ad7` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x53e3f3...2f6e6a` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x54d81f...94eacf` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x5a2516...05cd3e` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x5a72c0...128a04` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x5b86da...fa6e29` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x5d0101...de7967` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x5d2fc3...f2ed53` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x61afd3...91dc3a` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x61d7f5...7527e2` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x67e80f...9862cd` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x691757...58437a` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x6f3e8f...bc3fe3` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x71d234...baac31` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x76fb09...5dd487` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x7d055e...a36700` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x7d0611...17d094` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x84676e...136f8a` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x84bf32...dba11a` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x85e28f...c12aac` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x8bb906...548289` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x9774e2...a4f3ea` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x9b14c4...b3f557` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x9b3811...e72306` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xa260cd...c53a8c` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xa2dc70...673d80` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xa452df...3bd7c4` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xaef14a...4839ec` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xaf8afa...c867e6` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xbd89f4...a9bfb8` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xbeac74...f9c460` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xc2d77f...f1a3cc` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xc7ba8f...26a646` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xcb9613...283991` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xd458fc...c2f268` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xd737c5...704d87` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xe232e5...1eac7b` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xe2defb...911777` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xe4db0c...700d8f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xe56938...4624e9` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xeb68b3...f0534e` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xeb76cb...d15e69` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xf6d5c2...7db262` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xfea81b...f4a0e4` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xff638d...3d9452` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xfff75d...4761c8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3949a9...5b632e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa8281d...fda45d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc0c3e0...d412b7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc50d61...456bd2` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x2b5229...6d7c2f` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x53d978...cd5fdf` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0x5b3220...85c157` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | `0xe3d1a1...18dac1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1cf744...94e5fd` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x30d28c...c52e67` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x5225cb...0d52a2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7badae...03804f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x9774e2...a4f3ea` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xa8d2de...a44baf` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb347cd...cdfc18` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x024273...36e46c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x04448e...da74fa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x08f0f1...f99e9c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x142e69...c7f2ae` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b8968...c1ba2c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x277910...e22d1c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3575aa...9622e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x462929...806c2d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x536d46...aca7f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x538a3f...2607f5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x588be0...098b19` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5acb2e...14715c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5e57c1...c1ac84` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x60d334...d17698` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x64f435...7403ce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x753c9e...90575c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x775a59...a9ae0b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7fcd85...ecce87` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81ce73...8e7246` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x83631c...590c4a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8e5ad3...228865` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x920308...6ed6bd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa76e09...090b24` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb2c653...317005` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb3b166...8f17fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb4c31b...fba1e8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb61c56...89bf86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb71907...3cb72c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbd89f4...a9bfb8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc2d77f...f1a3cc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc3fbe1...d5c069` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcf82a6...51d508` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd262af...f00392` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd5ed46...c3f8b2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdc7948...ab3124` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe09669...ecb24c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb68b3...f0534e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1c2e1a...65b625` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x27f931...18118d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x42286e...2f71b0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x798586...9ed967` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa9b361...c80362` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xecc14d...6f7402` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf2b056...68e511` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4a1daa...a7b5b3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4b7c6f...0cb202` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x54d81f...94eacf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5a1b74...e7889b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5c7077...8b508e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x61d7f5...7527e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x72b10d...7bef2e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x76fb09...5dd487` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7bf22d...7f1fbc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x96c64d...f3fa1b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9b14c4...b3f557` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa57336...d8d15e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa6002c...636430` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd6b71d...4f5a5b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe4db0c...700d8f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe56938...4624e9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf3442b...56d204` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf8d2b5...f980cb` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xc6013e...489c99` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [reports.yaudit.dev/reports/06-2023-Sickle](https://reports.yaudit.dev/06-2023-Sickle) | yAudit | Audit | 2023 | stale | Direct | n/a | 0 | n/a |
| [reports.yaudit.dev/reports/10-2023-Sickle-Update](https://reports.yaudit.dev/10-2023-Sickle-Update) | yAudit | Audit | 2023 | stale | Direct | n/a | 0 | n/a |
| [reports.yaudit.dev/reports/05-2024-Sickle-3](https://reports.yaudit.dev/05-2024-Sickle-3) | yAudit | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [reports.yaudit.dev/reports/10-2024-Sickle-Strategies](https://reports.yaudit.dev/10-2024-Sickle-Strategies) | yAudit | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [reports.yaudit.dev/reports/04-2025-Sickle](https://reports.yaudit.dev/04-2025-Sickle) | yAudit | Audit | 2025 | aging | Direct | n/a | 0 | n/a |
| [reports.yaudit.dev/reports/06-2024-Sickle-4](https://reports.yaudit.dev/06-2024-Sickle-4) | yAudit | Audit | 2024 | stale | Direct | n/a | 0 | n/a |
| [reports.yaudit.dev/2026-02-vfat-router](https://reports.yaudit.dev/2026-02-vfat-router) | yAudit | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [ackee-blockchain-vfat-sickle-report.pdf](https://github.com/Ackee-Blockchain/public-audit-reports/blob/master/2025/ackee-blockchain-vfat-sickle-report.pdf) | Ackee Blockchain | Audit | 2025-05 | aging | Direct | contract_name | 248 | high |
| [ackee-blockchain-vfat-farm-strategies-report.pdf](https://github.com/Ackee-Blockchain/public-audit-reports/blob/master/2025/ackee-blockchain-vfat-farm-strategies-report.pdf) | Ackee Blockchain | Audit | 2025-06 | aging | Direct | contract_name | 406 | high |
| [omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175](https://omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175) | Omniscia | Audit | 2025-04 | aging | Direct | contract_name | 15 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x24f7eb...190f08`](./contracts/ethereum-1/0x24f7eb9c0a1b93bfbe9aea2ba66e167b88190f08/) | AcrossDepositAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x08cd01...22a455`](./contracts/optimism-10/0x08cd017edf396dc80fec52922fb625b51722a455/) | AcrossSwapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x212cf6...56c99c`](./contracts/ethereum-1/0x212cf64bbd972df348be70a4b445385a3056c99c/) | BlackholeV2Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6d94af...26c292`](./contracts/ethereum-1/0x6d94afb7338e0f88d0c64e87a49e7eeb2626c292/) | BlackholeV3Connector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x010a62...d06caa`](./contracts/optimism-10/0x010a62b2682819fc4b9e785595c5e19b35d06caa/) | BridgeSwapReceiver | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bf0f9...949d53`](./contracts/ethereum-1/0x0bf0f966a8c1676d2d76c1863cbd84170b949d53/) | ConnectorLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0cfed1...c55302`](./contracts/optimism-10/0x0cfed16b402116eacac8b0e85bb46530a7c55302/) | ExactTransferLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d8ac2...99e1da`](./contracts/ethereum-1/0x3d8ac28d53ca8475bd2dcf61b8dd7221f099e1da/) | FlashloanLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc7aa15...3b1634`](./contracts/ethereum-1/0xc7aa15e458cb4a6e7b132d4057ab6994843b1634/) | FlashloanStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e2fff...fbbff7`](./contracts/ethereum-1/0x0e2fff65867422813c25a7404950385e36fbbff7/) | LendingStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x00dc7a...ed4d1d`](./contracts/optimism-10/0x00dc7a6cb7f1a9c7c38dbc426801133ab9ed4d1d/) | OmniV3Connector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x223641...4bd69b`](./contracts/ethereum-1/0x223641e6866f9ce54c4a5783827ca9a6924bd69b/) | SimpleLendingStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5aee5f...abcdae`](./contracts/optimism-10/0x5aee5f0e6c2055ebd776db25f48f6c9a68abcdae/) | SinkManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0792a6...cc9676`](./contracts/optimism-10/0x0792a633f0c19c351081cf4b211f68f79bcc9676/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x06a52d...4fb36c`](./contracts/optimism-10/0x06a52d4c80eee559dd4ebb82362816933b4fb36c/) | VelodromeGaugeConnector | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 32 |
| upstream | 8 |
| standard_library | 4 |
| needs_review | 311 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=1276

Zero-match audit list:

- [4584] reports.yaudit.dev/reports/06-2023-Sickle
- [4585] reports.yaudit.dev/reports/10-2023-Sickle-Update
- [4586] reports.yaudit.dev/reports/05-2024-Sickle-3
- [4587] reports.yaudit.dev/reports/10-2024-Sickle-Strategies
- [4588] reports.yaudit.dev/reports/04-2025-Sickle
- [4589] reports.yaudit.dev/reports/06-2024-Sickle-4
- [4590] reports.yaudit.dev/2026-02-vfat-router

Fork inheritance lineage and inherited audits are included when available.
