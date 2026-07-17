# Agentic Audit Brief: iZUMi Finance

## Project Overview

- Project: iZUMi Finance (`izumi-finance`)
- Website: [https://izumi.finance/home](https://izumi.finance/home)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:23.812Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: arbitrum, base, blast, bsc, cronos, ethereum, kava, linea, manta, mantle, mode, polygon, scroll, zksync-era
- Contract surface: 189 unique implementations (223 raw deployments)
- DeFi Llama TVL: $3,493,250.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 36 project-authored contract(s) across 7 chain(s); 1 ERC20 token, 2 ERC721 NFTs; built on openzeppelin.

### Architecture

The protocol comprises 7 functional families. Its contracts share 2 common project-authored base contract(s) (base, multicall). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 383; live-surface contracts included: 223 (30 live, 193 unknown).
- Excluded by liveness: 160 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/17 (0.0%)
- Deployed-live implementations: 17 of 189 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/23
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 0
- Unverified implementations: 166
- Unique implementations: 189
- Raw deployments: 223
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

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FlashModule | unknown | manta | n/a | 2 deployments: manta [`0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df`](./contracts/manta-169/0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df/); mode [`0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df`](./contracts/mode-34443/0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df/) | ⚠️ Unaudited |
| iZiSwapClassicFactory | registry | linea | n/a | 2 deployments: base `0xbd3bd95529e0784ad973fd14928eedf3678cfad8`; linea [`0x156d8a0be25fa232bb637fc76255bcd00deae9e9`](./contracts/linea-59144/0x156d8a0be25fa232bb637fc76255bcd00deae9e9/) | ⚠️ Unaudited |
| iZiSwapClassicRouter02 | adapter | base | n/a | 2 deployments: base [`0xcfd8a067e1fa03474e79be646c5f6b6a27847399`](./contracts/base-8453/0xcfd8a067e1fa03474e79be646c5f6b6a27847399/); linea `0xe78e7447223aaed59301b44513d1d3a892ecf212` | ⚠️ Unaudited |
| iZiSwapFactory | unknown | mode | n/a | [`0x8c7d3063579bdb0b90997e18a770eae32e1ebb08`](./contracts/mode-34443/0x8c7d3063579bdb0b90997e18a770eae32e1ebb08/) | ⚠️ Unaudited |
| izumiToken | token | ethereum | n/a | [`0x9ad37205d608b8b219e6a2573f922094cec5c200`](./contracts/ethereum-1/0x9ad37205d608b8b219e6a2573f922094cec5c200/) | ⚠️ Unaudited |
| LimitOrderManager | governance | manta | n/a | 3 deployments: bsc `0x72fafc28bff27bb7a5cf70585ca1a5185ad2f201`; manta [`0x02f55d53dce23b4aa962cc68b0f685f26143bdb2`](./contracts/manta-169/0x02f55d53dce23b4aa962cc68b0f685f26143bdb2/); linea `0x25c030116feb2e7bba054b9de0915e5f51b03e31` | ⚠️ Unaudited |
| LimitOrderManager | governance | base | n/a | [`0x1502d025bfa624469892289d45c0352997251728`](./contracts/base-8453/0x1502d025bfa624469892289d45c0352997251728/) | ⚠️ Unaudited |
| LimitOrderModule | unknown | manta | n/a | 2 deployments: manta [`0xe96526e92ee57bbd468da1721987aa988b008768`](./contracts/manta-169/0xe96526e92ee57bbd468da1721987aa988b008768/); mode [`0xe96526e92ee57bbd468da1721987aa988b008768`](./contracts/mode-34443/0xe96526e92ee57bbd468da1721987aa988b008768/) | ⚠️ Unaudited |
| LimitOrderWithSwapManager | governance | base | n/a | 2 deployments: manta `0x2db0afd0045f3518c77ec6591a542e326befd3d7`; base [`0x19b683a2f45012318d9b2ae1280d68d3ec54d663`](./contracts/base-8453/0x19b683a2f45012318d9b2ae1280d68d3ec54d663/) | ⚠️ Unaudited |
| LiquidityManager | governance | base | n/a | 10 deployments: ethereum `0x19b683a2f45012318d9b2ae1280d68d3ec54d663`; bsc `0xbf55ef05412f1528dbd96ed9e7181f87d8c9f453`; polygon `0x1cb60033f61e4fc171c963f0d2d3f63ece24319c`; polygon `0x33531bdbfe34fa6fd5963d0423f7699775aacaaf`; manta `0x19b683a2f45012318d9b2ae1280d68d3ec54d663`; base [`0x110de362cc436d7f54210f96b8c7652c2617887d`](./contracts/base-8453/0x110de362cc436d7f54210f96b8c7652c2617887d/); mode `0x19b683a2f45012318d9b2ae1280d68d3ec54d663`; arbitrum `0x611575ee1fbd4f7915d0eabcc518ed396ff78f0c`; arbitrum `0xad1f11fbb288cd13819ccb9397e59faab4cdc16f`; scroll `0x1502d025bfa624469892289d45c0352997251728` | ⚠️ Unaudited |
| LiquidityManager | governance | linea | n/a | [`0x1cb60033f61e4fc171c963f0d2d3f63ece24319c`](./contracts/linea-59144/0x1cb60033f61e4fc171c963f0d2d3f63ece24319c/) | ⚠️ Unaudited |
| Locker | unknown | manta | n/a | 2 deployments: manta [`0x1d377311b342633a970e71a787c50f83858bfc1b`](./contracts/manta-169/0x1d377311b342633a970e71a787c50f83858bfc1b/); mode `0xb8ddafe7385a962a4515821248368823e93fa61f` | ⚠️ Unaudited |
| Quoter | periphery | base | n/a | 3 deployments: ethereum `0x3ef68d3f7664b2805d4e88381b64868a56f88bc4`; manta `0x33531bdbfe34fa6fd5963d0423f7699775aacaaf`; base [`0x2db0afd0045f3518c77ec6591a542e326befd3d7`](./contracts/base-8453/0x2db0afd0045f3518c77ec6591a542e326befd3d7/) | ⚠️ Unaudited |
| QuoterWithLim | periphery | manta | n/a | 3 deployments: manta [`0x34bc1b87f60e0a30c0e24fd7abada70436c71406`](./contracts/manta-169/0x34bc1b87f60e0a30c0e24fd7abada70436c71406/); base `0x3ef68d3f7664b2805d4e88381b64868a56f88bc4`; linea `0x3ef68d3f7664b2805d4e88381b64868a56f88bc4` | ⚠️ Unaudited |
| Swap | unknown | bsc | n/a | [`0xedf2021f41abcfe2dea4427e1b61f4d0aa5aa4b8`](./contracts/bsc-56/0xedf2021f41abcfe2dea4427e1b61f4d0aa5aa4b8/) | ⚠️ Unaudited |
| Swap | unknown | base | n/a | 5 deployments: manta `0x3ef68d3f7664b2805d4e88381b64868a56f88bc4`; mantle `0x25c030116feb2e7bba054b9de0915e5f51b03e31`; base [`0x02f55d53dce23b4aa962cc68b0f685f26143bdb2`](./contracts/base-8453/0x02f55d53dce23b4aa962cc68b0f685f26143bdb2/); mode `0x3ef68d3f7664b2805d4e88381b64868a56f88bc4`; arbitrum `0x1cb60033f61e4fc171c963f0d2d3f63ece24319c` | ⚠️ Unaudited |
| Swap | unknown | arbitrum | n/a | [`0x01fdea353849ca29f778b2663bcaca1d191bed0e`](./contracts/arbitrum-42161/0x01fdea353849ca29f778b2663bcaca1d191bed0e/) | ⚠️ Unaudited |
| Swap | unknown | linea | n/a | [`0x032b241de86a8660f1ae0691a4760b426ea246d7`](./contracts/linea-59144/0x032b241de86a8660f1ae0691a4760b426ea246d7/) | ⚠️ Unaudited |
| SwapProxy | unknown | ethereum | n/a | [`0x2c6df0fdbce9d2ded2b52a117126f2dc991f770f`](./contracts/ethereum-1/0x2c6df0fdbce9d2ded2b52a117126f2dc991f770f/) | ⚠️ Unaudited |
| SwapProxy | unknown | arbitrum | n/a | [`0xe4a0b241d8345d86fb140d40c87c5fbdd685b9dd`](./contracts/arbitrum-42161/0xe4a0b241d8345d86fb140d40c87c5fbdd685b9dd/) | ⚠️ Unaudited |
| SwapX2YModule | unknown | manta | n/a | 2 deployments: manta [`0x4d4673745aac664efb9758fdd571f40d78a87bfe`](./contracts/manta-169/0x4d4673745aac664efb9758fdd571f40d78a87bfe/); mode [`0x4d4673745aac664efb9758fdd571f40d78a87bfe`](./contracts/mode-34443/0x4d4673745aac664efb9758fdd571f40d78a87bfe/) | ⚠️ Unaudited |
| SwapY2XModule | unknown | manta | n/a | 2 deployments: manta [`0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55`](./contracts/manta-169/0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55/); mode [`0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55`](./contracts/mode-34443/0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55/) | ⚠️ Unaudited |
| veiZi | unknown | ethereum | n/a | [`0xb56a454d8dac2ad4cb82337887717a2a427fcd00`](./contracts/ethereum-1/0xb56a454d8dac2ad4cb82337887717a2a427fcd00/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (166)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x02f55d53dce23b4aa962cc68b0f685f26143bdb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d77e48e4618ea4ce92ce32b345469dbcd3ed61d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0de540932dc28b35756029dacb48e5835d5f13a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x10bba92db5b4116d2e98a0827254d9d56e11fcd8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1eaa949444f5a4bee40d25d31039ecddda0eeb19` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20804c62079569e1491fa948db005f93fa9a383d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x25c030116feb2e7bba054b9de0915e5f51b03e31` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x294ad74d994d9a59689529cf911bb25f5cf2c479` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2e2abbfb7913669b930a4ecfe130863c524a8810` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33817f7e0d615bb494d1881fad9643457ce06992` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37a75eaca0d88317561d5e0db83a07cf8deb2a45` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3cf497013c92cd550c9960a07a2909bce7702c75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3dc5cb8819878f082d475867beb3bf523f91e941` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f559139c2fc7b97ad6fe9b4d1f75149f551db18` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x41432298d3f35be721bd05680aad4fc8e91e1ef0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x42180b57cfe9da10ef0d8278ab26d21aa3179afd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b0ec52a3e0f52d936046232cd8b96a6895d0bb7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d4673745aac664efb9758fdd571f40d78a87bfe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x611575ee1fbd4f7915d0eabcc518ed396ff78f0c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x759424dd2d409b4d6b39a83199177d07dc257ad7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7cbf7b96a7069ba384e10ccb4f556debab9c89f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7eac0539dc9c0d76454bff9be3538bc4deecd376` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81e3ee96fefd3b7564626aa8b019de9fc9fc0f40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84fbff47cb1f54966dde25f217a0e6b04880c099` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x85e2d3fea3433b1cd3d255c94fa9fba6d5a13ed0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c7d3063579bdb0b90997e18a770eae32e1ebb08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98fcdaa09f115d176ed2eb0f681b66f002320a8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa29e33cb38ed47e67064ba1a088795c92563093c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa85e50403cf62519d1f35c2ad655911c7a66623d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad1f11fbb288cd13819ccb9397e59faab4cdc16f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb922af73b899a4f0b9761b0c4407f1250fdd05be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc32daded402f1b8d71652b61afefa74b71aeb34c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xca7e21764cd8f7c1ec40e651e25da68aed096037` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd65d409fb1a0aff0ef86d2c5189b169d053164c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcf680aef8fb265bde3a2918b17a4aabb3e8d0399` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcfd8a067e1fa03474e79be646c5f6b6a27847399` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd0bbdcd070387c74d7d06057098b9f04d713dbb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xda6dbe8951523391c9f2d1e6cb91fcc5a7b7fbe2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde547f5f8ac340872ac184e5d76c09436d0496c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4ebc5c7ee8d1a3d4f870d9907cd25edd25c51a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6805638db944ea605e774e72c6f0d15fb6a1347` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x19647d5f84308ee780cc5e3da6e4aee8e12b0ed4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3a2932a74e511c9dc4cad60e06ee6d3690ce2492` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x45e5f26451cdb01b0fa1f8582e0aad9a6f27c218` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4a41ebea62e7ab70413356d30df73ca803aae41c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x611575ee1fbd4f7915d0eabcc518ed396ff78f0c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6a7cdd0cc87ec02ed85c196e57babe1bc0acd6f2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x77ab297da4f3667059ef0c32f5bc657f1006cbb0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x77c2c2ece8f323abb6753b85d6b71c82039bfb17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbf8f8ef2d2a534773c61682ea7cf5323a324b188` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x3f559139c2fc7b97ad6fe9b4d1f75149f551db18` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x8c7d3063579bdb0b90997e18a770eae32e1ebb08` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xf4efdb5a1e852f78e807fae7100b1d38351e38c7` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x43ff8a10b6678462265b00286796e88f03c8839a` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x483fde31bce3dcc168e23a870831b50ce2ccd1f1` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x6ac81d4c43c86c8dbd4842c1eb0fd1a1c2c16b97` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x943ac2310d9bc703d6ab5e5e76876e212100f894` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xe36caa16d78ef3233848a542d437c1c540ca8149` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | 8 deployments: cronos `0x33531bdbfe34fa6fd5963d0423f7699775aacaaf`; kava `0x078f712f038a95beea94f036cadb49188a90604b`; kava `0x1382628e018010035999a1ff330447a0751aa84f`; kava `0x19b683a2f45012318d9b2ae1280d68d3ec54d663`; kava `0x469a5066578e22a1222cc78b2ccaca602db6bb4a`; kava `0x98a3a18583138474aedd2ceec034cba1fa783613`; kava `0xe9635693b7606f1914c0cd698065ec84267a62a1`; kava `0xfe1c507be86f977b61d12d1da3c95d0deeb1b86a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x01fdea353849ca29f778b2663bcaca1d191bed0e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x02f55d53dce23b4aa962cc68b0f685f26143bdb2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x032b241de86a8660f1ae0691a4760b426ea246d7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x19b683a2f45012318d9b2ae1280d68d3ec54d663` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1b8c940be8a5a9f1abd9c24ea337978f44376ae7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1cb60033f61e4fc171c963f0d2d3f63ece24319c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2db0afd0045f3518c77ec6591a542e326befd3d7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x33531bdbfe34fa6fd5963d0423f7699775aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x34bc1b87f60e0a30c0e24fd7abada70436c71406` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x35f106cca448294e1efa8d0358cd4447252b7345` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3a2932a74e511c9dc4cad60e06ee6d3690ce2492` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3ef68d3f7664b2805d4e88381b64868a56f88bc4` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3f559139c2fc7b97ad6fe9b4d1f75149f551db18` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x45e5f26451cdb01b0fa1f8582e0aad9a6f27c218` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4a41ebea62e7ab70413356d30df73ca803aae41c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4d4673745aac664efb9758fdd571f40d78a87bfe` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x50e024bd504f066fd7f343d6d048f4bd97b1064e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x611575ee1fbd4f7915d0eabcc518ed396ff78f0c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x64b005ed986ed5d6aed7125f49e61083c46b8e02` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x6a7cdd0cc87ec02ed85c196e57babe1bc0acd6f2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x77ab297da4f3667059ef0c32f5bc657f1006cbb0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x88867bf3bb3321d8c7da71a8eab70680037068e4` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x8c7d3063579bdb0b90997e18a770eae32e1ebb08` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x96539f87ca176c9f6180d65bc4c10fca264ae4a5` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xada24c4d35252001dd0947570e85de01650160a1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb8ddafe7385a962a4515821248368823e93fa61f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbd3bd95529e0784ad973fd14928eedf3678cfad8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xca7e21764cd8f7c1ec40e651e25da68aed096037` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe4a0b241d8345d86fb140d40c87c5fbdd685b9dd` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe6805638db944ea605e774e72c6f0d15fb6a1347` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe96526e92ee57bbd468da1721987aa988b008768` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf4efdb5a1e852f78e807fae7100b1d38351e38c7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x156d8a0be25fa232bb637fc76255bcd00deae9e9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1d377311b342633a970e71a787c50f83858bfc1b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25c030116feb2e7bba054b9de0915e5f51b03e31` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x33531bdbfe34fa6fd5963d0423f7699775aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x344add21b136b09051fb061881ec7971c92ce7f7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x45e5f26451cdb01b0fa1f8582e0aad9a6f27c218` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4d4673745aac664efb9758fdd571f40d78a87bfe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a7cdd0cc87ec02ed85c196e57babe1bc0acd6f2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x77ab297da4f3667059ef0c32f5bc657f1006cbb0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x77c2c2ece8f323abb6753b85d6b71c82039bfb17` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9bf8399c9f5b777cba2052f83e213ff59e51612b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbf8f8ef2d2a534773c61682ea7cf5323a324b188` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe96526e92ee57bbd468da1721987aa988b008768` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf4efdb5a1e852f78e807fae7100b1d38351e38c7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x02f55d53dce23b4aa962cc68b0f685f26143bdb2` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x110de362cc436d7f54210f96b8c7652c2617887d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2db0afd0045f3518c77ec6591a542e326befd3d7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x33531bdbfe34fa6fd5963d0423f7699775aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x34bc1b87f60e0a30c0e24fd7abada70436c71406` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3f559139c2fc7b97ad6fe9b4d1f75149f551db18` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x611575ee1fbd4f7915d0eabcc518ed396ff78f0c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf42c48f971bdaa130573039b6c940212eeab8496` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf4efdb5a1e852f78e807fae7100b1d38351e38c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x12a76434182c8caf7856ce1410cd8abfc5e2639f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x249b559c94cb79032bd724e8de135860cc37aa88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x35f106cca448294e1efa8d0358cd4447252b7345` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x50e024bd504f066fd7f343d6d048f4bd97b1064e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x93c22fbeff4448f2fb6e432579b0638838ff9581` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x95ef3f53c2731043697346a63ad20868954b0a78` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9bf8399c9f5b777cba2052f83e213ff59e51612b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa1189a420662105bef5be444b8b1e0a7d8279672` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac9788cfea201950db91d7db6f28c448cf3a4b29` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xada24c4d35252001dd0947570e85de01650160a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbd3bd95529e0784ad973fd14928eedf3678cfad8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbfc452f0812450bc8fa96bc33ffe3c7e291d3607` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc4987497deddd529e689809ad213cc7645170c22` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x19647d5f84308ee780cc5e3da6e4aee8e12b0ed4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x19b683a2f45012318d9b2ae1280d68d3ec54d663` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1d377311b342633a970e71a787c50f83858bfc1b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x33531bdbfe34fa6fd5963d0423f7699775aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x34bc1b87f60e0a30c0e24fd7abada70436c71406` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3a2932a74e511c9dc4cad60e06ee6d3690ce2492` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x45e5f26451cdb01b0fa1f8582e0aad9a6f27c218` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4a41ebea62e7ab70413356d30df73ca803aae41c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4d4673745aac664efb9758fdd571f40d78a87bfe` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x64b005ed986ed5d6aed7125f49e61083c46b8e02` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6a7cdd0cc87ec02ed85c196e57babe1bc0acd6f2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x77ab297da4f3667059ef0c32f5bc657f1006cbb0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x88867bf3bb3321d8c7da71a8eab70680037068e4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x8c7d3063579bdb0b90997e18a770eae32e1ebb08` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb8ddafe7385a962a4515821248368823e93fa61f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xbd3bd95529e0784ad973fd14928eedf3678cfad8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe96526e92ee57bbd468da1721987aa988b008768` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf4efdb5a1e852f78e807fae7100b1d38351e38c7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x108dfe525bd3eb431f4be198586d7970f84cc1fd` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x16ee1f1bd7e7e206d127bf7b45a6f7e17ded8ddd` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x1996891332a209f9914b1645a4749e924bd492bc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2ade4e559d057b225cf2783311350470a5006807` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3252da4d17dd11e0326d82497da26ae404c74f09` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5162f29e9626cf7186ec40ab97d92230b428ff2d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5e7902adf0ea0ff827683cc1d431f740cad0731b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7e97337af2c13ccc132ead0bb71983a24065f624` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8015d240ed4ba76c6ab8ffb410b1fb0b83a63d2d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa176d20069a3c49afb661ea0017bed1e5e3da513` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa3f50feba40dd3e884688c0af72c4054d07a1c50` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xaef41d6a8f02400096388cc8c234aaa3d43b1bec` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc825c19b35d6f03d473e1ac6c83e58735bcbe822` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd413b415bf8449d6db8238826579647bfdb60a9f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf52804a96a6a640837ffa90f2c0f5484938f7ab9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| manta | [`0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df`](./contracts/manta-169/0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df/) | FlashModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x156d8a0be25fa232bb637fc76255bcd00deae9e9`](./contracts/linea-59144/0x156d8a0be25fa232bb637fc76255bcd00deae9e9/) | iZiSwapClassicFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcfd8a067e1fa03474e79be646c5f6b6a27847399`](./contracts/base-8453/0xcfd8a067e1fa03474e79be646c5f6b6a27847399/) | iZiSwapClassicRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x8c7d3063579bdb0b90997e18a770eae32e1ebb08`](./contracts/mode-34443/0x8c7d3063579bdb0b90997e18a770eae32e1ebb08/) | iZiSwapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ad37205d608b8b219e6a2573f922094cec5c200`](./contracts/ethereum-1/0x9ad37205d608b8b219e6a2573f922094cec5c200/) | izumiToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x02f55d53dce23b4aa962cc68b0f685f26143bdb2`](./contracts/manta-169/0x02f55d53dce23b4aa962cc68b0f685f26143bdb2/) | LimitOrderManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1502d025bfa624469892289d45c0352997251728`](./contracts/base-8453/0x1502d025bfa624469892289d45c0352997251728/) | LimitOrderManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xe96526e92ee57bbd468da1721987aa988b008768`](./contracts/manta-169/0xe96526e92ee57bbd468da1721987aa988b008768/) | LimitOrderModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x19b683a2f45012318d9b2ae1280d68d3ec54d663`](./contracts/base-8453/0x19b683a2f45012318d9b2ae1280d68d3ec54d663/) | LimitOrderWithSwapManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x110de362cc436d7f54210f96b8c7652c2617887d`](./contracts/base-8453/0x110de362cc436d7f54210f96b8c7652c2617887d/) | LiquidityManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1cb60033f61e4fc171c963f0d2d3f63ece24319c`](./contracts/linea-59144/0x1cb60033f61e4fc171c963f0d2d3f63ece24319c/) | LiquidityManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x1d377311b342633a970e71a787c50f83858bfc1b`](./contracts/manta-169/0x1d377311b342633a970e71a787c50f83858bfc1b/) | Locker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2db0afd0045f3518c77ec6591a542e326befd3d7`](./contracts/base-8453/0x2db0afd0045f3518c77ec6591a542e326befd3d7/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x34bc1b87f60e0a30c0e24fd7abada70436c71406`](./contracts/manta-169/0x34bc1b87f60e0a30c0e24fd7abada70436c71406/) | QuoterWithLim | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xedf2021f41abcfe2dea4427e1b61f4d0aa5aa4b8`](./contracts/bsc-56/0xedf2021f41abcfe2dea4427e1b61f4d0aa5aa4b8/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02f55d53dce23b4aa962cc68b0f685f26143bdb2`](./contracts/base-8453/0x02f55d53dce23b4aa962cc68b0f685f26143bdb2/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01fdea353849ca29f778b2663bcaca1d191bed0e`](./contracts/arbitrum-42161/0x01fdea353849ca29f778b2663bcaca1d191bed0e/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x032b241de86a8660f1ae0691a4760b426ea246d7`](./contracts/linea-59144/0x032b241de86a8660f1ae0691a4760b426ea246d7/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c6df0fdbce9d2ded2b52a117126f2dc991f770f`](./contracts/ethereum-1/0x2c6df0fdbce9d2ded2b52a117126f2dc991f770f/) | SwapProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe4a0b241d8345d86fb140d40c87c5fbdd685b9dd`](./contracts/arbitrum-42161/0xe4a0b241d8345d86fb140d40c87c5fbdd685b9dd/) | SwapProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x4d4673745aac664efb9758fdd571f40d78a87bfe`](./contracts/manta-169/0x4d4673745aac664efb9758fdd571f40d78a87bfe/) | SwapX2YModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55`](./contracts/manta-169/0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55/) | SwapY2XModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb56a454d8dac2ad4cb82337887717a2a427fcd00`](./contracts/ethereum-1/0xb56a454d8dac2ad4cb82337887717a2a427fcd00/) | veiZi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 23 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 166 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
