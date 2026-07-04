# Agentic Audit Brief: Hypersurface

## Project Overview

- Project: Hypersurface (`hypersurface`)
- Website: [https://app.hypersurface.io](https://app.hypersurface.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.798Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: base, hyperliquid
- Contract surface: 282 unique implementations (480 raw deployments)
- DeFi Llama TVL: $2,590,605.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Options. Structurally: 62 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 8 ERC20 tokens, 2 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 11 common project-authored base contract(s) (contextupgradeable, accesscontrolenumerable, erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 539; live-surface contracts included: 461 (240 live, 221 unknown).
- Excluded by liveness: 78 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 5/82 (6.1%)
- Deployed-live implementations: 87 of 282 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 5/87
- Verified + Unaudited implementations: 82
- Verified by bytecode match: 0
- Unverified implementations: 195
- Unique implementations: 282
- Raw deployments: 480
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-11 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 5 | 5.7% | 2025-11 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HedgedPool | core_logic | hyperliquid | n/a | 3 deployments: hyperliquid [`0x2ef31a...29d0c5`](./contracts/hyperliquid-999/0x2ef31a3c848e0789feefc56377b46db63329d0c5/); hyperliquid `0x9749a0...5ab298`; base `0x433cf9...33f943` | ✅ Audited |
| HedgedPool | unknown | base | n/a | 2 deployments: base [`0x688939...8df56d`](./contracts/base-8453/0x68893915f202e5da2ef01493463c50b2f68df56d/); base `0xbac1bc...07fac7` | ✅ Audited |
| HedgedPoolLib | core_logic | base | n/a | 4 deployments: hyperliquid `0x384dfc...ea1a71`; hyperliquid `0xe16f4b...d1f48b`; base [`0x3409dd...1edbe4`](./contracts/base-8453/0x3409ddb621ab0f6dcc82d656c4a4bc8c0d1edbe4/); base `0x4c5a17...ba1dbf` | ✅ Audited |
| OtokenFactory | registry | hyperliquid | n/a | [`0xf6d788...b4c98d`](./contracts/hyperliquid-999/0xf6d788dd55738f82d03f97597660221ca8b4c98d/) | ✅ Audited |
| Whitelist | unknown | hyperliquid | n/a | [`0xeea2e4...95ed61`](./contracts/hyperliquid-999/0xeea2e4459b4065be147d7f060f4b331b3c95ed61/) | ✅ Audited |

### ⚠️ Verified + Unaudited (82)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Aero | token | base | n/a | [`0x940181...d98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | ⚠️ Unaudited |
| BurnAndEarn | unknown | base | n/a | 2 deployments: base [`0x79c192...c7bbd1`](./contracts/base-8453/0x79c1921fc8cd076415cbd1ebb330629f4ec7bbd1/); base `0xe25e01...1c7e44` | ⚠️ Unaudited |
| CrossChainERC20 | token | base | n/a | [`0x311935...39cf82`](./contracts/base-8453/0x311935cd80b76769bf2ecc9d8ab7635b2139cf82/) | ⚠️ Unaudited |
| ERC20MoonwellMorphoStrategy | unknown | base | n/a | 4 deployments: base [`0x1ddaef...57310c`](./contracts/base-8453/0x1ddaef2ead56cc4544c35d6957ba4e948f57310c/); base `0x3efc7c...d20d1d`; base `0x4fecdb...7a523e`; base `0xf847f6...a5d3f7` | ⚠️ Unaudited |
| FeeSplitter | operational_periphery | base | n/a | [`0xc90f6d...9b3284`](./contracts/base-8453/0xc90f6d74f81cb551c19d138b50456c644f9b3284/) | ⚠️ Unaudited |
| GaugeFactory | operational_periphery | base | n/a | [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | ⚠️ Unaudited |
| MAMO | unknown | base | n/a | [`0x7300b3...0219fe`](./contracts/base-8453/0x7300b37dfdfab110d83290a29dfb31b1740219fe/) | ⚠️ Unaudited |
| MAMO2 | unknown | base | n/a | 2 deployments: base [`0x036e14...d81af0`](./contracts/base-8453/0x036e14fe5ad9636f36d9878d7bcf6ea795d81af0/); base `0xaefd28...0cce63` | ⚠️ Unaudited |
| MAMO2 | unknown | base | n/a | 2 deployments: base [`0x9294ea...ce6852`](./contracts/base-8453/0x9294ea619d273a7a9d9daca79472a18d03ce6852/); base `0x980a12...fc6dcb` | ⚠️ Unaudited |
| MamoStakingRegistry | registry | base | n/a | 5 deployments: base [`0x20ff28...c492be`](./contracts/base-8453/0x20ff28f7d8313b81989620a3cea7ec4151c492be/); base `0xa4f24b...e17e32`; base `0xec2fa1...62dfa3`; base `0xf19648...3b5d0d`; base `0xff3bb8...2b2706` | ⚠️ Unaudited |
| MamoStakingStrategy | core_logic | base | n/a | 5 deployments: base [`0x26ba15...f28550`](./contracts/base-8453/0x26ba1566bba5660eeccc6c052e953e945bf28550/); base `0x2785d5...f07749`; base `0x724051...abed09`; base `0xd8100e...0b5157`; base `0xfe25f3...72f8a4` | ⚠️ Unaudited |
| MamoStakingStrategyFactory | registry | base | n/a | 5 deployments: base [`0x1829e7...160475`](./contracts/base-8453/0x1829e71933058620aa8a92556dc0e04f5d160475/); base `0x877de3...fc17ea`; base `0xa0449e...3f408a`; base `0xd034bf...ae23c8`; base `0xd7c3f4...c92239` | ⚠️ Unaudited |
| MamoStrategyRegistry | unknown | base | n/a | 9 deployments: base [`0x029773...861e6c`](./contracts/base-8453/0x029773ca368ddd11d76b6485dc53748bd6861e6c/); base `0x142f39...bcb76c`; base `0x1b8b7d...508f97`; base `0x46a562...4baa92`; base `0x759741...b6fe29`; base `0xb5c877...4d65d0`; base `0xc4fdf7...c70e85`; base `0xe4ccad...6edfab`; base `0xe659d7...d54710` | ⚠️ Unaudited |
| MarginPool | core_logic | hyperliquid | n/a | 2 deployments: hyperliquid [`0x04fe57...fb126d`](./contracts/hyperliquid-999/0x04fe57fc72f75bfdca4a3f910256797e97fb126d/); base `0x9aba7a...fb3103` | ⚠️ Unaudited |
| Minter | operational_periphery | base | n/a | [`0xeb0183...a33fe5`](./contracts/base-8453/0xeb018363f0a9af8f91f06fee6613a751b2a33fe5/) | ⚠️ Unaudited |
| MMTradeHelper | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1e1be1...e5dfaf`](./contracts/hyperliquid-999/0x1e1be1b7205d0038e2588a7c7d1059875ae5dfaf/); hyperliquid `0x5d2cbe...10269d` | ⚠️ Unaudited |
| Multicall | periphery | base | n/a | 8 deployments: base [`0x1578bd...68f60a`](./contracts/base-8453/0x1578bd9ff22f54707bc39aed698c97df9068f60a/); base `0x1602cc...3f4920`; base `0x261640...e9ecda`; base `0x7a829c...3848d8`; base `0x7cb24e...0f1f4c`; base `0x98ae9a...b79040`; base `0xb040be...560222`; base `0xe0aa21...775942` | ⚠️ Unaudited |
| Multicall | unknown | base | n/a | 2 deployments: base [`0x23035f...29f33c`](./contracts/base-8453/0x23035f0574adc543f5611eac9a518215fa29f33c/); base `0x603664...0f82c5` | ⚠️ Unaudited |
| Multicall | unknown | base | n/a | 2 deployments: base [`0x88ab4a...33eb80`](./contracts/base-8453/0x88ab4ad767955f495b25fad394318b920533eb80/); base `0xc40153...5e7eda` | ⚠️ Unaudited |
| Multicall | periphery | base | n/a | [`0xa7cfc4...5d099e`](./contracts/base-8453/0xa7cfc43872f4d7b0e6141ee8c36f1f7fee5d099e/) | ⚠️ Unaudited |
| MultiRewards | unknown | base | n/a | 2 deployments: base [`0x7855b0...f6c7a3`](./contracts/base-8453/0x7855b0821401ab078f6cf457deafae775ff6c7a3/); base `0xec9abc...1a7791` | ⚠️ Unaudited |
| OpClaim | unknown | base | n/a | 2 deployments: base [`0x1c69cc...0203a5`](./contracts/base-8453/0x1c69cc8be2b29225b74743752a721ca21d0203a5/); base `0x93c08d...6663ca` | ⚠️ Unaudited |
| PairInfos | periphery | base | n/a | 7 deployments: base [`0x18cbd5...b9a975`](./contracts/base-8453/0x18cbd536ba9a069e48f6419769d73da78eb9a975/); base `0x4859a4...3c6f6e`; base `0xd4d8ee...075093`; base `0xdb7b17...8cfbfb`; base `0xdf85bf...b58df9`; base `0xef601a...1cddeb`; base `0xf74074...30668f` | ⚠️ Unaudited |
| PairStorage | registry | base | n/a | 18 deployments: base [`0x3a9392...e6d64d`](./contracts/base-8453/0x3a93922fd64bac36ba63ebc52fe982bb7ce6d64d/); base `0x433cf9...62db49`; base `0x4dadd0...0f8a04`; base `0x65b3cc...a5bc39`; base `0x68e0dc...3fd08f`; base `0x6b0181...e7ef54`; base `0x6f839d...80f830`; base `0x8311b4...6a1700`; base `0x8b4027...daf4cc`; base `0x9894a0...351cec`; base `0xb3048b...50db66`; base `0xceab88...eb0968`; base `0xd910d2...98b195`; base `0xe4f1b2...0d08b0`; base `0xe7f661...b8ea15`; base `0xe83794...e45934`; base `0xe87d97...f6ee77`; base `0xf76370...426aa1` | ⚠️ Unaudited |
| PairStorage | unknown | base | n/a | 2 deployments: base [`0x5db377...6faec4`](./contracts/base-8453/0x5db3772136e5557efe028db05ee95c84d76faec4/); base `0x6a2be7...2b2a88` | ⚠️ Unaudited |
| PriceAggregator | operational_periphery | base | n/a | 10 deployments: base [`0x0cce4d...72fca8`](./contracts/base-8453/0x0cce4d12192ea86bde79f774409cf6f5ee72fca8/); base `0x1a172d...98d287`; base `0x4efea7...8e74f9`; base `0x503292...ef4ae3`; base `0x5e8487...ad5f23`; base `0x6b693d...382e5b`; base `0x6db4e7...aaea85`; base `0x7e7f28...01312d`; base `0x93f547...587ce4`; base `0xbeddac...e2684f` | ⚠️ Unaudited |
| ProxyAdmin | governance | hyperliquid | n/a | 2 deployments: hyperliquid [`0x596d60...95144e`](./contracts/hyperliquid-999/0x596d60051bbc2181944fd4799c4f4d598c95144e/); hyperliquid `0x6b1e48...0f7ebd` | ⚠️ Unaudited |
| Referral | unknown | base | n/a | [`0x1a110b...9de82d`](./contracts/base-8453/0x1a110bba13a1f16cca4b79758bd39290f29de82d/) | ⚠️ Unaudited |
| Referral | unknown | base | n/a | 2 deployments: base [`0x45e061...49112b`](./contracts/base-8453/0x45e0611972e930462781c75c7295504c0e49112b/); base `0xa3672c...5228a4` | ⚠️ Unaudited |
| Referral | unknown | base | n/a | [`0xfe4173...0b64f7`](./contracts/base-8453/0xfe417372088146476ca28fa35d00f5e0f60b64f7/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | base | n/a | [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | ⚠️ Unaudited |
| RewardsDistributorSafeModule | operational_periphery | base | n/a | 7 deployments: base [`0x1ee37b...1e5ebc`](./contracts/base-8453/0x1ee37bb5ef11615e4bfc396e39a30e0b381e5ebc/); base `0x30a182...fc2e09`; base `0x3db8c1...ecd0f9`; base `0x614236...ef248a`; base `0x6f85d6...2d6da2`; base `0x9df761...5c470b`; base `0xfabe70...757f85` | ⚠️ Unaudited |
| Router | adapter | base | n/a | [`0xcf77a3...874e43`](./contracts/base-8453/0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43/) | ⚠️ Unaudited |
| SlippagePriceChecker | unknown | base | n/a | 2 deployments: base [`0x1d1a3c...014ee2`](./contracts/base-8453/0x1d1a3c6420d949249b7e663a39800649b2014ee2/); base `0x1e297b...c32909` | ⚠️ Unaudited |
| SlippagePriceChecker | unknown | base | n/a | 2 deployments: base [`0x1ec60e...20f48f`](./contracts/base-8453/0x1ec60ecef1e6f9d358408cdef4d9c8aa1820f48f/); base `0xc0189d...7c1f0a` | ⚠️ Unaudited |
| SlippagePriceChecker | unknown | base | n/a | 2 deployments: base [`0x2d5f13...3e12d8`](./contracts/base-8453/0x2d5f13d0d4fdb40d0315f08c2f82b76a2c3e12d8/); base `0x9010e7...0fc5d0` | ⚠️ Unaudited |
| SlippagePriceChecker | unknown | base | n/a | 2 deployments: base [`0x413c38...7bc599`](./contracts/base-8453/0x413c38b68fe730f2bc30d8cde965967d1c7bc599/); base `0x5a8f10...0b2ff6` | ⚠️ Unaudited |
| SlippagePriceChecker | unknown | base | n/a | 2 deployments: base [`0x47517a...788df7`](./contracts/base-8453/0x47517abd7bea7ab21c7510fc4b63eb2b74788df7/); base `0x64cf01...67a07a` | ⚠️ Unaudited |
| SlippagePriceChecker | unknown | base | n/a | 2 deployments: base [`0x5612e3...4e942c`](./contracts/base-8453/0x5612e3942202d7aaf40da84454ee64914b4e942c/); base `0xd64626...e4e059` | ⚠️ Unaudited |
| SlippagePriceChecker | unknown | base | n/a | 2 deployments: base [`0x68efd6...ab7bb0`](./contracts/base-8453/0x68efd623f47acf218f5c2063f5a4fb2d2eab7bb0/); base `0x7d8fa4...d5262b` | ⚠️ Unaudited |
| SlippagePriceChecker | operational_periphery | base | n/a | [`0x6af6fa...5d4946`](./contracts/base-8453/0x6af6fa071b74e255d5732df2e703446bfb5d4946/) | ⚠️ Unaudited |
| SlippagePriceChecker | unknown | base | n/a | 2 deployments: base [`0x863f30...0c188e`](./contracts/base-8453/0x863f302e78a463dcb65e28b8a6507922240c188e/); base `0xbb42bc...e5fef7` | ⚠️ Unaudited |
| SlippagePriceChecker | unknown | base | n/a | 2 deployments: base [`0xe3aed9...9cdbe1`](./contracts/base-8453/0xe3aed9eaa34b22532561bc67e3c63cf8a49cdbe1/); base `0xefbfc6...0d8036` | ⚠️ Unaudited |
| SlippagePriceChecker | unknown | base | n/a | 2 deployments: base [`0xf732cc...21c8d7`](./contracts/base-8453/0xf732cc757f195cc5312fe78398dac6be9021c8d7/); base `0xfc5411...287628` | ⚠️ Unaudited |
| StakedToken | token | base | n/a | 3 deployments: base [`0x553000...a1ced5`](./contracts/base-8453/0x553000ac1a8d7f2d6372e4b7adb7efcba9a1ced5/); base `0xb85e0f...54194c`; base `0xd54604...3bd9e9` | ⚠️ Unaudited |
| StrategyFactory | registry | base | n/a | 13 deployments: base [`0x14ba47...90ee28`](./contracts/base-8453/0x14ba47ef0286b345e2b74d26243767268290ee28/); base `0x1eeb3f...9de286`; base `0x1f9b6c...42db9f`; base `0x20c444...5282dc`; base `0x309836...cee2c6`; base `0x488eef...bbc67e`; base `0x689e1e...bec032`; base `0xa3eea5...d8d974`; base `0xaa5b91...fcec08`; base `0xaaa715...385289`; base `0xe23c8e...248712`; base `0xf3a726...a9ecf9`; base `0xf8cfde...9987f8` | ⚠️ Unaudited |
| Token | token | base | n/a | [`0x696f94...5df4f1`](./contracts/base-8453/0x696f9436b67233384889472cd7cd58a6fb5df4f1/) | ⚠️ Unaudited |
| Trading | unknown | base | n/a | 14 deployments: base [`0x00695e...ef1295`](./contracts/base-8453/0x00695efc895ec1e549e8f16f7f1c713eb7ef1295/); base `0x16ad53...564156`; base `0x16cb9a...8d72c5`; base `0x3ae990...e92b28`; base `0x462461...3cb6e7`; base `0x46395b...d24548`; base `0x6b199e...451507`; base `0x79c504...6050c8`; base `0x99c106...3c9669`; base `0xd52ea5...3ffb30`; base `0xd7917d...df7968`; base `0xe21275...f6c5dd`; base `0xeede11...9c4d5f`; base `0xfc3a95...0f9e6a` | ⚠️ Unaudited |
| Trading | unknown | base | n/a | [`0x449144...e11d4e`](./contracts/base-8453/0x44914408af82bc9983bbb330e3578e1105e11d4e/) | ⚠️ Unaudited |
| Trading | unknown | base | n/a | 2 deployments: base [`0x60ff79...961248`](./contracts/base-8453/0x60ff7987fa2ad267fc6723b96bb2426bd7961248/); base `0xcb2806...156ad8` | ⚠️ Unaudited |
| TradingCallbacks | unknown | base | n/a | 13 deployments: base [`0x001230...833f9f`](./contracts/base-8453/0x00123005b7b62c4beff0a4b08247e06142833f9f/); base `0x1fe035...064680`; base `0x2067ff...cfdf15`; base `0x21b59c...f5e706`; base `0x300a64...bdb960`; base `0x45452e...7a6330`; base `0x680149...fc421c`; base `0x6a2293...7c5de0`; base `0x81a52f...494701`; base `0x855001...5e14fa`; base `0x8dc5e6...0ba86c`; base `0x9af69b...433e75`; base `0xb1c9c2...d8feca` | ⚠️ Unaudited |
| TradingStorage | unknown | base | n/a | 7 deployments: base [`0x0e8214...cd7dc9`](./contracts/base-8453/0x0e82149feb35a5edb540294129420a979dcd7dc9/); base `0x236a48...fecffa`; base `0x717eb3...92244a`; base `0x9229b6...9e71e4`; base `0x9e6b80...d12422`; base `0xb916e6...4ae5c3`; base `0xdbff96...e7760b` | ⚠️ Unaudited |
| Tranche | core_logic | base | n/a | 9 deployments: base [`0x2db4ff...473775`](./contracts/base-8453/0x2db4fff86d94341f2fe137ff654f4b89ed473775/); base `0x5d023a...637c8f`; base `0x5fc6cd...93952b`; base `0x80cd76...5032d8`; base `0x8bc806...28d2bc`; base `0x96878c...429361`; base `0xc3769e...fba26d`; base `0xdd6d91...068673`; base `0xe56ad2...2c35ed` | ⚠️ Unaudited |
| TransferAndEarn | unknown | base | n/a | 2 deployments: base [`0x0589ac...3fcd1b`](./contracts/base-8453/0x0589ac4734527fdb896367665b1ada33503fcd1b/); base `0xac4ddd...407d3e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x0095ac...ad196f`](./contracts/hyperliquid-999/0x0095acdd705cfcc11eaffb6c19a28c0153ad196f/); hyperliquid `0xe88137...d738be` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x174199...3ef28c`](./contracts/hyperliquid-999/0x174199040622973df338ec0fabd8a596103ef28c/); hyperliquid `0x7bf742...6fcc14` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x212d34...e70e31`](./contracts/hyperliquid-999/0x212d347deacddb34969f944510c2c4f3c8e70e31/); hyperliquid `0x9a7b42...47b3ca` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x24d33d...430028`](./contracts/hyperliquid-999/0x24d33df70cbf0a7af595d6bd6c8e51b726430028/); hyperliquid `0x7de9d9...7a8939` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x25dd9e...0ba7a0`](./contracts/hyperliquid-999/0x25dd9eaae2e0b118a2cefdd229233654840ba7a0/); hyperliquid `0x7e6d82...dcd0f8` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x2ccf2a...2d282c`](./contracts/hyperliquid-999/0x2ccf2a0bd960b849e5bf4502e114acb4332d282c/); hyperliquid `0xbd6077...4ff304` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x30acf5...dae371`](./contracts/hyperliquid-999/0x30acf5ac982804df26e3b09c63b31ac465dae371/); hyperliquid `0x68f77d...d4f054` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x438530...18c87b`](./contracts/hyperliquid-999/0x438530c3c77c38f3ff47dc9c20b40ceba018c87b/); hyperliquid `0xf82062...156aa6` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x4a4007...3bbb51`](./contracts/hyperliquid-999/0x4a400778ddd7331a4f716f062eda4f66ef3bbb51/); hyperliquid `0x80d11a...a333e5` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x578858...663fe0`](./contracts/hyperliquid-999/0x578858dd49292ecc818f1a88f95fc079b8663fe0/); hyperliquid `0xa8c940...b5313c` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x705e89...38ec64`](./contracts/hyperliquid-999/0x705e893c66c973accb316c806765ed86d238ec64/); hyperliquid `0x9b3218...05e156` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x74cc03...27a6a5`](./contracts/hyperliquid-999/0x74cc036d4626ebdb28a24bbad7fe9ecbe227a6a5/); hyperliquid `0xf1de5b...b5fea0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7a2196...9a02c2`](./contracts/hyperliquid-999/0x7a21961c9945eca79975f386bfd7d815e99a02c2/); hyperliquid `0x934c5a...66cf13` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x7ea4fc...755e6b`](./contracts/hyperliquid-999/0x7ea4fc58abdac0c855e93ac9e14bce53f3755e6b/); hyperliquid `0x833954...2ebe2e` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0xd347d9...6c6266`](./contracts/hyperliquid-999/0xd347d9f5f0f4bb25a2a40fde1207e81b406c6266/); hyperliquid `0xe26b24...30a371` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x10b3c3...4c732a`](./contracts/base-8453/0x10b3c39c66b43a6c7169e779d9e6a6d1f74c732a/); base `0xea63ab...07dfa2` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x135fed...6679d2`](./contracts/base-8453/0x135fedc0159391ac8e3f0bf88d8fe319086679d2/); base `0xfb7d8f...c719c4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x32858c...241a31`](./contracts/base-8453/0x32858cbecea9d021e39dab7ab9f1b2d171241a31/); base `0xbec3a2...848081` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x5afce2...63e712`](./contracts/base-8453/0x5afce295fde99088def78e4cbae77f20d063e712/); base `0xdd1095...025751` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0x770eb2...078928`](./contracts/base-8453/0x770eb2941045f7f7d675f6b522d142df2e078928/); base `0x8fc4e8...aba9a3` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | base | n/a | 2 deployments: base [`0xc738e6...458414`](./contracts/base-8453/0xc738e6c690931aaa4aad73d214e6c76349458414/); base `0xd3ab6f...6a2938` | ⚠️ Unaudited |
| USDCStrategyFactory | unknown | base | n/a | 14 deployments: base [`0x06ac21...981094`](./contracts/base-8453/0x06ac210e3087960c1028b851611a6fab9e981094/); base `0x31b83d...3e47f9`; base `0x4417b1...8dfc00`; base `0x50b305...6cba92`; base `0x5967ea...e62d07`; base `0x657234...5c88bd`; base `0x71be9c...03aa9e`; base `0xb3c355...cba325`; base `0xc1b449...840427`; base `0xce3137...3c6030`; base `0xd7757a...058448`; base `0xea4d74...15a44e`; base `0xf64a5c...70b564`; base `0xf976a6...f14086` | ⚠️ Unaudited |
| VaultManager | core_logic | base | n/a | 7 deployments: base [`0x0ca0ba...527486`](./contracts/base-8453/0x0ca0ba253f192b31fb76aa93a2d3ec8687527486/); base `0x12c16c...a30546`; base `0x4ab200...ada864`; base `0x6201d3...cce9fc`; base `0xa7f4c2...fdfe96`; base `0xc15c0a...41ec18`; base `0xf9c4a5...b9f60a` | ⚠️ Unaudited |
| VeArtProxy | unknown | base | n/a | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | ⚠️ Unaudited |
| VeTranche | core_logic | base | n/a | 4 deployments: base [`0x8b0cf2...aa23ac`](./contracts/base-8453/0x8b0cf27913da70f6732f250a647301b111aa23ac/); base `0xa0ab93...5a9b46`; base `0xadeb64...21fcdd`; base `0xe5391d...7ae565` | ⚠️ Unaudited |
| Voter | unknown | base | n/a | [`0x166135...c480a5`](./contracts/base-8453/0x16613524e02ad97edfef371bc883f2f5d6c480a5/) | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | base | n/a | [`0xebf418...67e6b4`](./contracts/base-8453/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4/) | ⚠️ Unaudited |
| Zora | unknown | base | n/a | [`0x111111...0afc69`](./contracts/base-8453/0x1111111111166b7fe7bd91427724b487980afc69/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (195)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x64049338da0b7358336d6ad81afddd9c1d353d33) | unknown | hyperliquid | n/a | 2 deployments: hyperliquid `0x06d44b...df26c1`; hyperliquid `0x640493...353d33` | ❓ Unverified |
| Proxy (impl: 0xf61f55ddc42bb1d6e08a04e22c78eed7d1e37e3e) | proxy | hyperliquid | n/a | 2 deployments: hyperliquid `0xf07739...0e3749`; hyperliquid `0xf61f55...e37e3e` | ❓ Unverified |
| Proxy (impl: 0xfa420c97e5c713b13d1c943a4faeb60845a1a730) | unknown | base | n/a | 2 deployments: base `0x8b2ca7...28f086`; base `0xfa420c...a1a730` | ❓ Unverified |
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
| UnnamedContract | unknown | hyperliquid | n/a | `0x7d2e4b...1c6e35` | ❓ Unverified |
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
| UnnamedContract | unknown | base | n/a | 2 deployments: base `0x22353c...0f078b`; base `0x37de04...63f17c` | ❓ Unverified |
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
| UnnamedContract | unknown | base | n/a | `0x64e231...664641` | ❓ Unverified |
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
| UnnamedContract | unknown | base | n/a | `0xb8c43f...9502ab` | ❓ Unverified |
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
| [Audited by Simply Staking](https://github.com/SimplyStaking/security-audit-reports) | Simply Staking | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [hypersurface-audit-v1.0.pdf](https://github.com/SimplyStaking/security-audit-reports/blob/main/Hypersurface/hypersurface-audit-v1.0.pdf) | unknown | Audit | 2025-11 | fresh | Direct | contract_name | 11 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x940181...d98631`](./contracts/base-8453/0x940181a94a35a4569e4529a3cdfb74e38fd98631/) | Aero | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x79c192...c7bbd1`](./contracts/base-8453/0x79c1921fc8cd076415cbd1ebb330629f4ec7bbd1/) | BurnAndEarn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x311935...39cf82`](./contracts/base-8453/0x311935cd80b76769bf2ecc9d8ab7635b2139cf82/) | CrossChainERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1ddaef...57310c`](./contracts/base-8453/0x1ddaef2ead56cc4544c35d6957ba4e948f57310c/) | ERC20MoonwellMorphoStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc90f6d...9b3284`](./contracts/base-8453/0xc90f6d74f81cb551c19d138b50456c644f9b3284/) | FeeSplitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x35f35c...5bbcb5`](./contracts/base-8453/0x35f35ca5b132cadf2916bab57639128eac5bbcb5/) | GaugeFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7300b3...0219fe`](./contracts/base-8453/0x7300b37dfdfab110d83290a29dfb31b1740219fe/) | MAMO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x036e14...d81af0`](./contracts/base-8453/0x036e14fe5ad9636f36d9878d7bcf6ea795d81af0/) | MAMO2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x9294ea...ce6852`](./contracts/base-8453/0x9294ea619d273a7a9d9daca79472a18d03ce6852/) | MAMO2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x20ff28...c492be`](./contracts/base-8453/0x20ff28f7d8313b81989620a3cea7ec4151c492be/) | MamoStakingRegistry | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x26ba15...f28550`](./contracts/base-8453/0x26ba1566bba5660eeccc6c052e953e945bf28550/) | MamoStakingStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1829e7...160475`](./contracts/base-8453/0x1829e71933058620aa8a92556dc0e04f5d160475/) | MamoStakingStrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x029773...861e6c`](./contracts/base-8453/0x029773ca368ddd11d76b6485dc53748bd6861e6c/) | MamoStrategyRegistry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x04fe57...fb126d`](./contracts/hyperliquid-999/0x04fe57fc72f75bfdca4a3f910256797e97fb126d/) | MarginPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xeb0183...a33fe5`](./contracts/base-8453/0xeb018363f0a9af8f91f06fee6613a751b2a33fe5/) | Minter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x1e1be1...e5dfaf`](./contracts/hyperliquid-999/0x1e1be1b7205d0038e2588a7c7d1059875ae5dfaf/) | MMTradeHelper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x7855b0...f6c7a3`](./contracts/base-8453/0x7855b0821401ab078f6cf457deafae775ff6c7a3/) | MultiRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1c69cc...0203a5`](./contracts/base-8453/0x1c69cc8be2b29225b74743752a721ca21d0203a5/) | OpClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x18cbd5...b9a975`](./contracts/base-8453/0x18cbd536ba9a069e48f6419769d73da78eb9a975/) | PairInfos | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x3a9392...e6d64d`](./contracts/base-8453/0x3a93922fd64bac36ba63ebc52fe982bb7ce6d64d/) | PairStorage | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5db377...6faec4`](./contracts/base-8453/0x5db3772136e5557efe028db05ee95c84d76faec4/) | PairStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0cce4d...72fca8`](./contracts/base-8453/0x0cce4d12192ea86bde79f774409cf6f5ee72fca8/) | PriceAggregator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1a110b...9de82d`](./contracts/base-8453/0x1a110bba13a1f16cca4b79758bd39290f29de82d/) | Referral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x45e061...49112b`](./contracts/base-8453/0x45e0611972e930462781c75c7295504c0e49112b/) | Referral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xfe4173...0b64f7`](./contracts/base-8453/0xfe417372088146476ca28fa35d00f5e0f60b64f7/) | Referral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x227f65...964c7d`](./contracts/base-8453/0x227f65131a261548b057215bb1d5ab2997964c7d/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1ee37b...1e5ebc`](./contracts/base-8453/0x1ee37bb5ef11615e4bfc396e39a30e0b381e5ebc/) | RewardsDistributorSafeModule | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xcf77a3...874e43`](./contracts/base-8453/0xcf77a3ba9a5ca399b7c97c74d54e5b1beb874e43/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1d1a3c...014ee2`](./contracts/base-8453/0x1d1a3c6420d949249b7e663a39800649b2014ee2/) | SlippagePriceChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x1ec60e...20f48f`](./contracts/base-8453/0x1ec60ecef1e6f9d358408cdef4d9c8aa1820f48f/) | SlippagePriceChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2d5f13...3e12d8`](./contracts/base-8453/0x2d5f13d0d4fdb40d0315f08c2f82b76a2c3e12d8/) | SlippagePriceChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x413c38...7bc599`](./contracts/base-8453/0x413c38b68fe730f2bc30d8cde965967d1c7bc599/) | SlippagePriceChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x47517a...788df7`](./contracts/base-8453/0x47517abd7bea7ab21c7510fc4b63eb2b74788df7/) | SlippagePriceChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x5612e3...4e942c`](./contracts/base-8453/0x5612e3942202d7aaf40da84454ee64914b4e942c/) | SlippagePriceChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x68efd6...ab7bb0`](./contracts/base-8453/0x68efd623f47acf218f5c2063f5a4fb2d2eab7bb0/) | SlippagePriceChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x6af6fa...5d4946`](./contracts/base-8453/0x6af6fa071b74e255d5732df2e703446bfb5d4946/) | SlippagePriceChecker | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x863f30...0c188e`](./contracts/base-8453/0x863f302e78a463dcb65e28b8a6507922240c188e/) | SlippagePriceChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe3aed9...9cdbe1`](./contracts/base-8453/0xe3aed9eaa34b22532561bc67e3c63cf8a49cdbe1/) | SlippagePriceChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xf732cc...21c8d7`](./contracts/base-8453/0xf732cc757f195cc5312fe78398dac6be9021c8d7/) | SlippagePriceChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x553000...a1ced5`](./contracts/base-8453/0x553000ac1a8d7f2d6372e4b7adb7efcba9a1ced5/) | StakedToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x14ba47...90ee28`](./contracts/base-8453/0x14ba47ef0286b345e2b74d26243767268290ee28/) | StrategyFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x696f94...5df4f1`](./contracts/base-8453/0x696f9436b67233384889472cd7cd58a6fb5df4f1/) | Token | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x00695e...ef1295`](./contracts/base-8453/0x00695efc895ec1e549e8f16f7f1c713eb7ef1295/) | Trading | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x449144...e11d4e`](./contracts/base-8453/0x44914408af82bc9983bbb330e3578e1105e11d4e/) | Trading | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x60ff79...961248`](./contracts/base-8453/0x60ff7987fa2ad267fc6723b96bb2426bd7961248/) | Trading | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x001230...833f9f`](./contracts/base-8453/0x00123005b7b62c4beff0a4b08247e06142833f9f/) | TradingCallbacks | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0e8214...cd7dc9`](./contracts/base-8453/0x0e82149feb35a5edb540294129420a979dcd7dc9/) | TradingStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2db4ff...473775`](./contracts/base-8453/0x2db4fff86d94341f2fe137ff654f4b89ed473775/) | Tranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0589ac...3fcd1b`](./contracts/base-8453/0x0589ac4734527fdb896367665b1ada33503fcd1b/) | TransferAndEarn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x06ac21...981094`](./contracts/base-8453/0x06ac210e3087960c1028b851611a6fab9e981094/) | USDCStrategyFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0ca0ba...527486`](./contracts/base-8453/0x0ca0ba253f192b31fb76aa93a2d3ec8687527486/) | VaultManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe99924...54643e`](./contracts/base-8453/0xe9992487b2ee03b7a91241695a58e0ef3654643e/) | VeArtProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x8b0cf2...aa23ac`](./contracts/base-8453/0x8b0cf27913da70f6732f250a647301b111aa23ac/) | VeTranche | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x166135...c480a5`](./contracts/base-8453/0x16613524e02ad97edfef371bc883f2f5d6c480a5/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xebf418...67e6b4`](./contracts/base-8453/0xebf418fe2512e7e6bd9b87a8f0f294acdc67e6b4/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x111111...0afc69`](./contracts/base-8453/0x1111111111166b7fe7bd91427724b487980afc69/) | Zora | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 61 |
| upstream | 0 |
| standard_library | 18 |
| needs_review | 203 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=11

Zero-match audit list:

- [17461] Audited by Simply Staking

Fork inheritance lineage and inherited audits are included when available.
