# Agentic Audit Brief: iZUMi Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 33.2% over 90 days

## Project Overview

- Project: iZUMi Finance (`izumi-finance`)
- Website: [https://izumi.finance/home](https://izumi.finance/home)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-17T07:00:36.040Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, blast, bsc, cronos, ethereum, kava, linea, manta, mantle, mode, polygon, scroll, zksync-era
- Contract surface: 45 unique implementations (69 raw deployments)
- DeFi Llama TVL: $3,450,723.00
- On-chain TVL (included contracts): $2,759,198.18
- TVL by chain: Ethereum $2,759,198.18

## Project Description

iZUMi Finance is a multi-chain DeFi protocol positioned around Liquidity-as-a-Service, with iZiSwap concentrated-liquidity trading, liquidity incentives/staking and Pool2-style reward programs, and ve/iZi tokenomics components where supported by deployed contracts and documentation.

### Architecture

iZiSwap and iZUMi LiquidBox share the iZi token, which is earned through liquidity provision on iZiSwap and staked in LiquidBox for governance power and boosted rewards. The veiZi contract manages voting escrow for the token, linking the two families.

## Contract Surface Quality

- Indexed contracts: 334; live-surface contracts included: 69 (46 live, 23 unknown).
- Excluded by liveness: 265 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 5/6 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 1/1.

## Audit Coverage Summary

- Verified implementations audited: 0/20 (0.0%)
- Verified + Unaudited implementations: 20
- Verified by bytecode match: 0
- Unverified implementations: 25
- Unique implementations: 45
- Raw deployments: 69
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

### ⚠️ Verified + Unaudited (20)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| izumiToken | token | ethereum | n/a | [`0x9ad372...c5c200`](./contracts/ethereum-1/0x9ad37205d608b8b219e6a2573f922094cec5c200/) | ⚠️ Unaudited |
| FlashModule | unknown | manta | n/a | [`0xbd6aba...dfb5df`](./contracts/manta-169/0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df/) | ⚠️ Unaudited |
| iZiSwapClassicFactory | registry | linea | n/a | 2 deployments: base `0xbd3bd9...8cfad8`; linea [`0x156d8a...eae9e9`](./contracts/linea-59144/0x156d8a0be25fa232bb637fc76255bcd00deae9e9/) | ⚠️ Unaudited |
| iZiSwapClassicRouter02 | adapter | base | n/a | 2 deployments: base [`0xcfd8a0...847399`](./contracts/base-8453/0xcfd8a067e1fa03474e79be646c5f6b6a27847399/); linea `0xe78e74...ecf212` | ⚠️ Unaudited |
| LimitOrderManager | governance | manta | n/a | 3 deployments: bsc `0x72fafc...d2f201`; manta [`0x02f55d...43bdb2`](./contracts/manta-169/0x02f55d53dce23b4aa962cc68b0f685f26143bdb2/); linea `0x25c030...b03e31` | ⚠️ Unaudited |
| LimitOrderManager | governance | base | unit-21710 | [`0x1502d0...251728`](./contracts/base-8453/0x1502d025bfa624469892289d45c0352997251728/) | ⚠️ Unaudited |
| LimitOrderModule | unknown | manta | n/a | [`0xe96526...008768`](./contracts/manta-169/0xe96526e92ee57bbd468da1721987aa988b008768/) | ⚠️ Unaudited |
| LimitOrderWithSwapManager | governance | base | n/a | 2 deployments: manta `0x2db0af...efd3d7`; base [`0x19b683...54d663`](./contracts/base-8453/0x19b683a2f45012318d9b2ae1280d68d3ec54d663/) | ⚠️ Unaudited |
| LiquidityManager | governance | base | n/a | 10 deployments: ethereum `0x19b683...54d663`; bsc `0xbf55ef...c9f453`; polygon `0x1cb600...24319c`; polygon `0x33531b...aacaaf`; manta `0x19b683...54d663`; base [`0x110de3...17887d`](./contracts/base-8453/0x110de362cc436d7f54210f96b8c7652c2617887d/); mode `0x19b683...54d663`; arbitrum `0x611575...f78f0c`; arbitrum `0xad1f11...cdc16f`; scroll `0x1502d0...251728` | ⚠️ Unaudited |
| LiquidityManager | governance | linea | unit-21711 | [`0x1cb600...24319c`](./contracts/linea-59144/0x1cb60033f61e4fc171c963f0d2d3f63ece24319c/) | ⚠️ Unaudited |
| Locker | unknown | manta | n/a | [`0x1d3773...8bfc1b`](./contracts/manta-169/0x1d377311b342633a970e71a787c50f83858bfc1b/) | ⚠️ Unaudited |
| Quoter | periphery | base | n/a | 3 deployments: ethereum `0x3ef68d...f88bc4`; manta `0x33531b...aacaaf`; base [`0x2db0af...efd3d7`](./contracts/base-8453/0x2db0afd0045f3518c77ec6591a542e326befd3d7/) | ⚠️ Unaudited |
| QuoterWithLim | periphery | manta | n/a | 3 deployments: manta [`0x34bc1b...c71406`](./contracts/manta-169/0x34bc1b87f60e0a30c0e24fd7abada70436c71406/); base `0x3ef68d...f88bc4`; linea `0x3ef68d...f88bc4` | ⚠️ Unaudited |
| Swap | unknown | bsc | unit-21709 | [`0xedf202...5aa4b8`](./contracts/bsc-56/0xedf2021f41abcfe2dea4427e1b61f4d0aa5aa4b8/) | ⚠️ Unaudited |
| Swap | unknown | arbitrum | n/a | 7 deployments: manta `0x3ef68d...f88bc4`; mantle `0x25c030...b03e31`; base `0x02f55d...43bdb2`; mode `0x3ef68d...f88bc4`; arbitrum [`0x01fdea...1bed0e`](./contracts/arbitrum-42161/0x01fdea353849ca29f778b2663bcaca1d191bed0e/); arbitrum `0x1cb600...24319c`; linea `0x032b24...a246d7` | ⚠️ Unaudited |
| SwapProxy | unknown | ethereum | unit-21707 | [`0x2c6df0...1f770f`](./contracts/ethereum-1/0x2c6df0fdbce9d2ded2b52a117126f2dc991f770f/) | ⚠️ Unaudited |
| SwapProxy | unknown | arbitrum | n/a | [`0xe4a0b2...85b9dd`](./contracts/arbitrum-42161/0xe4a0b241d8345d86fb140d40c87c5fbdd685b9dd/) | ⚠️ Unaudited |
| SwapX2YModule | unknown | manta | n/a | [`0x4d4673...a87bfe`](./contracts/manta-169/0x4d4673745aac664efb9758fdd571f40d78a87bfe/) | ⚠️ Unaudited |
| SwapY2XModule | unknown | manta | n/a | [`0x32d02f...ad2b55`](./contracts/manta-169/0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55/) | ⚠️ Unaudited |
| veiZi | unknown | ethereum | unit-21708 | [`0xb56a45...7fcd00`](./contracts/ethereum-1/0xb56a454d8dac2ad4cb82337887717a2a427fcd00/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (25)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | cronos | n/a | `0x33531b...aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x3f5591...51db18` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0x8c7d30...1ebb08` | ❓ Unverified |
| UnnamedContract | unknown | manta | n/a | `0xf4efdb...1e38c7` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x43ff8a...c8839a` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x483fde...ccd1f1` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x6ac81d...c16b97` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0x943ac2...00f894` | ❓ Unverified |
| UnnamedContract | unknown | zksync-era | n/a | `0xe36caa...ca8149` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x078f71...90604b` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x138262...1aa84f` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x19b683...54d663` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x469a50...b6bb4a` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x98a3a1...783613` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xe96356...7a62a1` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0xfe1c50...b1b86a` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x611575...f78f0c` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xca7e21...096037` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe4a0b2...85b9dd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x33531b...aacaaf` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x02f55d...43bdb2` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0xf42c48...ab8496` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x3a2932...ce2492` | ❓ Unverified |
| UnnamedContract | unknown | linea | n/a | `0x77ab29...06cbb0` | ❓ Unverified |
| UnnamedContract | unknown | blast | n/a | `0x5e7902...d0731b` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x9ad372...c5c200`](./contracts/ethereum-1/0x9ad37205d608b8b219e6a2573f922094cec5c200/) | izumiToken | token | $2,759,198.18 | Verified native implementation with $2,759,198.18 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0xbd6aba...dfb5df`](./contracts/manta-169/0xbd6aba1ef82a4cd6e15cb05e95f433ef48dfb5df/) | FlashModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x156d8a...eae9e9`](./contracts/linea-59144/0x156d8a0be25fa232bb637fc76255bcd00deae9e9/) | iZiSwapClassicFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcfd8a0...847399`](./contracts/base-8453/0xcfd8a067e1fa03474e79be646c5f6b6a27847399/) | iZiSwapClassicRouter02 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
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
| arbitrum | [`0x01fdea...1bed0e`](./contracts/arbitrum-42161/0x01fdea353849ca29f778b2663bcaca1d191bed0e/) | Swap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2c6df0...1f770f`](./contracts/ethereum-1/0x2c6df0fdbce9d2ded2b52a117126f2dc991f770f/) | SwapProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xe4a0b2...85b9dd`](./contracts/arbitrum-42161/0xe4a0b241d8345d86fb140d40c87c5fbdd685b9dd/) | SwapProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x4d4673...a87bfe`](./contracts/manta-169/0x4d4673745aac664efb9758fdd571f40d78a87bfe/) | SwapX2YModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| manta | [`0x32d02f...ad2b55`](./contracts/manta-169/0x32d02fc7722e81f6ac60b87ea8b4b63a52ad2b55/) | SwapY2XModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb56a45...7fcd00`](./contracts/ethereum-1/0xb56a454d8dac2ad4cb82337887717a2a427fcd00/) | veiZi | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 36 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
