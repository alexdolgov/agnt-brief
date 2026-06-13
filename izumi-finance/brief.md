# Agentic Audit Brief: iZUMi Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 33.2% over 90 days

## Project Overview

- Project: iZUMi Finance (`izumi-finance`)
- Website: [https://izumi.finance/home](https://izumi.finance/home)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-13T22:54:14.683Z
- Pipeline run: v2-pipeline-2026-06-13-e4a349-ab91
- Chains: arbitrum, aurora, base, blast, bsc, cronos, ethereum, kava, linea, manta, mantle, mode, polygon, scroll, zksync-era
- Contract surface: 187 unique implementations (334 raw deployments)
- DeFi Llama TVL: $3,450,723.00
- On-chain TVL (included contracts): $2,759,198.18
- TVL by chain: Ethereum $2,759,198.18

## Project Description

iZUMi Finance is a multi-chain DeFi protocol positioned around Liquidity-as-a-Service, with iZiSwap concentrated-liquidity trading, liquidity incentives/staking and Pool2-style reward programs, and ve/iZi tokenomics components where supported by deployed contracts and documentation.

### Architecture

iZiSwap and iZUMi LiquidBox share the iZi token, which is earned through liquidity provision on iZiSwap and staked in LiquidBox for governance power and boosted rewards. The veiZi contract manages voting escrow for the token, linking the two families.

## Audit Coverage Summary

- Verified implementations audited: 0/24 (0.0%)
- Verified + Unaudited implementations: 21
- Verified by bytecode match: 3
- Unverified implementations: 163
- Unique implementations: 187
- Raw deployments: 334
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,759,198.18
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $2,759,198.18 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (21)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| izumiToken | token | ethereum | [`0x9ad372...c5c200`](./contracts/ethereum-1/0x9ad37205d608b8b219e6a2573f922094cec5c200/) | ⚠️ Unaudited |
| ArbitrumLiquidityManagerAccessControl | governance | arbitrum | [`0x19647d...2b0ed4`](./contracts/arbitrum-42161/0x19647d5f84308ee780cc5e3da6e4aee8e12b0ed4/) | ⚠️ Unaudited |
| ArbitrumNonfungiblePositionManagerAccessControl | governance | arbitrum | [`0x77c2c2...9bfb17`](./contracts/arbitrum-42161/0x77c2c2ece8f323abb6753b85d6b71c82039bfb17/) | ⚠️ Unaudited |
| Box | unknown | arbitrum | 4 deployments: ethereum `0x34bc1b...c71406`; polygon `0x14323a...4d1be2`; arbitrum [`0x032b24...a246d7`](./contracts/arbitrum-42161/0x032b241de86a8660f1ae0691a4760b426ea246d7/); arbitrum `0x3ef68d...f88bc4` | ⚠️ Unaudited |
| FlashModule | unknown | ethereum | 11 deployments: ethereum [`0x110de3...17887d`](./contracts/ethereum-1/0x110de362cc436d7f54210f96b8c7652c2617887d/); polygon `0x2db0af...efd3d7`; manta `0xbd6aba...dfb5df`; mode `0xbd6aba...dfb5df`; arbitrum `0x2c6df0...1f770f`; arbitrum `0x4a41eb...aae41c`; arbitrum `0xbd6aba...dfb5df`; aurora `0x1d3773...8bfc1b`; aurora `0x2c6df0...1f770f`; aurora `0xac9788...3a4b29`; aurora `0xad1f11...cdc16f` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | scroll | [`0x87cc9d...f64e14`](./contracts/scroll-534352/0x87cc9dcafe74a3cf333f0ea7bc56e52aecf64e14/) | ⚠️ Unaudited |
| iZiSwapClassicRouter02 | adapter | base | 4 deployments: base [`0x93c22f...ff9581`](./contracts/base-8453/0x93c22fbeff4448f2fb6e432579b0638838ff9581/); base `0xcfd8a0...847399`; linea `0xad1f11...cdc16f`; linea `0xe78e74...ecf212` | ⚠️ Unaudited |
| LimitOrderManager | governance | ethereum | 11 deployments: ethereum [`0x02f55d...43bdb2`](./contracts/ethereum-1/0x02f55d53dce23b4aa962cc68b0f685f26143bdb2/); bsc `0x72fafc...d2f201`; polygon `0x25c030...b03e31`; polygon `0x34bc1b...c71406`; manta [`0x02f55d...43bdb2`](./contracts/manta-169/0x02f55d53dce23b4aa962cc68b0f685f26143bdb2/); base `0x1502d0...251728`; arbitrum `0x1502d0...251728`; arbitrum `0x156d8a...eae9e9`; arbitrum `0xca7e21...096037`; linea `0x1502d0...251728`; linea `0x25c030...b03e31` | ⚠️ Unaudited |
| LimitOrderModule | unknown | polygon | 8 deployments: ethereum `0x8c7d30...1ebb08`; polygon [`0x02f55d...43bdb2`](./contracts/polygon-137/0x02f55d53dce23b4aa962cc68b0f685f26143bdb2/); manta `0xe96526...008768`; mode `0xe96526...008768`; arbitrum `0x04830c...2c9148`; arbitrum `0x6a7cdd...acd6f2`; arbitrum `0xe96526...008768`; aurora `0xcfd8a0...847399` | ⚠️ Unaudited |
| LimitOrderWithSwapManager | governance | base | 5 deployments: polygon `0x1d3773...8bfc1b`; manta `0x2db0af...efd3d7`; base [`0x19b683...54d663`](./contracts/base-8453/0x19b683a2f45012318d9b2ae1280d68d3ec54d663/); arbitrum `0x3a2932...ce2492`; arbitrum `0xe78e74...ecf212` | ⚠️ Unaudited |
| LiquidityManager | governance | base | 20 deployments: ethereum `0x19b683...54d663`; bsc `0xbf55ef...c9f453`; polygon `0x1cb600...24319c`; polygon `0x33531b...aacaaf`; manta `0x19b683...54d663`; mantle `0x1502d0...251728`; mantle `0x93c22f...ff9581`; base [`0x110de3...17887d`](./contracts/base-8453/0x110de362cc436d7f54210f96b8c7652c2617887d/); mode `0x19b683...54d663`; arbitrum [`0x110de3...17887d`](./contracts/arbitrum-42161/0x110de362cc436d7f54210f96b8c7652c2617887d/); arbitrum `0x611575...f78f0c`; arbitrum `0xad1f11...cdc16f`; linea [`0x110de3...17887d`](./contracts/linea-59144/0x110de362cc436d7f54210f96b8c7652c2617887d/); linea `0x1cb600...24319c`; scroll `0x1502d0...251728`; aurora `0x1502d0...251728`; aurora `0x19b683...54d663`; aurora `0x61a411...579aea`; aurora `0xe68056...6a1347`; aurora `0xe78e74...ecf212` | ⚠️ Unaudited |
| LiquidityModule | unknown | polygon | 6 deployments: ethereum `0xbd6aba...dfb5df`; polygon [`0x19b683...54d663`](./contracts/polygon-137/0x19b683a2f45012318d9b2ae1280d68d3ec54d663/); arbitrum `0x3f5591...51db18`; arbitrum `0x77ab29...06cbb0`; arbitrum `0xf4efdb...1e38c7`; aurora `0xbd3bd9...8cfad8` | ⚠️ Unaudited |
| Locker | unknown | base | 5 deployments: manta `0x1d3773...8bfc1b`; base [`0x1cb600...24319c`](./contracts/base-8453/0x1cb60033f61e4fc171c963f0d2d3f63ece24319c/); mode `0xb8ddaf...3fa61f`; arbitrum `0x795fa4...b3c838`; linea `0x93c22f...ff9581` | ⚠️ Unaudited |
| Quoter | periphery | arbitrum | 10 deployments: ethereum `0x3ef68d...f88bc4`; polygon `0x04830c...2c9148`; polygon `0xe68056...6a1347`; manta `0x33531b...aacaaf`; base `0x2db0af...efd3d7`; arbitrum [`0x02f55d...43bdb2`](./contracts/arbitrum-42161/0x02f55d53dce23b4aa962cc68b0f685f26143bdb2/); arbitrum `0x25c030...b03e31`; arbitrum `0x96539f...4ae4a5`; linea `0x2db0af...efd3d7`; linea `0xe68056...6a1347` | ⚠️ Unaudited |
| QuoterWithLim | periphery | arbitrum | 11 deployments: ethereum `0x33531b...aacaaf`; polygon `0x2c6df0...1f770f`; polygon `0xe4a0b2...85b9dd`; manta `0x34bc1b...c71406`; base `0x3ef68d...f88bc4`; arbitrum [`0x1d3773...8bfc1b`](./contracts/arbitrum-42161/0x1d377311b342633a970e71a787c50f83858bfc1b/); arbitrum `0x2db0af...efd3d7`; arbitrum `0x64b005...6b8e02`; linea `0x3ef68d...f88bc4`; linea `0xe4a0b2...85b9dd`; aurora `0x2db0af...efd3d7` | ⚠️ Unaudited |
| Swap | unknown | arbitrum | 17 deployments: ethereum `0x2db0af...efd3d7`; bsc `0xedf202...5aa4b8`; polygon `0x032b24...a246d7`; polygon `0x3f5591...51db18`; polygon `0xb8ddaf...3fa61f`; manta `0x3ef68d...f88bc4`; mantle `0x1d3773...8bfc1b`; mantle `0x25c030...b03e31`; base `0x02f55d...43bdb2`; mode `0x3ef68d...f88bc4`; arbitrum [`0x01fdea...1bed0e`](./contracts/arbitrum-42161/0x01fdea353849ca29f778b2663bcaca1d191bed0e/); arbitrum `0x19b683...54d663`; arbitrum `0x1cb600...24319c`; arbitrum `0xd7de11...993de0`; linea `0x02f55d...43bdb2`; linea `0x032b24...a246d7`; aurora `0x96539f...4ae4a5` | ⚠️ Unaudited |
| SwapProxy | unknown | ethereum | 3 deployments: ethereum [`0x04830c...2c9148`](./contracts/ethereum-1/0x04830cfced9772b8acbaf76cfc7a630ad82c9148/); ethereum `0x2c6df0...1f770f`; arbitrum `0xe4a0b2...85b9dd` | ⚠️ Unaudited |
| SwapRouter | adapter | arbitrum | 4 deployments: polygon `0xf42c48...ab8496`; base `0x4a41eb...aae41c`; arbitrum [`0x1b8c94...376ae7`](./contracts/arbitrum-42161/0x1b8c940be8a5a9f1abd9c24ea337978f44376ae7/); linea `0x9bf839...51612b` | ⚠️ Unaudited |
| SwapX2YModule | unknown | polygon | 17 deployments: ethereum `0xf4efdb...1e38c7`; polygon [`0x110de3...17887d`](./contracts/polygon-137/0x110de362cc436d7f54210f96b8c7652c2617887d/); polygon `0x32d02f...ad2b55`; polygon `0x4d4673...a87bfe`; polygon `0x8c7d30...1ebb08`; polygon `0xbd6aba...dfb5df`; polygon `0xe96526...008768`; polygon `0xf4efdb...1e38c7`; manta `0x4d4673...a87bfe`; mode `0x4d4673...a87bfe`; arbitrum `0x33531b...aacaaf`; arbitrum `0x4d4673...a87bfe`; arbitrum `0x88867b...7068e4`; aurora `0x33531b...aacaaf`; aurora `0x611575...f78f0c`; aurora `0x9bf839...51612b`; aurora `0xf42c48...ab8496` | ⚠️ Unaudited |
| SwapY2XModule | unknown | aurora | 10 deployments: ethereum `0xe96526...008768`; polygon `0x1502d0...251728`; manta `0x32d02f...ad2b55`; mode `0x32d02f...ad2b55`; arbitrum `0x32d02f...ad2b55`; arbitrum `0x34bc1b...c71406`; arbitrum `0xb8ddaf...3fa61f`; aurora [`0x12a764...e2639f`](./contracts/aurora-1313161554/0x12a76434182c8caf7856ce1410cd8abfc5e2639f/); aurora `0x344add...2ce7f7`; aurora `0xca7e21...096037` | ⚠️ Unaudited |
| veiZi | unknown | ethereum | [`0xb56a45...7fcd00`](./contracts/ethereum-1/0xb56a454d8dac2ad4cb82337887717a2a427fcd00/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (3)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| iZiSwapClassicFactory | registry | linea | 5 deployments: mantle `0x50e024...b1064e`; base `0xbd3bd9...8cfad8`; base `0xd7de11...993de0`; linea [`0x156d8a...eae9e9`](./contracts/linea-59144/0x156d8a0be25fa232bb637fc76255bcd00deae9e9/); linea `0xcfd8a0...847399` | ⚠️ Unaudited (bytecode match) |
| iZiSwapFactory | registry | arbitrum | 12 deployments: ethereum `0x1502d0...251728`; bsc `0x93bb94...844422`; polygon `0x3ef68d...f88bc4`; polygon `0xca7e21...096037`; mantle `0x8c7d30...1ebb08`; base `0x8c7d30...1ebb08`; mode `0x8c7d30...1ebb08`; arbitrum [`0x14323a...4d1be2`](./contracts/arbitrum-42161/0x14323afbc2b82fe58f0d9c203830ee969b4d1be2/); arbitrum `0x45e5f2...27c218`; arbitrum `0x8c7d30...1ebb08`; arbitrum `0xcfd8a0...847399`; aurora `0x156d8a...eae9e9` | ⚠️ Unaudited (bytecode match) |
| UniversalSwapRouter | adapter | base | 3 deployments: mantle `0x1b8c94...376ae7`; base [`0x12a764...e2639f`](./contracts/base-8453/0x12a76434182c8caf7856ce1410cd8abfc5e2639f/); base `0xad1f11...cdc16f` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (163)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | cronos | `0x33531b...aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x19647d...2b0ed4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x3a2932...ce2492` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x45e5f2...27c218` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x4a41eb...aae41c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x611575...f78f0c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x6a7cdd...acd6f2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x77ab29...06cbb0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0x77c2c2...9bfb17` | ❓ Unverified |
| UnnamedContract | unknown | polygon | `0xbf8f8e...24b188` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x3f5591...51db18` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0x8c7d30...1ebb08` | ❓ Unverified |
| UnnamedContract | unknown | manta | `0xf4efdb...1e38c7` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x43ff8a...c8839a` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x483fde...ccd1f1` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x575bfc...5a6957` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x6ac81d...c16b97` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0x943ac2...00f894` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | `0xe36caa...ca8149` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x078f71...90604b` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x138262...1aa84f` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x19b683...54d663` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x469a50...b6bb4a` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0x98a3a1...783613` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0xe96356...7a62a1` | ❓ Unverified |
| UnnamedContract | unknown | kava | `0xfe1c50...b1b86a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x01fdea...1bed0e` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x02f55d...43bdb2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x032b24...a246d7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x19b683...54d663` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x1cb600...24319c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x2db0af...efd3d7` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x32d02f...ad2b55` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x33531b...aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x34bc1b...c71406` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x35f106...2b7345` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x3a2932...ce2492` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x3ef68d...f88bc4` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x3f5591...51db18` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x45e5f2...27c218` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x4a41eb...aae41c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x4d4673...a87bfe` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x611575...f78f0c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x64b005...6b8e02` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x6a7cdd...acd6f2` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x77ab29...06cbb0` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x88867b...7068e4` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0x96539f...4ae4a5` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xada24c...0160a1` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xb8ddaf...3fa61f` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xbd3bd9...8cfad8` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xbd6aba...dfb5df` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xca7e21...096037` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xe4a0b2...85b9dd` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xe68056...6a1347` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xe96526...008768` | ❓ Unverified |
| UnnamedContract | unknown | mantle | `0xf4efdb...1e38c7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x156d8a...eae9e9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1d3773...8bfc1b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x25c030...b03e31` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x32d02f...ad2b55` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x33531b...aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x344add...2ce7f7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x45e5f2...27c218` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4d4673...a87bfe` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6a7cdd...acd6f2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x77ab29...06cbb0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x77c2c2...9bfb17` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9bf839...51612b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbd6aba...dfb5df` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbf8f8e...24b188` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe96526...008768` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf4efdb...1e38c7` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x02f55d...43bdb2` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x110de3...17887d` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x2db0af...efd3d7` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x33531b...aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x34bc1b...c71406` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x3f5591...51db18` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0x611575...f78f0c` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xf42c48...ab8496` | ❓ Unverified |
| UnnamedContract | unknown | mode | `0xf4efdb...1e38c7` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x12a764...e2639f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x249b55...37aa88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x35f106...2b7345` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x50e024...b1064e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x93c22f...ff9581` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x95ef3f...4b0a78` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x9bf839...51612b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa1189a...279672` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xac9788...3a4b29` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xada24c...0160a1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbd3bd9...8cfad8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xbfc452...1d3607` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc49874...170c22` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x19647d...2b0ed4` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x19b683...54d663` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x1d3773...8bfc1b` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x32d02f...ad2b55` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x33531b...aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x34bc1b...c71406` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x3a2932...ce2492` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x45e5f2...27c218` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x4a41eb...aae41c` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x4d4673...a87bfe` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x64b005...6b8e02` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x6a7cdd...acd6f2` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x77ab29...06cbb0` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x88867b...7068e4` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0x8c7d30...1ebb08` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xb8ddaf...3fa61f` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xbd3bd9...8cfad8` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xbd6aba...dfb5df` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xe96526...008768` | ❓ Unverified |
| UnnamedContract | unknown | linea | `0xf4efdb...1e38c7` | ❓ Unverified |
| UnnamedContract | unknown | blast | `0x5e7902...d0731b` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x01fdea...1bed0e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x02f55d...43bdb2` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x032b24...a246d7` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x04830c...2c9148` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x05dcaf...643f60` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x110de3...17887d` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x14323a...4d1be2` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x19647d...2b0ed4` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x1cb600...24319c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x25c030...b03e31` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x32d02f...ad2b55` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x34bc1b...c71406` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x3a2932...ce2492` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x3ef68d...f88bc4` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x3f5591...51db18` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x41be13...a6e597` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x45e5f2...27c218` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x4a41eb...aae41c` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x4d4673...a87bfe` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x50e024...b1064e` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x5f6af6...b847eb` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x6279cd...9de0bb` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x64b005...6b8e02` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x6a7cdd...acd6f2` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x731c54...21d0c3` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x759424...257ad7` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x77ab29...06cbb0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x77c2c2...9bfb17` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x79d175...153e39` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x88867b...7068e4` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x8c7d30...1ebb08` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x93c22f...ff9581` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0x9e0e3d...e88414` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xa7b45d...e83068` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xb8ddaf...3fa61f` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xb922af...dd05be` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xbd6aba...dfb5df` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xbf8f8e...24b188` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xc49874...170c22` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xce326a...526a74` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xd7de11...993de0` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xe4a0b2...85b9dd` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xe96526...008768` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xeb9668...ea82cc` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf2bd60...916985` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf34096...a21880` | ❓ Unverified |
| UnnamedContract | unknown | aurora | `0xf4efdb...1e38c7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x9ad372...c5c200`](./contracts/ethereum-1/0x9ad37205d608b8b219e6a2573f922094cec5c200/) | izumiToken | token | $2,759,198.18 | Verified native implementation with $2,759,198.18 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x19647d...2b0ed4`](./contracts/arbitrum-42161/0x19647d5f84308ee780cc5e3da6e4aee8e12b0ed4/) | ArbitrumLiquidityManagerAccessControl | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x77c2c2...9bfb17`](./contracts/arbitrum-42161/0x77c2c2ece8f323abb6753b85d6b71c82039bfb17/) | ArbitrumNonfungiblePositionManagerAccessControl | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x032b24...a246d7`](./contracts/arbitrum-42161/0x032b241de86a8660f1ae0691a4760b426ea246d7/) | Box | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x110de3...17887d`](./contracts/ethereum-1/0x110de362cc436d7f54210f96b8c7652c2617887d/) | FlashModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x156d8a...eae9e9`](./contracts/linea-59144/0x156d8a0be25fa232bb637fc76255bcd00deae9e9/) | iZiSwapClassicFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x93c22f...ff9581`](./contracts/base-8453/0x93c22fbeff4448f2fb6e432579b0638838ff9581/) | iZiSwapClassicRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x14323a...4d1be2`](./contracts/arbitrum-42161/0x14323afbc2b82fe58f0d9c203830ee969b4d1be2/) | iZiSwapFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x02f55d...43bdb2`](./contracts/ethereum-1/0x02f55d53dce23b4aa962cc68b0f685f26143bdb2/) | LimitOrderManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x02f55d...43bdb2`](./contracts/polygon-137/0x02f55d53dce23b4aa962cc68b0f685f26143bdb2/) | LimitOrderModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x19b683...54d663`](./contracts/base-8453/0x19b683a2f45012318d9b2ae1280d68d3ec54d663/) | LimitOrderWithSwapManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x110de3...17887d`](./contracts/base-8453/0x110de362cc436d7f54210f96b8c7652c2617887d/) | LiquidityManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x19b683...54d663`](./contracts/polygon-137/0x19b683a2f45012318d9b2ae1280d68d3ec54d663/) | LiquidityModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1cb600...24319c`](./contracts/base-8453/0x1cb60033f61e4fc171c963f0d2d3f63ece24319c/) | Locker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x02f55d...43bdb2`](./contracts/arbitrum-42161/0x02f55d53dce23b4aa962cc68b0f685f26143bdb2/) | Quoter | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1d3773...8bfc1b`](./contracts/arbitrum-42161/0x1d377311b342633a970e71a787c50f83858bfc1b/) | QuoterWithLim | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x01fdea...1bed0e`](./contracts/arbitrum-42161/0x01fdea353849ca29f778b2663bcaca1d191bed0e/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x04830c...2c9148`](./contracts/ethereum-1/0x04830cfced9772b8acbaf76cfc7a630ad82c9148/) | SwapProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x1b8c94...376ae7`](./contracts/arbitrum-42161/0x1b8c940be8a5a9f1abd9c24ea337978f44376ae7/) | SwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x110de3...17887d`](./contracts/polygon-137/0x110de362cc436d7f54210f96b8c7652c2617887d/) | SwapX2YModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| aurora | [`0x12a764...e2639f`](./contracts/aurora-1313161554/0x12a76434182c8caf7856ce1410cd8abfc5e2639f/) | SwapY2XModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x12a764...e2639f`](./contracts/base-8453/0x12a76434182c8caf7856ce1410cd8abfc5e2639f/) | UniversalSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb56a45...7fcd00`](./contracts/ethereum-1/0xb56a454d8dac2ad4cb82337887717a2a427fcd00/) | veiZi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 138 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 48 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
