# Agentic Audit Brief: Hypersurface

## Project Overview

- Project: Hypersurface (`hypersurface`)
- Website: [https://app.hypersurface.io/rewards?referrer=defillama](https://app.hypersurface.io/rewards?referrer=defillama)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-10T23:55:25.227Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-08cb
- Chains: base, hyperliquid
- Contract surface: 242 unique implementations (510 raw deployments)
- DeFi Llama TVL: $4,024,164.78
- On-chain TVL (included contracts): $161,033,399.17
- TVL by chain: Base $161,033,399.17

## Project Description

Hypersurface is a DeFi structured-products and volatility-yield platform focused on strategies such as covered calls and cash-secured puts. It should not be described as a broad options trading venue, margin-management system, auction platform, or cross-chain infrastructure protocol unless those claims are supported by official project documentation.

### Architecture

The Core Protocol Contracts provide foundational margin and trade logic used by the Hypersurface family for options issuance and trading. The Auction System likely interacts with Core Protocol Contracts for settlement, while Hypersurface leverages cross-chain tokens and strategies for multi-chain options exposure.

## Audit Coverage Summary

- Verified implementations audited: 0/41 (0.0%)
- Verified + Unaudited implementations: 39
- Verified by bytecode match: 2
- Unverified implementations: 201
- Unique implementations: 242
- Raw deployments: 510
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $161,033,399.17
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (39)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Token | token | base | 2 deployments: base [`0x696f94...5df4f1`](./contracts/base-8453/0x696f9436b67233384889472cd7cd58a6fb5df4f1/); base `0xc00989...89e070` | ⚠️ Unaudited |
| CrossChainERC20 | token | base | [`0x311935...39cf82`](./contracts/base-8453/0x311935cd80b76769bf2ecc9d8ab7635b2139cf82/) | ⚠️ Unaudited |
| HedgedPool | core_logic | hyperliquid | 5 deployments: hyperliquid [`0x2ef31a...29d0c5`](./contracts/hyperliquid-999/0x2ef31a3c848e0789feefc56377b46db63329d0c5/); hyperliquid `0x9749a0...5ab298`; base `0x433cf9...33f943`; base `0x688939...8df56d`; base `0xbac1bc...07fac7` | ⚠️ Unaudited |
| Aero | token | base | [`0x940181...d98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | ⚠️ Unaudited |
| BurnAndEarn | unknown | base | 2 deployments: base [`0x79c192...c7bbd1`](./contracts/base-8453/0x79c1921fc8cd076415cbd1ebb330629f4ec7bbd1/); base `0xe25e01...1c7e44` | ⚠️ Unaudited |
| ERC20MoonwellMorphoStrategy | core_logic | base | 4 deployments: base [`0x1ddaef...57310c`](./contracts/base-8453/0x1ddaef2ead56cc4544c35d6957ba4e948f57310c/); base `0x3efc7c...d20d1d`; base `0x4fecdb...7a523e`; base `0xf847f6...a5d3f7` | ⚠️ Unaudited |
| Execute | unknown | base | 2 deployments: base [`0x9d1510...a41e31`](./contracts/base-8453/0x9d15103f8fdbf9b989583a37a49724f6b3a41e31/); base `0x9d4846...c5b7f8` | ⚠️ Unaudited |
| FeeSplitter | operational_periphery | base | [`0xc90f6d...9b3284`](./contracts/base-8453/0xc90f6d74f81cb551c19d138b50456c644f9b3284/) | ⚠️ Unaudited |
| HedgedPoolLib | core_logic | base | 4 deployments: hyperliquid `0x384dfc...ea1a71`; hyperliquid `0xe16f4b...d1f48b`; base [`0x3409dd...1edbe4`](./contracts/base-8453/0x3409ddb621ab0f6dcc82d656c4a4bc8c0d1edbe4/); base `0x4c5a17...ba1dbf` | ⚠️ Unaudited |
| MAMO | unknown | base | 3 deployments: base [`0x310936...1188a4`](./contracts/base-8453/0x31093641ac0a6930f5c0909c4540d295051188a4/); base `0x7300b3...0219fe`; base `0xbfd59c...c6a589` | ⚠️ Unaudited |
| MAMO2 | unknown | base | 4 deployments: base [`0x036e14...d81af0`](./contracts/base-8453/0x036e14fe5ad9636f36d9878d7bcf6ea795d81af0/); base `0x9294ea...ce6852`; base `0x980a12...fc6dcb`; base `0xaefd28...0cce63` | ⚠️ Unaudited |
| MamoStakingRegistry | registry | base | 5 deployments: base [`0x20ff28...c492be`](./contracts/base-8453/0x20ff28f7d8313b81989620a3cea7ec4151c492be/); base `0xa4f24b...e17e32`; base `0xec2fa1...62dfa3`; base `0xf19648...3b5d0d`; base `0xff3bb8...2b2706` | ⚠️ Unaudited |
| MamoStakingStrategy | core_logic | base | 5 deployments: base [`0x26ba15...f28550`](./contracts/base-8453/0x26ba1566bba5660eeccc6c052e953e945bf28550/); base `0x2785d5...f07749`; base `0x724051...abed09`; base `0xd8100e...0b5157`; base `0xfe25f3...72f8a4` | ⚠️ Unaudited |
| MamoStakingStrategyFactory | registry | base | 5 deployments: base [`0x1829e7...160475`](./contracts/base-8453/0x1829e71933058620aa8a92556dc0e04f5d160475/); base `0x877de3...fc17ea`; base `0xa0449e...3f408a`; base `0xd034bf...ae23c8`; base `0xd7c3f4...c92239` | ⚠️ Unaudited |
| MamoStrategyRegistry | registry | base | 9 deployments: base [`0x029773...861e6c`](./contracts/base-8453/0x029773ca368ddd11d76b6485dc53748bd6861e6c/); base `0x142f39...bcb76c`; base `0x1b8b7d...508f97`; base `0x46a562...4baa92`; base `0x759741...b6fe29`; base `0xb5c877...4d65d0`; base `0xc4fdf7...c70e85`; base `0xe4ccad...6edfab`; base `0xe659d7...d54710` | ⚠️ Unaudited |
| MMTradeHelper | periphery | hyperliquid | 2 deployments: hyperliquid [`0x1e1be1...e5dfaf`](./contracts/hyperliquid-999/0x1e1be1b7205d0038e2588a7c7d1059875ae5dfaf/); hyperliquid `0x5d2cbe...10269d` | ⚠️ Unaudited |
| Multicall | periphery | base | 17 deployments: base [`0x125d3e...742fe8`](./contracts/base-8453/0x125d3eeb43f99f2d1450f3db38e4ddda03742fe8/); base `0x141d8b...2a7257`; base `0x1578bd...68f60a`; base `0x1602cc...3f4920`; base `0x20076b...9296da`; base `0x23035f...29f33c`; base `0x261640...e9ecda`; base `0x513137...ebb2be`; base `0x603664...0f82c5`; base `0x7a829c...3848d8`; base `0x7cb24e...0f1f4c`; base `0x88ab4a...33eb80`; base `0xa7cfc4...5d099e`; base `0xb040be...560222`; base `0xc40153...5e7eda`; base `0xd46933...a0a8a4`; base `0xe0aa21...775942` | ⚠️ Unaudited |
| MultiRewards | unknown | base | 2 deployments: base [`0x7855b0...f6c7a3`](./contracts/base-8453/0x7855b0821401ab078f6cf457deafae775ff6c7a3/); base `0xec9abc...1a7791` | ⚠️ Unaudited |
| OpClaim | unknown | base | 2 deployments: base [`0x1c69cc...0203a5`](./contracts/base-8453/0x1c69cc8be2b29225b74743752a721ca21d0203a5/); base `0x93c08d...6663ca` | ⚠️ Unaudited |
| OtokenFactory | registry | hyperliquid | [`0xf6d788...b4c98d`](./contracts/hyperliquid-999/0xf6d788dd55738f82d03f97597660221ca8b4c98d/) | ⚠️ Unaudited |
| PairInfos | periphery | base | 13 deployments: base [`0x18cbd5...b9a975`](./contracts/base-8453/0x18cbd536ba9a069e48f6419769d73da78eb9a975/); base `0x28f525...c0e136`; base `0x4859a4...3c6f6e`; base `0x7cc70d...cfde64`; base `0x7e7463...b5afb8`; base `0x86ff25...2ba98d`; base `0x8f50ea...3b6de3`; base `0x9323cb...2ad489`; base `0xa86a0d...dae787`; base `0xdb7b17...8cfbfb`; base `0xdf85bf...b58df9`; base `0xef601a...1cddeb`; base `0xf74074...30668f` | ⚠️ Unaudited |
| PairStorage | registry | base | 28 deployments: base [`0x2f0926...969ca9`](./contracts/base-8453/0x2f09260089c75112ef20621d947f96cea6969ca9/); base `0x433cf9...62db49`; base `0x45ad5d...5e515d`; base `0x4dadd0...0f8a04`; base `0x4ff011...de7eba`; base `0x5db377...6faec4`; base `0x65b3cc...a5bc39`; base `0x68e0dc...3fd08f`; base `0x6a2be7...2b2a88`; base `0x6b0181...e7ef54`; base `0x6eca24...d2b1e9`; base `0x6f839d...80f830`; base `0x8311b4...6a1700`; base `0x8b4027...daf4cc`; base `0x9894a0...351cec`; base `0x9db724...575a71`; base `0xb3048b...50db66`; base `0xbf8d25...2542b3`; base `0xceab88...eb0968`; base `0xd2c75f...39187b`; base `0xd910d2...98b195`; base `0xe41c54...372c26`; base `0xe4f1b2...0d08b0`; base `0xe7f661...b8ea15`; base `0xe83794...e45934`; base `0xe87d97...f6ee77`; base `0xf68a5c...4b0397`; base `0xf76370...426aa1` | ⚠️ Unaudited |
| PriceAggregator | operational_periphery | base | 14 deployments: base [`0x0611a3...336ad9`](./contracts/base-8453/0x0611a36cb46a19f5df3dc57951248a6f5f336ad9/); base `0x0cce4d...72fca8`; base `0x1996eb...921698`; base `0x1a172d...98d287`; base `0x4efea7...8e74f9`; base `0x503292...ef4ae3`; base `0x5e8487...ad5f23`; base `0x6b693d...382e5b`; base `0x6db4e7...aaea85`; base `0x7e7f28...01312d`; base `0x93f547...587ce4`; base `0xa4a1a9...e09b41`; base `0xbe4c3b...073be5`; base `0xbeddac...e2684f` | ⚠️ Unaudited |
| Referral | unknown | base | 5 deployments: base [`0x1a110b...9de82d`](./contracts/base-8453/0x1a110bba13a1f16cca4b79758bd39290f29de82d/); base `0x45e061...49112b`; base `0x7f163a...019bd1`; base `0xa3672c...5228a4`; base `0xfe4173...0b64f7` | ⚠️ Unaudited |
| RewardsDistributorSafeModule | operational_periphery | base | 7 deployments: base [`0x1ee37b...1e5ebc`](./contracts/base-8453/0x1ee37bb5ef11615e4bfc396e39a30e0b381e5ebc/); base `0x30a182...fc2e09`; base `0x3db8c1...ecd0f9`; base `0x614236...ef248a`; base `0x6f85d6...2d6da2`; base `0x9df761...5c470b`; base `0xfabe70...757f85` | ⚠️ Unaudited |
| SlippagePriceChecker | operational_periphery | base | 22 deployments: base [`0x1d1a3c...014ee2`](./contracts/base-8453/0x1d1a3c6420d949249b7e663a39800649b2014ee2/); base `0x1e297b...c32909`; base `0x1ec60e...20f48f`; base `0x2d5f13...3e12d8`; base `0x413c38...7bc599`; base `0x47517a...788df7`; base `0x518e95...e50c56`; base `0x5612e3...4e942c`; base `0x5a8f10...0b2ff6`; base `0x64cf01...67a07a`; base `0x68efd6...ab7bb0`; base `0x6af6fa...5d4946`; base `0x7d8fa4...d5262b`; base `0x863f30...0c188e`; base `0x9010e7...0fc5d0`; base `0xbb42bc...e5fef7`; base `0xc0189d...7c1f0a`; base `0xd64626...e4e059`; base `0xe3aed9...9cdbe1`; base `0xefbfc6...0d8036`; base `0xf732cc...21c8d7`; base `0xfc5411...287628` | ⚠️ Unaudited |
| StakedToken | token | base | 3 deployments: base [`0x553000...a1ced5`](./contracts/base-8453/0x553000ac1a8d7f2d6372e4b7adb7efcba9a1ced5/); base `0xb85e0f...54194c`; base `0xd54604...3bd9e9` | ⚠️ Unaudited |
| StrategyFactory | registry | base | 13 deployments: base [`0x14ba47...90ee28`](./contracts/base-8453/0x14ba47ef0286b345e2b74d26243767268290ee28/); base `0x1eeb3f...9de286`; base `0x1f9b6c...42db9f`; base `0x20c444...5282dc`; base `0x309836...cee2c6`; base `0x488eef...bbc67e`; base `0x689e1e...bec032`; base `0xa3eea5...d8d974`; base `0xaa5b91...fcec08`; base `0xaaa715...385289`; base `0xe23c8e...248712`; base `0xf3a726...a9ecf9`; base `0xf8cfde...9987f8` | ⚠️ Unaudited |
| Trading | unknown | base | 22 deployments: base [`0x00695e...ef1295`](./contracts/base-8453/0x00695efc895ec1e549e8f16f7f1c713eb7ef1295/); base `0x16ad53...564156`; base `0x16cb9a...8d72c5`; base `0x3ae990...e92b28`; base `0x449144...e11d4e`; base `0x462461...3cb6e7`; base `0x46395b...d24548`; base `0x60ff79...961248`; base `0x658828...3748b4`; base `0x6b199e...451507`; base `0x79c504...6050c8`; base `0x828b64...bed78c`; base `0x99c106...3c9669`; base `0xbd958a...9c70b0`; base `0xc10a28...18790b`; base `0xcb2806...156ad8`; base `0xd52ea5...3ffb30`; base `0xd7917d...df7968`; base `0xd973b8...6d9783`; base `0xe21275...f6c5dd`; base `0xeede11...9c4d5f`; base `0xfc3a95...0f9e6a` | ⚠️ Unaudited |
| TradingCallbacks | unknown | base | 17 deployments: base [`0x001230...833f9f`](./contracts/base-8453/0x00123005b7b62c4beff0a4b08247e06142833f9f/); base `0x00ee42...c53bda`; base `0x1fe035...064680`; base `0x2067ff...cfdf15`; base `0x21b59c...f5e706`; base `0x27282c...3442e9`; base `0x300a64...bdb960`; base `0x373fae...919349`; base `0x4263f0...eea20c`; base `0x45452e...7a6330`; base `0x680149...fc421c`; base `0x6a2293...7c5de0`; base `0x81a52f...494701`; base `0x855001...5e14fa`; base `0x8dc5e6...0ba86c`; base `0x9af69b...433e75`; base `0xb1c9c2...d8feca` | ⚠️ Unaudited |
| TradingStorage | unknown | base | 16 deployments: base [`0x0e8214...cd7dc9`](./contracts/base-8453/0x0e82149feb35a5edb540294129420a979dcd7dc9/); base `0x20155a...16e131`; base `0x222818...d23318`; base `0x236a48...fecffa`; base `0x586f65...b4e4f2`; base `0x62c544...371ca2`; base `0x717eb3...92244a`; base `0x83dbaf...35a996`; base `0x9229b6...9e71e4`; base `0x9e6b80...d12422`; base `0xb4d2f8...320c47`; base `0xb916e6...4ae5c3`; base `0xd14447...a7728c`; base `0xdbff96...e7760b`; base `0xe8ae56...e966d8`; base `0xf77e2b...01db70` | ⚠️ Unaudited |
| Tranche | core_logic | base | 11 deployments: base [`0x2db4ff...473775`](./contracts/base-8453/0x2db4fff86d94341f2fe137ff654f4b89ed473775/); base `0x548f3f...90d500`; base `0x5d023a...637c8f`; base `0x5fc6cd...93952b`; base `0x80cd76...5032d8`; base `0x8bc806...28d2bc`; base `0x96878c...429361`; base `0xc14930...f56559`; base `0xc3769e...fba26d`; base `0xdd6d91...068673`; base `0xe56ad2...2c35ed` | ⚠️ Unaudited |
| TransferAndEarn | unknown | base | 2 deployments: base [`0x0589ac...3fcd1b`](./contracts/base-8453/0x0589ac4734527fdb896367665b1ada33503fcd1b/); base `0xac4ddd...407d3e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | hyperliquid | 21 deployments: hyperliquid [`0x0095ac...ad196f`](./contracts/hyperliquid-999/0x0095acdd705cfcc11eaffb6c19a28c0153ad196f/); hyperliquid `0x174199...3ef28c`; hyperliquid `0x212d34...e70e31`; hyperliquid `0x24d33d...430028`; hyperliquid `0x25dd9e...0ba7a0`; hyperliquid `0x2ccf2a...2d282c`; hyperliquid `0x4a4007...3bbb51`; hyperliquid `0x68f77d...d4f054`; hyperliquid `0x705e89...38ec64`; hyperliquid `0x7ea4fc...755e6b`; hyperliquid `0x934c5a...66cf13`; hyperliquid `0xa8c940...b5313c`; hyperliquid `0xd347d9...6c6266`; hyperliquid `0xf1de5b...b5fea0`; hyperliquid `0xf82062...156aa6`; base `0x135fed...6679d2`; base `0x770eb2...078928`; base `0xbec3a2...848081`; base `0xc738e6...458414`; base `0xdd1095...025751`; base `0xea63ab...07dfa2` | ⚠️ Unaudited |
| USDCStrategyFactory | registry | base | 14 deployments: base [`0x06ac21...981094`](./contracts/base-8453/0x06ac210e3087960c1028b851611a6fab9e981094/); base `0x31b83d...3e47f9`; base `0x4417b1...8dfc00`; base `0x50b305...6cba92`; base `0x5967ea...e62d07`; base `0x657234...5c88bd`; base `0x71be9c...03aa9e`; base `0xb3c355...cba325`; base `0xc1b449...840427`; base `0xce3137...3c6030`; base `0xd7757a...058448`; base `0xea4d74...15a44e`; base `0xf64a5c...70b564`; base `0xf976a6...f14086` | ⚠️ Unaudited |
| VaultManager | core_logic | base | 12 deployments: base [`0x0ca0ba...527486`](./contracts/base-8453/0x0ca0ba253f192b31fb76aa93a2d3ec8687527486/); base `0x12c16c...a30546`; base `0x13c7e5...7de37a`; base `0x4ab200...ada864`; base `0x535940...a437b8`; base `0x6201d3...cce9fc`; base `0x866e4a...e3973d`; base `0x8e99ae...dd367d`; base `0xa7f4c2...fdfe96`; base `0xc15c0a...41ec18`; base `0xf9c4a5...b9f60a`; base `0xffd831...f811c5` | ⚠️ Unaudited |
| VeTranche | core_logic | base | 4 deployments: base [`0x8b0cf2...aa23ac`](./contracts/base-8453/0x8b0cf27913da70f6732f250a647301b111aa23ac/); base `0xa0ab93...5a9b46`; base `0xadeb64...21fcdd`; base `0xe5391d...7ae565` | ⚠️ Unaudited |
| Whitelist | unknown | hyperliquid | [`0xeea2e4...95ed61`](./contracts/hyperliquid-999/0xeea2e4459b4065be147d7f060f4b331b3c95ed61/) | ⚠️ Unaudited |
| Zora | unknown | base | [`0x111111...0afc69`](./contracts/base-8453/0x1111111111166b7fe7bd91427724b487980afc69/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MarginPool | core_logic | hyperliquid | 3 deployments: hyperliquid [`0x04fe57...fb126d`](./contracts/hyperliquid-999/0x04fe57fc72f75bfdca4a3f910256797e97fb126d/); hyperliquid `0x7d2e4b...1c6e35`; base `0x9aba7a...fb3103` | ⚠️ Unaudited (bytecode match) |
| ProxyAdmin | governance | hyperliquid | 3 deployments: hyperliquid [`0x596d60...95144e`](./contracts/hyperliquid-999/0x596d60051bbc2181944fd4799c4f4d598c95144e/); hyperliquid `0x6b1e48...0f7ebd`; base `0x64e231...664641` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (201)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x22353ca850ac6bf0f1f1641f7a256f6e690f078b) | proxy | base | `0x37de04...63f17c` | ❓ Unverified |
| Proxy (impl: 0x64049338da0b7358336d6ad81afddd9c1d353d33) | proxy | hyperliquid | `0x06d44b...df26c1` | ❓ Unverified |
| Proxy (impl: 0x753d3285c71caaed1f381c65c57497b276be8251) | proxy | hyperliquid | `0xf07739...0e3749` | ❓ Unverified |
| Proxy (impl: 0xfa420c97e5c713b13d1c943a4faeb60845a1a730) | proxy | base | `0x8b2ca7...28f086` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x00cc68...199513` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x0a0657...84a2e3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x0a6439...16160b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x1150aa...800685` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x169617...e5c3dc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x16a6b6...25f53f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x19a871...cbcd82` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x1c0148...b18c5d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x217f3b...fa4e12` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x21f632...8d9967` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x227ffb...44cda8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x252985...92bfdd` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x28d9da...b0f32c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x295651...346fd6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x2b3c1d...6f8546` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x30acf5...dae371` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x317b4a...45228a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x31caee...f93fea` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x326f64...b851c7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x32cc9a...dcac58` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x3345a5...92d076` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x372863...baef5e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x39cb47...4385fa` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x3baf3d...507c86` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x3fa79b...1c66f0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x429a40...a8040c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x438530...18c87b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x47ae69...c4e8bf` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x4c8586...95d42e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x4ccf9c...e5dbfb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x5276fa...186d7f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x528b0a...966340` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x5501b6...24df2d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x578858...663fe0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x58402c...b684f6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x5bb1fb...75416f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x5c7e60...2fa1b7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x5e6dba...0c1047` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x5e9761...b2422d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x60f291...a3977d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x63f69b...5015b0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x640493...353d33` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x67604c...40f36a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x67b1a0...8a03ce` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x67da33...2448e7` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x6b2935...1e93df` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x6eab66...bcf2a2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x7329cd...ff5696` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x744a86...a5d9bc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x74cc03...27a6a5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x758d0f...934532` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x768f5f...178888` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x783915...baf64d` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x7a2196...9a02c2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x7b08b9...d10391` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x7bf434...13affc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x7bf742...6fcc14` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x7de9d9...7a8939` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x7e6448...347b86` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x7e6d82...dcd0f8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x7e737d...11678a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x80d11a...a333e5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x823b8b...d37b57` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x833954...2ebe2e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x84ced9...1af1aa` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x84d4c4...0c54ab` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x84f7c6...33bf15` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x88a78c...d7fcb6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x89031b...2d292f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x8c5e29...0bbcac` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x8daadb...e93265` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x8ef564...5b34c5` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x9077f1...2331d4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x91d54e...afa792` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x926002...d98c2b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x939b0c...2210aa` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x96e28c...03c2b9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x97f1d7...190449` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x9a220a...aed9fb` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x9a3076...181465` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x9a7b42...47b3ca` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x9b3218...05e156` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x9bd37c...8ca4b2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x9c7f86...1a2da4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x9de7af...63400b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x9fef03...ce2f75` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xa04e16...204995` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xa474a6...7c571f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xa4b06e...9d77ca` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xab57ee...122ed3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xad2652...fd8aea` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xb52b7d...b46174` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xb820c1...cb389f` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xbb3aa5...867a59` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xbd6077...4ff304` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xbe6604...177cf9` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xbeefee...e8a966` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xc3b8c9...019f7e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xc6148c...7001dc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xc769b2...3e14f2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xc8c4e1...e63a97` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xc932ec...a9946b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xca0431...fe60bf` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xcadb53...6ea3a2` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xcb0aae...70aef8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xd0f46c...568cc6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xd3f787...8fcdb0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xdaa547...9da4d6` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xdb0ba6...268dd4` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xdc7f97...7c8068` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xe26b24...30a371` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xe4821a...1de529` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xe88137...d738be` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xe889d6...b21aea` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xea5c32...675bf3` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xec8594...aeb028` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xec8fd3...064412` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xf1c318...df2233` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xf88f1e...3bf9bf` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xfd49d0...6e2f09` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xfe025f...87f56a` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xfe2f50...a19b4e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xfe4dfa...10b693` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xffced5...e37155` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xffcf42...e14743` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x069070...22a0f3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0aa188...4752f4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x100ad6...07b788` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x10118e...06e98b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x10b3c3...4c732a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x14aebf...73c106` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x17d8cd...d06275` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x18c411...d5df82` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x19c9b0...472d47` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1f410e...49cb9e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x20a187...cf0b98` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x22353c...0f078b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2408b5...ea9572` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2b8f49...0e85a7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2d2b39...471ccb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x31eb6e...1a02cf` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x32858c...241a31` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x33f720...e8d079` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x36668e...1a44f1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x37280e...6b60ab` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3addfc...cec30b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3d4a03...709002` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x406a92...7bcefb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x42e7cc...b49650` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x440804...2aa8a5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x46e2ec...c87aa7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4e9d71...736fb1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x538a6a...a5c6ef` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x57a9c0...99ec9a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x59c9b2...112b28` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5afce2...63e712` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5c7fbc...a530e1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x61b5c1...2058d0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x67c67f...792d86` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x690fcf...94c7f0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6a75ef...a3e29b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6b71ca...654908` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6e9e36...369db7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6ff79e...7c60f8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x71e792...c81889` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x76c91a...e6b8c6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x78c79b...13a930` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7b06e4...fdc25c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7d7e7d...9448b4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x82c627...232e9d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8ba486...1d05b7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8e492e...647511` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8ed778...7a3ce0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8fc4e8...aba9a3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9884c1...b574da` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa25966...6c81d4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa30c33...c3a09a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa3e470...519d95` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa5af7d...bb8c84` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xaf6be8...ef9e71` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb4106b...1c1c11` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb6298f...a83bd7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb8c43f...9502ab` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb95353...511695` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbb58df...eb00a8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc2ff0b...f0459e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc7a69e...f598f0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcbc7bc...480877` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd3ab6f...6a2938` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd96c38...cefb68` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe294f5...6ca36d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xee7804...070bd0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf0093b...ca8175` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf765c9...06c4a4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfa420c...a1a730` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfb7d8f...c719c4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfdcfbc...cf2acb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x696f94...5df4f1`](./contracts/base-8453/0x696f9436b67233384889472cd7cd58a6fb5df4f1/) | Token | token | $150,783,135.30 | Verified native implementation with $150,783,135.30 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x311935...39cf82`](./contracts/base-8453/0x311935cd80b76769bf2ecc9d8ab7635b2139cf82/) | CrossChainERC20 | token | $10,124,248.64 | Verified native implementation with $10,124,248.64 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x04fe57...fb126d`](./contracts/hyperliquid-999/0x04fe57fc72f75bfdca4a3f910256797e97fb126d/) | MarginPool | core_logic | $111,847.39 | Verified native implementation with $111,847.39 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x2ef31a...29d0c5`](./contracts/hyperliquid-999/0x2ef31a3c848e0789feefc56377b46db63329d0c5/) | HedgedPool | core_logic | $14,167.85 | Verified native implementation with $14,167.85 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x79c192...c7bbd1`](./contracts/base-8453/0x79c1921fc8cd076415cbd1ebb330629f4ec7bbd1/) | BurnAndEarn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9d1510...a41e31`](./contracts/base-8453/0x9d15103f8fdbf9b989583a37a49724f6b3a41e31/) | Execute | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc90f6d...9b3284`](./contracts/base-8453/0xc90f6d74f81cb551c19d138b50456c644f9b3284/) | FeeSplitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3409dd...1edbe4`](./contracts/base-8453/0x3409ddb621ab0f6dcc82d656c4a4bc8c0d1edbe4/) | HedgedPoolLib | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x310936...1188a4`](./contracts/base-8453/0x31093641ac0a6930f5c0909c4540d295051188a4/) | MAMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x036e14...d81af0`](./contracts/base-8453/0x036e14fe5ad9636f36d9878d7bcf6ea795d81af0/) | MAMO2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x20ff28...c492be`](./contracts/base-8453/0x20ff28f7d8313b81989620a3cea7ec4151c492be/) | MamoStakingRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x26ba15...f28550`](./contracts/base-8453/0x26ba1566bba5660eeccc6c052e953e945bf28550/) | MamoStakingStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1829e7...160475`](./contracts/base-8453/0x1829e71933058620aa8a92556dc0e04f5d160475/) | MamoStakingStrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x029773...861e6c`](./contracts/base-8453/0x029773ca368ddd11d76b6485dc53748bd6861e6c/) | MamoStrategyRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x1e1be1...e5dfaf`](./contracts/hyperliquid-999/0x1e1be1b7205d0038e2588a7c7d1059875ae5dfaf/) | MMTradeHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7855b0...f6c7a3`](./contracts/base-8453/0x7855b0821401ab078f6cf457deafae775ff6c7a3/) | MultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xf6d788...b4c98d`](./contracts/hyperliquid-999/0xf6d788dd55738f82d03f97597660221ca8b4c98d/) | OtokenFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x18cbd5...b9a975`](./contracts/base-8453/0x18cbd536ba9a069e48f6419769d73da78eb9a975/) | PairInfos | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2f0926...969ca9`](./contracts/base-8453/0x2f09260089c75112ef20621d947f96cea6969ca9/) | PairStorage | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1ee37b...1e5ebc`](./contracts/base-8453/0x1ee37bb5ef11615e4bfc396e39a30e0b381e5ebc/) | RewardsDistributorSafeModule | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1d1a3c...014ee2`](./contracts/base-8453/0x1d1a3c6420d949249b7e663a39800649b2014ee2/) | SlippagePriceChecker | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x553000...a1ced5`](./contracts/base-8453/0x553000ac1a8d7f2d6372e4b7adb7efcba9a1ced5/) | StakedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x14ba47...90ee28`](./contracts/base-8453/0x14ba47ef0286b345e2b74d26243767268290ee28/) | StrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x00695e...ef1295`](./contracts/base-8453/0x00695efc895ec1e549e8f16f7f1c713eb7ef1295/) | Trading | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x001230...833f9f`](./contracts/base-8453/0x00123005b7b62c4beff0a4b08247e06142833f9f/) | TradingCallbacks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0e8214...cd7dc9`](./contracts/base-8453/0x0e82149feb35a5edb540294129420a979dcd7dc9/) | TradingStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2db4ff...473775`](./contracts/base-8453/0x2db4fff86d94341f2fe137ff654f4b89ed473775/) | Tranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0589ac...3fcd1b`](./contracts/base-8453/0x0589ac4734527fdb896367665b1ada33503fcd1b/) | TransferAndEarn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06ac21...981094`](./contracts/base-8453/0x06ac210e3087960c1028b851611a6fab9e981094/) | USDCStrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0ca0ba...527486`](./contracts/base-8453/0x0ca0ba253f192b31fb76aa93a2d3ec8687527486/) | VaultManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8b0cf2...aa23ac`](./contracts/base-8453/0x8b0cf27913da70f6732f250a647301b111aa23ac/) | VeTranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xeea2e4...95ed61`](./contracts/hyperliquid-999/0xeea2e4459b4065be147d7f060f4b331b3c95ed61/) | Whitelist | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 74 |
| upstream | 0 |
| standard_library | 6 |
| needs_review | 162 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
