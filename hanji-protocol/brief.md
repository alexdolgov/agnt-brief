# Agentic Audit Brief: Hanji Protocol

⚠️ Lifecycle status: DECLINING - TVL changed 4.0% over 90 days

## Project Overview

- Project: Hanji Protocol (`hanji-protocol`)
- Website: [https://hanji.io](https://hanji.io)
- Lifecycle: declining (Tier 0, 41.2% below peak)
- Generated: 2026-06-10T20:59:04.466Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: base
- Contract surface: 289 unique implementations (291 raw deployments)
- DeFi Llama TVL: $2,738,368.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Hanji Protocol is a multichain on-chain central limit order book exchange associated with Etherlink, Base, and Monad. It supports on-chain orderbook trading, including market orders and zero-fee limit orders; liquidity vault functionality should be described separately only where supported by current scope evidence.

### Architecture

The Orderbook Contracts rely on Token Contracts for the assets being traded, while the Hanji Protocol family orchestrates trade logic and settlement. Helper Contracts provide shared utilities used across the orderbook and protocol families.

## Audit Coverage Summary

- Verified implementations audited: 0/6 (0.0%)
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 283
- Unique implementations: 289
- Raw deployments: 291
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| FiatTokenV2_1 | token | base | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| LBTC | unknown | base | [`0xecac9c...5c11c1`](./contracts/base-8453/0xecac9c5f704e954931349da37f60e39f515c11c1/) | ⚠️ Unaudited |
| Proxy | proxy | base | 3 deployments: base [`0x15c8cb...25eee3`](./contracts/base-8453/0x15c8cb4e336b1e478d155d813830129fb225eee3/); base `0x628a1d...30eb28`; base `0xf455b3...354eea` | ⚠️ Unaudited |
| WETH9 | token | base | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WXTZ | unknown | base | [`0xc9b53a...7a3eab`](./contracts/base-8453/0xc9b53ab2679f573e480d01e0f49e2b5cfb7a3eab/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (283)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x66672de0d193c5e988d40f6b9d948c2dc811c865) | proxy | base | `0xc032b6...3609de` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x000cba...d3097f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x02bd5d...38ccc6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x02bdbd...d093df` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x03c731...c372a5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x05cb62...9a9ac3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x089127...aa0635` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x08faef...dc31b0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x09db7f...29b493` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0d9965...908bb4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0db171...dde234` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0fb2e1...0e1047` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x0fd413...251187` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x10b31b...5c8ce3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x10d00c...df4d99` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x11453e...8f13c3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x118c37...bbfd01` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x13784d...a6dc8e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1418c7...543f36` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1535f4...f44b4e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x15c24e...522bef` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x15dc74...2067c7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x15e998...96a7d0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x163662...3a649f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x166495...2cb544` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x17eebc...617ef3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1819b5...7144c5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x194443...d879e7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1a2d41...3e26f8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1a582b...aca20a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1ac27a...b144f6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x1f1417...4fd9f4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x202bf0...0a0324` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x205b2e...93e24d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x226e00...f2025a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x251b17...af478a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x25c48b...1a8b8c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x25ce9e...8b7103` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x25da93...335684` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2626e0...d88bc5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x276037...8531a6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x29f8e5...01e298` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2a7088...4e1dc7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2aa9a7...d823e6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2b0071...c14072` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2b3cf6...cc05bd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2d274a...6ce412` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2e0194...f9281c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x303d65...62b048` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x310f2b...6f2812` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x317bfc...bd8067` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x31b22f...de71c0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x323b25...49f1ed` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x326bb6...96aba2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x34784e...b4bf75` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x34de25...31e9d4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3592fa...b77706` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3619c2...b271a4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x369aee...1e5e6e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3901fc...d69992` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x397db7...2da1ea` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x39c31a...22051b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3a370b...cb90bd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3b6fe3...620632` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3be143...7b7298` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3d444c...598fad` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x3e5b49...049318` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x44951e...8fefb4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x456be9...0233d8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x464a9c...1d3735` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4667be...af45cb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x46ca45...d35d25` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x475e3b...47d2af` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x47b400...fb2114` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x48197d...506d8e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x481e92...1c4b60` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4a3463...8e4287` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4a8c48...7d1a59` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4ba6e0...9e0558` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4c3b14...ea2228` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4f4f57...e0e162` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4f79d3...32a8a6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4fb0e8...698fbb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4ff526...730ef6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x51a9a5...a42681` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x53936e...1ad56e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x549945...8c9333` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x553038...e3286b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5598f4...8c0f1d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x559c82...7f0b13` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x59c91f...14060d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5b6f60...9afeef` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5c28a1...ec87f1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5c4a43...de3587` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5da213...73595d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x5fe223...140248` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x603180...d5c780` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x61d357...41f5b6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x621cb3...271803` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x631f1a...f04a19` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x658724...f1dfa5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x65c388...852fbb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x65dbb1...0b2cbf` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x66672d...11c865` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x66a11a...fc2458` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x66dc89...6c4f23` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x674fab...a820d8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x677cc7...20c6ba` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6803bd...eb8f24` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x68772a...8c3bf4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6891f8...4e9c2f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x691abc...f82a33` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x69ae79...1b9451` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6c690f...fcd629` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6d5c1e...a76a5f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6d5fcd...b41094` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6f94f0...ce7efe` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x6fae4b...ff30d6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x729022...771f97` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x73def1...05fe72` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x74076e...0449ed` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x75ea55...eb768f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x760a8f...e7b50c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7704d6...48c88c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x778f6d...fffd3f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7827b9...4210ad` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x790354...d90915` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x794c98...3d0066` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7af2a4...9c683e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7b3d93...072bfb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7b81b2...b5fcf4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7cec50...20df0a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7db245...0d0474` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x7f7892...98bc2f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x804748...4e81ed` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x80e7c3...27eac1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x81350d...b014fe` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x81c6a8...61aea1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x84a77a...094080` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8534b8...9e762e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x87fe8c...5f6e6a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x882ff3...befe4b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x89e85c...078b7f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8a1861...60234f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8c2c95...ca7134` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8d8cfd...8a2aad` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8dbb25...68b81a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8e3cf0...3c6314` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8ec31c...fcc824` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8ef940...a24dea` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x8fb47c...2cf94c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9100fe...f6f511` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x91c826...e7eb63` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x943c53...1293b1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x95b928...119532` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x963236...b93f2b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x968be9...c325ad` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x96ec29...7c6cc7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x97c2ba...6b5686` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x985a7d...85ae77` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x988142...30c27c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x98a8b2...4cacc5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x98c647...a1cae9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9bbec1...0cf986` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9ca288...49e1d7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9d092c...febd6b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9d5728...61242a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9d877a...a719d9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9dd25d...ac7215` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9eb2e4...f06ecb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9ef68c...6eac60` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9f0e9b...5c6ddd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x9fb2d4...728237` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa096ce...6a6ca9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa0bc6f...a98b63` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa16b18...a411cb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa292ba...46f4c5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa36a43...83c1ff` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa40a74...2f8565` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa4af2f...21b3b9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa5dda8...9b4e31` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa5f333...1bf18c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa6496e...e353e8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa6a739...7cb611` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa6f027...07ff99` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa73d88...717569` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa79e18...846e2a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa7dad6...5ada65` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xa92056...5a0afd` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xaa0d35...41cddb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xab8bb6...6892a2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xab9e2a...85a625` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xabf45d...ac7b0e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xac5687...025164` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xae4f5d...fa1eed` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb0035f...7bf285` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb0470f...3d64ea` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb47855...19b7f2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb48716...fbd7c9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb4a221...e8cd71` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb4cb99...07b7bc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb4ddc2...1f5c0d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb56fea...2a0ad7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb5de7d...16a606` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb663ba...293aaa` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb6abe9...cdbcd9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb6fedc...0a4ad9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb71234...081370` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb85fc6...cebdb1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xb975f7...204038` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbbb172...ca7505` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbe5df4...9e06e9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbf8179...2d74bc` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xbff334...e01cbb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc00a57...002e8b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc065f1...714c43` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc18183...d7281d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc1b246...e97f25` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc1f475...15f791` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc4a302...83fcf8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc561ef...5f79d1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc7264d...a9eea4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc76ae4...b64fed` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc81de6...b45aef` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xc9f137...122bb1` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xca9b0b...202439` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcad1f3...6a747e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcddaad...5435b2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xce8f77...118e2a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xcf585d...9263d5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd0acad...2f3923` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd269f5...df7c39` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd48a8f...437adb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd6b1cd...8d801a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xd95431...34e625` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xda3b9a...6db8df` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdb3be5...06a69e` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdb6e51...f0d370` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdbdfbc...1a5577` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdcdd4c...9689f2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xdcee99...61e87c` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xde3bdf...757349` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe0343e...fb5b0d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe0d120...311e80` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe12848...fc9ac7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe39d50...152ae5` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe3c7ec...e0699d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe4d975...8d1417` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe5e4a5...18fe3a` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe6246a...452a3d` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe62625...1f6e03` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe6709d...348ab9` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe6a517...f0b472` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe6a991...9433b4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe76cd5...2ccbea` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe92b5e...e69f7b` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xe9fad4...4de69f` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xeae9fc...852919` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xee5922...aa07ef` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xefa654...3b4783` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf004c9...ee0cfb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf0b205...9d1f80` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf0d4fd...cb84f3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf0d5a9...9988cb` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf17926...79c3f8` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf2a65f...b924db` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf2d933...d7d536` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf468fe...526de6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf52d1b...996a83` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xf738af...69daa3` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfa14e7...84fb14` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfa3d38...32cfb4` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfa6630...aec0e7` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfc32f8...f08cbf` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfcbd51...10c7ed` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfd3dc4...6ab221` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfdb4f0...a25467` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfdfb1c...bbc1b2` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xfe59c8...1069f6` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xff07d7...b5b540` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xff0f59...b020f0` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xff2d53...078e03` | ❓ Unverified |
| UnnamedContract | unknown | base | `0xff515c...223222` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x15c8cb...25eee3`](./contracts/base-8453/0x15c8cb4e336b1e478d155d813830129fb225eee3/) | Proxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 278 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
