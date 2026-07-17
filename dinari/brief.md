# Agentic Audit Brief: Dinari

## Project Overview

- Project: Dinari (`dinari`)
- Website: [https://dinari.com](https://dinari.com)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:11.120Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, base, blast, ethereum, hyperliquid
- Contract surface: 94 unique implementations (256 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 98 project-authored contract(s) across 4 chain(s); 8 ERC4626 vaults, 14 ERC20 tokens, 2 Chainlink feeds; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 27 common project-authored base contract(s) (accesscontroldefaultadminrulesupgradeable, accesscontrolupgradeable, contextupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 357; live-surface contracts included: 240 (196 live, 44 unknown).
- Excluded by liveness: 117 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/49 (10.2%)
- Deployed-live implementations: 66 of 94 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/66
- Verified + Unaudited implementations: 61
- Verified by bytecode match: 0
- Unverified implementations: 28
- Unique implementations: 94
- Raw deployments: 256
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-12 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: 6.1% (Sherlock)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sherlock | Tier 1 | 3 | 4.5% | 2023-08 |
| Hacken | Tier 2 | 2 | 3.0% | 2024-12 |
| Pashov Audit Group | Tier 2 | 1 | 1.5% | 2024-12 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| DividendDistribution | unknown | base | n/a | 4 deployments: ethereum `0xec3b79d771b47a0f5db925d7faf793605f5560ce`; base [`0x4f94cb235e88779d6a0bbc6165fb67861ef85fc8`](./contracts/base-8453/0x4f94cb235e88779d6a0bbc6165fb67861ef85fc8/); arbitrum `0x7e66ea8e425f0669f651373c85df8415eb38e7fc`; blast `0xa2fc79c7e79ea468db73f0b62b4d2ee94302e5d0` | ✅ Audited |
| OrderProcessor | unknown | ethereum | n/a | [`0xa8a48c202af4e73ad19513d37158a872a4ac79cb`](./contracts/ethereum-1/0xa8a48c202af4e73ad19513d37158a872a4ac79cb/) | ✅ Audited |
| OrderProcessor | unknown | base | n/a | [`0x63ff43009f9ba3584af2ddfc3d5fe2cb8ae539c0`](./contracts/base-8453/0x63ff43009f9ba3584af2ddfc3d5fe2cb8ae539c0/) | ✅ Audited |
| OrderProcessor | unknown | arbitrum | n/a | [`0xfa922457873f750244d93679df0d810881e4131d`](./contracts/arbitrum-42161/0xfa922457873f750244d93679df0d810881e4131d/) | ✅ Audited |
| TransferRestrictor | unknown | arbitrum | n/a | 13 deployments: ethereum `0x5b4680dddeba47a6e0ebb200507a357eaeb4c2f8`; ethereum `0x88b92c99098f7a817df0392294b96f8ab284a701`; base `0x5b4680dddeba47a6e0ebb200507a357eaeb4c2f8`; base `0xe1b2feede3ffe7e63a89a669a08688951c94611e`; arbitrum [`0x036c44f2df0d7cfa7624b002bd7ef486449152af`](./contracts/arbitrum-42161/0x036c44f2df0d7cfa7624b002bd7ef486449152af/); arbitrum `0x0fe85e7112efb8ce7d2f72a000f2931793f28012`; arbitrum `0x4f4ef038d5fb06d7c53e6f1a6e9dd440b602118a`; arbitrum `0x86a68de026b689c924b686a063ae88a433215c38`; arbitrum `0x9255d774ba992638f7e7c6b842364866f0548698`; arbitrum `0xc63ac73ecd95a2d6cb313757378d6c16c760e712`; arbitrum `0xead337c3e098828dc3dcc347d7e19fbe8c94bbf7`; arbitrum `0xeda6e4bf8cbfd0e25d4cbeacbea2881546b4aea3`; blast `0x5b4680dddeba47a6e0ebb200507a357eaeb4c2f8` | ✅ Audited |

### ⚠️ Verified + Unaudited (61)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BeaconProxy | registry | arbitrum | n/a | 35 deployments: arbitrum [`0x026fdf3024953cb2e8982bc11c67d336f37a5044`](./contracts/arbitrum-42161/0x026fdf3024953cb2e8982bc11c67d336f37a5044/); arbitrum `0x0b5ac0d7dcf6964609a12af4f6c6f3c257070193`; arbitrum `0x0c29891dc5060618c779e2a45fbe4808aa5ae6ad`; arbitrum `0x0c59f6b96d3cac58240429c7659ec107f8b1efa7`; arbitrum `0x118346c2bb9d24412ed58c53bf9bb6f61a20d7ec`; arbitrum `0x14297be295ab922458277be046e89f73382bdf8e`; arbitrum `0x1820872e193d48f59ec1b9383da6404b58e7b803`; arbitrum `0x2824efe5cedb3bc8730e412981997dac7c7640c2`; arbitrum `0x2b7c643b42409f352b936bf07e0538ba20979bff`; arbitrum `0x3619ca1e96c629f7d71c1b03dc0ee56479356228`; arbitrum `0x36d37b6cbca364cf1d843eff8c2f6824491bcf81`; arbitrum `0x3ad63b3c0ea6d7a093ff98fde040baddc389ecdc`; arbitrum `0x3c9f23db4ddc5655f7be636358d319a3de1ff0c4`; arbitrum `0x46b979440ac257151ee5a5bc9597b76386907fa1`; arbitrum `0x4dafffddea93ddf1e0e7b61e844331455053ce5c`; arbitrum `0x519062155b0591627c8a0c0958110a8c5639dca6`; arbitrum `0x5b6424769823e82a1829b0a8bcaf501bffd90d25`; arbitrum `0x67bad479f77488f0f427584e267e66086a7da43a`; arbitrum `0x769ff50fd49900a6c53b2af049eacb83dad52bdf`; arbitrum `0x77308f8b63a99b24b262d930e0218ed2f49f8475`; arbitrum `0x8240affe697cde618ad05c3c8963f5bfe152650b`; arbitrum `0x8e50d11a54cff859b202b7fe5225353be0646410`; arbitrum `0x9c46e1b70d447b770dbfc8d450543a431af6df3a`; arbitrum `0x9da913f4dca9b210a232d588113047685a4ed4b1`; arbitrum `0xa6f344abc6e2501b2b303fcbba99cd89f136b5fb`; arbitrum `0xb1284f6b3e487e3f773e9ad40f337c3b3cda5c69`; arbitrum `0xc1ba16afdcb3a41242944c9faaccd9fb6f2b428c`; arbitrum `0xc52915fe75dc8db9fb6306f43aaef1344e0837ab`; arbitrum `0xce38e140fc3982a6bcebc37b040913ef2cd6c5a7`; arbitrum `0xd883bcf80b2b085fa40cc3e2416b4ab1cbca649e`; arbitrum `0xd8f728adb72a46ae2c92234ae8870d04907786c5`; arbitrum `0xdd92f0723a7318e684a88532cac2421e3cc9968e`; arbitrum `0xeb0d1360a14c3b162f2974daa5d218e0c1090146`; arbitrum `0xf1f18f765f118c3598cc54dcac1d0e12066263fe`; arbitrum `0xf4bd09b048248876e39fcf2e0cdf1aee1240a9d2` | ⚠️ Unaudited |
| BeaconProxy | unknown | arbitrum | n/a | 36 deployments: arbitrum [`0x0c39b0146f774fe4aebc62e1ddde7aa03a3534f1`](./contracts/arbitrum-42161/0x0c39b0146f774fe4aebc62e1ddde7aa03a3534f1/); arbitrum `0x0f11c59a15ad1e033d7ddaba82cabe0cbcd314ab`; arbitrum `0x2f3990a7a0b454bb149df647c9eeb8c8dafe1e82`; arbitrum `0x32c8fb151c8202ee59bcdd6d817707932e7c237e`; arbitrum `0x3c5bebe8998137e390b0cb791b42bf538353451b`; arbitrum `0x407274abb9241da0a1889c1b8ec65359dd9d316d`; arbitrum `0x42112c40c4d4f5be3b64b113a55d307a30716964`; arbitrum `0x4c4c794adec19665f2ac4d3d7aba7e761d24920a`; arbitrum `0x4e63c472b5f490fddb50d915fc5a0851f6421cff`; arbitrum `0x57d7cb764bf041a7b1bce7b01e097294b6a891b0`; arbitrum `0x5b4c01175e9809a7f352197e953f8d9a2ae2d12f`; arbitrum `0x5bf7d0f8c178bb5b678bf6bc20a2e499a85cfd4b`; arbitrum `0x6bb71b2bdd892c5efb960a76edec03b1f04551f4`; arbitrum `0x7e8b163daf001b50aea7f0799fea7ebe74428876`; arbitrum `0x8370cea738caf8d789dff439d2f6a64cc4227593`; arbitrum `0x8821abd917364c39811e4d3e9ca5a6d75769395a`; arbitrum `0x98cd8262b129f3bcdd50b633d193db134bee28c5`; arbitrum `0x9ea41fdfb479a0eb2b43ef4cb2248e13436f5e07`; arbitrum `0xa6b1bc15a4289899309ba0439d4037084fa2d457`; arbitrum `0xadf3cd8759bd8ba9106342d1494b4fb4b3720923`; arbitrum `0xb5d09652f40630b287bc067270c79e1402f28599`; arbitrum `0xbac491f9cdd0c1a05c18492232827ca009b64945`; arbitrum `0xbda5a1e73410730325cea424f3dbd8a2ecc69514`; arbitrum `0xc9faf488f9631668895117ef9649c3f3f1869c86`; arbitrum `0xcc3dc0ac609e6b78bb8cd7a3b27c2c7688272f8a`; arbitrum `0xd767ee961a00921d69721c0f9999546d5235e6f9`; arbitrum `0xe1624e776909df49429d87429de9e01add1640a9`; arbitrum `0xe744c9ca2a5a7651dd59b0ff897e5b00abf605e3`; arbitrum `0xeb4deff87a9711610a1ec4d15855245b11ceac02`; arbitrum `0xedebc5ba1b480af3c938b1873bddcacad35d3828`; arbitrum `0xee0d00a79afeb121880f5bf2273debbf7f60ea02`; arbitrum `0xef8c9c08ee50bd31377a309b879fc9afd1302c83`; arbitrum `0xf3d26aa97ad896b764767cc6d9c1be2637c34287`; arbitrum `0xf82f6801fa5ab466c8820f08c9c7adf893ac8d6f`; arbitrum `0xf8c652054a60224e2d9c774bfd118f6a27d5bcef`; arbitrum `0xfe0fed39ce30127701b828f74c65074bd2c31e9c` | ⚠️ Unaudited |
| BuyOrderIssuer | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xc4b7b5740a72ee2d823c088e1d1455a4b10d8f60`](./contracts/arbitrum-42161/0xc4b7b5740a72ee2d823c088e1d1455a4b10d8f60/); arbitrum `0xca1f1cb5ed09c33e6d618e476acaf1c22525d636` | ⚠️ Unaudited |
| BuyProcessor | unknown | arbitrum | n/a | [`0x4ec42a1709e6245ff0bdd5ba605ba7147a165a67`](./contracts/arbitrum-42161/0x4ec42a1709e6245ff0bdd5ba605ba7147a165a67/) | ⚠️ Unaudited |
| BuyUnlockedProcessor | unknown | arbitrum | n/a | 3 deployments: ethereum `0xca1f1cb5ed09c33e6d618e476acaf1c22525d636`; arbitrum [`0x640d8f1cc10737b48dfcb52f7fc2bbaf17bcd064`](./contracts/arbitrum-42161/0x640d8f1cc10737b48dfcb52f7fc2bbaf17bcd064/); arbitrum `0xdd6da6429c17ef9f9cf920fb38b51ec3695ef2ab` | ⚠️ Unaudited |
| BuyUnlockedProcessor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x9108270b3537933a9c68e87dc129a43433d49a8c`](./contracts/arbitrum-42161/0x9108270b3537933a9c68e87dc129a43433d49a8c/); arbitrum `0xb600145b17dc7e5e8582ff6234b8862cf40d4db0` | ⚠️ Unaudited |
| BuyUnlockedProcessor | unknown | blast | n/a | 2 deployments: blast [`0x332a3e403ff0d03076fdce768dafe032b7504f25`](./contracts/blast-81457/0x332a3e403ff0d03076fdce768dafe032b7504f25/); blast `0xbce6410a175a1c9b1a25d38d7e1a900f8393bc4d` | ⚠️ Unaudited |
| CCIPWaypoint | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4f6755260a6208b59440cb01efde04beec76c3c2`](./contracts/ethereum-1/0x4f6755260a6208b59440cb01efde04beec76c3c2/); ethereum `0xf83042d4bbb1cb9c9e1042da4654585c60f6ffdc` | ⚠️ Unaudited |
| CCIPWaypoint | unknown | base | n/a | 2 deployments: base [`0x4528ddb6df3b726ca25e1c262cf5548627012955`](./contracts/base-8453/0x4528ddb6df3b726ca25e1c262cf5548627012955/); base `0x7cedc206cc7db6db7f9fcd143128ef9e2550bffd` | ⚠️ Unaudited |
| CCIPWaypoint | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3a34b7fa417b51af57936f72b8234c824f816907`](./contracts/arbitrum-42161/0x3a34b7fa417b51af57936f72b8234c824f816907/); arbitrum `0xd1cc75dd7b340b9786b3d17cad85e69c1c7d7869` | ⚠️ Unaudited |
| DirectBuyIssuer | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x08d7b1e920780dc6e99da11de765b5c4067e2290`](./contracts/arbitrum-42161/0x08d7b1e920780dc6e99da11de765b5c4067e2290/); arbitrum `0x34293f62134b9585f4f069b5314080f3a37a173e` | ⚠️ Unaudited |
| DShare | registry | ethereum | n/a | [`0x4062d9cbf85da2913880a3a5641cf05e85774f27`](./contracts/ethereum-1/0x4062d9cbf85da2913880a3a5641cf05e85774f27/) | ⚠️ Unaudited |
| DShare | registry | base | n/a | [`0x6aa1bda7e764bc62589e64f371a4022b80b3c72a`](./contracts/base-8453/0x6aa1bda7e764bc62589e64f371a4022b80b3c72a/) | ⚠️ Unaudited |
| DShare | registry | arbitrum | n/a | [`0x15436013850211acf89b656f34b426fdae01dacb`](./contracts/arbitrum-42161/0x15436013850211acf89b656f34b426fdae01dacb/) | ⚠️ Unaudited |
| DShare | unknown | blast | n/a | 5 deployments: ethereum `0x8705e50f6cf4d3c5e153afe4c5e725f6032fc10e`; base `0x45854301aa075c62976c90cf6802a72dd4bda48a`; arbitrum `0x9a8e37d67bc0230653647303a9ce1f02bfc7a5d1`; arbitrum `0xf237896b3eecca928e95d85677d8fbf6dda54020`; blast [`0x036c44f2df0d7cfa7624b002bd7ef486449152af`](./contracts/blast-81457/0x036c44f2df0d7cfa7624b002bd7ef486449152af/) | ⚠️ Unaudited |
| DShareFactory | unknown | base | n/a | 7 deployments: ethereum `0x8e72825e94c09a2d8412e1f5c7e105338fa1eed1`; ethereum `0xa0319c523c75eccd6a1165a8d30f3af72898c329`; base [`0x332a3e403ff0d03076fdce768dafe032b7504f25`](./contracts/base-8453/0x332a3e403ff0d03076fdce768dafe032b7504f25/); arbitrum `0x6a285cebb083ef8062d90f8bad13a2f3bb455826`; arbitrum `0x95bc50555c7dcc39e28d97be68070a200f053a96`; blast `0x45854301aa075c62976c90cf6802a72dd4bda48a`; blast `0xa0319c523c75eccd6a1165a8d30f3af72898c329` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | n/a | [`0x60b5e7eecb2aee0382db86491b8cffa39347c747`](./contracts/ethereum-1/0x60b5e7eecb2aee0382db86491b8cffa39347c747/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | ethereum | n/a | 3 deployments: ethereum [`0x63088ebebc9aaa8f774c02e025098b97364c0c25`](./contracts/ethereum-1/0x63088ebebc9aaa8f774c02e025098b97364c0c25/); ethereum `0x95b77a0659887053075579a6fa274bfc15a486b0`; ethereum `0x98c6616f1cc0d3e938a16200830dd55663dd7dd3` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x701ae65663f3711d55dbc5d8473f10ca8f14b335`](./contracts/ethereum-1/0x701ae65663f3711d55dbc5d8473f10ca8f14b335/); ethereum `0xecabf4d8fdbb45eabed0daf25fd690eaaa4d9a9e` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | n/a | [`0x0bfe520dccab40be814e8dc9eab9f1db6305fdea`](./contracts/base-8453/0x0bfe520dccab40be814e8dc9eab9f1db6305fdea/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | n/a | [`0x98c6616f1cc0d3e938a16200830dd55663dd7dd3`](./contracts/base-8453/0x98c6616f1cc0d3e938a16200830dd55663dd7dd3/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | n/a | [`0xbce6410a175a1c9b1a25d38d7e1a900f8393bc4d`](./contracts/base-8453/0xbce6410a175a1c9b1a25d38d7e1a900f8393bc4d/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | base | n/a | [`0xbe1d52375496f944af615ef133c24dc8fa1a02bf`](./contracts/base-8453/0xbe1d52375496f944af615ef133c24dc8fa1a02bf/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x47910f43eca6a2355e8b1ff5f60923939fbb8915`](./contracts/arbitrum-42161/0x47910f43eca6a2355e8b1ff5f60923939fbb8915/); arbitrum `0xafc053554143399c9848a52b7d788c60a06902e8` | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | n/a | [`0x7e4d801e961a0db81938a29efec10d2179a7486b`](./contracts/arbitrum-42161/0x7e4d801e961a0db81938a29efec10d2179a7486b/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | n/a | [`0xb4ca72ea4d072c779254269fd56093d3adf603b8`](./contracts/arbitrum-42161/0xb4ca72ea4d072c779254269fd56093d3adf603b8/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | n/a | [`0xd8d541427ad7ce0f4c6de2b21c8a8596cbb90a44`](./contracts/arbitrum-42161/0xd8d541427ad7ce0f4c6de2b21c8a8596cbb90a44/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | arbitrum | n/a | [`0xfc90518d5136585ba45e34ed5e1d108bd3950cfa`](./contracts/arbitrum-42161/0xfc90518d5136585ba45e34ed5e1d108bd3950cfa/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | blast | n/a | [`0x6aa1bda7e764bc62589e64f371a4022b80b3c72a`](./contracts/blast-81457/0x6aa1bda7e764bc62589e64f371a4022b80b3c72a/) | ⚠️ Unaudited |
| Forwarder | unknown | ethereum | n/a | 5 deployments: ethereum [`0x08d7b1e920780dc6e99da11de765b5c4067e2290`](./contracts/ethereum-1/0x08d7b1e920780dc6e99da11de765b5c4067e2290/); ethereum `0xb88f1c2973584a413b9b8780f6563a684bd31d52`; arbitrum `0xa3ed7cd9ad3e0910e3fa355813f763634568ed37`; arbitrum `0xb47b9a05fc45eec35d9ecbb34aee16d8ac9d0d86`; arbitrum `0xc498e2715a9180e490bb9e6776acdcbaeb748cc7` | ⚠️ Unaudited |
| Forwarder | unknown | arbitrum | n/a | [`0x14d3498e4816c2b8f017677356dca051e28a33c8`](./contracts/arbitrum-42161/0x14d3498e4816c2b8f017677356dca051e28a33c8/) | ⚠️ Unaudited |
| ForwarderPyth | unknown | blast | n/a | [`0x3aa37e6a6852a483b7f85dc193c4723cf6f84885`](./contracts/blast-81457/0x3aa37e6a6852a483b7f85dc193c4723cf6f84885/) | ⚠️ Unaudited |
| FulfillmentRouter | adapter | ethereum | n/a | 7 deployments: ethereum [`0x462efb6a9519f93d9613ad613842e02417f69c84`](./contracts/ethereum-1/0x462efb6a9519f93d9613ad613842e02417f69c84/); ethereum `0xb9030e77bef564cf025e4202fee8bbb8c9bb4c29`; base `0x63914c467ea6c16ea85514dbc32b9ee2ae179e8e`; arbitrum `0xc697786cfc86ef4e4be489926387a9603a6be797`; arbitrum `0xe4f65f9a4659a2bd961a0e3ee68341bf221114e4`; blast [`0x462efb6a9519f93d9613ad613842e02417f69c84`](./contracts/blast-81457/0x462efb6a9519f93d9613ad613842e02417f69c84/); blast `0xf83042d4bbb1cb9c9e1042da4654585c60f6ffdc` | ⚠️ Unaudited |
| OrderProcessor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x10448db0dcfddd75dd3e48ef2c116d4d2f11a66f`](./contracts/ethereum-1/0x10448db0dcfddd75dd3e48ef2c116d4d2f11a66f/); ethereum `0x6bb71b2bdd892c5efb960a76edec03b1f04551f4` | ⚠️ Unaudited |
| OrderProcessor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0a03632a634124ee3bba0e9e58f1a48fcf806242`](./contracts/arbitrum-42161/0x0a03632a634124ee3bba0e9e58f1a48fcf806242/); arbitrum `0x4c3bd1ac4f62f25388c02caf8e3e0d32d09ff8b3` | ⚠️ Unaudited |
| OrderProcessor | unknown | arbitrum | n/a | 9 deployments: ethereum `0x2c5a99123b9df79762851ecd10e6da541085a7fa`; ethereum `0x9f2c338186cca45d6ae668ff5a37459860849863`; ethereum `0xcc3dc0ac609e6b78bb8cd7a3b27c2c7688272f8a`; base `0x9a17bb2171469d0dffe0c1a01ff3bdfc6a851e09`; base `0xff69106c29ceaafcda41e62def4798297d565eb3`; arbitrum [`0x14d5ba979b3faf24823c80bb3be228b543300deb`](./contracts/arbitrum-42161/0x14d5ba979b3faf24823c80bb3be228b543300deb/); arbitrum `0x8ec4a0675eb43887db78f0ce9cb50b654d01512f`; arbitrum `0xd9ab4754f39b2b1e5008c5b15c2edbab6ba32c04`; blast `0x9b3e9d3fb6849c9f0edcb2a9ebb6af83b7817de5` | ⚠️ Unaudited |
| OrderProcessor | unknown | blast | n/a | 2 deployments: blast [`0x7148617fcd0258202747f2f65b4fe561dc0e6b40`](./contracts/blast-81457/0x7148617fcd0258202747f2f65b4fe561dc0e6b40/); blast `0xeb458f36544402224284f42c0d7c8931b7e5e5c6` | ⚠️ Unaudited |
| OrderProcessor | unknown | blast | n/a | 2 deployments: blast [`0x9f2c338186cca45d6ae668ff5a37459860849863`](./contracts/blast-81457/0x9f2c338186cca45d6ae668ff5a37459860849863/); blast `0xa8a48c202af4e73ad19513d37158a872a4ac79cb` | ⚠️ Unaudited |
| SellOrderProcessor | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x17c01a17eba2be1abe93d54b8a9c627cb0875792`](./contracts/arbitrum-42161/0x17c01a17eba2be1abe93d54b8a9c627cb0875792/); arbitrum `0xe279fd3adee9c3ec7a4c732c41c00a90c3286068` | ⚠️ Unaudited |
| SellProcessor | unknown | arbitrum | n/a | [`0x70f2bd91390df0a0662f7ba322d8c166e89e4be3`](./contracts/arbitrum-42161/0x70f2bd91390df0a0662f7ba322d8c166e89e4be3/) | ⚠️ Unaudited |
| StakedUsdPlus | unknown | ethereum | n/a | 2 deployments: ethereum [`0xe1b2feede3ffe7e63a89a669a08688951c94611e`](./contracts/ethereum-1/0xe1b2feede3ffe7e63a89a669a08688951c94611e/); ethereum `0xeda6e4bf8cbfd0e25d4cbeacbea2881546b4aea3` | ⚠️ Unaudited |
| StakeRaise | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4ade36703451f976964a0995c77ccf6352651e81`](./contracts/ethereum-1/0x4ade36703451f976964a0995c77ccf6352651e81/); ethereum `0xd767ee961a00921d69721c0f9999546d5235e6f9` | ⚠️ Unaudited |
| StakeRaise | unknown | ethereum | n/a | 2 deployments: ethereum [`0xf1c32b758a6495aa6060d88e70da697c9f80d081`](./contracts/ethereum-1/0xf1c32b758a6495aa6060d88e70da697c9f80d081/); ethereum `0xf4bd09b048248876e39fcf2e0cdf1aee1240a9d2` | ⚠️ Unaudited |
| TokenLockCheck | token | arbitrum | n/a | 3 deployments: ethereum `0xc63ac73ecd95a2d6cb313757378d6c16c760e712`; arbitrum [`0x57591e07eab6c2b3bee529586253217584316b2b`](./contracts/arbitrum-42161/0x57591e07eab6c2b3bee529586253217584316b2b/); blast `0x7e599c828c42758be0a6336dc32334b8afb6a8fc` | ⚠️ Unaudited |
| UpgradeableBeacon | registry | ethereum | n/a | [`0x5ccb5482dc15aadd36d6c02c0d44ce0e3e7e6835`](./contracts/ethereum-1/0x5ccb5482dc15aadd36d6c02c0d44ce0e3e7e6835/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | base | n/a | [`0x9b3e9d3fb6849c9f0edcb2a9ebb6af83b7817de5`](./contracts/base-8453/0x9b3e9d3fb6849c9f0edcb2a9ebb6af83b7817de5/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | arbitrum | n/a | [`0xad20601c7a3212c7bbf2acdfedbad99d803bc7f5`](./contracts/arbitrum-42161/0xad20601c7a3212c7bbf2acdfedbad99d803bc7f5/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | blast | n/a | [`0x98c6616f1cc0d3e938a16200830dd55663dd7dd3`](./contracts/blast-81457/0x98c6616f1cc0d3e938a16200830dd55663dd7dd3/) | ⚠️ Unaudited |
| UpgradeableBeacon | registry | blast | n/a | [`0xe1b2feede3ffe7e63a89a669a08688951c94611e`](./contracts/blast-81457/0xe1b2feede3ffe7e63a89a669a08688951c94611e/) | ⚠️ Unaudited |
| UsdPlusMinter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x22ab2d1b21f4074403020c9d37080dbe07de728b`](./contracts/ethereum-1/0x22ab2d1b21f4074403020c9d37080dbe07de728b/); ethereum `0x6594b90d5c5e4f311613367d4274db687547a53c` | ⚠️ Unaudited |
| UsdPlusMinter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x45854301aa075c62976c90cf6802a72dd4bda48a`](./contracts/ethereum-1/0x45854301aa075c62976c90cf6802a72dd4bda48a/); ethereum `0x6aa1bda7e764bc62589e64f371a4022b80b3c72a` | ⚠️ Unaudited |
| UsdPlusMinter | unknown | base | n/a | 2 deployments: base [`0x736c9c0669ab472cbcda632e9ab8d5834cac367b`](./contracts/base-8453/0x736c9c0669ab472cbcda632e9ab8d5834cac367b/); base `0xf83042d4bbb1cb9c9e1042da4654585c60f6ffdc` | ⚠️ Unaudited |
| UsdPlusMinter | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0d44bfda6958f662a5a112190dd8cbab1a5bdb64`](./contracts/arbitrum-42161/0x0d44bfda6958f662a5a112190dd8cbab1a5bdb64/); arbitrum `0xc550998d14eb90321311271caae393da2077b3b0` | ⚠️ Unaudited |
| UsdPlusMinter | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x223e3345698d7027e9fd85064c5aaac33e2577d6`](./contracts/arbitrum-42161/0x223e3345698d7027e9fd85064c5aaac33e2577d6/); arbitrum `0x77f98a9c7eb5929322f0daad1ab1f854267dec2e` | ⚠️ Unaudited |
| UsdPlusRedeemer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x332a3e403ff0d03076fdce768dafe032b7504f25`](./contracts/ethereum-1/0x332a3e403ff0d03076fdce768dafe032b7504f25/); ethereum `0x6d55e512f3e80b0f6d84cd2988d72cbaa3aec0ae` | ⚠️ Unaudited |
| UsdPlusRedeemer | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xe9477d7c207ec0004fc7d6221dbb6a29b8d18083`](./contracts/arbitrum-42161/0xe9477d7c207ec0004fc7d6221dbb6a29b8d18083/); arbitrum `0xf2c65ae853a14cb8a7bd4945990a7e17a5a50802` | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x232ca17c44185ba9099417cd500d2e5e96f2b839`](./contracts/ethereum-1/0x232ca17c44185ba9099417cd500d2e5e96f2b839/); base `0x7148617fcd0258202747f2f65b4fe561dc0e6b40`; arbitrum `0x991cb35fc5f8328cd385c6fd4e4c8fce6b57e471`; blast `0x6d55e512f3e80b0f6d84cd2988d72cbaa3aec0ae` | ⚠️ Unaudited |
| WrappedDShare | unknown | arbitrum | n/a | 6 deployments: ethereum `0x43e1650bf09b610787f7c18865e35835b9b466af`; base `0x7e599c828c42758be0a6336dc32334b8afb6a8fc`; arbitrum [`0x15616a647d6c5dd82132ada8970179fffc2c956c`](./contracts/arbitrum-42161/0x15616a647d6c5dd82132ada8970179fffc2c956c/); arbitrum `0x7eedcf2cf5fe7cc2b26a7750def14b0043a340f0`; arbitrum `0x855c8395322fbaae03f5d2427bebf2920da43517`; blast `0x63914c467ea6c16ea85514dbc32b9ee2ae179e8e` | ⚠️ Unaudited |
| WrappedUsdPlus | unknown | ethereum | n/a | 2 deployments: ethereum [`0x14117088cbd2e0fb58fc9ab9818efd40c56980f8`](./contracts/ethereum-1/0x14117088cbd2e0fb58fc9ab9818efd40c56980f8/); ethereum `0xff525855266a1c82a0e55f0ec75a7238b82a1bd5` | ⚠️ Unaudited |
| WrappedUsdPlus | unknown | base | n/a | 2 deployments: base [`0xb47b9a05fc45eec35d9ecbb34aee16d8ac9d0d86`](./contracts/base-8453/0xb47b9a05fc45eec35d9ecbb34aee16d8ac9d0d86/); base `0xe5295e342dca19b113248ec17439b9343c5a877c` | ⚠️ Unaudited |
| WrappedUsdPlus | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x9082e69d2fd257561a542aaca2221054fb3b5537`](./contracts/arbitrum-42161/0x9082e69d2fd257561a542aaca2221054fb3b5537/); arbitrum `0xde4fd05b17655f1fbae2e0e938299835aa4c4214` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (28)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x88b92c99098f7a817df0392294b96f8ab284a701) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x8705e50f6cf4d3c5e153afe4c5e725f6032fc10e`; arbitrum `0x88b92c99098f7a817df0392294b96f8ab284a701` | ❓ Unverified |
| Proxy (impl: 0xf83042d4bbb1cb9c9e1042da4654585c60f6ffdc) | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x1f7802a2f89b8800fbb8381e3046fea930978c31`; arbitrum `0xf83042d4bbb1cb9c9e1042da4654585c60f6ffdc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x036c44f2df0d7cfa7624b002bd7ef486449152af` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x03d0d05caab587bdb96e3e3265209e2dc03184bd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3ad63b3c0ea6d7a093ff98fde040baddc389ecdc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d3347dcf6f989569a5e62367e233cc9ef6dda0a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x91b7150c517077a701e440a5a973e772a91cc28e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb6a8374b7c84925819aa649e47954d6e263b519f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x14297be295ab922458277be046e89f73382bdf8e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5023c1a124e827ffc34742f095b33d553f3b19bf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc3c70bf8b20ba125142d83bc2aad967f2d4a0c9e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x10448db0dcfddd75dd3e48ef2c116d4d2f11a66f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x25135fe57ca44ed1f7a5912cc770707136b97dc7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x4062d9cbf85da2913880a3a5641cf05e85774f27`; arbitrum `0x43e1650bf09b610787f7c18865e35835b9b466af` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4530b1adf00bfc4d15dc17a6bddd873bb802f3a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x45854301aa075c62976c90cf6802a72dd4bda48a`; arbitrum `0x6aa1bda7e764bc62589e64f371a4022b80b3c72a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4d8274f6dad8b2da99b4bcd5b12a3e446eeba65e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x58b1d890f38722dca6650f009578606e111d5c80`; arbitrum `0xf03103bb80199ec455a7dcf5875d59fc71a11874` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x5ccb5482dc15aadd36d6c02c0d44ce0e3e7e6835`; arbitrum `0x8e72825e94c09a2d8412e1f5c7e105338fa1eed1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x63914c467ea6c16ea85514dbc32b9ee2ae179e8e`; arbitrum `0xe1b2feede3ffe7e63a89a669a08688951c94611e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x6bffd2fbd74fcbeb8ce8aa038a58165569b2a0af`; arbitrum `0x736c9c0669ab472cbcda632e9ab8d5834cac367b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x7e599c828c42758be0a6336dc32334b8afb6a8fc`; arbitrum `0x9b3e9d3fb6849c9f0edcb2a9ebb6af83b7817de5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xec3b79d771b47a0f5db925d7faf793605f5560ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xecabf4d8fdbb45eabed0daf25fd690eaaa4d9a9e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x04f5222b55938f1598ef0cf8436e52ac30a95f6f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3d80373eedcc02744dfc62272993ee4c991419d7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x83f6690845316fdba3f60f40b457d132cb374472` | ❓ Unverified |
| WrappedDShare | unknown | hyperliquid | n/a | `0x95687557c66bc799a850ba7037673528238ae763` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit_Sherlock_230811.pdf](https://assets.dinari.com/audits/Audit_Sherlock_230811.pdf) | Sherlock | Contest | 2023-08 | stale | Direct | contract_name | 3 | n/a |
| [Audit_Hacken_231212.pdf](https://assets.dinari.com/audits/Audit_Hacken_231212.pdf) | Hacken | Audit | 2023-12 | stale | Direct | contract_name | 2 | n/a |
| [Audit_Pashov_241224.pdf](https://assets.dinari.com/audits/Audit_Pashov_241224.pdf) | Pashov Audit Group | Audit | 2024-12 | aging | Direct | contract_name | 1 | n/a |
| [Audit_Hacken_241230.pdf](https://assets.dinari.com/audits/Audit_Hacken_241230.pdf) | Hacken | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xc4b7b5740a72ee2d823c088e1d1455a4b10d8f60`](./contracts/arbitrum-42161/0xc4b7b5740a72ee2d823c088e1d1455a4b10d8f60/) | BuyOrderIssuer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x4ec42a1709e6245ff0bdd5ba605ba7147a165a67`](./contracts/arbitrum-42161/0x4ec42a1709e6245ff0bdd5ba605ba7147a165a67/) | BuyProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x640d8f1cc10737b48dfcb52f7fc2bbaf17bcd064`](./contracts/arbitrum-42161/0x640d8f1cc10737b48dfcb52f7fc2bbaf17bcd064/) | BuyUnlockedProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9108270b3537933a9c68e87dc129a43433d49a8c`](./contracts/arbitrum-42161/0x9108270b3537933a9c68e87dc129a43433d49a8c/) | BuyUnlockedProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x332a3e403ff0d03076fdce768dafe032b7504f25`](./contracts/blast-81457/0x332a3e403ff0d03076fdce768dafe032b7504f25/) | BuyUnlockedProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4f6755260a6208b59440cb01efde04beec76c3c2`](./contracts/ethereum-1/0x4f6755260a6208b59440cb01efde04beec76c3c2/) | CCIPWaypoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x4528ddb6df3b726ca25e1c262cf5548627012955`](./contracts/base-8453/0x4528ddb6df3b726ca25e1c262cf5548627012955/) | CCIPWaypoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x3a34b7fa417b51af57936f72b8234c824f816907`](./contracts/arbitrum-42161/0x3a34b7fa417b51af57936f72b8234c824f816907/) | CCIPWaypoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4062d9cbf85da2913880a3a5641cf05e85774f27`](./contracts/ethereum-1/0x4062d9cbf85da2913880a3a5641cf05e85774f27/) | DShare | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6aa1bda7e764bc62589e64f371a4022b80b3c72a`](./contracts/base-8453/0x6aa1bda7e764bc62589e64f371a4022b80b3c72a/) | DShare | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x15436013850211acf89b656f34b426fdae01dacb`](./contracts/arbitrum-42161/0x15436013850211acf89b656f34b426fdae01dacb/) | DShare | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x036c44f2df0d7cfa7624b002bd7ef486449152af`](./contracts/blast-81457/0x036c44f2df0d7cfa7624b002bd7ef486449152af/) | DShare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x332a3e403ff0d03076fdce768dafe032b7504f25`](./contracts/base-8453/0x332a3e403ff0d03076fdce768dafe032b7504f25/) | DShareFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08d7b1e920780dc6e99da11de765b5c4067e2290`](./contracts/ethereum-1/0x08d7b1e920780dc6e99da11de765b5c4067e2290/) | Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x14d3498e4816c2b8f017677356dca051e28a33c8`](./contracts/arbitrum-42161/0x14d3498e4816c2b8f017677356dca051e28a33c8/) | Forwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x3aa37e6a6852a483b7f85dc193c4723cf6f84885`](./contracts/blast-81457/0x3aa37e6a6852a483b7f85dc193c4723cf6f84885/) | ForwarderPyth | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x462efb6a9519f93d9613ad613842e02417f69c84`](./contracts/ethereum-1/0x462efb6a9519f93d9613ad613842e02417f69c84/) | FulfillmentRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x10448db0dcfddd75dd3e48ef2c116d4d2f11a66f`](./contracts/ethereum-1/0x10448db0dcfddd75dd3e48ef2c116d4d2f11a66f/) | OrderProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0a03632a634124ee3bba0e9e58f1a48fcf806242`](./contracts/arbitrum-42161/0x0a03632a634124ee3bba0e9e58f1a48fcf806242/) | OrderProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x14d5ba979b3faf24823c80bb3be228b543300deb`](./contracts/arbitrum-42161/0x14d5ba979b3faf24823c80bb3be228b543300deb/) | OrderProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x7148617fcd0258202747f2f65b4fe561dc0e6b40`](./contracts/blast-81457/0x7148617fcd0258202747f2f65b4fe561dc0e6b40/) | OrderProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x9f2c338186cca45d6ae668ff5a37459860849863`](./contracts/blast-81457/0x9f2c338186cca45d6ae668ff5a37459860849863/) | OrderProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x70f2bd91390df0a0662f7ba322d8c166e89e4be3`](./contracts/arbitrum-42161/0x70f2bd91390df0a0662f7ba322d8c166e89e4be3/) | SellProcessor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe1b2feede3ffe7e63a89a669a08688951c94611e`](./contracts/ethereum-1/0xe1b2feede3ffe7e63a89a669a08688951c94611e/) | StakedUsdPlus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ade36703451f976964a0995c77ccf6352651e81`](./contracts/ethereum-1/0x4ade36703451f976964a0995c77ccf6352651e81/) | StakeRaise | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf1c32b758a6495aa6060d88e70da697c9f80d081`](./contracts/ethereum-1/0xf1c32b758a6495aa6060d88e70da697c9f80d081/) | StakeRaise | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x57591e07eab6c2b3bee529586253217584316b2b`](./contracts/arbitrum-42161/0x57591e07eab6c2b3bee529586253217584316b2b/) | TokenLockCheck | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x22ab2d1b21f4074403020c9d37080dbe07de728b`](./contracts/ethereum-1/0x22ab2d1b21f4074403020c9d37080dbe07de728b/) | UsdPlusMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x45854301aa075c62976c90cf6802a72dd4bda48a`](./contracts/ethereum-1/0x45854301aa075c62976c90cf6802a72dd4bda48a/) | UsdPlusMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x736c9c0669ab472cbcda632e9ab8d5834cac367b`](./contracts/base-8453/0x736c9c0669ab472cbcda632e9ab8d5834cac367b/) | UsdPlusMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0d44bfda6958f662a5a112190dd8cbab1a5bdb64`](./contracts/arbitrum-42161/0x0d44bfda6958f662a5a112190dd8cbab1a5bdb64/) | UsdPlusMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x223e3345698d7027e9fd85064c5aaac33e2577d6`](./contracts/arbitrum-42161/0x223e3345698d7027e9fd85064c5aaac33e2577d6/) | UsdPlusMinter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x332a3e403ff0d03076fdce768dafe032b7504f25`](./contracts/ethereum-1/0x332a3e403ff0d03076fdce768dafe032b7504f25/) | UsdPlusRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe9477d7c207ec0004fc7d6221dbb6a29b8d18083`](./contracts/arbitrum-42161/0xe9477d7c207ec0004fc7d6221dbb6a29b8d18083/) | UsdPlusRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x232ca17c44185ba9099417cd500d2e5e96f2b839`](./contracts/ethereum-1/0x232ca17c44185ba9099417cd500d2e5e96f2b839/) | Vault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x15616a647d6c5dd82132ada8970179fffc2c956c`](./contracts/arbitrum-42161/0x15616a647d6c5dd82132ada8970179fffc2c956c/) | WrappedDShare | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x14117088cbd2e0fb58fc9ab9818efd40c56980f8`](./contracts/ethereum-1/0x14117088cbd2e0fb58fc9ab9818efd40c56980f8/) | WrappedUsdPlus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xb47b9a05fc45eec35d9ecbb34aee16d8ac9d0d86`](./contracts/base-8453/0xb47b9a05fc45eec35d9ecbb34aee16d8ac9d0d86/) | WrappedUsdPlus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x9082e69d2fd257561a542aaca2221054fb3b5537`](./contracts/arbitrum-42161/0x9082e69d2fd257561a542aaca2221054fb3b5537/) | WrappedUsdPlus | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 44 |
| upstream | 0 |
| standard_library | 19 |
| needs_review | 31 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=6

Zero-match audit list:

- [2052] Audit_Hacken_241230.pdf

Fork inheritance lineage and inherited audits are included when available.
