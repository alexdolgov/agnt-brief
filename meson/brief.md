# Agentic Audit Brief: Meson

## Project Overview

- Project: Meson (`meson`)
- Website: [https://meson.fi/home](https://meson.fi/home)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.645Z
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

- Coverage of deployed-live implementations: 2/46 (4.3%)
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
- Tier 1 coverage: 4.3% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| SSLab at Georgia Institute of Technology | Tier 2 | 2 | 4.2% | 2022-02 |
| Trail of Bits | Tier 1 | 2 | 4.2% | 2022-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UpgradableMeson | unknown | bsc | n/a | 2 deployments: bsc [`0x25ab3efd52e6470681ce037cd546dc60726948d3`](./contracts/bsc-56/0x25ab3efd52e6470681ce037cd546dc60726948d3/); bsc `0xcabf7861ea9b80776357630c1d9f87fc346194ba` | ✅ Audited |
| UpgradableMeson | unknown | base | n/a | 2 deployments: base [`0x03650533d2a35847c007f25bc630f468905f6241`](./contracts/base-8453/0x03650533d2a35847c007f25bc630f468905f6241/); base `0x25ab3efd52e6470681ce037cd546dc60726948d3` | ✅ Audited |

### ⚠️ Verified + Unaudited (46)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AtomicLockContract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x03650533d2a35847c007f25bc630f468905f6241`](./contracts/ethereum-1/0x03650533d2a35847c007f25bc630f468905f6241/); ethereum `0x8800457f79693d843fde04f7ec0a61c1250bced5` | ⚠️ Unaudited |
| AtomicLockContract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1a3be6cd0ac1de19d3358dc6ef00a99eabf62d4a`](./contracts/ethereum-1/0x1a3be6cd0ac1de19d3358dc6ef00a99eabf62d4a/); ethereum `0x3111653db0e7094b111b8e435df9193b62c2c576` | ⚠️ Unaudited |
| AtomicLockContract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1b5668ca8edfc8af5dcb9de014b4b08ed5d0615f`](./contracts/ethereum-1/0x1b5668ca8edfc8af5dcb9de014b4b08ed5d0615f/); ethereum `0x75ab2abb77c70d6a3592795e7240c3a6ae9ce10e` | ⚠️ Unaudited |
| AtomicLockContract | unknown | bsc | n/a | 2 deployments: bsc [`0x645c0a2aec74f4aad54783f27d241ac75b8d7c72`](./contracts/bsc-56/0x645c0a2aec74f4aad54783f27d241ac75b8d7c72/); bsc `0xba43f3c8733b0515b5c23dff46f47af6eb46f85c` | ⚠️ Unaudited |
| AtomicLockContract | unknown | bsc | n/a | 2 deployments: bsc [`0x9d59177c29ae3e6eb3e1d9c4a0e563f42bbb57ff`](./contracts/bsc-56/0x9d59177c29ae3e6eb3e1d9c4a0e563f42bbb57ff/); bsc `0xf8aed4da2598d3df878488f40d982d6ecc8b13ad` | ⚠️ Unaudited |
| AtomicLockContract | unknown | polygon | n/a | 2 deployments: polygon [`0x2a40e79d4636d1e2672b4b42abdad3befcd9e17e`](./contracts/polygon-137/0x2a40e79d4636d1e2672b4b42abdad3befcd9e17e/); polygon `0x7ab202c0161357ca4c8fd2e09adfcd45f3aafb41` | ⚠️ Unaudited |
| AtomicLockContract | unknown | arbitrum | n/a | 22 deployments: ethereum `0x5dcf7862c2941934cdc37a40d7122ef86252286b`; ethereum `0x61787593580a1a6d87ff0583a30dbe865700b50c`; ethereum `0x645c0a2aec74f4aad54783f27d241ac75b8d7c72`; ethereum `0x7ab202c0161357ca4c8fd2e09adfcd45f3aafb41`; ethereum `0x902de7c53c97188f6edc496395026673adc9cc95`; ethereum `0xa8176b0593d5d2b246ed4110091024858e5dd767`; ethereum `0xafcdfdd3364f6b62670d580c4b47184ef74ea86b`; ethereum `0xb146559c427a64c0dcbd92d9e10f444b90be7dfa`; ethereum `0xce901f374f45a4d7e3a04bb4041d76b43837e31d`; ethereum `0xe2e72333683079226b9139e147ab3924de61c8ab`; bsc `0x94a307d0ff4a5fa76a888647311263d994147567`; bsc `0xb146559c427a64c0dcbd92d9e10f444b90be7dfa`; polygon `0xb4e1a2f4622ae30e7b70b7bbc00467cde289b71b`; arbitrum [`0x0a5e1199935836f22360813a14bc8ca7be22a0c4`](./contracts/arbitrum-42161/0x0a5e1199935836f22360813a14bc8ca7be22a0c4/); arbitrum `0x1a3be6cd0ac1de19d3358dc6ef00a99eabf62d4a`; arbitrum `0x2d90717e5400a83845c1f4f9d121492d328fceb7`; arbitrum `0x5dcf7862c2941934cdc37a40d7122ef86252286b`; arbitrum `0x645c0a2aec74f4aad54783f27d241ac75b8d7c72`; arbitrum `0x75ab2abb77c70d6a3592795e7240c3a6ae9ce10e`; arbitrum `0x94a307d0ff4a5fa76a888647311263d994147567`; arbitrum `0xca6cccf93571fe053c8f9cb53220a3edcf600889`; arbitrum `0xe70e9a845fabd41fb3de258c41f4bfe395cd30c2` | ⚠️ Unaudited |
| AtomicLockContract | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x90a9c0a1545dcc585c94d602ac64ed378f7d0170`](./contracts/arbitrum-42161/0x90a9c0a1545dcc585c94d602ac64ed378f7d0170/); arbitrum `0xba43f3c8733b0515b5c23dff46f47af6eb46f85c` | ⚠️ Unaudited |
| AtomicMintContract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x17e1709cdc1f253013a1b8b75b75fa00efa7cce2`](./contracts/ethereum-1/0x17e1709cdc1f253013a1b8b75b75fa00efa7cce2/); ethereum `0x4fa09f02d5da21b53c32fa6172c099d5d25ac822` | ⚠️ Unaudited |
| AtomicMintContract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x18bc68fc6037bf46c197f4ea44e0c0fb5177e773`](./contracts/ethereum-1/0x18bc68fc6037bf46c197f4ea44e0c0fb5177e773/); ethereum `0xcbabb5687a96bd5b5dd99243c47fc1b65ac5675a` | ⚠️ Unaudited |
| AtomicMintContract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2a8e8d5bd49979de583ab1ad2a81b35ec0782b2e`](./contracts/ethereum-1/0x2a8e8d5bd49979de583ab1ad2a81b35ec0782b2e/); ethereum `0x98e7e5fac1ed4e1932a0c73559aee28ce72f7d9a` | ⚠️ Unaudited |
| AtomicMintContract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x90a9c0a1545dcc585c94d602ac64ed378f7d0170`](./contracts/ethereum-1/0x90a9c0a1545dcc585c94d602ac64ed378f7d0170/); ethereum `0xc9cf72500da54368bd82eb4d81a2d050792c7ed7` | ⚠️ Unaudited |
| AtomicMintContract | unknown | optimism | n/a | 2 deployments: optimism [`0x2a40e79d4636d1e2672b4b42abdad3befcd9e17e`](./contracts/optimism-10/0x2a40e79d4636d1e2672b4b42abdad3befcd9e17e/); optimism `0x960e22db79c0fb639931ec5358865613b807ed3d` | ⚠️ Unaudited |
| AtomicMintContract | unknown | optimism | n/a | 10 deployments: ethereum `0x5e78709fd3d30b5aa5d3256e103c17343c339ed2`; ethereum `0x6c029d62944bb20900a4bc078f5760579d78efe9`; ethereum `0x8a5bc78f6a48b55fb732132c75e48f9820c9b9a8`; optimism [`0x2c29943bba7a7c2108fe2abe5d459fc5f7781a0b`](./contracts/optimism-10/0x2c29943bba7a7c2108fe2abe5d459fc5f7781a0b/); arbitrum `0xeeaca9948e38a2bdbb5865646bc0308c9505cbfa`; linea `0x6ba34232f35c15bd8e858de47303234f60656a83`; linea `0x781d50ea025751162b909897ac95fa05c30e2c7c`; linea `0x9c00675d51368d90dcb95325115726e3e256cf3c`; linea `0xa5509757863f56f57ce4566e2ccbaca37d308bc8`; linea `0xfb7691b0d214b6c5f4e686bdf46211bbab7d0484` | ⚠️ Unaudited |
| AtomicMintContract | unknown | bsc | n/a | 2 deployments: bsc [`0x09d334c6197f52308efc53e3d6726151c6bd0533`](./contracts/bsc-56/0x09d334c6197f52308efc53e3d6726151c6bd0533/); bsc `0x75ab2abb77c70d6a3592795e7240c3a6ae9ce10e` | ⚠️ Unaudited |
| AtomicMintContract | unknown | bsc | n/a | 2 deployments: bsc [`0x1bdea7d0ccd01c25754345c1109556e4aca94180`](./contracts/bsc-56/0x1bdea7d0ccd01c25754345c1109556e4aca94180/); bsc `0xfdf61884b084f1e35da395a83d11a7f622da322e` | ⚠️ Unaudited |
| AtomicMintContract | unknown | bsc | n/a | 2 deployments: bsc [`0x2c29943bba7a7c2108fe2abe5d459fc5f7781a0b`](./contracts/bsc-56/0x2c29943bba7a7c2108fe2abe5d459fc5f7781a0b/); bsc `0x960e22db79c0fb639931ec5358865613b807ed3d` | ⚠️ Unaudited |
| AtomicMintContract | unknown | bsc | n/a | 2 deployments: bsc [`0xb00b19ec5a8b1a80b2501fefc7266009fec914c5`](./contracts/bsc-56/0xb00b19ec5a8b1a80b2501fefc7266009fec914c5/); bsc `0xe5f5261ee71915d53fd9e81454404a569c61d1c0` | ⚠️ Unaudited |
| AtomicMintContract | unknown | base | n/a | 2 deployments: base [`0x395c38f055522c7eebd85e77dc59508a0e4115aa`](./contracts/base-8453/0x395c38f055522c7eebd85e77dc59508a0e4115aa/); base `0xfb7691b0d214b6c5f4e686bdf46211bbab7d0484` | ⚠️ Unaudited |
| AtomicMintContract | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x1a96381ee92f015f28c5202e007b5a556db5c0c3`](./contracts/arbitrum-42161/0x1a96381ee92f015f28c5202e007b5a556db5c0c3/); arbitrum `0x8a5bc78f6a48b55fb732132c75e48f9820c9b9a8` | ⚠️ Unaudited |
| AtomicMintContract | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x331ebdce4d2376be413fca81390b1df4c07c7fea`](./contracts/arbitrum-42161/0x331ebdce4d2376be413fca81390b1df4c07c7fea/); arbitrum `0xd477bf6e7d8a064da9dd721e4b3f3a509ad478ad` | ⚠️ Unaudited |
| AtomicMintContract | unknown | linea | n/a | 2 deployments: linea [`0x3080921c8aefbf1f97a7b3b0acad9e00305b0345`](./contracts/linea-59144/0x3080921c8aefbf1f97a7b3b0acad9e00305b0345/); linea `0x5947b60a2e22939fd5f21efdb5e8e72e1f95c8a6` | ⚠️ Unaudited |
| AtomicMintContract | unknown | linea | n/a | 2 deployments: linea [`0x3111653db0e7094b111b8e435df9193b62c2c576`](./contracts/linea-59144/0x3111653db0e7094b111b8e435df9193b62c2c576/); linea `0xeee21c29c67a4dc177c3371296dbb2c45911c487` | ⚠️ Unaudited |
| AtomicMintContract | unknown | linea | n/a | 2 deployments: linea [`0x523cc5f9c2c2348a0e2fb4b7efca5d0a07902831`](./contracts/linea-59144/0x523cc5f9c2c2348a0e2fb4b7efca5d0a07902831/); linea `0x7770fc32026ba56ac86efc6ed82eb9c8f7bc8445` | ⚠️ Unaudited |
| AtomicMintContract | unknown | linea | n/a | 2 deployments: linea [`0x5b36fb69aedcfbceb7d0da83876c1da83a8bf1c8`](./contracts/linea-59144/0x5b36fb69aedcfbceb7d0da83876c1da83a8bf1c8/); linea `0x9f40e1650bd580d0139728ac0f0ecd5591537184` | ⚠️ Unaudited |
| AtomicMintContract | unknown | linea | n/a | 2 deployments: linea [`0x8800457f79693d843fde04f7ec0a61c1250bced5`](./contracts/linea-59144/0x8800457f79693d843fde04f7ec0a61c1250bced5/); linea `0xdd3d867db5ca13e5f055dd4484648fdddf3248eb` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x389b8bccf541c4f130239ac78fa693642bbb2ad1`](./contracts/ethereum-1/0x389b8bccf541c4f130239ac78fa693642bbb2ad1/); ethereum `0xa97fe3e9c1d3be7289030684ed32a6710d2d02ba` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa297a74935038600737665cc6b259dbc3094d850`](./contracts/ethereum-1/0xa297a74935038600737665cc6b259dbc3094d850/); ethereum `0xd1f5afd741396ec69f018a75bbbe9ce65eec850d` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | [`0xa2bf58cbaeffc76f8433b7b8492010ac8a51ef80`](./contracts/ethereum-1/0xa2bf58cbaeffc76f8433b7b8492010ac8a51ef80/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa3699002ba65f9ea7296a8344a9076dcc78d0cf8`](./contracts/ethereum-1/0xa3699002ba65f9ea7296a8344a9076dcc78d0cf8/); ethereum `0xeeaca9948e38a2bdbb5865646bc0308c9505cbfa` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd6572c7cd671ecf75d920adcd200b00343959600`](./contracts/ethereum-1/0xd6572c7cd671ecf75d920adcd200b00343959600/); ethereum `0xe38ed202c14da987fddb52060fd5a28ebc1ffe7b` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x09db9470b8440959b0aa47d7007386c5b7708024`](./contracts/arbitrum-42161/0x09db9470b8440959b0aa47d7007386c5b7708024/); arbitrum `0x6c029d62944bb20900a4bc078f5760579d78efe9` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x33ccc2652682949d7cf3a6a43ce4611a229063d1`](./contracts/arbitrum-42161/0x33ccc2652682949d7cf3a6a43ce4611a229063d1/); arbitrum `0xd4f47422d5d0bc863f2af1d544a8333172ae40b6` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x83ba824d0fc681722c91e93b9a410e0a0592af51`](./contracts/arbitrum-42161/0x83ba824d0fc681722c91e93b9a410e0a0592af51/); arbitrum `0xbb3e082bccbed8b234dddd4388e52845a03fd672` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x9ea7327594e82cb3ae4b49dbc1531bb2a2498596`](./contracts/arbitrum-42161/0x9ea7327594e82cb3ae4b49dbc1531bb2a2498596/); arbitrum `0xd5ae4ebf1b6a459ff2f402bd4d1e32c4ca063f28` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x9f08f150c5fe1cd089705e8fe58ab2c6f0739d98`](./contracts/arbitrum-42161/0x9f08f150c5fe1cd089705e8fe58ab2c6f0739d98/); arbitrum `0xc178ae294bc3623e6dfdf07c9ca79c6db692f032` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xc882d499f1586f57f8af9c44908da21e6c6e3782`](./contracts/arbitrum-42161/0xc882d499f1586f57f8af9c44908da21e6c6e3782/); arbitrum `0xfdf4d986164a9549f3bd0f096a6febd95a71d003` | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | [`0xd3d62e118e820ffd24a43f6a303c8187f6c7e41a`](./contracts/arbitrum-42161/0xd3d62e118e820ffd24a43f6a303c8187f6c7e41a/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | linea | n/a | 2 deployments: linea [`0x2a8e8d5bd49979de583ab1ad2a81b35ec0782b2e`](./contracts/linea-59144/0x2a8e8d5bd49979de583ab1ad2a81b35ec0782b2e/); linea `0x98e7e5fac1ed4e1932a0c73559aee28ce72f7d9a` | ⚠️ Unaudited |
| FixSupplyToken | token | blast | n/a | [`0x01593b8aaadc5238f2f5c8597bc1402eb7a48c5f`](./contracts/blast-81457/0x01593b8aaadc5238f2f5c8597bc1402eb7a48c5f/) | ⚠️ Unaudited |
| ProxyToMeson | proxy | ethereum | n/a | 2 deployments: ethereum [`0x25ab3efd52e6470681ce037cd546dc60726948d3`](./contracts/ethereum-1/0x25ab3efd52e6470681ce037cd546dc60726948d3/); ethereum `0x3c774719e0126415b870b4abfff89f8f59c5d906` | ⚠️ Unaudited |
| ProxyToMeson | proxy | optimism | n/a | 2 deployments: optimism [`0x25ab3efd52e6470681ce037cd546dc60726948d3`](./contracts/optimism-10/0x25ab3efd52e6470681ce037cd546dc60726948d3/); optimism `0xe70e9a845fabd41fb3de258c41f4bfe395cd30c2` | ⚠️ Unaudited |
| ProxyToMeson | unknown | bsc | n/a | 2 deployments: bsc [`0x5e306700c61d90e7dee260f01572e4ab803d388d`](./contracts/bsc-56/0x5e306700c61d90e7dee260f01572e4ab803d388d/); bsc `0x652e24c7014bb1563aea3e82c03c4ba0afec594d` | ⚠️ Unaudited |
| ProxyToMeson | unknown | bsc | n/a | 2 deployments: bsc [`0x6ba34232f35c15bd8e858de47303234f60656a83`](./contracts/bsc-56/0x6ba34232f35c15bd8e858de47303234f60656a83/); bsc `0xdd3d867db5ca13e5f055dd4484648fdddf3248eb` | ⚠️ Unaudited |
| ProxyToMeson | proxy | arbitrum | n/a | 2 deployments: arbitrum [`0x25ab3efd52e6470681ce037cd546dc60726948d3`](./contracts/arbitrum-42161/0x25ab3efd52e6470681ce037cd546dc60726948d3/); arbitrum `0xa96e19d0f696690a416c610b4b34aac5be6fafc0` | ⚠️ Unaudited |
| UpgradableMeson | unknown | bsc | n/a | 10 deployments: ethereum `0x2fb7ceabb1ef6218c05475ca3a357a0e9e6e0303`; ethereum `0x370634e1064b945e9010ddfa6077f321eca431cf`; optimism `0x1a3be6cd0ac1de19d3358dc6ef00a99eabf62d4a`; optimism `0x2ae2ec1ff5fb7baea86af2ca6681a62cb27cbe24`; bsc [`0x1522de0005fddfafbfe1843b40bc2be58b3f5aec`](./contracts/bsc-56/0x1522de0005fddfafbfe1843b40bc2be58b3f5aec/); bsc `0xd1f5afd741396ec69f018a75bbbe9ce65eec850d`; polygon `0x1b5668ca8edfc8af5dcb9de014b4b08ed5d0615f`; polygon `0x5dcf7862c2941934cdc37a40d7122ef86252286b`; arbitrum `0x222bc4532b48976713044fcf01dccae8d5e4bb40`; arbitrum `0xed5e81eee494b2d77ea1c956f29934b8b6a9a670` | ⚠️ Unaudited |

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
| Proxy (impl: 0x2d90717e5400a83845c1f4f9d121492d328fceb7) | proxy | polygon | n/a | 2 deployments: polygon `0x25ab3efd52e6470681ce037cd546dc60726948d3`; polygon `0x2d90717e5400a83845c1f4f9d121492d328fceb7` | ❓ Unverified |
| Proxy (impl: 0xa7a9f30f9d2c4a79ff60179e02236b82d0a176b7) | proxy | linea | n/a | 2 deployments: linea `0x25ab3efd52e6470681ce037cd546dc60726948d3`; linea `0xa7a9f30f9d2c4a79ff60179e02236b82d0a176b7` | ❓ Unverified |
| Proxy (impl: 0xa7a9f30f9d2c4a79ff60179e02236b82d0a176b7) | proxy | blast | n/a | 2 deployments: blast `0x25ab3efd52e6470681ce037cd546dc60726948d3`; blast `0xa7a9f30f9d2c4a79ff60179e02236b82d0a176b7` | ❓ Unverified |
| Proxy (impl: 0xdd3d867db5ca13e5f055dd4484648fdddf3248eb) | unknown | polygon | n/a | 2 deployments: polygon `0x53be31942c2113633bdfe34626bdc60c7f1d12b7`; polygon `0xdd3d867db5ca13e5f055dd4484648fdddf3248eb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14eda572634627389226153f9fa5366a90a660db` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c42d3dbb5a6e54d52f194546c464bb5d47925df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x328330f2c17a55e7e36c78972947e22f2f43cbb5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x331ebdce4d2376be413fca81390b1df4c07c7fea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4226e1b911b05388c17cb92d985fcafc17899cd6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4af60d4478e2e4bf64a57fa4cef050c526980931` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4d946ad1363f610b8e8d0c1d93bcf041a54f902f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x529c2945c257cc737a15733d43a1fd1cbbe79c67` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53be31942c2113633bdfe34626bdc60c7f1d12b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x59b38e68423f4b566600f632248ec0cf13c79ade` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x652e24c7014bb1563aea3e82c03c4ba0afec594d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6bb2195a38d8d7ec9d30cb77557eb09a363beacf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x75a92146577bb1e9b76c3cb0ba0ffa2b3a25de34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x781d50ea025751162b909897ac95fa05c30e2c7c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ee5866de93f2de8e435715666a9e8f0a63f2319` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ef8f2a8048948d43642e0358a183147e154550a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ee2d274b4f54b4d3014575e9850c21d7cb7fe87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x95dd0d431037b6ce68a4355217f3cd6f596776bc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1824c3599ac7516728caddaa26fac814785f347` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa6e02b4445db933fcd125a449448326d6505b189` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa84442f3853ce0d57f8a89ec0675044e502b8af7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac937ad539bb9737892ca9ffacff00d40311c0ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcabf7861ea9b80776357630c1d9f87fc346194ba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe7fb36b4a3787cfa32fde7affded0cfb6825f255` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeddb37c74e3405a598856e8ae5b6d30d6938beff` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x03650533d2a35847c007f25bc630f468905f6241` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x09d334c6197f52308efc53e3d6726151c6bd0533` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x14eda572634627389226153f9fa5366a90a660db` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x1a4e3fba9a4325013c0dfe580d6b7eed92c34a30` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x2c42d3dbb5a6e54d52f194546c464bb5d47925df` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x3080921c8aefbf1f97a7b3b0acad9e00305b0345` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x328330f2c17a55e7e36c78972947e22f2f43cbb5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x395c38f055522c7eebd85e77dc59508a0e4115aa` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4af60d4478e2e4bf64a57fa4cef050c526980931` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4df5f7c6d69a24aa1a87beee5a374a40c8f9afd3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x529c2945c257cc737a15733d43a1fd1cbbe79c67` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x53be31942c2113633bdfe34626bdc60c7f1d12b7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5947b60a2e22939fd5f21efdb5e8e72e1f95c8a6` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x59b38e68423f4b566600f632248ec0cf13c79ade` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x5b00e2a79d721fc22c6534273419e47a1159feae` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x645c0a2aec74f4aad54783f27d241ac75b8d7c72` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x652e24c7014bb1563aea3e82c03c4ba0afec594d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x6bb2195a38d8d7ec9d30cb77557eb09a363beacf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x781d50ea025751162b909897ac95fa05c30e2c7c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7ee5866de93f2de8e435715666a9e8f0a63f2319` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x7ef8f2a8048948d43642e0358a183147e154550a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x98e7e5fac1ed4e1932a0c73559aee28ce72f7d9a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x9f40e1650bd580d0139728ac0f0ecd5591537184` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa1937f60d3833e3e0305227f1afde4a34a4d48e1` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa8176b0593d5d2b246ed4110091024858e5dd767` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xa84442f3853ce0d57f8a89ec0675044e502b8af7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xac937ad539bb9737892ca9ffacff00d40311c0ca` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xce901f374f45a4d7e3a04bb4041d76b43837e31d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xdd3d867db5ca13e5f055dd4484648fdddf3248eb` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xe7fb36b4a3787cfa32fde7affded0cfb6825f255` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0xeee21c29c67a4dc177c3371296dbb2c45911c487` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0fed0533cb32fff40c2d53e819a4c6f68d86c91b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x188c41b901bf26e9323f217f1d23d17a9c665c75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x19727db22cba70b1fee40337aba69d83c6741caf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1a96381ee92f015f28c5202e007b5a556db5c0c3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2031fbb04cc3b28aa99dba7ad189689ca8ebc648` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x21c9e05fa8a2cdec06763a083df6059a8d6ee4b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3080921c8aefbf1f97a7b3b0acad9e00305b0345` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3111653db0e7094b111b8e435df9193b62c2c576` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x331ebdce4d2376be413fca81390b1df4c07c7fea` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x35094a8378278a85edac61f742f1ec4dd6b1c447` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3521a461fdddbe6fd8e95cf223dd1f037f81a1b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x36ee804b7e4f02cd61a66da176a39e8b08c8862a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x496217fe6a500704409d83a9f86d63732b6f1997` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d946ad1363f610b8e8d0c1d93bcf041a54f902f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x671159047ede45510f364e8d3890c1c7d15d2092` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x685ffe830e9d8b510df67d5d7453535456fa3bcc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7770fc32026ba56ac86efc6ed82eb9c8f7bc8445` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ab202c0161357ca4c8fd2e09adfcd45f3aafb41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f4d86919fa5458cc6f8485fe54405352d91c5b3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8800457f79693d843fde04f7ec0a61c1250bced5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x962b242e02bbcfe5475ab2272b1c77e5f1e9683f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98b35a04356a354a089e5e741b4b9b02a7b0b822` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98e7e5fac1ed4e1932a0c73559aee28ce72f7d9a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9c00675d51368d90dcb95325115726e3e256cf3c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9f40e1650bd580d0139728ac0f0ecd5591537184` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa1824c3599ac7516728caddaa26fac814785f347` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa18cd3120190993cdd72285d2e6d94c07a04e046` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa1937f60d3833e3e0305227f1afde4a34a4d48e1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa5509757863f56f57ce4566e2ccbaca37d308bc8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa5de263201d1b7a978bade7a4408d3f76de8252e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa6b3746d1b2270824e6560adafe3bc5e7545d33b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa6e02b4445db933fcd125a449448326d6505b189` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa7a9f30f9d2c4a79ff60179e02236b82d0a176b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa8176b0593d5d2b246ed4110091024858e5dd767` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb11b809d80a992a2faa83e33e84ed1bae4a48517` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4e1a2f4622ae30e7b70b7bbc00467cde289b71b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbb4a26a053b217bb28766a4ed4b062c3b4de58ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc6d1283fdc3a8fcb12f6a9ee2b8b8c2ac60117bf` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd955a8279a7a96cf6c7d11a3a6fb25f415c5139c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe9cdb9c251a58d4f86ae49d03005c02a108cc314` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xea23c75519cdbae0e92a4c5b928cddf235923411` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf96fead13d0ddef5243d5c24f690872612ae9a0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfb7691b0d214b6c5f4e686bdf46211bbab7d0484` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x03650533d2a35847c007f25bc630f468905f6241` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x14eda572634627389226153f9fa5366a90a660db` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2c42d3dbb5a6e54d52f194546c464bb5d47925df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x328330f2c17a55e7e36c78972947e22f2f43cbb5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x395c38f055522c7eebd85e77dc59508a0e4115aa` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4af60d4478e2e4bf64a57fa4cef050c526980931` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4df5f7c6d69a24aa1a87beee5a374a40c8f9afd3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5947b60a2e22939fd5f21efdb5e8e72e1f95c8a6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x59b38e68423f4b566600f632248ec0cf13c79ade` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5b00e2a79d721fc22c6534273419e47a1159feae` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5b36fb69aedcfbceb7d0da83876c1da83a8bf1c8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x603800cb3f854a4847b2d235a40e6c62efe35ba4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x652e24c7014bb1563aea3e82c03c4ba0afec594d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6bb2195a38d8d7ec9d30cb77557eb09a363beacf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7770fc32026ba56ac86efc6ed82eb9c8f7bc8445` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x781d50ea025751162b909897ac95fa05c30e2c7c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ee5866de93f2de8e435715666a9e8f0a63f2319` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ef8f2a8048948d43642e0358a183147e154550a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa1937f60d3833e3e0305227f1afde4a34a4d48e1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa8176b0593d5d2b246ed4110091024858e5dd767` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa84442f3853ce0d57f8a89ec0675044e502b8af7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xac937ad539bb9737892ca9ffacff00d40311c0ca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xafcdfdd3364f6b62670d580c4b47184ef74ea86b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc6d1283fdc3a8fcb12f6a9ee2b8b8c2ac60117bf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe7fb36b4a3787cfa32fde7affded0cfb6825f255` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeee21c29c67a4dc177c3371296dbb2c45911c487` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | 8 deployments: merlin `0x25ab3efd52e6470681ce037cd546dc60726948d3`; merlin `0x480e158395cc5b41e5584347c495584ca2caf78d`; merlin `0x4b21b980d0dc7d3c0c6175b0a412694f3a1c7c6b`; merlin `0x9bd60d6fc99843207b8149f9190438c1f81bddcd`; merlin `0xa793740863f1710a87070a5918820976ff32b758`; merlin `0xb5d8b1e73c79483d7750c5b8df8db45a0d24e2cf`; merlin `0xc21d5deb02248bea5ac3ea51695bf2cd36a4ad2b`; merlin `0xd5534269e027bcb81d319e4213f665fab011038e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x328330f2c17a55e7e36c78972947e22f2f43cbb5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4df5f7c6d69a24aa1a87beee5a374a40c8f9afd3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x59b38e68423f4b566600f632248ec0cf13c79ade` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5b36fb69aedcfbceb7d0da83876c1da83a8bf1c8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7dcdb05275af70a58272e746d3afd43c7d91f41d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7ef8f2a8048948d43642e0358a183147e154550a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7f4d86919fa5458cc6f8485fe54405352d91c5b3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x98e7e5fac1ed4e1932a0c73559aee28ce72f7d9a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f40e1650bd580d0139728ac0f0ecd5591537184` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa84442f3853ce0d57f8a89ec0675044e502b8af7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac937ad539bb9737892ca9ffacff00d40311c0ca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc6d1283fdc3a8fcb12f6a9ee2b8b8c2ac60117bf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x0fed0533cb32fff40c2d53e819a4c6f68d86c91b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x192d1287ed5f8bc34ed60009a66050fb854fa1ce` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2df513567176f30b5980504708a9ca825a0a84a5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2fb7ceabb1ef6218c05475ca3a357a0e9e6e0303` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3080921c8aefbf1f97a7b3b0acad9e00305b0345` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x328330f2c17a55e7e36c78972947e22f2f43cbb5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x370634e1064b945e9010ddfa6077f321eca431cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x395c38f055522c7eebd85e77dc59508a0e4115aa` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4af60d4478e2e4bf64a57fa4cef050c526980931` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x4c8f7c4b53ea7cbe1441a0ec43bb4049abc50541` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x523cc5f9c2c2348a0e2fb4b7efca5d0a07902831` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x529c2945c257cc737a15733d43a1fd1cbbe79c67` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x53be31942c2113633bdfe34626bdc60c7f1d12b7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5947b60a2e22939fd5f21efdb5e8e72e1f95c8a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x59b38e68423f4b566600f632248ec0cf13c79ade` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x5b00e2a79d721fc22c6534273419e47a1159feae` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x61787593580a1a6d87ff0583a30dbe865700b50c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x671159047ede45510f364e8d3890c1c7d15d2092` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6ba34232f35c15bd8e858de47303234f60656a83` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7641f2efc2277858c414dd2a129f7dc155b9977a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x787e47f53c114c45adb9fc8b98bc2f61d8842c29` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7ee5866de93f2de8e435715666a9e8f0a63f2319` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7f4d86919fa5458cc6f8485fe54405352d91c5b3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8800457f79693d843fde04f7ec0a61c1250bced5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8beb211a3036d36080167af6e0af99e9224d9843` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x98e7e5fac1ed4e1932a0c73559aee28ce72f7d9a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9c00675d51368d90dcb95325115726e3e256cf3c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9f40e1650bd580d0139728ac0f0ecd5591537184` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa297a74935038600737665cc6b259dbc3094d850` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa3699002ba65f9ea7296a8344a9076dcc78d0cf8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa5509757863f56f57ce4566e2ccbaca37d308bc8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa6ae6371f0520a787c26f18354866123e78c0c9d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa8176b0593d5d2b246ed4110091024858e5dd767` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa84442f3853ce0d57f8a89ec0675044e502b8af7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac78936b3b87c30d5399934299d019a99ef9eee8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac937ad539bb9737892ca9ffacff00d40311c0ca` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xb4e1a2f4622ae30e7b70b7bbc00467cde289b71b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbe9f039ff5259c9e93cd8120d2862d19764c222e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcbabb5687a96bd5b5dd99243c47fc1b65ac5675a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xccf51e2c231d71867ec51769d82e72566a7f625e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd1f5afd741396ec69f018a75bbbe9ce65eec850d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd7e30f35dad4bb387bdb59a8795ba590d01e69d9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd955a8279a7a96cf6c7d11a3a6fb25f415c5139c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe55b869870b23c8ffed6fb6aba63e464e9bc7dd3` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe7fb36b4a3787cfa32fde7affded0cfb6825f255` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xecbceffa5f082d94172645a7353a2042187256ab` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeddb37c74e3405a598856e8ae5b6d30d6938beff` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf9b5eb888309e537c91bbf8b337a0e16319b23cf` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xfe16ffcc16f068c779c57b12996f1cfe189bc312` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x2031fbb04cc3b28aa99dba7ad189689ca8ebc648` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x496217fe6a500704409d83a9f86d63732b6f1997` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x53be31942c2113633bdfe34626bdc60c7f1d12b7` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x645c0a2aec74f4aad54783f27d241ac75b8d7c72` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x701ce6dfb15d90de45f0222e6bb58e174a2e3452` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x7dcdb05275af70a58272e746d3afd43c7d91f41d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xce901f374f45a4d7e3a04bb4041d76b43837e31d` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe9cdb9c251a58d4f86ae49d03005c02a108cc314` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x00a34805af198072c83df911811fad8f170276dc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x01a4c7475f416ba1b75927a67bb05638b275c74f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x03245900162b798726514d9c3c18c1c8eff2952f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x042c13c4dc9b4c1f67d308e47e199a4c2d7694d4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x05956a4674945dee1e00442a53c562350282c340` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x090787f79911b19c8dbf1261abe4ff5b4b833bd7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x10025ace2f2ad2e8980028cd70719b846dfc4026` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x10e00e633c85d258b3285c818dd825ee51e09fe6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x142cde20f8b20ebaf60f7962657cd3bd6ce0748e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x18aa46961e952812c62b9ffc9aa7780aaadb3826` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1934dabb96325ae86b96d4260c6462a0e58cd9ea` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1c7ee1bc36b6ea5ded3fcdec8f29d24f46115f55` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1e3b2d80b96a1e6104b57e658d36e17a6b6c2782` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1ef53c45b070191cbd7c5fc88e2ddafaa29de1a9` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1f4d8c5f5cb85e923bff7d73bf08795e68d4b648` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2140c5b4ef9cc6d18196c43eefa9dff3595467a2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x21b102cc5d26be82c085d52617eaac00da2f7945` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x21f758179a1e40007234b6f3b0688d135864caf8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x28ea260b06ef4e7569b740cd7c383b8dfe6a8fd3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x29d1f2666f472cc2ad16795e4025c7322e4ffce8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2b8b05635170ab87d1ef1ec9600296b09e4179a0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2f1044fea1835438034933485bbd399990a7b76f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x31ddc8bb97067cc650dfc6ab97fd1b606d18f8e5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x328330f2c17a55e7e36c78972947e22f2f43cbb5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x37dde1dc4f84a643de9b58129b65f42294f16692` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x37e33b250985faf4dbdc607fa7454ca76b883a2a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x37e4b06a104da219317621bd3633a849493ec901` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x386d7be5793b061f01601f606f28e1017cbc9e68` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x39bf013f97f6c8ebeb272549337ab6c467929033` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x41063ede6491249c3d58cd338b3078a1854bd6ac` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x42c542661054da28c92c81f0b5f3587b63d01399` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x42d1cdf3ab219c42764de4e07fa08fc7215e67f8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x43e09d5b3734e1cb5fdec2842d061c15ac12d24b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4caee163d1260b67b1d6629c1714210a650c7c5d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x4dd10ea7aea76d9212263e2072f16d50e4374ab6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x529c2945c257cc737a15733d43a1fd1cbbe79c67` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5506fa71d84585acd4a06ad5bfcb1e5f6d876967` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x58ef828c7b11dbed86291d328beb08f050738c37` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5ca3d8039d1956c6f59e8fdbaa81926f211201a8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5d9fe23c874782910ae44b56400e6a841d023380` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6064b55203b5c67e9da8b3755f60a0e8457939c4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6473c9491893ab6bf7e008be364ac0a64913a564` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x648aa4e686f538e77ef0deba5362009483edc5cb` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6493f493dbd8526e5bd8284abe0e2d9668220054` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x662267caa600d9f284356075c3504e78408a819b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x66a4c22451bb42ad8206e64f8c56929b4da5e217` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x68f49a152df3410715bfe83c3feb8a2455b871a6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6ba43e09deb63ed2db22b82bef3ae66907bfc59b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x6c8019a2ea74002b74e6c2cdb60b1d2965fe7c46` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x717aa1606f1891f9dc124381a9ba16b51ffcf396` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x760807ca3de4b2434b28e511fb96790064f3b26d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x76ccda703018b97587a35c0b40084e248b688cf6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7765a725c822b6dda032bb8d1e86475c02d272b1` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7db21990fd2d3f178ff187ca00ef4acf38de42a8` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7f4701cf364f0481d37272590cbb5f809c8c3b0f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x84f7df1129b8cd21ab4920be6ead959e33ed6b86` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x859997d5686486b023b4fc375f6356fedf40a923` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8632a0b0095f6c6d51a03e245d93b25ed2b6f709` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x87319ed5a9043e1a5a6d6e1ec6cce134daec1c48` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x87d82c2d113e9c75289e0beb9e9a3cc2ffad704c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x88332d6e6ad87e2c72bf04c04a5057947d438885` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x88c8464c11193f2e2d4618521b935949d4dc8749` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x895df5646e3400e334994985201a714914dd87c4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8ae7ba560027bb04edcfc34bdfcd24e5dcd4d33b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8e26b6db3d8f80b90ce915c0b6b9d0c17839fdb4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8f833d4314377542107e79bf7005374a42c4499d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x90c1fccab2bd044f20f53574ef2b3ece270c0424` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x91f205cc8dbef51a89dd4821b13776b273f83380` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x93e069a379b1db74c10635893abec755cb8fd62e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9430d006eae8fcfb68b2d3f6015a551f20dcd55e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x946d5df1c585c0fb8a96191b00847e47d76598e3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x97bd39bd74619ae307a795757f2d163efd505c07` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x9c6c26f5d308b22254a57a87744e0c018be20dc7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa005714099390813079f9fb3e7efcdc6a36e7e80` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa1d4abdb310d6f76d71aaf2c29e0ee66063fab8f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa5f57458d30e0780aa455c5d443729508d555249` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa7a567622ba35658ca10a55946ce523626bd23c5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xabcbe4cabb3891b23722675bd5b4a813bc6ec90f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xad74824c04b03a89204cfcf7567bb7d49f906a55` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb2f67ea43943e6c14580b9ecc88b3b05969ed4b3` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb5954707ae5b573881b56795cfc84f0dd2a1c0a5` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb81b69dc539ed055d0547aab96da7d1baec4d7ad` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xb9f7da7f5e361030ef2625d5e2d7623d911aa2c2` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbb731a4d6c563e8a48871479511930f98c37e6d4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbc166b69128f7a2540ffbe8df7fa20aa10a656ec` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xbd9215e002e4344c8333fc0bf4f5eced62bf9b85` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc1d22e673fbca772be2c5ebb86e7eac72c91d885` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc3686c5ce9be0ae47816987e6e448fb38fb97803` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc37b383b80cd1e29136fcbc54de77373cca96479` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc8cbb74fc79f85d1df0ab89d5a7b6766d237ebfc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc8e6bca27e0c2a2dd95f006e296fb4f339cb5bdb` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc9bcbf1bb96c5b19513af64464dea8c69c790369` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xca584cbb74ff2b18eb35d1a2807106494f702a46` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xcb4aa4ecf4ad798834a76ad6dae97bdd9107e03f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xcc6a91e22841aba5e8df4e7542fe62086389771e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xccd7fe8d418e53f1515c45448d31125cec45b7ce` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xcd16b287536ff7a761b3574066a91e95635481ec` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xce625adb9cb4e374d2893bef1832e39eba06fd1c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd4421f553fef04189df0d2df060cfe0b54d6c4d4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd4c4ae8172253332f4d5e13aafc096cf35f33905` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd4d589602441ecd9833cb1e05e542474d4c95512` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd702783f90e4573b2906b558b625b53cedd72542` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd7ecaf4364d15d002f9c50a566fd7a557ae8d515` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xda8b685ceb09d7cb990ce155a3ea91b7d047e033` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xdd84404e9741fb1ba2f52906b25126fae22b4243` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xde507d12b786724d727e5696daad509d9280168a` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xdf119e932877e61e5c2db627c70130d37e45814c` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xdf59b5accd3adc29badf1bd3ab4b8b163de5a277` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe2c86363e191e479cdf747afa10ea877fbdb5624` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe347894936b3a0382e7dddd7f59c53293631c500` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe430a4ab064d7adf85c554d55c7d2a0f994f38dc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xe962d867d5b6b06b9c1a68a625d2ea44b4378d21` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xee75742dafe25220337009949c0c529f56904151` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xeed95f29121ddc9470fa619cba2022a00ca4ebee` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xef0537bc1fe54eadf9bfa197a15605233a68ead6` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf0c2f7199ca0cdd073d6d2cc1a0f888d02afc62e` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf0ca239cbb24f33fb92a9db1d47e62fed6cda8a4` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf26bd9ba435395f26634c9be5b717c6d10675897` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf34d3b1bed56e94f7d09d739bbd3ed237f1fbe11` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfe0f3cb609fd464bbac395cfdbd9e7a5bc965d0b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xfe4f65b03d02944995b31dc645a2a33021111df8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [MesonFi-Audit-Report-R1-2022Feb.pdf](https://static.meson.fi/MesonFi-Audit-Report-R1-2022Feb.pdf) | SSLab at Georgia Institute of Technology | Audit | 2022-02 | stale | Direct | contract_name | 2 | n/a |
| [MesonFi-Audit-Report-R2-2022Jul.pdf](https://static.meson.fi/MesonFi-Audit-Report-R2-2022Jul.pdf) | Trail of Bits | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [MesonFi-Audit-Report-R3-2022Oct.pdf](https://static.meson.fi/MesonFi-Audit-Report-R3-2022Oct.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | contract_name | 2 | n/a |
| [MesonFi-Audit-Report-R4-2022Oct.pdf](https://static.meson.fi/MesonFi-Audit-Report-R4-2022Oct.pdf) | Trail of Bits | Audit | 2022-10 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x03650533d2a35847c007f25bc630f468905f6241`](./contracts/ethereum-1/0x03650533d2a35847c007f25bc630f468905f6241/) | AtomicLockContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a3be6cd0ac1de19d3358dc6ef00a99eabf62d4a`](./contracts/ethereum-1/0x1a3be6cd0ac1de19d3358dc6ef00a99eabf62d4a/) | AtomicLockContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1b5668ca8edfc8af5dcb9de014b4b08ed5d0615f`](./contracts/ethereum-1/0x1b5668ca8edfc8af5dcb9de014b4b08ed5d0615f/) | AtomicLockContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x645c0a2aec74f4aad54783f27d241ac75b8d7c72`](./contracts/bsc-56/0x645c0a2aec74f4aad54783f27d241ac75b8d7c72/) | AtomicLockContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x9d59177c29ae3e6eb3e1d9c4a0e563f42bbb57ff`](./contracts/bsc-56/0x9d59177c29ae3e6eb3e1d9c4a0e563f42bbb57ff/) | AtomicLockContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x2a40e79d4636d1e2672b4b42abdad3befcd9e17e`](./contracts/polygon-137/0x2a40e79d4636d1e2672b4b42abdad3befcd9e17e/) | AtomicLockContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0a5e1199935836f22360813a14bc8ca7be22a0c4`](./contracts/arbitrum-42161/0x0a5e1199935836f22360813a14bc8ca7be22a0c4/) | AtomicLockContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x90a9c0a1545dcc585c94d602ac64ed378f7d0170`](./contracts/arbitrum-42161/0x90a9c0a1545dcc585c94d602ac64ed378f7d0170/) | AtomicLockContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17e1709cdc1f253013a1b8b75b75fa00efa7cce2`](./contracts/ethereum-1/0x17e1709cdc1f253013a1b8b75b75fa00efa7cce2/) | AtomicMintContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x18bc68fc6037bf46c197f4ea44e0c0fb5177e773`](./contracts/ethereum-1/0x18bc68fc6037bf46c197f4ea44e0c0fb5177e773/) | AtomicMintContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2a8e8d5bd49979de583ab1ad2a81b35ec0782b2e`](./contracts/ethereum-1/0x2a8e8d5bd49979de583ab1ad2a81b35ec0782b2e/) | AtomicMintContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x90a9c0a1545dcc585c94d602ac64ed378f7d0170`](./contracts/ethereum-1/0x90a9c0a1545dcc585c94d602ac64ed378f7d0170/) | AtomicMintContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2a40e79d4636d1e2672b4b42abdad3befcd9e17e`](./contracts/optimism-10/0x2a40e79d4636d1e2672b4b42abdad3befcd9e17e/) | AtomicMintContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x2c29943bba7a7c2108fe2abe5d459fc5f7781a0b`](./contracts/optimism-10/0x2c29943bba7a7c2108fe2abe5d459fc5f7781a0b/) | AtomicMintContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x09d334c6197f52308efc53e3d6726151c6bd0533`](./contracts/bsc-56/0x09d334c6197f52308efc53e3d6726151c6bd0533/) | AtomicMintContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1bdea7d0ccd01c25754345c1109556e4aca94180`](./contracts/bsc-56/0x1bdea7d0ccd01c25754345c1109556e4aca94180/) | AtomicMintContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2c29943bba7a7c2108fe2abe5d459fc5f7781a0b`](./contracts/bsc-56/0x2c29943bba7a7c2108fe2abe5d459fc5f7781a0b/) | AtomicMintContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb00b19ec5a8b1a80b2501fefc7266009fec914c5`](./contracts/bsc-56/0xb00b19ec5a8b1a80b2501fefc7266009fec914c5/) | AtomicMintContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x395c38f055522c7eebd85e77dc59508a0e4115aa`](./contracts/base-8453/0x395c38f055522c7eebd85e77dc59508a0e4115aa/) | AtomicMintContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1a96381ee92f015f28c5202e007b5a556db5c0c3`](./contracts/arbitrum-42161/0x1a96381ee92f015f28c5202e007b5a556db5c0c3/) | AtomicMintContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x331ebdce4d2376be413fca81390b1df4c07c7fea`](./contracts/arbitrum-42161/0x331ebdce4d2376be413fca81390b1df4c07c7fea/) | AtomicMintContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x3080921c8aefbf1f97a7b3b0acad9e00305b0345`](./contracts/linea-59144/0x3080921c8aefbf1f97a7b3b0acad9e00305b0345/) | AtomicMintContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x3111653db0e7094b111b8e435df9193b62c2c576`](./contracts/linea-59144/0x3111653db0e7094b111b8e435df9193b62c2c576/) | AtomicMintContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x523cc5f9c2c2348a0e2fb4b7efca5d0a07902831`](./contracts/linea-59144/0x523cc5f9c2c2348a0e2fb4b7efca5d0a07902831/) | AtomicMintContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x5b36fb69aedcfbceb7d0da83876c1da83a8bf1c8`](./contracts/linea-59144/0x5b36fb69aedcfbceb7d0da83876c1da83a8bf1c8/) | AtomicMintContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x8800457f79693d843fde04f7ec0a61c1250bced5`](./contracts/linea-59144/0x8800457f79693d843fde04f7ec0a61c1250bced5/) | AtomicMintContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x01593b8aaadc5238f2f5c8597bc1402eb7a48c5f`](./contracts/blast-81457/0x01593b8aaadc5238f2f5c8597bc1402eb7a48c5f/) | FixSupplyToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x25ab3efd52e6470681ce037cd546dc60726948d3`](./contracts/ethereum-1/0x25ab3efd52e6470681ce037cd546dc60726948d3/) | ProxyToMeson | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x25ab3efd52e6470681ce037cd546dc60726948d3`](./contracts/optimism-10/0x25ab3efd52e6470681ce037cd546dc60726948d3/) | ProxyToMeson | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x25ab3efd52e6470681ce037cd546dc60726948d3`](./contracts/arbitrum-42161/0x25ab3efd52e6470681ce037cd546dc60726948d3/) | ProxyToMeson | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1522de0005fddfafbfe1843b40bc2be58b3f5aec`](./contracts/bsc-56/0x1522de0005fddfafbfe1843b40bc2be58b3f5aec/) | UpgradableMeson | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 0 |
| standard_library | 8 |
| needs_review | 327 |

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
