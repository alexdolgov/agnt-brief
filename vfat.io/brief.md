# Agentic Audit Brief: vfat.io

## Project Overview

- Project: vfat.io (`vfat.io`)
- Website: [https://vfat.io/yield](https://vfat.io/yield)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.014Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: arbitrum, avalanche, base, bsc, ethereum, fantom, fraxtal, ink, linea, mantle, mode, optimism, polygon, sonic, unichain
- Contract surface: 1799 unique implementations (3554 raw deployments)
- DeFi Llama TVL: $28,182,593.29
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield Aggregator. Structurally: 260 project-authored contract(s) across 12 chain(s); 9 ERC20 tokens, 4 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 47 common project-authored base contract(s) (strategymodule, accesscontrolmodule, farmstrategyevents). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 3554; live-surface contracts included: 3554 (1896 live, 1658 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 27/232 (11.6%)
- Deployed-live implementations: 236 of 1799 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 27/243
- Verified + Unaudited implementations: 216
- Verified by bytecode match: 0
- Unverified implementations: 1556
- Unique implementations: 1799
- Raw deployments: 3554
- Audits discovered: 10 (10 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Audit staleness (calendar age): 1 fresh, 4 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 27 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Ackee Blockchain | Tier 2 | 24 | 9.9% | 2025-06 |
| Omniscia | Tier 2 | 4 | 1.6% | 2025-04 |

## Contract Surface

### ✅ Verified + Audited (27)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Automation | unknown | fraxtal | n/a | 44 deployments: ethereum `0x3f3126...10034c`; ethereum `0x55bb01...75685c`; optimism `0x0ce036...1c48e2`; optimism `0x4074e0...410cbb`; optimism `0x660bb0...d2b8e4`; optimism `0x9cf258...471447`; optimism `0xb37651...75c015`; optimism `0xf0b9f5...8610d3`; optimism `0xfc5254...72441a`; unichain `0x2ef5ea...f2ecf3`; polygon `0x1c9d70...b0ed35`; polygon `0x5acb2e...14715c`; sonic `0x233d90...567168`; sonic `0x506a53...19afc2`; sonic `0xa2dc70...673d80`; fraxtal [`0x04a606...9e51e7`](./contracts/fraxtal-252/0x04a606605f3d0d1d4781a12fca38fd7aea9e51e7/); fraxtal `0x233d90...567168`; fraxtal `0x5a2516...05cd3e`; fraxtal `0x76fe03...414b2f`; fraxtal `0xb9e443...e75bc2`; mantle `0x768caf...98d19f`; mantle `0x797683...9b4c9e`; mantle `0x856c99...fa5095`; mantle `0xcaa3a4...5885fd`; mantle `0xd458fc...c2f268`; mantle `0xded5c1...ed9938`; mantle `0xe56938...4624e9`; base `0x1e33f2...77176b`; base `0x9903fb...534ce9`; base `0x9ab3e4...1df7ea`; base `0xd2d4e3...5e2ada`; base `0xebe78f...9f47d2`; base `0xf01c61...128942`; mode `0x4ab9eb...ebe8f7`; mode `0x606448...c0721e`; mode `0x856c99...fa5095`; arbitrum `0x240bd1...87bade`; arbitrum `0x4ca667...b207d3`; arbitrum `0xb5c190...79cc26`; avalanche `0x5fe05d...2c9279`; avalanche `0xff8444...14460d`; linea `0x05a651...071427`; linea `0xc49775...4bdfed`; linea `0xc7ba8f...26a646` | ✅ Audited |
| ConnectorRegistry | registry | optimism | n/a | 26 deployments: optimism [`0x310f87...ff028a`](./contracts/optimism-10/0x310f87d1cf529ee33a15bc71b4ce8aa3f2ff028a/); optimism `0x32ddff...a64b72`; optimism `0x33ba55...41b524`; optimism `0x5acb2e...14715c`; optimism `0x5c2866...7e6407`; optimism `0x842b3f...3465b8`; optimism `0xb45e3c...c19b83`; optimism `0xd3af61...a3cc6b`; optimism `0xe4db0c...700d8f`; optimism `0xf501a9...dec3a9`; unichain `0x4f8833...e71780`; sonic `0x797683...9b4c9e`; fraxtal `0x3575aa...9622e6`; fraxtal `0xf7e60d...5bd4e9`; mantle `0x5acb2e...14715c`; mantle `0x7b22cc...f70ba6`; mantle `0x8e5ad3...228865`; mantle `0x9d70b9...ab7f95`; mantle `0xc6d1f6...688cdc`; base `0xa260cd...c53a8c`; base `0xa452df...3bd7c4`; base `0xac7b97...fe9fce`; base `0xb7b53a...d8b8a8`; base `0xc49068...586d19`; base `0xe232e5...1eac7b`; base `0xe2defb...911777` | ✅ Audited |
| FarmStrategy | core_logic | ethereum | n/a | 73 deployments: ethereum [`0x0e1044...3bc311`](./contracts/ethereum-1/0x0e1044f8b4f9d7cf370d9f723613a4099a3bc311/); ethereum `0x45d00b...b928fd`; ethereum `0x5a72c0...128a04`; ethereum `0x75d57c...d59a16`; ethereum `0xd95b78...7e9303`; optimism `0x115a16...0264c0`; optimism `0x3b79a6...5447a7`; optimism `0x3cb9ae...7dc83c`; optimism `0x481d6b...00ea35`; optimism `0x5266e1...e4e6b8`; optimism `0x568bd0...76fc02`; optimism `0x59a1c3...4063a0`; optimism `0x61d7f5...7527e2`; optimism `0x763844...48147a`; optimism `0x7eb798...39b4d4`; optimism `0xa1016b...1c702f`; optimism `0xa7c8ec...b1f33b`; optimism `0xad3349...0ab5bb`; optimism `0xc64cfb...2a2d4d`; optimism `0xc6aacd...1fc2e6`; optimism `0xc7bb3e...03973e`; optimism `0xc8994b...e13126`; optimism `0xe8f960...ca2a43`; optimism `0xef5497...3854ac`; unichain `0x61d7f5...7527e2`; polygon `0x5a2516...05cd3e`; polygon `0x8bc182...60466e`; polygon `0xd34d13...878dd2`; sonic `0x923021...70f2f0`; sonic `0xa697ca...0bc8d8`; sonic `0xbd6946...513156`; sonic `0xc49775...4bdfed`; sonic `0xdd4dc3...44dfff`; fraxtal `0x0ecda5...7409b6`; fraxtal `0x528970...cd7ad7`; fraxtal `0x8312be...0cda0c`; fraxtal `0x84676e...136f8a`; fraxtal `0x8cf93e...5fdcc0`; fraxtal `0xa2dc70...673d80`; fraxtal `0xa697ca...0bc8d8`; mantle `0x13c59e...125089`; mantle `0x353868...ad7d97`; mantle `0x4ab9eb...ebe8f7`; mantle `0x6eedd0...1a8ce5`; mantle `0x71d234...baac31`; mantle `0x7671cb...692171`; mantle `0xb9e443...e75bc2`; mantle `0xc8994b...e13126`; mantle `0xf20c4c...695198`; base `0x38d346...8f3ef0`; base `0x4b516a...751023`; base `0x5a72c0...128a04`; base `0x5ce80a...6c2b60`; base `0xbb5954...0c8dbb`; base `0xbf325b...999556`; base `0xcc6197...756a98`; base `0xd65eaf...53773d`; mode `0x0eb29e...ddb08a`; mode `0x400b2d...bba104`; mode `0x629d5c...e92262`; mode `0xc49068...586d19`; arbitrum `0x19ff84...631cd8`; arbitrum `0x1d74f7...628725`; arbitrum `0x1e2bc5...612f72`; arbitrum `0x400b2d...bba104`; avalanche `0x545229...c1e7f9`; avalanche `0xab434e...9a24fc`; avalanche `0xded5c1...ed9938`; avalanche `0xf8d2b5...f980cb`; linea `0x1e2bc5...612f72`; linea `0x9a61e1...1a6150`; linea `0xb7b53a...d8b8a8`; linea `0xe953ca...40e09b` | ✅ Audited |
| FeesLib | unknown | optimism | n/a | 16 deployments: optimism [`0x34f895...70968c`](./contracts/optimism-10/0x34f895a2b90e60721a046a7cbf330ca74070968c/); optimism `0x3bf1a3...23a10b`; optimism `0x60d334...d17698`; optimism `0xb051f3...800307`; optimism `0xb5c190...79cc26`; optimism `0xbfdec1...3f4724`; sonic `0x60d334...d17698`; fraxtal `0x60d334...d17698`; fraxtal `0x7b22cc...f70ba6`; fraxtal `0xac371d...d851b5`; mantle `0x529048...4d665f`; mantle `0x5a2516...05cd3e`; mantle `0x8145e2...329e98`; base `0xaf0ee4...2622b6`; base `0xcf82a6...51d508`; base `0xea895d...e168ff` | ✅ Audited |
| MasterChefV3 | unknown | base | n/a | [`0xc6a2db...8665a3`](./contracts/base-8453/0xc6a2db661d5a5690172d8eb0a7dea2d3008665a3/) | ✅ Audited |
| MasterChefV3 | unknown | arbitrum | n/a | [`0x5e09ac...daa694`](./contracts/arbitrum-42161/0x5e09acf80c0296740ec5d6f643005a4ef8daa694/) | ✅ Audited |
| MasterChefV3 | unknown | linea | n/a | [`0x22e2f2...b55c57`](./contracts/linea-59144/0x22e2f236065b780fa33ec8c4e58b99ebc8b55c57/) | ✅ Audited |
| MultiFarmStrategy | core_logic | base | n/a | 49 deployments: ethereum `0x4de78f...b65582`; ethereum `0x96613d...9a2a8d`; ethereum `0x9a8338...6034f0`; ethereum `0xd621f3...bc735a`; optimism `0x30d28c...c52e67`; optimism `0x34ec3c...70f65f`; optimism `0x4af712...adeefc`; optimism `0x6b132b...38c1b9`; optimism `0xbe2c2b...04925e`; optimism `0xc8695f...210ffc`; optimism `0xe884ef...6e592c`; optimism `0xf15217...4158cf`; optimism `0xf3f4c7...49fba1`; optimism `0xf8d2b5...f980cb`; unichain `0x1d5038...7b6115`; unichain `0x5c2866...7e6407`; polygon `0x4f025a...f5a5fd`; polygon `0x7d055e...a36700`; polygon `0xf1ce0e...a4a0a7`; sonic `0x85378f...e4d7c2`; sonic `0xb5c190...79cc26`; sonic `0xe54f0f...777567`; sonic `0xf0b9f5...8610d3`; fraxtal `0x43b203...0f988d`; fraxtal `0x529048...4d665f`; fraxtal `0x64dab1...9a4641`; fraxtal `0x85378f...e4d7c2`; fraxtal `0xef5497...3854ac`; mantle `0x5c204b...fa7bb2`; mantle `0xaf18c0...fba18b`; mantle `0xd6b71d...4f5a5b`; mantle `0xfd2d0d...d850e7`; mantle `0xff638d...3d9452`; base [`0x01e0ae...10e0c4`](./contracts/base-8453/0x01e0ae96ca5fa70279a79de4a0dc4cf86110e0c4/); base `0x4eec42...409d2c`; base `0x7bb5af...900bc4`; base `0x8064a9...26a4df`; mode `0x40bd94...78d34c`; mode `0xd6b71d...4f5a5b`; mode `0xdf015f...968ac0`; arbitrum `0x310f87...ff028a`; arbitrum `0x5a1b74...e7889b`; arbitrum `0xe21f25...9005cc`; avalanche `0x0eb29e...ddb08a`; avalanche `0x54d81f...94eacf`; avalanche `0x80de12...9af730`; linea `0x310f87...ff028a`; linea `0x5d0101...de7967`; linea `0xbb478c...38fd10` | ✅ Audited |
| NftFarmStrategy | core_logic | polygon | n/a | 88 deployments: ethereum `0x26d774...1578d7`; ethereum `0x7d98c3...a474fc`; ethereum `0x97f021...7dbc2d`; ethereum `0x9f5bd7...4fc99a`; ethereum `0xdb5098...cf2018`; optimism `0x10bd16...9fa0f5`; optimism `0x3fa766...674a55`; optimism `0x55bb01...75685c`; optimism `0x5ce9c2...851cdf`; optimism `0x6ba6ec...1f9253`; optimism `0x72b10d...7bef2e`; optimism `0x7d98c3...a474fc`; optimism `0x7dae2c...cb27f5`; optimism `0x84676e...136f8a`; optimism `0x856c99...fa5095`; optimism `0x8bc182...60466e`; optimism `0x951ba1...df11ef`; optimism `0xa8d2de...a44baf`; optimism `0xbb0388...85af95`; optimism `0xcc0b08...ee50f9`; optimism `0xd719f5...db7faa`; optimism `0xe09c92...9bea3a`; optimism `0xe70721...0172e7`; optimism `0xfb25ec...df38c8`; unichain `0x1c5a06...e0b142`; unichain `0x2eb61c...7b0427`; unichain `0x7671cb...692171`; polygon [`0x059571...3b74c1`](./contracts/polygon-137/0x059571c94794349bd97a8e15f19e7201d13b74c1/); polygon `0x125caf...4cb45e`; polygon `0xa452df...3bd7c4`; polygon `0xf3442b...56d204`; sonic `0x05a651...071427`; sonic `0x0efadd...1542d5`; sonic `0x83d50c...652fe7`; sonic `0x9b14c4...b3f557`; sonic `0xa05a9e...3a8788`; fraxtal `0x06b559...4d59b5`; fraxtal `0x2083a6...47a463`; fraxtal `0x4394a4...96dde1`; fraxtal `0x7671cb...692171`; fraxtal `0x8145e2...329e98`; fraxtal `0x942867...0e74d3`; fraxtal `0xb71907...3cb72c`; fraxtal `0xfc4c50...cd564b`; mantle `0x2f480c...171d1a`; mantle `0x4c0639...7bbb07`; mantle `0x76fb09...5dd487`; mantle `0x7affad...181fe2`; mantle `0x8312be...0cda0c`; mantle `0x942867...0e74d3`; mantle `0x96c64d...f3fa1b`; mantle `0xaf0ee4...2622b6`; mantle `0xb3dc04...325ee1`; mantle `0xb61643...030262`; mantle `0xfea81b...f4a0e4`; base `0x1dcdbd...dca4dd`; base `0x5bb77d...da3312`; base `0x9699be...36eb45`; base `0x9774e2...a4f3ea`; base `0xbd6946...513156`; base `0xcb9613...283991`; base `0xd51a36...7fcc97`; base `0xd62b33...e36179`; base `0xd826da...b050ea`; base `0xe884ef...6e592c`; base `0xe9bb60...939825`; base `0xea4b92...d349b1`; base `0xf6a107...1b7a30`; mode `0x13c59e...125089`; mode `0x296b3f...e2d03c`; mode `0x588be0...098b19`; mode `0x7d0611...17d094`; mode `0xb3dc04...325ee1`; arbitrum `0x326e67...a581a8`; arbitrum `0x514142...91b862`; arbitrum `0xd1095a...a46924`; arbitrum `0xe9eb1a...1d9e44`; arbitrum `0xef5497...3854ac`; arbitrum `0xfb903b...7365c8`; avalanche `0x0bf0f9...949d53`; avalanche `0x2e075e...fbed44`; avalanche `0xab2ee5...3518be`; avalanche `0xe56938...4624e9`; linea `0x481d6b...00ea35`; linea `0x5a72c0...128a04`; linea `0xd1095a...a46924`; linea `0xd248aa...4f2fa0`; linea `0xd3926a...bcef31` | ✅ Audited |
| NftSettingsLib | token | optimism | n/a | 11 deployments: optimism [`0x326e67...a581a8`](./contracts/optimism-10/0x326e6746fb95f0c2de39a1175a20d8eda8a581a8/); optimism `0x3ebf49...bbf875`; optimism `0xb7b53a...d8b8a8`; sonic `0xbbddb9...bdd932`; sonic `0xe232e5...1eac7b`; fraxtal `0x5e57c1...c1ac84`; fraxtal `0xbbddb9...bdd932`; mantle `0x50f3c6...6f493f`; mantle `0x57732e...2aa00c`; base `0xb7641a...de7cf0`; base `0xfb25ec...df38c8` | ✅ Audited |
| NftSettingsRegistry | registry | avalanche | n/a | 21 deployments: ethereum `0xc8695f...210ffc`; ethereum `0xe7feb1...efce31`; optimism `0x2def4a...e74bd3`; optimism `0x776918...d6d790`; optimism `0x8fb72a...2fcadc`; optimism `0x962630...9994fb`; unichain `0xbd89f4...a9bfb8`; polygon `0x83631c...590c4a`; sonic `0x661874...bc34df`; sonic `0xb71907...3cb72c`; sonic `0xc6013e...489c99`; fraxtal `0x472351...fe3717`; fraxtal `0xc6013e...489c99`; mantle `0x8a09b9...eec40d`; mantle `0xa2dc70...673d80`; base `0x4763eb...d78fd9`; base `0xf308ba...f06f29`; mode `0x49606f...d4890d`; arbitrum `0xe4db0c...700d8f`; avalanche [`0x2d6a2a...9f6940`](./contracts/avalanche-43114/0x2d6a2a8837bad9ce42bbec462fa62900439f6940/); linea `0x364796...7c14ae` | ✅ Audited |
| NftTransferLib | token | mantle | n/a | 4 deployments: optimism `0x8940e0...22025f`; optimism `0xc069fc...9231fd`; sonic `0xfff75d...4761c8`; mantle [`0x84676e...136f8a`](./contracts/mantle-5000/0x84676ee313cd7c7b85869b208d2effb7af136f8a/) | ✅ Audited |
| NftZapLib | adapter | polygon | n/a | 21 deployments: ethereum `0xdf103a...7c8831`; optimism `0x768615...37bf4a`; optimism `0x9b565f...e9a8a0`; optimism `0xac7b97...fe9fce`; optimism `0xc2baa0...c54ece`; unichain `0x71d234...baac31`; unichain `0x763844...48147a`; polygon [`0x152a4f...bdf01c`](./contracts/polygon-137/0x152a4f338f6765d181234d6996e6f80063bdf01c/); sonic `0x71d234...baac31`; sonic `0x9fad68...0f710a`; sonic `0xa6864e...786099`; fraxtal `0x763844...48147a`; fraxtal `0x9fad68...0f710a`; mantle `0x568bd0...76fc02`; mantle `0x65cb9b...ccfab7`; base `0x7ca3f5...152d36`; base `0xd1b321...8d249f`; mode `0x5b8ee3...ea8715`; arbitrum `0xe6edb7...345bae`; avalanche `0x17b36a...077b68`; linea `0x4dd790...c7d224` | ✅ Audited |
| PositionSettingsLib | unknown | optimism | n/a | 5 deployments: optimism [`0xa6671e...1fd614`](./contracts/optimism-10/0xa6671e1e5715978928cc74907e72d01d301fd614/); fraxtal `0xc8994b...e13126`; mantle `0xd65eaf...53773d`; mantle `0xfff75d...4761c8`; base `0xbe2c2b...04925e` | ✅ Audited |
| PositionSettingsRegistry | registry | optimism | n/a | 18 deployments: ethereum `0x93c4dc...e9ff53`; ethereum `0xa92424...1b039f`; optimism [`0x06e702...f7d142`](./contracts/optimism-10/0x06e7023faf11476b8a6c732c3a744f2a1cf7d142/); optimism `0x869e37...884850`; optimism `0x91105e...9f29fb`; optimism `0xf7b4a3...2546d5`; sonic `0x8145e2...329e98`; sonic `0xb07d6a...c1299f`; fraxtal `0x23eb5c...7ade3b`; fraxtal `0xb07d6a...c1299f`; mantle `0x661874...bc34df`; mantle `0xab2ee5...3518be`; base `0x9a961b...078901`; base `0xc069fc...9231fd`; mode `0xf8d2b5...f980cb`; arbitrum `0x3508a7...983596`; avalanche `0x09fadb...380d4d`; linea `0x85e28f...c12aac` | ✅ Audited |
| Sickle | unknown | ethereum | n/a | 11 deployments: ethereum [`0x608795...d1b31a`](./contracts/ethereum-1/0x60879567aeda2294ba3f44e744a52c00d9d1b31a/); optimism `0x7f4b6f...1f8a6f`; optimism `0xa77d2d...7f2823`; optimism `0xac371d...d851b5`; optimism `0xadd2b1...41e353`; sonic `0x7f4b6f...1f8a6f`; fraxtal `0x7f4b6f...1f8a6f`; mantle `0xac371d...d851b5`; base `0xa77d2d...7f2823`; base `0xbeac74...f9c460`; avalanche `0x7f4b6f...1f8a6f` | ✅ Audited |
| SickleFactory | registry | linea | n/a | 18 deployments: ethereum `0x9d70b9...ab7f95`; ethereum `0xf0adad...140fd4`; optimism `0x2fb3eb...a82372`; optimism `0x53d978...cd5fdf`; optimism `0xb01e43...06e08d`; optimism `0xb4c31b...fba1e8`; bsc `0x53d978...cd5fdf`; unichain `0x233d90...567168`; polygon `0xac371d...d851b5`; sonic `0x53d978...cd5fdf`; fraxtal `0x53d978...cd5fdf`; mantle `0xb4c31b...fba1e8`; base `0xb01e43...06e08d`; base `0xc0c3e0...d412b7`; base `0xde181c...2284f4`; mode `0x53d978...cd5fdf`; avalanche `0x53d978...cd5fdf`; linea [`0x0f6abc...9c81a3`](./contracts/linea-59144/0x0f6abc6b808b377d6aed8da1fad5e135c99c81a3/) | ✅ Audited |
| SickleMultisig | governance | linea | n/a | 22 deployments: ethereum `0x5cdd49...3a1c0f`; ethereum `0x663e63...0f34e6`; optimism `0x40bd94...78d34c`; optimism `0x81d34d...f73c4f`; optimism `0xa052d8...eef4be`; optimism `0xafcb6b...a12bd4`; unichain `0xff8444...14460d`; polygon `0x5e57c1...c1ac84`; sonic `0x0eb29e...ddb08a`; fraxtal `0x372e77...2c5083`; fraxtal `0x6eedd0...1a8ce5`; mantle `0x23e5d9...4cfa4c`; mantle `0xed2176...274314`; base `0x51df68...016f74`; base `0xad2efd...109fdf`; base `0xcc0b08...ee50f9`; mode `0xe4db0c...700d8f`; arbitrum `0x3bf1a3...23a10b`; arbitrum `0x57732e...2aa00c`; avalanche `0x5ce9c2...851cdf`; linea [`0x099894...73a8c1`](./contracts/linea-59144/0x0998943d5caec304658b7af3b4367e134c73a8c1/); linea `0xee49aa...3cb580` | ✅ Audited |
| SickleRegistry | registry | optimism | n/a | 7 deployments: optimism [`0x2eaf44...940dab`](./contracts/optimism-10/0x2eaf44edb2ba47d21f5cbd1b6a8746d866940dab/); optimism `0x372e77...2c5083`; base `0x2ef5ea...f2ecf3`; base `0xad4dd7...d5864b`; base `0xb9e443...e75bc2`; base `0xbfc621...2e3401`; base `0xdf70bb...316916` | ✅ Audited |
| SlipstreamGaugeConnector | operational_periphery | optimism | n/a | 20 deployments: optimism [`0x023038...a0efc3`](./contracts/optimism-10/0x023038ffdbe72857633d8bf4562d47155ba0efc3/); optimism `0x337c2d...e12b59`; optimism `0x37f230...73018d`; optimism `0x529048...4d665f`; optimism `0x5cdd49...3a1c0f`; optimism `0x66bb55...1c01a1`; optimism `0x7671cb...692171`; optimism `0x8c5e97...9dbb0f`; optimism `0x917c50...198be4`; unichain `0x5c7077...8b508e`; unichain `0xb60ab0...9a0d76`; fraxtal `0x32ddff...a64b72`; fraxtal `0x588be0...098b19`; fraxtal `0x5c2866...7e6407`; fraxtal `0xc3fbe1...d5c069`; base `0xc4d912...26abaf`; base `0xeb76cb...d15e69`; base `0xfac2a4...4e603a`; mode `0xa8758f...e2ae2e`; mode `0xaef14a...4839ec` | ✅ Audited |
| SlipstreamNftConnector | token | base | n/a | 35 deployments: optimism `0x040df7...39c686`; optimism `0x2881ba...96a4f3`; optimism `0x2e3538...181771`; optimism `0x3078d8...eb9539`; optimism `0x3f1b56...da2261`; optimism `0x76fb09...5dd487`; optimism `0x791436...ff4d6c`; optimism `0x8cf93e...5fdcc0`; optimism `0xa36383...bfbcab`; optimism `0xa92424...1b039f`; optimism `0xac8375...d837e9`; optimism `0xb024cb...57c5a6`; optimism `0xb29c27...f0a0c5`; unichain `0x72b10d...7bef2e`; unichain `0x7affad...181fe2`; fraxtal `0x1c5a06...e0b142`; fraxtal `0x266ebc...74e012`; fraxtal `0x6580ba...7a763a`; fraxtal `0x9d70b9...ab7f95`; fraxtal `0xad4dd7...d5864b`; fraxtal `0xb60ab0...9a0d76`; fraxtal `0xfd2d0d...d850e7`; base [`0x008567...123029`](./contracts/base-8453/0x00856733aa4ad4ef7a664d26f04ae12037123029/); base `0x151f71...298b6d`; base `0x2209c4...251cc7`; base `0x85d7e0...faa3b3`; base `0x9d80ce...7bf9f1`; base `0xa91916...8337c5`; base `0xb156de...33ab3d`; base `0xda56db...bd67fe`; mode `0x125caf...4cb45e`; mode `0x29d829...c64125`; mode `0x5c204b...fa7bb2`; mode `0xa6002c...636430`; mode `0xd826da...b050ea` | ✅ Audited |
| SwapLib | unknown | mode | n/a | 23 deployments: ethereum `0x985a6a...9d32c0`; optimism `0x3ea8af...0c8b46`; optimism `0x7881a6...b2cc9e`; optimism `0x9b6f97...39862d`; optimism `0xe32472...0aec9b`; optimism `0xf2d8ae...f2ff68`; unichain `0x50f3c6...6f493f`; unichain `0xb7ef14...e373ac`; polygon `0xad4dd7...d5864b`; sonic `0x3e8c81...3da755`; sonic `0xb01e43...06e08d`; fraxtal `0x5acb2e...14715c`; fraxtal `0xb01e43...06e08d`; fraxtal `0xb7ef14...e373ac`; mantle `0x8940e0...22025f`; mantle `0x923021...70f2f0`; mantle `0xf501a9...dec3a9`; base `0xa6671e...1fd614`; base `0xe25a13...ae4746`; mode [`0x2f480c...171d1a`](./contracts/mode-34443/0x2f480cd1712e98cd9ac50d4ad7b0adeb89171d1a/); arbitrum `0x463353...4cc8b6`; avalanche `0x8e10b7...7c1a13`; linea `0xe54f0f...777567` | ✅ Audited |
| SweepStrategy | core_logic | sonic | n/a | 31 deployments: ethereum `0x3b8886...01e1f3`; ethereum `0x3f1b56...da2261`; ethereum `0xbaa471...173be0`; optimism `0x194d7b...cc7172`; optimism `0x4a1daa...a7b5b3`; optimism `0x8e5ad3...228865`; optimism `0x9b6049...ab4f5c`; optimism `0xc393c1...e9cec5`; polygon `0x64f435...7403ce`; polygon `0xa7c8ec...b1f33b`; sonic [`0x0f592f...0fe04f`](./contracts/sonic-146/0x0f592f2ee1779fa7d81a8482f4cc6d216a0fe04f/); sonic `0x74a9ad...21321e`; sonic `0x9960bd...3b9d96`; fraxtal `0x661874...bc34df`; fraxtal `0x955198...13682d`; fraxtal `0x991ce3...a88581`; mantle `0x40bd94...78d34c`; mantle `0x5ce9c2...851cdf`; mantle `0xe232e5...1eac7b`; mantle `0xfb903b...7365c8`; base `0x29d829...c64125`; base `0x917c50...198be4`; base `0xad3349...0ab5bb`; base `0xf8818d...872a72`; mode `0xfb903b...7365c8`; arbitrum `0xde181c...2284f4`; arbitrum `0xf5090d...d56fba`; avalanche `0x67e80f...9862cd`; avalanche `0x8a09b9...eec40d`; linea `0x13c59e...125089`; linea `0xf5090d...d56fba` | ✅ Audited |
| TransferLib | unknown | avalanche | n/a | 24 deployments: ethereum `0x80de12...9af730`; optimism `0x3f4cc0...777065`; optimism `0x547e55...b21817`; optimism `0x69478d...5afcfd`; optimism `0x9d5019...26573a`; polygon `0xb61643...030262`; sonic `0x481d6b...00ea35`; sonic `0xa77d2d...7f2823`; sonic `0xba3848...8f6ba5`; fraxtal `0x797683...9b4c9e`; fraxtal `0xa77d2d...7f2823`; fraxtal `0xb4c31b...fba1e8`; fraxtal `0xc0c3e0...d412b7`; mantle `0xa57336...d8d15e`; mantle `0xb7ef14...e373ac`; mantle `0xc49068...586d19`; mantle `0xef5497...3854ac`; base `0xa60ca9...c199d5`; base `0xd3e42c...a35caf`; mode `0xd65eaf...53773d`; arbitrum `0xa91916...8337c5`; avalanche [`0x02099a...9bf271`](./contracts/avalanche-43114/0x02099a96d5ef6996d0718e34a229f9c1f79bf271/); avalanche `0x49606f...d4890d`; linea `0xa91916...8337c5` | ✅ Audited |
| VelodromeGaugeRegistry | operational_periphery | optimism | n/a | 10 deployments: optimism [`0x4a695d...73058c`](./contracts/optimism-10/0x4a695de5c6d2e12a76a4ee6ab7b7ce704a73058c/); optimism `0x5a1b74...e7889b`; optimism `0x5b60bf...2147fa`; optimism `0x764f21...1d0a51`; optimism `0x768caf...98d19f`; optimism `0x99460b...1ef5e7`; optimism `0xae94ea...fdb97a`; optimism `0xd14395...4d2661`; optimism `0xda56db...bd67fe`; optimism `0xe4cdcb...9af07c` | ✅ Audited |
| VelodromeRouterConnector | adapter | optimism | n/a | 10 deployments: optimism [`0x5bf353...3c81bf`](./contracts/optimism-10/0x5bf3530851c971cf93467136eb4169d2c63c81bf/); optimism `0x7bb5af...900bc4`; optimism `0x9ff07c...4a53ad`; optimism `0xa94afa...2b09c9`; unichain `0xf8d2b5...f980cb`; fraxtal `0x856c99...fa5095`; fraxtal `0x8bb906...548289`; fraxtal `0xeb68b3...f0534e`; mode `0x6fa6a0...f23dbe`; mode `0x84bf32...dba11a` | ✅ Audited |
| ZapLib | adapter | polygon | n/a | 27 deployments: ethereum `0x5310bc...04687a`; optimism `0x3747fd...af9f38`; optimism `0x4763eb...d78fd9`; optimism `0x6a7bbf...7de5cf`; optimism `0x97e7e3...ceec69`; optimism `0xb1e94d...bac6da`; optimism `0xcaa3a4...5885fd`; optimism `0xf2cfa4...1a8832`; unichain `0xf501a9...dec3a9`; unichain `0xfff75d...4761c8`; polygon [`0x0f6abc...9c81a3`](./contracts/polygon-137/0x0f6abc6b808b377d6aed8da1fad5e135c99c81a3/); sonic `0x462929...806c2d`; sonic `0x50f3c6...6f493f`; sonic `0xf9340f...3e06c8`; fraxtal `0x462929...806c2d`; fraxtal `0x83631c...590c4a`; fraxtal `0xf501a9...dec3a9`; mantle `0x16a54a...4ffcf0`; mantle `0x763844...48147a`; mantle `0x9b14c4...b3f557`; mantle `0xba3848...8f6ba5`; base `0xf5f3b9...c991a3`; base `0xf8bd6d...a3669a`; mode `0x99800f...36a8ed`; arbitrum `0xbdb926...cb719f`; avalanche `0xb7c1be...d9ab95`; linea `0x5bc457...472566` | ✅ Audited |

### ⚠️ Verified + Unaudited (216)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccessHub | unknown | sonic | n/a | 22 deployments: sonic [`0x56d7e8...f97fd7`](./contracts/sonic-146/0x56d7e8f0729289737e68bd1a93f54edc33f97fd7/); sonic `0x57dda5...27642f`; sonic `0x585118...7d88fc`; sonic `0x617a62...302b63`; sonic `0x6b400c...0318a9`; sonic `0x82129f...b31111`; sonic `0x925ba5...c391a4`; sonic `0x95156b...82d143`; sonic `0x96a557...8e61db`; sonic `0x9885e6...f2977b`; sonic `0xa12757...969657`; sonic `0xa9ddae...1b35a4`; sonic `0xaf29cc...c62a35`; sonic `0xb8ca18...3df175`; sonic `0xbd1a7a...726e01`; sonic `0xbf0630...c4931e`; sonic `0xc051ce...8a1c6d`; sonic `0xc4433c...b2c0b3`; sonic `0xe4c3dc...dd1522`; sonic `0xe66030...8ed8b5`; sonic `0xe6ae8b...244ced`; sonic `0xebd682...918e80` | ⚠️ Unaudited |
| AccessHub2 | unknown | sonic | n/a | [`0x5e7a9e...e8e37f`](./contracts/sonic-146/0x5e7a9eea6988063a4dbb9ccddb3e04c923e8e37f/) | ⚠️ Unaudited |
| AcrossDepositAdapter | adapter | ethereum | n/a | 16 deployments: ethereum [`0x24f7eb...190f08`](./contracts/ethereum-1/0x24f7eb9c0a1b93bfbe9aea2ba66e167b88190f08/); ethereum `0xba1b4b...818270`; optimism `0xe8436f...660481`; optimism `0xf378bd...05fce8`; unichain `0x298614...f2b6db`; unichain `0xaf8afa...c867e6`; polygon `0x298614...f2b6db`; polygon `0xb347cd...cdfc18`; base `0xd0c591...37bddd`; base `0xf02e0f...b330a2`; mode `0x4de060...983de7`; mode `0xeb76cb...d15e69`; arbitrum `0xd42e09...be2b1a`; arbitrum `0xfb25ec...df38c8`; linea `0x45d00b...b928fd`; linea `0x5310bc...04687a` | ⚠️ Unaudited |
| AcrossRouteAdapter | adapter | base | n/a | 2 deployments: base [`0x0bd719...9a4b57`](./contracts/base-8453/0x0bd719d8ab0e9d36128b0f41f7e2ca75a69a4b57/); base `0x82c544...30e939` | ⚠️ Unaudited |
| AcrossSwapAdapter | adapter | optimism | n/a | 24 deployments: ethereum `0x6890a5...26454f`; ethereum `0xa815f3...78b5d1`; ethereum `0xee7992...9a864a`; optimism [`0x08cd01...22a455`](./contracts/optimism-10/0x08cd017edf396dc80fec52922fb625b51722a455/); optimism `0x1c2549...bcc9ad`; optimism `0x6737dd...0527f7`; unichain `0x53e3f3...2f6e6a`; unichain `0xa260cd...c53a8c`; unichain `0xfea81b...f4a0e4`; polygon `0x0d3e1d...16c0c2`; polygon `0x2a2d2d...7e0deb`; polygon `0x6f3e8f...bc3fe3`; base `0x144ba2...269568`; base `0x34a7d2...944255`; base `0xc12def...ac5e33`; mode `0x57f11f...6e4e62`; mode `0x660bb0...d2b8e4`; mode `0x9b3811...e72306`; arbitrum `0x0b6621...afc66b`; arbitrum `0x3d009b...4c1062`; arbitrum `0xfa7573...fe14f4`; linea `0xaeb2a6...31b9bb`; linea `0xc7aa15...3b1634`; linea `0xdb5098...cf2018` | ⚠️ Unaudited |
| AcrossV3AmountAdapter | adapter | base | n/a | 8 deployments: ethereum `0x64312b...ff72b7`; optimism `0x5a535a...2d086a`; unichain `0x928561...a3029b`; polygon `0x74547d...220283`; base [`0x21c690...9d11fa`](./contracts/base-8453/0x21c690aea1cd096e291b3132cdef4a1a0c9d11fa/); mode `0xa4fb47...552682`; arbitrum `0x9ed5aa...753e89`; linea `0x31b731...3cba1f` | ⚠️ Unaudited |
| Aero | token | base | n/a | [`0x940181...d98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | ⚠️ Unaudited |
| AerodromeGaugeConnector | operational_periphery | base | n/a | 8 deployments: optimism `0x67e80f...9862cd`; optimism `0x6cf3b0...5c62d3`; optimism `0x8312be...0cda0c`; base [`0x06b559...4d59b5`](./contracts/base-8453/0x06b559fef135ed5c9133478a2af502d8d44d59b5/); base `0x9cf9a1...7ccdc1`; base `0xb5c190...79cc26`; base `0xdc6489...c68dec`; base `0xe7d930...ec919a` | ⚠️ Unaudited |
| AerodromeGaugeRegistry | operational_periphery | base | n/a | 11 deployments: optimism `0x3949a9...5b632e`; optimism `0x43b203...0f988d`; optimism `0x96c64d...f3fa1b`; base [`0x200701...f3157b`](./contracts/base-8453/0x20070181c6d6ad127bf1bcba08f5f679d8f3157b/); base `0x3615b8...edd51a`; base `0x70b7af...d6126a`; base `0x9d70b9...ab7f95`; base `0xb347cd...cdfc18`; base `0xc7ba8f...26a646`; base `0xd9fa47...686693`; base `0xda8414...ffe663` | ⚠️ Unaudited |
| AerodromeRouterAdapter | adapter | polygon | n/a | 12 deployments: ethereum `0x2b5e91...1258a4`; optimism `0x8bc78b...49f007`; unichain `0x7d0611...17d094`; polygon [`0x16a54a...4ffcf0`](./contracts/polygon-137/0x16a54ae47b7e2eea0ed60438ab5d970c284ffcf0/); sonic `0xaeb2a6...31b9bb`; fraxtal `0x400b2d...bba104`; mantle `0xa4fb47...552682`; base `0xa8807e...cac716`; mode `0x53e3f3...2f6e6a`; arbitrum `0xdc6489...c68dec`; avalanche `0xd05bcc...7d99a4`; linea `0x5ed2b2...d99f69` | ⚠️ Unaudited |
| AerodromeRouterConnector | adapter | base | n/a | 6 deployments: optimism `0x955198...13682d`; optimism `0xe56938...4624e9`; base [`0x132fbf...61f14e`](./contracts/base-8453/0x132fbfa0f6fefe8fdf128748f90888d06461f14e/); base `0xd4c72e...e6ab07`; base `0xe16b3c...309b4c`; base `0xe4db0c...700d8f` | ⚠️ Unaudited |
| AerodromeSlipstreamGaugeConnector | operational_periphery | base | n/a | [`0xf0b9f5...8610d3`](./contracts/base-8453/0xf0b9f58b97906ce684134034256e78cd058610d3/) | ⚠️ Unaudited |
| AerodromeSlipstreamStrategy | core_logic | optimism | n/a | 2 deployments: optimism [`0x74547d...220283`](./contracts/optimism-10/0x74547dd2bd05c8ad55a98272db37fcd4f2220283/); optimism `0xbd6946...513156` | ⚠️ Unaudited |
| AerodromeStrategy | core_logic | optimism | n/a | [`0x462929...806c2d`](./contracts/optimism-10/0x46292986df2fee3a048dd6753918e62e93806c2d/) | ⚠️ Unaudited |
| AggregatorConnector | unknown | polygon | n/a | 92 deployments: ethereum `0x21bc4f...0c37c5`; ethereum `0x2a2128...eb4aaa`; ethereum `0x5ed2b2...d99f69`; ethereum `0xd2d4e3...5e2ada`; optimism `0x2d68af...15a8e6`; optimism `0x31debc...1537b5`; optimism `0x464f20...3454a7`; optimism `0x4b01cc...d2602b`; optimism `0x4f025a...f5a5fd`; optimism `0x5a1bc8...5516ed`; optimism `0x78ef54...e9a180`; optimism `0x7badae...03804f`; optimism `0x875ae2...e26af6`; optimism `0x9247ba...a7ca4a`; optimism `0x9fe21b...fa27c7`; optimism `0xa452df...3bd7c4`; optimism `0xb1396e...206489`; optimism `0xbf0230...ca02f7`; optimism `0xcf1184...099fa1`; optimism `0xda8414...ffe663`; optimism `0xdb5098...cf2018`; optimism `0xdc6489...c68dec`; optimism `0xdf015f...968ac0`; optimism `0xe16b3c...309b4c`; optimism `0xe8547a...ca4a09`; optimism `0xe8db41...c6a9bc`; optimism `0xf81c3a...3ca6d2`; optimism `0xfb8f79...8d49e9`; optimism `0xfc4c50...cd564b`; optimism `0xfc8082...cba88e`; unichain `0x4a1daa...a7b5b3`; unichain `0x606448...c0721e`; unichain `0xde181c...2284f4`; polygon [`0x06b559...4d59b5`](./contracts/polygon-137/0x06b559fef135ed5c9133478a2af502d8d44d59b5/); polygon `0x2edcc1...295bd1`; polygon `0x529048...4d665f`; polygon `0xb7ef14...e373ac`; sonic `0x49606f...d4890d`; sonic `0x57732e...2aa00c`; sonic `0x5bc457...472566`; sonic `0x5c7077...8b508e`; sonic `0x64dab1...9a4641`; sonic `0x65cb9b...ccfab7`; sonic `0x67e80f...9862cd`; sonic `0x6a7bbf...7de5cf`; sonic `0x72b10d...7bef2e`; sonic `0x76fe03...414b2f`; sonic `0x7a78c4...cfb411`; sonic `0xa91916...8337c5`; sonic `0xcf82a6...51d508`; sonic `0xd1095a...a46924`; sonic `0xf8d2b5...f980cb`; fraxtal `0x5a6584...aec8f8`; fraxtal `0x7affad...181fe2`; fraxtal `0x8e5ad3...228865`; fraxtal `0xea895d...e168ff`; mantle `0x2a2d2d...7e0deb`; mantle `0x61d7f5...7527e2`; mantle `0x71de28...07be8f`; mantle `0x99800f...36a8ed`; mantle `0xa6ed4c...4aeb1a`; mantle `0xace729...8fc17b`; mantle `0xc64cfb...2a2d4d`; mantle `0xe4db0c...700d8f`; mantle `0xf80494...ade5ac`; mantle `0xffcdd3...67af30`; base `0x2552ed...3a0cf0`; base `0x8ef6e4...c9cfa9`; base `0x9d5019...26573a`; base `0x9fe21b...fa27c7`; base `0xa19813...709b0d`; base `0xb7aaa3...bc9841`; base `0xbfdec1...3f4724`; base `0xc644f0...190884`; base `0xca32d7...b7e7b3`; base `0xe207cd...d817ca`; base `0xe744db...14c8a2`; base `0xf14d08...36e8b8`; mode `0x0d3e1d...16c0c2`; mode `0x49da01...018c92`; mode `0x4c0639...7bbb07`; arbitrum `0x2d1732...413d0f`; arbitrum `0x768615...37bf4a`; arbitrum `0xa92b57...daeb01`; arbitrum `0xd1b264...890774`; avalanche `0x364796...7c14ae`; avalanche `0xc8695f...210ffc`; avalanche `0xd95b78...7e9303`; avalanche `0xed67e7...b3805a`; linea `0x2a9ac5...18c1bf`; linea `0x45b83b...372569`; linea `0x5a1bc8...5516ed` | ⚠️ Unaudited |
| AirdropDistributor | operational_periphery | base | n/a | [`0xe4c69a...bc382f`](./contracts/base-8453/0xe4c69af018b2ea9e575026c0472b6531a2bc382f/) | ⚠️ Unaudited |
| AlgebraPoolAdapter | adapter | arbitrum | n/a | 12 deployments: ethereum `0xe2336e...84a411`; optimism `0xf1928b...df1af9`; unichain `0x85e28f...c12aac`; polygon `0xa260cd...c53a8c`; sonic `0x4a81be...617259`; fraxtal `0x14d55a...0a0b1d`; mantle `0x83d50c...652fe7`; base `0xfe5a62...ab5a02`; mode `0x0a6154...d49220`; arbitrum [`0x089bb8...0ff675`](./contracts/arbitrum-42161/0x089bb866727c05953d65e193ea090c912b0ff675/); avalanche `0x9f0bd0...4f9d18`; linea `0x386779...4d1f8f` | ⚠️ Unaudited |
| AlgebraRouterAdapter | adapter | linea | n/a | 12 deployments: ethereum `0xd30504...ae4e4a`; optimism `0xa080e2...5fc8c3`; unichain `0x5b86da...fa6e29`; polygon `0x568bd0...76fc02`; sonic `0xd3926a...bcef31`; fraxtal `0xfb903b...7365c8`; mantle `0xee49aa...3cb580`; base `0x2d5b22...4ab6d2`; mode `0xc2d77f...f1a3cc`; arbitrum `0xe16b3c...309b4c`; avalanche `0xd78f51...0359cc`; linea [`0x0385c2...0ebec6`](./contracts/linea-59144/0x0385c27306e0fa285633590ead2814419c0ebec6/) | ⚠️ Unaudited |
| AtlantisIncentiveMakerConnector | unknown | sonic | n/a | 5 deployments: sonic [`0x387885...973f7c`](./contracts/sonic-146/0x387885ebefbb456330d9a0aa186bbe04cc973f7c/); sonic `0x4ca667...b207d3`; sonic `0xc7bb3e...03973e`; sonic `0xf5090d...d56fba`; base `0xb4383a...4780be` | ⚠️ Unaudited |
| AutomatedFarmStrategy | core_logic | optimism | n/a | 4 deployments: optimism [`0x83d50c...652fe7`](./contracts/optimism-10/0x83d50cef0dc3713161115580763e41ba76652fe7/); optimism `0xf5090d...d56fba`; mantle `0xc5542d...d9668d`; base `0xaf6999...d77a55` | ⚠️ Unaudited |
| AutomatedFeeNotifier | unknown | sonic | n/a | 2 deployments: sonic [`0x6f6a53...484aef`](./contracts/sonic-146/0x6f6a537c1e9ccf11d0bc59e64bf8d93f26484aef/); sonic `0x9eb5b7...55b4b1` | ⚠️ Unaudited |
| BalanceLogicLibrary | unknown | optimism | n/a | [`0x79bca9...1f8dce`](./contracts/optimism-10/0x79bca9bcc19e157cb5f8c5a2f4d6cb951b1f8dce/) | ⚠️ Unaudited |
| BlackholeGaugeConnector | operational_periphery | avalanche | n/a | 3 deployments: ethereum `0x855f92...83f953`; avalanche [`0x296b3f...e2d03c`](./contracts/avalanche-43114/0x296b3fcdba0d0deb5ad5e0a1bfaa63f17ae2d03c/); avalanche `0xc9424e...612339` | ⚠️ Unaudited |
| BlackholeGaugeRegistry | operational_periphery | avalanche | n/a | 6 deployments: ethereum `0x5f67db...14136d`; avalanche [`0x26925a...c050d2`](./contracts/avalanche-43114/0x26925ac062c5f267e0fb5c655c2fa8004ac050d2/); avalanche `0x4dd790...c7d224`; avalanche `0x5fd663...198e42`; avalanche `0x66bb55...1c01a1`; avalanche `0x72b10d...7bef2e` | ⚠️ Unaudited |
| BlackholeRouterConnector | adapter | avalanche | n/a | 4 deployments: ethereum `0xdd2ffe...834574`; avalanche [`0x3508a7...983596`](./contracts/avalanche-43114/0x3508a7918ac8f31ef3af71f8bb637926b8983596/); avalanche `0xbaa471...173be0`; avalanche `0xcadffd...408826` | ⚠️ Unaudited |
| BlackholeV2Adapter | adapter | ethereum | n/a | 12 deployments: ethereum [`0x212cf6...56c99c`](./contracts/ethereum-1/0x212cf64bbd972df348be70a4b445385a3056c99c/); optimism `0xdc5118...ff3dc6`; unichain `0xd737c5...704d87`; polygon `0xa8d2de...a44baf`; sonic `0x3f3126...10034c`; fraxtal `0xd6b71d...4f5a5b`; mantle `0xb7b53a...d8b8a8`; base `0x6b894b...4c57b5`; mode `0x928561...a3029b`; arbitrum `0xcf1184...099fa1`; avalanche `0xc1e2dd...905649`; linea `0x5d2a68...3cf1c6` | ⚠️ Unaudited |
| BlackholeV3Connector | unknown | avalanche | n/a | 7 deployments: ethereum `0x6d94af...26c292`; avalanche [`0x4a1daa...a7b5b3`](./contracts/avalanche-43114/0x4a1daaa42496a208b138c92bcca3345c53a7b5b3/); avalanche `0x74547d...220283`; avalanche `0x7d0611...17d094`; avalanche `0x8d68ab...212a40`; avalanche `0x923021...70f2f0`; avalanche `0x9f5bd7...4fc99a` | ⚠️ Unaudited |
| BlackholeV3GaugeConnector | operational_periphery | avalanche | n/a | 8 deployments: ethereum `0xd64e3a...a703c3`; avalanche [`0x2b0273...141db8`](./contracts/avalanche-43114/0x2b027301799029a64b21060c995f772e02141db8/); avalanche `0x5bc457...472566`; avalanche `0x61d7f5...7527e2`; avalanche `0x76fb09...5dd487`; avalanche `0xa57336...d8d15e`; avalanche `0xa8758f...e2ae2e`; avalanche `0xa92424...1b039f` | ⚠️ Unaudited |
| BmxConnector | unknown | base | n/a | 3 deployments: base [`0x2aab70...0d8922`](./contracts/base-8453/0x2aab7012496eb2f5446a64befe56b10ed40d8922/); base `0x4d7271...ff4a18`; base `0x945b71...573b6c` | ⚠️ Unaudited |
| BridgeDepositStrategy | operational_periphery | fraxtal | n/a | 24 deployments: ethereum `0x3ef527...77ff6d`; ethereum `0xd03409...a895f2`; optimism `0x0eb7e3...c10982`; optimism `0x18a0a2...9fbbd5`; unichain `0x2a2d2d...7e0deb`; unichain `0xc2d77f...f1a3cc`; polygon `0x84bf32...dba11a`; polygon `0xbfdec1...3f4724`; sonic `0x5ed2b2...d99f69`; sonic `0x9545d2...dbd03a`; fraxtal [`0x02099a...9bf271`](./contracts/fraxtal-252/0x02099a96d5ef6996d0718e34a229f9c1f79bf271/); fraxtal `0x923021...70f2f0`; mantle `0x310f87...ff028a`; mantle `0x81ab96...d3defc`; base `0x160d86...1f513e`; base `0xf82d1a...367593`; mode `0x46d70f...582766`; mode `0xd737c5...704d87`; arbitrum `0x0cc462...cef977`; arbitrum `0x108e14...b9ccbe`; avalanche `0xa6422d...d52403`; avalanche `0xc4d8da...673d92`; linea `0x985a6a...9d32c0`; linea `0x9f58ee...133242` | ⚠️ Unaudited |
| BridgeLib | operational_periphery | linea | n/a | 24 deployments: ethereum `0x603379...b7e4f2`; ethereum `0xf8fc1b...2157bd`; optimism `0xd174c0...75f10e`; optimism `0xd85f14...2de90c`; unichain `0x1bfe63...389700`; unichain `0xff638d...3d9452`; polygon `0x5c204b...fa7bb2`; polygon `0xbf0230...ca02f7`; sonic `0x5048c0...7c235d`; sonic `0xa978e0...b77a19`; fraxtal `0x54d81f...94eacf`; fraxtal `0xab2ee5...3518be`; mantle `0x916858...a708e6`; mantle `0xaf8afa...c867e6`; base `0x8e62f6...66c0df`; base `0xd7c823...655e7f`; mode `0x5d2fc3...f2ed53`; mode `0x85e28f...c12aac`; arbitrum `0x0e6701...79a890`; arbitrum `0x3078d8...eb9539`; avalanche `0x0acd3f...863730`; avalanche `0xae94ea...fdb97a`; linea [`0x0975c8...e40c38`](./contracts/linea-59144/0x0975c8d3b879db8c645250aa1fac78fc2ce40c38/); linea `0x4a81be...617259` | ⚠️ Unaudited |
| BridgeRouter | operational_periphery | sonic | n/a | 12 deployments: ethereum `0xb0e152...a6a2d4`; optimism `0x7ae5c4...bb4f5a`; unichain `0xcb9613...283991`; polygon `0x3d9cf7...3f79ea`; sonic [`0x26d774...1578d7`](./contracts/sonic-146/0x26d7745573d4be284ad6bcd65469145c0a1578d7/); fraxtal `0x296b3f...e2d03c`; mantle `0xf5090d...d56fba`; base `0xc210fe...8384ca`; mode `0x564dde...68dae1`; arbitrum `0xf81c3a...3ca6d2`; avalanche `0xa9849d...77e8c3`; linea `0xe7feb1...efce31` | ⚠️ Unaudited |
| BridgeRouteReceiver | operational_periphery | base | n/a | 2 deployments: base [`0x3e75fe...088f2b`](./contracts/base-8453/0x3e75fe34ccf3d4b3ee59735b103b8ee310088f2b/); base `0xb0c405...033751` | ⚠️ Unaudited |
| BridgeSwapReceiver | operational_periphery | optimism | n/a | 35 deployments: ethereum `0x29ba97...e82cb7`; ethereum `0xbcefc3...375bbc`; ethereum `0xc2a313...dba57c`; optimism [`0x010a62...d06caa`](./contracts/optimism-10/0x010a62b2682819fc4b9e785595c5e19b35d06caa/); optimism `0x53126b...399b3a`; optimism `0xbeb46e...ecf633`; unichain `0x30d28c...c52e67`; unichain `0x3d660d...492813`; unichain `0x48ea9d...6bee4d`; polygon `0x2cd467...8da825`; polygon `0x629d5c...e92262`; polygon `0xa66aef...c8293a`; sonic `0x0385c2...0ebec6`; sonic `0x96613d...9a2a8d`; sonic `0xfc5254...72441a`; fraxtal `0x5a1b74...e7889b`; fraxtal `0x71de28...07be8f`; fraxtal `0xa57336...d8d15e`; mantle `0x3d660d...492813`; mantle `0xd1095a...a46924`; base `0x16b392...9dd8cf`; base `0x27f3cf...ee7fa4`; base `0xf6d907...e5fabd`; mode `0x3b8886...01e1f3`; mode `0xaccb94...8f4081`; mode `0xee49aa...3cb580`; arbitrum `0x81af02...0450a8`; arbitrum `0xa8e363...7107fa`; arbitrum `0xc069fc...9231fd`; avalanche `0x262b4c...269643`; avalanche `0x3fd528...79ad7f`; avalanche `0x8d9367...8aba4b`; linea `0x93c4dc...e9ff53`; linea `0xa9bb3b...a655d4`; linea `0xb4ec0d...e2a2b2` | ⚠️ Unaudited |
| BridgeWithdrawStrategy | operational_periphery | mantle | n/a | 24 deployments: ethereum `0x331946...57f50d`; ethereum `0xa85498...b1f90b`; optimism `0xd69b2f...cfad90`; optimism `0xea4f5b...5410f6`; unichain `0x353868...ad7d97`; unichain `0x5d0101...de7967`; polygon `0x1bfe63...389700`; polygon `0x5225cb...0d52a2`; sonic `0x0ce036...1c48e2`; sonic `0xbea0e4...16cf28`; fraxtal `0xace729...8fc17b`; fraxtal `0xffcdd3...67af30`; mantle [`0x0a6154...d49220`](./contracts/mantle-5000/0x0a615483e086665ba253fbe141e33f210fd49220/); mantle `0xb37651...75c015`; base `0x9dbc88...7b5861`; base `0xd4676c...93230d`; mode `0x61afd3...91dc3a`; mode `0xb7b53a...d8b8a8`; arbitrum `0x4768ae...6c6b2d`; arbitrum `0x7eb798...39b4d4`; avalanche `0x117220...82af44`; avalanche `0x5266e1...e4e6b8`; linea `0x3f1b56...da2261`; linea `0x3f3126...10034c` | ⚠️ Unaudited |
| CakeOFT | unknown | linea | n/a | 3 deployments: base `0x305591...2013a1`; arbitrum `0x1b8968...c1ba2c`; linea [`0x0d1e75...5befbe`](./contracts/linea-59144/0x0d1e753a25ebda689453309112904807625befbe/) | ⚠️ Unaudited |
| CamelotV2Adapter | adapter | mode | n/a | 12 deployments: ethereum `0x68e023...c27b4b`; optimism `0xba9315...87ecd9`; unichain `0xeb76cb...d15e69`; polygon `0xff638d...3d9452`; sonic `0x985a6a...9d32c0`; fraxtal `0xa6002c...636430`; mantle `0x481d6b...00ea35`; base `0x59557f...974dd2`; mode [`0x3d660d...492813`](./contracts/mode-34443/0x3d660d59095288fc22b7fc5d244f60ed9c492813/); arbitrum `0xe8547a...ca4a09`; avalanche `0xb286a4...4dd949`; linea `0x6d563f...a2ecdf` | ⚠️ Unaudited |
| CamelotV3Connector | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x1ef68f...323b0d`](./contracts/arbitrum-42161/0x1ef68f6c17fd9a7ac5a90707cd08d6bdcd323b0d/); arbitrum `0x420b52...51ecb0`; arbitrum `0x9b565f...e9a8a0`; arbitrum `0xd024b4...7faf40`; arbitrum `0xd3af61...a3cc6b` | ⚠️ Unaudited |
| CLFactory | registry | optimism | n/a | 8 deployments: optimism [`0x3fc8e6...38e2eb`](./contracts/optimism-10/0x3fc8e63e98f83ba0f28336fb537699655938e2eb/); optimism `0x548118...8ac758`; optimism `0x61f42c...f1cdde`; optimism `0x77c839...0f4b51`; optimism `0x8526d8...dcac42`; optimism `0xcc0bdd...1cd12f`; base `0x5e7bb1...06809a`; base `0xcb4d5d...c535ac` | ⚠️ Unaudited |
| CLGauge | operational_periphery | optimism | n/a | 6 deployments: optimism [`0x629e12...7cd905`](./contracts/optimism-10/0x629e122d4542f49145d89bad8b4cbe74757cd905/); optimism `0x6d600c...332bad`; optimism `0xa22d25...1b5e14`; optimism `0xa5c362...6dfee2`; optimism `0xc9b828...af648e`; base `0xb4318c...136f48` | ⚠️ Unaudited |
| CLGaugeFactory | operational_periphery | optimism | n/a | 10 deployments: optimism [`0x5a41a5...c289de`](./contracts/optimism-10/0x5a41a5b04e9e7cca874bdb7ba51cff4815c289de/); optimism `0x9630dd...82d1e3`; optimism `0xa8854e...aa5fc3`; optimism `0xdce58b...146ec0`; sonic `0x9b7e62...2bea1c`; sonic `0x9caf8e...5686e0`; sonic `0xee3168...160116`; sonic `0xf914cc...e8a1a8`; base `0xa70db2...0ac08d`; base `0xef0efe...17e363` | ⚠️ Unaudited |
| CLPool | core_logic | optimism | n/a | 9 deployments: optimism [`0x301e46...943a1b`](./contracts/optimism-10/0x301e46346d39aaa66d372cb40f870510c8943a1b/); optimism `0x380f23...12b4c2`; optimism `0xc28ad2...a3bcbb`; optimism `0xe0a596...a05d37`; optimism `0xf41f45...d32e04`; base `0xd51500...bac106`; base `0xe39ef5...cc74ff`; base `0xec8e53...315831`; base `0xf926b5...f5da8e` | ⚠️ Unaudited |
| ConnectorLens | periphery | ethereum | n/a | 15 deployments: ethereum [`0x0bf0f9...949d53`](./contracts/ethereum-1/0x0bf0f966a8c1676d2d76c1863cbd84170b949d53/); optimism `0x84db05...b93bb8`; optimism `0x9e204d...4854d1`; unichain `0x856c99...fa5095`; polygon `0x49ddd7...eae5c6`; sonic `0x962630...9994fb`; sonic `0xef5497...3854ac`; fraxtal `0x34f895...70968c`; fraxtal `0x3949a9...5b632e`; mantle `0x5b8ee3...ea8715`; base `0x1a87c4...45562c`; mode `0x57732e...2aa00c`; arbitrum `0xf0b9f5...8610d3`; avalanche `0xace729...8fc17b`; linea `0xf0b9f5...8610d3` | ⚠️ Unaudited |
| CrossFarmMoveStrategy | operational_periphery | base | n/a | 12 deployments: ethereum `0xe054ae...6bdfa1`; optimism `0xb14df9...d9f891`; unichain `0x9774e2...a4f3ea`; polygon `0xaef14a...4839ec`; sonic `0x10bd16...9fa0f5`; fraxtal `0xdf015f...968ac0`; mantle `0x5d0101...de7967`; base [`0x039047...3ff999`](./contracts/base-8453/0x039047aa3847f10f2d58f59ea807da0c963ff999/); mode `0x5b86da...fa6e29`; arbitrum `0xa6671e...1fd614`; avalanche `0x4fe6e6...27d117`; linea `0xc55c0b...06f473` | ⚠️ Unaudited |
| CustomSwapFeeModule | unknown | optimism | n/a | 8 deployments: optimism [`0x4bc0e3...bf1c8f`](./contracts/optimism-10/0x4bc0e3f3699d152ecb9c80f3de73a4ff78bf1c8f/); optimism `0x71c05b...3b660a`; optimism `0x7361e9...049d5f`; optimism `0x90a1de...5b0e96`; optimism `0xa90991...3aea73`; optimism `0xa9c319...69e9c1`; base `0xf4171b...69af00`; base `0xfddfa1...c5af6c` | ⚠️ Unaudited |
| CustomUnstakedFeeModule | unknown | base | n/a | 10 deployments: optimism `0x5a6f7f...26678a`; optimism `0x5a9932...9345d0`; optimism `0xc565f7...6c59d9`; optimism `0xdf9db1...560653`; optimism `0xe07eaa...eced54`; optimism `0xe9321c...bc6f50`; base [`0x0ad083...38ee68`](./contracts/base-8453/0x0ad08370c76ff426f534bb2affd9b5555338ee68/); base `0xe3cb2e...657939`; base `0xe4324a...826be7`; mode `0x151ff9...64cf59` | ⚠️ Unaudited |
| DackieV3PoolDeployer | core_logic | base | n/a | 3 deployments: base [`0xc918b1...c1c669`](./contracts/base-8453/0xc918b1c21da06b55be0361adcd5cda3329c1c669/); base `0xef1511...6e3b50`; base `0xf9d712...055b6b` | ⚠️ Unaudited |
| DelegationLogicLibrary | unknown | optimism | n/a | 2 deployments: optimism [`0x737464...aefd30`](./contracts/optimism-10/0x73746410b0dd4526e1fa00d0854e99ba54aefd30/); base `0xd6e6d5...31d59f` | ⚠️ Unaudited |
| DeprecatedAerodromeGaugeRegistry | operational_periphery | base | n/a | 2 deployments: base [`0x71e236...a5506c`](./contracts/base-8453/0x71e23624e7c37a6653ed36044e375bb060a5506c/); base `0xb0b5b4...d5a6fd` | ⚠️ Unaudited |
| DustSwapper | adapter | sonic | n/a | [`0xa8d15f...60bc9f`](./contracts/sonic-146/0xa8d15f9597259600aa969b9205e2d82b6b60bc9f/) | ⚠️ Unaudited |
| DynamicSwapFeeModule | unknown | mode | n/a | [`0xf3a2a7...ed0f35`](./contracts/mode-34443/0xf3a2a7168438792f6c688ae5374be852c7ed0f35/) | ⚠️ Unaudited |
| EmissionsToken | operational_periphery | sonic | n/a | 3 deployments: sonic [`0x7423e3...c4318e`](./contracts/sonic-146/0x7423e3d8fc6e626be895ee70ae54a68994c4318e/); sonic `0xa42008...452171`; sonic `0xca4b1a...6c5bb7` | ⚠️ Unaudited |
| EqualizerGaugeConnector | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x8b2321...61eb98`](./contracts/sonic-146/0x8b2321f9f2a56a9930435286fb39bf3ea961eb98/); sonic `0xb051f3...800307` | ⚠️ Unaudited |
| EqualizerNfpgConnector | unknown | sonic | n/a | [`0xd5e121...6079bb`](./contracts/sonic-146/0xd5e121b733a7ee4d4d22298bc50239177b6079bb/) | ⚠️ Unaudited |
| EqualizerNfpgGaugeRegistry | operational_periphery | sonic | n/a | [`0x475a0f...52d8e4`](./contracts/sonic-146/0x475a0f48d432d715bc64eab5bd8b24a50f52d8e4/) | ⚠️ Unaudited |
| EqualizerNftConnector | token | sonic | n/a | [`0x5e8c2c...fb7719`](./contracts/sonic-146/0x5e8c2cf2303d4b63e592586a14b7048192fb7719/) | ⚠️ Unaudited |
| EqualizerRouterConnector | adapter | sonic | n/a | 4 deployments: sonic [`0x61d7f5...7527e2`](./contracts/sonic-146/0x61d7f5c2821416600651e72ee4c9cc286b7527e2/); sonic `0xa8281d...fda45d`; sonic `0xbdb852...998d06`; sonic `0xd248aa...4f2fa0` | ⚠️ Unaudited |
| EtherexGaugeRegistry | operational_periphery | linea | n/a | 2 deployments: linea [`0x31debc...1537b5`](./contracts/linea-59144/0x31debc0909a1ebf5506d1071b88cc6d4a11537b5/); linea `0x45c831...af3611` | ⚠️ Unaudited |
| EtherexRouterConnector | adapter | linea | n/a | 3 deployments: linea [`0x4ca667...b207d3`](./contracts/linea-59144/0x4ca6672280e8b150c8b142605966d960e6b207d3/); linea `0xdd4dc3...44dfff`; linea `0xe8db41...c6a9bc` | ⚠️ Unaudited |
| EtherexV2GaugeConnector | operational_periphery | linea | n/a | 2 deployments: linea [`0x041166...95c3bb`](./contracts/linea-59144/0x041166c333aacba569b7e108cf4bbb139495c3bb/); linea `0xbaa884...31e636` | ⚠️ Unaudited |
| EtherexV3Connector | unknown | linea | n/a | 5 deployments: linea [`0x1ef68f...323b0d`](./contracts/linea-59144/0x1ef68f6c17fd9a7ac5a90707cd08d6bdcd323b0d/); linea `0x5e8c2c...fb7719`; linea `0x768615...37bf4a`; linea `0x86b066...d1fd69`; linea `0xdfaf68...a2d648` | ⚠️ Unaudited |
| ExactTransferLib | unknown | optimism | n/a | 12 deployments: ethereum `0xb576b9...7d8a68`; optimism [`0x0cfed1...c55302`](./contracts/optimism-10/0x0cfed16b402116eacac8b0e85bb46530a7c55302/); unichain `0xa66aef...c8293a`; polygon `0xf80494...ade5ac`; sonic `0xa741d2...7674da`; fraxtal `0x8a09b9...eec40d`; mantle `0x60f610...a138a7`; base `0xd0debc...7548c3`; mode `0x364796...7c14ae`; arbitrum `0xbe2c2b...04925e`; avalanche `0x7c0968...74f994`; linea `0xdf103a...7c8831` | ⚠️ Unaudited |
| FactoryRegistry | registry | optimism | n/a | [`0xf4c67c...aa1d7b`](./contracts/optimism-10/0xf4c67cdeaab8360370f41514d06e32ccd8aa1d7b/) | ⚠️ Unaudited |
| FeeCollector | unknown | sonic | n/a | 5 deployments: sonic [`0x6a4400...29c9c5`](./contracts/sonic-146/0x6a4400157291d1ff339188eca407011c7429c9c5/); sonic `0xa3c90f...bdd8f7`; sonic `0xbf9ab1...2fa017`; sonic `0xcc0365...f8d27f`; mantle `0x97c62c...658b63` | ⚠️ Unaudited |
| FeeConverterOdos | unknown | mantle | n/a | 2 deployments: mantle [`0xae6321...307298`](./contracts/mantle-5000/0xae63213b0c22f0e7fff46c1b1cdf9d07ed307298/); mantle `0xf4a929...124e8c` | ⚠️ Unaudited |
| FeeDistributorFactory | operational_periphery | sonic | n/a | 5 deployments: sonic [`0x90e433...cec31c`](./contracts/sonic-146/0x90e433e091b4eaf2ecc00d74aab7971f5dcec31c/); sonic `0xa73ff0...eca4bf`; sonic `0xa98a11...f5335a`; sonic `0xcfca4c...72618c`; sonic `0xf0ee36...c6aab2` | ⚠️ Unaudited |
| FeeManager | governance | mantle | n/a | [`0x982ce5...929b12`](./contracts/mantle-5000/0x982ce53ab2c9d7b841af04d8df87879f73929b12/) | ⚠️ Unaudited |
| FeeRecipientFactory | operational_periphery | sonic | n/a | 6 deployments: sonic [`0x49607c...cc860d`](./contracts/sonic-146/0x49607c8e263fe8ae43481ba27a35276ac9cc860d/); sonic `0x5712bd...bf37c1`; sonic `0x5f86d1...4a241b`; sonic `0x75729a...11e17d`; sonic `0xde8db1...3ca699`; sonic `0xe44676...4e4d8f` | ⚠️ Unaudited |
| FlashloanLib | unknown | ethereum | n/a | 4 deployments: ethereum [`0x3d8ac2...99e1da`](./contracts/ethereum-1/0x3d8ac28d53ca8475bd2dcf61b8dd7221f099e1da/); ethereum `0x4a81be...617259`; ethereum `0x9f58ee...133242`; ethereum `0xb468fb...a54389` | ⚠️ Unaudited |
| FlashloanStrategy | core_logic | ethereum | n/a | 3 deployments: ethereum [`0xc7aa15...3b1634`](./contracts/ethereum-1/0xc7aa15e458cb4a6e7b132d4057ab6994843b1634/); ethereum `0xd968cf...ec7f69`; ethereum `0xe4c68a...e371a1` | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | base | n/a | 8 deployments: optimism `0x8391fe...835071`; sonic `0x7b8248...803650`; sonic `0x8bef5e...c434ec`; sonic `0x8cf82d...1299e9`; sonic `0xd37101...496614`; sonic `0xec08a4...0d199f`; sonic `0xf2f565...1bfd15`; base [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | ⚠️ Unaudited |
| GaugeRegistry | operational_periphery | sonic | n/a | 3 deployments: sonic [`0x478ec7...a57103`](./contracts/sonic-146/0x478ec7641ee72df36d5ae2767b264b4a00a57103/); sonic `0x4a1daa...a7b5b3`; sonic `0x547e55...b21817` | ⚠️ Unaudited |
| Gems | unknown | sonic | n/a | [`0x649805...07a9f0`](./contracts/sonic-146/0x64980593f031d62ccd4b3ad02b5e74374107a9f0/) | ⚠️ Unaudited |
| HydrexMerklConnector | unknown | base | n/a | [`0x77a8ca...34a29d`](./contracts/base-8453/0x77a8ca1febb4f3aa93373a32663491f38c34a29d/) | ⚠️ Unaudited |
| IchiConnector | unknown | sonic | n/a | 4 deployments: sonic [`0x8a09b9...eec40d`](./contracts/sonic-146/0x8a09b9784e19de39bf40106726541c6c09eec40d/); sonic `0x955198...13682d`; sonic `0xba74d4...abe076`; sonic `0xe9eb1a...1d9e44` | ⚠️ Unaudited |
| IchiVaultRegistry | registry | sonic | n/a | 3 deployments: sonic [`0x86b066...d1fd69`](./contracts/sonic-146/0x86b0660f8620236ae8215d190d059a9119d1fd69/); sonic `0xab2ee5...3518be`; sonic `0xe21f25...9005cc` | ⚠️ Unaudited |
| JoeStakingRewarder | unknown | mantle | n/a | [`0xed6436...f17f92`](./contracts/mantle-5000/0xed6436a1b91f9a40bd44151f7ea81b45a3f17f92/) | ⚠️ Unaudited |
| KyberLMConnector | unknown | base | n/a | 3 deployments: ethereum `0xa8e363...7107fa`; base [`0x36b02c...b66423`](./contracts/base-8453/0x36b02cdd50041838b62411d77e5fefa37bb66423/); arbitrum `0x45d00b...b928fd` | ⚠️ Unaudited |
| LauncherPlugin | unknown | sonic | n/a | 4 deployments: sonic [`0x5b4e02...5d0f80`](./contracts/sonic-146/0x5b4e02a81373cea45a0539fbd21a741f125d0f80/); sonic `0x804331...42325e`; sonic `0xb91e35...bf8561`; sonic `0xecdb78...eab6b0` | ⚠️ Unaudited |
| LendingStrategy | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x0e2fff...fbbff7`](./contracts/ethereum-1/0x0e2fff65867422813c25a7404950385e36fbbff7/); ethereum `0x31b731...3cba1f`; ethereum `0x31d747...82d353`; ethereum `0x386779...4d1f8f`; ethereum `0xc74965...9bacb1` | ⚠️ Unaudited |
| LineaVestingConnector | operational_periphery | linea | n/a | 2 deployments: linea [`0xb7c1be...d9ab95`](./contracts/linea-59144/0xb7c1be5b2caabaf4f638d6c9d10d662f27d9ab95/); linea `0xed67e7...b3805a` | ⚠️ Unaudited |
| LPFarmStrategy | core_logic | optimism | n/a | 4 deployments: optimism [`0x49606f...d4890d`](./contracts/optimism-10/0x49606f96fa3d8d52f37dec96781fa4dd36d4890d/); mantle `0x8bb906...548289`; mantle `0xf99c9b...55fc20`; base `0xb024cb...57c5a6` | ⚠️ Unaudited |
| LpMigrator | periphery | optimism | n/a | 2 deployments: optimism [`0x3fdb48...534e71`](./contracts/optimism-10/0x3fdb481b25b24824a2339a4a1abd0b0bc7534e71/); optimism `0x87222d...2668a0` | ⚠️ Unaudited |
| ManagedRewardsFactory | registry | optimism | n/a | 2 deployments: optimism [`0xcdd958...05cff0`](./contracts/optimism-10/0xcdd9585005095ac7447d1fdbc990c5cfb805cff0/); base `0xfda1fb...d2bdc3` | ⚠️ Unaudited |
| MasterChef | unknown | mantle | n/a | 3 deployments: mantle [`0x76d8d0...9b0cb5`](./contracts/mantle-5000/0x76d8d0e37f697cc95c87f0ba9512701cf19b0cb5/); mantle `0xd4bd5e...523dcc`; mantle `0xeb1d08...73ce2a` | ⚠️ Unaudited |
| MasterChef | unknown | mantle | n/a | [`0xa756f7...1955b5`](./contracts/mantle-5000/0xa756f7d419e1a5cbd656a438443011a7de1955b5/) | ⚠️ Unaudited |
| MasterchefConnector | unknown | mantle | n/a | 2 deployments: mantle [`0x74a9ad...21321e`](./contracts/mantle-5000/0x74a9ad382b6116b655480bada469bae55f21321e/); mantle `0x955198...13682d` | ⚠️ Unaudited |
| MasterChefRewarder | unknown | mantle | n/a | 5 deployments: mantle [`0x6b9b71...132b33`](./contracts/mantle-5000/0x6b9b717e56bb1c432115d748fc6cf40cbd132b33/); mantle `0x75f0d0...5a0875`; mantle `0xb02e02...7167fd`; mantle `0xcc076c...d2e938`; mantle `0xf5d738...310012` | ⚠️ Unaudited |
| MasterchefV3Connector | unknown | base | n/a | 4 deployments: base [`0xa6002c...636430`](./contracts/base-8453/0xa6002ce302cadf7f6658b35eacdb1ab408636430/); base `0xaf8afa...c867e6`; base `0xcf1184...099fa1`; base `0xd458fc...c2f268` | ⚠️ Unaudited |
| MasterChefV3KeeperV2 | operational_periphery | linea | n/a | 2 deployments: base `0x8c2a36...cd1834`; linea [`0x6ca0f5...68dd2e`](./contracts/linea-59144/0x6ca0f5c25075f43a4c6ef7e6a704ceb33468dd2e/) | ⚠️ Unaudited |
| MasterChefV3ReceiverV2 | unknown | linea | n/a | 2 deployments: base `0xfca69d...f71fa7`; linea [`0x1c1081...1d7ecd`](./contracts/linea-59144/0x1c1081e2bb3c2f3805bc89e1951c15be551d7ecd/) | ⚠️ Unaudited |
| MasterchefWithReferrerConnector | unknown | mantle | n/a | [`0xa6002c...636430`](./contracts/mantle-5000/0xa6002ce302cadf7f6658b35eacdb1ab408636430/) | ⚠️ Unaudited |
| MerchantMoeMasterchefConnector | unknown | mantle | n/a | 3 deployments: mantle [`0x298614...f2b6db`](./contracts/mantle-5000/0x298614a6d91a9f80f144784cd916348c08f2b6db/); mantle `0x6fa6a0...f23dbe`; mantle `0xa8758f...e2ae2e` | ⚠️ Unaudited |
| MerklConnector | unknown | arbitrum | n/a | 27 deployments: ethereum `0x18ecff...17c54b`; ethereum `0x377b67...4c7582`; ethereum `0xab434e...9a24fc`; ethereum `0xf01c61...128942`; optimism `0x4fe6e6...27d117`; optimism `0x7fd9f6...0c4699`; optimism `0xfbbfc8...f1c962`; unichain `0x23e5d9...4cfa4c`; unichain `0x3cb9ae...7dc83c`; unichain `0xe4cdcb...9af07c`; polygon `0x19a2dd...3388de`; polygon `0x5c7077...8b508e`; polygon `0x7671cb...692171`; sonic `0x6cf3b0...5c62d3`; sonic `0xb37651...75c015`; sonic `0xbd6039...c45b11`; sonic `0xd1b264...890774`; base `0x30962d...278317`; base `0x99a2f5...f60dcc`; base `0xd59ac0...33d71d`; base `0xe31ad7...8d9a1a`; arbitrum [`0x03fa97...9b26aa`](./contracts/arbitrum-42161/0x03fa9770db525d5d287da8d851a93a35a39b26aa/); arbitrum `0x3ebf49...bbf875`; arbitrum `0xe6ff4f...d5da46`; avalanche `0x3ecdfe...934007`; avalanche `0x624c75...6c422a`; avalanche `0xb3dc04...325ee1` | ⚠️ Unaudited |
| MigrationStrategy | operational_periphery | base | n/a | 3 deployments: optimism `0xbd89f4...a9bfb8`; mantle `0xf6d5c2...7db262`; base [`0xb60ab0...9a0d76`](./contracts/base-8453/0xb60ab0b9b7b0d1614ab53b7540653078d89a0d76/) | ⚠️ Unaudited |
| Minter | operational_periphery | sonic | n/a | 8 deployments: optimism `0x6dc9e1...d10982`; sonic [`0x4e3a52...13a752`](./contracts/sonic-146/0x4e3a52a75eb452a48ba2561a2d75d35c0013a752/); sonic `0x635e17...3aa2d8`; sonic `0x71619c...f7f644`; sonic `0x9bc0b2...1a1c46`; sonic `0xa478d8...e01364`; sonic `0xc7022f...7f3765`; base `0xeb0183...a33fe5` | ⚠️ Unaudited |
| MixedRouteQuoterV1 | periphery | base | n/a | 14 deployments: optimism `0x6315dc...3056a3`; optimism `0x7e4b99...aa7406`; optimism `0xa4ac92...76df62`; optimism `0xb81774...632777`; optimism `0xfaa0a0...4301f2`; optimism `0xff79ec...b44722`; sonic `0x57cb65...1a7263`; sonic `0x7c2916...5abe76`; sonic `0xbf63dc...ce5a13`; sonic `0xcc83a7...e2cd34`; sonic `0xd464d0...f106d9`; sonic `0xdce360...9ec261`; base [`0x0a5aa5...07d5c6`](./contracts/base-8453/0x0a5aa5d3a4d28014f967bf0f29eaa3ff9807d5c6/); base `0xe2af5f...b406e2` | ⚠️ Unaudited |
| Moe | unknown | mantle | n/a | 2 deployments: mantle [`0x4515a4...dc00c9`](./contracts/mantle-5000/0x4515a45337f461a11ff0fe8abf3c606ae5dc00c9/); mantle `0x8764ab...161494` | ⚠️ Unaudited |
| MoeFactory | registry | mantle | n/a | 3 deployments: mantle [`0x5bef01...4bedec`](./contracts/mantle-5000/0x5bef015ca9424a7c07b68490616a4c1f094bedec/); mantle `0xc850df...92c5d2`; mantle `0xea2a8c...6846e0` | ⚠️ Unaudited |
| MoeHelper | periphery | mantle | n/a | [`0xfe8b6a...2d2d7a`](./contracts/mantle-5000/0xfe8b6aaf50212939b52558e8813b62c9212d2d7a/) | ⚠️ Unaudited |
| MoeLens | periphery | mantle | n/a | 2 deployments: mantle [`0xaa61e8...7698ba`](./contracts/mantle-5000/0xaa61e8db8983582bfd7786fea681e7bb237698ba/); mantle `0xdab599...da1f55` | ⚠️ Unaudited |
| MoePair | unknown | mantle | n/a | [`0xcb61a1...c8468b`](./contracts/mantle-5000/0xcb61a1a9c21fb30b95fa4118c97da350f6c8468b/) | ⚠️ Unaudited |
| MoeQuoter | periphery | mantle | n/a | [`0x72b507...2b59f4`](./contracts/mantle-5000/0x72b507a4799815adc30083925f748210e92b59f4/) | ⚠️ Unaudited |
| MoeRouter | adapter | mantle | n/a | 3 deployments: mantle [`0xaf6278...ffdeb8`](./contracts/mantle-5000/0xaf627839850143043415925bc77c00c01effdeb8/); mantle `0xeaee7e...e7232a`; mantle `0xf311d5...376ce5` | ⚠️ Unaudited |
| MultiSwapRouter | adapter | arbitrum | n/a | 30 deployments: ethereum `0xd9704c...2affc0`; ethereum `0xf85251...735741`; optimism `0xab1960...33d6a6`; optimism `0xe054ae...6bdfa1`; unichain `0x1732e3...1e320f`; unichain `0x84bf32...dba11a`; polygon `0x6fa6a0...f23dbe`; sonic `0x9312f6...e85d6d`; sonic `0x9c418b...ff1b58`; sonic `0xd51a36...7fcc97`; fraxtal `0x61d7f5...7527e2`; fraxtal `0x72b10d...7bef2e`; fraxtal `0x76fb09...5dd487`; mantle `0x928561...a3029b`; base `0x8e5ebb...c7d73b`; base `0xf33ff0...76526c`; mode `0x2a2d2d...7e0deb`; mode `0x5a72c0...128a04`; mode `0x74547d...220283`; arbitrum [`0x05fc2c...d379ff`](./contracts/arbitrum-42161/0x05fc2c6045f108fd587c68e78fcdcaa0d8d379ff/); arbitrum `0x0e9c10...3d606c`; arbitrum `0x12c700...0fdfdc`; arbitrum `0x4763eb...d78fd9`; arbitrum `0x705768...21cd0f`; arbitrum `0xda5133...650e47`; arbitrum `0xe99495...a05a33`; avalanche `0x644c5c...946e1a`; avalanche `0xb9ab7e...3c5a5e`; avalanche `0xedce63...839004`; linea `0xbf831e...974ba4` | ⚠️ Unaudited |
| NFTDescriptor | token | optimism | n/a | 5 deployments: optimism [`0x829f78...61bea9`](./contracts/optimism-10/0x829f7819ef21301f423bbf406f6fc3f22b61bea9/); optimism `0x848cfd...7ca13c`; optimism `0x98f3df...2c8279`; optimism `0xe92752...074eba`; optimism `0xf3488a...211b1a` | ⚠️ Unaudited |
| NFTSVG | token | optimism | n/a | 3 deployments: optimism [`0x628ee3...9a678f`](./contracts/optimism-10/0x628ee3400ea249a575ad4422c6f9403f719a678f/); optimism `0x88d3cd...b82690`; base `0xe1c8e0...f92c04` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | optimism | n/a | [`0x416b43...dc6f29`](./contracts/optimism-10/0x416b433906b1b72fa758e166e239c43d68dc6f29/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | optimism | n/a | [`0xbb5dfe...56adf4`](./contracts/optimism-10/0xbb5dfe1380333cee4c2eebd7202c80de2256adf4/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | sonic | n/a | [`0x12e66c...0f4406`](./contracts/sonic-146/0x12e66c8f215ddd5d48d150c8f46ad0c6fb0f4406/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | sonic | n/a | 13 deployments: optimism `0x785de6...350521`; optimism `0xfb9155...1ff8a5`; sonic [`0x5f477c...76f847`](./contracts/sonic-146/0x5f477c5dfb9ed6c5e2923414b6a8dc51c976f847/); sonic `0x8850a3...ad7176`; sonic `0xa3f3b8...4a5866`; sonic `0xa829e3...c87713`; sonic `0xb3154c...89f5df`; sonic `0xbca6a2...3930d7`; sonic `0xd3fdf8...589f2f`; sonic `0xd7e648...91ae8e`; sonic `0xf9f98b...543874`; base `0xbcb131...7ca71e`; base `0xf67016...77c45a` | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | sonic | n/a | [`0xa57fa3...f1542e`](./contracts/sonic-146/0xa57fa38b3fd45922394e9e1077748a2383f1542e/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | [`0x827922...485b72`](./contracts/base-8453/0x827922686190790b37229fd06084350e74485b72/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | base | n/a | [`0xc741be...6a1178`](./contracts/base-8453/0xc741beb2156827704a1466575cca1cbf726a1178/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | arbitrum | n/a | [`0xaa277c...e610ef`](./contracts/arbitrum-42161/0xaa277cb7914b7e5514946da92cb9de332ce610ef/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | linea | n/a | [`0xaaa78e...45946a`](./contracts/linea-59144/0xaaa78e8c4241990b4ce159e105da08129345946a/) | ⚠️ Unaudited |
| NonfungibleTokenPositionDescriptor | token | optimism | n/a | 21 deployments: optimism [`0x2c9988...834ff8`](./contracts/optimism-10/0x2c998811b2af32416c8ff4c0ea85f0e7ed834ff8/); optimism `0x388c59...832f15`; optimism `0x49f248...30d3a4`; optimism `0xb18cb9...9497de`; optimism `0xccdf41...dea165`; sonic `0x4d28e3...9a657c`; sonic `0x4eaeca...960c29`; sonic `0x60b1b2...2e7b98`; sonic `0x78be3a...2d5390`; sonic `0x7f7f08...3ae6b9`; sonic `0x9a6158...88c4dc`; sonic `0xd54406...04784a`; sonic `0xd9009b...759441`; sonic `0xd98aca...f18561`; sonic `0xdaa4b0...2c4607`; sonic `0xdafd97...cc7673`; sonic `0xdb0cf2...97436e`; sonic `0xe2c4bd...22bd09`; sonic `0xf4d700...33e4e1`; sonic `0xfe3244...2d8c4b`; base `0xf1503a...a040ed` | ⚠️ Unaudited |
| NuriGaugeConnector | operational_periphery | fraxtal | n/a | 4 deployments: fraxtal [`0x4b7c6f...0cb202`](./contracts/fraxtal-252/0x4b7c6f757b6a62c9359eeaef9a7097e0b70cb202/); fraxtal `0x768caf...98d19f`; fraxtal `0xd290f6...212691`; fraxtal `0xf3442b...56d204` | ⚠️ Unaudited |
| NuriGaugeRegistry | operational_periphery | fraxtal | n/a | 8 deployments: fraxtal [`0x152a4f...bdf01c`](./contracts/fraxtal-252/0x152a4f338f6765d181234d6996e6f80063bdf01c/); fraxtal `0x1c9d70...b0ed35`; fraxtal `0xa452df...3bd7c4`; fraxtal `0xd458fc...c2f268`; fraxtal `0xde3f58...23165d`; fraxtal `0xe4cdcb...9af07c`; fraxtal `0xf1ce0e...a4a0a7`; fraxtal `0xf99c9b...55fc20` | ⚠️ Unaudited |
| NuriRouterConnector | adapter | fraxtal | n/a | 4 deployments: fraxtal [`0xb61c56...89bf86`](./contracts/fraxtal-252/0xb61c567ee2d90be26adeaef632fdedd97689bf86/); fraxtal `0xbfd418...5537d5`; fraxtal `0xc5542d...d9668d`; fraxtal `0xfb578a...7dd953` | ⚠️ Unaudited |
| NuriV3Connector | unknown | fraxtal | n/a | 8 deployments: fraxtal [`0x0f6abc...9c81a3`](./contracts/fraxtal-252/0x0f6abc6b808b377d6aed8da1fad5e135c99c81a3/); fraxtal `0x282f83...983027`; fraxtal `0x2d0fd2...c64c1d`; fraxtal `0x64f435...7403ce`; fraxtal `0x8bc182...60466e`; fraxtal `0x96c64d...f3fa1b`; fraxtal `0xa05a9e...3a8788`; fraxtal `0xaf18c0...fba18b` | ⚠️ Unaudited |
| OffchainOracle | operational_periphery | optimism | n/a | [`0xc3f14f...e67783`](./contracts/optimism-10/0xc3f14f34ea43943e6fd677a2bdcea65882e67783/) | ⚠️ Unaudited |
| OmniV3Connector | unknown | optimism | n/a | 16 deployments: optimism [`0x00dc7a...ed4d1d`](./contracts/optimism-10/0x00dc7a6cb7f1a9c7c38dbc426801133ab9ed4d1d/); optimism `0x2e075e...fbed44`; optimism `0xaa0c34...16a714`; sonic `0x842b3f...3465b8`; sonic `0xbb478c...38fd10`; sonic `0xc7d6e2...c2940b`; base `0x166efa...fc37b4`; base `0x679241...d4ca54`; base `0xa6bb36...17c436`; base `0xbd2de0...5be91a`; arbitrum `0x6e03a6...4a7276`; arbitrum `0x99f309...9fc84c`; arbitrum `0xe32472...0aec9b`; avalanche `0x064abb...16a5e0`; avalanche `0xc7ba8f...26a646`; avalanche `0xf5691e...7da704` | ⚠️ Unaudited |
| PairFactory | registry | sonic | n/a | 7 deployments: sonic [`0x2da25e...6374c8`](./contracts/sonic-146/0x2da25e7446a70d7be65fd4c053948becaa6374c8/); sonic `0x522f94...146b52`; sonic `0x60b7ec...03a8b6`; sonic `0x8d0f45...ff5c34`; sonic `0xaccf68...3ee652`; sonic `0xcb3e3c...2be924`; sonic `0xd54aa5...a8010c` | ⚠️ Unaudited |
| PancakeInfinityAdapter | adapter | fraxtal | n/a | 12 deployments: ethereum `0x78def7...0f0425`; optimism `0xcf2a68...92a27a`; unichain `0xe2defb...911777`; polygon `0x9774e2...a4f3ea`; sonic `0xc74965...9bacb1`; fraxtal [`0x29d829...c64125`](./contracts/fraxtal-252/0x29d82976c8babb7d5a82c78c6ef4c2a2ddc64125/); mantle `0xa91916...8337c5`; base `0xfb6b7a...d33805`; mode `0x60f610...a138a7`; arbitrum `0xcc0b08...ee50f9`; avalanche `0x7be0fe...ae0602`; linea `0x608795...d1b31a` | ⚠️ Unaudited |
| PancakeInfinityConnector | unknown | base | n/a | 2 deployments: base [`0x178b1a...677ccc`](./contracts/base-8453/0x178b1ad7d412c42c0e5baf0c091c3cb98d677ccc/); base `0x74096d...412f5d` | ⚠️ Unaudited |
| PancakeInfinityFarmConnector | unknown | base | n/a | [`0xac7bb8...17fc67`](./contracts/base-8453/0xac7bb8ef90ec3d419afa2834618123285417fc67/) | ⚠️ Unaudited |
| PancakeMasterchefV3Connector | unknown | arbitrum | n/a | 22 deployments: ethereum `0x417e48...8e147c`; ethereum `0x4a1c26...c4b299`; ethereum `0x4d84a2...b64ffb`; ethereum `0x5d2a68...3cf1c6`; ethereum `0x96791c...a26be5`; base `0x3b4a93...8f8f69`; base `0x43be0d...7a29a4`; base `0x62842c...b59dd6`; base `0x7cae87...b57002`; base `0xe4c59e...deb46a`; arbitrum [`0x142403...dba3ff`](./contracts/arbitrum-42161/0x1424037cfbdc0eeb25a31d413c62b2408bdba3ff/); arbitrum `0x1d12ca...a98e31`; arbitrum `0x31debc...1537b5`; arbitrum `0xc26cf5...27c6d8`; arbitrum `0xf15217...4158cf`; arbitrum `0xf7b4a3...2546d5`; linea `0x3ebf49...bbf875`; linea `0x554981...06a831`; linea `0x962630...9994fb`; linea `0xbdb852...998d06`; linea `0xf15217...4158cf`; linea `0xf7b4a3...2546d5` | ⚠️ Unaudited |
| PancakeRouter | adapter | base | n/a | [`0xb3b166...8f17fd`](./contracts/base-8453/0xb3b166ac12cd6c1e0093cbde5810343dc28f17fd/) | ⚠️ Unaudited |
| PancakeV3Connector | unknown | sonic | n/a | 24 deployments: ethereum `0x6d563f...a2ecdf`; ethereum `0x9312f6...e85d6d`; ethereum `0xa6c960...fd89ca`; ethereum `0xaf6999...d77a55`; ethereum `0xf5691e...7da704`; sonic [`0x1242d5...5fc80b`](./contracts/sonic-146/0x1242d59fecface4ce7f2a59896537f95255fc80b/); sonic `0x45b83b...372569`; sonic `0xe953ca...40e09b`; base `0x635737...63b92d`; base `0xa1ddfe...e3d9fd`; base `0xb1466a...2aca07`; base `0xbc9725...ad4171`; base `0xc8e6ac...67f245`; base `0xfe653b...62cfbc`; arbitrum `0x6cf3b0...5c62d3`; arbitrum `0xb051f3...800307`; arbitrum `0xb2866b...b9e17b`; arbitrum `0xe8db41...c6a9bc`; arbitrum `0xe9ef6d...9a7ab1`; linea `0x1d12ca...a98e31`; linea `0x6cf3b0...5c62d3`; linea `0xa7abc7...952aba`; linea `0xb051f3...800307`; linea `0xc50d61...456bd2` | ⚠️ Unaudited |
| PancakeV3LmPoolDeployer | core_logic | base | n/a | [`0xa0dd04...a0f4eb`](./contracts/base-8453/0xa0dd04e265b1828b050df27f007d49e9d1a0f4eb/) | ⚠️ Unaudited |
| PangolinV3Connector | unknown | avalanche | n/a | [`0x06e2ea...f34593`](./contracts/avalanche-43114/0x06e2eaea943cacc9c39d170330219218c4f34593/) | ⚠️ Unaudited |
| ParaswapConnector | unknown | optimism | n/a | 2 deployments: optimism [`0x6eedd0...1a8ce5`](./contracts/optimism-10/0x6eedd06ebe34cd1e8722961215abed38011a8ce5/); base `0xace729...8fc17b` | ⚠️ Unaudited |
| PatchedManagedRewardsFactory | registry | optimism | n/a | [`0x3f468e...142e9c`](./contracts/optimism-10/0x3f468e35f5c262a6e796bfe3be831bf8b9142e9c/) | ⚠️ Unaudited |
| PharaohGaugeRegistry | operational_periphery | avalanche | n/a | [`0xeb401e...22173a`](./contracts/avalanche-43114/0xeb401ee88149ef9e0230655b8e72c550d822173a/) | ⚠️ Unaudited |
| PharaohRouterConnector | adapter | avalanche | n/a | [`0x24c9d5...012611`](./contracts/avalanche-43114/0x24c9d584b5e2e1d61f30db6d1baca16360012611/) | ⚠️ Unaudited |
| PharaohV2GaugeConnector | operational_periphery | avalanche | n/a | [`0xdfc520...a2d4d2`](./contracts/avalanche-43114/0xdfc5207f1d0797a8544f16bfdf44d8bfc5a2d4d2/) | ⚠️ Unaudited |
| PharaohV3Connector | unknown | avalanche | n/a | 2 deployments: avalanche [`0x119ed2...3877f5`](./contracts/avalanche-43114/0x119ed29f4398c6909d14675bc726e405b13877f5/); avalanche `0x8125f3...7d27fb` | ⚠️ Unaudited |
| ProxyAdmin | governance | sonic | n/a | 3 deployments: sonic [`0x705858...1ce145`](./contracts/sonic-146/0x7058589fc0e5fe7e716b963c3f9bfc908a1ce145/); sonic `0x891db3...0041de`; sonic `0xb2b28f...be6eec` | ⚠️ Unaudited |
| ProxyAdmin2Step | governance | mantle | n/a | 2 deployments: mantle [`0x886523...f6af2a`](./contracts/mantle-5000/0x886523e92c7624825307626bdf5cbabc6ff6af2a/); mantle `0xc96543...c06429` | ⚠️ Unaudited |
| QuickswapV3Connector | unknown | polygon | n/a | 4 deployments: polygon [`0x4f8833...e71780`](./contracts/polygon-137/0x4f8833cd141e60b112105d581e852e8ed0e71780/); polygon `0x84676e...136f8a`; polygon `0x991ce3...a88581`; polygon `0xdf70bb...316916` | ⚠️ Unaudited |
| Quoter | periphery | sonic | n/a | 13 deployments: sonic [`0x3003b4...d79dc7`](./contracts/sonic-146/0x3003b4feaff95e09683feb7fc5d11b330cd79dc7/); sonic `0x65c3f1...1a25ac`; sonic `0x6696e4...f51769`; sonic `0x6d1cfc...0865fe`; sonic `0x7983e9...6e0cf6`; sonic `0x802bab...98a003`; sonic `0xacf850...4a4580`; sonic `0xad75cf...1dc45f`; sonic `0xbcc69b...5c9500`; sonic `0xd479e3...7f8d7d`; sonic `0xe46f54...a1587c`; sonic `0xf2a751...1e614d`; sonic `0xfc5739...698ae6` | ⚠️ Unaudited |
| QuoterV2 | periphery | sonic | n/a | 24 deployments: optimism `0x53ca9c...2611e3`; optimism `0x5d467a...3f5900`; optimism `0x81944c...4c5e85`; optimism `0x89d821...621466`; optimism `0xa2decf...63ce45`; sonic [`0x219b7a...07535a`](./contracts/sonic-146/0x219b7adebc0935a3ec889a148c6924d51a07535a/); sonic `0x56602b...ee1744`; sonic `0x5b7162...53a1f9`; sonic `0x727618...7b6eab`; sonic `0x7f5134...149bf8`; sonic `0x819bd8...5145ba`; sonic `0x8ebd92...a9fee7`; sonic `0x99e035...24e9dc`; sonic `0xa49d65...41f9b1`; sonic `0xb1e6f4...bbf3fe`; sonic `0xbbf6ed...b0d866`; sonic `0xc260f8...42748b`; sonic `0xced0d4...a526f0`; sonic `0xd2c355...e8eb72`; sonic `0xd3a8b1...ff5da7`; sonic `0xfa2c03...ef5e28`; base `0x254cf9...ae15b0`; base `0xbb6ad0...c9fa84`; base `0xbe0ec7...9762d7` | ⚠️ Unaudited |
| RamsesGaugeConnector | operational_periphery | mantle | n/a | 8 deployments: mantle [`0x0d3e1d...16c0c2`](./contracts/mantle-5000/0x0d3e1d7b3a0861f0e8122ccc74d43eb4e816c0c2/); mantle `0x1bfe63...389700`; arbitrum `0x9b6f97...39862d`; arbitrum `0xd68532...faf0d1`; avalanche `0x400b2d...bba104`; avalanche `0x5e8c2c...fb7719`; linea `0x9b6f97...39862d`; linea `0xa5d2d3...b0daee` | ⚠️ Unaudited |
| RamsesGaugeRegistry | operational_periphery | mantle | n/a | 24 deployments: mantle [`0x125caf...4cb45e`](./contracts/mantle-5000/0x125caffe923eaa451461ab98353c4a88154cb45e/); mantle `0x6f3e8f...bc3fe3`; mantle `0x7badae...03804f`; mantle `0xdf015f...968ac0`; mantle `0xf8d2b5...f980cb`; arbitrum `0x5a1bc8...5516ed`; arbitrum `0xa60ca9...c199d5`; arbitrum `0xa92424...1b039f`; arbitrum `0xc07b5d...822b8a`; arbitrum `0xc8d036...b076b0`; arbitrum `0xf2cfa4...1a8832`; avalanche `0x18ecff...17c54b`; avalanche `0x298614...f2b6db`; avalanche `0x6f3e8f...bc3fe3`; avalanche `0xc6aacd...1fc2e6`; avalanche `0xd5e121...6079bb`; avalanche `0xd737c5...704d87`; avalanche `0xfb903b...7365c8`; linea `0x7a78c4...cfb411`; linea `0x97e7e3...ceec69`; linea `0xc07b5d...822b8a`; linea `0xc393c1...e9cec5`; linea `0xe894c5...ed39c3`; linea `0xf2cfa4...1a8832` | ⚠️ Unaudited |
| RamsesRouterConnector | adapter | avalanche | n/a | 9 deployments: mantle `0x5d2fc3...f2ed53`; mantle `0x67e80f...9862cd`; mantle `0xd826da...b050ea`; arbitrum `0x5f60b6...14dcc3`; arbitrum `0x65d9da...688d56`; avalanche [`0x475a0f...52d8e4`](./contracts/avalanche-43114/0x475a0f48d432d715bc64eab5bd8b24a50f52d8e4/); avalanche `0x4a1c26...c4b299`; linea `0xaf5833...b5724e`; linea `0xba74d4...abe076` | ⚠️ Unaudited |
| RamsesV3Connector | unknown | arbitrum | n/a | 23 deployments: mantle `0x5c7077...8b508e`; mantle `0x629d5c...e92262`; mantle `0xa66aef...c8293a`; mantle `0xfc4c50...cd564b`; arbitrum [`0x194cdf...8f9f9a`](./contracts/arbitrum-42161/0x194cdf44ef8f1bb58fadbd105b2c485aae8f9f9a/); arbitrum `0x547e55...b21817`; arbitrum `0x6f00a2...18eb49`; arbitrum `0xb1396e...206489`; arbitrum `0xc8695f...210ffc`; arbitrum `0xe866f0...747597`; avalanche `0x1bfe63...389700`; avalanche `0x2a2d2d...7e0deb`; avalanche `0x61afd3...91dc3a`; avalanche `0x768615...37bf4a`; avalanche `0x9312f6...e85d6d`; avalanche `0xc12873...f8b746`; avalanche `0xd65eaf...53773d`; linea [`0x194cdf...8f9f9a`](./contracts/linea-59144/0x194cdf44ef8f1bb58fadbd105b2c485aae8f9f9a/); linea `0x547e55...b21817`; linea `0xc7bb3e...03973e`; linea `0xc7d6e2...c2940b`; linea `0xe0266e...b13a68`; linea `0xe32472...0aec9b` | ⚠️ Unaudited |
| RamsesV3Factory | registry | sonic | n/a | 10 deployments: sonic [`0x6a216e...fd09e8`](./contracts/sonic-146/0x6a216eddec4443d57a305e2a2d16925fe7fd09e8/); sonic `0x73e326...6297e1`; sonic `0x836821...90aa5b`; sonic `0x9d2dfb...8aeae5`; sonic `0xb24538...886e87`; sonic `0xbc2c66...7e8f7e`; sonic `0xcd2d06...8de6d7`; sonic `0xed147b...bb9bef`; sonic `0xed55fa...fdb2dc`; sonic `0xff1a32...7d6356` | ⚠️ Unaudited |
| RamsesV3PoolDeployer | core_logic | sonic | n/a | 8 deployments: sonic [`0x4c0a98...bea3b6`](./contracts/sonic-146/0x4c0a98ef13e29fcf8544256007bdf58c58bea3b6/); sonic `0x737e6e...3e47da`; sonic `0x8bbdc1...142d59`; sonic `0x9e0115...efe671`; sonic `0xac8928...067a84`; sonic `0xc1747e...d77156`; sonic `0xe6e461...e63d7d`; sonic `0xf04581...0db8c8` | ⚠️ Unaudited |
| RebalanceLib | unknown | optimism | n/a | 3 deployments: optimism [`0x691757...58437a`](./contracts/optimism-10/0x6917570f7989d13fd2592b0162ce6fa97c58437a/); optimism `0xa4fb47...552682`; base `0xdb5098...cf2018` | ⚠️ Unaudited |
| RebalanceStrategy | core_logic | optimism | n/a | 6 deployments: optimism [`0x9960bd...3b9d96`](./contracts/optimism-10/0x9960bd7dcdf8e4ecf7dc5ca1dc433921a03b9d96/); optimism `0xa91916...8337c5`; optimism `0xcb9613...283991`; optimism `0xee49aa...3cb580`; base `0xa5d2d3...b0daee`; base `0xc26cf5...27c6d8` | ⚠️ Unaudited |
| RewardClaimers | operational_periphery | sonic | n/a | [`0x684667...ff4082`](./contracts/sonic-146/0x684667de9025329e1c2d3869b2a7631a91ff4082/) | ⚠️ Unaudited |
| RewardClaimers2 | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x54e6ec...c84b98`](./contracts/sonic-146/0x54e6eccd783ff3cfe10eb157e7b3ffc6d8c84b98/); sonic `0xf99693...a8b995` | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | base | n/a | 2 deployments: optimism `0x9d4736...1ea99b`; base [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | ⚠️ Unaudited |
| Router | adapter | sonic | n/a | 6 deployments: optimism `0xa062ae...8b2858`; sonic [`0x1d3687...330cdc`](./contracts/sonic-146/0x1d368773735ee1e678950b7a97bca2cafb330cdc/); sonic `0x4e0262...0a0a6b`; sonic `0xdedfa6...c51c95`; sonic `0xe5a4f2...4deff5`; base `0xcf77a3...874e43` | ⚠️ Unaudited |
| RouterAllowlist | adapter | linea | n/a | 27 deployments: ethereum `0x3b1ed0...296bdf`; ethereum `0xcc8a35...62969b`; optimism `0x3ebc73...a4e5b3`; optimism `0x97f021...7dbc2d`; unichain `0x125caf...4cb45e`; unichain `0x5225cb...0d52a2`; unichain `0xa8d2de...a44baf`; polygon `0x4c0639...7bbb07`; sonic `0x417e48...8e147c`; sonic `0x624c75...6c422a`; sonic `0xcc6197...756a98`; fraxtal `0x3508a7...983596`; fraxtal `0x4a1daa...a7b5b3`; fraxtal `0xe56938...4624e9`; mantle `0xc2d77f...f1a3cc`; base `0xd709d0...d24aa8`; base `0xf73ec9...8b21b0`; mode `0x298614...f2b6db`; mode `0x353868...ad7d97`; mode `0x6f3e8f...bc3fe3`; arbitrum `0x69478d...5afcfd`; arbitrum `0x7b273e...9be878`; arbitrum `0xbe5653...152bf4`; avalanche `0x8f3149...e5ed46`; avalanche `0xa94afa...2b09c9`; avalanche `0xab22e4...816357`; linea [`0x073049...7bf3b7`](./contracts/linea-59144/0x073049917a8f7f41c60aad8232b69b89b37bf3b7/) | ⚠️ Unaudited |
| ShadowGaugeConnector | operational_periphery | sonic | n/a | 2 deployments: sonic [`0xbd89f4...a9bfb8`](./contracts/sonic-146/0xbd89f4c0726afa67afcef8aab171108514a9bfb8/); sonic `0xde3f58...23165d` | ⚠️ Unaudited |
| ShadowGaugeRegistry | operational_periphery | sonic | n/a | 7 deployments: sonic [`0x1d12ca...a98e31`](./contracts/sonic-146/0x1d12ca87c7058ec4c87a402f28b1c88281a98e31/); sonic `0x5a1b74...e7889b`; sonic `0x83631c...590c4a`; sonic `0xb4c31b...fba1e8`; sonic `0xbaa884...31e636`; sonic `0xbfd418...5537d5`; sonic `0xf3442b...56d204` | ⚠️ Unaudited |
| ShadowMessageRecipient | operational_periphery | sonic | n/a | [`0x8cceb0...047e04`](./contracts/sonic-146/0x8cceb02d14f605850a2aad9eb705092717047e04/) | ⚠️ Unaudited |
| ShadowRouterConnector | adapter | sonic | n/a | 4 deployments: sonic [`0x45c831...af3611`](./contracts/sonic-146/0x45c83123c70bd9a8a4444d633dc233143aaf3611/); sonic `0x554981...06a831`; sonic `0xb9e443...e75bc2`; sonic `0xfc4c50...cd564b` | ⚠️ Unaudited |
| ShadowV2GaugeConnector | operational_periphery | sonic | n/a | 4 deployments: sonic [`0x54d81f...94eacf`](./contracts/sonic-146/0x54d81f06f7ee744a46048d0edd9983e69994eacf/); sonic `0x7fcd85...ecce87`; sonic `0x9b565f...e9a8a0`; sonic `0xaf5833...b5724e` | ⚠️ Unaudited |
| ShadowV3Connector | unknown | sonic | n/a | 11 deployments: sonic [`0x1ac18a...46ebb7`](./contracts/sonic-146/0x1ac18a9ff2751e26a513acd419220a8b4e46ebb7/); sonic `0x5acb2e...14715c`; sonic `0x942867...0e74d3`; sonic `0xac371d...d851b5`; sonic `0xd290f6...212691`; sonic `0xdadd28...79d995`; sonic `0xe56938...4624e9`; sonic `0xe894c5...ed39c3`; sonic `0xea4b92...d349b1`; sonic `0xeb68b3...f0534e`; sonic `0xf2cfa4...1a8832` | ⚠️ Unaudited |
| ShadowV3GaugeConnector | operational_periphery | sonic | n/a | 6 deployments: sonic [`0x3ebf49...bbf875`](./contracts/sonic-146/0x3ebf49368d8449b2c11602827fec41970dbbf875/); sonic `0x64f435...7403ce`; sonic `0x6eedd0...1a8ce5`; sonic `0x76fb09...5dd487`; sonic `0xc64cfb...2a2d4d`; sonic `0xdfaf68...a2d648` | ⚠️ Unaudited |
| SickleGovernor | governance | mantle | n/a | [`0xde3f58...23165d`](./contracts/mantle-5000/0xde3f584116e31b14aeaf67d4a667935c3a23165d/) | ⚠️ Unaudited |
| SickleVote | unknown | optimism | n/a | 3 deployments: optimism [`0x83631c...590c4a`](./contracts/optimism-10/0x83631c1dd38a48589622784c30f3119859590c4a/); mantle [`0x83631c...590c4a`](./contracts/mantle-5000/0x83631c1dd38a48589622784c30f3119859590c4a/); mantle `0xd290f6...212691` | ⚠️ Unaudited |
| SimpleFarmStrategy | core_logic | optimism | n/a | 11 deployments: optimism [`0x2ebbde...0815e1`](./contracts/optimism-10/0x2ebbde85305c4d9810bb983f2cdc2321b00815e1/); optimism `0x5c7077...8b508e`; optimism `0xff638d...3d9452`; mantle `0x7fcd85...ecce87`; mantle `0xb60ab0...9a0d76`; mantle `0xd34d13...878dd2`; base `0x9960bd...3b9d96`; base `0x9b3811...e72306`; base `0xac8375...d837e9`; base `0xfc5254...72441a`; arbitrum `0x32ddff...a64b72` | ⚠️ Unaudited |
| SimpleLendingStrategy | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x223641...4bd69b`](./contracts/ethereum-1/0x223641e6866f9ce54c4a5783827ca9a6924bd69b/); ethereum `0x28abd9...661a7b`; ethereum `0x8874e9...bad828`; ethereum `0xa9bb3b...a655d4` | ⚠️ Unaudited |
| SinkConverter | unknown | optimism | n/a | [`0x585af0...34f18d`](./contracts/optimism-10/0x585af0b397ac42dbef7f18395426bf878634f18d/) | ⚠️ Unaudited |
| SinkDrain | unknown | optimism | n/a | 2 deployments: optimism [`0x58f62e...cbfca2`](./contracts/optimism-10/0x58f62efb1528d006d22771623c3c3e7953cbfca2/); optimism `0xda03dc...3b17ec` | ⚠️ Unaudited |
| SinkManager | governance | optimism | n/a | [`0x5aee5f...abcdae`](./contracts/optimism-10/0x5aee5f0e6c2055ebd776db25f48f6c9a68abcdae/) | ⚠️ Unaudited |
| SinkManagerFacilitator | governance | optimism | n/a | [`0x45ff00...ce78a4`](./contracts/optimism-10/0x45ff00822e8235b86cb605ac8295c14628ce78a4/) | ⚠️ Unaudited |
| SlipstreamOracle | operational_periphery | optimism | n/a | [`0x629157...d45478`](./contracts/optimism-10/0x629157747ee3a635f9ea1ed37fd0dc7187d45478/) | ⚠️ Unaudited |
| SlipstreamRouterAdapter | adapter | polygon | n/a | 12 deployments: ethereum `0xf228fb...da3a13`; optimism `0xd82b54...09694d`; unichain `0x61afd3...91dc3a`; polygon [`0x1cf744...94e5fd`](./contracts/polygon-137/0x1cf744378c3b794caa6c2e504d6dbad36994e5fd/); sonic `0xc55c0b...06f473`; fraxtal `0xb3dc04...325ee1`; mantle `0x660bb0...d2b8e4`; base `0xa94fc8...f71d7c`; mode `0xaf8afa...c867e6`; arbitrum `0xda8414...ffe663`; avalanche `0x7c2753...2c1bf5`; linea `0xbea0e4...16cf28` | ⚠️ Unaudited |
| SlipstreamSugar | unknown | mode | n/a | [`0xba3aee...5041ca`](./contracts/mode-34443/0xba3aee516399388c779463183d00bb579f5041ca/) | ⚠️ Unaudited |
| SmartChefFactory | registry | base | n/a | [`0xd0a3f3...f886d8`](./contracts/base-8453/0xd0a3f3994ecc341f2e5c3aa548c21aa1bdf886d8/) | ⚠️ Unaudited |
| SolidlyAdapter | adapter | arbitrum | n/a | 12 deployments: ethereum `0x3ef42f...a9bdae`; optimism `0x3047d9...530fbe`; unichain `0x9b3811...e72306`; polygon `0x8940e0...22025f`; sonic `0xb4ec0d...e2a2b2`; fraxtal `0xd65eaf...53773d`; mantle `0x4de060...983de7`; base `0x75bb8b...e1253f`; mode `0x48ea9d...6bee4d`; arbitrum [`0x1397e2...e58e22`](./contracts/arbitrum-42161/0x1397e210e7ffcb3242ddcec61ccfca7127e58e22/); avalanche `0xc865db...0c4d12`; linea `0x96613d...9a2a8d` | ⚠️ Unaudited |
| Splitter | operational_periphery | optimism | n/a | [`0x6666b2...39ec4c`](./contracts/optimism-10/0x6666b2df7a328cf775778ebad368f5f13e39ec4c/) | ⚠️ Unaudited |
| SteerRewarderConnector | unknown | sonic | n/a | [`0x064abb...16a5e0`](./contracts/sonic-146/0x064abb264f2290b5d69345426ac9031bec16a5e0/) | ⚠️ Unaudited |
| SugarHelper | periphery | optimism | n/a | 5 deployments: optimism [`0x495193...447a69`](./contracts/optimism-10/0x495193daebde03e12857f4d3bb8984da2d447a69/); optimism `0x4d5787...74dc40`; optimism `0x8e5433...5e6700`; optimism `0xba81ec...283896`; base `0xa555e5...7cb275` | ⚠️ Unaudited |
| SuperchainGaugeRegistry | operational_periphery | mode | n/a | 10 deployments: unichain `0x67e80f...9862cd`; unichain `0x74547d...220283`; fraxtal `0x2ebbde...0815e1`; fraxtal `0x5ce9c2...851cdf`; fraxtal `0xa8281d...fda45d`; fraxtal `0xbd89f4...a9bfb8`; fraxtal `0xded5c1...ed9938`; mode [`0x14d55a...0a0b1d`](./contracts/mode-34443/0x14d55a1528b876d792b08436e32619a1ef0a0b1d/); mode `0xb347cd...cdfc18`; mode `0xc7ba8f...26a646` | ⚠️ Unaudited |
| SwapRouter | adapter | optimism | n/a | 30 deployments: ethereum `0xb6d55b...49a2c1`; optimism [`0x0792a6...cc9676`](./contracts/optimism-10/0x0792a633f0c19c351081cf4b211f68f79bcc9676/); optimism `0x8513e5...a4b1f1`; unichain `0x6f3e8f...bc3fe3`; polygon `0x7badae...03804f`; sonic `0x099894...73a8c1`; sonic `0x46416f...d7acd8`; sonic `0x477da5...4afda3`; sonic `0x5c0230...4322ba`; sonic `0x6c4331...0e69df`; sonic `0x9354e0...d38fb2`; sonic `0x96b83a...62d2f5`; sonic `0x97d93a...feaaa9`; sonic `0xa0f206...ac317d`; sonic `0xa921a4...96ca45`; sonic `0xab419b...9d2543`; sonic `0xccc583...008080`; sonic `0xe11651...e30937`; sonic `0xe63bcc...f22248`; sonic `0xe7d26a...df99c2`; sonic `0xec15b8...6b8fdf`; sonic `0xf047f8...885ce8`; sonic `0xfe1557...76dc2f`; fraxtal `0x0eb29e...ddb08a`; mantle `0x564dde...68dae1`; base `0x7424c3...dc657e`; mode `0x428ef7...edd75c`; arbitrum `0x917c50...198be4`; avalanche `0xf6e2d1...6d92c7`; linea `0x0e1044...3bc311` | ⚠️ Unaudited |
| SwapRouter | adapter | sonic | n/a | [`0x5543c6...e2d695`](./contracts/sonic-146/0x5543c6176feb9b4b179078205d7c29eea2e2d695/) | ⚠️ Unaudited |
| SwapRouter | adapter | base | n/a | [`0xbe6d8f...6d18a5`](./contracts/base-8453/0xbe6d8f0d05cc4be24d5167a3ef062215be6d18a5/) | ⚠️ Unaudited |
| SwapxGaugeConnector | operational_periphery | sonic | n/a | 3 deployments: sonic [`0x463353...4cc8b6`](./contracts/sonic-146/0x46335341a458740fe6e82bbcae4fd9fdc94cc8b6/); sonic `0xc393c1...e9cec5`; sonic `0xdf015f...968ac0` | ⚠️ Unaudited |
| SwapxGaugeRegistry | operational_periphery | sonic | n/a | 4 deployments: sonic [`0x5e57c1...c1ac84`](./contracts/sonic-146/0x5e57c1accc81606bfd30e819e701e4e15ac1ac84/); sonic `0xace729...8fc17b`; sonic `0xbdb926...cb719f`; sonic `0xe70721...0172e7` | ⚠️ Unaudited |
| SwapxRouterConnector | adapter | sonic | n/a | 3 deployments: sonic [`0xa7abc7...952aba`](./contracts/sonic-146/0xa7abc7b3fd66b019877bc29c9158bd5500952aba/); sonic `0xc8994b...e13126`; sonic `0xe6edb7...345bae` | ⚠️ Unaudited |
| SwapxV3Connector | unknown | sonic | n/a | 8 deployments: sonic [`0x19ff84...631cd8`](./contracts/sonic-146/0x19ff84fb5f66a45f57709dae5ee4942212631cd8/); sonic `0x6580ba...7a763a`; sonic `0x8312be...0cda0c`; sonic `0xa3a42b...c635d7`; sonic `0xd621f3...bc735a`; sonic `0xded5c1...ed9938`; sonic `0xe0266e...b13a68`; sonic `0xf15217...4158cf` | ⚠️ Unaudited |
| ThenaV3Connector | unknown | sonic | n/a | 8 deployments: ethereum `0xfa7573...fe14f4`; sonic [`0x1e2bc5...612f72`](./contracts/sonic-146/0x1e2bc5c694af33a3dd8dc8f06b7b959e70612f72/); sonic `0x2a9ac5...18c1bf`; sonic `0x69b596...fce086`; sonic `0x899fb4...687cc5`; sonic `0x9b6f97...39862d`; sonic `0xa5d2d3...b0daee`; base `0xd6080a...9fd2e1` | ⚠️ Unaudited |
| TickLens | periphery | sonic | n/a | 14 deployments: sonic [`0x4d84dc...762933`](./contracts/sonic-146/0x4d84dc1c2b4b9aaed9f746ef3d59b71205762933/); sonic `0x4ec026...b0554f`; sonic `0x4eed7b...933cc7`; sonic `0x562c52...124731`; sonic `0x78de12...69cda7`; sonic `0x791ab0...fa016a`; sonic `0x83038d...6b0eb5`; sonic `0x8bfdc3...ee244d`; sonic `0x8e12bc...5d524c`; sonic `0xb3c1f2...8af888`; sonic `0xc710b2...75cce7`; sonic `0xe281ff...c65211`; sonic `0xe88c3c...6bbcde`; sonic `0xf87cd7...a83b47` | ⚠️ Unaudited |
| TimelockController | governance | fraxtal | n/a | 3 deployments: fraxtal [`0x2eaf44...940dab`](./contracts/fraxtal-252/0x2eaf44edb2ba47d21f5cbd1b6a8746d866940dab/); mantle `0xecf4d1...d33889`; base `0xfb6190...63375c` | ⚠️ Unaudited |
| Trig | unknown | optimism | n/a | [`0xbdd6f9...5170ef`](./contracts/optimism-10/0xbdd6f9662e904a9176aafcbdded45d076b5170ef/) | ⚠️ Unaudited |
| UniswapV2Adapter | adapter | unichain | n/a | [`0x5d2fc3...f2ed53`](./contracts/unichain-130/0x5d2fc3c37e3d4d8110a2c1ad51bd6f8e26f2ed53/) | ⚠️ Unaudited |
| UniswapV3Connector | unknown | unichain | n/a | [`0xe56938...4624e9`](./contracts/unichain-130/0xe569386bd22245cc8bd706dbbcb9ca503e4624e9/) | ⚠️ Unaudited |
| UniswapV3PoolAdapter | adapter | unichain | n/a | [`0x364796...7c14ae`](./contracts/unichain-130/0x3647966e65f31f9766ceef2a26cdd7dad47c14ae/) | ⚠️ Unaudited |
| UniswapV3Router02Adapter | adapter | unichain | n/a | [`0x5a72c0...128a04`](./contracts/unichain-130/0x5a72c0f4bf7f3ddf1370780d405e29149b128a04/) | ⚠️ Unaudited |
| UniswapV3RouterAdapter | adapter | unichain | n/a | [`0x3b8886...01e1f3`](./contracts/unichain-130/0x3b8886c3f6d3ba4a75d3becb3c83864c0c01e1f3/) | ⚠️ Unaudited |
| UniswapV4Connector | unknown | unichain | n/a | [`0x9b14c4...b3f557`](./contracts/unichain-130/0x9b14c4dd71fc3b22a35c920abf320af475b3f557/) | ⚠️ Unaudited |
| UniversalRouter | adapter | optimism | n/a | 11 deployments: optimism [`0x4bf3e3...1142fc`](./contracts/optimism-10/0x4bf3e32de155359d1d75e8b474b66848221142fc/); optimism `0x7ef270...dc1d9e`; optimism `0x8f8fef...ffc08d`; optimism `0xf132bd...3eb817`; sonic `0x7ec314...66a03d`; sonic `0x90b9c2...993a96`; sonic `0x92643d...04a9c2`; sonic `0xa5ec3f...63b687`; base `0x6cb442...00be3e`; base `0xf07835...a4da2a`; base `0xf8d44c...a92876` | ⚠️ Unaudited |
| VeArtProxy | unknown | optimism | n/a | 2 deployments: optimism [`0x4a9ea0...1782dd`](./contracts/optimism-10/0x4a9ea0dd5649ec4b6745c60d1769e2184c1782dd/); base `0xe99924...54643e` | ⚠️ Unaudited |
| Velo | token | optimism | n/a | [`0x9560e8...1088db`](./contracts/optimism-10/0x9560e827af36c94d2ac33a39bce1fe78631088db/) | ⚠️ Unaudited |
| VelodromeGaugeConnector | operational_periphery | optimism | n/a | 9 deployments: optimism [`0x06a52d...4fb36c`](./contracts/optimism-10/0x06a52d4c80eee559dd4ebb82362816933b4fb36c/); optimism `0xdc10b4...e59baf`; unichain `0x49606f...d4890d`; unichain `0xea895d...e168ff`; fraxtal `0x11d9ed...98bf28`; fraxtal `0x3cb9ae...7dc83c`; fraxtal `0x478ec7...a57103`; mode `0x26925a...c050d2`; mode `0x5225cb...0d52a2` | ⚠️ Unaudited |
| VelodromeSlipstreamGaugeConnector | operational_periphery | optimism | n/a | 4 deployments: optimism [`0x2d0fd2...c64c1d`](./contracts/optimism-10/0x2d0fd2d95315764476a6b419b463e3f7f0c64c1d/); optimism `0x54d81f...94eacf`; optimism `0xa66aef...c8293a`; optimism `0xc07b5d...822b8a` | ⚠️ Unaudited |
| VelodromeUniversalRouterAdapter | adapter | polygon | n/a | 12 deployments: ethereum `0xd6a993...12df7b`; optimism `0x71f41c...1faf6f`; unichain `0xc7ba8f...26a646`; polygon [`0x1732e3...1e320f`](./contracts/polygon-137/0x1732e3ebc63e8d7c5d32ba8e9bd40982c21e320f/); sonic `0x5310bc...04687a`; fraxtal `0xa8758f...e2ae2e`; mantle `0xbd6946...513156`; base `0xef054b...89c34c`; mode `0xfea81b...f4a0e4`; arbitrum `0x9fe21b...fa27c7`; avalanche `0x7c3c3d...6fe019`; linea `0xe4c68a...e371a1` | ⚠️ Unaudited |
| VelodromeV2Oracle | operational_periphery | optimism | n/a | [`0xdf49ff...013e25`](./contracts/optimism-10/0xdf49ff386344d3b687f56c02d0b1784b19013e25/) | ⚠️ Unaudited |
| VeMoe | unknown | mantle | n/a | [`0x55160b...01dee7`](./contracts/mantle-5000/0x55160b0f39848a7b844f3a562210489df301dee7/) | ⚠️ Unaudited |
| VeMoeRewarder | unknown | mantle | n/a | 5 deployments: mantle [`0x7399aa...55b1e5`](./contracts/mantle-5000/0x7399aa9d2b71fdb943f6328a88b47502cb55b1e5/); mantle `0x8eb084...1ee254`; mantle `0xa3a1a6...2daaa5`; mantle `0xbbf381...28136c`; mantle `0xda781a...84f2c4` | ⚠️ Unaudited |
| VestingContract | operational_periphery | mantle | n/a | 33 deployments: mantle [`0x1549de...2a14f6`](./contracts/mantle-5000/0x1549de86b2de4f619663841b276b1a62002a14f6/); mantle `0x315299...05a8c5`; mantle `0x3905f5...c157cd`; mantle `0x55d86a...7bb554`; mantle `0x55e583...83b689`; mantle `0x55edc7...993fbb`; mantle `0x60fded...332d7c`; mantle `0x62fb9b...314a75`; mantle `0x70cd9e...be6c2f`; mantle `0x7520ae...267c85`; mantle `0x78bb8f...02894f`; mantle `0x7c7018...02dd8b`; mantle `0x82e8ae...d6855b`; mantle `0x83d76d...e64d0b`; mantle `0x8d8d3b...1b00ce`; mantle `0x920803...a925da`; mantle `0x9b5b4c...93de31`; mantle `0x9b86c2...80300f`; mantle `0xa0e97c...89dde1`; mantle `0xb342bf...695554`; mantle `0xb9e9dc...98f4c4`; mantle `0xb9f72c...512295`; mantle `0xc20ba4...43dc9f`; mantle `0xd9ecef...726ef0`; mantle `0xe273bf...6f9c22`; mantle `0xe4d55a...b9c747`; mantle `0xe660b7...d544a9`; mantle `0xe88778...5d2948`; mantle `0xeff8ee...047c1c`; mantle `0xfbdd09...8161f0`; mantle `0xfd0adb...01a291`; mantle `0xfd4085...4afde3`; mantle `0xffdeab...741602` | ⚠️ Unaudited |
| VoteModule | unknown | sonic | n/a | 3 deployments: sonic [`0x57f518...aca0ef`](./contracts/sonic-146/0x57f518dc7d37405602f44054ead3c06a25aca0ef/); sonic `0xdcb5a2...b666b4`; sonic `0xf7a585...13656c` | ⚠️ Unaudited |
| Voter | unknown | base | n/a | 7 deployments: optimism `0x41c914...5abf3c`; sonic `0x3af1dd...838f4f`; sonic `0x80cde6...a507fb`; sonic `0xa3ce58...0d7d2d`; sonic `0xccfda4...c8fdbf`; sonic `0xdafd30...a5b83c`; base [`0x166135...c480a5`](./contracts/base-8453/0x16613524e02ad97edfef371bc883f2f5d6c480a5/) | ⚠️ Unaudited |
| Voter | unknown | arbitrum | n/a | [`0xaaa256...91f499`](./contracts/arbitrum-42161/0xaaa2564deb34763e3d05162ed3f5c2658691f499/) | ⚠️ Unaudited |
| Voter | unknown | linea | n/a | [`0xaaaf3d...8d9869`](./contracts/linea-59144/0xaaaf3d9cdd3602d117c67d80eec37a160c8d9869/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | base | n/a | 2 deployments: optimism `0xfaf8fd...06787d`; base [`0xebf418...67e6b4`](./contracts/base-8453/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4/) | ⚠️ Unaudited |
| VotingRewardsFactory | registry | optimism | n/a | [`0x756e7c...ada8ec`](./contracts/optimism-10/0x756e7c245c69d351fffbfb88ba234aa395ada8ec/) | ⚠️ Unaudited |
| WindswapGaugeRegistry | operational_periphery | base | n/a | [`0xf95488...2a1e6b`](./contracts/base-8453/0xf95488cbe02fcfe165d0c7b33dca2979472a1e6b/) | ⚠️ Unaudited |
| WrapAdapter | adapter | mantle | n/a | 12 deployments: ethereum `0x27e6ee...a34afd`; optimism `0x1fb1c3...736196`; unichain `0x691757...58437a`; polygon `0x353868...ad7d97`; sonic `0x28abd9...661a7b`; fraxtal `0xd826da...b050ea`; mantle [`0x1e2bc5...612f72`](./contracts/mantle-5000/0x1e2bc5c694af33a3dd8dc8f06b7b959e70612f72/); base `0x708a48...1dbc03`; mode `0x916858...a708e6`; arbitrum `0x464f20...3454a7`; avalanche `0xd6cdd9...fbcb61`; linea `0xf0adad...140fd4` | ⚠️ Unaudited |
| XShadow | unknown | sonic | n/a | [`0x8a756e...f85448`](./contracts/sonic-146/0x8a756e3c9d2e1a6211f273136560990667f85448/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1556)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x00891b...c1af7f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x06b559...4d59b5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x08fc60...c33c95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a290c...ea1973` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0eb29e...ddb08a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x11d9ed...98bf28` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1242d5...5fc80b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13636d...ce5c38` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x13c59e...125089` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x172ec7...13c0b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1bfe63...389700` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1c9d70...b0ed35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x240bd1...87bade` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26925a...c050d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x296b3f...e2d03c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x298614...f2b6db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2a2d2d...7e0deb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b1758...104940` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2d0fd2...c64c1d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2def4a...e74bd3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e3538...181771` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2eb61c...7b0427` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ebbde...0815e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ef5ea...f2ecf3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2f480c...171d1a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x32ddff...a64b72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34ec3c...70f65f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x353868...ad7d97` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x364796...7c14ae` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a3526...7885d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3b79a6...5447a7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3cb9ae...7dc83c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e00b6...923f41` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ea8af...0c8b46` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x400b2d...bba104` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x40bd94...78d34c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x46d70f...582766` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x477490...37e515` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49606f...d4890d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4a695d...73058c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b7c6f...0cb202` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c0639...7bbb07` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x506a53...19afc2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50f3c6...6f493f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x529048...4d665f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x547e55...b21817` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x561aec...2db542` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x564dde...68dae1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57732e...2aa00c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x57f11f...6e4e62` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a1b74...e7889b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5a2516...05cd3e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b86da...fa6e29` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5b8ee3...ea8715` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5c2866...7e6407` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5ce9c2...851cdf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5d2fc3...f2ed53` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5e3902...7e4713` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x65cb9b...ccfab7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x66bb55...1c01a1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x67e80f...9862cd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x69b596...fce086` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f3e8f...bc3fe3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x71d234...baac31` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x74547d...220283` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7671cb...692171` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x768caf...98d19f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7d0611...17d094` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x84676e...136f8a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x856c99...fa5095` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x869e37...884850` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x899fb4...687cc5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8c5e97...9dbb0f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x923021...70f2f0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x951ba1...df11ef` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9774e2...a4f3ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x991ce3...a88581` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x99800f...36a8ed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b14c4...b3f557` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b3811...e72306` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9ff07c...4a53ad` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa260cd...c53a8c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa3a42b...c635d7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa4fb47...552682` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa57336...d8d15e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6002c...636430` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa66aef...c8293a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa8758f...e2ae2e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab2ee5...3518be` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac8375...d837e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaccb94...8f4081` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad3349...0ab5bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xafcb6b...a12bd4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb024cb...57c5a6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb3dc04...325ee1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xba3848...8f6ba5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb0388...85af95` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbeac74...f9c460` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc5542d...d9668d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc6aacd...1fc2e6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc7ba8f...26a646` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd458fc...c2f268` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd65eaf...53773d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd6b71d...4f5a5b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd737c5...704d87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdadd28...79d995` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe2defb...911777` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe56938...4624e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe884ef...6e592c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea4b92...d349b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeb76cb...d15e69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xecb1fe...b670d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xed6eb6...8a7251` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8d2b5...f980cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf99c9b...55fc20` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb578a...7dd953` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb6190...63375c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfb903b...7365c8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc4c50...cd564b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfff75d...4761c8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x00891b...c1af7f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x024273...36e46c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x041166...95c3bb` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0581d2...9c7962` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x059571...3b74c1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x07d5a8...787104` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x08f0f1...f99e9c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x08fc60...c33c95` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x09fadb...380d4d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0b6621...afc66b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0cc462...cef977` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0d980d...8c7ea4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0e6701...79a890` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0efadd...1542d5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0f592f...0fe04f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x0f6abc...9c81a3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x11d9ed...98bf28` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1242d5...5fc80b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x152a4f...bdf01c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x16a54a...4ffcf0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x172ec7...13c0b7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1732e3...1e320f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x188f3b...30c943` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x194cdf...8f9f9a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1bfe63...389700` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1cf744...94e5fd` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1d12ca...a98e31` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1e2bc5...612f72` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1ef68f...323b0d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2083a6...47a463` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x23eb5c...7ade3b` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3575aa...9622e6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3bf15b...1e9f88` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4394a4...96dde1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x478ec7...a57103` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x588be0...098b19` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb71907...3cb72c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xb9e443...e75bc2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbcefc3...375bbc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbfc621...2e3401` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xbfd418...5537d5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xc38c3c...7d71e1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xd34d13...878dd2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xde3f58...23165d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xecf4d1...d33889` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xed2176...274314` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xee7992...9a864a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xf74741...318cb8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x02099a...9bf271` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0581d2...9c7962` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x05a651...071427` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08f0f1...f99e9c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x08fc60...c33c95` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x09fadb...380d4d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0af241...40080d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d3e1d...16c0c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x10012b...623366` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x10340a...608292` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1058a9...0e8b7c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x117239...5e780a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x11d9ed...98bf28` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1242d5...5fc80b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x125caf...4cb45e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13636d...ce5c38` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13c0cd...218e7d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x13c59e...125089` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x142e69...c7f2ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x155176...d84aa7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x16a54a...4ffcf0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1732e3...1e320f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x190915...842b12` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x191818...4c9409` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c5a06...e0b142` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1c9d70...b0ed35` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1cf744...94e5fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1d5038...7b6115` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2074ed...276c75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2083a6...47a463` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x233d90...567168` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x23e5d9...4cfa4c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x282f83...983027` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x296b3f...e2d03c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2a6ec7...e60b50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2b6e32...8d2aa7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2c5725...92b37d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2cd467...8da825` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2d0fd2...c64c1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2eaf44...940dab` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2ef5ea...f2ecf3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f037b...3a3b8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f480c...171d1a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x30d28c...c52e67` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x32ddff...a64b72` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33ba55...41b524` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3508a7...983596` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3575aa...9622e6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x372e77...2c5083` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37f230...73018d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x387885...973f7c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a3526...7885d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b79a6...5447a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3b8886...01e1f3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3cb9ae...7dc83c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d9cf7...3f79ea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e00b6...923f41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e8c81...3da755` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f08c8...289d0d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f4cc0...777065` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x40bd94...78d34c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x43b203...0f988d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x45d7d3...3ad7fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x462929...806c2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x477490...37e515` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x49606f...d4890d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x49ddd7...eae5c6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x49f360...c0cb03` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a1daa...a7b5b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a695d...73058c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4ab9eb...ebe8f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b7c6f...0cb202` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4c0639...7bbb07` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d6a35...d2b787` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4dd790...c7d224` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f8833...e71780` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x50f3c6...6f493f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5225cb...0d52a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x528970...cd7ad7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x529048...4d665f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54d81f...94eacf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x561aec...2db542` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x568bd0...76fc02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a2516...05cd3e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a6584...aec8f8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5a72c0...128a04` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b86da...fa6e29` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b8ee3...ea8715` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5bc457...472566` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c204b...fa7bb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c2866...7e6407` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c7077...8b508e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5cdd49...3a1c0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ce9c2...851cdf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5d2fc3...f2ed53` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5e3902...7e4713` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x606448...c0721e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x60d334...d17698` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61c817...a2b0cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61d7f5...7527e2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x629d5c...e92262` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x64dab1...9a4641` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6580ba...7a763a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x661874...bc34df` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x67e80f...9862cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x68b2e3...109c90` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x69b596...fce086` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a7bbf...7de5cf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d563f...a2ecdf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6d9adc...5c9f8b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ebe91...50266d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6fa6a0...f23dbe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x716415...f775d0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x71d234...baac31` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x72b10d...7bef2e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x73d30f...d7811b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x74a9ad...21321e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x763844...48147a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x764f21...1d0a51` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x768caf...98d19f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x76fb09...5dd487` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7726bf...8aa874` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x787a1c...5c8b31` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x797683...9b4c9e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7a7c00...10548b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7affad...181fe2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7b22cc...f70ba6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7badae...03804f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7bf22d...7f1fbc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d055e...a36700` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d0611...17d094` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f4b6f...1f8a6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f7d3a...8011a1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8145e2...329e98` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8312be...0cda0c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x83631c...590c4a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x842b3f...3465b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84676e...136f8a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84bf32...dba11a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x85378f...e4d7c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x856c99...fa5095` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x869e37...884850` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8940e0...22025f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x899fb4...687cc5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8a09b9...eec40d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8bb906...548289` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8cf93e...5fdcc0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8e9f2d...1e53c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x923021...70f2f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x951ba1...df11ef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9528f1...b70af5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x955198...13682d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x95b570...a2e171` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x962eaf...d528e5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x96c64d...f3fa1b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9706f7...d5104d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x99800f...36a8ed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ad893...2fd43d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b14c4...b3f557` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b3811...e72306` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9be21d...8f3706` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9bf758...0dd88d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d5019...26573a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d70b9...ab7f95` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9ff07c...4a53ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa05a9e...3a8788` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa260cd...c53a8c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa2dc70...673d80` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa3a42b...c635d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa57336...d8d15e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa57756...81a254` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa631ae...272823` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa6864e...786099` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa8281d...fda45d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa8d2de...a44baf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa92b57...daeb01` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xab2ee5...3518be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac371d...d851b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xac8375...d837e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad4dd7...d5864b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaef14a...4839ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf0ee4...2622b6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaf18c0...fba18b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xafcb6b...a12bd4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb024cb...57c5a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb47d46...850c10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb5c190...79cc26` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb60ab0...9a0d76` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb61643...030262` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb7ef14...e373ac` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb9e443...e75bc2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd0ed3...52bb77` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbd89f4...a9bfb8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbeac74...f9c460` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbf0230...ca02f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbfd418...5537d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbfdec1...3f4724` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc0c3e0...d412b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc1e4b8...c47aa8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc3fbe1...d5c069` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc49068...586d19` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc49775...4bdfed` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5542d...d9668d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6013e...489c99` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6d1f6...688cdc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcaa3a4...5885fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd3e1c...2aa1db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd14395...4d2661` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd248aa...4f2fa0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd290f6...212691` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd34d13...878dd2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd458fc...c2f268` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd621f3...bc735a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd74623...d97f97` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd8aec2...287504` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xda8414...ffe663` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdadd28...79d995` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde181c...2284f4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde3f58...23165d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xded5c1...ed9938` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf015f...968ac0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe03584...28aac7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe232e5...1eac7b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe325b0...7d2368` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe47462...ec07a1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4cdcb...9af07c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4db0c...700d8f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4ebc5...01f75d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe54f0f...777567` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe56938...4624e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe646ff...b551fd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe884ef...6e592c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8ad5b...716bad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe953ca...40e09b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea4b92...d349b1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea8642...a0f2ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea895d...e168ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb68b3...f0534e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed2176...274314` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed3664...d4dc8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf20c4c...695198` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf2d8ae...f2ff68` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf501a9...dec3a9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf51b0f...0ee1a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf53ee3...785845` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf65d68...259c07` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf6d5c2...7db262` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf8bc98...d15f10` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf9340f...3e06c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf99c9b...55fc20` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf99e27...025102` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa3b15...b97d69` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa4c0d...29da9e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb578a...7dd953` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb6190...63375c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfbccf8...056fc6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd0917...baf5dd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfd2d0d...d850e7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff638d...3d9452` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfff75d...4761c8` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x024273...36e46c` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x04448e...da74fa` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x04a606...9e51e7` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x059571...3b74c1` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x0626bd...10298b` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x07d5a8...787104` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x09fadb...380d4d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x0ecda5...7409b6` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x0f592f...0fe04f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x0f6abc...9c81a3` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x114f84...8b8f16` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x117239...5e780a` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x142e69...c7f2ae` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x152a4f...bdf01c` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x188f3b...30c943` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x190915...842b12` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x19216f...5467f1` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x1a5e51...a5be55` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x2083a6...47a463` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x23eb5c...7ade3b` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x266ebc...74e012` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x2d0fd2...c64c1d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x2d6a2a...9f6940` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x2ebbde...0815e1` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x2edcc1...295bd1` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x34f895...70968c` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x3508a7...983596` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x3575aa...9622e6` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x372e77...2c5083` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x3fa766...674a55` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x4394a4...96dde1` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x43b203...0f988d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x462929...806c2d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x472351...fe3717` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x478ec7...a57103` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x49ddd7...eae5c6` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x4f025a...f5a5fd` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x528970...cd7ad7` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x53d978...cd5fdf` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x54d81f...94eacf` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x588be0...098b19` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x5a2516...05cd3e` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x5a6584...aec8f8` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x5acb2e...14715c` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x5e57c1...c1ac84` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x60d334...d17698` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x64dab1...9a4641` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x64f435...7403ce` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x6580ba...7a763a` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x6eedd0...1a8ce5` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x74a9ad...21321e` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x768caf...98d19f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x76fb09...5dd487` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x76fe03...414b2f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x78a515...9889cf` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x7d055e...a36700` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x7f4b6f...1f8a6f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x7fcd85...ecce87` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x8312be...0cda0c` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x83631c...590c4a` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x84676e...136f8a` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x85378f...e4d7c2` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x8bb906...548289` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x8bc182...60466e` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x8e5ad3...228865` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x942867...0e74d3` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x955198...13682d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x9fad68...0f710a` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xa05a9e...3a8788` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xa2dc70...673d80` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xa452df...3bd7c4` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xa697ca...0bc8d8` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xa77d2d...7f2823` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xa7c8ec...b1f33b` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xa8281d...fda45d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xac371d...d851b5` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xad4dd7...d5864b` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xaef14a...4839ec` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xaf0ee4...2622b6` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xb01e43...06e08d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xb07d6a...c1299f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xb4c31b...fba1e8` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xb5c190...79cc26` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xb61643...030262` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xb61c56...89bf86` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xb71907...3cb72c` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xb9e443...e75bc2` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xbbddb9...bdd932` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xbeac74...f9c460` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xbfc621...2e3401` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xbfd418...5537d5` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xc6013e...489c99` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xc64cfb...2a2d4d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xc6d1f6...688cdc` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xc8994b...e13126` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xcf82a6...51d508` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xd290f6...212691` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xd34d13...878dd2` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xd458fc...c2f268` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xde3f58...23165d` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xe232e5...1eac7b` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xe4db0c...700d8f` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xeb68b3...f0534e` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xecf4d1...d33889` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xed2176...274314` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xf1ce0e...a4a0a7` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xf20c4c...695198` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xf3442b...56d204` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xf6d5c2...7db262` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0xf7e60d...5bd4e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x024273...36e46c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x04448e...da74fa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x04a606...9e51e7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0626bd...10298b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x09fadb...380d4d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0ecda5...7409b6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0f592f...0fe04f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x114f84...8b8f16` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x117239...5e780a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x142e69...c7f2ae` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x188f3b...30c943` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2083a6...47a463` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x233d90...567168` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x23eb5c...7ade3b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x266ebc...74e012` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2d6a2a...9f6940` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x34f895...70968c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3575aa...9622e6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x372e77...2c5083` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3949a9...5b632e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3fa766...674a55` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4394a4...96dde1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x462929...806c2d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x472351...fe3717` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x478ec7...a57103` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x53d978...cd5fdf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x588be0...098b19` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5a6584...aec8f8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x60d334...d17698` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x64dab1...9a4641` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6580ba...7a763a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6eedd0...1a8ce5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x76fe03...414b2f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7f4b6f...1f8a6f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7fcd85...ecce87` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8312be...0cda0c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x85378f...e4d7c2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x942867...0e74d3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x955198...13682d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9fad68...0f710a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa05a9e...3a8788` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa697ca...0bc8d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa77d2d...7f2823` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa8281d...fda45d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaf0ee4...2622b6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb01e43...06e08d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb07d6a...c1299f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb4c31b...fba1e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb71907...3cb72c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb9e443...e75bc2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbbddb9...bdd932` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbd89f4...a9bfb8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbfc621...2e3401` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbfd418...5537d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc0c3e0...d412b7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc3fbe1...d5c069` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc6013e...489c99` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc64cfb...2a2d4d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc8994b...e13126` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcf82a6...51d508` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd290f6...212691` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xde3f58...23165d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeb68b3...f0534e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xed2176...274314` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf6d5c2...7db262` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf7e60d...5bd4e9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xff8444...14460d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x002ee6...b00985` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x02099a...9bf271` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x024273...36e46c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x035476...96d773` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x04448e...da74fa` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x04cad8...131ab9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0626bd...10298b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x06a18e...e099ea` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x07d5a8...787104` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x08f0f1...f99e9c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x095bbc...202e14` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0960e2...886a0e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0d1eda...9df33e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0d6cd9...8a9e9f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0e192e...7f7c33` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0e3142...d3c09f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0e347f...604715` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x0ecda5...7409b6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x10acce...0bb6d9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x13819d...6c62ad` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x13944a...7b4d84` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x142e69...c7f2ae` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x14520c...26582d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x15d917...dd676d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x16f786...5f2829` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x178800...5d0acc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x18131c...3b3fab` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1817ec...b84965` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1881fc...ba11d5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x188f3b...30c943` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x18e9c0...e38c73` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1903c7...939d22` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x190915...842b12` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x199619...6a320f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1a36e8...715e60` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1a5e51...a5be55` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1af8d0...7e41d8` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1bc016...d10f66` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1d5038...7b6115` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1d8c9f...084347` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1ddc80...d265c9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1e3b05...70ed92` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1ee369...9f7afe` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x1fa4bb...0efa62` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x20547b...5e925a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2083a6...47a463` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x209345...6c7f75` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x20b770...5d1f5a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2207b7...0854d7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x23151c...b6faf0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x23645c...2ac521` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x23f702...da2fd9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x240bd1...87bade` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x24ad57...9546b2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x266ebc...74e012` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x26dd03...c30789` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x276e9c...ec77dc` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x27ffc8...f7fdf3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x292676...f87d47` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x292da3...a69493` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x299d61...53f950` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x29adf0...847ff5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2b0302...289856` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2d619f...fc57a2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2e09d0...07fe6b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2e9418...9976ba` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2eaf44...940dab` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2ef5ea...f2ecf3` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x2f7864...639340` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x310e97...a2368c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3263aa...5ddd85` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x32f417...7a2344` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x33f3c9...17838b` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x348d9b...de4d6a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x34c0d5...22721a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3508a7...983596` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x35456f...7c46f9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3575aa...9622e6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x358154...0824fd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x359d5b...978ca9` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x372e77...2c5083` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x375cce...aa19d1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x398d76...bd0cec` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3a9999...bd7cd5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3b3699...cee8ea` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3ebe65...065967` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3ec4fc...dbfc7f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3f7486...18abf6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x3fa766...674a55` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4069bf...75c00c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x40afbe...b4b717` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x41fa7f...0836fb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x422cbe...30764a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x42690d...da664d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4394a4...96dde1` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x444591...307d3f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x450c8f...fe5578` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x45623b...9690b0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x45aa6f...828aca` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4b96c9...c9e232` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4ce364...01c4cb` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x4e70f2...47f62d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x508a83...1e0fbd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x588be0...098b19` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x62e93a...088c29` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6dc606...92f785` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x83489c...cdfe5c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x896e1d...e75f61` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x8b109e...f05224` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x97a1c7...aca096` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x995531...4573d0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9da6da...ac9c84` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x9fb974...1e9cd0` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa03dfc...c90b56` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xa5cfbb...7574e6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xaa4796...816b70` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb0fceb...676085` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb1ad3f...7e4424` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xb71fb3...b53ed5` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xba62b2...5e8ee6` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xbfacb5...470325` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc1857e...b0155c` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc3fbe1...d5c069` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc50d61...456bd2` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xcf0d4c...61dd1e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd230af...b0a13a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xda4329...d65fad` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xdd632e...75c664` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe6fe34...02483d` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xede959...fbfcbd` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf5b935...fe73c4` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xffee7c...069269` | ❓ Unverified |
| UnnamedContract | unknown | fantom | n/a | 5 deployments: fantom `0x2b5229...6d7c2f`; fantom `0x53d978...cd5fdf`; fantom `0x5b3220...85c157`; fantom `0xe3d1a1...18dac1`; ink `0xc6013e...489c99` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x024273...36e46c` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x04448e...da74fa` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x0626bd...10298b` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x08f0f1...f99e9c` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x0f592f...0fe04f` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x142e69...c7f2ae` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x188f3b...30c943` | ❓ Unverified |
| UnnamedContract | unknown | fraxtal | n/a | `0x1a5e51...a5be55` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x02099a...9bf271` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x024273...36e46c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x04448e...da74fa` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x057b2f...d47494` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x07d5a8...787104` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x08477e...69c28b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x08f0f1...f99e9c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x0a7a82...712048` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x0eb29e...ddb08a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x0ecda5...7409b6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x0f592f...0fe04f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x0f6abc...9c81a3` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x10cc20...a3e9e6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x11d9ed...98bf28` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x14d55a...0a0b1d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x151b82...d6aea8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1732e3...1e320f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x183d63...c1b02c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x18d3f4...890025` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x190915...842b12` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x19216f...5467f1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1a5e51...a5be55` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1c6c83...0c87e8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1c9d70...b0ed35` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1cf744...94e5fd` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1d0657...5be1a4` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1d1632...f08dd6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1d5038...7b6115` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1e47b3...31e99d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1fadd2...ff6c93` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1fbfc1...1e9fec` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2083a6...47a463` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x233d90...567168` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x23eb5c...7ade3b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x240616...f14ef1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x240bd1...87bade` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x247af2...bfdcf1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2759a5...0a2678` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x282f83...983027` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x296b3f...e2d03c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x29d829...c64125` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2d0fd2...c64c1d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2eaf44...940dab` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2eb61c...7b0427` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2ebbde...0815e1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2edcc1...295bd1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2ef5ea...f2ecf3` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x30d28c...c52e67` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x34f895...70968c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3508a7...983596` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3575aa...9622e6` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x372e77...2c5083` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3b3a66...9a5181` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3f0e20...78ca90` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3f6cc1...eec185` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x400b2d...bba104` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4141be...11b61a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x428177...deb515` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x43b203...0f988d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x478ec7...a57103` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x49606f...d4890d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x49da01...018c92` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4a1daa...a7b5b3` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4a3a8d...ea9737` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4a984b...e8cb8e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4b7c6f...0cb202` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4ceabd...920e4c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4d46b8...70f0b5` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x50554c...c62fe7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x5225cb...0d52a2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x528970...cd7ad7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x53d978...cd5fdf` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x54d81f...94eacf` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x588be0...098b19` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x5a1b74...e7889b` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x5ab84d...daac02` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x5cf0dc...c0049e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x60d334...d17698` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x79f316...b69d44` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7f4b6f...1f8a6f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x7fb0fc...53d303` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x84bf32...dba11a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x9774e2...a4f3ea` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xa260cd...c53a8c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xa8d2de...a44baf` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xaef14a...4839ec` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb07d6a...c1299f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb347cd...cdfc18` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb3938e...07e116` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb5bd28...cba22d` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbd89f4...a9bfb8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbf0230...ca02f7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xc6013e...489c99` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe283db...848943` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe92249...1fa793` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf2d8ae...f2ff68` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x00f495...f9bc39` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x024273...36e46c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x04448e...da74fa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x04a606...9e51e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0581d2...9c7962` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x089bb8...0ff675` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x08f0f1...f99e9c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x08fc60...c33c95` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x09e616...0d19cd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0a290c...ea1973` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b6621...afc66b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0c2191...adbff2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0cc462...cef977` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0ce036...1c48e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d980d...8c7ea4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0db76e...7f86d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0e6701...79a890` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0efadd...1542d5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0f592f...0fe04f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0f6abc...9c81a3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0ff9c7...d953c9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1000ed...c9d072` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x10bd16...9fa0f5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x115a16...0264c0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x117239...5e780a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x13636d...ce5c38` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1397e2...e58e22` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x139f15...a67d8d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x13c59e...125089` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x142e69...c7f2ae` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x152a4f...bdf01c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x172ec7...13c0b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x190915...842b12` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x19216f...5467f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x19826d...242320` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x19a2dd...3388de` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1b8968...c1ba2c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1bcb89...eb3bb4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1c5a06...e0b142` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1cf744...94e5fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1d12ca...a98e31` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1d5038...7b6115` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1d74f7...628725` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1e2bc5...612f72` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x264351...ab0b2c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2662bd...b9f53e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x266ebc...74e012` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x275235...fb07e1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x277910...e22d1c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x28877b...3d4ffe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2a2d2d...7e0deb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2b1758...104940` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2cd467...8da825` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2d0fd2...c64c1d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2d1732...413d0f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2e3538...181771` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2eaf44...940dab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2eb61c...7b0427` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2ebbde...0815e1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2edcc1...295bd1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2f0052...696096` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3078d8...eb9539` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x326e67...a581a8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x32ddff...a64b72` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x34ec3c...70f65f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3508a7...983596` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x351591...d232f7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x353868...ad7d97` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3575aa...9622e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x372e77...2c5083` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3747fd...af9f38` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x38e118...f96ba5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3949a9...5b632e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3b79a6...5447a7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3b8886...01e1f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3e00b6...923f41` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3ebf49...bbf875` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3efaab...fda2c0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x40bd94...78d34c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4394a4...96dde1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x452c51...848f77` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x45d7d3...3ad7fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x462929...806c2d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x463353...4cc8b6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x472351...fe3717` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x477490...37e515` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x481d6b...00ea35` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x48ea9d...6bee4d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x49da01...018c92` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c0639...7bbb07` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4de060...983de7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4de78f...b65582` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4ecbaf...986462` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4f025a...f5a5fd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4f8833...e71780` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5048c0...7c235d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x50f3c6...6f493f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x514142...91b862` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x528970...cd7ad7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x529048...4d665f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x53d978...cd5fdf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x53e205...221faf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x53e3f3...2f6e6a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x540c02...40a0ae` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x568bd0...76fc02` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x588be0...098b19` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5a1b74...e7889b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5acb2e...14715c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c204b...fa7bb2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c2866...7e6407` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c7e34...42a90e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5cdd49...3a1c0f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5e57c1...c1ac84` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x606448...c0721e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x60d334...d17698` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x61d7f5...7527e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x64c10b...8aa77c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x64f435...7403ce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x66d5e0...25636b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x691757...58437a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x69478d...5afcfd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x69b596...fce086` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a50ff...3290d7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a6f4d...671478` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a7bbf...7de5cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6d9a4c...da99fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6fa6a0...f23dbe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x71d234...baac31` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x720fdb...34cb6a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x753c9e...90575c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x758230...0e85ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x75d57c...d59a16` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7647f0...6beaa5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x768615...37bf4a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x768caf...98d19f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x76fb09...5dd487` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x76fe03...414b2f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x78a515...9889cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d98c3...a474fc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7dd4f0...1b888f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7e8050...25c6e3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7eb798...39b4d4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7f174d...a3876e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7f4b6f...1f8a6f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7fcd85...ecce87` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x801407...425396` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8157a9...007b5d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81d34d...f73c4f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x83631c...590c4a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x83d50c...652fe7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x85378f...e4d7c2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8660fb...83e9cb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8bc182...60466e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8c5e97...9dbb0f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8cf93e...5fdcc0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8e5ad3...228865` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x916858...a708e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9280b5...21e9b9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x951ba1...df11ef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9545d2...dbd03a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x96791c...a26be5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x96fbe1...6bcaf3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x991ce3...a88581` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa76e09...090b24` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb2c653...317005` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb4c31b...fba1e8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb61c56...89bf86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb71907...3cb72c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbd89f4...a9bfb8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc2d77f...f1a3cc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc3fbe1...d5c069` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd262af...f00392` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd5ed46...c3f8b2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdc7948...ab3124` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe09669...ecb24c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb68b3...f0534e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf7e60d...5bd4e9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfff75d...4761c8` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x02099a...9bf271` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x024273...36e46c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x03cd80...41e90c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x04448e...da74fa` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x04a606...9e51e7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x059571...3b74c1` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x06b559...4d59b5` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x07d5a8...787104` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x08f0f1...f99e9c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x0ecda5...7409b6` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x0f592f...0fe04f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x0f6abc...9c81a3` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x114f84...8b8f16` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x117239...5e780a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x11d9ed...98bf28` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x142e69...c7f2ae` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x190915...842b12` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x19a2dd...3388de` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x1a5e51...a5be55` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x1c5a06...e0b142` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x1c9d70...b0ed35` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x1d5038...7b6115` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x233d90...567168` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x23eb5c...7ade3b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x240bd1...87bade` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x266ebc...74e012` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x282f83...983027` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2d0fd2...c64c1d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2eaf44...940dab` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2ebbde...0815e1` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2ef5ea...f2ecf3` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x32ddff...a64b72` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x34f895...70968c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3508a7...983596` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3575aa...9622e6` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x372e77...2c5083` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3949a9...5b632e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3cb9ae...7dc83c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3fa766...674a55` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x462929...806c2d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x472351...fe3717` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x478ec7...a57103` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x479bec...22242b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x49ddd7...eae5c6` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x4a1daa...a7b5b3` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x4b7c6f...0cb202` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x50f3c6...6f493f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x529048...4d665f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x54d81f...94eacf` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5a1b74...e7889b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5a6584...aec8f8` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5acb2e...14715c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5c2866...7e6407` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5c7077...8b508e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5ce9c2...851cdf` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x5e57c1...c1ac84` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x60d334...d17698` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x61d7f5...7527e2` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x64f435...7403ce` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x65cb9b...ccfab7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x661874...bc34df` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x67e80f...9862cd` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x6eedd0...1a8ce5` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x71d234...baac31` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x72b10d...7bef2e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x74a9ad...21321e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x768caf...98d19f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x76fb09...5dd487` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x797683...9b4c9e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7b22cc...f70ba6` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7bf22d...7f1fbc` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7d055e...a36700` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7f4b6f...1f8a6f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x7fcd85...ecce87` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x8145e2...329e98` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x8312be...0cda0c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x83631c...590c4a` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x85378f...e4d7c2` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x8a09b9...eec40d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x8b5f7e...c237c9` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x8cf93e...5fdcc0` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x8d9c67...9107a7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x8e5ad3...228865` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x923021...70f2f0` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x942867...0e74d3` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x955198...13682d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x96c64d...f3fa1b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x991ce3...a88581` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x9b14c4...b3f557` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x9d70b9...ab7f95` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa2dc70...673d80` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa57336...d8d15e` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa77d2d...7f2823` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa7c8ec...b1f33b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xa8281d...fda45d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xab2ee5...3518be` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xac371d...d851b5` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xace729...8fc17b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xad4dd7...d5864b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xb01e43...06e08d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xb07d6a...c1299f` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xb4c31b...fba1e8` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xb5c190...79cc26` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xb61643...030262` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xb61c56...89bf86` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xba3848...8f6ba5` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xbeac74...f9c460` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc0c3e0...d412b7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc5542d...d9668d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc6013e...489c99` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc64cfb...2a2d4d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xc8994b...e13126` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xce28c0...2f8504` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd2f998...3851d7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd34d13...878dd2` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xd458fc...c2f268` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xde181c...2284f4` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xded5c1...ed9938` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xdf70bb...316916` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe232e5...1eac7b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xe56938...4624e9` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xea895d...e168ff` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xef5497...3854ac` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf1ce0e...a4a0a7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf3442b...56d204` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf6d5c2...7db262` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf99c9b...55fc20` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xfc4c50...cd564b` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xfd2d0d...d850e7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xfff75d...4761c8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x02099a...9bf271` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x059571...3b74c1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x06b559...4d59b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x07d5a8...787104` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x08f0f1...f99e9c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0eb29e...ddb08a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0ecda5...7409b6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0f592f...0fe04f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0f6abc...9c81a3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x117239...5e780a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x11d9ed...98bf28` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x152a4f...bdf01c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x190915...842b12` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x19216f...5467f1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x19a2dd...3388de` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1c1081...1d7ecd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1c2e1a...65b625` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1c5a06...e0b142` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x233d90...567168` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x23eb5c...7ade3b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x27f931...18118d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x296b3f...e2d03c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x29d829...c64125` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ab1e8...c38921` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d0fd2...c64c1d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2d6a2a...9f6940` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2eaf44...940dab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2ebbde...0815e1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2edcc1...295bd1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2f480c...171d1a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x34f895...70968c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3575aa...9622e6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x372e77...2c5083` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3949a9...5b632e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x42286e...2f71b0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4394a4...96dde1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x43b203...0f988d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x462929...806c2d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x478ec7...a57103` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x49606f...d4890d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x49da01...018c92` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x49ddd7...eae5c6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4a1daa...a7b5b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4f025a...f5a5fd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4f8833...e71780` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x50f3c6...6f493f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x528970...cd7ad7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x529048...4d665f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x53d978...cd5fdf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x54d81f...94eacf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x588be0...098b19` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5a2516...05cd3e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5acb2e...14715c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5c2866...7e6407` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5c7077...8b508e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5ce9c2...851cdf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x606448...c0721e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x60d334...d17698` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x61d7f5...7527e2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x64f435...7403ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x65cb9b...ccfab7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x661874...bc34df` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x67e80f...9862cd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6eedd0...1a8ce5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x71d234...baac31` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x71de28...07be8f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x72b10d...7bef2e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x74a9ad...21321e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x756af6...99dc52` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7671cb...692171` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x768caf...98d19f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x76fb09...5dd487` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x76fe03...414b2f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x78a515...9889cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x797683...9b4c9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x798586...9ed967` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7affad...181fe2` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7b22cc...f70ba6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7d055e...a36700` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f4b6f...1f8a6f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7fcd85...ecce87` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8145e2...329e98` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x83631c...590c4a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x84676e...136f8a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x856c99...fa5095` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8a09b9...eec40d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8bb906...548289` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8bc182...60466e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8cf93e...5fdcc0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8e5ad3...228865` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x923021...70f2f0` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x942867...0e74d3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x991ce3...a88581` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x99800f...36a8ed` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9b14c4...b3f557` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9d70b9...ab7f95` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa05a9e...3a8788` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa2dc70...673d80` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa39da3...d32dbf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa452df...3bd7c4` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa57336...d8d15e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa65342...986275` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa9b361...c80362` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xab2ee5...3518be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac371d...d851b5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xace729...8fc17b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xaf18c0...fba18b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb3dc04...325ee1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4c31b...fba1e8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb60ab0...9a0d76` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb61643...030262` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb61c56...89bf86` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb71907...3cb72c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba3848...8f6ba5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbeac74...f9c460` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbfc621...2e3401` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbffe39...f84adf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc0c3e0...d412b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc5542d...d9668d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc6013e...489c99` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc64cfb...2a2d4d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc82ffd...686c56` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcf82a6...51d508` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd26eef...7a60b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd290f6...212691` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd458fc...c2f268` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd621a4...783d6c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd65eaf...53773d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd6b71d...4f5a5b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd826da...b050ea` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xde3f58...23165d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xded5c1...ed9938` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xdf70bb...316916` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe232e5...1eac7b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe4cdcb...9af07c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe56938...4624e9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xea895d...e168ff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xecc14d...6f7402` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf20c4c...695198` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf2b056...68e511` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf3442b...56d204` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf6d5c2...7db262` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf8d2b5...f980cb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb1e19...c0f298` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfb578a...7dd953` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfc4c50...cd564b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xff8444...14460d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xffcdd3...67af30` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfff75d...4761c8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x04448e...da74fa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x059571...3b74c1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0626bd...10298b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x06b559...4d59b5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x08f0f1...f99e9c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0ecda5...7409b6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0f592f...0fe04f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x114f84...8b8f16` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x117239...5e780a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x11d9ed...98bf28` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x188f3b...30c943` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19a2dd...3388de` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1a5e51...a5be55` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x233d90...567168` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x266ebc...74e012` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x282f83...983027` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2eaf44...940dab` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x32ddff...a64b72` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3575aa...9622e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x372e77...2c5083` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3949a9...5b632e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x462929...806c2d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x478ec7...a57103` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x49ddd7...eae5c6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4b7c6f...0cb202` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x529048...4d665f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x588be0...098b19` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5a1b74...e7889b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5a6584...aec8f8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5c7077...8b508e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x60d334...d17698` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x64f435...7403ce` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6eedd0...1a8ce5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7bf22d...7f1fbc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7d055e...a36700` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x85378f...e4d7c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8b5f7e...c237c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8cf93e...5fdcc0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8e5ad3...228865` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x96c64d...f3fa1b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x991ce3...a88581` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9b14c4...b3f557` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9d70b9...ab7f95` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9fad68...0f710a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa6002c...636430` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa697ca...0bc8d8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa77d2d...7f2823` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa7c8ec...b1f33b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa8281d...fda45d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb01e43...06e08d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb07d6a...c1299f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb61643...030262` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb61c56...89bf86` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb71907...3cb72c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbbddb9...bdd932` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbd89f4...a9bfb8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbfc621...2e3401` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc0c3e0...d412b7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc6013e...489c99` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc64cfb...2a2d4d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc6d1f6...688cdc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcf82a6...51d508` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd34d13...878dd2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd6b71d...4f5a5b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdf70bb...316916` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe4db0c...700d8f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xecf4d1...d33889` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xed2176...274314` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf1ce0e...a4a0a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf20c4c...695198` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf3442b...56d204` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf6d5c2...7db262` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf99c9b...55fc20` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfd2d0d...d850e7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x02099a...9bf271` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x024273...36e46c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x04448e...da74fa` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x04a606...9e51e7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x08f0f1...f99e9c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x09fadb...380d4d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0a6154...d49220` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0d3e1d...16c0c2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0eb29e...ddb08a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0ecda5...7409b6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x0f592f...0fe04f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x114f84...8b8f16` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x117239...5e780a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x125caf...4cb45e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x142e69...c7f2ae` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x14d55a...0a0b1d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x152a4f...bdf01c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x16a54a...4ffcf0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1732e3...1e320f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x190915...842b12` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x19216f...5467f1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x19a2dd...3388de` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1bfe63...389700` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1c5a06...e0b142` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1c9d70...b0ed35` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1cf744...94e5fd` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2083a6...47a463` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x233d90...567168` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x23e5d9...4cfa4c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x240bd1...87bade` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x26925a...c050d2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x282f83...983027` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x296b3f...e2d03c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x298614...f2b6db` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x29d829...c64125` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2a2d2d...7e0deb` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2d6a2a...9f6940` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2eaf44...940dab` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2eb61c...7b0427` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2edcc1...295bd1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2ef5ea...f2ecf3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2f480c...171d1a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x30d28c...c52e67` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x353868...ad7d97` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3575aa...9622e6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3949a9...5b632e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3b8886...01e1f3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3cb9ae...7dc83c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3d660d...492813` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3fa766...674a55` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x40bd94...78d34c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x428ef7...edd75c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x46d70f...582766` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x472351...fe3717` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x48ea9d...6bee4d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x49606f...d4890d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x49da01...018c92` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4a1daa...a7b5b3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4a3a8d...ea9737` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4ab9eb...ebe8f7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4c0639...7bbb07` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4de060...983de7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4f025a...f5a5fd` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4f8833...e71780` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x50f3c6...6f493f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5225cb...0d52a2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x53d978...cd5fdf` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x53e3f3...2f6e6a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x54d81f...94eacf` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x564dde...68dae1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x568bd0...76fc02` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x57732e...2aa00c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x57f11f...6e4e62` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5a2516...05cd3e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5b86da...fa6e29` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5b8ee3...ea8715` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5c204b...fa7bb2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5c2866...7e6407` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5c7077...8b508e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5d2fc3...f2ed53` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x5e57c1...c1ac84` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x606448...c0721e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x60d334...d17698` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x60f610...a138a7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x61afd3...91dc3a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x61d7f5...7527e2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6296c2...2e200a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x64dab1...9a4641` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6580ba...7a763a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x65cb9b...ccfab7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x660bb0...d2b8e4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x661874...bc34df` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x67e80f...9862cd` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x691757...58437a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6e6b30...36b140` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6eedd0...1a8ce5` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6f3e8f...bc3fe3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6fa6a0...f23dbe` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x71d234...baac31` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x71de28...07be8f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x72b10d...7bef2e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x74547d...220283` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x768caf...98d19f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x76fb09...5dd487` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x78a515...9889cf` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7bf22d...7f1fbc` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7d055e...a36700` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7f4b6f...1f8a6f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7fcd85...ecce87` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x8145e2...329e98` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x83d50c...652fe7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x84676e...136f8a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x84bf32...dba11a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x856c99...fa5095` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x8940e0...22025f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x8a09b9...eec40d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x8b5f7e...c237c9` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x916858...a708e6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x923021...70f2f0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x928561...a3029b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x942867...0e74d3` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x9774e2...a4f3ea` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x9960bd...3b9d96` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x99800f...36a8ed` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x9b14c4...b3f557` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x9b3811...e72306` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x9d5019...26573a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa260cd...c53a8c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa2dc70...673d80` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa452df...3bd7c4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa4fb47...552682` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa57336...d8d15e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa6002c...636430` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa6ed4c...4aeb1a` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa77d2d...7f2823` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa8758f...e2ae2e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xa8d2de...a44baf` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xab2ee5...3518be` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xaccb94...8f4081` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xace729...8fc17b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xad4dd7...d5864b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xaef14a...4839ec` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xaf8afa...c867e6` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb01e43...06e08d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb3dc04...325ee1` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb4c31b...fba1e8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb7ef14...e373ac` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xba3848...8f6ba5` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xbd6946...513156` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xbd89f4...a9bfb8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xbfc621...2e3401` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc2d77f...f1a3cc` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc3fbe1...d5c069` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc49068...586d19` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc64cfb...2a2d4d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xc6d1f6...688cdc` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xcaa3a4...5885fd` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xcb9613...283991` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd3d401...859e1d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd458fc...c2f268` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd621a4...783d6c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd65eaf...53773d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd6b71d...4f5a5b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd737c5...704d87` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xd826da...b050ea` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xded5c1...ed9938` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdf015f...968ac0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xdf70bb...316916` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe232e5...1eac7b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe2defb...911777` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe56938...4624e9` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xeb68b3...f0534e` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xeb76cb...d15e69` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xecf4d1...d33889` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xed2176...274314` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xef5497...3854ac` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf2d8ae...f2ff68` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf8d2b5...f980cb` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfb903b...7365c8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfd2d0d...d850e7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfea81b...f4a0e4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xffcdd3...67af30` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xfff75d...4761c8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [reports.yaudit.dev/06-2023-Sickle](https://reports.yaudit.dev/06-2023-Sickle) | yAudit | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [reports.yaudit.dev/10-2023-Sickle-Update](https://reports.yaudit.dev/10-2023-Sickle-Update) | yAudit | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [reports.yaudit.dev/05-2024-Sickle-3](https://reports.yaudit.dev/05-2024-Sickle-3) | yAudit | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [reports.yaudit.dev/10-2024-Sickle-Strategies](https://reports.yaudit.dev/10-2024-Sickle-Strategies) | yAudit | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [reports.yaudit.dev/04-2025-Sickle](https://reports.yaudit.dev/04-2025-Sickle) | yAudit | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [reports.yaudit.dev/06-2024-Sickle-4](https://reports.yaudit.dev/06-2024-Sickle-4) | yAudit | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [reports.yaudit.dev/2026-02-vfat-router](https://reports.yaudit.dev/2026-02-vfat-router) | yAudit | Audit | 2026-02 | fresh | Direct | n/a | 0 | n/a |
| [ackee-blockchain-vfat-sickle-report.pdf](https://github.com/Ackee-Blockchain/public-audit-reports/blob/master/2025/ackee-blockchain-vfat-sickle-report.pdf) | Ackee Blockchain | Audit | 2025-05 | aging | Direct | contract_name | 14 | n/a |
| [ackee-blockchain-vfat-farm-strategies-report.pdf](https://github.com/Ackee-Blockchain/public-audit-reports/blob/master/2025/ackee-blockchain-vfat-farm-strategies-report.pdf) | Ackee Blockchain | Audit | 2025-06 | aging | Direct | contract_name | 14 | n/a |
| [omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175](https://omniscia.io/reports/vfat-sickle-contracts-678fbcce38f52b001894a175) | Omniscia | Audit | 2025-04 | aging | Direct | contract_name | 4 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x56d7e8...f97fd7`](./contracts/sonic-146/0x56d7e8f0729289737e68bd1a93f54edc33f97fd7/) | AccessHub | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5e7a9e...e8e37f`](./contracts/sonic-146/0x5e7a9eea6988063a4dbb9ccddb3e04c923e8e37f/) | AccessHub2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x24f7eb...190f08`](./contracts/ethereum-1/0x24f7eb9c0a1b93bfbe9aea2ba66e167b88190f08/) | AcrossDepositAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0bd719...9a4b57`](./contracts/base-8453/0x0bd719d8ab0e9d36128b0f41f7e2ca75a69a4b57/) | AcrossRouteAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x08cd01...22a455`](./contracts/optimism-10/0x08cd017edf396dc80fec52922fb625b51722a455/) | AcrossSwapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x21c690...9d11fa`](./contracts/base-8453/0x21c690aea1cd096e291b3132cdef4a1a0c9d11fa/) | AcrossV3AmountAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x940181...d98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | Aero | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06b559...4d59b5`](./contracts/base-8453/0x06b559fef135ed5c9133478a2af502d8d44d59b5/) | AerodromeGaugeConnector | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x200701...f3157b`](./contracts/base-8453/0x20070181c6d6ad127bf1bcba08f5f679d8f3157b/) | AerodromeGaugeRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x16a54a...4ffcf0`](./contracts/polygon-137/0x16a54ae47b7e2eea0ed60438ab5d970c284ffcf0/) | AerodromeRouterAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x132fbf...61f14e`](./contracts/base-8453/0x132fbfa0f6fefe8fdf128748f90888d06461f14e/) | AerodromeRouterConnector | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf0b9f5...8610d3`](./contracts/base-8453/0xf0b9f58b97906ce684134034256e78cd058610d3/) | AerodromeSlipstreamGaugeConnector | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x74547d...220283`](./contracts/optimism-10/0x74547dd2bd05c8ad55a98272db37fcd4f2220283/) | AerodromeSlipstreamStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x462929...806c2d`](./contracts/optimism-10/0x46292986df2fee3a048dd6753918e62e93806c2d/) | AerodromeStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x06b559...4d59b5`](./contracts/polygon-137/0x06b559fef135ed5c9133478a2af502d8d44d59b5/) | AggregatorConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe4c69a...bc382f`](./contracts/base-8453/0xe4c69af018b2ea9e575026c0472b6531a2bc382f/) | AirdropDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x089bb8...0ff675`](./contracts/arbitrum-42161/0x089bb866727c05953d65e193ea090c912b0ff675/) | AlgebraPoolAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0385c2...0ebec6`](./contracts/linea-59144/0x0385c27306e0fa285633590ead2814419c0ebec6/) | AlgebraRouterAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x387885...973f7c`](./contracts/sonic-146/0x387885ebefbb456330d9a0aa186bbe04cc973f7c/) | AtlantisIncentiveMakerConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x83d50c...652fe7`](./contracts/optimism-10/0x83d50cef0dc3713161115580763e41ba76652fe7/) | AutomatedFarmStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6f6a53...484aef`](./contracts/sonic-146/0x6f6a537c1e9ccf11d0bc59e64bf8d93f26484aef/) | AutomatedFeeNotifier | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x79bca9...1f8dce`](./contracts/optimism-10/0x79bca9bcc19e157cb5f8c5a2f4d6cb951b1f8dce/) | BalanceLogicLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x296b3f...e2d03c`](./contracts/avalanche-43114/0x296b3fcdba0d0deb5ad5e0a1bfaa63f17ae2d03c/) | BlackholeGaugeConnector | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x26925a...c050d2`](./contracts/avalanche-43114/0x26925ac062c5f267e0fb5c655c2fa8004ac050d2/) | BlackholeGaugeRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3508a7...983596`](./contracts/avalanche-43114/0x3508a7918ac8f31ef3af71f8bb637926b8983596/) | BlackholeRouterConnector | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x212cf6...56c99c`](./contracts/ethereum-1/0x212cf64bbd972df348be70a4b445385a3056c99c/) | BlackholeV2Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4a1daa...a7b5b3`](./contracts/avalanche-43114/0x4a1daaa42496a208b138c92bcca3345c53a7b5b3/) | BlackholeV3Connector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2b0273...141db8`](./contracts/avalanche-43114/0x2b027301799029a64b21060c995f772e02141db8/) | BlackholeV3GaugeConnector | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2aab70...0d8922`](./contracts/base-8453/0x2aab7012496eb2f5446a64befe56b10ed40d8922/) | BmxConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x02099a...9bf271`](./contracts/fraxtal-252/0x02099a96d5ef6996d0718e34a229f9c1f79bf271/) | BridgeDepositStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0975c8...e40c38`](./contracts/linea-59144/0x0975c8d3b879db8c645250aa1fac78fc2ce40c38/) | BridgeLib | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x26d774...1578d7`](./contracts/sonic-146/0x26d7745573d4be284ad6bcd65469145c0a1578d7/) | BridgeRouter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3e75fe...088f2b`](./contracts/base-8453/0x3e75fe34ccf3d4b3ee59735b103b8ee310088f2b/) | BridgeRouteReceiver | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x010a62...d06caa`](./contracts/optimism-10/0x010a62b2682819fc4b9e785595c5e19b35d06caa/) | BridgeSwapReceiver | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x0a6154...d49220`](./contracts/mantle-5000/0x0a615483e086665ba253fbe141e33f210fd49220/) | BridgeWithdrawStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0d1e75...5befbe`](./contracts/linea-59144/0x0d1e753a25ebda689453309112904807625befbe/) | CakeOFT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x3d660d...492813`](./contracts/mode-34443/0x3d660d59095288fc22b7fc5d244f60ed9c492813/) | CamelotV2Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1ef68f...323b0d`](./contracts/arbitrum-42161/0x1ef68f6c17fd9a7ac5a90707cd08d6bdcd323b0d/) | CamelotV3Connector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3fc8e6...38e2eb`](./contracts/optimism-10/0x3fc8e63e98f83ba0f28336fb537699655938e2eb/) | CLFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x629e12...7cd905`](./contracts/optimism-10/0x629e122d4542f49145d89bad8b4cbe74757cd905/) | CLGauge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5a41a5...c289de`](./contracts/optimism-10/0x5a41a5b04e9e7cca874bdb7ba51cff4815c289de/) | CLGaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x301e46...943a1b`](./contracts/optimism-10/0x301e46346d39aaa66d372cb40f870510c8943a1b/) | CLPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0bf0f9...949d53`](./contracts/ethereum-1/0x0bf0f966a8c1676d2d76c1863cbd84170b949d53/) | ConnectorLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x039047...3ff999`](./contracts/base-8453/0x039047aa3847f10f2d58f59ea807da0c963ff999/) | CrossFarmMoveStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4bc0e3...bf1c8f`](./contracts/optimism-10/0x4bc0e3f3699d152ecb9c80f3de73a4ff78bf1c8f/) | CustomSwapFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0ad083...38ee68`](./contracts/base-8453/0x0ad08370c76ff426f534bb2affd9b5555338ee68/) | CustomUnstakedFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc918b1...c1c669`](./contracts/base-8453/0xc918b1c21da06b55be0361adcd5cda3329c1c669/) | DackieV3PoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x737464...aefd30`](./contracts/optimism-10/0x73746410b0dd4526e1fa00d0854e99ba54aefd30/) | DelegationLogicLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x71e236...a5506c`](./contracts/base-8453/0x71e23624e7c37a6653ed36044e375bb060a5506c/) | DeprecatedAerodromeGaugeRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xa8d15f...60bc9f`](./contracts/sonic-146/0xa8d15f9597259600aa969b9205e2d82b6b60bc9f/) | DustSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xf3a2a7...ed0f35`](./contracts/mode-34443/0xf3a2a7168438792f6c688ae5374be852c7ed0f35/) | DynamicSwapFeeModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x7423e3...c4318e`](./contracts/sonic-146/0x7423e3d8fc6e626be895ee70ae54a68994c4318e/) | EmissionsToken | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x8b2321...61eb98`](./contracts/sonic-146/0x8b2321f9f2a56a9930435286fb39bf3ea961eb98/) | EqualizerGaugeConnector | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xd5e121...6079bb`](./contracts/sonic-146/0xd5e121b733a7ee4d4d22298bc50239177b6079bb/) | EqualizerNfpgConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x475a0f...52d8e4`](./contracts/sonic-146/0x475a0f48d432d715bc64eab5bd8b24a50f52d8e4/) | EqualizerNfpgGaugeRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5e8c2c...fb7719`](./contracts/sonic-146/0x5e8c2cf2303d4b63e592586a14b7048192fb7719/) | EqualizerNftConnector | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x61d7f5...7527e2`](./contracts/sonic-146/0x61d7f5c2821416600651e72ee4c9cc286b7527e2/) | EqualizerRouterConnector | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x31debc...1537b5`](./contracts/linea-59144/0x31debc0909a1ebf5506d1071b88cc6d4a11537b5/) | EtherexGaugeRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x4ca667...b207d3`](./contracts/linea-59144/0x4ca6672280e8b150c8b142605966d960e6b207d3/) | EtherexRouterConnector | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x041166...95c3bb`](./contracts/linea-59144/0x041166c333aacba569b7e108cf4bbb139495c3bb/) | EtherexV2GaugeConnector | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1ef68f...323b0d`](./contracts/linea-59144/0x1ef68f6c17fd9a7ac5a90707cd08d6bdcd323b0d/) | EtherexV3Connector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0cfed1...c55302`](./contracts/optimism-10/0x0cfed16b402116eacac8b0e85bb46530a7c55302/) | ExactTransferLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xf4c67c...aa1d7b`](./contracts/optimism-10/0xf4c67cdeaab8360370f41514d06e32ccd8aa1d7b/) | FactoryRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6a4400...29c9c5`](./contracts/sonic-146/0x6a4400157291d1ff339188eca407011c7429c9c5/) | FeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xae6321...307298`](./contracts/mantle-5000/0xae63213b0c22f0e7fff46c1b1cdf9d07ed307298/) | FeeConverterOdos | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x90e433...cec31c`](./contracts/sonic-146/0x90e433e091b4eaf2ecc00d74aab7971f5dcec31c/) | FeeDistributorFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x982ce5...929b12`](./contracts/mantle-5000/0x982ce53ab2c9d7b841af04d8df87879f73929b12/) | FeeManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x49607c...cc860d`](./contracts/sonic-146/0x49607c8e263fe8ae43481ba27a35276ac9cc860d/) | FeeRecipientFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3d8ac2...99e1da`](./contracts/ethereum-1/0x3d8ac28d53ca8475bd2dcf61b8dd7221f099e1da/) | FlashloanLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc7aa15...3b1634`](./contracts/ethereum-1/0xc7aa15e458cb4a6e7b132d4057ab6994843b1634/) | FlashloanStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x478ec7...a57103`](./contracts/sonic-146/0x478ec7641ee72df36d5ae2767b264b4a00a57103/) | GaugeRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x649805...07a9f0`](./contracts/sonic-146/0x64980593f031d62ccd4b3ad02b5e74374107a9f0/) | Gems | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x77a8ca...34a29d`](./contracts/base-8453/0x77a8ca1febb4f3aa93373a32663491f38c34a29d/) | HydrexMerklConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x8a09b9...eec40d`](./contracts/sonic-146/0x8a09b9784e19de39bf40106726541c6c09eec40d/) | IchiConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x86b066...d1fd69`](./contracts/sonic-146/0x86b0660f8620236ae8215d190d059a9119d1fd69/) | IchiVaultRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xed6436...f17f92`](./contracts/mantle-5000/0xed6436a1b91f9a40bd44151f7ea81b45a3f17f92/) | JoeStakingRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x36b02c...b66423`](./contracts/base-8453/0x36b02cdd50041838b62411d77e5fefa37bb66423/) | KyberLMConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5b4e02...5d0f80`](./contracts/sonic-146/0x5b4e02a81373cea45a0539fbd21a741f125d0f80/) | LauncherPlugin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0e2fff...fbbff7`](./contracts/ethereum-1/0x0e2fff65867422813c25a7404950385e36fbbff7/) | LendingStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xb7c1be...d9ab95`](./contracts/linea-59144/0xb7c1be5b2caabaf4f638d6c9d10d662f27d9ab95/) | LineaVestingConnector | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x49606f...d4890d`](./contracts/optimism-10/0x49606f96fa3d8d52f37dec96781fa4dd36d4890d/) | LPFarmStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3fdb48...534e71`](./contracts/optimism-10/0x3fdb481b25b24824a2339a4a1abd0b0bc7534e71/) | LpMigrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xcdd958...05cff0`](./contracts/optimism-10/0xcdd9585005095ac7447d1fdbc990c5cfb805cff0/) | ManagedRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x76d8d0...9b0cb5`](./contracts/mantle-5000/0x76d8d0e37f697cc95c87f0ba9512701cf19b0cb5/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xa756f7...1955b5`](./contracts/mantle-5000/0xa756f7d419e1a5cbd656a438443011a7de1955b5/) | MasterChef | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x74a9ad...21321e`](./contracts/mantle-5000/0x74a9ad382b6116b655480bada469bae55f21321e/) | MasterchefConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x6b9b71...132b33`](./contracts/mantle-5000/0x6b9b717e56bb1c432115d748fc6cf40cbd132b33/) | MasterChefRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa6002c...636430`](./contracts/base-8453/0xa6002ce302cadf7f6658b35eacdb1ab408636430/) | MasterchefV3Connector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x6ca0f5...68dd2e`](./contracts/linea-59144/0x6ca0f5c25075f43a4c6ef7e6a704ceb33468dd2e/) | MasterChefV3KeeperV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1c1081...1d7ecd`](./contracts/linea-59144/0x1c1081e2bb3c2f3805bc89e1951c15be551d7ecd/) | MasterChefV3ReceiverV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xa6002c...636430`](./contracts/mantle-5000/0xa6002ce302cadf7f6658b35eacdb1ab408636430/) | MasterchefWithReferrerConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x298614...f2b6db`](./contracts/mantle-5000/0x298614a6d91a9f80f144784cd916348c08f2b6db/) | MerchantMoeMasterchefConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x03fa97...9b26aa`](./contracts/arbitrum-42161/0x03fa9770db525d5d287da8d851a93a35a39b26aa/) | MerklConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb60ab0...9a0d76`](./contracts/base-8453/0xb60ab0b9b7b0d1614ab53b7540653078d89a0d76/) | MigrationStrategy | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4e3a52...13a752`](./contracts/sonic-146/0x4e3a52a75eb452a48ba2561a2d75d35c0013a752/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0a5aa5...07d5c6`](./contracts/base-8453/0x0a5aa5d3a4d28014f967bf0f29eaa3ff9807d5c6/) | MixedRouteQuoterV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x4515a4...dc00c9`](./contracts/mantle-5000/0x4515a45337f461a11ff0fe8abf3c606ae5dc00c9/) | Moe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x5bef01...4bedec`](./contracts/mantle-5000/0x5bef015ca9424a7c07b68490616a4c1f094bedec/) | MoeFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xfe8b6a...2d2d7a`](./contracts/mantle-5000/0xfe8b6aaf50212939b52558e8813b62c9212d2d7a/) | MoeHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xaa61e8...7698ba`](./contracts/mantle-5000/0xaa61e8db8983582bfd7786fea681e7bb237698ba/) | MoeLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xcb61a1...c8468b`](./contracts/mantle-5000/0xcb61a1a9c21fb30b95fa4118c97da350f6c8468b/) | MoePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x72b507...2b59f4`](./contracts/mantle-5000/0x72b507a4799815adc30083925f748210e92b59f4/) | MoeQuoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xaf6278...ffdeb8`](./contracts/mantle-5000/0xaf627839850143043415925bc77c00c01effdeb8/) | MoeRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x05fc2c...d379ff`](./contracts/arbitrum-42161/0x05fc2c6045f108fd587c68e78fcdcaa0d8d379ff/) | MultiSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x829f78...61bea9`](./contracts/optimism-10/0x829f7819ef21301f423bbf406f6fc3f22b61bea9/) | NFTDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x628ee3...9a678f`](./contracts/optimism-10/0x628ee3400ea249a575ad4422c6f9403f719a678f/) | NFTSVG | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x416b43...dc6f29`](./contracts/optimism-10/0x416b433906b1b72fa758e166e239c43d68dc6f29/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xbb5dfe...56adf4`](./contracts/optimism-10/0xbb5dfe1380333cee4c2eebd7202c80de2256adf4/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x12e66c...0f4406`](./contracts/sonic-146/0x12e66c8f215ddd5d48d150c8f46ad0c6fb0f4406/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5f477c...76f847`](./contracts/sonic-146/0x5f477c5dfb9ed6c5e2923414b6a8dc51c976f847/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xa57fa3...f1542e`](./contracts/sonic-146/0xa57fa38b3fd45922394e9e1077748a2383f1542e/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x827922...485b72`](./contracts/base-8453/0x827922686190790b37229fd06084350e74485b72/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc741be...6a1178`](./contracts/base-8453/0xc741beb2156827704a1466575cca1cbf726a1178/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaa277c...e610ef`](./contracts/arbitrum-42161/0xaa277cb7914b7e5514946da92cb9de332ce610ef/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xaaa78e...45946a`](./contracts/linea-59144/0xaaa78e8c4241990b4ce159e105da08129345946a/) | NonfungiblePositionManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2c9988...834ff8`](./contracts/optimism-10/0x2c998811b2af32416c8ff4c0ea85f0e7ed834ff8/) | NonfungibleTokenPositionDescriptor | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x4b7c6f...0cb202`](./contracts/fraxtal-252/0x4b7c6f757b6a62c9359eeaef9a7097e0b70cb202/) | NuriGaugeConnector | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x152a4f...bdf01c`](./contracts/fraxtal-252/0x152a4f338f6765d181234d6996e6f80063bdf01c/) | NuriGaugeRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0xb61c56...89bf86`](./contracts/fraxtal-252/0xb61c567ee2d90be26adeaef632fdedd97689bf86/) | NuriRouterConnector | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x0f6abc...9c81a3`](./contracts/fraxtal-252/0x0f6abc6b808b377d6aed8da1fad5e135c99c81a3/) | NuriV3Connector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xc3f14f...e67783`](./contracts/optimism-10/0xc3f14f34ea43943e6fd677a2bdcea65882e67783/) | OffchainOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x00dc7a...ed4d1d`](./contracts/optimism-10/0x00dc7a6cb7f1a9c7c38dbc426801133ab9ed4d1d/) | OmniV3Connector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2da25e...6374c8`](./contracts/sonic-146/0x2da25e7446a70d7be65fd4c053948becaa6374c8/) | PairFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| fraxtal | [`0x29d829...c64125`](./contracts/fraxtal-252/0x29d82976c8babb7d5a82c78c6ef4c2a2ddc64125/) | PancakeInfinityAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x178b1a...677ccc`](./contracts/base-8453/0x178b1ad7d412c42c0e5baf0c091c3cb98d677ccc/) | PancakeInfinityConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xac7bb8...17fc67`](./contracts/base-8453/0xac7bb8ef90ec3d419afa2834618123285417fc67/) | PancakeInfinityFarmConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x142403...dba3ff`](./contracts/arbitrum-42161/0x1424037cfbdc0eeb25a31d413c62b2408bdba3ff/) | PancakeMasterchefV3Connector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb3b166...8f17fd`](./contracts/base-8453/0xb3b166ac12cd6c1e0093cbde5810343dc28f17fd/) | PancakeRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1242d5...5fc80b`](./contracts/sonic-146/0x1242d59fecface4ce7f2a59896537f95255fc80b/) | PancakeV3Connector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xa0dd04...a0f4eb`](./contracts/base-8453/0xa0dd04e265b1828b050df27f007d49e9d1a0f4eb/) | PancakeV3LmPoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x06e2ea...f34593`](./contracts/avalanche-43114/0x06e2eaea943cacc9c39d170330219218c4f34593/) | PangolinV3Connector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6eedd0...1a8ce5`](./contracts/optimism-10/0x6eedd06ebe34cd1e8722961215abed38011a8ce5/) | ParaswapConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x3f468e...142e9c`](./contracts/optimism-10/0x3f468e35f5c262a6e796bfe3be831bf8b9142e9c/) | PatchedManagedRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xeb401e...22173a`](./contracts/avalanche-43114/0xeb401ee88149ef9e0230655b8e72c550d822173a/) | PharaohGaugeRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x24c9d5...012611`](./contracts/avalanche-43114/0x24c9d584b5e2e1d61f30db6d1baca16360012611/) | PharaohRouterConnector | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdfc520...a2d4d2`](./contracts/avalanche-43114/0xdfc5207f1d0797a8544f16bfdf44d8bfc5a2d4d2/) | PharaohV2GaugeConnector | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x119ed2...3877f5`](./contracts/avalanche-43114/0x119ed29f4398c6909d14675bc726e405b13877f5/) | PharaohV3Connector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x886523...f6af2a`](./contracts/mantle-5000/0x886523e92c7624825307626bdf5cbabc6ff6af2a/) | ProxyAdmin2Step | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4f8833...e71780`](./contracts/polygon-137/0x4f8833cd141e60b112105d581e852e8ed0e71780/) | QuickswapV3Connector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3003b4...d79dc7`](./contracts/sonic-146/0x3003b4feaff95e09683feb7fc5d11b330cd79dc7/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x219b7a...07535a`](./contracts/sonic-146/0x219b7adebc0935a3ec889a148c6924d51a07535a/) | QuoterV2 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x0d3e1d...16c0c2`](./contracts/mantle-5000/0x0d3e1d7b3a0861f0e8122ccc74d43eb4e816c0c2/) | RamsesGaugeConnector | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x125caf...4cb45e`](./contracts/mantle-5000/0x125caffe923eaa451461ab98353c4a88154cb45e/) | RamsesGaugeRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x475a0f...52d8e4`](./contracts/avalanche-43114/0x475a0f48d432d715bc64eab5bd8b24a50f52d8e4/) | RamsesRouterConnector | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x194cdf...8f9f9a`](./contracts/arbitrum-42161/0x194cdf44ef8f1bb58fadbd105b2c485aae8f9f9a/) | RamsesV3Connector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x6a216e...fd09e8`](./contracts/sonic-146/0x6a216eddec4443d57a305e2a2d16925fe7fd09e8/) | RamsesV3Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4c0a98...bea3b6`](./contracts/sonic-146/0x4c0a98ef13e29fcf8544256007bdf58c58bea3b6/) | RamsesV3PoolDeployer | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x691757...58437a`](./contracts/optimism-10/0x6917570f7989d13fd2592b0162ce6fa97c58437a/) | RebalanceLib | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9960bd...3b9d96`](./contracts/optimism-10/0x9960bd7dcdf8e4ecf7dc5ca1dc433921a03b9d96/) | RebalanceStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x684667...ff4082`](./contracts/sonic-146/0x684667de9025329e1c2d3869b2a7631a91ff4082/) | RewardClaimers | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x54e6ec...c84b98`](./contracts/sonic-146/0x54e6eccd783ff3cfe10eb157e7b3ffc6d8c84b98/) | RewardClaimers2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1d3687...330cdc`](./contracts/sonic-146/0x1d368773735ee1e678950b7a97bca2cafb330cdc/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x073049...7bf3b7`](./contracts/linea-59144/0x073049917a8f7f41c60aad8232b69b89b37bf3b7/) | RouterAllowlist | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xbd89f4...a9bfb8`](./contracts/sonic-146/0xbd89f4c0726afa67afcef8aab171108514a9bfb8/) | ShadowGaugeConnector | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1d12ca...a98e31`](./contracts/sonic-146/0x1d12ca87c7058ec4c87a402f28b1c88281a98e31/) | ShadowGaugeRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x8cceb0...047e04`](./contracts/sonic-146/0x8cceb02d14f605850a2aad9eb705092717047e04/) | ShadowMessageRecipient | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x45c831...af3611`](./contracts/sonic-146/0x45c83123c70bd9a8a4444d633dc233143aaf3611/) | ShadowRouterConnector | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x54d81f...94eacf`](./contracts/sonic-146/0x54d81f06f7ee744a46048d0edd9983e69994eacf/) | ShadowV2GaugeConnector | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1ac18a...46ebb7`](./contracts/sonic-146/0x1ac18a9ff2751e26a513acd419220a8b4e46ebb7/) | ShadowV3Connector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3ebf49...bbf875`](./contracts/sonic-146/0x3ebf49368d8449b2c11602827fec41970dbbf875/) | ShadowV3GaugeConnector | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xde3f58...23165d`](./contracts/mantle-5000/0xde3f584116e31b14aeaf67d4a667935c3a23165d/) | SickleGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x83631c...590c4a`](./contracts/optimism-10/0x83631c1dd38a48589622784c30f3119859590c4a/) | SickleVote | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2ebbde...0815e1`](./contracts/optimism-10/0x2ebbde85305c4d9810bb983f2cdc2321b00815e1/) | SimpleFarmStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x223641...4bd69b`](./contracts/ethereum-1/0x223641e6866f9ce54c4a5783827ca9a6924bd69b/) | SimpleLendingStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x585af0...34f18d`](./contracts/optimism-10/0x585af0b397ac42dbef7f18395426bf878634f18d/) | SinkConverter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x58f62e...cbfca2`](./contracts/optimism-10/0x58f62efb1528d006d22771623c3c3e7953cbfca2/) | SinkDrain | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x5aee5f...abcdae`](./contracts/optimism-10/0x5aee5f0e6c2055ebd776db25f48f6c9a68abcdae/) | SinkManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x45ff00...ce78a4`](./contracts/optimism-10/0x45ff00822e8235b86cb605ac8295c14628ce78a4/) | SinkManagerFacilitator | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x629157...d45478`](./contracts/optimism-10/0x629157747ee3a635f9ea1ed37fd0dc7187d45478/) | SlipstreamOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1cf744...94e5fd`](./contracts/polygon-137/0x1cf744378c3b794caa6c2e504d6dbad36994e5fd/) | SlipstreamRouterAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xba3aee...5041ca`](./contracts/mode-34443/0xba3aee516399388c779463183d00bb579f5041ca/) | SlipstreamSugar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xd0a3f3...f886d8`](./contracts/base-8453/0xd0a3f3994ecc341f2e5c3aa548c21aa1bdf886d8/) | SmartChefFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1397e2...e58e22`](./contracts/arbitrum-42161/0x1397e210e7ffcb3242ddcec61ccfca7127e58e22/) | SolidlyAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x6666b2...39ec4c`](./contracts/optimism-10/0x6666b2df7a328cf775778ebad368f5f13e39ec4c/) | Splitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x064abb...16a5e0`](./contracts/sonic-146/0x064abb264f2290b5d69345426ac9031bec16a5e0/) | SteerRewarderConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x495193...447a69`](./contracts/optimism-10/0x495193daebde03e12857f4d3bb8984da2d447a69/) | SugarHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x14d55a...0a0b1d`](./contracts/mode-34443/0x14d55a1528b876d792b08436e32619a1ef0a0b1d/) | SuperchainGaugeRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x0792a6...cc9676`](./contracts/optimism-10/0x0792a633f0c19c351081cf4b211f68f79bcc9676/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5543c6...e2d695`](./contracts/sonic-146/0x5543c6176feb9b4b179078205d7c29eea2e2d695/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xbe6d8f...6d18a5`](./contracts/base-8453/0xbe6d8f0d05cc4be24d5167a3ef062215be6d18a5/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x463353...4cc8b6`](./contracts/sonic-146/0x46335341a458740fe6e82bbcae4fd9fdc94cc8b6/) | SwapxGaugeConnector | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5e57c1...c1ac84`](./contracts/sonic-146/0x5e57c1accc81606bfd30e819e701e4e15ac1ac84/) | SwapxGaugeRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xa7abc7...952aba`](./contracts/sonic-146/0xa7abc7b3fd66b019877bc29c9158bd5500952aba/) | SwapxRouterConnector | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x19ff84...631cd8`](./contracts/sonic-146/0x19ff84fb5f66a45f57709dae5ee4942212631cd8/) | SwapxV3Connector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x1e2bc5...612f72`](./contracts/sonic-146/0x1e2bc5c694af33a3dd8dc8f06b7b959e70612f72/) | ThenaV3Connector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x4d84dc...762933`](./contracts/sonic-146/0x4d84dc1c2b4b9aaed9f746ef3d59b71205762933/) | TickLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xbdd6f9...5170ef`](./contracts/optimism-10/0xbdd6f9662e904a9176aafcbdded45d076b5170ef/) | Trig | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x5d2fc3...f2ed53`](./contracts/unichain-130/0x5d2fc3c37e3d4d8110a2c1ad51bd6f8e26f2ed53/) | UniswapV2Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x364796...7c14ae`](./contracts/unichain-130/0x3647966e65f31f9766ceef2a26cdd7dad47c14ae/) | UniswapV3PoolAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x5a72c0...128a04`](./contracts/unichain-130/0x5a72c0f4bf7f3ddf1370780d405e29149b128a04/) | UniswapV3Router02Adapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x3b8886...01e1f3`](./contracts/unichain-130/0x3b8886c3f6d3ba4a75d3becb3c83864c0c01e1f3/) | UniswapV3RouterAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4bf3e3...1142fc`](./contracts/optimism-10/0x4bf3e32de155359d1d75e8b474b66848221142fc/) | UniversalRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x4a9ea0...1782dd`](./contracts/optimism-10/0x4a9ea0dd5649ec4b6745c60d1769e2184c1782dd/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x9560e8...1088db`](./contracts/optimism-10/0x9560e827af36c94d2ac33a39bce1fe78631088db/) | Velo | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x06a52d...4fb36c`](./contracts/optimism-10/0x06a52d4c80eee559dd4ebb82362816933b4fb36c/) | VelodromeGaugeConnector | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2d0fd2...c64c1d`](./contracts/optimism-10/0x2d0fd2d95315764476a6b419b463e3f7f0c64c1d/) | VelodromeSlipstreamGaugeConnector | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x1732e3...1e320f`](./contracts/polygon-137/0x1732e3ebc63e8d7c5d32ba8e9bd40982c21e320f/) | VelodromeUniversalRouterAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xdf49ff...013e25`](./contracts/optimism-10/0xdf49ff386344d3b687f56c02d0b1784b19013e25/) | VelodromeV2Oracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x55160b...01dee7`](./contracts/mantle-5000/0x55160b0f39848a7b844f3a562210489df301dee7/) | VeMoe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x7399aa...55b1e5`](./contracts/mantle-5000/0x7399aa9d2b71fdb943f6328a88b47502cb55b1e5/) | VeMoeRewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x1549de...2a14f6`](./contracts/mantle-5000/0x1549de86b2de4f619663841b276b1a62002a14f6/) | VestingContract | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x57f518...aca0ef`](./contracts/sonic-146/0x57f518dc7d37405602f44054ead3c06a25aca0ef/) | VoteModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x166135...c480a5`](./contracts/base-8453/0x16613524e02ad97edfef371bc883f2f5d6c480a5/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xaaa256...91f499`](./contracts/arbitrum-42161/0xaaa2564deb34763e3d05162ed3f5c2658691f499/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xaaaf3d...8d9869`](./contracts/linea-59144/0xaaaf3d9cdd3602d117c67d80eec37a160c8d9869/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xebf418...67e6b4`](./contracts/base-8453/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x756e7c...ada8ec`](./contracts/optimism-10/0x756e7c245c69d351fffbfb88ba234aa395ada8ec/) | VotingRewardsFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf95488...2a1e6b`](./contracts/base-8453/0xf95488cbe02fcfe165d0c7b33dca2979472a1e6b/) | WindswapGaugeRegistry | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x1e2bc5...612f72`](./contracts/mantle-5000/0x1e2bc5c694af33a3dd8dc8f06b7b959e70612f72/) | WrapAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x8a756e...f85448`](./contracts/sonic-146/0x8a756e3c9d2e1a6211f273136560990667f85448/) | XShadow | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 239 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 1556 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=32

Zero-match audit list:

- [4584] reports.yaudit.dev/06-2023-Sickle
- [4585] reports.yaudit.dev/10-2023-Sickle-Update
- [4586] reports.yaudit.dev/05-2024-Sickle-3
- [4587] reports.yaudit.dev/10-2024-Sickle-Strategies
- [4588] reports.yaudit.dev/04-2025-Sickle
- [4589] reports.yaudit.dev/06-2024-Sickle-4
- [4590] reports.yaudit.dev/2026-02-vfat-router

Fork inheritance lineage and inherited audits are included when available.
