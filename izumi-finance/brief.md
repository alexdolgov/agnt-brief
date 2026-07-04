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
| FlashModule | unknown | manta | n/a | 2 deployments: manta [`0xbd6aba...dfb5df`](./contracts/manta-169/0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df/); mode [`0xbd6aba...dfb5df`](./contracts/mode-34443/0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df/) | ⚠️ Unaudited |
| iZiSwapClassicFactory | registry | linea | n/a | 2 deployments: base `0xbd3bd9...8cfad8`; linea [`0x156d8a...eae9e9`](./contracts/linea-59144/0x156d8a0be25fa232bb637fc76255bcd00deae9e9/) | ⚠️ Unaudited |
| iZiSwapClassicRouter02 | adapter | base | n/a | 2 deployments: base [`0xcfd8a0...847399`](./contracts/base-8453/0xcfd8a067e1fa03474e79be646c5f6b6a27847399/); linea `0xe78e74...ecf212` | ⚠️ Unaudited |
| iZiSwapFactory | unknown | mode | n/a | [`0x8c7d30...1ebb08`](./contracts/mode-34443/0x8c7d3063579bdb0b90997e18a770eae32e1ebb08/) | ⚠️ Unaudited |
| izumiToken | token | ethereum | n/a | [`0x9ad372...c5c200`](./contracts/ethereum-1/0x9ad37205d608b8b219e6a2573f922094cec5c200/) | ⚠️ Unaudited |
| LimitOrderManager | governance | manta | n/a | 3 deployments: bsc `0x72fafc...d2f201`; manta [`0x02f55d...43bdb2`](./contracts/manta-169/0x02f55d53dce23b4aa962cc68b0f685f26143bdb2/); linea `0x25c030...b03e31` | ⚠️ Unaudited |
| LimitOrderManager | governance | base | n/a | [`0x1502d0...251728`](./contracts/base-8453/0x1502d025bfa624469892289d45c0352997251728/) | ⚠️ Unaudited |
| LimitOrderModule | unknown | manta | n/a | 2 deployments: manta [`0xe96526...008768`](./contracts/manta-169/0xe96526e92ee57bbd468da1721987aa988b008768/); mode [`0xe96526...008768`](./contracts/mode-34443/0xe96526e92ee57bbd468da1721987aa988b008768/) | ⚠️ Unaudited |
| LimitOrderWithSwapManager | governance | base | n/a | 2 deployments: manta `0x2db0af...efd3d7`; base [`0x19b683...54d663`](./contracts/base-8453/0x19b683a2f45012318d9b2ae1280d68d3ec54d663/) | ⚠️ Unaudited |
| LiquidityManager | governance | base | n/a | 10 deployments: ethereum `0x19b683...54d663`; bsc `0xbf55ef...c9f453`; polygon `0x1cb600...24319c`; polygon `0x33531b...aacaaf`; manta `0x19b683...54d663`; base [`0x110de3...17887d`](./contracts/base-8453/0x110de362cc436d7f54210f96b8c7652c2617887d/); mode `0x19b683...54d663`; arbitrum `0x611575...f78f0c`; arbitrum `0xad1f11...cdc16f`; scroll `0x1502d0...251728` | ⚠️ Unaudited |
| LiquidityManager | governance | linea | n/a | [`0x1cb600...24319c`](./contracts/linea-59144/0x1cb60033f61e4fc171c963f0d2d3f63ece24319c/) | ⚠️ Unaudited |
| Locker | unknown | manta | n/a | 2 deployments: manta [`0x1d3773...8bfc1b`](./contracts/manta-169/0x1d377311b342633a970e71a787c50f83858bfc1b/); mode `0xb8ddaf...3fa61f` | ⚠️ Unaudited |
| Quoter | periphery | base | n/a | 3 deployments: ethereum `0x3ef68d...f88bc4`; manta `0x33531b...aacaaf`; base [`0x2db0af...efd3d7`](./contracts/base-8453/0x2db0afd0045f3518c77ec6591a542e326befd3d7/) | ⚠️ Unaudited |
| QuoterWithLim | periphery | manta | n/a | 3 deployments: manta [`0x34bc1b...c71406`](./contracts/manta-169/0x34bc1b87f60e0a30c0e24fd7abada70436c71406/); base `0x3ef68d...f88bc4`; linea `0x3ef68d...f88bc4` | ⚠️ Unaudited |
| Swap | unknown | bsc | n/a | [`0xedf202...5aa4b8`](./contracts/bsc-56/0xedf2021f41abcfe2dea4427e1b61f4d0aa5aa4b8/) | ⚠️ Unaudited |
| Swap | unknown | base | n/a | 5 deployments: manta `0x3ef68d...f88bc4`; mantle `0x25c030...b03e31`; base [`0x02f55d...43bdb2`](./contracts/base-8453/0x02f55d53dce23b4aa962cc68b0f685f26143bdb2/); mode `0x3ef68d...f88bc4`; arbitrum `0x1cb600...24319c` | ⚠️ Unaudited |
| Swap | unknown | arbitrum | n/a | [`0x01fdea...1bed0e`](./contracts/arbitrum-42161/0x01fdea353849ca29f778b2663bcaca1d191bed0e/) | ⚠️ Unaudited |
| Swap | unknown | linea | n/a | [`0x032b24...a246d7`](./contracts/linea-59144/0x032b241de86a8660f1ae0691a4760b426ea246d7/) | ⚠️ Unaudited |
| SwapProxy | unknown | ethereum | n/a | [`0x2c6df0...1f770f`](./contracts/ethereum-1/0x2c6df0fdbce9d2ded2b52a117126f2dc991f770f/) | ⚠️ Unaudited |
| SwapProxy | unknown | arbitrum | n/a | [`0xe4a0b2...85b9dd`](./contracts/arbitrum-42161/0xe4a0b241d8345d86fb140d40c87c5fbdd685b9dd/) | ⚠️ Unaudited |
| SwapX2YModule | unknown | manta | n/a | 2 deployments: manta [`0x4d4673...a87bfe`](./contracts/manta-169/0x4d4673745aac664efb9758fdd571f40d78a87bfe/); mode [`0x4d4673...a87bfe`](./contracts/mode-34443/0x4d4673745aac664efb9758fdd571f40d78a87bfe/) | ⚠️ Unaudited |
| SwapY2XModule | unknown | manta | n/a | 2 deployments: manta [`0x32d02f...ad2b55`](./contracts/manta-169/0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55/); mode [`0x32d02f...ad2b55`](./contracts/mode-34443/0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55/) | ⚠️ Unaudited |
| veiZi | unknown | ethereum | n/a | [`0xb56a45...7fcd00`](./contracts/ethereum-1/0xb56a454d8dac2ad4cb82337887717a2a427fcd00/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x02f55d...43bdb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0d77e4...3ed61d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0de540...5f13a5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x10bba9...11fcd8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1eaa94...0eeb19` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20804c...9a383d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x25c030...b03e31` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x294ad7...f2c479` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2e2abb...4a8810` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33817f...e06992` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x37a75e...eb2a45` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3cf497...702c75` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3dc5cb...91e941` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3f5591...51db18` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x414322...1e1ef0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x42180b...179afd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4b0ec5...5d0bb7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4d4673...a87bfe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x611575...f78f0c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x759424...257ad7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7cbf7b...9c89f0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7eac05...ecd376` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81e3ee...fc0f40` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x84fbff...80c099` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x85e2d3...a13ed0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c7d30...1ebb08` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x98fcda...320a8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa29e33...63093c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa85e50...66623d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad1f11...cdc16f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb922af...dd05be` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc32dad...aeb34c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xca7e21...096037` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd65d4...53164c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcf680a...8d0399` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcfd8a0...847399` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd0bbdc...13dbb2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xda6dbe...b7fbe2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xde547f...0496c8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe4ebc5...5c51a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe68056...6a1347` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x19647d...2b0ed4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3a2932...ce2492` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x45e5f2...27c218` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4a41eb...aae41c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x611575...f78f0c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6a7cdd...acd6f2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x77ab29...06cbb0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x77c2c2...9bfb17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbf8f8e...24b188` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x3f5591...51db18` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x8c7d30...1ebb08` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xf4efdb...1e38c7` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x43ff8a...c8839a` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x483fde...ccd1f1` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x6ac81d...c16b97` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x943ac2...00f894` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xe36caa...ca8149` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | 8 deployments: cronos `0x33531b...aacaaf`; kava `0x078f71...90604b`; kava `0x138262...1aa84f`; kava `0x19b683...54d663`; kava `0x469a50...b6bb4a`; kava `0x98a3a1...783613`; kava `0xe96356...7a62a1`; kava `0xfe1c50...b1b86a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x01fdea...1bed0e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x02f55d...43bdb2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x032b24...a246d7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x19b683...54d663` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1b8c94...376ae7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x1cb600...24319c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x2db0af...efd3d7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x32d02f...ad2b55` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x33531b...aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x34bc1b...c71406` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x35f106...2b7345` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3a2932...ce2492` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3ef68d...f88bc4` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x3f5591...51db18` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x45e5f2...27c218` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4a41eb...aae41c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x4d4673...a87bfe` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x50e024...b1064e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x611575...f78f0c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x64b005...6b8e02` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x6a7cdd...acd6f2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x77ab29...06cbb0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x88867b...7068e4` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x8c7d30...1ebb08` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x96539f...4ae4a5` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xada24c...0160a1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb8ddaf...3fa61f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbd3bd9...8cfad8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xbd6aba...dfb5df` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xca7e21...096037` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe4a0b2...85b9dd` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe68056...6a1347` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe96526...008768` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xf4efdb...1e38c7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x156d8a...eae9e9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1d3773...8bfc1b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25c030...b03e31` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x32d02f...ad2b55` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x33531b...aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x344add...2ce7f7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x45e5f2...27c218` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4d4673...a87bfe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a7cdd...acd6f2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x77ab29...06cbb0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x77c2c2...9bfb17` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9bf839...51612b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbd6aba...dfb5df` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbf8f8e...24b188` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe96526...008768` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf4efdb...1e38c7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x02f55d...43bdb2` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x110de3...17887d` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x2db0af...efd3d7` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x33531b...aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x34bc1b...c71406` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x3f5591...51db18` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x611575...f78f0c` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf42c48...ab8496` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf4efdb...1e38c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x12a764...e2639f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x249b55...37aa88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x35f106...2b7345` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x50e024...b1064e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x93c22f...ff9581` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x95ef3f...4b0a78` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x9bf839...51612b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa1189a...279672` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xac9788...3a4b29` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xada24c...0160a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbd3bd9...8cfad8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xbfc452...1d3607` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc49874...170c22` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x19647d...2b0ed4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x19b683...54d663` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x1d3773...8bfc1b` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x32d02f...ad2b55` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x33531b...aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x34bc1b...c71406` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3a2932...ce2492` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x45e5f2...27c218` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4a41eb...aae41c` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x4d4673...a87bfe` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x64b005...6b8e02` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x6a7cdd...acd6f2` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x77ab29...06cbb0` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x88867b...7068e4` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x8c7d30...1ebb08` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xb8ddaf...3fa61f` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xbd3bd9...8cfad8` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xbd6aba...dfb5df` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xe96526...008768` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0xf4efdb...1e38c7` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x108dfe...4cc1fd` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x16ee1f...ed8ddd` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x199689...d492bc` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x2ade4e...006807` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x3252da...c74f09` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5162f2...28ff2d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5e7902...d0731b` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x7e9733...65f624` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x8015d2...a63d2d` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa176d2...3da513` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xa3f50f...7a1c50` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xaef41d...3b1bec` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xc825c1...cbe822` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xd413b4...b60a9f` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0xf52804...8f7ab9` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| manta | [`0xbd6aba...dfb5df`](./contracts/manta-169/0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df/) | FlashModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x156d8a...eae9e9`](./contracts/linea-59144/0x156d8a0be25fa232bb637fc76255bcd00deae9e9/) | iZiSwapClassicFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcfd8a0...847399`](./contracts/base-8453/0xcfd8a067e1fa03474e79be646c5f6b6a27847399/) | iZiSwapClassicRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x8c7d30...1ebb08`](./contracts/mode-34443/0x8c7d3063579bdb0b90997e18a770eae32e1ebb08/) | iZiSwapFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9ad372...c5c200`](./contracts/ethereum-1/0x9ad37205d608b8b219e6a2573f922094cec5c200/) | izumiToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x02f55d...43bdb2`](./contracts/manta-169/0x02f55d53dce23b4aa962cc68b0f685f26143bdb2/) | LimitOrderManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1502d0...251728`](./contracts/base-8453/0x1502d025bfa624469892289d45c0352997251728/) | LimitOrderManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xe96526...008768`](./contracts/manta-169/0xe96526e92ee57bbd468da1721987aa988b008768/) | LimitOrderModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x19b683...54d663`](./contracts/base-8453/0x19b683a2f45012318d9b2ae1280d68d3ec54d663/) | LimitOrderWithSwapManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x110de3...17887d`](./contracts/base-8453/0x110de362cc436d7f54210f96b8c7652c2617887d/) | LiquidityManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x1cb600...24319c`](./contracts/linea-59144/0x1cb60033f61e4fc171c963f0d2d3f63ece24319c/) | LiquidityManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x1d3773...8bfc1b`](./contracts/manta-169/0x1d377311b342633a970e71a787c50f83858bfc1b/) | Locker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2db0af...efd3d7`](./contracts/base-8453/0x2db0afd0045f3518c77ec6591a542e326befd3d7/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x34bc1b...c71406`](./contracts/manta-169/0x34bc1b87f60e0a30c0e24fd7abada70436c71406/) | QuoterWithLim | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xedf202...5aa4b8`](./contracts/bsc-56/0xedf2021f41abcfe2dea4427e1b61f4d0aa5aa4b8/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x02f55d...43bdb2`](./contracts/base-8453/0x02f55d53dce23b4aa962cc68b0f685f26143bdb2/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01fdea...1bed0e`](./contracts/arbitrum-42161/0x01fdea353849ca29f778b2663bcaca1d191bed0e/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x032b24...a246d7`](./contracts/linea-59144/0x032b241de86a8660f1ae0691a4760b426ea246d7/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c6df0...1f770f`](./contracts/ethereum-1/0x2c6df0fdbce9d2ded2b52a117126f2dc991f770f/) | SwapProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe4a0b2...85b9dd`](./contracts/arbitrum-42161/0xe4a0b241d8345d86fb140d40c87c5fbdd685b9dd/) | SwapProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x4d4673...a87bfe`](./contracts/manta-169/0x4d4673745aac664efb9758fdd571f40d78a87bfe/) | SwapX2YModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x32d02f...ad2b55`](./contracts/manta-169/0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55/) | SwapY2XModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb56a45...7fcd00`](./contracts/ethereum-1/0xb56a454d8dac2ad4cb82337887717a2a427fcd00/) | veiZi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
