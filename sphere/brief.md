# Agentic Audit Brief: SPHERE

## Project Overview

- Project: SPHERE (`sphere`)
- Website: [https://www.sphere.finance](https://www.sphere.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:58.484Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16bc
- Chains: arbitrum, base, kava, polygon
- Contract surface: 217 unique implementations (219 raw deployments)
- DeFi Llama TVL: $6,582,485.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquidity Manager. Structurally: 9 project-authored contract(s) across 2 chain(s); 1 ERC4626 vault, 6 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 7 common project-authored base contract(s) (proxy, basepoolauthorization, authentication). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 219; live-surface contracts included: 219 (12 live, 207 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/10 (10.0%)
- Deployed-live implementations: 10 of 217 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/10
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 207
- Unique implementations: 217
- Raw deployments: 219
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-04 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 10.0% | 2022-04 |
| SourceHat | Tier 2 | 1 | 10.0% | 2022-04 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SphereToken | token | polygon | n/a | [`0x8d5460...5b9716`](./contracts/polygon-137/0x8d546026012bf75073d8a586f24a5d5ff75b9716/) | ✅ Audited |

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ATokenInstance | token | polygon | n/a | 2 deployments: polygon [`0x82e64f...2312ee`](./contracts/polygon-137/0x82e64f49ed5ec1bc6e43dad4fc8af9bb3a2312ee/); polygon `0xea1132...6f7ac9` | ⚠️ Unaudited |
| ATokenInstance | token | arbitrum | n/a | 2 deployments: arbitrum [`0x8ffdf2...0a0692`](./contracts/arbitrum-42161/0x8ffdf2de812095b1d19cb146e4c004587c0a0692/); arbitrum `0xe50fa9...8128c8` | ⚠️ Unaudited |
| BaseRewardPool4626 | core_logic | polygon | n/a | [`0x39ee6f...abd2c6`](./contracts/polygon-137/0x39ee6fb813052e67260a3f95d3739b336aabd2c6/) | ⚠️ Unaudited |
| ComposableStablePool | core_logic | polygon | n/a | [`0xcd78a2...4d7c8f`](./contracts/polygon-137/0xcd78a20c597e367a4e478a2411ceb790604d7c8f/) | ⚠️ Unaudited |
| DebtToken | token | base | n/a | [`0xc19669...be57f5`](./contracts/base-8453/0xc19669a405067927865b40ea045a2baabbbe57f5/) | ⚠️ Unaudited |
| Pen | unknown | polygon | n/a | [`0x9008d7...891a97`](./contracts/polygon-137/0x9008d70a5282a936552593f410abcbce2f891a97/) | ⚠️ Unaudited |
| SphereLocker | unknown | polygon | n/a | [`0x4af613...889653`](./contracts/polygon-137/0x4af613f297ab00361d516454e5e46bc895889653/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x172370...a610af`](./contracts/polygon-137/0x172370d5cd63279efa6d502dab29171933a610af/) | ⚠️ Unaudited |
| WeightedPool | core_logic | polygon | n/a | [`0xf33129...0b47b2`](./contracts/polygon-137/0xf3312968c7d768c19107731100ece7d4780b47b2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (207)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x006d19...4bf5b0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x00960e...06351a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x00dead...aa9e20` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x016e14...eef329` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x01726c...ff256a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0266cf...94e82e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x041f52...6b6c57` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x04f5cb...a183cb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x055fd5...783178` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0a9b2d...778908` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0cf306...7845f7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0d5956...bc108f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0d9e1b...447f79` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x0daa6c...4c336d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x102347...e48dd1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1191d5...349c14` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x13f255...ed810a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x171241...6348f3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x19eb8b...1cc37f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1e8e24...21a96c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x20b559...7f4b10` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x213677...80708e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x22f5a1...f6c1e5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x25f293...0a5986` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x277a4f...f4ded3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2a6802...73738b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2a71d8...3f38a2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2afc29...518437` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2d0c50...d1989c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x2fca8c...2b1a06` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x30333d...25c5d7` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x313cd0...166be9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x319f68...9369bc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x35706c...6e7d04` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x363381...e29f01` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x37d30c...f1e66d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x38f6ee...a0e20f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3b443e...1873d4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3cc82e...42098c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3d30af...fe4d7c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x3f9319...1f3904` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x43f075...aa6b51` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x440245...1e3b1f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x440465...d2207c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x44c8ee...d8f47c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4550ec...26ff63` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x45802b...761f1f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x45d4d2...1cfd26` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x473195...f52902` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4866ad...983cd2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x496d8c...76cf12` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4b01f3...a6d9d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4c5ae7...28b13d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4d9f83...322b27` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4e4de8...a1451e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x4fca08...37c428` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x532505...3af2fe` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x541ade...685451` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x579ba9...a8a9c1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x57bc5f...83fb36` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x59871e...e2f36e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x59d052...24d163` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5a1fa2...5684f2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5a4798...bf4352` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5af8f8...5f9482` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5b0953...d45364` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5c8803...b2889d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5e5c0c...d41690` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x5eeb6f...499301` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6186d8...b5e075` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x64e678...40c6ec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6595a2...d9f385` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x68c08a...fdd912` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x691289...1a9cdf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x69987d...a5855f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6a2028...635dcb` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x6b2c13...49eb2c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x73625a...f82306` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x750d37...d6cd64` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x76d4af...194f6e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x7e96bb...b14277` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x83d62d...d05852` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x83d6c4...db254a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x83e738...a3e17b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8473db...718011` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8585c9...3c562a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x85911c...be17d6` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x873d8b...3f8e59` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x88ee2b...6453d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x89e884...3cb4ce` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8a9287...04caaf` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8d90da...de0303` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x8f1389...285685` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9210ff...123518` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x988ebe...d3271a` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x991b73...e4d5dc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9a2908...475301` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9a56f8...f869d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9b3c6c...39d871` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9c8e5f...ece8f4` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9ec307...e626b8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9fc545...b8a70c` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa0d29d...0da170` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa6d12c...fee3cd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa73e3e...f2c5d8` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa8d16f...aeb8dc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xa9f6a3...d2d5e5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xac4615...f192fd` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xadf5b2...c0e26f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb2f5e5...e1560d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb4df4e...c853b1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5a4a9...ad69a1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb5e0ee...b3db98` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xb756ae...afb334` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbe0e1e...0786a3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbecb63...294bb2` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xbfcb71...a388a5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc6ada0...19a469` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc747db...ec46a3` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcb4e32...d047fc` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xcbede3...282d8d` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xce9667...fb3a0e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xce9b43...6892c9` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd23d2d...921c32` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd36181...b1cb71` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd3bf31...c52f95` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd499f4...fdc6ad` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd6d61e...7f4d42` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xd918ee...45a02b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdac020...db20ed` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xdcf2a7...cb7642` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe070c4...328a22` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe35076...74ee5e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe3663a...a8ef62` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe5e882...18ff73` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe787d1...7e6c2b` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe8b90a...4e5018` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xe9b71c...c3ea04` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xeb2d34...c75727` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xed12da...ec6361` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xedc0dc...146f99` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xedd95f...35d104` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf0aff4...91cf5e` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf1d8ae...60d1af` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf48bab...9995d5` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf5fea9...aa6dec` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf87dca...276571` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xf9c740...318ad1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfa9fe8...cb3ed1` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfaa17c...c17b6f` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfbc779...aa37f0` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfd3d57...901f33` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xfe28da...d2ab2f` | ❓ Unverified |
| UnnamedContract | unknown | kava | n/a | `0x489e54...50b5be` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x097fb9...0a28a4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x09daf5...322652` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b2129...7b65e9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0b5e77...44c5f4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0f2b0a...35b692` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1a566e...e79193` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1f17fe...b1bef2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x22a765...95295d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25f110...8aca8a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x297e37...1dffb0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2d450b...5a741f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2f79ad...224287` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x30c142...8c9f7c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3c4863...90dd04` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f00fe...fb0fc9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3f6ce2...d6b2fb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x406b94...fb3d0d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x446bee...61039d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x453463...ca6b9a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x47dd0f...1d2c16` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5208c0...ccdfc5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x56c55f...7651bd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x576e43...251a3f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6179ea...978f1a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6afa83...fbfb52` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6c91d2...a159f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6e406d...1349ed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x73aa01...d7b399` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7a004e...e6af04` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x839a33...8ae5c1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8937bc...4551ce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8af0d9...237e7d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8e6dd2...cb73cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9d012a...2cf1c6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa0d1fc...dec2a5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa94aa0...b92cd8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa9d2c0...4d596b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb62ada...99803c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb783f0...b2b1ab` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb846be...0ff522` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbb3d55...bd1858` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbffc68...944b2d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc6adec...f00bec` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc98d07...fec1c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcf9a7b...c9cb4a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe1fbf5...60ffb1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe6612d...b29dec` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe6ed81...2bf668` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe7367a...5d0f43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xebd48e...21a8d1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xefaa59...e31a04` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf910ac...389719` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfb9fdb...7c05fb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Solidity Finance](https://sourcehat.com/audits/SphereFinance) | SourceHat | Audit | 2022-04 | stale | Direct | contract_name | 1 | high |
| [Certik](https://skynet.certik.com/projects/sphere-finance) | CertiK | Audit | 2022-04 | stale | Direct | contract_name | 1 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x82e64f...2312ee`](./contracts/polygon-137/0x82e64f49ed5ec1bc6e43dad4fc8af9bb3a2312ee/) | ATokenInstance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x8ffdf2...0a0692`](./contracts/arbitrum-42161/0x8ffdf2de812095b1d19cb146e4c004587c0a0692/) | ATokenInstance | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x39ee6f...abd2c6`](./contracts/polygon-137/0x39ee6fb813052e67260a3f95d3739b336aabd2c6/) | BaseRewardPool4626 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xcd78a2...4d7c8f`](./contracts/polygon-137/0xcd78a20c597e367a4e478a2411ceb790604d7c8f/) | ComposableStablePool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc19669...be57f5`](./contracts/base-8453/0xc19669a405067927865b40ea045a2baabbbe57f5/) | DebtToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x9008d7...891a97`](./contracts/polygon-137/0x9008d70a5282a936552593f410abcbce2f891a97/) | Pen | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4af613...889653`](./contracts/polygon-137/0x4af613f297ab00361d516454e5e46bc895889653/) | SphereLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x172370...a610af`](./contracts/polygon-137/0x172370d5cd63279efa6d502dab29171933a610af/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xf33129...0b47b2`](./contracts/polygon-137/0xf3312968c7d768c19107731100ece7d4780b47b2/) | WeightedPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 207 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1, medium=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
