# Agentic Audit Brief: Zharta

## Project Overview

- Project: Zharta (`zharta`)
- Website: [https://www.zharta.io](https://www.zharta.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:14.896Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: ethereum
- Contract surface: 103 unique implementations (151 raw deployments)
- DeFi Llama TVL: $2.11
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Zharta is an NFT lending protocol that allows users to borrow against their NFTs as collateral. It provides instant liquidity without requiring users to sell their assets.

### Architecture

The protocol consists of a single product family with one core contract, indicating a monolithic architecture where all lending logic is contained within a single contract.

## Contract Surface Quality

- Indexed contracts: 235; live-surface contracts included: 151 (63 live, 88 unknown).
- Excluded by liveness: 84 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/15 (13.3%)
- Deployed-live implementations: 15 of 103 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/15
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 88
- Unique implementations: 103
- Raw deployments: 151
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Audit staleness (calendar age): 1 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 2 | 13.3% | 2023-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LendingPoolPeripheral | core_logic | ethereum | n/a | [`0x8d0f9c9fa4c1b265cd5032fe6ba4fefc9d94badb`](./contracts/ethereum-1/0x8d0f9c9fa4c1b265cd5032fe6ba4fefc9d94badb/) | ✅ Audited |
| Loans | unknown | ethereum | n/a | [`0x3f8ac2349463c6bd759a18648e67c82c77b00f6c`](./contracts/ethereum-1/0x3f8ac2349463c6bd759a18648e67c82c77b00f6c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| P2PLendingControl | core_logic | ethereum | n/a | [`0xa11704b3dd545dc0771d9a9c5572064db2a5c062`](./contracts/ethereum-1/0xa11704b3dd545dc0771d9a9c5572064db2a5c062/) | ⚠️ Unaudited |
| P2PLendingErc20 | core_logic | ethereum | n/a | 5 deployments: ethereum [`0x12c1c1aeca59d19230e7e86f8455c4ae97d7b23d`](./contracts/ethereum-1/0x12c1c1aeca59d19230e7e86f8455c4ae97d7b23d/); ethereum `0x3257cd43de5f794f95da47bdc0c5561877116705`; ethereum `0x3f9eee6f2e0311f3af191c4cb90dc0f1601e9a3a`; ethereum `0xc4cb90d51547e11cb1aaa0588659d445cb1290c7`; ethereum `0xcf4364b22266c88b0c3c8b350966451509b872ee` | ⚠️ Unaudited |
| P2PLendingNfts | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x5f19431bc8a3eb21222771c6c867a63a119deda7`](./contracts/ethereum-1/0x5f19431bc8a3eb21222771c6c867a63a119deda7/); ethereum `0xa5bc4304517f03db93f7b28c353ffb8b8973e496` | ⚠️ Unaudited |
| P2PLendingSecuritizeErc20 | core_logic | ethereum | n/a | [`0xbfd975e99348379eb52121ef2586adf5cbfe6c32`](./contracts/ethereum-1/0xbfd975e99348379eb52121ef2586adf5cbfe6c32/) | ⚠️ Unaudited |
| P2PLendingSecuritizeRefinance | core_logic | ethereum | n/a | [`0xca1e2f2427700fc510ec920b0e4287182e242ac2`](./contracts/ethereum-1/0xca1e2f2427700fc510ec920b0e4287182e242ac2/) | ⚠️ Unaudited |
| P2PLendingVault | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x08ae358060c6af60710eafda7b9f06c375df5d22`](./contracts/ethereum-1/0x08ae358060c6af60710eafda7b9f06c375df5d22/); ethereum `0x5323417a78aba0214d7476427d6925daaad7636d`; ethereum `0x9b8ea66d737ec1ad7f2486c35e65cd516ff6d05b` | ⚠️ Unaudited |
| P2PLendingVaultedErc20 | core_logic | ethereum | n/a | 31 deployments: ethereum [`0x051c3253b791abd27fb1c7a9a247c531ae7722aa`](./contracts/ethereum-1/0x051c3253b791abd27fb1c7a9a247c531ae7722aa/); ethereum `0x1227222ba6862f467b21977f6f92ae4fc8b6508e`; ethereum `0x13251507befe08bfd1d9d8154a680d72ecada3e2`; ethereum `0x179fd2e6346e57485f0da55a6479c8d76b0d0da8`; ethereum `0x196543f8014f62f0169690720ffe5454e04dc2c9`; ethereum `0x1a5b966b602a63b9f90322c5d37d03ddb9c0d961`; ethereum `0x1a7113e4787e979169b85bca56193fb08e5562c4`; ethereum `0x235e4c91234fefbd04a63f658efd89e96bcb6719`; ethereum `0x25d504c227591295c4cb6bd40edbd29443ada35c`; ethereum `0x2a2fecc4f791271ee81dca6793d798cef69f6d5d`; ethereum `0x34eb3441b3f5506f7f8cf7e02f73abff56c04bbc`; ethereum `0x4e33a48312ab8e902f9626ba7b3e1cda0fb6ff35`; ethereum `0x5a403e30100cd628e17100a9ff7101b97f757598`; ethereum `0x5dc4f0b9401e80a99ff726b6078e4dbc067687ff`; ethereum `0x5e1f36e68c160bc7fd4ee80205215791fbe20718`; ethereum `0x644cb6a4610be45e1436dd8ef89c690e3809ff52`; ethereum `0x72ed8921325b3a8e487bc93a3c8b3f14aac21514`; ethereum `0x7357752355fbd43913172416c8869f5984f190d9`; ethereum `0x8107f63f1ac0e5a4faebb333cefeb1fdf57345b6`; ethereum `0x84cf87ed4bdc0aabb354b7aaa6c709c00c705d2f`; ethereum `0x8963df54a1bff6a8f1b20db306968be2626376d1`; ethereum `0x8f5e0e7e33118eae09355e26533b5be85150d74f`; ethereum `0xa484590c5f1a4b968f44d750739fcbd1569ed969`; ethereum `0xc5fe6b3df05cdeddba23f8b228f9e5153a3e414e`; ethereum `0xdef19b9a0f29060553f27ca753cad381998a1768`; ethereum `0xf0c6d8aa140557a0751750a40de1795c6105387c`; ethereum `0xf1aaff1f9e0b6e5e5ac042b1457fd53f8d5d9397`; ethereum `0xf6cd036f1549c76649d06e2f8a247dc1389817fe`; ethereum `0xf7ea0e0bb41e5cb202d19addd23b8af8a2a71419`; ethereum `0xf9e78bf2b426909ae6cd9ce6e4076b1c6970a079`; ethereum `0xfed19f7463b898209219752cad16d5ae47ea6841` | ⚠️ Unaudited |
| P2PLendingVaultedLiquidation | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x4cdc097c838fa7bc8ec6917d9d5f07f52bcbdb75`](./contracts/ethereum-1/0x4cdc097c838fa7bc8ec6917d9d5f07f52bcbdb75/); ethereum `0xa311a5e55939ba90c97fd5b4f77ff0508e36eb61` | ⚠️ Unaudited |
| P2PLendingVaultedRefinance | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x8850dea069963fafdd7723e7d4a5854d639c7519`](./contracts/ethereum-1/0x8850dea069963fafdd7723e7d4a5854d639c7519/); ethereum `0xafcc36b601cb1afa8f1223e0b35bae1ba556d0f9`; ethereum `0xf700511333209db6b8a68be72f90e8c73da016a1` | ⚠️ Unaudited |
| SecuritizeProxy | unknown | ethereum | n/a | 3 deployments: ethereum [`0xc4b436d27c279b2a701b037e960b190b27bd12f8`](./contracts/ethereum-1/0xc4b436d27c279b2a701b037e960b190b27bd12f8/); ethereum `0xcb47c601db5dfffa2deac70be2ab3dec172ed399`; ethereum `0xee6749205063ab603e695a5ec96d8bea6e794fbf` | ⚠️ Unaudited |
| SecuritizeRegistrarConnector | unknown | ethereum | n/a | [`0xf06eab34f0e80f2dafaaba9170ac6e7890691a7b`](./contracts/ethereum-1/0xf06eab34f0e80f2dafaaba9170ac6e7890691a7b/) | ⚠️ Unaudited |
| Vyper_contract | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8445b94d840f370ac32c36aa3996a24b029a2cf5`](./contracts/ethereum-1/0x8445b94d840f370ac32c36aa3996a24b029a2cf5/); ethereum `0xb5f7554bd84e16f61d3308c44897c4dc3cf5da46` | ⚠️ Unaudited |
| Zharta Renting Contract | unknown | ethereum | n/a | 6 deployments: ethereum [`0x2ef699b51ca996c224bbe51cdbfcc2a1a7284d94`](./contracts/ethereum-1/0x2ef699b51ca996c224bbe51cdbfcc2a1a7284d94/); ethereum `0x53ea4448df8bf44a5c8285dcca7d4ac2baae0079`; ethereum `0x5a9168bd70d260ef39d9cdd3bc76385ef260c01c`; ethereum `0xbef115f530d8680a7a1f4afaf747bc65986848ef`; ethereum `0xdaec5a585a53774c78db966173481d6591f08123`; ethereum `0xe8d846113ad52e58e9c3321ffb3b3381b53a3875` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (88)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x017d4fb9df9aae92c18606ca9c38eac3710cba7e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x01ebc22cd555cbf227c72cc41b42fc507681300b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x02325e1773be685384f1ad0f619cfa6c901e419e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0513b108f1a646d47ee17e614a9f9d743719fefb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x075fee3816b2e2e6413b8fad09c0f30a4492c774` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0b2d6a2106be311d6d9c9ec8c0971f554691cc45` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0c07266b7b9a22c2f678ed8bbc39ce325d663690` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0cb2edaeea5391c8651b3e58344b06feed3d175b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x10d62ede894f8c4ddb9fdbc462ac6ff260cc36b3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x14cb2db23fc835040cce344574f1b370bd3fdfaa` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1814b0b5468274e83de72c5fe8ff6df03a0de070` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e0cdc5adb9f5a2997995f5ff142044ae21baa5c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1e1ec9e902122e019b20a099a8c2d61a024fa237` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x1fff957f976595416c1ecfc0bb767a0f5123851d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x24a0205785e3b3c2fc150a7effeabd1835306a5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2689f1834d292d2ba8ed5b836cfb85269551d78a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27990214fe29e0e760b1af812872afc99cac3328` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x279fc5356b427275eeea326c0ff62bd1101bde32` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x27d45e31b71ab0f23269ea9cfda3d82309be3659` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2c673927f480eb546bfabeebc317a5197ca33dd9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x34c35cbf7162335529a06abb91aaabc8dced00cc` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x35b8545ae12d89cd4997d5485e2e68c857df24a8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x37ecc3332abb43edd1ade1664de8d7048e7714f6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3a7eef6d40eac84b471228bf17372d5851fb5d83` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bd1485bc0b2f2d2864cc0a92ec9006803f40f85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e02654fbd6580f0d3f2e7999e53b0428bc88373` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x409f6caaa48e30041e201a2a839c01185d05d3ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4170cce6f4fade09d43268e0824fb46f920e2a34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x424c836abcf82bee373c378fa6efc0690efeec93` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x44d2f0f514bf0ea91d9b19dcc7b1d8247a349fe1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x454d32ee8b6a98fc21cf93d9ef02f3ccbef92d79` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x483efb3a6b289ce88434c67a8ba1c58dcdaaed98` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4bea7f7ecce5ffa2067702034505ebe0bd6d64a3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4c74ed59baa8fa9666037d1e04f176723e1ef75c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4eb10b069d11c73aae86cedf22c03d881a5f8453` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f74b4acbfdf827e62d9e3ec095edcd351442176` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x539353c8c3686cdab3f85af4e8a600fd4025446c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x53de37d93a374d8b3719befa0343f26365e30ce9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5732291d337d6a2476f0bfaf9fc91fd9438829cf` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x580f37b53736e71fc44096ca94f95b12f44a67c5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x61be8ba3a56da7a57af6807e78928529698eff34` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x640c9c204532ce9a998dc6461ae755cbfcd28ce4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x655c6099535aa68870d4803d2e3514832eb41b80` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6781884f919b3533b4de87715e0e4564e62912fe` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f93d5dac97cfb6239ea91f2b07268f89838f9e9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7ca34cf45a119bebef4d106318402964a331dfed` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x85abce3bde0c71a9f68bfefe99dbd5522aea79c4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x86e4899d363c6f2b92fa43bdabca34a71aa86074` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x87256242c6628b3627f3d96a6c8c567ce94ed2f1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8a2b604226347e911be69f1376429038b13eeb5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8ae9fabeab3ec1ea562b928b51fc3f1d464ce0b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8d84b38d86d00dc1f1942bd99bce4df76e0c2562` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8dffcb2b46af7c547c99d5e9b5c58cc56313cacd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e97e472b49173ea250f751a5f2620de56eee82c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8f69f1656af94587e7aeaf2a5e440f402d53a8d0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x94925030f48adfc3e4a65a2e0a7444733406c144` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9cf98d3cf0d05b2b57ec2d0894affb9afb9aed23` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9d682092259a78e13202841fca5e0e96e2b3aaba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9f9b4e596901dc4b2e8d93074ce46c423e2a5c26` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa53cce9adb2ff10480599daac56a5427eb3bc796` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa79da8c90aa480b3716c23145154ca6ef5fc29c1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaaa9f1f49fb0c08a48bb573d6e5dd62305045ee1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb482f7e532833484e3cc0f8600148984d20f093c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb4bd8cf35e28d4853fd6a9227292f9c223e9e222` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb51675f4442e9fcdd89db4818eac8e63f6745637` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb5d3e7e32e7f2662cd81c3176039d0ed0e02d724` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb6ebd0af2150f7a94f43d19259f4e19244ee831` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbf206c60cdfa8f88196c56d2ac2d01309b357fdd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc22b024dbae8701a0bf2670767b11fa007da5f85` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc9eb983357b88921a89844d7047589a37b563108` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca54733a772c83096e40f644c9286c9779191e50` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd59dadc8ecd60cece06d56fdbb6181c1c7002552` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd62aab85735b92854807acffa3ac550d24b4e75b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xda7f77d28993104b2dbb179f057216863262dbfb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde7b916834e2848826429d38caa470ed95367a09` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde91068143914db7dbb867ca020a59fcea1e1e81` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdf96d685e40dbf018917aeb1f4db6ff6d1bfe704` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe3af996da815bf95af64048b1beb5a7dbe00eb14` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe3d6b3c5381c80dc475c5e38a5e422a5e6968d72` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe62f721c8607784b0e029d39f74f5e74df42f2bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe96f28d96d0a94709968d394e158aa5c4cb1851d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xea15adfacd95fc0067589395b96f3587d0a44e8f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf1a2afa6cc693bc3ccdbf724f141526925544401` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf4fbc88eb872e82ed5842fb34c7e371a9ac85ff9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfab717b46f7e9b2d8407d8bdfb26ef085201fbf8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfc45634c72319022aba078b466e26c38293b49ec` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfcc3ab9bcb732bc2d5d02b1c947472b326a05b87` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xfd1c9a66f51db3adc919b6c3078badeb764948cb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Zharta_SCAudit_Report_Final.pdf](https://raw.githubusercontent.com/Zharta/protocol-v1/97ad0167fff89b8f4f8d70ecef76869ca89b8b63/docs/audits/Zharta_SCAudit_Report_Final.pdf) | yAudit | Audit | 2023-01 | stale | Direct | contract_name | 2 | n/a |
| [Zharta - Audit Report Final.pdf](https://raw.githubusercontent.com/Zharta/protocol-v1/97ad0167fff89b8f4f8d70ecef76869ca89b8b63/docs/audits/Zharta%20-%20Audit%20Report%20Final.pdf) | yAudit | Audit | 2022-05 | stale | Direct | contract_name | 2 | n/a |
| [zharta-oct-25(Final).pdf](https://github.com/Hexens/Smart-Contract-Review-Public-Reports/blob/main/zharta-oct-25(Final).pdf) | Hexens | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xa11704b3dd545dc0771d9a9c5572064db2a5c062`](./contracts/ethereum-1/0xa11704b3dd545dc0771d9a9c5572064db2a5c062/) | P2PLendingControl | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x12c1c1aeca59d19230e7e86f8455c4ae97d7b23d`](./contracts/ethereum-1/0x12c1c1aeca59d19230e7e86f8455c4ae97d7b23d/) | P2PLendingErc20 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f19431bc8a3eb21222771c6c867a63a119deda7`](./contracts/ethereum-1/0x5f19431bc8a3eb21222771c6c867a63a119deda7/) | P2PLendingNfts | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbfd975e99348379eb52121ef2586adf5cbfe6c32`](./contracts/ethereum-1/0xbfd975e99348379eb52121ef2586adf5cbfe6c32/) | P2PLendingSecuritizeErc20 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xca1e2f2427700fc510ec920b0e4287182e242ac2`](./contracts/ethereum-1/0xca1e2f2427700fc510ec920b0e4287182e242ac2/) | P2PLendingSecuritizeRefinance | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08ae358060c6af60710eafda7b9f06c375df5d22`](./contracts/ethereum-1/0x08ae358060c6af60710eafda7b9f06c375df5d22/) | P2PLendingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x051c3253b791abd27fb1c7a9a247c531ae7722aa`](./contracts/ethereum-1/0x051c3253b791abd27fb1c7a9a247c531ae7722aa/) | P2PLendingVaultedErc20 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4cdc097c838fa7bc8ec6917d9d5f07f52bcbdb75`](./contracts/ethereum-1/0x4cdc097c838fa7bc8ec6917d9d5f07f52bcbdb75/) | P2PLendingVaultedLiquidation | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8850dea069963fafdd7723e7d4a5854d639c7519`](./contracts/ethereum-1/0x8850dea069963fafdd7723e7d4a5854d639c7519/) | P2PLendingVaultedRefinance | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc4b436d27c279b2a701b037e960b190b27bd12f8`](./contracts/ethereum-1/0xc4b436d27c279b2a701b037e960b190b27bd12f8/) | SecuritizeProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf06eab34f0e80f2dafaaba9170ac6e7890691a7b`](./contracts/ethereum-1/0xf06eab34f0e80f2dafaaba9170ac6e7890691a7b/) | SecuritizeRegistrarConnector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8445b94d840f370ac32c36aa3996a24b029a2cf5`](./contracts/ethereum-1/0x8445b94d840f370ac32c36aa3996a24b029a2cf5/) | Vyper_contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2ef699b51ca996c224bbe51cdbfcc2a1a7284d94`](./contracts/ethereum-1/0x2ef699b51ca996c224bbe51cdbfcc2a1a7284d94/) | Zharta Renting Contract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 88 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=4

Zero-match audit list:

- [14183] zharta-oct-25(Final).pdf

Fork inheritance lineage and inherited audits are included when available.
