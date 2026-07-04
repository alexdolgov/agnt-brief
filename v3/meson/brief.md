# Agentic Audit Brief: Meson

## Project Overview

- Project: Meson (`meson`)
- Website: [https://meson.fi/home](https://meson.fi/home)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:23.411Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: arbitrum, base, blast, bsc, ethereum, linea, merlin, optimism, polygon
- Contract surface: 368 unique implementations (460 raw deployments)
- DeFi Llama TVL: $556,675.25
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Cross Chain Bridge. Structurally: 15 project-authored contract(s) across 6 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 3 common project-authored base contract(s) (mesonconfig, blastbase, peripheryimmutablestate). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 464; live-surface contracts included: 459 (112 live, 347 unknown).
- Excluded by liveness: 5 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/48 (4.2%)
- Deployed-live implementations: 48 of 368 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/48
- Verified + Unaudited implementations: 46
- Verified by bytecode match: 0
- Unverified implementations: 320
- Unique implementations: 368
- Raw deployments: 460
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 4.2% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SSLab at Georgia Institute of Technology | Tier 2 | 2 | 4.2% | 2022-02 |
| Trail of Bits | Tier 1 | 2 | 4.2% | 2022-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UpgradableMeson | unknown | bsc | n/a | 2 deployments: bsc [`0x25ab3e...6948d3`](./contracts/bsc-56/0x25ab3efd52e6470681ce037cd546dc60726948d3/); bsc `0xcabf78...6194ba` | ✅ Audited |
| UpgradableMeson | unknown | base | n/a | 2 deployments: base [`0x036505...5f6241`](./contracts/base-8453/0x03650533d2a35847c007f25bc630f468905f6241/); base `0x25ab3e...6948d3` | ✅ Audited |

### ⚠️ Verified + Unaudited (46)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AtomicLockContract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x036505...5f6241`](./contracts/ethereum-1/0x03650533d2a35847c007f25bc630f468905f6241/); ethereum `0x880045...0bced5` | ⚠️ Unaudited |
| AtomicLockContract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1a3be6...f62d4a`](./contracts/ethereum-1/0x1a3be6cd0ac1de19d3358dc6ef00a99eabf62d4a/); ethereum `0x311165...c2c576` | ⚠️ Unaudited |
| AtomicLockContract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1b5668...d0615f`](./contracts/ethereum-1/0x1b5668ca8edfc8af5dcb9de014b4b08ed5d0615f/); ethereum `0x75ab2a...9ce10e` | ⚠️ Unaudited |
| AtomicLockContract | unknown | bsc | n/a | 2 deployments: bsc [`0x645c0a...8d7c72`](./contracts/bsc-56/0x645c0a2aec74f4aad54783f27d241ac75b8d7c72/); bsc `0xba43f3...46f85c` | ⚠️ Unaudited |
| AtomicLockContract | unknown | bsc | n/a | 2 deployments: bsc [`0x9d5917...bb57ff`](./contracts/bsc-56/0x9d59177c29ae3e6eb3e1d9c4a0e563f42bbb57ff/); bsc `0xf8aed4...8b13ad` | ⚠️ Unaudited |
| AtomicLockContract | unknown | polygon | n/a | 2 deployments: polygon [`0x2a40e7...d9e17e`](./contracts/polygon-137/0x2a40e79d4636d1e2672b4b42abdad3befcd9e17e/); polygon `0x7ab202...aafb41` | ⚠️ Unaudited |
| AtomicLockContract | unknown | arbitrum | n/a | 22 deployments: ethereum `0x5dcf78...52286b`; ethereum `0x617875...00b50c`; ethereum `0x645c0a...8d7c72`; ethereum `0x7ab202...aafb41`; ethereum `0x902de7...c9cc95`; ethereum `0xa8176b...5dd767`; ethereum `0xafcdfd...4ea86b`; ethereum `0xb14655...be7dfa`; ethereum `0xce901f...37e31d`; ethereum `0xe2e723...61c8ab`; bsc `0x94a307...147567`; bsc `0xb14655...be7dfa`; polygon `0xb4e1a2...89b71b`; arbitrum [`0x0a5e11...22a0c4`](./contracts/arbitrum-42161/0x0a5e1199935836f22360813a14bc8ca7be22a0c4/); arbitrum `0x1a3be6...f62d4a`; arbitrum `0x2d9071...8fceb7`; arbitrum `0x5dcf78...52286b`; arbitrum `0x645c0a...8d7c72`; arbitrum `0x75ab2a...9ce10e`; arbitrum `0x94a307...147567`; arbitrum `0xca6ccc...600889`; arbitrum `0xe70e9a...cd30c2` | ⚠️ Unaudited |
| AtomicLockContract | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x90a9c0...7d0170`](./contracts/arbitrum-42161/0x90a9c0a1545dcc585c94d602ac64ed378f7d0170/); arbitrum `0xba43f3...46f85c` | ⚠️ Unaudited |
| AtomicMintContract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x17e170...a7cce2`](./contracts/ethereum-1/0x17e1709cdc1f253013a1b8b75b75fa00efa7cce2/); ethereum `0x4fa09f...5ac822` | ⚠️ Unaudited |
| AtomicMintContract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x18bc68...77e773`](./contracts/ethereum-1/0x18bc68fc6037bf46c197f4ea44e0c0fb5177e773/); ethereum `0xcbabb5...c5675a` | ⚠️ Unaudited |
| AtomicMintContract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2a8e8d...782b2e`](./contracts/ethereum-1/0x2a8e8d5bd49979de583ab1ad2a81b35ec0782b2e/); ethereum `0x98e7e5...2f7d9a` | ⚠️ Unaudited |
| AtomicMintContract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x90a9c0...7d0170`](./contracts/ethereum-1/0x90a9c0a1545dcc585c94d602ac64ed378f7d0170/); ethereum `0xc9cf72...2c7ed7` | ⚠️ Unaudited |
| AtomicMintContract | unknown | optimism | n/a | 2 deployments: optimism [`0x2a40e7...d9e17e`](./contracts/optimism-10/0x2a40e79d4636d1e2672b4b42abdad3befcd9e17e/); optimism `0x960e22...07ed3d` | ⚠️ Unaudited |
| AtomicMintContract | unknown | optimism | n/a | 10 deployments: ethereum `0x5e7870...339ed2`; ethereum `0x6c029d...78efe9`; ethereum `0x8a5bc7...c9b9a8`; optimism [`0x2c2994...781a0b`](./contracts/optimism-10/0x2c29943bba7a7c2108fe2abe5d459fc5f7781a0b/); arbitrum `0xeeaca9...05cbfa`; linea `0x6ba342...656a83`; linea `0x781d50...0e2c7c`; linea `0x9c0067...56cf3c`; linea `0xa55097...308bc8`; linea `0xfb7691...7d0484` | ⚠️ Unaudited |
| AtomicMintContract | unknown | bsc | n/a | 2 deployments: bsc [`0x09d334...bd0533`](./contracts/bsc-56/0x09d334c6197f52308efc53e3d6726151c6bd0533/); bsc `0x75ab2a...9ce10e` | ⚠️ Unaudited |
| AtomicMintContract | unknown | bsc | n/a | 2 deployments: bsc [`0x1bdea7...a94180`](./contracts/bsc-56/0x1bdea7d0ccd01c25754345c1109556e4aca94180/); bsc `0xfdf618...da322e` | ⚠️ Unaudited |
| AtomicMintContract | unknown | bsc | n/a | 2 deployments: bsc [`0x2c2994...781a0b`](./contracts/bsc-56/0x2c29943bba7a7c2108fe2abe5d459fc5f7781a0b/); bsc `0x960e22...07ed3d` | ⚠️ Unaudited |
| AtomicMintContract | unknown | bsc | n/a | 2 deployments: bsc [`0xb00b19...c914c5`](./contracts/bsc-56/0xb00b19ec5a8b1a80b2501fefc7266009fec914c5/); bsc `0xe5f526...61d1c0` | ⚠️ Unaudited |
| AtomicMintContract | unknown | base | n/a | 2 deployments: base [`0x395c38...4115aa`](./contracts/base-8453/0x395c38f055522c7eebd85e77dc59508a0e4115aa/); base `0xfb7691...7d0484` | ⚠️ Unaudited |
| AtomicMintContract | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1a9638...b5c0c3`](./contracts/arbitrum-42161/0x1a96381ee92f015f28c5202e007b5a556db5c0c3/); arbitrum `0x8a5bc7...c9b9a8` | ⚠️ Unaudited |
| AtomicMintContract | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x331ebd...7c7fea`](./contracts/arbitrum-42161/0x331ebdce4d2376be413fca81390b1df4c07c7fea/); arbitrum `0xd477bf...d478ad` | ⚠️ Unaudited |
| AtomicMintContract | unknown | linea | n/a | 2 deployments: linea [`0x308092...5b0345`](./contracts/linea-59144/0x3080921c8aefbf1f97a7b3b0acad9e00305b0345/); linea `0x5947b6...95c8a6` | ⚠️ Unaudited |
| AtomicMintContract | unknown | linea | n/a | 2 deployments: linea [`0x311165...c2c576`](./contracts/linea-59144/0x3111653db0e7094b111b8e435df9193b62c2c576/); linea `0xeee21c...11c487` | ⚠️ Unaudited |
| AtomicMintContract | unknown | linea | n/a | 2 deployments: linea [`0x523cc5...902831`](./contracts/linea-59144/0x523cc5f9c2c2348a0e2fb4b7efca5d0a07902831/); linea `0x7770fc...bc8445` | ⚠️ Unaudited |
| AtomicMintContract | unknown | linea | n/a | 2 deployments: linea [`0x5b36fb...8bf1c8`](./contracts/linea-59144/0x5b36fb69aedcfbceb7d0da83876c1da83a8bf1c8/); linea `0x9f40e1...537184` | ⚠️ Unaudited |
| AtomicMintContract | unknown | linea | n/a | 2 deployments: linea [`0x880045...0bced5`](./contracts/linea-59144/0x8800457f79693d843fde04f7ec0a61c1250bced5/); linea `0xdd3d86...3248eb` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x389b8b...bb2ad1`](./contracts/ethereum-1/0x389b8bccf541c4f130239ac78fa693642bbb2ad1/); ethereum `0xa97fe3...2d02ba` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa297a7...94d850`](./contracts/ethereum-1/0xa297a74935038600737665cc6b259dbc3094d850/); ethereum `0xd1f5af...ec850d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0xa2bf58...51ef80`](./contracts/ethereum-1/0xa2bf58cbaeffc76f8433b7b8492010ac8a51ef80/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa36990...8d0cf8`](./contracts/ethereum-1/0xa3699002ba65f9ea7296a8344a9076dcc78d0cf8/); ethereum `0xeeaca9...05cbfa` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd6572c...959600`](./contracts/ethereum-1/0xd6572c7cd671ecf75d920adcd200b00343959600/); ethereum `0xe38ed2...1ffe7b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x09db94...708024`](./contracts/arbitrum-42161/0x09db9470b8440959b0aa47d7007386c5b7708024/); arbitrum `0x6c029d...78efe9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x33ccc2...9063d1`](./contracts/arbitrum-42161/0x33ccc2652682949d7cf3a6a43ce4611a229063d1/); arbitrum `0xd4f474...ae40b6` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x83ba82...92af51`](./contracts/arbitrum-42161/0x83ba824d0fc681722c91e93b9a410e0a0592af51/); arbitrum `0xbb3e08...3fd672` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x9ea732...498596`](./contracts/arbitrum-42161/0x9ea7327594e82cb3ae4b49dbc1531bb2a2498596/); arbitrum `0xd5ae4e...063f28` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x9f08f1...739d98`](./contracts/arbitrum-42161/0x9f08f150c5fe1cd089705e8fe58ab2c6f0739d98/); arbitrum `0xc178ae...92f032` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xc882d4...6e3782`](./contracts/arbitrum-42161/0xc882d499f1586f57f8af9c44908da21e6c6e3782/); arbitrum `0xfdf4d9...71d003` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | [`0xd3d62e...c7e41a`](./contracts/arbitrum-42161/0xd3d62e118e820ffd24a43f6a303c8187f6c7e41a/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | linea | n/a | 2 deployments: linea [`0x2a8e8d...782b2e`](./contracts/linea-59144/0x2a8e8d5bd49979de583ab1ad2a81b35ec0782b2e/); linea `0x98e7e5...2f7d9a` | ⚠️ Unaudited |
| FixSupplyToken | token | blast | n/a | [`0x01593b...a48c5f`](./contracts/blast-81457/0x01593b8aaadc5238f2f5c8597bc1402eb7a48c5f/) | ⚠️ Unaudited |
| ProxyToMeson | proxy | ethereum | n/a | 2 deployments: ethereum [`0x25ab3e...6948d3`](./contracts/ethereum-1/0x25ab3efd52e6470681ce037cd546dc60726948d3/); ethereum `0x3c7747...c5d906` | ⚠️ Unaudited |
| ProxyToMeson | proxy | optimism | n/a | 2 deployments: optimism [`0x25ab3e...6948d3`](./contracts/optimism-10/0x25ab3efd52e6470681ce037cd546dc60726948d3/); optimism `0xe70e9a...cd30c2` | ⚠️ Unaudited |
| ProxyToMeson | unknown | bsc | n/a | 2 deployments: bsc [`0x5e3067...3d388d`](./contracts/bsc-56/0x5e306700c61d90e7dee260f01572e4ab803d388d/); bsc `0x652e24...ec594d` | ⚠️ Unaudited |
| ProxyToMeson | unknown | bsc | n/a | 2 deployments: bsc [`0x6ba342...656a83`](./contracts/bsc-56/0x6ba34232f35c15bd8e858de47303234f60656a83/); bsc `0xdd3d86...3248eb` | ⚠️ Unaudited |
| ProxyToMeson | proxy | arbitrum | n/a | 2 deployments: arbitrum [`0x25ab3e...6948d3`](./contracts/arbitrum-42161/0x25ab3efd52e6470681ce037cd546dc60726948d3/); arbitrum `0xa96e19...6fafc0` | ⚠️ Unaudited |
| UpgradableMeson | unknown | bsc | n/a | 10 deployments: ethereum `0x2fb7ce...6e0303`; ethereum `0x370634...a431cf`; optimism `0x1a3be6...f62d4a`; optimism `0x2ae2ec...7cbe24`; bsc [`0x1522de...3f5aec`](./contracts/bsc-56/0x1522de0005fddfafbfe1843b40bc2be58b3f5aec/); bsc `0xd1f5af...ec850d`; polygon `0x1b5668...d0615f`; polygon `0x5dcf78...52286b`; arbitrum `0x222bc4...e4bb40`; arbitrum `0xed5e81...a9a670` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (320)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x2d90717e5400a83845c1f4f9d121492d328fceb7) | proxy | polygon | n/a | 2 deployments: polygon `0x25ab3e...6948d3`; polygon `0x2d9071...8fceb7` | ❓ Unverified |
| Proxy (impl: 0xa7a9f30f9d2c4a79ff60179e02236b82d0a176b7) | proxy | linea | n/a | 2 deployments: linea `0x25ab3e...6948d3`; linea `0xa7a9f3...a176b7` | ❓ Unverified |
| Proxy (impl: 0xa7a9f30f9d2c4a79ff60179e02236b82d0a176b7) | proxy | blast | n/a | 2 deployments: blast `0x25ab3e...6948d3`; blast `0xa7a9f3...a176b7` | ❓ Unverified |
| Proxy (impl: 0xdd3d867db5ca13e5f055dd4484648fdddf3248eb) | unknown | polygon | n/a | 2 deployments: polygon `0x53be31...1d12b7`; polygon `0xdd3d86...3248eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14eda5...a660db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c42d3...7925df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x328330...43cbb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x331ebd...7c7fea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4226e1...899cd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4af60d...980931` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d946a...4f902f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x529c29...e79c67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53be31...1d12b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59b38e...c79ade` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x652e24...ec594d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6bb219...3beacf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75a921...25de34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x781d50...0e2c7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ee586...3f2319` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ef8f2...54550a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ee2d2...b7fe87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95dd0d...6776bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1824c...85f347` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6e02b...05b189` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa84442...2b8af7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac937a...11c0ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcabf78...6194ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7fb36...25f255` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeddb37...38beff` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x036505...5f6241` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x09d334...bd0533` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x14eda5...a660db` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1a4e3f...c34a30` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2c42d3...7925df` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x308092...5b0345` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x328330...43cbb5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x395c38...4115aa` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4af60d...980931` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4df5f7...f9afd3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x529c29...e79c67` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x53be31...1d12b7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5947b6...95c8a6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x59b38e...c79ade` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5b00e2...59feae` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x645c0a...8d7c72` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x652e24...ec594d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6bb219...3beacf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x781d50...0e2c7c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7ee586...3f2319` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7ef8f2...54550a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x98e7e5...2f7d9a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9f40e1...537184` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa1937f...4d48e1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa8176b...5dd767` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa84442...2b8af7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xac937a...11c0ca` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xce901f...37e31d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xdd3d86...3248eb` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe7fb36...25f255` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xeee21c...11c487` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0fed05...86c91b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x188c41...665c75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x19727d...741caf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a9638...b5c0c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2031fb...ebc648` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x21c9e0...6ee4b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x308092...5b0345` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x311165...c2c576` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x331ebd...7c7fea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35094a...b1c447` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3521a4...81a1b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36ee80...c8862a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x496217...6f1997` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d946a...4f902f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x671159...5d2092` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x685ffe...fa3bcc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7770fc...bc8445` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ab202...aafb41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f4d86...91c5b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x880045...0bced5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x962b24...e9683f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98b35a...b0b822` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98e7e5...2f7d9a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9c0067...56cf3c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9f40e1...537184` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa1824c...85f347` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa18cd3...04e046` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa1937f...4d48e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa55097...308bc8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa5de26...e8252e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa6b374...45d33b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa6e02b...05b189` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa7a9f3...a176b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa8176b...5dd767` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb11b80...a48517` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4e1a2...89b71b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb4a26...de58ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6d128...0117bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd955a8...c5139c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe9cdb9...8cc314` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea23c7...923411` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf96fea...ae9a0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb7691...7d0484` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x036505...5f6241` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x14eda5...a660db` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2c42d3...7925df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x328330...43cbb5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x395c38...4115aa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4af60d...980931` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4df5f7...f9afd3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5947b6...95c8a6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x59b38e...c79ade` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5b00e2...59feae` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5b36fb...8bf1c8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x603800...e35ba4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x652e24...ec594d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6bb219...3beacf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7770fc...bc8445` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x781d50...0e2c7c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ee586...3f2319` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ef8f2...54550a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa1937f...4d48e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa8176b...5dd767` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa84442...2b8af7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xac937a...11c0ca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xafcdfd...4ea86b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc6d128...0117bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe7fb36...25f255` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeee21c...11c487` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | 8 deployments: merlin `0x25ab3e...6948d3`; merlin `0x480e15...caf78d`; merlin `0x4b21b9...1c7c6b`; merlin `0x9bd60d...1bddcd`; merlin `0xa79374...32b758`; merlin `0xb5d8b1...24e2cf`; merlin `0xc21d5d...a4ad2b`; merlin `0xd55342...11038e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x328330...43cbb5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4df5f7...f9afd3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x59b38e...c79ade` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5b36fb...8bf1c8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7dcdb0...91f41d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7ef8f2...54550a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7f4d86...91c5b3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x98e7e5...2f7d9a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f40e1...537184` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa84442...2b8af7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac937a...11c0ca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc6d128...0117bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0fed05...86c91b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x192d12...4fa1ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2df513...0a84a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2fb7ce...6e0303` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x308092...5b0345` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x328330...43cbb5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x370634...a431cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x395c38...4115aa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4af60d...980931` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4c8f7c...c50541` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x523cc5...902831` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x529c29...e79c67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x53be31...1d12b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5947b6...95c8a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x59b38e...c79ade` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5b00e2...59feae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x617875...00b50c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x671159...5d2092` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ba342...656a83` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7641f2...b9977a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x787e47...842c29` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7ee586...3f2319` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f4d86...91c5b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x880045...0bced5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8beb21...4d9843` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x98e7e5...2f7d9a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9c0067...56cf3c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f40e1...537184` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa297a7...94d850` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa36990...8d0cf8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa55097...308bc8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa6ae63...8c0c9d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa8176b...5dd767` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa84442...2b8af7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac7893...f9eee8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac937a...11c0ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4e1a2...89b71b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbe9f03...4c222e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcbabb5...c5675a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xccf51e...7f625e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd1f5af...ec850d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd7e30f...1e69d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd955a8...c5139c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe55b86...bc7dd3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7fb36...25f255` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xecbcef...7256ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeddb37...38beff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf9b5eb...9b23cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfe16ff...9bc312` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2031fb...ebc648` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x496217...6f1997` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x53be31...1d12b7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x645c0a...8d7c72` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x701ce6...2e3452` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7dcdb0...91f41d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xce901f...37e31d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe9cdb9...8cc314` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x00a348...0276dc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x01a4c7...75c74f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x032459...f2952f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x042c13...7694d4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x05956a...82c340` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x090787...833bd7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x10025a...fc4026` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x10e00e...e09fe6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x142cde...e0748e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x18aa46...db3826` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1934da...8cd9ea` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1c7ee1...115f55` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1e3b2d...6c2782` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1ef53c...9de1a9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1f4d8c...d4b648` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2140c5...5467a2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x21b102...2f7945` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x21f758...64caf8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x28ea26...6a8fd3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x29d1f2...4ffce8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2b8b05...4179a0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2f1044...a7b76f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x31ddc8...18f8e5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x328330...43cbb5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x37dde1...f16692` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x37e33b...883a2a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x37e4b0...3ec901` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x386d7b...bc9e68` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x39bf01...929033` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x41063e...4bd6ac` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x42c542...d01399` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x42d1cd...5e67f8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x43e09d...12d24b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4caee1...0c7c5d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4dd10e...374ab6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x529c29...e79c67` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5506fa...876967` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x58ef82...738c37` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5ca3d8...1201a8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5d9fe2...023380` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6064b5...7939c4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6473c9...13a564` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x648aa4...edc5cb` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6493f4...220054` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x662267...8a819b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x66a4c2...a5e217` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x68f49a...b871a6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6ba43e...bfc59b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6c8019...fe7c46` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x717aa1...fcf396` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x760807...f3b26d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x76ccda...688cf6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7765a7...d272b1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7db219...de42a8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7f4701...8c3b0f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x84f7df...ed6b86` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x859997...40a923` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8632a0...b6f709` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x87319e...ec1c48` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x87d82c...ad704c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x88332d...438885` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x88c846...dc8749` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x895df5...dd87c4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8ae7ba...d4d33b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8e26b6...39fdb4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8f833d...c4499d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x90c1fc...0c0424` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x91f205...f83380` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x93e069...8fd62e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9430d0...dcd55e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x946d5d...6598e3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x97bd39...505c07` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9c6c26...e20dc7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa00571...6e7e80` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa1d4ab...3fab8f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa5f574...555249` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa7a567...bd23c5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xabcbe4...6ec90f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xad7482...906a55` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb2f67e...9ed4b3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb59547...a1c0a5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb81b69...c4d7ad` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb9f7da...1aa2c2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbb731a...37e6d4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbc166b...a656ec` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbd9215...bf9b85` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc1d22e...91d885` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc3686c...b97803` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc37b38...a96479` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc8cbb7...37ebfc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc8e6bc...cb5bdb` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc9bcbf...790369` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xca584c...702a46` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xcb4aa4...07e03f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xcc6a91...89771e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xccd7fe...45b7ce` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xcd16b2...5481ec` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xce625a...06fd1c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd4421f...d6c4d4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd4c4ae...f33905` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd4d589...c95512` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd70278...d72542` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd7ecaf...e8d515` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xda8b68...47e033` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xdd8440...2b4243` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xde507d...80168a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xdf119e...45814c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xdf59b5...e5a277` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe2c863...db5624` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe34789...31c500` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe430a4...4f38dc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe962d8...378d21` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xee7574...904151` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xeed95f...a4ebee` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xef0537...68ead6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf0c2f7...afc62e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf0ca23...cda8a4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf26bd9...675897` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf34d3b...1fbe11` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfe0f3c...965d0b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfe4f65...111df8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [MesonFi-Audit-Report-R1-2022Feb.pdf](https://static.meson.fi/MesonFi-Audit-Report-R1-2022Feb.pdf) | SSLab at Georgia Institute of Technology | Audit | 2022-02 | stale | Direct | contract_name | 2 | n/a |
| [MesonFi-Audit-Report-R2-2022Jul.pdf](https://static.meson.fi/MesonFi-Audit-Report-R2-2022Jul.pdf) | Trail of Bits | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [MesonFi-Audit-Report-R3-2022Oct.pdf](https://static.meson.fi/MesonFi-Audit-Report-R3-2022Oct.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | contract_name | 2 | n/a |
| [MesonFi-Audit-Report-R4-2022Oct.pdf](https://static.meson.fi/MesonFi-Audit-Report-R4-2022Oct.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 368 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=6

Zero-match audit list:

- [3199] MesonFi-Audit-Report-R2-2022Jul.pdf

Fork inheritance lineage and inherited audits are included when available.
