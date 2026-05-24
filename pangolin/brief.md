# Agentic Audit Brief: Pangolin

⚠️ Lifecycle status: DEAD - TVL changed 12.8% over 90 days

## Project Overview

- Project: Pangolin (`pangolin`)
- Website: [https://pangolin.exchange](https://pangolin.exchange)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-05-24T02:38:11.871Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: avalanche
- Contract surface: 182 unique implementations (228 raw deployments)
- DeFi Llama TVL: $3,662,481.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Pangolin is a decentralized exchange (DEX) on Avalanche that enables users to swap tokens, provide liquidity, and earn rewards. It uses an automated market maker (AMM) model with its own governance token (PNG) and includes staking and yield farming features.

### Architecture

The DEX Core generates fees that are collected by the FeeCollector and directed to the CommunityTreasury. Governance contracts control treasury spending and protocol parameters, while Staking and Rewards distribute PNG tokens to incentivize liquidity provision.

## Audit Coverage Summary

- Verified implementations audited: 15/28 (53.6%)
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 154
- Unique implementations: 182
- Raw deployments: 228
- Audits discovered: 13
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Staleness: 0 fresh, 1 aging, 12 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of n/a represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 13 | 46.4% | 2022-04 |
| Omniscia | Tier 2 | 1 | 3.6% | 2022-08 |
| Paladin | Tier 2 | 1 | 3.6% | 2025-04 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Airdrop | operational_periphery | avalanche | 2 deployments: avalanche [`0x0c58c2...3902d9`](./contracts/avalanche-43114/0x0c58c2041da4cfccf5818bbe3b66dbc23b3902d9/); avalanche `0xcebbe6...4e6c2f` | ✅ Audited |
| CommunityTreasury | operational_periphery | avalanche | [`0x650f58...a72358`](./contracts/avalanche-43114/0x650f5865541f6d68bddfe977db933c293ea72358/) | ✅ Audited |
| FeeCollector | unknown | avalanche | [`0xac61fd...6f43a7`](./contracts/avalanche-43114/0xac61fd938e762357eee739eb30938783366f43a7/) | ✅ Audited |
| GovernorAlpha | governance | avalanche | [`0xb0ff2b...f43ee1`](./contracts/avalanche-43114/0xb0ff2b1047d9e8d294c2ed798fae3fa817f43ee1/) | ✅ Audited |
| LiquidityPoolManagerV2 | core_logic | avalanche | [`0x912b5d...397994`](./contracts/avalanche-43114/0x912b5d41656048ef681efa9d32488a3ffe397994/) | ✅ Audited |
| MiniChefV2 | unknown | avalanche | [`0x1f806f...98e928`](./contracts/avalanche-43114/0x1f806f7c8ded893fd3cae279191ad7aa3798e928/) | ✅ Audited |
| MiniChefV2Zapper | adapter | avalanche | [`0x61d9c0...ae0ecf`](./contracts/avalanche-43114/0x61d9c05c0b35c5100863daedd92ef0a8b7ae0ecf/) | ✅ Audited |
| PangolinBridgeMigrationRouter | operational_periphery | avalanche | [`0x4b23aa...f7483c`](./contracts/avalanche-43114/0x4b23aa72a1214d0e4fd3f2c8da7c6ba660f7483c/) | ✅ Audited |
| PangolinRouterSupportingFees | adapter | avalanche | [`0xefd958...41007f`](./contracts/avalanche-43114/0xefd958c7c68b7e6a88300e039cae275ca741007f/) | ✅ Audited |
| PangolinV3Pool | core_logic | avalanche | 2 deployments: avalanche [`0x6dd86c...c2a2d4`](./contracts/avalanche-43114/0x6dd86cfbd864647dc10703342dd5ea8643c2a2d4/); avalanche `0xb1c039...6c0872` | ✅ Audited |
| Png | unknown | avalanche | [`0x60781c...aca982`](./contracts/avalanche-43114/0x60781c2586d68229fde47564546784ab3faca982/) | ✅ Audited |
| RewarderViaMultiplier | unknown | avalanche | 35 deployments: avalanche [`0x09a057...626e25`](./contracts/avalanche-43114/0x09a057118b5ee06ae71a0b6ff51c0c9a72626e25/); avalanche `0x13b58a...fd0b65`; avalanche `0x13e349...73c738`; avalanche `0x16ca58...e03d87`; avalanche `0x26aaab...b0a34b`; avalanche `0x309f3d...ab1d8c`; avalanche `0x344c5a...8ea0b8`; avalanche `0x34595b...7b2158`; avalanche `0x39ccaf...0a280b`; avalanche `0x4b94cc...6eaa78`; avalanche `0x4e11b9...9aa3d8`; avalanche `0x4f7301...996775`; avalanche `0x510bb2...2677f9`; avalanche `0x621c32...c626ed`; avalanche `0x68ed58...bfa4d5`; avalanche `0x6b5f9c...9e08f4`; avalanche `0x6e2b03...febf77`; avalanche `0x6e7eb7...04365b`; avalanche `0x7a5962...56d791`; avalanche `0x87bc67...644e59`; avalanche `0x8a0a93...00e6a0`; avalanche `0x8fc464...9fee38`; avalanche `0x95850d...cfc5de`; avalanche `0x99b9af...da1867`; avalanche `0x9e8857...5d269d`; avalanche `0xb0f89f...d134fa`; avalanche `0xb3e913...fae25f`; avalanche `0xb9d42d...d3d632`; avalanche `0xbe0935...4c3cd8`; avalanche `0xce6726...fa185c`; avalanche `0xdf6e2c...f2d36d`; avalanche `0xe13eec...c6d4cf`; avalanche `0xea4ee2...4060a0`; avalanche `0xeaa3ad...5cdd18`; avalanche `0xeb0370...8e6281` | ✅ Audited |
| StakingRewards | unknown | avalanche | [`0x88afda...a0135b`](./contracts/avalanche-43114/0x88afdae1a9f58da3e68584421937e5f564a0135b/) | ✅ Audited |
| Timelock | governance | avalanche | 2 deployments: avalanche [`0x81a63b...25dc4a`](./contracts/avalanche-43114/0x81a63b858a60c9305672480ceb17ee764e25dc4a/); avalanche `0xeb5c91...4b1ff8` | ✅ Audited |
| TreasuryVester | operational_periphery | avalanche | [`0x6747ac...12acee`](./contracts/avalanche-43114/0x6747ac215daffee03a42f49febb6ab448e12acee/) | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ForwarderLogic | unknown | avalanche | [`0xca3fc8...cb3642`](./contracts/avalanche-43114/0xca3fc8e01ffb90a7fb35deebf5b77d6fe8cb3642/) | ⚠️ Unaudited |
| Governance | unknown | avalanche | [`0xfdccf6...93f8c0`](./contracts/avalanche-43114/0xfdccf6d49a29f435e509dffaafdecb0add93f8c0/) | ⚠️ Unaudited |
| Multicall | periphery | avalanche | [`0x4a48fc...ef398d`](./contracts/avalanche-43114/0x4a48fc676c872308aff67313d13b5ce91fef398d/) | ⚠️ Unaudited |
| MultiSigWalletWithDailyLimit | governance | avalanche | 4 deployments: avalanche [`0x6cdd4b...379185`](./contracts/avalanche-43114/0x6cdd4b54562019902c03e5be4bb4c5800a379185/); avalanche `0x749115...d10a1f`; avalanche `0x8d2e50...bf51f2`; avalanche `0xa4cb6e...5cc1e6` | ⚠️ Unaudited |
| PangolinFactory | registry | avalanche | 2 deployments: avalanche [`0xcdeea3...959737`](./contracts/avalanche-43114/0xcdeea31e087f0cf463043d246a45b87f4e959737/); avalanche `0xefa94d...e9fd88` | ⚠️ Unaudited |
| PangolinRouter | adapter | avalanche | [`0xe54ca8...c89106`](./contracts/avalanche-43114/0xe54ca86531e17ef3616d22ca28b0d458b6c89106/) | ⚠️ Unaudited |
| PangolinV3Rewarder | unknown | avalanche | 3 deployments: avalanche [`0x4e8b94...bd0427`](./contracts/avalanche-43114/0x4e8b940c5ce75945f75d892524c88985b2bd0427/); avalanche `0x4fdf9a...7ba14a`; avalanche `0xba19af...ac2f1c` | ⚠️ Unaudited |
| PGLCollector | unknown | avalanche | 2 deployments: avalanche [`0x20456f...6e4e66`](./contracts/avalanche-43114/0x20456f3c38fbe512d1bde4b5412dfd77216e4e66/); avalanche `0xdfb836...296b28` | ⚠️ Unaudited |
| Redeemer | unknown | avalanche | [`0x64fee0...63f78a`](./contracts/avalanche-43114/0x64fee0d59d6b9744847e3f39b64ba1497763f78a/) | ⚠️ Unaudited |
| Router | adapter | avalanche | [`0x757121...a6baa2`](./contracts/avalanche-43114/0x757121c9a8259c4d6b6956c283355b2902a6baa2/) | ⚠️ Unaudited |
| Splitter | operational_periphery | avalanche | [`0x53c3d8...9f91f4`](./contracts/avalanche-43114/0x53c3d85106e966e81a43cc80657414e88d9f91f4/) | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | avalanche | 2 deployments: avalanche [`0x0693ea...83317f`](./contracts/avalanche-43114/0x0693ea08e6d7ab2f7976c09dd1a3ebdfa883317f/); avalanche `0x7bca92...c52b02` | ⚠️ Unaudited |
| WAVAX | unknown | avalanche | 2 deployments: avalanche [`0x7fc6d4...1d51d4`](./contracts/avalanche-43114/0x7fc6d48e6e8e8b9505c171325539c651bf1d51d4/); avalanche `0xb31f66...fd66c7` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (154)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | `0x034e7f...1f9b57` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x04eb48...bdbc1c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x051911...219476` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x069970...842a25` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0cb6ea...80790c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0d065c...eb43c6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0df7c5...e9587a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0e7c2e...b21126` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0efbfe...45742e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x0fb541...27912e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x100b96...17cf98` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x10d3fb...cbf013` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1128f2...8b8256` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x11e9e5...6d51c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1242e0...c1f194` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x134451...8ad953` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x148aa9...07702b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x19d024...0567e7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1b1b3f...fda672` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1defb0...c3a61b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x231b55...3d3954` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x24d89c...bfd852` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x268c3b...c2de1a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x27ecb0...e41ab8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2824b0...6d0c0a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x28f044...0b32b1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2dc19e...4ae62c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2e303b...c74e3d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2e9433...a96efa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x2f62fb...7680e3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x358dab...b81eef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x383615...4a024c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x39b304...811ced` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3b5c65...f9e73f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3c4a7b...132599` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3cbcc8...a39b89` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3cc533...d46587` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3ccc87...4d7f3b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x3d9b0f...97340d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x408e9b...e14cd8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x415ef3...d3b2ee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x43d5fa...84f7b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4443cb...00eea5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x44771c...5cd65f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x44edf5...698710` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x450500...422603` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x46308b...2cad8a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x49b4a0...de6759` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4b3d00...533c28` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4b597e...01f28f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x4b6248...b719fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5047c4...1c5aa3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x517312...1cac63` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x52ee57...81d89c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x544cd7...16cfa8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5485a0...22547f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5789f5...67c0e0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x588922...9d3ebf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5d8265...8aa587` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5dfe6d...44cac1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5e35df...63a93c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x5f9bf3...c9cdb3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x612856...a7b6f6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x61e0e3...f13d2b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x62b187...c77706` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6410f5...51da61` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6948ac...a5ddb0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6bfdcd...62c9d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6c0a7e...ec665a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6e53c8...51e381` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x71fe4e...1dd265` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x73cd05...ddf17b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x74b863...900927` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7528b8...a7e315` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x760e25...b1c585` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7b72ba...53727e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7d115c...0694a2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7e8040...97baec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x7e9985...e9e7ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x80c4cc...98eab4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x81b2b1...5ef0d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x828963...542776` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x844878...9ad6e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x89357b...82c8b5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x896e09...615b8f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8ae5d4...d2d0f1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8c34cb...875850` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x8f2846...4d39d9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x900e16...3bc62f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x914556...9c65aa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x91aa62...2e8bc8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x92f6f6...bed970` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x972664...6f2223` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x97b99b...6e633c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9cf0ad...d9fc51` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa05c4d...129d5c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa159e6...dc30de` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa1d3cd...f9fc6c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa21fb9...ddaf19` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa286da...93edbf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa47a05...cf0ca9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa54fdc...403880` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa6a5ec...1631a9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa6d2f4...6f007a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa6d6eb...2dd2f9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa73b18...9826db` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa7625c...781828` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa86522...983822` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xa9847d...ada2f8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xabde60...fcc214` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xabf4fd...4e17c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xae9d04...664d9f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xaf48b2...e3c678` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb0a532...661703` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb213bf...f1ab63` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb3dba8...84fca9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb444ac...e69ae5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb5191f...64a6af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb6142d...4ca923` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb6b208...376d32` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb6f012...fb3c4f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb87a8a...d505aa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb8eabc...24689e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb93900...df5dc5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbbcb4c...006b70` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbc9bb2...4f9a59` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbd60c5...05bbd1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbdffe4...ce7a35` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xbf32df...34d28c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc155b1...bc45e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc44ca8...c186ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc74e23...654adf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc880ac...dbe04c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xc90dfa...cbb8a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd09b07...0c1755` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd2517d...50058e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd2f89c...e59fa0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xd56b82...d85fb4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdcd29f...fd5ff5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xdf3723...544273` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe338d3...aedf48` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe4a010...d377d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe54e3b...951ab7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe5614c...ebf60c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe5d35e...88260b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xe66ddf...d408e7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf3a4d0...e703ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf40937...f06a7f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xf940bd...73f71c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfa05ef...6ea7fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfa9a92...668bfc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfcb81f...42fb27` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfdd994...3159b6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xfe04c4...10eeb1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [<div align="center" data-full-width="false"><figure><img src="https://paladinsec.co/pld/assets/paladin.svg" alt="" width="375"><figcaption><p><em>Pangolin V3 is Audited by Paladin</em></p></figcaption></figure> <figure><img src="/files/lKszGOVYSa6uOUjS9hYB" alt="" width="375"><figcaption><p><a href="">https://paladinsec.co/projects/pangolin/</a></p></figcaption></figure></div>](https://paladinsec.co/projects/pangolin) | Paladin | Audit | 2025-04 | aging | Direct | contract_name | 2 | high |
| [Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2021-08 | stale | Direct | contract_name | 1 | high |
| [Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf) | Omniscia | Audit | 2022-08 | stale | Direct | contract_name | 1 | high |
| [Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-03 | stale | Direct | contract_name | 4 | high |
| [Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Draft.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Draft.pdf) | Halborn | Audit | 2021-12 | stale | Direct | contract_name | 1 | high |
| [Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2021-12 | stale | Direct | contract_name | 1 | high |
| [Pangolin_Fee_Collector_v2_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_v2_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-04 | stale | Direct | contract_name | 1 | high |
| [Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-02 | stale | Direct | contract_name | 1 | high |
| [Pangolin_RewarderViaMultiplier_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_RewarderViaMultiplier_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-01 | stale | Direct | contract_name | 35 | high |
| [Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2021-10 | stale | Direct | contract_name | 11 | high |
| [Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf) | WatchPug | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf) | WatchPug | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0xca3fc8...cb3642`](./contracts/avalanche-43114/0xca3fc8e01ffb90a7fb35deebf5b77d6fe8cb3642/) | ForwarderLogic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xfdccf6...93f8c0`](./contracts/avalanche-43114/0xfdccf6d49a29f435e509dffaafdecb0add93f8c0/) | Governance | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xcdeea3...959737`](./contracts/avalanche-43114/0xcdeea31e087f0cf463043d246a45b87f4e959737/) | PangolinFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe54ca8...c89106`](./contracts/avalanche-43114/0xe54ca86531e17ef3616d22ca28b0d458b6c89106/) | PangolinRouter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4e8b94...bd0427`](./contracts/avalanche-43114/0x4e8b940c5ce75945f75d892524c88985b2bd0427/) | PangolinV3Rewarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x20456f...6e4e66`](./contracts/avalanche-43114/0x20456f3c38fbe512d1bde4b5412dfd77216e4e66/) | PGLCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x64fee0...63f78a`](./contracts/avalanche-43114/0x64fee0d59d6b9744847e3f39b64ba1497763f78a/) | Redeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x757121...a6baa2`](./contracts/avalanche-43114/0x757121c9a8259c4d6b6956c283355b2902a6baa2/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x53c3d8...9f91f4`](./contracts/avalanche-43114/0x53c3d85106e966e81a43cc80657414e88d9f91f4/) | Splitter | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0693ea...83317f`](./contracts/avalanche-43114/0x0693ea08e6d7ab2f7976c09dd1a3ebdfa883317f/) | StakingRewardsV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 78 |
| upstream | 2 |
| standard_library | 2 |
| needs_review | 100 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=10
- Match method counts: extraction_exact=58

Zero-match audit list:

- [2691] Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [2700] Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf
- [2701] Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf

Fork inheritance lineage and inherited audits are included when available.
