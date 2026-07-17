# Agentic Audit Brief: Opyn

## Project Overview

- Project: Opyn (`opyn`)
- Website: [https://www.opyn.co](https://www.opyn.co)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:39.129Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: avalanche, ethereum
- Contract surface: 97 unique implementations (150 raw deployments)
- DeFi Llama TVL: $1,501,501.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Options. Structurally: 36 project-authored contract(s) across 2 chain(s); 7 ERC20 tokens, 1 ERC721 NFT, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 6 common project-authored base contract(s) (strategybase, strategyflashswap, contextupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 207; live-surface contracts included: 150 (75 live, 75 unknown).
- Excluded by liveness: 57 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 10/22 (45.5%)
- Deployed-live implementations: 22 of 97 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 10/22
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 75
- Unique implementations: 97
- Raw deployments: 150
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 10 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 45.5% (OpenZeppelin, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 10 | 45.5% | 2020-11 |
| Akira | Tier 2 | 7 | 31.8% | 2021-08 |
| PeckShield | Tier 2 | 6 | 27.3% | 2021-02 |
| Trail of Bits | Tier 1 | 6 | 27.3% | 2021-05 |

## Contract Surface

### ✅ Verified + Audited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ABDKMath64x64 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x21a8d15322c257abd2b22a56edde758398be0f32`](./contracts/ethereum-1/0x21a8d15322c257abd2b22a56edde758398be0f32/); ethereum `0x64187ae08781b09368e6253f9e94951243a493d5` | ✅ Audited |
| AddressBook | unknown | avalanche | n/a | 9 deployments: avalanche [`0x27d60b89e1a104cef79b3e40ead1374bb75ac87d`](./contracts/avalanche-43114/0x27d60b89e1a104cef79b3e40ead1374bb75ac87d/); avalanche `0x3ab3ff5501e900f81b6c6a7c556391d155cba7b6`; avalanche `0x58d6bd9c46a98608a328178f154b585e79e40854`; avalanche `0x5a2e8777c72dd59f24b4221a2eeac5c68e94e9a6`; avalanche `0x63e48ae3b63a6cf2b749379dc5d468db5dbe7310`; avalanche `0x8b5bffcbd5a9170839fe27f5d75915de847aa0eb`; avalanche `0xac289a6ac2ddc56f5acde4cff5f3a3174d481ed4`; avalanche `0xbca124824326cf8abc5e2e569fff3a6f17110510`; avalanche `0xef3b91345dd7be2c5c1f95c40545e9bf274ee698` | ✅ Audited |
| Controller | unknown | avalanche | n/a | 4 deployments: ethereum `0x7c19858f2f317ccf413b3046c2bed49f346b7d0f`; ethereum `0xcc2fd280a669a4453b30b5e72871ad3e2a2663d0`; avalanche [`0x02b70ab8fd23f95e0cd8f8ea604415eb7cfc0e18`](./contracts/avalanche-43114/0x02b70ab8fd23f95e0cd8f8ea604415eb7cfc0e18/); avalanche `0xeadf3d94b902c06c13a2e64b223b1df5057aa23d` | ✅ Audited |
| MarginCalculator | unknown | avalanche | n/a | 4 deployments: ethereum `0x9a33230f59cc7cc9a084e0098a2b2934fc7bf7c0`; ethereum `0xfaa67e3736572645b38af7410b3e1006708e13f4`; avalanche [`0x2c726a7da5500bd59a488e0065c41822bb46b337`](./contracts/avalanche-43114/0x2c726a7da5500bd59a488e0065c41822bb46b337/); avalanche `0xbd5a1dc654b5476b94f81755e68d1c8f0aac2afd` | ✅ Audited |
| MarginPool | unknown | avalanche | n/a | 7 deployments: avalanche [`0x06aa7f18b263c67a04fc890a2166a4b54bf8e5b0`](./contracts/avalanche-43114/0x06aa7f18b263c67a04fc890a2166a4b54bf8e5b0/); avalanche `0x52751426a3043dd7a27ddb534eb090018866d50e`; avalanche `0x5b42893f5da151872bc84f2be48ee5f97ec5708b`; avalanche `0x9c7918f3bd12d3eb1fc58e418fd5a6f75b48017a`; avalanche `0xb628d6341492f87f3895b167a95ba9936bb15024`; avalanche `0xccf6629aeab734e621cc59ebb0297196774fdb9d`; avalanche `0xfe9c8549d2b6b308baf71e0267bec14fb6f5591f` | ✅ Audited |
| MarginVault | unknown | ethereum | n/a | 4 deployments: ethereum [`0x4d3a52a0e98144caf46ac226d83e8f144b5c654d`](./contracts/ethereum-1/0x4d3a52a0e98144caf46ac226d83e8f144b5c654d/); ethereum `0x90b7d718477cc835fbf8330fdaef47cb2173caa7`; avalanche `0x8b5685586f43c07aa0f911bb5d5db8b56252858a`; avalanche `0x9b011cb12899ce70b8bb59fc3f324d1d7888912f` | ✅ Audited |
| Oracle | unknown | avalanche | n/a | 11 deployments: ethereum `0x414b66ce4f304385edd47d372fcc4a11dde7d16e`; ethereum `0x7054e08461e3ecb7718b63540addb3c3a1746415`; ethereum `0x789cd7ab3742e23ce0952f6bc3eb3a73a0e08833`; avalanche [`0x00bf1e9b876d63f5cd4ee114211a9a7b7fb54f2d`](./contracts/avalanche-43114/0x00bf1e9b876d63f5cd4ee114211a9a7b7fb54f2d/); avalanche `0x108abfba5ad61bd61a930bfe73394558d60f0b10`; avalanche `0x454a11d657c83643a04d30f148fb03d6c1405bd0`; avalanche `0x47a8fa114036c50765eabb110d7a21e648c1a89a`; avalanche `0x5c76e757138379e376d1cb9c18723f884df5e8eb`; avalanche `0x6f010d2fc520b710f707157c26acc18d4ebd7c9f`; avalanche `0x72c959244bb8c953aacefe6e7b20d727b91d45ad`; avalanche `0xa7516c430024366aa5b0cafd8dfcfeecb5ece8bb` | ✅ Audited |
| Otoken | unknown | avalanche | n/a | 8 deployments: ethereum `0x3035b72d76d06ff66114e9a8d2fc5035f8828005`; avalanche [`0x03b28469a3f5cbdcba91485b82de17d64b9ed931`](./contracts/avalanche-43114/0x03b28469a3f5cbdcba91485b82de17d64b9ed931/); avalanche `0x0fd7e1d4cdb5ab29a3f972505472afc636cfc823`; avalanche `0x3c19ddc6f1b9c4501a2d141c2dec59bc5f351c29`; avalanche `0x459a8ba81a0f0ea672856d2415e25e50d4224677`; avalanche `0x9d7915bbeeb48f511bcff079e6649609fd4fe904`; avalanche `0xbc2804ca9436a74e11ff60b8b20a157b85c21425`; avalanche `0xe0ebdd9c29d5724385136fecc3dec5fdd60c7bfe` | ✅ Audited |
| OtokenFactory | unknown | avalanche | n/a | 7 deployments: avalanche [`0x215967eebb43f37bd76f4b36974b1bc868725505`](./contracts/avalanche-43114/0x215967eebb43f37bd76f4b36974b1bc868725505/); avalanche `0x25bc1cd298512885f0e452833198bcbb149f66a5`; avalanche `0x6fb3f1d106540184d35abb1c614a80600c3b0b14`; avalanche `0x90fcbde91805b8d32b51bcc674a56bde09249eae`; avalanche `0xc0cf10dd710aefb209d9dc67bc746510ffd98a53`; avalanche `0xf9745ad6c6ff4fe9d8a0a2668a7f9e2944ea0955`; avalanche `0xfc8c5928e1eec38d0df511483b11592483e98060` | ✅ Audited |
| Whitelist | unknown | avalanche | n/a | 7 deployments: avalanche [`0x4980d7757098a80deb6893d4384ec014212289d0`](./contracts/avalanche-43114/0x4980d7757098a80deb6893d4384ec014212289d0/); avalanche `0x4c659888cd942a6feb2306c05a631c9cdfba4904`; avalanche `0x9395889ba1131a2bd70beffdcaeddf487b32fa93`; avalanche `0xa839416d0311248dcd9af7fe9918410fa5ea6b4f`; avalanche `0xd79756a7869f6a27c52f9550eda9b4e7baadd13c`; avalanche `0xe3243bbc363486be2f3f4e5fbd17f16b8ed2c1fe`; avalanche `0xe9963affc9a53e293c9bb547c52902071e6087c9` | ✅ Audited |

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CrabMigration | unknown | ethereum | n/a | [`0xa1cab67a4383312718a5799eaa127906e9d4b19e`](./contracts/ethereum-1/0xa1cab67a4383312718a5799eaa127906e9d4b19e/) | ⚠️ Unaudited |
| CrabStrategy | core_logic | ethereum | n/a | [`0xf205ad80bb86ac92247638914265887a8baa437d`](./contracts/ethereum-1/0xf205ad80bb86ac92247638914265887a8baa437d/) | ⚠️ Unaudited |
| CrabStrategyV2 | core_logic | ethereum | n/a | [`0x3b960e47784150f5a63777201ee2b15253d713e8`](./contracts/ethereum-1/0x3b960e47784150f5a63777201ee2b15253d713e8/) | ⚠️ Unaudited |
| OptionsExchange | unknown | ethereum | n/a | [`0x5778f2824a114f6115dc74d432685d3336216017`](./contracts/ethereum-1/0x5778f2824a114f6115dc74d432685d3336216017/) | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | avalanche | n/a | [`0x6bf686d99a4ce17798c45d09c21181fac29a9fb3`](./contracts/avalanche-43114/0x6bf686d99a4ce17798c45d09c21181fac29a9fb3/) | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | avalanche | n/a | [`0x98d03125c62dae2328d9d3cb32b7b969e6a87787`](./contracts/avalanche-43114/0x98d03125c62dae2328d9d3cb32b7b969e6a87787/) | ⚠️ Unaudited |
| RibbonThetaVaultWithSwap | core_logic | avalanche | n/a | [`0x9dd6be071b4292cc88b8190ab718329adea3e3a3`](./contracts/avalanche-43114/0x9dd6be071b4292cc88b8190ab718329adea3e3a3/) | ⚠️ Unaudited |
| ShortHelper | unknown | ethereum | n/a | [`0x3b4095d5ff0e629972caaa50bd3004b09a1632c5`](./contracts/ethereum-1/0x3b4095d5ff0e629972caaa50bd3004b09a1632c5/) | ⚠️ Unaudited |
| ShortPowerPerp | unknown | ethereum | n/a | [`0xa653e22a963ff0026292cc8b67941c0ba7863a38`](./contracts/ethereum-1/0xa653e22a963ff0026292cc8b67941c0ba7863a38/) | ⚠️ Unaudited |
| SqrtPriceMathPartial | unknown | ethereum | n/a | [`0x9cf8dcbcf115b06d8f577e73cb9edfdb27828460`](./contracts/ethereum-1/0x9cf8dcbcf115b06d8f577e73cb9edfdb27828460/) | ⚠️ Unaudited |
| TickMathExternal | unknown | ethereum | n/a | [`0x4d9d7f7ae80d51628aa56ef37720718c99e6fdfc`](./contracts/ethereum-1/0x4d9d7f7ae80d51628aa56ef37720718c99e6fdfc/) | ⚠️ Unaudited |
| WPowerPerp | unknown | ethereum | n/a | [`0xf1b99e3e573a1a9c5e6b2ce818b617f0e664e86b`](./contracts/ethereum-1/0xf1b99e3e573a1a9c5e6b2ce818b617f0e664e86b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (75)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x01cc03e55d64f1ce3cd9a47a4987f88e897d2e7b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x027d66918f9c3daa157a78c2119b7f1ef695e4e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0d888174341dcc950937896c2cec0cc2d1728c44` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x26d6f5dbe152bf5e91dbac3384e23500afaa92d6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2ba08c08fc0ad74202c4828e6fb24b60432c8836` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x33fff86016fcd6c696f5f8bfdbd5b106db22f6e5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3636f78215c547cbfb45a0b3b48ac5e60e8b5d87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3af23f1d713628c17be55f8d0049c6ae5535aa2b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3d85513e5a222bf1b525e6582c329106ddc8a423` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44f181412166c26897532ffb31b2a4e32d5a3bdf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x48828a15f7bd0a7703be316294d71a147c43c064` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x498daab7a32256d027dc76d7bbebf7f2aaa13e51` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f6f0e5a62dde05bc7329c7905d874a1c928e3e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x50388c7046cbec2e71fdbcd75f9cbc52e84be3cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x62f55e419d7ca4c34d607a42f6c3771918a1ff90` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x64a8e6912232eb20681c9fdf8b7e4dc3c251c67d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6aaebff3858c914eb226d33907b0898e231d0cdb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6babb7b61134545e9ab6375b4697cb00f8021d01` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x792ecacb6f0c5dedafb7132ba9b35299a7e5607a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7be5eda5aa58936ae6a1e1f6258172a68cd715a2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x802f0bea3f02a8063a33a855fde24c0a8ad8badd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x82d89ec90f645aaa7147cccf353685aec98f61f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f92cfb1bf6ed1ce79f2e8eb0dc96e0f3b61276d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91a6a793bbb5ecf4dcb5c1422bdc9a08378fb049` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x93c3b7e5e47a454658ae16573b1804bd370e50fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x952419f5ed0bc732a86f2f770bf9b4486921cc08` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95b49aa2bc21562d57a96e84c821e35ed2e5a1c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa7df5be533579b27cb6820af7ebd7468e3b667e4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xab4ea17ee729d54dde81946dbdb92226f5ee1d35` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xad4611e142238cd9f9e2999b37e5c668f1b605bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xae67dc3d09b9a83cf7651aa2f1ab712500ff522d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb53c2ee92a24b08521912e1687bc8142a7e6a9ee` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb56ba2cc3e6e51eb408499de0519317d0a1e8b96` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb611a364a7ce5e6188f7201ae10c3f714b76579b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb9127f2e97f6816dcd7b85d8617b7acfe5e15419` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbd9817f9d72a61d939b1e74b67750047e15537cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcb4d1dfe9907235a1527b529ec5e550cf3457a4e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcd6265c7f5f77ad94b7b24e13f5157227bdc3980` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd0c9caeda2c2ba49a82369f7d971b0400b4b8711` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd4ccccf32721f2ba15e834439b60ce87ec24590d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9972139312508dc9cca36b9f3359bc095b96dbf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdbd3dd06d25f417df82da7d714f3212886be26d2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd7eca264fe1e3335f246c22e3c634022ac479ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe0319d892d9181bc6ed2a8cdf7accb10a64fcabf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe8303f688190eeade7927c09072c7b21869d4b60` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec1a342f436fbce8e714c789902baa18fc096a69` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xec44e339962a3bc2bc051e964ae7e3f1a66c6c34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xef298fa9c1f443df21e145f20fd2e5f5955e9fa7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8e87f16d51879261a2b87f89aa1bd2c418660b1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf95872663376d51dbb5c6056927bbd62aa59aade` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfa86d43b41fa7a759c606130cc81970a955ff816` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd4a0041ee5c63c82151252ccb89b95bbc270394` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xffa31b7c784463efd661785f1261a653f41cbd29` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x04c75fed758eb1aa50d045465ac31ae400aeadc0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0cd322e9a6031f27627cd1af9c4ac006bf927abc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1627b54aa04010c123b8f77d8d9fa0939f84292b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1ce1fe3944653a8d7e793240adbe9858d8c94d39` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2156b61681b323e7d4c4ed50df0b83d608298906` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2ba283a4a88362704004e7cfdac6039b6ac02326` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x31e6ad61908f060ad89786ece37b2498b2f1ad45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3284949736d55faf3706ec167f4d51f1afc6c6ba` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3405ad3afbd981e5545308168e33be24aeee0021` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x34c737f8bafb9e97ce8f4c702101f7878cc41103` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5b69a34bfa22162036f10bb352c7e9377758f01d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7b859b9e6df4130e1822dd076af479e56d49c39e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8c4fd210b4a432652f02af641b7140f545b4f6ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8f49d8b93e0e25e892be65a921c2b0226689df66` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9a0b5e34eff0ec5a3476a915f35c800f8abeb3bd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9a66a6d01af96efb36e7db47be759d9d87c066d0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf6183697d87cb064d9fe56210ca4d240cf4fef4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc1b7b1fc9b34ce51a432f1dbbcd2120db3016371` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc8698bee361b479de6683f34883798ef34e29873` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xed386690377a2b455c0c7c5cdcc90a41d6405e6b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xef0ac6fa11fb4e0446c02c5455b63163b05a9631` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfce6a25b07c20bd601114e79c21fab4dae18448c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [[**Akira Audit Report - Aug 2021**]()](https://github.com/akiratechhq/review-opyn-gamma-2021-08) | Akira | Audit | 2021-08 | stale | Direct | contract_name | 37 | high |
| [**Trail of Bits Audit Report - May 2021**](https://github.com/trailofbits/publications/blob/master/reviews/Opyn-Gamma-Protocol.pdf) | Trail of Bits | Audit | 2021-05 | stale | Direct | contract_name | 31 | high |
| [**Peckshield Audit Report - Feb 2021**](https://github.com/peckshield/publications/blob/master/audit_reports/peckshield-audit-report-Opyn-v1.0.pdf) | PeckShield | Audit | 2021-02 | stale | Direct | contract_name | 31 | high |
| [[**OpenZeppelin Audit Report - Nov 2020**]()](https://www.openzeppelin.com/news/opyn-gamma-protocol-audit) | OpenZeppelin | Audit | 2020-11 | stale | Direct | contract_name | 62 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa1cab67a4383312718a5799eaa127906e9d4b19e`](./contracts/ethereum-1/0xa1cab67a4383312718a5799eaa127906e9d4b19e/) | CrabMigration | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf205ad80bb86ac92247638914265887a8baa437d`](./contracts/ethereum-1/0xf205ad80bb86ac92247638914265887a8baa437d/) | CrabStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b960e47784150f5a63777201ee2b15253d713e8`](./contracts/ethereum-1/0x3b960e47784150f5a63777201ee2b15253d713e8/) | CrabStrategyV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5778f2824a114f6115dc74d432685d3336216017`](./contracts/ethereum-1/0x5778f2824a114f6115dc74d432685d3336216017/) | OptionsExchange | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6bf686d99a4ce17798c45d09c21181fac29a9fb3`](./contracts/avalanche-43114/0x6bf686d99a4ce17798c45d09c21181fac29a9fb3/) | RibbonThetaVaultWithSwap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x98d03125c62dae2328d9d3cb32b7b969e6a87787`](./contracts/avalanche-43114/0x98d03125c62dae2328d9d3cb32b7b969e6a87787/) | RibbonThetaVaultWithSwap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x9dd6be071b4292cc88b8190ab718329adea3e3a3`](./contracts/avalanche-43114/0x9dd6be071b4292cc88b8190ab718329adea3e3a3/) | RibbonThetaVaultWithSwap | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3b4095d5ff0e629972caaa50bd3004b09a1632c5`](./contracts/ethereum-1/0x3b4095d5ff0e629972caaa50bd3004b09a1632c5/) | ShortHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa653e22a963ff0026292cc8b67941c0ba7863a38`](./contracts/ethereum-1/0xa653e22a963ff0026292cc8b67941c0ba7863a38/) | ShortPowerPerp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9cf8dcbcf115b06d8f577e73cb9edfdb27828460`](./contracts/ethereum-1/0x9cf8dcbcf115b06d8f577e73cb9edfdb27828460/) | SqrtPriceMathPartial | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4d9d7f7ae80d51628aa56ef37720718c99e6fdfc`](./contracts/ethereum-1/0x4d9d7f7ae80d51628aa56ef37720718c99e6fdfc/) | TickMathExternal | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1b99e3e573a1a9c5e6b2ce818b617f0e664e86b`](./contracts/ethereum-1/0xf1b99e3e573a1a9c5e6b2ce818b617f0e664e86b/) | WPowerPerp | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 22 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 75 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=161

Fork inheritance lineage and inherited audits are included when available.
