# Agentic Audit Brief: WOWswap

## Project Overview

- Project: WOWswap (`wowswap`)
- Website: [https://wowswap.io](https://wowswap.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:10.347Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: avalanche, bsc, ethereum, heco, kava, metis, polygon
- Contract surface: 471 unique implementations (492 raw deployments)
- DeFi Llama TVL: $35,924.60
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 17 project-authored contract(s) across 5 chain(s); 5 ERC20 tokens, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Its contracts share 1 common project-authored base contract(s) (proxy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 492; live-surface contracts included: 492 (20 live, 472 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/10 (0.0%)
- Deployed-live implementations: 14 of 471 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/18
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 453
- Unique implementations: 471
- Raw deployments: 492
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | proxy | bsc | n/a | [`0x3b94b8e62c1cf0795ec6427aabc23b269b35cff8`](./contracts/bsc-56/0x3b94b8e62c1cf0795ec6427aabc23b269b35cff8/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | proxy | bsc | n/a | [`0x8ee5849366735a3f89c3b86270f9073cc942ffb7`](./contracts/bsc-56/0x8ee5849366735a3f89c3b86270f9073cc942ffb7/) | ⚠️ Unaudited |
| AnyswapV4ERC20 | token | avalanche | n/a | [`0xd67de0e0a0fd7b15dc8348bb9be742f3c5850454`](./contracts/avalanche-43114/0xd67de0e0a0fd7b15dc8348bb9be742f3c5850454/) | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | ethereum | n/a | 3 deployments: ethereum [`0x3405a1bd46b85c5c029483fbecf2f3e611026e45`](./contracts/ethereum-1/0x3405a1bd46b85c5c029483fbecf2f3e611026e45/); polygon `0x855d4248672a1fce482165e8dbe1207b94b1968a`; avalanche `0xa384bc7cdc0a93e686da9e7b8c0807cd040f4e0b` | ⚠️ Unaudited |
| ChildChainManager | governance | polygon | n/a | [`0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ⚠️ Unaudited |
| ChildERC1155 | token | polygon | n/a | [`0xa0c68c638235ee32657e8f720a23cec1bfc77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| ChildERC20 | token | polygon | n/a | 4 deployments: polygon [`0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39`](./contracts/polygon-137/0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39/); polygon `0x556f501cf8a43216df5bc9cc57eb04d4ffaa9e6d`; polygon `0x578360adf0bbb2f10ec9cec7ef89ef495511ed5f`; polygon `0x71b821aa52a49f32eed535fca6eb5aa130085978` | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x8397259c983751daf40400790063935a11afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| L2StandardERC20 | token | metis | n/a | [`0x5ce34d9abe4bf239cbc08b89287c87f4cd6d80b7`](./contracts/metis-1088/0x5ce34d9abe4bf239cbc08b89287c87f4cd6d80b7/) | ⚠️ Unaudited |
| MaticWETH | token | polygon | n/a | [`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| NetswapPair | unknown | metis | n/a | [`0x1f9a2b3b05e1c43ec6aaef2fb727e43c4b956e30`](./contracts/metis-1088/0x1f9a2b3b05e1c43ec6aaef2fb727e43c4b956e30/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x73cabbe6e05290a09b9432eb765521941c870e4d`](./contracts/bsc-56/0x73cabbe6e05290a09b9432eb765521941c870e4d/) | ⚠️ Unaudited |
| ProxyAdmin | governance | metis | n/a | 2 deployments: metis [`0x8428b4b785df678bcfe5cbb660d2cd555904901a`](./contracts/metis-1088/0x8428b4b785df678bcfe5cbb660d2cd555904901a/); metis `0xd8bfb56c41a5c43b75f05221168550161f90712f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | metis | n/a | 7 deployments: metis [`0x01b5b462b55a65101d7c7637b056d2dae16e5f9c`](./contracts/metis-1088/0x01b5b462b55a65101d7c7637b056d2dae16e5f9c/); metis `0x0d5d5df8b6414cedec83ad7e50d18f096f435ea8`; metis `0x3b642654c6a2c1ece1d33cbf0edbfdd970aec35f`; metis `0x91d57f4ad78abbcb99d9bb6a4cd54eadd3a7ae35`; metis `0x9bb0af14983c837c5c5d8c8ac95b57c148ac2137`; metis `0xa655766bfd97b7c5ec83ceca09da79fc2efa44d8`; metis `0xa98fd60318a1253fa2bca68ce46fe3d48c8ea602` | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x42243231fb4a64a5bcfc7f4b7a9ad92576804046`](./contracts/polygon-137/0x42243231fb4a64a5bcfc7f4b7a9ad92576804046/) | ⚠️ Unaudited |
| UChildERC20Proxy | token | polygon | n/a | 2 deployments: polygon [`0x313d009888329c9d1cf4f75ca3f32566335bd604`](./contracts/polygon-137/0x313d009888329c9d1cf4f75ca3f32566335bd604/); polygon `0x5a2fdf906ada9353ebe496fa5d351b39f8908d19` | ⚠️ Unaudited |
| UChildUSDT0 | token | polygon | n/a | [`0xc2132d05d31c914a87c6611c10748aeb04b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| WOWToken | token | bsc | n/a | [`0x4da996c5fe84755c80e108cf96fe705174c5e36a`](./contracts/bsc-56/0x4da996c5fe84755c80e108cf96fe705174c5e36a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (453)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x96ffc1d1fe21db95fe69d3e95e81fed0da329ad9) | proxy | polygon | n/a | `0xc7ae2cc4039e18f9f59d76fe9d5fb75c1bbfb903` | ❓ Unverified |
| Proxy (impl: 0xb37026a66b87a4d00f230dbc1374948d68554db4) | proxy | polygon | n/a | `0xe876f5e5236ffbb5285a475211ca052ba8a56293` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01dc4f81c06ffe0224e594a2d032adf5c8b11c81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0442936240ac8f050e82ef9a725a4206ec79c58d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x067202244c5d58c408dcaef0b401037a4c3fa158` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x084777130071590fdbbc65caee2581f1f62bca14` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0876be5af095413709e0dd8a4083196cdaa836d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0b8a673297cd7b6f400b03544f9df35ef2767ce7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e702b4cfa45d03d0747d805d06f4918e85e79cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f09b906fafcbaa09445252daea1fdaea511cd2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0fef30f455ff98478966721dd285d151539c1a76` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x147b508c2a26934ef1acfc4e77cee66e0d409a2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1492c2f4aed965e52639f8803f3f39c7f83a2a6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15e5cb3b0194904dc0a97ba5e11965751720a264` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15f44611e86dfb8304f089f3ff47966d093ea67f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x168ea9cf517f29045098961423397dbc742cf264` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x175d417bda5cafc41ea065c4d032275667a8ef49` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x176037ca5a3a4165e11c22ab771020b8b406a3b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1767102dc35b1593f39564a96aabbbd31fd302c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x17af2d96e02203d65b91b407d170e801ddcc85a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e14ad033fa863ff1684a398b93d29aeeef14cf4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e4fd98c38ce06e2a8df7db6d19bb28ff1a91ae6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x22b6fdc7650e7fbff53a8aaee4fb2e9f9970d8ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2385caac84b1c4d317d05e1f2228b55f5c842719` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x242e55dd056363aa8e3f1f129cffcbfa7aa7e280` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2487a5374fcabc2b035cd2b8dbddb4b83d3315d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x25871dcceae0160934e05a7ab79be7269782d6d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x25bf048dd1b272805cfe2b8c68e866783882de68` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26ae59a18a0bce41d1620ab3b555c28447054e78` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27381e6283c373fbf3914caec58012c563ff64a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x291ad80cb7d3017c858ae1b2bac5e3017ef5f6f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3377407a96bc56c33bf33a930a33e8f8249286ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33fea73e862b8512404a499b6066556c7240d71f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x39b50906ace6de4b0e1769d814b795744da71f7e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a05c950aef9dcaaef4f132947a0b6d510c4256b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a8119e6c78bb7b6f66165aa3427943162d8bdfa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3c66995efc4dc857706c936edb4a1f79485ce8a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d40bac6308d3029a983dc4b1f3eadf2a1e898a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3dadcae3e679c6ed2b777477394abdd30b27ffe0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e7888110e8c60fb33c79ad5a678c74f91bd4a41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x401715b4ec3e005aae0bd86f82d3484cc8243fe9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x406a812c53cb076cd5e1832979e1bc6dfa7ecd9a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4198f9d386b16dab712d16f96af00cdb8538614e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4276d01ca3366d2a589a8edfc3f6d42447c40c6d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x427d80711be87f47ef414bdfa6282ce042536411` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x43bba60102933e21d3f5b96357135857ad5dcb25` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4509650523b96685782293adde4ba5c5a7ad65da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4567fe58e7e4f7aaf65cbed06528538e21e16089` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48faa6ea02ce32e81dbbe87ee9dfefe7c30b0e46` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a10da74c331ed821ec8b3c25b8c5ae943fc90f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4bc804b1dd1c935f9976c6a98f0b2055ba299373` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4bde108a7a0c0e37c40703af2c06881fda0b7e31` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4c53d576a63d6485e943e230afa3f81958078191` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4c96e5ca0e3b8a3c6ad0d1375dec0eeb8f314425` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f4f1a8008fe0547a38c358900a0521b384c1f3a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x50d594a4c38ded695aedf47f8c4f066acf6b985d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x51f49ffbc812f1ba181c9ba58354a2fb756c9bb7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x520f3d90cdebd22397878dea920c50fcc26346d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x525854d102ae756f98442627413c1166ad8fc224` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x534239e3a99354c639140b98ba8a4a33f3418d34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54ce2b10a0eb9e194ba7a4470fc7764365b9703b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x55694d598d9f8fe00296f0f9af7012127d83ea89` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56b841b79c08a56b82036439779ed1e1dc71e4a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5747111e7f4874d817ce7420f452cb0365756729` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x57cb6f2684f965309bbf81462e76b1ebe2e417c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x587a304321557b77fc1a76ab4450f1ced6d4c031` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x592c3110d8d75a79635640309ea0984ca6ecf15e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x595083e25fa4acc62b54e9f3254b2f716d0044ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b5b959773b8520545c580469c75d77c6b689269` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c676e93f9eaad1c531fd63902863e24059133d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5e62244104c8317909fc83543c828f2dc3a4d583` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61419a54b6e62dc2482f96aac95a5d76f2bc90b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x62bc5aebae5cdd0dbad97d4912c1dccd38c3695f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6301a281d05b901e481785c3050e25aa9ac20da7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x63161fbc73ee69d420d0103169aa0ac81abc0ce0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6825920620889f688b6b6efd416bccaa309f0869` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x686070fb6f9e68048e7030aa0c8fa2085d55224a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6973a6e0e96aca9694ab30efbbd8fbecf046f700` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c4a50014dbfee6dc7a424e04f102b4ed9962866` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6dbec32e849c0ee303381b158f836d5202902890` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x706cb6f636ed02c194aef0fe0c7552c5bd21c004` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x720d73693737d26963c56b65324370457b21c889` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x73993e8067dc6d82555ddeb1e0c4970dbcd27af2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x745f7e6f8e06cdccb6fabd4796b8b61e6540a5e2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79b93845fcf04fe1e1ac6efe3404b0bc86e70cca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79f7e8625650faf59d2208581fe7d306a9762c02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79f8ac4e7b4e83ca1ad4c54dfc5eaec659a1fe56` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7cc6d2f32e34f2cfe5f5bd4ce8cd5ad3cfec75db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ce103ad12dabbd640a20add3dceb15d4f64d264` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d19d827793c8b4dd8223acc6a78d8ddb7e5dde3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f205fac96c57249d614405cd9934d07bca35bef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7fde6681a2d198d0f4f735d26924d1ca6daf904e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80f2a5725eb84160fa9b9b5d9cc4c9612e943b66` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x816ea08f957b9911d1bd99f2959a4480b20b57b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81e315a701f7f81a43abb17b89e9883b6809bbef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x842dc3cb81144b4193725b8cfb01430d244fdd33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x867651805b218e789885a261e6a416704388cfd8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86ef3b62368e2e1c2e565c592e606beed86d6107` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x897c3a6b7ae497b14586676d9794cb2e6338ccba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8bb95a1e0d9556997ab9b56fc3de62b7110a95e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c59b3f98ce902e25ce5521025b5ae58f816ef9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c8aea0a8cc8e95111c6623f0f6b231b663d187b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x91da3e13d036a7c98a409ba1b2968ce0bf1c7820` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x951afe1d78fcb803bd058e96a4011a3a16b7f694` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x994712ff98e4a9b912353f43a8301f025347aa62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b14c1922e6d4f3edbf38901b1a9f4a8a4e34451` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d2f28967e5cd562b4f61e9a64d39c1ca1c4f730` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0d293265f3792ff57c65af0aae5d1331e908abe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa15db9012198420522f8b99d09aa4f1eb51ccf9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa58e48ea98af6c988698c690d6dc396af7c2cd0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa69f667352c831ad6e5f475075c8b6aca538fda3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa81899b43d714c7599fea74ec456a77d69cc0296` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa98edfaf8916c486b93af14d78afdfed7406d5d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa99fc498a15b4f371c7f87d8abfe38ad56e6c54` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xabb3b032666d721b022f577c4efd2a903a6a3fd1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xadc47c44ce63e507f10203402152478178bc6388` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xafab81b386c28155a7bc89dc0e4669e112b5db72` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb26c43e50665043d967e0e59dee44f73eb7a6d92` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3f3b1650d05ffbf4296a8a41e643ec56605ddc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4afea0702098c3b9b6193f25ec085fb7204e84a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb9fea1e10b71afa9ecce75f036a6a19d242ccf7a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba30c3edc0ebcf974bb66edd7f3c6692bbed16ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbfe8668de647d6ed79ecf347d1f54b8fa2bbbf0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc1a6c5e4bf99ccf14cc5363ec9a623d91730937e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc27c6fb539a6ab297fc60bcb6da124c7fc24699c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc570877b86867769a1784f0bb8314aad2be78121` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7b33272d1fde85781bebc33fe37723e8be72d66` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc80f78ba0155f271df4bf264edbf2f5c170649c9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcfa7ddd23ab366cd23954067a0b0f0df37fee19f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1fdbad0d0f6d262bcfdb13a19bf8ec99d9e7458` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd249ad7ed1a951e1cd5d2881272cbbdd9b72bc3b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd274f6252b29bf4c258cb713d0c6cc9c25b6d4c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd8ccc2b0b5fe7e2b2df60cb2b1f08d1dbb662c79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd99037288c5b864ab170c9946c4e1d5d5a968135` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdc6b028b659cfcf725265f96236dc6ae98994910` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf4717efd4264a60d32d50597cafe4ae05777405` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdfd564fcf33f3739c2fbb4dfbf047ea3783724a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdff529a57fa693c59432eec3f5795e5963ebdd50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe2579c20ad737d8e41732b672a1588dc94ac7930` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe31b43269ade7a3e6f8cfa03b29fd81746c90d1f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5add0b557454ae901c2c9b1f0bd553a1150f9d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec707a974fab8717d1711c1259b6e8ea1efb97aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed7794dc7179ce90db648fbeaf031e927aea773e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xedef93892a245ecb7b5e95e47260ae0cdcee5fcb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0470a06dcaedce364aa7964198acd19c74b46ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0f178cf1fb6c9484e890610d39f1d2de0dee255` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf379a77817ff918b55ab02e2508018cf9ec62757` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf47096ed5aac73ab6b4851b3db6d972616e0fdd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf8e0deb92ae41cf955f36f607cbe960a835c48fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa2e47f25f89b5455ff234edb5781b9fbea890a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff2821e6ef0f9256e98214a171d63d240fac6fe5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x03976f39a981e9891d3ae5e42e9265a26c8ec15e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x03de146c21ee3cc3bf4cecd6703b1a49dd4d29b0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x052d28ab95ab17820e85382d818349473e2873cf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0567988e388cb8c9da8d4827b92f68b1ae6df034` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x069a825ea3a6f7d1f1d968bea220dec3d9b1fd49` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0809e480e8c4e960c3d42537a28dae6c08825f9c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x08e3a335901344e9bab1506e7fe49f0989addf9b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0a887815a1f8ed427cd9bae85f4cff38e8e112e5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0ad039cfa55d18668be1809b770caa50a0a52ab2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0cd93075b7ebd0fd16850b4cfa381e0ca4fc4e7c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x129055ac850343e3f2924ff774b32c1e7e2bc51a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x13c5a4698901ae196953f7abf70ed4b80130906d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1844deafebe33f7a4813563f836620f970ef3922` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a63900164dc67492473e1fd506c840da55fcc2d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1cba6916e23b121ac6dd437d8de954c0e029e005` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1d19c1a61d1203e132f9ac577b70b526c9601ccf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1e0b33ebfcc9f6b7398c575963afc35f9fd3052a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1fc6106a37c551ff18296dae19c93e3658ab4077` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x20e489b0b50e683d45081dad9b9dfe2c42691ea7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2145c30b2e3cc7157008fbb7e8f6989e28e32efb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x22b98eafe149c7de5ad4f7776a4ef82815a2f291` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x23e76ff9dca25b7619a9d52159c40f8b8d01b5e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x24a4de6774a9dbeb48d5d29e5968f784f7b724dd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x26439c997aadf540245d2d92578dab26fc3d825f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x275dc17f974bcd5b391fdc698bef812a2c330ec2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x283c2ff32839f2ff33ac62b2ea7decf7bf0da64d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x29dff605adc32400251db179041924bc33819d98` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2f6f54d505d7989ff19f2d6289b4d4b1c989ca3b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x31b51220e12d05476ca235b241a30db3eb0f401f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x32adc856a320b9df7e0dce13747740a681f168f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x32f41b3be5f7626247658081e4d80def8f8ae2ef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x334ebad4d6ec7cf028022ef8d923f674007bcea7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x33bf4d3fd34dd88f66fb31b3fa05a8b9d812b8b9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x33d939192014aea80fbefab936466933fc9684f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x35d778998091413e5e0e65afef218dbda170dff9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x377d72a13aa39fd342f348fe1bd3e189612a96b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x396dd6345ce9f74c760bc6594565148cd8dbde06` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3a82785295fd67c2c404c81cc4395b78b3c2662b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3acd182fbf1b916180e94f602f3d466d3d156f05` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d66555014a46e4e83154f107ff72714549bf39c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d8df3015c4021674e861840ae1ced91423a73b5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3f64c158ffb89424c3be5a296d3845fd0037ee2d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4006bb69735c583cb7f7220fa9dfb268e84380a1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x403340c57b7db011123cf0989d4c3bf0684e49af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x41632bff870c2399fedd0285c3956039937223d6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4229df1f10d6da2083bc5ecf424b2d8de313a774` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x43775ff8f12e1078cd5f11b3c67dc23b71f682a3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x45817c06b2f3fc7021f2f6d3ec30a625e2a5b2d4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x45c1cad084eb63a016a24bf67f3733d7b3bdde68` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x47b563f23acaaa915b114ddb984d7a2de2b866fd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4a9ec8f202518a2423d4e1fb2c2ceb8559153860` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4cfaf359ac81b4ddbd9ae726535eef950500b544` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4cffca9567ed9f0e3d49a4a61be73b0e15fd34df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4dfc097d2424a7157de4572ab516890a6d87f735` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x50e7dd47fa230e4f6ab03777c6c216165f8a37e7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x518c21a2edc710b0c627dbbcb0af34531dd1724a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x52afce21f88df88957647f528c0db781d5f5ae73` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x53795559bfd364071071d0932e11892742edc8a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x548f6c01a7f4af03a4b403526ceebd0543ecdecb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x567ef9ba674bb4534a23ceb281a14ef8cbc541f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x58a47be51101fe5c9dea90e062904ce62c7e3e9c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x59ab25a06cc9f1b4b3b46b0ee951765c9810e9cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5a55d78f1a29ae8f237836de711d5930e229296c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5eb0362f0ab104cf189ee74730a769a5a143df88` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5f5fd73cf951a3f03f885fa742a26903c02adab1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6167ebfba9a16c5d6b50522ff32fd9a453cf64ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x641621e5f27d17a432e2bc84dbba4ca485d935fc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x64e2b2dcab35eecd3cf2279f70bf8533a31c365a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x65c3ab281b5b5818f43d2a772ea1c9481f6852f1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x68af2dfcd387d9e747d10e8d2f4b53e14c1560e4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6ece4be0560e3f7dedf27ae1c4cd96533bb48a5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6f8167147da41faa6679af7ced77d127e6ea19a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x708b866abd520482484f2b59ba4400d245a94ae4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x713a115c4d38cb3d2075eac6054067ea0468238f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7281191f68dd6ef4d9c52dc9d0d84bf83741211c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x72a8ba213921bdf407cb7f4071da8fa718736820` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7346594563e209c7cd922e645a784bb5ad4d2a8f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x73d89e2df91d88fe54773fc8519472c4f224499d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x76f950ef72ec7f1e53d4a2bbf78a9972cad2931f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x78da3bf44a94ab8e89d0a8a6c91b4397a3df7506` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ac686a70bfe0d5fe22dd15c80b5cdbcf10bfdf4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7c2075cb1959cd84dc8756673b6a6114a8eace70` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7dccf05d254ee2ff274d08129477d579bb02b545` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7e6f04ef4d98501e42871bcc982d41254b48c7bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x80720e914027b2c75536317af11d1cc5d1cdbf9a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x809e3172ab314c51520e2f4207283c98a7fe9e6f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x81f57fe68a1c96aa0977a49daba3df58a2e03b7e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8274939d718dcea5661397469eb5f11b59bce17e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8367d543fe6ab305161ed6d705aa8e867973ca37` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8555bc63a0619f5151b29861fa7c2b4eecc9b027` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a5254dea6cfee90e82c1619fc9273b30ca1f43c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8b4801d5e30c0b39378fba36569a102666163306` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8dd552664233c857d2993b3ae5d778b5a4f7fdce` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8e93ad6aacf9b494706cd5fc854212203ea3cd79` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9204ebb51543f6d7c1d3362422fa6819c0344eaf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9381bc456d3f28d7417d20b65efd31f43421d7b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9745edb79e15ed10a8793dd3bdfffb9b4c6ac983` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x976e9097f02ce24dd2e01e7acdaf5008c9246dbf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x99d732734e6aa80dd248a4876eb6d356edbf3bb0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9be9255cc74665f8a411c8b3efe560f77539a7f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d575e44dbb3cdc34041396de2e6ab020b450da5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d5fa5f700c60bdb66c02700587d4d155bec45c5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d7dfb90bc1adfacf76abcd1bd55625bf043f676` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa09daef6ec61946fd6bb2ef8f75ec1fc2e39497e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa72799da2b5cb335cef066fca31cd06dfd6a9dbf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa8c65c32c5a7d6a0f449cc78fa65b7ffa72bc651` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa9214ecacab77c8205483c34325adba3b15181ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xab7aac63c1febe16bd8230d60d8a909c40e7663f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xad5462121e4b9ca1133c003e85784fa150b087ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaf6c513b3eff76f296086fcb9ebd0e5904ece2de` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaf8c458b3e5fe976d2f04c7702747eddaa01a33b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xafd905ee9ebfd1c43494e2940a39ddbfeb7065f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb4c275ce9b20888d636c1b73c4dbbb939af66a69` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb58d4c6e7481dabeb47c96b57bf06df9c26698a0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5e86116cd3b35e23b57aeacebc4eb17e600ae87` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb849a1d071d64f569c751e9458ae4338822fc87f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb86d85a727734fd37274ee1a16be2059b5ea6f09` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbc464a26d03598c10ae55afa871ddec1b40e53f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbd89b71c3f2e046dd638267a50e6a88476b45249` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc67743ae49be1d2c509c6d397d512976ce9edf31` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc6a689efa422d3e5308a54a591d6545cd7dad344` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc72db439c2273d9eef7e05bf806deba041e9b560` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc783176967230335a78bef4c2914842c9d93cf09` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc7e44d138804ac3b5c8091ba17cae1002219dbb5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcc8976cfa32c1e6fb658e2875df8283332bb5038` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcddd8765ec8a9b58c377d75a0efdaf9797db20ee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd15714877254c8995c0b6a5bcddaf01aad10a9b3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd1996ec12ab31512e99aa3e1cbe702696e5a5e14` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd4ab78656f3de182852caa38e0e7af63d89edf9a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd5b6cf0302ee111118b2a2e9311ece2bdcdf5226` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd630a507528c8315242dbc08c1434887e670cddd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdc3543fea9f356a02838b0b265214544edef91b7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdeb3ada2c120f65e0a485655b5acbc93c2ff9bca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe029f9dc597c37eaf3307dc1c63d4d35fdcc70d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe05a04ce09f66e9b9700e05e38d8c7d91e12c05c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe13cb8cdcd32a3417c66c28262697642e6a74d99` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe1932e0387b899b005c0fc21a17c7183a3a27ff3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe2d6c48a94c4d4f61d6c3cb221aa4c60713bf6b7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe302c643fad0f29ff134d8638936aa4522da374c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe3743c72ccb4724ff0b7cfc5aff344466dde7ec3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe3c99d56a9b94930059717b763232cea0c4eb5ac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeaca677b671d9180a0e1183bbfbbee9e87e9e4e3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xecd953fcc60d9be066863643591bb73d115f2cc6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeeab404e4ad4a3ae173c856e498c73ab0547ed16` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf08bdae4bd43ed10674242e334617af4a2b87e99` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf14c0d2bdb66f8aa977716081b4aa79235d6c2cc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf36d697bd0188c57df35f8f3f60b4c6684cb90fc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf6908ad580af8cdf0b7cd07e52462c5b79dc19c1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf722d0833fc6cf6a5b2c54846755baf58a5a6978` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf73d1e7fbb01aa5087d94da7ecb8b1eae80e4594` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfc7b3c3502708f0f07d7af8e5a52d17c9e5ec188` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfe7b52943e812499a294a4c2a3feb877add0d489` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfed76295dbbd95184ea9f5be0ff73db134a6ce88` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1a95eb76816a4aaf1387c15a60bcd7263379a5cd` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x527805f51c448155dfbdee04bd950036a52a21f0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x5742132304087d1eb8a06c207bb5320645199b21` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x617b1289d9e8389cd3255f475e44cd60f0a981bb` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x67538f3cf291a1f0585a1b2966d5ea8bce0048c3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6c57969dbd13f57a71bcc763abddef4d1ce00682` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x71a19be1ea0c091c27aac4bb87dcd779c9e90029` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x994e45bc27e85cdda6bcf78d5dffcbe48547819c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa0d680dbe9965b77fd42015646bc2c0f5f461aa3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa61df20aab59d01273a848a84b3b54578c8bb2e7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa8fba30375657f77c9f6b2c91fbeaab5a5e34721` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa95f470fb554ec18e68aa1b2562a99b0079601c9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd4c42f85b06bf4a6c3352635c32e65b943c46d9b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xddfe01c733bec25124b674807c1f5b26b239c4ff` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe1f5e1aaf95772ce93a4acae16173de931928dcc` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xec5945ce27b08330c70a5f14e414d0632c0cd003` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf5bb48c458a98ebd5686d3159221990daa54dca8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf93e9163b52f71ce1d09ea2b8757dac0483a05fe` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf9f619e6a2075b2a30eafee49e1d039d23fdc028` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfceca460755c235cecf39172082417104d194dfe` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfed8d500169ce92d348466e3a8c1b384683a379b` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | 9 deployments: heco `0x518c21a2edc710b0c627dbbcb0af34531dd1724a`; heco `0x5e5f16a910b7b44f4f8090798baadefbc1388253`; heco `0x72c0a253c84ada1b1379b2a66ce51862d9bf159b`; heco `0x86fea7a7c7f2503cddb4ad0e4e7977e8bdcb1872`; heco `0xefaeee334f0fd1712f9a8cc375f427d9cdd40d73`; kava `0x3b642654c6a2c1ece1d33cbf0edbfdd970aec35f`; kava `0x527805f51c448155dfbdee04bd950036a52a21f0`; kava `0xa53230b6b6e7f4fdd0f65af954f891a77351babf`; kava `0xa98fd60318a1253fa2bca68ce46fe3d48c8ea602` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0330dc978ad438343664aa4c99613a522e7185bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x035a7b6006403204ba4953cf6b13ae92d3b4cd21` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x05cbcc98c96d12bc0361ba8b2127aa554a99004f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x06bc77cae487f574b71f935d20b9bf32bd71b3f7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0720d40c4a3254d4a67d3f342ba94a23be3aeab7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x08af1a06e15e8f68c1dcc438f04491ec0d7f8e9b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x09761017395b1cb77578f57a75eb6f9b958b8d97` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x09d7c0c4cb531331beed7fdcfd7b44200eb01e1f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0faf6006e5b82f7b8b3ee73c18dfacb5a5e2db8d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x10da5f5513b6f3da059ece6761fbbcaf9f8dae0b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x146df255bf795515ac036ab409bc5d656ad933f5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x193232f607af167651da463d1279d5ec85056c7d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19a7186b30262ae883988d862a2a51b41b6f4725` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1ba0b56fd1ba9035ebaf4f5edea75230329eb77d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1cdb1ab44c19847959d8d9c40b1656d42a61a4e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1d48f1bb62738f6f318507f025c372237305c506` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1d5ef3d8d589f62b2108330af1d340fbf7a3a93c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x20db99825436e3bcd0414a9d3cf5513b71272a3f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2105bbf40aa3685ca77af8a8c88339da46fbd6cc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2110af478987e7c36cfccf7e72cd87247b4ee678` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x21967063154b8e289688440cb204632b77867443` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x23880ef779a01b8a83e18a87cd2a2274da94639b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x239436a5e62da1458e8b33c304a2942f22aa4a0a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x28638ebaed68d0d930498341f1197b154a184113` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2afaf0c92c13054f2155d933ca77aacf954c0210` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2b9bc6139c0d78b1f8897a7d8a74ffdbc60d1cf0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2c8252380014668afbc6cd3d135a70ae12a39a75` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2ee88bfefa2992bd202f558a8a546b19b44fc8a4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x305a568c5931e7d306e007d2379e8ee5a7785bc3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x30963ad69a71d9c77e75b2d5cf44b7f2c881f97b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x32f5b8d3e6057b7ad6b6f9938a2c3b823f5e4d79` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x34be73a499137a1de3866a0faa148bb30aba8946` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x36de44c2d6c9f90c4ce6a497d07f33861663b071` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3eb8e8b335581067e48da76204304963ef40e6fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x403ad1530de516a99e23df1b5df926df4a5e6b8f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x411211f8446ecebfd942e1982188e39cabcfeac7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x41242011e0b585321a20d71bf831531ebb8d517b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x44b2729394942d079cfb2af2595cbc896d57efe4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x49d008630f415841d53c8b5c79207ce874f0eec9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4c0992d0295774ecb54af0204d0741fb766fe8f7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4d62aa13850d40abddf83e06f50010c0b65d7350` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4de156b52a86dd6099fd88f7a3b52b87ef0755e1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x52e40bcce41f0367ea769fec16faa8d44cf475f4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x52f54b4639688462193fcfb1da9305396b71d31d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5300a84cbf606fea2cd445f0f0f3240a60922324` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5461200b3768eb2fde35e0a6d4fd674f615fdb9a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x54895f939d721846450386ee3cb682703d36a448` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x556ac357cf8e0309e141d10cefa91ee83abeb43f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x55a68601e591d112b908b1511e3f60515eab2153` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x55faccea65e56f74684e88aeced980ebf32ffd95` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5687bd2fe95f2999ab890bfa041a30d611f614c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x595f24136d3c25906499cea2a55fcb4dc04ad521` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5988e430aaf93eb189666401090ff912538b2d68` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x59d9cc9004048f389d71bbc260659afebe2af996` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65cb6d3f9799e4b9c9840407634263f601b36bc1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x69f2a7970c94115272c78614145802d35affa1e4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6df227293aae7a9830259d5326d5e33be8bf70a3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6e4ad8f97ce042cdc8565edb88c4cab182db6afc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6e67176fbc0f1c163535c985ecea027e0eb43edb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6ff74ae8d6d1e1791d09d1d52c645d5c068115bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x70b4505a434b832b43d46e8bb8f91ec608b18d2a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x738e26582e97654084a53e6c1062f30faff8c686` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x73ea8d6fa5b57c0f94ab387f77972576fc9cdec1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x74b226005002c375082e180b8164b00666acaf9d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x75fd02d046f111d6dc750c481bc44f517457131a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7e577f67c041f082c2c1eaa311d91c64d700d84f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x859b78987c5993a3f9a1de82a29061e69803f15a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x85d3a33b4ec5aafcb0e951328a144a6086e0364c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x87a07044f462b58bb33fcf9e676d6e245f13d20e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8af9cd9189a101e1e124d7e63ae33b5eeaa1c98f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8dad832fe0ed688ea2b4963e878519af1301872b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8f91a94d342a453318124b6e9d03dc3e3aaf1307` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x903cdf9f3013b2355e8e915565835c83628fa3da` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x915f876a15c5c45b13d762889249c686f418c5cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x91c1705e9380c0f72e3136345ad9021916bb8c7a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x91e86b076c0852b1a2f56160d9653e0d6be32c43` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x95439cbb29dcac151e9bf36955b32497a0796318` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x97680743a60536cb8171273cc054ac0b3bf4559d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9b439ca588faa5a33abebb2fe8e485557b2ab379` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9bb7390e7f0f9bea537ebe2674333f9f096c6fad` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9e9097ab9eec17df782ae7d99df068ace3fce7f9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa21fa7075152c532289b8e65c904438486af37c4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa2d09411e5653cb23bbe2c03c040cab89fa91be0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa7e29c17cb827d4b67d9773ffbc3855d9f543910` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaa688387614f685a405a5ea3ca07831224e67078` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xada0c7c649820efd56378b0d3e20f29520c66187` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb081fe43e583877ef880207e49caa9eee44dd1bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb4c4dc85bc94ff320dee11a24cb15abac5a4cc17` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb75fc97c7b5ad87fafac5047d06ff051b197aea1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb972e11e4fffb352f85709be29673ee1ea6b7152` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbe31b0353076d205841a31a2c453a8770f3af622` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbf756124e5c6e513e7299a02b4240f93fee367fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc2aded6d995060bbc40797f6268cb6ea11e5b906` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc46f72901d45e5dc4902ecc75beb22a1537515d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc4abacafa27514a13a6871d4701f6bc9d056958c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc4c93e0c11381fd1634d1df7d20c061b48bf72df` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc52c035af3d78a9b546369082f42752cda6cffaa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc5cad426f3fde0575a53660eeddcc072f975d7a6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc630c50128668f59e594bb7136e2e1a16928f4be` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc787be85f04474254c1e6ad19711c62a251e7b73` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xca93405d2d9c0310dcd0b01d9b2671f21f7ae3bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc749dcf44f12d4ae4ceeba52958c2295ed8cf35` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xccfca6b622bc136551e693314cf49c6cebd4d7b7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcec42ccff94e877b90d5227d7591a4a1b651eff4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd250562ad79886b3d04cf84bc7a4e0406517d597` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd6dd2ec600bc217fea67ebd35d9899323bec6f45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xde8ef2204fd0f345092d6450073c41bd86dd75fa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdf3dcd9b545fb6fe096d07ef962b6393cb649dfa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe23d0839dc1aa2b92cbb2919a675da8a981145e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe357662e36242ff244c0683355654f22853f1971` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe3c4e371851ed0d90d100d5824bb1cb04fe650d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe43a3d2fb72960e2bf70a71c1916477eb68675b1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe51d6e2b63727943615eabf5e2b89afe70dc8841` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe6063cda8ecc7999fad4c137bfe419c98afcf65f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe8380338773f583f65383490af6163a75b05b389` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe8877b6b68026c55def753ade9070ea775a68b7e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xead8512de58591f8d1b85a33dd162ef681649bb3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeb3e85cf56b982f0fbdd1cc8feb0929be767b2ff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xecbeb4e01711b5cf4a36afb39a345db9511af517` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeda86bfc7dba814175dbc69421ce5a27aea11820` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xee7413262dfa78d045fa314b7e40acfb7b82883a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf1c0156500928678b657491dd7f1044318290910` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf527f88ae8c070cd57313f1bab51c59ece672072` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfa099dcc592ccf1c7779ef9163a156807fb046bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfc3b811bfd5f2ade02ea82c11f747923dabc48c7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xff291a749ce96456c41730f8855d4d65371371bf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xff3b4f87dddab20e7c7d46e97f2538e25ff7645a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hacken.io/audits/wowswap/sca-wowsap-defi-jun2021](https://hacken.io/audits/wowswap/sca-wowsap-defi-jun2021) | Hacken | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ChildChainManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa0c68c638235ee32657e8f720a23cec1bfc77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ChildERC1155 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39`](./contracts/polygon-137/0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39/) | ChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8397259c983751daf40400790063935a11afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | FxChild | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x5ce34d9abe4bf239cbc08b89287c87f4cd6d80b7`](./contracts/metis-1088/0x5ce34d9abe4bf239cbc08b89287c87f4cd6d80b7/) | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | MaticWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x1f9a2b3b05e1c43ec6aaef2fb727e43c4b956e30`](./contracts/metis-1088/0x1f9a2b3b05e1c43ec6aaef2fb727e43c4b956e30/) | NetswapPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x73cabbe6e05290a09b9432eb765521941c870e4d`](./contracts/bsc-56/0x73cabbe6e05290a09b9432eb765521941c870e4d/) | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x42243231fb4a64a5bcfc7f4b7a9ad92576804046`](./contracts/polygon-137/0x42243231fb4a64a5bcfc7f4b7a9ad92576804046/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x313d009888329c9d1cf4f75ca3f32566335bd604`](./contracts/polygon-137/0x313d009888329c9d1cf4f75ca3f32566335bd604/) | UChildERC20Proxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc2132d05d31c914a87c6611c10748aeb04b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | UChildUSDT0 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4da996c5fe84755c80e108cf96fe705174c5e36a`](./contracts/bsc-56/0x4da996c5fe84755c80e108cf96fe705174c5e36a/) | WOWToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 2 |
| standard_library | 4 |
| needs_review | 453 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14143] hacken.io/audits/wowswap/sca-wowsap-defi-jun2021

Fork inheritance lineage and inherited audits are included when available.
