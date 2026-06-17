# Agentic Audit Brief: Hypersurface

## Project Overview

- Project: Hypersurface (`hypersurface`)
- Website: [https://app.hypersurface.io](https://app.hypersurface.io)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:42.883Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, hyperliquid
- Contract surface: 235 unique implementations (363 raw deployments)
- DeFi Llama TVL: $3,048,466.61
- On-chain TVL (included contracts): $161,019,231.32
- TVL by chain: Base $161,019,231.32

## Project Description

Hypersurface is a DeFi structured-products and volatility-yield platform focused on strategies such as covered calls and cash-secured puts. It should not be described as a broad options trading venue, margin-management system, auction platform, or cross-chain infrastructure protocol unless those claims are supported by official project documentation.

### Architecture

The Core Protocol Contracts provide foundational margin and trade logic used by the Hypersurface family for options issuance and trading. The Auction System likely interacts with Core Protocol Contracts for settlement, while Hypersurface leverages cross-chain tokens and strategies for multi-chain options exposure.

## Contract Surface Quality

- Indexed contracts: 553; live-surface contracts included: 363 (363 live, 0 unknown).
- Excluded by liveness: 100 inactive, 90 singleton, 0 uninitialized.
- Deployment units: 4/50 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 3/49.

## Audit Coverage Summary

- Verified implementations audited: 0/45 (0.0%)
- Verified + Unaudited implementations: 43
- Verified by bytecode match: 2
- Unverified implementations: 190
- Unique implementations: 235
- Raw deployments: 363
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $161,019,231.32
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (43)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | base | n/a | [`0x696f94...5df4f1`](./contracts/base-8453/0x696f9436b67233384889472cd7cd58a6fb5df4f1/) | ⚠️ Unaudited |
| CrossChainERC20 | token | base | n/a | [`0x311935...39cf82`](./contracts/base-8453/0x311935cd80b76769bf2ecc9d8ab7635b2139cf82/) | ⚠️ Unaudited |
| Aero | token | base | n/a | [`0x940181...d98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | ⚠️ Unaudited |
| BurnAndEarn | unknown | base | n/a | 2 deployments: base [`0x79c192...c7bbd1`](./contracts/base-8453/0x79c1921fc8cd076415cbd1ebb330629f4ec7bbd1/); base `0xe25e01...1c7e44` | ⚠️ Unaudited |
| FeeSplitter | operational_periphery | base | n/a | [`0xc90f6d...9b3284`](./contracts/base-8453/0xc90f6d74f81cb551c19d138b50456c644f9b3284/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | base | n/a | [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | ⚠️ Unaudited |
| HedgedPool | core_logic | hyperliquid | n/a | 3 deployments: hyperliquid [`0x2ef31a...29d0c5`](./contracts/hyperliquid-999/0x2ef31a3c848e0789feefc56377b46db63329d0c5/); hyperliquid `0x9749a0...5ab298`; base `0x433cf9...33f943` | ⚠️ Unaudited |
| HedgedPoolLib | core_logic | base | n/a | 4 deployments: hyperliquid `0x384dfc...ea1a71`; hyperliquid `0xe16f4b...d1f48b`; base [`0x3409dd...1edbe4`](./contracts/base-8453/0x3409ddb621ab0f6dcc82d656c4a4bc8c0d1edbe4/); base `0x4c5a17...ba1dbf` | ⚠️ Unaudited |
| MAMO | unknown | base | n/a | [`0x7300b3...0219fe`](./contracts/base-8453/0x7300b37dfdfab110d83290a29dfb31b1740219fe/) | ⚠️ Unaudited |
| MamoStakingRegistry | registry | base | n/a | 5 deployments: base [`0x20ff28...c492be`](./contracts/base-8453/0x20ff28f7d8313b81989620a3cea7ec4151c492be/); base `0xa4f24b...e17e32`; base `0xec2fa1...62dfa3`; base `0xf19648...3b5d0d`; base `0xff3bb8...2b2706` | ⚠️ Unaudited |
| MamoStakingStrategy | core_logic | base | n/a | 5 deployments: base [`0x26ba15...f28550`](./contracts/base-8453/0x26ba1566bba5660eeccc6c052e953e945bf28550/); base `0x2785d5...f07749`; base `0x724051...abed09`; base `0xd8100e...0b5157`; base `0xfe25f3...72f8a4` | ⚠️ Unaudited |
| MamoStakingStrategyFactory | registry | base | n/a | 5 deployments: base [`0x1829e7...160475`](./contracts/base-8453/0x1829e71933058620aa8a92556dc0e04f5d160475/); base `0x877de3...fc17ea`; base `0xa0449e...3f408a`; base `0xd034bf...ae23c8`; base `0xd7c3f4...c92239` | ⚠️ Unaudited |
| MamoStrategyRegistry | registry | base | n/a | [`0x46a562...4baa92`](./contracts/base-8453/0x46a5624c2ba92c08aba4b206297052edf14baa92/) | ⚠️ Unaudited |
| Minter | operational_periphery | base | n/a | [`0xeb0183...a33fe5`](./contracts/base-8453/0xeb018363f0a9af8f91f06fee6613a751b2a33fe5/) | ⚠️ Unaudited |
| Multicall | periphery | base | n/a | 8 deployments: base [`0x1578bd...68f60a`](./contracts/base-8453/0x1578bd9ff22f54707bc39aed698c97df9068f60a/); base `0x1602cc...3f4920`; base `0x261640...e9ecda`; base `0x7a829c...3848d8`; base `0x7cb24e...0f1f4c`; base `0x98ae9a...b79040`; base `0xb040be...560222`; base `0xe0aa21...775942` | ⚠️ Unaudited |
| Multicall | periphery | base | unit-26308 | [`0xa7cfc4...5d099e`](./contracts/base-8453/0xa7cfc43872f4d7b0e6141ee8c36f1f7fee5d099e/) | ⚠️ Unaudited |
| MultiRewards | unknown | base | n/a | 2 deployments: base [`0x7855b0...f6c7a3`](./contracts/base-8453/0x7855b0821401ab078f6cf457deafae775ff6c7a3/); base `0xec9abc...1a7791` | ⚠️ Unaudited |
| OtokenFactory | registry | hyperliquid | n/a | [`0xf6d788...b4c98d`](./contracts/hyperliquid-999/0xf6d788dd55738f82d03f97597660221ca8b4c98d/) | ⚠️ Unaudited |
| PairInfos | periphery | base | n/a | 7 deployments: base [`0x18cbd5...b9a975`](./contracts/base-8453/0x18cbd536ba9a069e48f6419769d73da78eb9a975/); base `0x4859a4...3c6f6e`; base `0xd4d8ee...075093`; base `0xdb7b17...8cfbfb`; base `0xdf85bf...b58df9`; base `0xef601a...1cddeb`; base `0xf74074...30668f` | ⚠️ Unaudited |
| PairStorage | registry | base | n/a | 18 deployments: base [`0x3a9392...e6d64d`](./contracts/base-8453/0x3a93922fd64bac36ba63ebc52fe982bb7ce6d64d/); base `0x433cf9...62db49`; base `0x4dadd0...0f8a04`; base `0x65b3cc...a5bc39`; base `0x68e0dc...3fd08f`; base `0x6b0181...e7ef54`; base `0x6f839d...80f830`; base `0x8311b4...6a1700`; base `0x8b4027...daf4cc`; base `0x9894a0...351cec`; base `0xb3048b...50db66`; base `0xceab88...eb0968`; base `0xd910d2...98b195`; base `0xe4f1b2...0d08b0`; base `0xe7f661...b8ea15`; base `0xe83794...e45934`; base `0xe87d97...f6ee77`; base `0xf76370...426aa1` | ⚠️ Unaudited |
| PriceAggregator | operational_periphery | base | n/a | 10 deployments: base [`0x0cce4d...72fca8`](./contracts/base-8453/0x0cce4d12192ea86bde79f774409cf6f5ee72fca8/); base `0x1a172d...98d287`; base `0x4efea7...8e74f9`; base `0x503292...ef4ae3`; base `0x5e8487...ad5f23`; base `0x6b693d...382e5b`; base `0x6db4e7...aaea85`; base `0x7e7f28...01312d`; base `0x93f547...587ce4`; base `0xbeddac...e2684f` | ⚠️ Unaudited |
| Referral | unknown | base | unit-26287 | [`0x1a110b...9de82d`](./contracts/base-8453/0x1a110bba13a1f16cca4b79758bd39290f29de82d/) | ⚠️ Unaudited |
| Referral | unknown | base | n/a | [`0xfe4173...0b64f7`](./contracts/base-8453/0xfe417372088146476ca28fa35d00f5e0f60b64f7/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | base | n/a | [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | ⚠️ Unaudited |
| RewardsDistributorSafeModule | operational_periphery | base | n/a | 7 deployments: base [`0x1ee37b...1e5ebc`](./contracts/base-8453/0x1ee37bb5ef11615e4bfc396e39a30e0b381e5ebc/); base `0x30a182...fc2e09`; base `0x3db8c1...ecd0f9`; base `0x614236...ef248a`; base `0x6f85d6...2d6da2`; base `0x9df761...5c470b`; base `0xfabe70...757f85` | ⚠️ Unaudited |
| Router | adapter | base | n/a | [`0xcf77a3...874e43`](./contracts/base-8453/0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43/) | ⚠️ Unaudited |
| SlippagePriceChecker | operational_periphery | base | n/a | [`0x6af6fa...5d4946`](./contracts/base-8453/0x6af6fa071b74e255d5732df2e703446bfb5d4946/) | ⚠️ Unaudited |
| StakedToken | token | base | n/a | 3 deployments: base [`0x553000...a1ced5`](./contracts/base-8453/0x553000ac1a8d7f2d6372e4b7adb7efcba9a1ced5/); base `0xb85e0f...54194c`; base `0xd54604...3bd9e9` | ⚠️ Unaudited |
| StrategyFactory | registry | base | n/a | 10 deployments: base [`0x14ba47...90ee28`](./contracts/base-8453/0x14ba47ef0286b345e2b74d26243767268290ee28/); base `0x1eeb3f...9de286`; base `0x20c444...5282dc`; base `0x309836...cee2c6`; base `0x488eef...bbc67e`; base `0x689e1e...bec032`; base `0xa3eea5...d8d974`; base `0xaaa715...385289`; base `0xf3a726...a9ecf9`; base `0xf8cfde...9987f8` | ⚠️ Unaudited |
| Trading | unknown | base | n/a | 14 deployments: base [`0x00695e...ef1295`](./contracts/base-8453/0x00695efc895ec1e549e8f16f7f1c713eb7ef1295/); base `0x16ad53...564156`; base `0x16cb9a...8d72c5`; base `0x3ae990...e92b28`; base `0x462461...3cb6e7`; base `0x46395b...d24548`; base `0x6b199e...451507`; base `0x79c504...6050c8`; base `0x99c106...3c9669`; base `0xd52ea5...3ffb30`; base `0xd7917d...df7968`; base `0xe21275...f6c5dd`; base `0xeede11...9c4d5f`; base `0xfc3a95...0f9e6a` | ⚠️ Unaudited |
| Trading | unknown | base | unit-26296 | [`0x449144...e11d4e`](./contracts/base-8453/0x44914408af82bc9983bbb330e3578e1105e11d4e/) | ⚠️ Unaudited |
| TradingCallbacks | unknown | base | n/a | 13 deployments: base [`0x001230...833f9f`](./contracts/base-8453/0x00123005b7b62c4beff0a4b08247e06142833f9f/); base `0x1fe035...064680`; base `0x2067ff...cfdf15`; base `0x21b59c...f5e706`; base `0x300a64...bdb960`; base `0x45452e...7a6330`; base `0x680149...fc421c`; base `0x6a2293...7c5de0`; base `0x81a52f...494701`; base `0x855001...5e14fa`; base `0x8dc5e6...0ba86c`; base `0x9af69b...433e75`; base `0xb1c9c2...d8feca` | ⚠️ Unaudited |
| TradingStorage | unknown | base | n/a | 7 deployments: base [`0x0e8214...cd7dc9`](./contracts/base-8453/0x0e82149feb35a5edb540294129420a979dcd7dc9/); base `0x236a48...fecffa`; base `0x717eb3...92244a`; base `0x9229b6...9e71e4`; base `0x9e6b80...d12422`; base `0xb916e6...4ae5c3`; base `0xdbff96...e7760b` | ⚠️ Unaudited |
| Tranche | core_logic | base | n/a | 9 deployments: base [`0x2db4ff...473775`](./contracts/base-8453/0x2db4fff86d94341f2fe137ff654f4b89ed473775/); base `0x5d023a...637c8f`; base `0x5fc6cd...93952b`; base `0x80cd76...5032d8`; base `0x8bc806...28d2bc`; base `0x96878c...429361`; base `0xc3769e...fba26d`; base `0xdd6d91...068673`; base `0xe56ad2...2c35ed` | ⚠️ Unaudited |
| TransferAndEarn | unknown | base | n/a | 2 deployments: base [`0x0589ac...3fcd1b`](./contracts/base-8453/0x0589ac4734527fdb896367665b1ada33503fcd1b/); base `0xac4ddd...407d3e` | ⚠️ Unaudited |
| USDCStrategyFactory | registry | base | n/a | [`0x5967ea...e62d07`](./contracts/base-8453/0x5967ea71cc65d610dc6999d7df62bfa512e62d07/) | ⚠️ Unaudited |
| VaultManager | core_logic | base | n/a | 7 deployments: base [`0x0ca0ba...527486`](./contracts/base-8453/0x0ca0ba253f192b31fb76aa93a2d3ec8687527486/); base `0x12c16c...a30546`; base `0x4ab200...ada864`; base `0x6201d3...cce9fc`; base `0xa7f4c2...fdfe96`; base `0xc15c0a...41ec18`; base `0xf9c4a5...b9f60a` | ⚠️ Unaudited |
| VeArtProxy | unknown | base | n/a | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | ⚠️ Unaudited |
| VeTranche | core_logic | base | n/a | 4 deployments: base [`0x8b0cf2...aa23ac`](./contracts/base-8453/0x8b0cf27913da70f6732f250a647301b111aa23ac/); base `0xa0ab93...5a9b46`; base `0xadeb64...21fcdd`; base `0xe5391d...7ae565` | ⚠️ Unaudited |
| Voter | unknown | base | n/a | [`0x166135...c480a5`](./contracts/base-8453/0x16613524e02ad97edfef371bc883f2f5d6c480a5/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | base | n/a | [`0xebf418...67e6b4`](./contracts/base-8453/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4/) | ⚠️ Unaudited |
| Whitelist | unknown | hyperliquid | n/a | [`0xeea2e4...95ed61`](./contracts/hyperliquid-999/0xeea2e4459b4065be147d7f060f4b331b3c95ed61/) | ⚠️ Unaudited |
| Zora | unknown | base | n/a | [`0x111111...0afc69`](./contracts/base-8453/0x1111111111166b7fe7bd91427724b487980afc69/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| MarginPool | core_logic | hyperliquid | n/a | 3 deployments: hyperliquid [`0x04fe57...fb126d`](./contracts/hyperliquid-999/0x04fe57fc72f75bfdca4a3f910256797e97fb126d/); hyperliquid `0x7d2e4b...1c6e35`; base `0x9aba7a...fb3103` | ⚠️ Unaudited (bytecode match) |
| ProxyAdmin | governance | hyperliquid | n/a | 3 deployments: hyperliquid [`0x596d60...95144e`](./contracts/hyperliquid-999/0x596d60051bbc2181944fd4799c4f4d598c95144e/); hyperliquid `0x6b1e48...0f7ebd`; base `0x64e231...664641` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (190)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x753d3285c71caaed1f381c65c57497b276be8251) | proxy | hyperliquid | unit-26283 | `0xf07739...0e3749` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x00cc68...199513` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0a0657...84a2e3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x0a6439...16160b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1150aa...800685` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x169617...e5c3dc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x16a6b6...25f53f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x16fc3a...f6920c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x19a871...cbcd82` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x1c0148...b18c5d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x217f3b...fa4e12` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x21f632...8d9967` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x227ffb...44cda8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x252985...92bfdd` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x28d9da...b0f32c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x295651...346fd6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2b3c1d...6f8546` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x2d12fe...c9eccf` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x317b4a...45228a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x31caee...f93fea` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x326f64...b851c7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x32cc9a...dcac58` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3345a5...92d076` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x372863...baef5e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x39cb47...4385fa` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3baf3d...507c86` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x3fa79b...1c66f0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x429a40...a8040c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x44a91a...de61b6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x47ae69...c4e8bf` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4c8586...95d42e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x4ccf9c...e5dbfb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5276fa...186d7f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x528b0a...966340` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5501b6...24df2d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x58402c...b684f6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5adbdf...a13f55` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5bb1fb...75416f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5c7e60...2fa1b7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5e6dba...0c1047` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x5e9761...b2422d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x60f291...a3977d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x63f69b...5015b0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x67604c...40f36a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x67b1a0...8a03ce` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x67da33...2448e7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x687441...dd853a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6b2935...1e93df` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6e6824...1ade14` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6eab66...bcf2a2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x6f8626...e46cdf` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7329cd...ff5696` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x744a86...a5d9bc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x758d0f...934532` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x768f5f...178888` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x783915...baf64d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7b08b9...d10391` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7bf434...13affc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7e6448...347b86` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7e737d...11678a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x7fa82b...c29571` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x823b8b...d37b57` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x83836e...d4ee4c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x84ced9...1af1aa` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x84d4c4...0c54ab` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x84f7c6...33bf15` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x88a78c...d7fcb6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x89031b...2d292f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8c5e29...0bbcac` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8daadb...e93265` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x8ef564...5b34c5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9077f1...2331d4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x91d54e...afa792` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x926002...d98c2b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x939b0c...2210aa` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x96e28c...03c2b9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x97f1d7...190449` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9a220a...aed9fb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9a3076...181465` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9bd37c...8ca4b2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9c7f86...1a2da4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9de7af...63400b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x9fef03...ce2f75` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa04e16...204995` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa474a6...7c571f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa4b06e...9d77ca` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xa6a324...7cef8e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xab57ee...122ed3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xad2652...fd8aea` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb52b7d...b46174` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xb820c1...cb389f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbb3aa5...867a59` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbc2dad...574200` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbd7f11...2f4a8c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbe6604...177cf9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xbeefee...e8a966` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc3b8c9...019f7e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc5eba3...dce1b7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc6148c...7001dc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc769b2...3e14f2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc8c4e1...e63a97` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xc932ec...a9946b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xca0431...fe60bf` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xcadb53...6ea3a2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xcb0aae...70aef8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd0f46c...568cc6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xd3f787...8fcdb0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdaa547...9da4d6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdb0ba6...268dd4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xdc7f97...7c8068` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe4821a...1de529` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe889d6...b21aea` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xea5c32...675bf3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xec8594...aeb028` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xec8fd3...064412` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf0f52a...3f83ec` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf1c318...df2233` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf2cda1...42fa4e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf61f55...e37e3e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xf88f1e...3bf9bf` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfafb55...55037f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfd49d0...6e2f09` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfe025f...87f56a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfe2f50...a19b4e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfe4dfa...10b693` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xffced5...e37155` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xffcf42...e14743` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x069070...22a0f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0aa188...4752f4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x100ad6...07b788` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x10118e...06e98b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x14aebf...73c106` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x17d8cd...d06275` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x18c411...d5df82` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x19c9b0...472d47` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1f410e...49cb9e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20a187...cf0b98` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2408b5...ea9572` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2b8f49...0e85a7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2d2b39...471ccb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x31eb6e...1a02cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x33f720...e8d079` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x36668e...1a44f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x37280e...6b60ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3addfc...cec30b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d4a03...709002` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x406a92...7bcefb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x42e7cc...b49650` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x440804...2aa8a5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x46e2ec...c87aa7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4e9d71...736fb1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x538a6a...a5c6ef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x57a9c0...99ec9a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x59c9b2...112b28` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c7fbc...a530e1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x61b5c1...2058d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x67c67f...792d86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x690fcf...94c7f0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a75ef...a3e29b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6b71ca...654908` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6e9e36...369db7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6ff79e...7c60f8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x71e792...c81889` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x76c91a...e6b8c6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x78c79b...13a930` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7b06e4...fdc25c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7d7e7d...9448b4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x82c627...232e9d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ba486...1d05b7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8e492e...647511` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ed778...7a3ce0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9884c1...b574da` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa25966...6c81d4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa30c33...c3a09a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa3e470...519d95` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa5af7d...bb8c84` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaf6be8...ef9e71` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb4106b...1c1c11` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb6298f...a83bd7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb95353...511695` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbb58df...eb00a8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc2ff0b...f0459e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc7a69e...f598f0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcbc7bc...480877` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd96c38...cefb68` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe294f5...6ca36d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xee7804...070bd0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf0093b...ca8175` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf765c9...06c4a4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfdcfbc...cf2acb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x696f94...5df4f1`](./contracts/base-8453/0x696f9436b67233384889472cd7cd58a6fb5df4f1/) | Token | token | $150,783,135.30 | Verified native implementation with $150,783,135.30 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x04fe57...fb126d`](./contracts/hyperliquid-999/0x04fe57fc72f75bfdca4a3f910256797e97fb126d/) | MarginPool | core_logic | $111,847.39 | Verified native implementation with $111,847.39 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x79c192...c7bbd1`](./contracts/base-8453/0x79c1921fc8cd076415cbd1ebb330629f4ec7bbd1/) | BurnAndEarn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc90f6d...9b3284`](./contracts/base-8453/0xc90f6d74f81cb551c19d138b50456c644f9b3284/) | FeeSplitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x2ef31a...29d0c5`](./contracts/hyperliquid-999/0x2ef31a3c848e0789feefc56377b46db63329d0c5/) | HedgedPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3409dd...1edbe4`](./contracts/base-8453/0x3409ddb621ab0f6dcc82d656c4a4bc8c0d1edbe4/) | HedgedPoolLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x20ff28...c492be`](./contracts/base-8453/0x20ff28f7d8313b81989620a3cea7ec4151c492be/) | MamoStakingRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x26ba15...f28550`](./contracts/base-8453/0x26ba1566bba5660eeccc6c052e953e945bf28550/) | MamoStakingStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1829e7...160475`](./contracts/base-8453/0x1829e71933058620aa8a92556dc0e04f5d160475/) | MamoStakingStrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x46a562...4baa92`](./contracts/base-8453/0x46a5624c2ba92c08aba4b206297052edf14baa92/) | MamoStrategyRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xeb0183...a33fe5`](./contracts/base-8453/0xeb018363f0a9af8f91f06fee6613a751b2a33fe5/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7855b0...f6c7a3`](./contracts/base-8453/0x7855b0821401ab078f6cf457deafae775ff6c7a3/) | MultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x18cbd5...b9a975`](./contracts/base-8453/0x18cbd536ba9a069e48f6419769d73da78eb9a975/) | PairInfos | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3a9392...e6d64d`](./contracts/base-8453/0x3a93922fd64bac36ba63ebc52fe982bb7ce6d64d/) | PairStorage | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfe4173...0b64f7`](./contracts/base-8453/0xfe417372088146476ca28fa35d00f5e0f60b64f7/) | Referral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1ee37b...1e5ebc`](./contracts/base-8453/0x1ee37bb5ef11615e4bfc396e39a30e0b381e5ebc/) | RewardsDistributorSafeModule | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcf77a3...874e43`](./contracts/base-8453/0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6af6fa...5d4946`](./contracts/base-8453/0x6af6fa071b74e255d5732df2e703446bfb5d4946/) | SlippagePriceChecker | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x553000...a1ced5`](./contracts/base-8453/0x553000ac1a8d7f2d6372e4b7adb7efcba9a1ced5/) | StakedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x14ba47...90ee28`](./contracts/base-8453/0x14ba47ef0286b345e2b74d26243767268290ee28/) | StrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x00695e...ef1295`](./contracts/base-8453/0x00695efc895ec1e549e8f16f7f1c713eb7ef1295/) | Trading | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x001230...833f9f`](./contracts/base-8453/0x00123005b7b62c4beff0a4b08247e06142833f9f/) | TradingCallbacks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0e8214...cd7dc9`](./contracts/base-8453/0x0e82149feb35a5edb540294129420a979dcd7dc9/) | TradingStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2db4ff...473775`](./contracts/base-8453/0x2db4fff86d94341f2fe137ff654f4b89ed473775/) | Tranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0589ac...3fcd1b`](./contracts/base-8453/0x0589ac4734527fdb896367665b1ada33503fcd1b/) | TransferAndEarn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5967ea...e62d07`](./contracts/base-8453/0x5967ea71cc65d610dc6999d7df62bfa512e62d07/) | USDCStrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0ca0ba...527486`](./contracts/base-8453/0x0ca0ba253f192b31fb76aa93a2d3ec8687527486/) | VaultManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8b0cf2...aa23ac`](./contracts/base-8453/0x8b0cf27913da70f6732f250a647301b111aa23ac/) | VeTranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x166135...c480a5`](./contracts/base-8453/0x16613524e02ad97edfef371bc883f2f5d6c480a5/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xebf418...67e6b4`](./contracts/base-8453/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xeea2e4...95ed61`](./contracts/hyperliquid-999/0xeea2e4459b4065be147d7f060f4b331b3c95ed61/) | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 66 |
| upstream | 2 |
| standard_library | 5 |
| needs_review | 162 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
