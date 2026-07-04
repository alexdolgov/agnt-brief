# Agentic Audit Brief: Pangolin

## Project Overview

- Project: Pangolin (`pangolin`)
- Website: [https://pangolin.exchange](https://pangolin.exchange)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:42.076Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: avalanche
- Contract surface: 170 unique implementations (211 raw deployments)
- DeFi Llama TVL: $2,337,252.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 32 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 5 functional families. Contracts are linked by 2 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 223; live-surface contracts included: 211 (55 live, 156 unknown).
- Excluded by liveness: 12 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 8/15 (53.3%)
- Deployed-live implementations: 15 of 170 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/15
- Verified + Unaudited implementations: 7
- Verified by bytecode match: 0
- Unverified implementations: 155
- Unique implementations: 170
- Raw deployments: 211
- Audits discovered: 13 (13 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-04 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 12 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 3 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 5 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Halborn | Tier 2 | 6 | 40.0% | 2022-04 |
| Omniscia | Tier 2 | 1 | 6.7% | 2022-08 |
| Paladin | Tier 2 | 1 | 6.7% | 2025-04 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FeeCollector | unknown | avalanche | n/a | [`0xac61fd...6f43a7`](./contracts/avalanche-43114/0xac61fd938e762357eee739eb30938783366f43a7/) | ✅ Audited |
| GovernorAlpha | governance | avalanche | n/a | [`0xb0ff2b...f43ee1`](./contracts/avalanche-43114/0xb0ff2b1047d9e8d294c2ed798fae3fa817f43ee1/) | ✅ Audited |
| MiniChefV2 | unknown | avalanche | n/a | [`0x1f806f...98e928`](./contracts/avalanche-43114/0x1f806f7c8ded893fd3cae279191ad7aa3798e928/) | ✅ Audited |
| PangolinRouterSupportingFees | unknown | avalanche | n/a | [`0xefd958...41007f`](./contracts/avalanche-43114/0xefd958c7c68b7e6a88300e039cae275ca741007f/) | ✅ Audited |
| PangolinV3Pool | core_logic | avalanche | n/a | 5 deployments: avalanche [`0x11476e...0c3e20`](./contracts/avalanche-43114/0x11476e10eb79ddffa6f2585be526d2bd840c3e20/); avalanche `0x115040...b2f456`; avalanche `0x6dd86c...c2a2d4`; avalanche `0xb1c039...6c0872`; avalanche `0xfc2bb1...b2e722` | ✅ Audited |
| Png | unknown | avalanche | n/a | [`0x60781c...aca982`](./contracts/avalanche-43114/0x60781c2586d68229fde47564546784ab3faca982/) | ✅ Audited |
| RewarderViaMultiplier | unknown | avalanche | n/a | 34 deployments: avalanche [`0x13b58a...fd0b65`](./contracts/avalanche-43114/0x13b58aae6bc4196e7dc4315472fdfe9957fd0b65/); avalanche `0x13e349...73c738`; avalanche `0x16ca58...e03d87`; avalanche `0x26aaab...b0a34b`; avalanche `0x309f3d...ab1d8c`; avalanche `0x344c5a...8ea0b8`; avalanche `0x34595b...7b2158`; avalanche `0x39ccaf...0a280b`; avalanche `0x4b94cc...6eaa78`; avalanche `0x4e11b9...9aa3d8`; avalanche `0x4f7301...996775`; avalanche `0x510bb2...2677f9`; avalanche `0x621c32...c626ed`; avalanche `0x68ed58...bfa4d5`; avalanche `0x6b5f9c...9e08f4`; avalanche `0x6e2b03...febf77`; avalanche `0x6e7eb7...04365b`; avalanche `0x7a5962...56d791`; avalanche `0x87bc67...644e59`; avalanche `0x8a0a93...00e6a0`; avalanche `0x8fc464...9fee38`; avalanche `0x95850d...cfc5de`; avalanche `0x99b9af...da1867`; avalanche `0x9e8857...5d269d`; avalanche `0xb0f89f...d134fa`; avalanche `0xb3e913...fae25f`; avalanche `0xb9d42d...d3d632`; avalanche `0xbe0935...4c3cd8`; avalanche `0xce6726...fa185c`; avalanche `0xdf6e2c...f2d36d`; avalanche `0xe13eec...c6d4cf`; avalanche `0xea4ee2...4060a0`; avalanche `0xeaa3ad...5cdd18`; avalanche `0xeb0370...8e6281` | ✅ Audited |
| StakingRewards | unknown | avalanche | n/a | [`0x88afda...a0135b`](./contracts/avalanche-43114/0x88afdae1a9f58da3e68584421937e5f564a0135b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ForwarderLogic | unknown | avalanche | n/a | [`0xca3fc8...cb3642`](./contracts/avalanche-43114/0xca3fc8e01ffb90a7fb35deebf5b77d6fe8cb3642/) | ⚠️ Unaudited |
| PangolinFactory | registry | avalanche | n/a | [`0xefa94d...e9fd88`](./contracts/avalanche-43114/0xefa94de7a4656d787667c749f7e1223d71e9fd88/) | ⚠️ Unaudited |
| PangolinPair | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0e0100...3a9665`](./contracts/avalanche-43114/0x0e0100ab771e9288e0aa97e11557e6654c3a9665/); avalanche `0xbd918e...1970d9` | ⚠️ Unaudited |
| PangolinRouter | adapter | avalanche | n/a | [`0xe54ca8...c89106`](./contracts/avalanche-43114/0xe54ca86531e17ef3616d22ca28b0d458b6c89106/) | ⚠️ Unaudited |
| PangolinV3Rewarder | unknown | avalanche | n/a | 3 deployments: avalanche [`0x4e8b94...bd0427`](./contracts/avalanche-43114/0x4e8b940c5ce75945f75d892524c88985b2bd0427/); avalanche `0x4fdf9a...7ba14a`; avalanche `0xba19af...ac2f1c` | ⚠️ Unaudited |
| Router | adapter | avalanche | n/a | [`0x757121...a6baa2`](./contracts/avalanche-43114/0x757121c9a8259c4d6b6956c283355b2902a6baa2/) | ⚠️ Unaudited |
| StakingRewardsV2 | unknown | avalanche | n/a | 2 deployments: avalanche [`0x0693ea...83317f`](./contracts/avalanche-43114/0x0693ea08e6d7ab2f7976c09dd1a3ebdfa883317f/); avalanche `0x7bca92...c52b02` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (155)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PGLCollector | unknown | avalanche | n/a | `0xdfb836...296b28` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x034e7f...1f9b57` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x04eb48...bdbc1c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x051911...219476` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x069970...842a25` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0cb6ea...80790c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0d065c...eb43c6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0df7c5...e9587a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0e7c2e...b21126` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0efbfe...45742e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x0fb541...27912e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x100b96...17cf98` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x10d3fb...cbf013` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1128f2...8b8256` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x11e9e5...6d51c9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1242e0...c1f194` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x134451...8ad953` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x148aa9...07702b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x19d024...0567e7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1b1b3f...fda672` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x1defb0...c3a61b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x231b55...3d3954` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x24d89c...bfd852` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x268c3b...c2de1a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x27ecb0...e41ab8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2824b0...6d0c0a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x28f044...0b32b1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2dc19e...4ae62c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2e303b...c74e3d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2e9433...a96efa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x2f62fb...7680e3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x358dab...b81eef` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x383615...4a024c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x39b304...811ced` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3b5c65...f9e73f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3c4a7b...132599` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3cbcc8...a39b89` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3cc533...d46587` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3ccc87...4d7f3b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x3d9b0f...97340d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x408e9b...e14cd8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x415ef3...d3b2ee` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x43d5fa...84f7b2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4443cb...00eea5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x44771c...5cd65f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x44edf5...698710` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x450500...422603` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x46308b...2cad8a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x49b4a0...de6759` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4b3d00...533c28` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4b597e...01f28f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x4b6248...b719fc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5047c4...1c5aa3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x517312...1cac63` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x52ee57...81d89c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x544cd7...16cfa8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5485a0...22547f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5789f5...67c0e0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x588922...9d3ebf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5d8265...8aa587` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5dfe6d...44cac1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5e35df...63a93c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x5f9bf3...c9cdb3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x612856...a7b6f6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x61e0e3...f13d2b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x62b187...c77706` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6410f5...51da61` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6948ac...a5ddb0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6bfdcd...62c9d5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6c0a7e...ec665a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x6e53c8...51e381` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x71fe4e...1dd265` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x73cd05...ddf17b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x74b863...900927` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7528b8...a7e315` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x760e25...b1c585` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7b72ba...53727e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7d115c...0694a2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7e8040...97baec` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7e9985...e9e7ed` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x80c4cc...98eab4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x81b2b1...5ef0d1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x828963...542776` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x844878...9ad6e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x89357b...82c8b5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x896e09...615b8f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8ae5d4...d2d0f1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8c34cb...875850` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x8f2846...4d39d9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x900e16...3bc62f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x914556...9c65aa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x91aa62...2e8bc8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x92f6f6...bed970` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x972664...6f2223` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x97b99b...6e633c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x9cf0ad...d9fc51` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa05c4d...129d5c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa159e6...dc30de` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa1d3cd...f9fc6c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa21fb9...ddaf19` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa286da...93edbf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa47a05...cf0ca9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa54fdc...403880` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa6a5ec...1631a9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa6d2f4...6f007a` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa6d6eb...2dd2f9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa73b18...9826db` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa7625c...781828` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa86522...983822` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa9847d...ada2f8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xabde60...fcc214` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xabf4fd...4e17c2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xae9d04...664d9f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xaf48b2...e3c678` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb0a532...661703` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb213bf...f1ab63` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb3dba8...84fca9` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb444ac...e69ae5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb5191f...64a6af` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb6142d...4ca923` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb6b208...376d32` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb6f012...fb3c4f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb87a8a...d505aa` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb8eabc...24689e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xb93900...df5dc5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbbcb4c...006b70` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbc9bb2...4f9a59` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbd60c5...05bbd1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbdffe4...ce7a35` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xbf32df...34d28c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc155b1...bc45e8` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc44ca8...c186ae` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc74e23...654adf` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc880ac...dbe04c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xc90dfa...cbb8a7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd09b07...0c1755` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd2517d...50058e` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd2f89c...e59fa0` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xd56b82...d85fb4` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdcd29f...fd5ff5` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xdf3723...544273` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe338d3...aedf48` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe4a010...d377d3` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe54e3b...951ab7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe5614c...ebf60c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe5d35e...88260b` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xe66ddf...d408e7` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf3a4d0...e703ea` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf40937...f06a7f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xf940bd...73f71c` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfa05ef...6ea7fe` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfa9a92...668bfc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfcb81f...42fb27` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfdd994...3159b6` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xfe04c4...10eeb1` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [paladinsec.co/projects/pangolin](https://paladinsec.co/projects/pangolin) | Paladin | Audit | 2025-04 | aging | Direct | contract_name | 5 | high |
| [Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf) | Halborn | Audit | 2021-08 | stale | Direct | n/a | 0 | n/a |
| [Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_DaaS_Audit_Report_Omniscia_Final.pdf) | Omniscia | Audit | 2022-08 | stale | Direct | contract_name | 1 | high |
| [Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Exchange_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-03 | stale | Direct | contract_name | 1 | n/a |
| [Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2021-12 | stale | Direct | contract_name | 1 | n/a |
| [Pangolin_Fee_Collector_v2_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_v2_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-04 | stale | Direct | contract_name | 1 | n/a |
| [Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [Pangolin_RewarderViaMultiplier_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_RewarderViaMultiplier_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2022-01 | stale | Direct | contract_name | 34 | high |
| [Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf) | Halborn | Audit | 2021-10 | stale | Direct | contract_name | 4 | n/a |
| [Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf) | WatchPug | Audit | 2022-08 | stale | Direct | n/a | 0 | n/a |
| [Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf) | WatchPug | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Draft.pdf](https://github.com/pangolindex/exchange-contracts/blob/main/audits/Pangolin_Fee_Collector_Smart_Contract_Security_Audit_Report_Halborn_Draft.pdf) | Halborn | Audit | 2021-12 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 170 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: contract_name=8, extraction_exact=40

Zero-match audit list:

- [2690] Pangolin_AVALabs_Zap_Smart_Contract_Security_Audit_Report_Halborn.pdf
- [2691] Pangolin_AllocationVester_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [2697] Pangolin_MiniChefV2Zapper_Smart_Contract_Security_Audit_Report_Halborn_Final.pdf
- [2700] Pangolin_Staking_Positions_Audit_Report_by_WatchPug-1.pdf
- [2701] Pangolin_Staking_Positions_Audit_Report_by_WatchPug-2.pdf

Fork inheritance lineage and inherited audits are included when available.
