# Agentic Audit Brief: Hanji Protocol

## Project Overview

- Project: Hanji Protocol (`hanji-protocol`)
- Website: [https://hanji.io](https://hanji.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.178Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: base
- Contract surface: 454 unique implementations (454 raw deployments)
- DeFi Llama TVL: $961,006.45
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 7 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 8 common project-authored base contract(s) (upgradeabilityproxy, proxy, oapp). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 455; live-surface contracts included: 454 (5 live, 449 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 5 of 454 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 449
- Unique implementations: 454
- Raw deployments: 454
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 2 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FiatTokenV2_1 | token | base | n/a | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | n/a | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |
| LBTC | unknown | base | n/a | [`0xecac9c...5c11c1`](./contracts/base-8453/0xecac9c5f704e954931349da37f60e39f515c11c1/) | ⚠️ Unaudited |
| WETH9 | token | base | n/a | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | ⚠️ Unaudited |
| WXTZ | unknown | base | n/a | [`0xc9b53a...7a3eab`](./contracts/base-8453/0xc9b53ab2679f573e480d01e0f49e2b5cfb7a3eab/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (449)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x000cba...d3097f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x002498...7bb675` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x017a81...1d44bd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x02bd5d...38ccc6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x02bdbd...d093df` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x03c731...c372a5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x05cb62...9a9ac3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x067c74...b62dca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x068499...2b42af` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x07bc9d...cf9b6a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x07efb8...129ab5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x089127...aa0635` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x08faef...dc31b0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x09db7f...29b493` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0bd330...da8162` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0d9965...908bb4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0db171...dde234` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0f100b...52812f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0f5c2b...204868` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0fb2e1...0e1047` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x0fd413...251187` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x10b31b...5c8ce3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x10d00c...df4d99` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x11453e...8f13c3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x118c37...bbfd01` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x123bd7...7702f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x13412c...0286d6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x13784d...a6dc8e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1418c7...543f36` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1535f4...f44b4e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1562a5...c2e6cb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x15c24e...522bef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x15dc74...2067c7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x15df7f...7b6bbb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x15e998...96a7d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x163662...3a649f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x166495...2cb544` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x179fc4...859856` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x17ddd0...c348fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x17eebc...617ef3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1819b5...7144c5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x194443...d879e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1a2d41...3e26f8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1a582b...aca20a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1ac27a...b144f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1adcac...c6e395` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1bcf61...418c6c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x1f1417...4fd9f4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x202bf0...0a0324` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x205b2e...93e24d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x20663c...dd6b2b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2090d3...2fc8cb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x22277d...0a3010` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x226e00...f2025a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x231ef2...ef88cf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x23a6ed...fcb467` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2508f6...43825e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x251b17...af478a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25c48b...1a8b8c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25ce9e...8b7103` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25da93...335684` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25e048...a6b9e4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x25f822...bf4600` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2626e0...d88bc5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x265aa4...1b1171` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x276037...8531a6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x284452...026005` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x29f8e5...01e298` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2a7088...4e1dc7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2aa9a7...d823e6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2b0071...c14072` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2b0a4f...5f6852` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2b3cf6...cc05bd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2c40a3...9891e0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2d2372...63551d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2d274a...6ce412` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2e0194...f9281c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2fe956...0c2832` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x303d65...62b048` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x310f2b...6f2812` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3168bf...f3bf65` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x317bfc...bd8067` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x31b22f...de71c0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x323b25...49f1ed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x326bb6...96aba2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x34784e...b4bf75` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x34de25...31e9d4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3510ef...003aa4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3592fa...b77706` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3619c2...b271a4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x365fb6...9c9c3f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x369aee...1e5e6e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x370465...d8a2e5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x387970...0a07f5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3901fc...d69992` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x397db7...2da1ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x399899...8d8e25` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x39c31a...22051b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3a370b...cb90bd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3b2521...c52686` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3b6fe3...620632` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3bc223...1ad6ca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3be143...7b7298` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d0c20...6755c0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d444c...598fad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3d6653...19e750` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3e516c...485f5b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3e5b49...049318` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x3fe3e4...8eddd2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x41e2ab...8a55dc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x42b48a...6e73b0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x43ad1e...97f9ac` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x442fad...5d800a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x443a32...6553db` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x44951e...8fefb4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x45616a...122d6b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x456be9...0233d8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x462d46...da17bd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x464a9c...1d3735` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4667be...af45cb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x46ca45...d35d25` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4716f2...d30424` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x475e3b...47d2af` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x479777...cd4bf9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x47b400...fb2114` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x48197d...506d8e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x481e92...1c4b60` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4a1062...afc844` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4a3463...8e4287` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4a8c48...7d1a59` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4ae466...f38077` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4b5e72...b14a53` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4ba330...7c2476` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4ba6e0...9e0558` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4bc20b...659e91` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4c3b14...ea2228` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4f4f57...e0e162` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4f79d3...32a8a6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4fb0e8...698fbb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x4ff526...730ef6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x506897...105aee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x51a9a5...a42681` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x53936e...1ad56e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5469a9...f32178` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x549945...8c9333` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x553038...e3286b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5598f4...8c0f1d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x559c82...7f0b13` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x568c32...8c5c61` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x56bcfb...8cb15f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x57c01b...b7d2b2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x57dafd...1b0cbe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x59c91f...14060d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5a1132...1e1010` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5b6f60...9afeef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5bcb5b...632174` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c0894...303c24` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c28a1...ec87f1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c3ddd...ad5a96` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5c4a43...de3587` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5d5c6e...28b85d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5da213...73595d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5fe223...140248` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x5ffe36...e8ec60` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x603180...d5c780` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x61d357...41f5b6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x621cb3...271803` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x628da4...235553` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x631f1a...f04a19` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x641811...7a20a2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x64cfb7...6a4c07` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x658724...f1dfa5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6590d3...649049` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x65c388...852fbb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x65dbb1...0b2cbf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x66672d...11c865` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x66a11a...fc2458` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x66dc89...6c4f23` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x674fab...a820d8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x677cc7...20c6ba` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x67a53e...b4faf6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6803bd...eb8f24` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x68772a...8c3bf4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6891f8...4e9c2f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x68e64d...2c2698` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x691abc...f82a33` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x69ae79...1b9451` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x69bb3c...1f5974` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6a9217...3c9a88` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6c3fd0...e11cc8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6c690f...fcd629` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6d5c1e...a76a5f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6d5fcd...b41094` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6f94f0...ce7efe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6fae4b...ff30d6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x701951...c6e3b1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x711230...1ee208` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x718e3a...5d7c14` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x726d3c...f704a6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x729022...771f97` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x73def1...05fe72` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x74076e...0449ed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x751ec8...2c1a4b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7579ee...a15714` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x75ea55...eb768f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x760a8f...e7b50c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7704d6...48c88c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x778f6d...fffd3f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7827b9...4210ad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x790354...d90915` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x794c98...3d0066` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7af2a4...9c683e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7b3d93...072bfb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7b81b2...b5fcf4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7bded2...866050` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7cec50...20df0a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7db245...0d0474` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7f7892...98bc2f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x804748...4e81ed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x80e7c3...27eac1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81350d...b014fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x81c6a8...61aea1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x82cbe7...47a1d4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x84a77a...094080` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8534b8...9e762e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8598a8...25d874` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x85c65e...98a7c7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x86a865...9c7ebf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x870924...c24017` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x87dbae...3fc99e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x87fe8c...5f6e6a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x882ff3...befe4b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8968b6...f579cc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x89e85c...078b7f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8a1861...60234f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8bc3f0...fc7047` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8c2c95...ca7134` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8d8cfd...8a2aad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8dbb25...68b81a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8e3cf0...3c6314` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ec31c...fcc824` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ee7ea...f48671` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8ef940...a24dea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x8fb47c...2cf94c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9100fe...f6f511` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x91c826...e7eb63` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x91cbc5...7f314d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x943c53...1293b1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x94516c...40875f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x947c13...089267` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x948b27...b0ac05` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x95b928...119532` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x963236...b93f2b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x968be9...c325ad` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x96c28a...e91780` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x96ec29...7c6cc7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x974956...0ee27d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x97c2ba...6b5686` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x985a7d...85ae77` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x988142...30c27c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x98a8b2...4cacc5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x98c647...a1cae9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x99af61...a63574` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9b6159...0e1e79` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9bbec1...0cf986` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9ca288...49e1d7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9d092c...febd6b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9d5728...61242a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9d877a...a719d9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9dd25d...ac7215` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9e0758...35e90d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9e6678...78a3ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9eb2e4...f06ecb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9ef68c...6eac60` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9f0e9b...5c6ddd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x9fb2d4...728237` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa096ce...6a6ca9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa0bc6f...a98b63` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa16b18...a411cb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa1a21d...2a8791` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa1ea02...314a71` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa292ba...46f4c5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa2ef90...3157ef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa33372...c06f84` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa36a43...83c1ff` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa40a74...2f8565` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa43373...baa614` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa4af2f...21b3b9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa526a1...b27fec` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa576cd...59cc56` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa5dda8...9b4e31` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa5f333...1bf18c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa6496e...e353e8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa6a739...7cb611` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa6f027...07ff99` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa73d88...717569` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa79e18...846e2a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa7dad6...5ada65` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa92056...5a0afd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xa938f9...6c88d0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaa0d35...41cddb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xab8bb6...6892a2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xab9e2a...85a625` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaba352...64ce36` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xaba3ca...f6e187` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xabf45d...ac7b0e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac5687...025164` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xac6bb3...d814ce` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xae4f5d...fa1eed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb0035f...7bf285` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb0470f...3d64ea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb1b59c...417f86` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb22c64...659ba5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb47855...19b7f2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb48716...fbd7c9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb4a221...e8cd71` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb4cb99...07b7bc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb4ddc2...1f5c0d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb56fea...2a0ad7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb5de7d...16a606` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb663ba...293aaa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb6abe9...cdbcd9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb6fedc...0a4ad9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb71234...081370` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb74c34...af29e2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb825f7...748e00` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb85fc6...cebdb1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xb975f7...204038` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xba0752...4baf8c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbb2a8d...9d4c32` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbbb172...ca7505` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbc3d0f...42defe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbd4101...5a23c4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbe5df4...9e06e9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbebcb8...c4cd3a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbf8179...2d74bc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbf9c04...04a104` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xbff334...e01cbb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc00a57...002e8b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc065f1...714c43` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc12b16...a6b614` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc14156...a47927` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc18183...d7281d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc1b246...e97f25` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc1f475...15f791` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc2c201...41c34a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc2e4d9...3b0e8e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc2f6d5...c5c42f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc313cf...60933a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc39cff...d9623b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc48e4b...8e2ea5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc4a302...83fcf8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc561ef...5f79d1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc5728b...2a1cf3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc64b13...a43224` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc7264d...a9eea4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc76ae4...b64fed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc81de6...b45aef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc9f137...122bb1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xca9b0b...202439` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcad1f3...6a747e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcddaad...5435b2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcdf3e2...cd4eb9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xce8f77...118e2a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcf585d...9263d5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xcfac4f...30353c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd0acad...2f3923` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd269f5...df7c39` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd4212c...4eb98b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd466a3...1a7725` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd48a8f...437adb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd574ca...037ab1` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd678b7...4d30f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd6b1cd...8d801a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd75968...bb47fe` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xd95431...34e625` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xda3b9a...6db8df` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xda62f7...629bee` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdb3be5...06a69e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdb6e51...f0d370` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdbdfbc...1a5577` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdcdd4c...9689f2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdcee99...61e87c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdd3b95...b5bf9d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xde3bdf...757349` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdfa0c1...acf339` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xdfa1d5...1e78f8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe0343e...fb5b0d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe0b29d...8e3e9e` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe0d120...311e80` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe12848...fc9ac7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe1b7ee...d27083` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe24d2b...b61ef8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe39d50...152ae5` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe3c7ec...e0699d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe4d975...8d1417` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe5e4a5...18fe3a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe6246a...452a3d` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe62625...1f6e03` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe6709d...348ab9` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe6a517...f0b472` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe6a991...9433b4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe76cd5...2ccbea` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe92b5e...e69f7b` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe92de9...7a06e8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xe9fad4...4de69f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeaa9fa...faa9f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeae9fc...852919` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xeb4894...323ffa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xee5922...aa07ef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xefa654...3b4783` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf0049e...8a7bbb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf004c9...ee0cfb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf016dc...94054a` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf0b205...9d1f80` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf0d4fd...cb84f3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf0d5a9...9988cb` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf17926...79c3f8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf2a65f...b924db` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf2d933...d7d536` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf3fbbf...54a7c8` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf461af...d7e66c` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf468fe...526de6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf52d1b...996a83` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf566fe...4d654f` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf56900...95bf37` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf70fa9...b109fa` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf717ec...f29552` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf738af...69daa3` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf75bb3...c4e5a0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf83e5f...db0251` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xf8fd3d...2985ef` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfa14e7...84fb14` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfa3d38...32cfb4` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfa6630...aec0e7` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfbbda2...c455ca` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfc32f8...f08cbf` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfcbd51...10c7ed` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfd3dc4...6ab221` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfdb4f0...a25467` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfdfb1c...bbc1b2` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfe59c8...1069f6` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xfe91a8...fd6206` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xff07d7...b5b540` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xff0f59...b020f0` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xff2d53...078e03` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xff515c...223222` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xffade1...d8b350` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xffb136...0655be` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Hanji Protocol Security Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Hanji/OnchainCLOB/Hanji%20Protocol%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [Hanji Liquidity Vault Security Audit Report.pdf](https://github.com/mixbytes/audits_public/blob/master/Hanji/Liquidity%20Vault/Hanji%20Liquidity%20Vault%20Security%20Audit%20Report.pdf) | yAudit | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0xcbb7c0...ed33bf`](./contracts/base-8453/0xcbb7c0000ab88b473b1f5afd9ef808440eed33bf/) | FiatTokenV2_1 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | FiatTokenV2_2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xecac9c...5c11c1`](./contracts/base-8453/0xecac9c5f704e954931349da37f60e39f515c11c1/) | LBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x420000...000006`](./contracts/base-8453/0x4200000000000000000000000000000000000006/) | WETH9 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xc9b53a...7a3eab`](./contracts/base-8453/0xc9b53ab2679f573e480d01e0f49e2b5cfb7a3eab/) | WXTZ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 449 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11585] Hanji Protocol Security Audit Report.pdf
- [11586] Hanji Liquidity Vault Security Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
