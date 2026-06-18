# Agentic Audit Brief: NetSwap

⚠️ Lifecycle status: DECLINING - TVL changed 5.2% over 90 days

## Project Overview

- Project: NetSwap (`netswap`)
- Website: [https://netswap.io/#/home](https://netswap.io/#/home)
- Lifecycle: declining (Tier 1, dead)
- Generated: 2026-06-18T01:56:49.592Z
- Pipeline run: v2-pipeline-2026-06-18-32b207-ac25
- Chains: metis
- Contract surface: 47 unique implementations (95 raw deployments)
- DeFi Llama TVL: $1,205,302.34
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NetSwap is a decentralized exchange (DEX) on Metis that enables token swaps, liquidity provision, and yield farming. It uses the NETT governance token and includes NETT/veNETT staking-related contracts, but active voting or community governance should not be assumed without additional supporting evidence.

### Architecture

The NetSwap family relies on the NETT token from the Governance family for staking, rewards, and voting. Shared infrastructure includes proxy contracts and peripheral contracts like Multicall and FarmLens that support the core DEX and farming operations.

## Contract Surface Quality

- Indexed contracts: 95; live-surface contracts included: 95 (0 live, 95 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: uniswap-v2
- Unverified dependencies: 2/19.

## Audit Coverage Summary

- Verified implementations audited: 5/23 (21.7%)
- Verified + Unaudited implementations: 18
- Verified by bytecode match: 0
- Unverified implementations: 24
- Unique implementations: 47
- Raw deployments: 95
- Audits discovered: 2
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 5 | 21.7% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Multicall | periphery | metis | n/a | [`0x0071dd...6621cd`](./contracts/metis-1088/0x0071ddb5a2e80b6b22317594a0307599836621cd/) | ✅ Audited |
| NetswapFactory | registry | metis | n/a | [`0x70f51d...9dff9f`](./contracts/metis-1088/0x70f51d68d16e8f9e418441280342bd43ac9dff9f/) | ✅ Audited |
| NetswapRouter | adapter | metis | n/a | 2 deployments: metis [`0x1e876c...3bff56`](./contracts/metis-1088/0x1e876cce41b7b844fde09e38fa1cf00f213bff56/); metis `0xf8c8c4...1efb25` | ✅ Audited |
| NETT | unknown | metis | n/a | 2 deployments: metis [`0x8196b2...99b7d2`](./contracts/metis-1088/0x8196b259d309efe84d22e34ea76dc8547c99b7d2/); metis `0x90fe08...1ab278` | ✅ Audited |
| NETTFarm | unknown | metis | n/a | [`0x9d1dbb...0cb052`](./contracts/metis-1088/0x9d1dbb49b2744a1555edbf1708d64dc71b0cb052/) | ✅ Audited |

### ⚠️ Verified + Unaudited (18)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BasicModel | unknown | metis | n/a | [`0x846b62...8b98f7`](./contracts/metis-1088/0x846b62d627f07fe5e2804a32cd5a0cec408b98f7/) | ⚠️ Unaudited |
| BoostedNETTFarm | unknown | metis | n/a | [`0x0ecdc3...36f553`](./contracts/metis-1088/0x0ecdc3d1747dc0ba37c9f7a0711501657136f553/) | ⚠️ Unaudited |
| CommunityTreasury | operational_periphery | metis | n/a | [`0x2dc348...e75ed7`](./contracts/metis-1088/0x2dc348972df99dff6716007d19368eaaa6e75ed7/) | ⚠️ Unaudited |
| FarmLens | periphery | metis | n/a | [`0x8d8be2...66df60`](./contracts/metis-1088/0x8d8be2b72515680f6c31dc5d9a3fb30f1366df60/) | ⚠️ Unaudited |
| LaunchpadHelper | periphery | metis | n/a | [`0x35c312...50d07f`](./contracts/metis-1088/0x35c3123e3e274f05f921a792bd0d80414d50d07f/) | ⚠️ Unaudited |
| Mining | unknown | metis | n/a | 2 deployments: metis [`0x3751a5...02262a`](./contracts/metis-1088/0x3751a5b7b1f16d997776261555b0b9fbc702262a/); metis `0x7077f3...980271` | ⚠️ Unaudited |
| NetswapPair | unknown | metis | n/a | 7 deployments: metis [`0x0724d3...c72861`](./contracts/metis-1088/0x0724d37522585e87d27c802728e824862dc72861/); metis `0x1cad5f...4280ea`; metis `0x3d60af...a7c5a1`; metis `0x59051b...b3610d`; metis `0x5ae3ee...465091`; metis `0x60312d...931cbd`; metis `0xf59888...12c253` | ⚠️ Unaudited |
| PadFactory | registry | metis | n/a | [`0x587e87...b87f76`](./contracts/metis-1088/0x587e879e48ae1753d44d9f33603141c6afb87f76/) | ⚠️ Unaudited |
| ProxyAdmin | governance | metis | n/a | 3 deployments: metis [`0x31fb08...0956ed`](./contracts/metis-1088/0x31fb08c0c4d8b147a73f0be5e0e769721d0956ed/); metis `0x4196aa...307873`; metis `0x757251...e7e3cd` | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | metis | n/a | 25 deployments: metis [`0x1c5f80...2fcadf`](./contracts/metis-1088/0x1c5f80666406d528ca91c72cf8f0c536cf2fcadf/); metis `0x1ddf97...553634`; metis `0x2bd9e5...b5a0b7`; metis `0x38d283...e530f6`; metis `0x4ccced...f4b294`; metis `0x53ba27...37b146`; metis `0x579a58...311261`; metis `0x66496b...6cbb6c`; metis `0x6770bc...b39c81`; metis `0x7c2551...a54f2e`; metis `0x82e7fb...4838ce`; metis `0x876488...f7da66`; metis `0xa0ffb3...2ef762`; metis `0xa7c260...78e284`; metis `0xa83a56...871c8a`; metis `0xb7d2ab...f60f21`; metis `0xbedf6e...4ffe97`; metis `0xcae5ca...a5eb1e`; metis `0xd56c7f...c6fba7`; metis `0xd5a3ea...bea7a1`; metis `0xd64894...a521e8`; metis `0xd8a5ee...236e08`; metis `0xdd70c3...95ce64`; metis `0xe2bc43...7f2db5`; metis `0xfabe5d...879a33` | ⚠️ Unaudited |
| StakingRewards | unknown | metis | n/a | 7 deployments: metis [`0x2ac666...9c096b`](./contracts/metis-1088/0x2ac666026515acc3d8a29b99785c6cdd989c096b/); metis `0x35a316...07b02c`; metis `0x4d2f0f...9c9c27`; metis `0x54f683...84532b`; metis `0x551df4...b63c33`; metis `0x7fe9f0...f08300`; metis `0xb43452...460329` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | metis | n/a | 7 deployments: metis [`0x045df9...29bfc3`](./contracts/metis-1088/0x045df90e045b33cebf756947d799d65a3729bfc3/); metis `0x276164...d9db9d`; metis `0x3c1367...bc9961`; metis `0x5e1f9c...840efa`; metis `0xa030a0...1dc8e8`; metis `0xd365e3...7110fa`; metis `0xef18f2...d0fbb4` | ⚠️ Unaudited |
| Unlimited | unknown | metis | n/a | 2 deployments: metis [`0x0f21d3...0def34`](./contracts/metis-1088/0x0f21d33f6f4fcab61e6c21539280c90a140def34/); metis `0xe5991f...3ab4db` | ⚠️ Unaudited |
| UnlimitedModel | unknown | metis | n/a | [`0x7b32ac...ba3342`](./contracts/metis-1088/0x7b32acda3efaf549e4fca0f898cf280b40ba3342/) | ⚠️ Unaudited |
| VeNETT | unknown | metis | n/a | [`0x6535db...cc2bd5`](./contracts/metis-1088/0x6535db9e8ba2c4304fe45b25d866b37346cc2bd5/) | ⚠️ Unaudited |
| VeNETTStaking | unknown | metis | n/a | [`0xa9d674...6b31a3`](./contracts/metis-1088/0xa9d6748d1c3831a87c08a702d73adf4b306b31a3/) | ⚠️ Unaudited |
| wNETT | unknown | metis | n/a | [`0x8738e9...7b81a5`](./contracts/metis-1088/0x8738e9e9a8263065b07ad460beb66815dd7b81a5/) | ⚠️ Unaudited |
| wNETTStaking | unknown | metis | n/a | [`0x794a51...cd07cc`](./contracts/metis-1088/0x794a5108085fe5ee26add48181bce1a0cecd07cc/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (24)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | metis | n/a | `0x0cf4c4...921210` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x116123...8de045` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x12cd49...43c0a7` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x142f0f...3e7238` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x18e728...4624b4` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1cf24b...bd9d1a` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x1eefea...b59425` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4492ee...a590c3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x4912b4...faa85f` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x574b30...f05fff` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6a873f...c63c97` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x6aa0ab...68b279` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0x966d65...e05908` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xa68923...2ba4b1` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xaa7437...245f00` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xaece9c...c68084` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xc4a5f6...2f6984` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd14bf8...889e7c` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd332b8...e3e22b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xd45ad4...dcfe43` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xe75aad...f81a1b` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf39ce3...b7c865` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf720ba...2694d3` | ❓ Unverified |
| UnnamedContract | unknown | metis | n/a | `0xf8cafa...0267ef` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Rendered PDF capture](https://4122350423-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FEbMkSj6wrVk9IfPEsOGH%2Fuploads%2F9mkCS0SDBLKkPGAWCevh%2FNetSwap_audit.pdf) | yAudit | Audit | 2021-11 | stale | Direct | contract_name | 4 | high |
| [Rendered PDF capture](https://4122350423-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FEbMkSj6wrVk9IfPEsOGH%2Fuploads%2FlhV4zxJaCA5bczsO9uBu%2FNetswap%20Farm_audit.pdf) | yAudit | Audit | 2022-01 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| metis | [`0x846b62...8b98f7`](./contracts/metis-1088/0x846b62d627f07fe5e2804a32cd5a0cec408b98f7/) | BasicModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x0ecdc3...36f553`](./contracts/metis-1088/0x0ecdc3d1747dc0ba37c9f7a0711501657136f553/) | BoostedNETTFarm | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x2dc348...e75ed7`](./contracts/metis-1088/0x2dc348972df99dff6716007d19368eaaa6e75ed7/) | CommunityTreasury | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x8d8be2...66df60`](./contracts/metis-1088/0x8d8be2b72515680f6c31dc5d9a3fb30f1366df60/) | FarmLens | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x35c312...50d07f`](./contracts/metis-1088/0x35c3123e3e274f05f921a792bd0d80414d50d07f/) | LaunchpadHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x3751a5...02262a`](./contracts/metis-1088/0x3751a5b7b1f16d997776261555b0b9fbc702262a/) | Mining | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x0724d3...c72861`](./contracts/metis-1088/0x0724d37522585e87d27c802728e824862dc72861/) | NetswapPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x587e87...b87f76`](./contracts/metis-1088/0x587e879e48ae1753d44d9f33603141c6afb87f76/) | PadFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x1c5f80...2fcadf`](./contracts/metis-1088/0x1c5f80666406d528ca91c72cf8f0c536cf2fcadf/) | SimpleRewarderPerSec | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x2ac666...9c096b`](./contracts/metis-1088/0x2ac666026515acc3d8a29b99785c6cdd989c096b/) | StakingRewards | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x0f21d3...0def34`](./contracts/metis-1088/0x0f21d33f6f4fcab61e6c21539280c90a140def34/) | Unlimited | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x7b32ac...ba3342`](./contracts/metis-1088/0x7b32acda3efaf549e4fca0f898cf280b40ba3342/) | UnlimitedModel | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x6535db...cc2bd5`](./contracts/metis-1088/0x6535db9e8ba2c4304fe45b25d866b37346cc2bd5/) | VeNETT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0xa9d674...6b31a3`](./contracts/metis-1088/0xa9d6748d1c3831a87c08a702d73adf4b306b31a3/) | VeNETTStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x8738e9...7b81a5`](./contracts/metis-1088/0x8738e9e9a8263065b07ad460beb66815dd7b81a5/) | wNETT | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| metis | [`0x794a51...cd07cc`](./contracts/metis-1088/0x794a5108085fe5ee26add48181bce1a0cecd07cc/) | wNETTStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 43 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=7

Fork inheritance lineage and inherited audits are included when available.
