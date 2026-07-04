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
| AdminUpgradeabilityProxy | proxy | bsc | n/a | [`0x3b94b8...35cff8`](./contracts/bsc-56/0x3b94b8e62c1cf0795ec6427aabc23b269b35cff8/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | proxy | bsc | n/a | [`0x8ee584...42ffb7`](./contracts/bsc-56/0x8ee5849366735a3f89c3b86270f9073cc942ffb7/) | ⚠️ Unaudited |
| AnyswapV4ERC20 | token | avalanche | n/a | [`0xd67de0...850454`](./contracts/avalanche-43114/0xd67de0e0a0fd7b15dc8348bb9be742f3c5850454/) | ⚠️ Unaudited |
| AnyswapV5ERC20 | token | ethereum | n/a | 3 deployments: ethereum [`0x3405a1...026e45`](./contracts/ethereum-1/0x3405a1bd46b85c5c029483fbecf2f3e611026e45/); polygon `0x855d42...b1968a`; avalanche `0xa384bc...0f4e0b` | ⚠️ Unaudited |
| ChildChainManager | governance | polygon | n/a | [`0xa6fa4f...d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ⚠️ Unaudited |
| ChildERC1155 | token | polygon | n/a | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| ChildERC20 | token | polygon | n/a | 4 deployments: polygon [`0x53e0bc...abad39`](./contracts/polygon-137/0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39/); polygon `0x556f50...aa9e6d`; polygon `0x578360...11ed5f`; polygon `0x71b821...085978` | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| L2StandardERC20 | token | metis | n/a | [`0x5ce34d...6d80b7`](./contracts/metis-1088/0x5ce34d9abe4bf239cbc08b89287c87f4cd6d80b7/) | ⚠️ Unaudited |
| MaticWETH | token | polygon | n/a | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| NetswapPair | unknown | metis | n/a | [`0x1f9a2b...956e30`](./contracts/metis-1088/0x1f9a2b3b05e1c43ec6aaef2fb727e43c4b956e30/) | ⚠️ Unaudited |
| PancakePair | unknown | bsc | n/a | [`0x73cabb...870e4d`](./contracts/bsc-56/0x73cabbe6e05290a09b9432eb765521941c870e4d/) | ⚠️ Unaudited |
| ProxyAdmin | governance | metis | n/a | 2 deployments: metis [`0x8428b4...04901a`](./contracts/metis-1088/0x8428b4b785df678bcfe5cbb660d2cd555904901a/); metis `0xd8bfb5...90712f` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | metis | n/a | 7 deployments: metis [`0x01b5b4...6e5f9c`](./contracts/metis-1088/0x01b5b462b55a65101d7c7637b056d2dae16e5f9c/); metis `0x0d5d5d...435ea8`; metis `0x3b6426...aec35f`; metis `0x91d57f...a7ae35`; metis `0x9bb0af...ac2137`; metis `0xa65576...fa44d8`; metis `0xa98fd6...8ea602` | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x422432...804046`](./contracts/polygon-137/0x42243231fb4a64a5bcfc7f4b7a9ad92576804046/) | ⚠️ Unaudited |
| UChildERC20Proxy | token | polygon | n/a | 2 deployments: polygon [`0x313d00...5bd604`](./contracts/polygon-137/0x313d009888329c9d1cf4f75ca3f32566335bd604/); polygon `0x5a2fdf...908d19` | ⚠️ Unaudited |
| UChildUSDT0 | token | polygon | n/a | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ⚠️ Unaudited |
| WOWToken | token | bsc | n/a | [`0x4da996...c5e36a`](./contracts/bsc-56/0x4da996c5fe84755c80e108cf96fe705174c5e36a/) | ⚠️ Unaudited |

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
| Proxy (impl: 0x96ffc1d1fe21db95fe69d3e95e81fed0da329ad9) | proxy | polygon | n/a | `0xc7ae2c...bfb903` | ❓ Unverified |
| Proxy (impl: 0xb37026a66b87a4d00f230dbc1374948d68554db4) | proxy | polygon | n/a | `0xe876f5...a56293` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x01dc4f...b11c81` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x044293...79c58d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x067202...3fa158` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x084777...2bca14` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0876be...a836d5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0b8a67...767ce7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0e702b...5e79cd` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0f09b9...11cd2f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x0fef30...9c1a76` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x147b50...409a2d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1492c2...3a2a6f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15e5cb...20a264` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x15f446...3ea67f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x168ea9...2cf264` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x175d41...a8ef49` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x176037...06a3b8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x176710...d302c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x17af2d...cc85a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e14ad...f14cf4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1e4fd9...a91ae6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x22b6fd...70d8ad` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2385ca...842719` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x242e55...a7e280` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2487a5...3315d3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x25871d...82d6d7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x25bf04...82de68` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x26ae59...054e78` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x27381e...ff64a2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x291ad8...f5f6f9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x337740...9286ae` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x33fea7...40d71f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x39b509...a71f7e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a05c9...c4256b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3a8119...d8bdfa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3c6699...5ce8a7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3d40ba...e898a3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3dadca...27ffe0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e7888...bd4a41` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x401715...243fe9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x406a81...7ecd9a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4198f9...38614e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4276d0...c40c6d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x427d80...536411` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x43bba6...5dcb25` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x450965...ad65da` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4567fe...e16089` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x48faa6...0b0e46` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4a10da...fc90f5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4bc804...299373` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4bde10...0b7e31` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4c53d5...078191` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4c96e5...314425` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x4f4f1a...4c1f3a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x50d594...6b985d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x51f49f...6c9bb7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x520f3d...6346d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x525854...8fc224` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x534239...418d34` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x54ce2b...b9703b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x55694d...83ea89` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x56b841...71e4a6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x574711...756729` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x57cb6f...e417c7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x587a30...d4c031` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x592c31...ecf15e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x595083...0044ec` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5b5b95...689269` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5c676e...9133d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5e6224...a4d583` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61419a...bc90b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x62bc5a...c3695f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6301a2...c20da7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x63161f...bc0ce0` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x682592...9f0869` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x686070...55224a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6973a6...46f700` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6c4a50...962866` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6dbec3...902890` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x706cb6...21c004` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x720d73...21c889` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x73993e...d27af2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x745f7e...40a5e2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79b938...e70cca` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79f7e8...762c02` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x79f8ac...a1fe56` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7cc6d2...ec75db` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7ce103...64d264` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7d19d8...e5dde3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7f205f...a35bef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x7fde66...af904e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x80f2a5...943b66` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x816ea0...0b57b4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x81e315...09bbef` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x842dc3...4fdd33` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x867651...88cfd8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x86ef3b...6d6107` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x897c3a...38ccba` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8bb95a...0a95e8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c59b3...16ef9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x8c8aea...3d187b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x91da3e...1c7820` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x951afe...b7f694` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x994712...47aa62` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9b14c1...e34451` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x9d2f28...c4f730` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa0d293...908abe` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa15db9...1ccf9d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa58e48...c2cd0b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa69f66...38fda3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa81899...cc0296` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xa98edf...06d5d6` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xaa99fc...6e6c54` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xabb3b0...6a3fd1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xadc47c...bc6388` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xafab81...b5db72` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb26c43...7a6d92` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb3f3b1...05ddc3` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb4afea...04e84a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xb9fea1...2ccf7a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xba30c3...ed16ee` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xbfe866...bbbf0f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc1a6c5...30937e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc27c6f...24699c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc57087...e78121` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc7b332...e72d66` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc80f78...0649c9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcfa7dd...fee19f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd1fdba...9e7458` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd249ad...72bc3b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd274f6...b6d4c1` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd8ccc2...662c79` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd99037...968135` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdc6b02...994910` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdf4717...777405` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdfd564...3724a4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xdff529...ebdd50` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe2579c...ac7930` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe31b43...c90d1f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe5add0...50f9d2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xec707a...fb97aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed7794...ea773e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xedef93...ee5fcb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0470a...4b46ce` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0f178...dee255` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf379a7...c62757` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf47096...e0fdd9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf8e0de...5c48fb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfa2e47...a890a8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xff2821...ac6fe5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x03976f...8ec15e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x03de14...4d29b0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x052d28...2873cf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x056798...6df034` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x069a82...b1fd49` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0809e4...825f9c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x08e3a3...addf9b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0a8878...e112e5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0ad039...a52ab2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0cd930...fc4e7c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x129055...2bc51a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x13c5a4...30906d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1844de...ef3922` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a6390...5fcc2d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1cba69...29e005` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1d19c1...601ccf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1e0b33...d3052a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1fc610...ab4077` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x20e489...691ea7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2145c3...e32efb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x22b98e...a2f291` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x23e76f...01b5e8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x24a4de...b724dd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x26439c...3d825f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x275dc1...330ec2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x283c2f...0da64d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x29dff6...819d98` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2f6f54...89ca3b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x31b512...0f401f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x32adc8...f168f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x32f41b...8ae2ef` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x334eba...7bcea7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x33bf4d...12b8b9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x33d939...9684f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x35d778...70dff9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x377d72...2a96b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x396dd6...dbde06` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3a8278...c2662b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3acd18...156f05` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d6655...9bf39c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d8df3...3a73b5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3f64c1...37ee2d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4006bb...4380a1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x403340...4e49af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x41632b...7223d6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4229df...13a774` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x43775f...f682a3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x45817c...a5b2d4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x45c1ca...bdde68` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x47b563...b866fd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4a9ec8...153860` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4cfaf3...00b544` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4cffca...fd34df` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4dfc09...87f735` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x50e7dd...8a37e7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x518c21...d1724a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x52afce...f5ae73` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x537955...edc8a8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x548f6c...ecdecb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x567ef9...c541f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x58a47b...7e3e9c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x59ab25...10e9cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5a55d7...29296c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5eb036...43df88` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5f5fd7...2adab1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6167eb...cf64ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x641621...d935fc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x64e2b2...1c365a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x65c3ab...6852f1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x68af2d...1560e4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6ece4b...b48a5c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6f8167...ea19a7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x708b86...a94ae4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x713a11...68238f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x728119...41211c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x72a8ba...736820` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x734659...4d2a8f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x73d89e...24499d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x76f950...d2931f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x78da3b...df7506` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7ac686...0bfdf4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7c2075...eace70` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7dccf0...02b545` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7e6f04...48c7bd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x80720e...cdbf9a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x809e31...fe9e6f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x81f57f...e03b7e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x827493...bce17e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8367d5...73ca37` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8555bc...c9b027` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a5254...a1f43c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8b4801...163306` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8dd552...f7fdce` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8e93ad...a3cd79` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9204eb...344eaf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9381bc...21d7b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9745ed...6ac983` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x976e90...246dbf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x99d732...bf3bb0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9be925...39a7f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d575e...450da5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d5fa5...ec45c5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d7dfb...43f676` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa09dae...39497e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa72799...6a9dbf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa8c65c...2bc651` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa9214e...5181ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xab7aac...e7663f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xad5462...b087ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaf6c51...ece2de` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xaf8c45...01a33b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xafd905...7065f5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb4c275...f66a69` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb58d4c...6698a0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5e861...00ae87` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb849a1...2fc87f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb86d85...ea6f09` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbc464a...0e53f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbd89b7...b45249` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc67743...9edf31` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc6a689...dad344` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc72db4...e9b560` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc78317...93cf09` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc7e44d...19dbb5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcc8976...bb5038` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcddd87...db20ee` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd15714...10a9b3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd1996e...5a5e14` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd4ab78...9edf9a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd5b6cf...df5226` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd630a5...70cddd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdc3543...ef91b7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdeb3ad...ff9bca` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe029f9...cc70d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe05a04...12c05c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe13cb8...a74d99` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe1932e...a27ff3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe2d6c4...3bf6b7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe302c6...da374c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe3743c...de7ec3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe3c99d...4eb5ac` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeaca67...e9e4e3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xecd953...5f2cc6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeeab40...47ed16` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf08bda...b87e99` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf14c0d...d6c2cc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf36d69...cb90fc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf6908a...dc19c1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf722d0...5a6978` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf73d1e...0e4594` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfc7b3c...5ec188` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfe7b52...d0d489` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfed762...a6ce88` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1a95eb...79a5cd` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x527805...2a21f0` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x574213...199b21` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x617b12...a981bb` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x67538f...0048c3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6c5796...e00682` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x71a19b...e90029` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x994e45...47819c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa0d680...461aa3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa61df2...8bb2e7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa8fba3...e34721` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa95f47...9601c9` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd4c42f...c46d9b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xddfe01...39c4ff` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe1f5e1...928dcc` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xec5945...0cd003` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf5bb48...54dca8` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf93e91...3a05fe` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf9f619...fdc028` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfceca4...194dfe` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xfed8d5...3a379b` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | 9 deployments: heco `0x518c21...d1724a`; heco `0x5e5f16...388253`; heco `0x72c0a2...bf159b`; heco `0x86fea7...cb1872`; heco `0xefaeee...d40d73`; kava `0x3b6426...aec35f`; kava `0x527805...2a21f0`; kava `0xa53230...51babf`; kava `0xa98fd6...8ea602` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0330dc...7185bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x035a7b...b4cd21` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x05cbcc...99004f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x06bc77...71b3f7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0720d4...3aeab7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x08af1a...7f8e9b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x097610...8b8d97` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x09d7c0...b01e1f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0faf60...e2db8d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x10da5f...8dae0b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x146df2...d933f5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x193232...056c7d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19a718...6f4725` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1ba0b5...9eb77d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1cdb1a...61a4e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1d48f1...05c506` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1d5ef3...a3a93c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x20db99...272a3f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2105bb...fbd6cc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2110af...4ee678` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x219670...867443` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x23880e...94639b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x239436...aa4a0a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x28638e...184113` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2afaf0...4c0210` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2b9bc6...0d1cf0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2c8252...a39a75` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2ee88b...4fc8a4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x305a56...785bc3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x30963a...81f97b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x32f5b8...5e4d79` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x34be73...ba8946` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x36de44...63b071` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3eb8e8...40e6fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x403ad1...5e6b8f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x411211...cfeac7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x412420...8d517b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x44b272...57efe4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x49d008...f0eec9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4c0992...6fe8f7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4d62aa...5d7350` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4de156...0755e1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x52e40b...f475f4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x52f54b...71d31d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5300a8...922324` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x546120...5fdb9a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x54895f...36a448` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x556ac3...beb43f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x55a686...ab2153` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x55facc...2ffd95` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5687bd...f614c3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x595f24...4ad521` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5988e4...8b2d68` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x59d9cc...2af996` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x65cb6d...b36bc1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x69f2a7...ffa1e4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6df227...bf70a3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6e4ad8...db6afc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6e6717...b43edb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6ff74a...8115bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x70b450...b18d2a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x738e26...f8c686` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x73ea8d...9cdec1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x74b226...acaf9d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x75fd02...57131a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7e577f...00d84f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x859b78...03f15a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x85d3a3...e0364c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x87a070...13d20e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8af9cd...a1c98f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8dad83...01872b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8f91a9...af1307` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x903cdf...8fa3da` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x915f87...18c5cd` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x91c170...bb8c7a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x91e86b...e32c43` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x95439c...796318` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x976807...f4559d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9b439c...2ab379` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9bb739...6c6fad` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9e9097...fce7f9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa21fa7...af37c4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa2d094...a91be0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa7e29c...543910` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaa6883...e67078` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xada0c7...c66187` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb081fe...4dd1bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb4c4dc...a4cc17` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb75fc9...97aea1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb972e1...6b7152` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbe31b0...3af622` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbf7561...e367fb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc2aded...e5b906` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc46f72...7515d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc4abac...56958c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc4c93e...bf72df` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc52c03...6cffaa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc5cad4...75d7a6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc630c5...28f4be` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc787be...1e7b73` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xca9340...7ae3bc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcc749d...d8cf35` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xccfca6...d4d7b7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xcec42c...51eff4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd25056...17d597` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd6dd2e...ec6f45` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xde8ef2...dd75fa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdf3dcd...649dfa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe23d08...1145e6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe35766...3f1971` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe3c4e3...e650d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe43a3d...8675b1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe51d6e...dc8841` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe6063c...fcf65f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe83803...05b389` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe8877b...a68b7e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xead851...649bb3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeb3e85...67b2ff` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xecbeb4...1af517` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xeda86b...a11820` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xee7413...82883a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf1c015...290910` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf527f8...672072` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfa099d...b046bb` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfc3b81...bc48c7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xff291a...1371bf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xff3b4f...f7645a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [hacken.io/audits/wowswap/sca-wowsap-defi-jun2021](https://hacken.io/audits/wowswap/sca-wowsap-defi-jun2021) | Hacken | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0xa6fa4f...d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ChildChainManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ChildERC1155 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x53e0bc...abad39`](./contracts/polygon-137/0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39/) | ChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | FxChild | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x5ce34d...6d80b7`](./contracts/metis-1088/0x5ce34d9abe4bf239cbc08b89287c87f4cd6d80b7/) | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | MaticWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x1f9a2b...956e30`](./contracts/metis-1088/0x1f9a2b3b05e1c43ec6aaef2fb727e43c4b956e30/) | NetswapPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x73cabb...870e4d`](./contracts/bsc-56/0x73cabbe6e05290a09b9432eb765521941c870e4d/) | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x422432...804046`](./contracts/polygon-137/0x42243231fb4a64a5bcfc7f4b7a9ad92576804046/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x313d00...5bd604`](./contracts/polygon-137/0x313d009888329c9d1cf4f75ca3f32566335bd604/) | UChildERC20Proxy | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | UChildUSDT0 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x4da996...c5e36a`](./contracts/bsc-56/0x4da996c5fe84755c80e108cf96fe705174c5e36a/) | WOWToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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
