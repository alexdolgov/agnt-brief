# Agentic Audit Brief: AutoShark

## Project Overview

- Project: AutoShark (`autoshark`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:31.962Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: bsc
- Contract surface: 35 unique implementations (35 raw deployments)
- DeFi Llama TVL: $127,759.59
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 29 project-authored contract(s) across 1 chain(s); 8 ERC20 tokens, 4 ERC721 NFTs; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Its contracts share 3 common project-authored base contract(s) (proxy, erc1967upgrade, whitelist). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 35; live-surface contracts included: 35 (35 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/35 (0.0%)
- Deployed-live implementations: 35 of 35 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/35
- Verified + Unaudited implementations: 35
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 35
- Raw deployments: 35
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-09 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (35)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AtlantisToken | unknown | bsc | n/a | [`0x58eac9...e690ae`](./contracts/bsc-56/0x58eac95177aca8af7c55b2c05fd009a3cae690ae/) | ⚠️ Unaudited |
| EcosystemFund | unknown | bsc | n/a | [`0xd160e3...43236a`](./contracts/bsc-56/0xd160e30a68b502a52f4d4e22e1232c0db743236a/) | ⚠️ Unaudited |
| FinsFactory | unknown | bsc | n/a | [`0x6fd85e...89f4b2`](./contracts/bsc-56/0x6fd85eb8c30763f26d2373031add58c61389f4b2/) | ⚠️ Unaudited |
| FinsRouter02 | unknown | bsc | n/a | [`0x263884...83e22b`](./contracts/bsc-56/0x2638846fcfa6d023eb24966222290c7e0e83e22b/) | ⚠️ Unaudited |
| FinsRouterAlt | unknown | bsc | n/a | [`0xea024b...538e4d`](./contracts/bsc-56/0xea024b701ef0acb1bd0ff71dd756877ff6538e4d/) | ⚠️ Unaudited |
| FinsToken | unknown | bsc | n/a | [`0x1b219a...fcbff5`](./contracts/bsc-56/0x1b219aca875f8c74c33cff9ff98f3a9b62fcbff5/) | ⚠️ Unaudited |
| HammerNFT | unknown | bsc | n/a | [`0xca56af...2af034`](./contracts/bsc-56/0xca56af4bde480b3c177e1a4115189f261c2af034/) | ⚠️ Unaudited |
| JawsToken | unknown | bsc | n/a | [`0xdd97ab...4ccba2`](./contracts/bsc-56/0xdd97ab35e3c0820215bc85a395e13671d84ccba2/) | ⚠️ Unaudited |
| Lottery | unknown | bsc | n/a | [`0x17c672...422f4a`](./contracts/bsc-56/0x17c672a9a549c98338664530feb207fc17422f4a/) | ⚠️ Unaudited |
| MasterOcean | unknown | bsc | n/a | [`0x8857af...fb192a`](./contracts/bsc-56/0x8857af8205f224870dea119e2c75af386efb192a/) | ⚠️ Unaudited |
| Oracle | unknown | bsc | n/a | [`0x3a15f7...0c0607`](./contracts/bsc-56/0x3a15f7991741b7c447bf5571ab7b7f10140c0607/) | ⚠️ Unaudited |
| PlatformFund | unknown | bsc | n/a | [`0x4959be...8c813f`](./contracts/bsc-56/0x4959be69bd607942283160d8f8f94504558c813f/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | [`0x0c30c4...d3a2d8`](./contracts/bsc-56/0x0c30c43cc2d1ca57ce6b791ddec3517ef4d3a2d8/) | ⚠️ Unaudited |
| SAtlantisToken | unknown | bsc | n/a | [`0xe6fa6f...e2caab`](./contracts/bsc-56/0xe6fa6f37a5a86f521d3fe61c58e7370cd7e2caab/) | ⚠️ Unaudited |
| SharkMinter | unknown | bsc | n/a | [`0x0bea19...a590ee`](./contracts/bsc-56/0x0bea199b16d26964f5731f270cd9a006f1a590ee/) | ⚠️ Unaudited |
| SharkNFT | unknown | bsc | n/a | [`0x13e14f...8960de`](./contracts/bsc-56/0x13e14f6ec8fee53b69ebd4bd69e35ffcfe8960de/) | ⚠️ Unaudited |
| SharkNFT2 | unknown | bsc | n/a | [`0xcd2b54...10b12f`](./contracts/bsc-56/0xcd2b54fd07e9a71d261e1e3ce6c4ebb54810b12f/) | ⚠️ Unaudited |
| SharkNFT2OG | unknown | bsc | n/a | [`0x2244db...b6d9ad`](./contracts/bsc-56/0x2244db13245a6febfd43c2411ce6afcaf3b6d9ad/) | ⚠️ Unaudited |
| SharkPool | unknown | bsc | n/a | [`0x20e571...a62602`](./contracts/bsc-56/0x20e571543c825def7ffceaa354d5bc7727a62602/) | ⚠️ Unaudited |
| SharkReferral | unknown | bsc | n/a | [`0xa41b47...48e9a5`](./contracts/bsc-56/0xa41b47399288994c6bce1c5e26b14ec9e948e9a5/) | ⚠️ Unaudited |
| SharkToken | unknown | bsc | n/a | [`0xe323b8...beea68`](./contracts/bsc-56/0xe323b82acd7304e1e4ae85ac2b8fa47278beea68/) | ⚠️ Unaudited |
| SmartChefFactory | unknown | bsc | n/a | [`0x7e2658...182e5a`](./contracts/bsc-56/0x7e2658c045fce430f47faa5ef035d77cff182e5a/) | ⚠️ Unaudited |
| StrategyHelperV1 | unknown | bsc | n/a | [`0xd9bafd...7c2b49`](./contracts/bsc-56/0xd9bafd0024d931d103289721de0d43077e7c2b49/) | ⚠️ Unaudited |
| Timelock | unknown | bsc | n/a | [`0x12c06b...e23342`](./contracts/bsc-56/0x12c06b9c9b1dda0d21c3676e3df6ba77ece23342/) | ⚠️ Unaudited |
| TimelockController | unknown | bsc | n/a | [`0x0ff443...d19d98`](./contracts/bsc-56/0x0ff4436ae09196c5e7e2cd180c01d9420cd19d98/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x049688...38c550`](./contracts/bsc-56/0x0496887e9f2274b94816d9fdd7b8e675d338c550/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x0c5052...b98b0a`](./contracts/bsc-56/0x0c5052ea0152c28fd5953adf83b4ee70fdb98b0a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x505bf3...4e64e6`](./contracts/bsc-56/0x505bf3d87aedfcf80c043a494dd14953454e64e6/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x78120b...3b63b9`](./contracts/bsc-56/0x78120bbe2b14c86a14711a0ce7bbeba1af3b63b9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xa8b2e9...64babf`](./contracts/bsc-56/0xa8b2e94c1158b52f2dd7e6e99070b1a30a64babf/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xb1e76c...ee46f9`](./contracts/bsc-56/0xb1e76ccf19455fc2a21e12de9bfaf05fa0ee46f9/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xd50605...db5f6d`](./contracts/bsc-56/0xd5060542baeb3241d23ea6f32e27f8e637db5f6d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0xd8a43f...2eff3d`](./contracts/bsc-56/0xd8a43f2d82e5ea4529ae7ab3360ba8a0722eff3d/) | ⚠️ Unaudited |
| VaultBSWToBSW | unknown | bsc | n/a | [`0xf77455...de8965`](./contracts/bsc-56/0xf77455631a68d252515fa3fe091360a89ede8965/) | ⚠️ Unaudited |
| Zap | unknown | bsc | n/a | [`0xa96cea...043cdf`](./contracts/bsc-56/0xa96cea606d206310e4ffaa65577d316d49043cdf/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (0)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

- None

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [SHARK.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/TechRate/Smart-Contract-Audits/main/2018-21%20N-Z/SHARK.pdf) | TechRate | Audit | 2021-05 | stale | Direct | n/a | 0 | n/a |
| [skynet.certik.com/projects/autoshark](https://skynet.certik.com/projects/autoshark) | CertiK | Audit | 2021-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 35 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21372] SHARK.pdf
- [21374] skynet.certik.com/projects/autoshark

Fork inheritance lineage and inherited audits are included when available.
