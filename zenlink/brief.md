# Agentic Audit Brief: Zenlink

⚠️ Lifecycle status: DECLINING - TVL dropped 1.4% over 90 days

## Project Overview

- Project: Zenlink (`zenlink`)
- Website: [https://zenlink.pro](https://zenlink.pro)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-10T20:59:19.495Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: moonbeam, moonriver
- Contract surface: 226 unique implementations (249 raw deployments)
- DeFi Llama TVL: $5,337,021.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Zenlink is a Polkadot-ecosystem cross-chain decentralized exchange (DEX) and AMM protocol, with deployments and liquidity across chains including Bifrost, Astar, Moonbeam, and Moonriver. It supports token swaps, liquidity provision, and fee earning through liquidity pools, including standard AMM and stable-swap functionality. The currently listed contract surface covers only Moonbeam and Moonriver and should not be treated as representative of Zenlink's full current cross-chain footprint or total protocol TVL without adding the missing Bifrost and Astar contracts.

### Architecture

The Zenlink AMM family is the sole product family, with Factory contracts deploying and managing StableSwap pools, while the ZenlinkToken serves as the protocol's native token. All contracts are deployed across Moonbeam and Moonriver, sharing the same AMM infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/12 (0.0%)
- Verified + Unaudited implementations: 12
- Verified by bytecode match: 0
- Unverified implementations: 214
- Unique implementations: 226
- Raw deployments: 249
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (12)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BaseSplitCodeFactoryContract | registry | moonbeam | [`0x3f33f0...e8fae3`](./contracts/moonbeam-1284/0x3f33f0bc18789346e35688c6b63cf31e95e8fae3/) | ⚠️ Unaudited |
| Factory | registry | moonbeam | 4 deployments: moonbeam [`0x079710...c716a0`](./contracts/moonbeam-1284/0x079710316b06bbb2c0ff4befb7d2dac206c716a0/); moonbeam `0xf49255...f92fef`; moonriver `0x28eaa0...0f8d38`; moonriver `0xf36ae6...01438d` | ⚠️ Unaudited |
| Farming | unknown | moonbeam | [`0xa22687...918c2d`](./contracts/moonbeam-1284/0xa226877393fc4e3b5f2b43a1bae3c5d72c918c2d/) | ⚠️ Unaudited |
| Migrator | periphery | moonriver | 2 deployments: moonbeam `0xbcb672...24202a`; moonriver [`0x43581b...2a87b5`](./contracts/moonriver-1285/0x43581b441e019974e8fcffca0a1032f53e2a87b5/) | ⚠️ Unaudited |
| Multicall2 | periphery | moonriver | [`0x959b76...704208`](./contracts/moonriver-1285/0x959b76b30f12c6ad3f3c59611f5377d44a704208/) | ⚠️ Unaudited |
| Router | adapter | moonriver | 4 deployments: moonbeam `0x5c93cb...49887a`; moonbeam `0x7a3909...fcab71`; moonriver [`0x1006ff...242fa6`](./contracts/moonriver-1285/0x1006fff14e20fcc7d5975d4e81421becfb242fa6/); moonriver `0xe6fe3d...8b35ca` | ⚠️ Unaudited |
| StableSwap | unknown | moonbeam | 3 deployments: moonbeam [`0x68bed2...805ec5`](./contracts/moonbeam-1284/0x68bed2c54fd0e6eeb70cfa05723eae7c06805ec5/); moonriver `0x7bde79...f434d1`; moonriver `0xd38a00...209827` | ⚠️ Unaudited |
| StableSwapRouter | adapter | moonbeam | 2 deployments: moonbeam [`0x9823eb...e90eee`](./contracts/moonbeam-1284/0x9823eb09c8e368f98c3da2f6174710d88de90eee/); moonriver `0xe04b18...4843fd` | ⚠️ Unaudited |
| StableSwapStorage | unknown | moonriver | 2 deployments: moonbeam `0xb29deb...ed5e7b`; moonriver [`0x6dcdda...4e97f2`](./contracts/moonriver-1285/0x6dcdda63631201f83c89e459621dac6e244e97f2/) | ⚠️ Unaudited |
| Stake | unknown | moonriver | 10 deployments: moonriver [`0x166792...41ba69`](./contracts/moonriver-1285/0x166792bdc0a3cabc905cb434ce02ccc10f41ba69/); moonriver `0x2c1294...11d70d`; moonriver `0x71aa37...fbd353`; moonriver `0x9a8975...9876fb`; moonriver `0xa03bc7...1924a5`; moonriver `0xa34656...55ad77`; moonriver `0xa8bb6b...9db055`; moonriver `0xd96a05...db29e3`; moonriver `0xe426c5...4cee6c`; moonriver `0xf739d1...1afe75` | ⚠️ Unaudited |
| SwapRouterV1 | adapter | moonriver | 4 deployments: moonbeam `0x571111...572242`; moonbeam `0xeb237c...d647f6`; moonriver [`0x2f84b9...8b189d`](./contracts/moonriver-1285/0x2f84b9713a96fb356683de7b44dd2d37658b189d/); moonriver `0xfb45b5...ea1508` | ⚠️ Unaudited |
| ZenlinkToken | token | moonriver | [`0x0f47ba...a1173b`](./contracts/moonriver-1285/0x0f47ba9d9bde3442b42175e51d6a367928a1173b/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (214)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | moonbeam | `0x03742e...8d3935` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x0470a6...981f61` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x08a643...cd5f89` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x09c584...00a50b` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x0a52c0...5470e7` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x11bb78...136124` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x133f8a...62fde7` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x135853...684cb7` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x19dd60...fd3de5` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x1ba120...b5b98e` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x1c5f9b...42aa6a` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x1edecb...05ff65` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x209a10...cf48fd` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x212934...e59c36` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x2148e0...3b84bc` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x23f036...369285` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x26dfc6...2f1abe` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x2b720e...5ab3a9` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x2ce415...133a10` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x2d9c88...e076b7` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x2dc678...95d129` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x33bb2e...248af8` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x372001...28eb7c` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x3892fb...40063f` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x39d409...698455` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x3d7adb...255665` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x40b2c5...e847fd` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x435a35...5bb151` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x4585dd...d44abd` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x48ebbf...42dcc6` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x494e17...0cb131` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x4e9ba9...e3a1b7` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x53b039...3b0074` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x5803af...48af55` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x5b4bd7...53f255` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x5c0c43...5fa3b9` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x5d4f24...22baaf` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x5da55e...a2ef00` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x5f03c9...407727` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x606979...08cb77` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x63b571...7bc097` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x65a8e2...762291` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x67bab1...352eaa` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x68610a...354165` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x695732...ac0a29` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x6aea6a...5c02f3` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x6b8437...6586b3` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x6ee0f9...f22dd9` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x70f63f...65ae68` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x71221b...13b322` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x72e8a7...2fb4c3` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x75d10d...71aabf` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x793120...f96c50` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x79a22c...2c2caf` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x7a2763...5bd4fc` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x7ad898...e20db0` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x7bae21...1d5717` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x7f3600...b9a590` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x832b21...155c7a` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x83da23...0c67bd` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x88d200...e5bd28` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x895e75...65a6f7` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x8dab8c...a5a570` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x906d16...42b5cf` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x944af4...ca6793` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x94cd9f...4770cc` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x958742...2f3c24` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x972570...827a0b` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x98726d...f31974` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x992755...c84dc2` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x999a63...3c62ba` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x9dd7cd...ef9bb5` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0x9eaee3...e30774` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xa1416d...c27101` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xa14df7...01b743` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xa18200...756aea` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xa84baf...6bf99c` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xab4c61...c4d2e5` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xb3c43f...2cdda9` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xb62524...000ba5` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xb74b05...b79bda` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xb8ae56...5248a9` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xb9b81c...9486ab` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xba722f...5842bb` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xbbbfce...787b68` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xbd5d3b...668c10` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xbd74b1...09bca9` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xc0c08c...aa59de` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xc14cf4...3eb231` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xc1f4bc...a89c5b` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xc550de...43e968` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xc5aa91...d7207d` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xc5f0c1...d7a5fb` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xc7633a...4c0957` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xc935ca...19acd0` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xc94464...552309` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xcd4ff5...480ad6` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xcf9d1c...17743a` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xcfd6b6...301186` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xd8b45e...6141cb` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xd8e076...b324b7` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xd9297b...3b4149` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xda6aa1...c48962` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xe43ef4...ff42b0` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xe4fd20...cbfbc8` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xe7c1ac...368108` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xe9df4c...0b2407` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xeaa099...f560be` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xed4777...fd8b19` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xede5bd...3156a8` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xee1a54...d49795` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xeed18d...a39d16` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xeed359...7ac73e` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xef48a7...572d87` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xf4b7d1...0d7009` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xf6626f...61de34` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xf6e1f3...ec8544` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xf962d4...ed9afb` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xf9c167...eb3679` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xfb3916...fa101f` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xfb952e...6068da` | ❓ Unverified |
| UnnamedContract | unknown | moonbeam | `0xff1dc4...e82e79` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x008fb9...ae0c03` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x02d975...765e95` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x049ed2...8384fc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x0647c3...bd8f4d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x0673aa...451334` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x08e34b...fd21d8` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x0c7c68...cf2a6e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x0e7694...3dd4bd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x0fcd5e...e32c59` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x140b74...cba53a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x152a04...efefe3` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x2425b3...100d17` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x256252...f017f4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x2f988b...08209d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x2f9aa3...4ae57e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x3a046e...a5b082` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x3b4895...53d63b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x3c8127...6cb718` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x3e6e96...d12b10` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x3ebc53...d834a9` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x494b0a...b50714` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x4953e0...435f94` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x533bb2...a8efec` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x59b819...08237f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x59cd36...0e975e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x5a63e1...86c206` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x5b8c57...09253d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x5c4c64...6b9578` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x5cf854...9c1a33` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x5f95f6...7955bc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x5fa215...966056` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x6a059e...759f4e` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x6b2b20...e62ff5` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x6cc6a7...7891c6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x758c94...041351` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x7a1e4c...02dff2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x814e14...21f453` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x898879...0c6d16` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x8a56af...bdc84f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x8a7b12...c1da99` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x8ff8eb...3c5884` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x905b5d...bf3f62` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x9d2d0b...704244` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x9dd98e...a9b3df` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x9e91a3...3eb0ff` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x9f24cf...44ca8a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0x9f9b7d...8b0342` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xa2fea7...ae0839` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xa4b9af...ac23d0` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xa6f95c...dfaaea` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xa71085...57c37f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xa82d81...63f0b7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xaa4f1b...52a27d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xad3cad...2c181d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xb12af3...4421ed` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xb21643...167dec` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xb3338d...192d4d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xb3dc69...ce0abc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xb4a936...88cdcd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xb75e8c...7c9654` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xb8ac1c...e3db7d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xbe39f3...902b28` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xc0aa3e...c12d40` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xc18059...0e5bb4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xc4cf4b...3445be` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xc51f97...df0ad6` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xc55fc9...406a49` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xc583a2...83c79b` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xc6d0cd...00bfc7` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xc6dbeb...efd62a` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xcd16a4...ae6760` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xcf75c3...75e718` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xd087b3...b07787` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xd3a5eb...7c2333` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xd42884...4075bc` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xd66ffc...4e2169` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xda2826...970869` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xdad38c...e431ff` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xddb32b...cb46ef` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xde1e57...d738c2` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xe0ea24...1b1c46` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xe1be32...1ee05f` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xe1d9fe...0ad6bd` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xe39a5c...d812d1` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xe46c07...5b7467` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xe5e068...7de73c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xe62a58...58f86c` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xe80aa4...60f822` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xf0b953...fbf27d` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xf522cc...c5a6a4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xfaa920...b44bd4` | ❓ Unverified |
| UnnamedContract | unknown | moonriver | `0xffeb5b...64078f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://beosin.com/audits/Stable-swap_202309291700.pdf) | unknown | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| moonbeam | [`0x079710...c716a0`](./contracts/moonbeam-1284/0x079710316b06bbb2c0ff4befb7d2dac206c716a0/) | Factory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0xa22687...918c2d`](./contracts/moonbeam-1284/0xa226877393fc4e3b5f2b43a1bae3c5d72c918c2d/) | Farming | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x43581b...2a87b5`](./contracts/moonriver-1285/0x43581b441e019974e8fcffca0a1032f53e2a87b5/) | Migrator | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x1006ff...242fa6`](./contracts/moonriver-1285/0x1006fff14e20fcc7d5975d4e81421becfb242fa6/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x68bed2...805ec5`](./contracts/moonbeam-1284/0x68bed2c54fd0e6eeb70cfa05723eae7c06805ec5/) | StableSwap | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonbeam | [`0x9823eb...e90eee`](./contracts/moonbeam-1284/0x9823eb09c8e368f98c3da2f6174710d88de90eee/) | StableSwapRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x6dcdda...4e97f2`](./contracts/moonriver-1285/0x6dcdda63631201f83c89e459621dac6e244e97f2/) | StableSwapStorage | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x166792...41ba69`](./contracts/moonriver-1285/0x166792bdc0a3cabc905cb434ce02ccc10f41ba69/) | Stake | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x2f84b9...8b189d`](./contracts/moonriver-1285/0x2f84b9713a96fb356683de7b44dd2d37658b189d/) | SwapRouterV1 | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| moonriver | [`0x0f47ba...a1173b`](./contracts/moonriver-1285/0x0f47ba9d9bde3442b42175e51d6a367928a1173b/) | ZenlinkToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 49 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 175 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2439] DL audit link

Fork inheritance lineage and inherited audits are included when available.
