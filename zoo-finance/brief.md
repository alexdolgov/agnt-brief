# Agentic Audit Brief: Zoo Finance

## Project Overview

- Project: Zoo Finance (`zoo-finance`)
- Website: [https://zoofi.io](https://zoofi.io)
- Lifecycle: active (Tier 0, 55.7% below peak)
- Generated: 2026-06-12T12:03:06.074Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-fc52
- Chains: arbitrum, base, berachain, bsc, sei
- Contract surface: 75 unique implementations (107 raw deployments)
- DeFi Llama TVL: $28,634,850.77
- On-chain TVL (included contracts): $83,032,103.36
- TVL by chain: Bsc $43,362,985.23 | Base $22,084,469.81 | Arbitrum $17,584,648.33

## Project Description

Zoo Finance is a structured DeFi protocol focused on improving liquidity utilization. Claims about token vesting, Uniswap-based swapping or liquidity management, and yield-bearing positions should only be included where directly supported by Zoo-owned contracts or official documentation, and third-party routers, pools, wrappers, and standard token infrastructure should be treated as dependencies rather than part of the core product scope.

### Architecture

The protocol relies on Uniswap V2 and V3 infrastructure for swaps and liquidity management, with proxy-based upgradeable tokens (BEP20UpgradeableProxy) serving as the primary asset representation. Vesting contracts and license NFTs are linked through transparent proxies, indicating a shared access control and upgrade mechanism across the family.

## Audit Coverage Summary

- Verified implementations audited: 0/38 (0.0%)
- Verified + Unaudited implementations: 38
- Verified by bytecode match: 0
- Unverified implementations: 37
- Unique implementations: 75
- Raw deployments: 107
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $83,032,103.36
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (38)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BEP20TokenImplementation | token | bsc | 5 deployments: bsc [`0x0d8ce2...9ae153`](./contracts/bsc-56/0x0d8ce2a99bb6e3b7db580ed848240e4a0f9ae153/); bsc `0x101d82...f9766e`; bsc `0x88f1a5...c9142e`; bsc `0x9ac983...2e8404`; bsc `0xbf5140...2ce9b1` | ⚠️ Unaudited |
| AgentTokenV2 | token | base | [`0xff8104...8583d6`](./contracts/base-8453/0xff8104251e7761163fac3211ef5583fb3f8583d6/) | ⚠️ Unaudited |
| InterchainToken | token | arbitrum | [`0xc87b37...9d056c`](./contracts/arbitrum-42161/0xc87b37a581ec3257b734886d9d3a581f5a9d056c/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | arbitrum | [`0xc30a05...8309dd`](./contracts/arbitrum-42161/0xc30a053e4689a1080eb7dcbf09b3bf7b628309dd/) | ⚠️ Unaudited |
| CheckerLicenseNFTv2 | token | arbitrum | [`0xc227e2...4972f1`](./contracts/arbitrum-42161/0xc227e25544edd261a9066932c71a25f4504972f1/) | ⚠️ Unaudited |
| BQuery | unknown | berachain | [`0x6e6030...56d913`](./contracts/berachain-80094/0x6e603014ace3ae06f34ffe259106af77c056d913/) | ⚠️ Unaudited |
| BribesPoolFactory | operational_periphery | berachain | [`0x008eee...fd281f`](./contracts/berachain-80094/0x008eee3c55b2b1d938ee6345b0acd9c9dcfd281f/) | ⚠️ Unaudited |
| CheckerClaimAndWithdraw | operational_periphery | arbitrum | 4 deployments: arbitrum [`0x13f34e...04370f`](./contracts/arbitrum-42161/0x13f34e49fefbe55fec4b62afb7adf3920b04370f/); arbitrum `0x179b3d...64dcdb`; arbitrum `0x73098d...4b9a22`; arbitrum `0xf16fff...a2a130` | ⚠️ Unaudited |
| CheckerLicenseNFT | token | arbitrum | 3 deployments: arbitrum [`0x349834...112d9a`](./contracts/arbitrum-42161/0x349834ba064f4b9286888611dfdb9035c1112d9a/); arbitrum `0x4395cb...747531`; arbitrum `0x9e6cd1...35f6b0` | ⚠️ Unaudited |
| CheckerNFTClaim | token | arbitrum | [`0xfa4dfd...3f31da`](./contracts/arbitrum-42161/0xfa4dfdedf41e3b41529cc161b542d84c4a3f31da/) | ⚠️ Unaudited |
| DragonswapFactory | registry | sei | [`0x71f6b4...bca03d`](./contracts/sei-1329/0x71f6b49ae1558357bbb5a6074f1143c46cbca03d/) | ⚠️ Unaudited |
| DragonswapRouter | adapter | sei | [`0xa4cf2f...5712f2`](./contracts/sei-1329/0xa4cf2f53d1195addde9e4d3aca54f556895712f2/) | ⚠️ Unaudited |
| DragonswapStaker | core_logic | sei | 4 deployments: sei [`0x0d579d...89a896`](./contracts/sei-1329/0x0d579da091f03c9b6b78d7f84dd2d16a7989a896/); sei `0x2a2f66...66ea9c`; sei `0xcfea00...9e0a62`; sei `0xf1d159...a902cb` | ⚠️ Unaudited |
| DragonswapStakerBoosted | core_logic | sei | 2 deployments: sei [`0x69d40c...c708df`](./contracts/sei-1329/0x69d40c24552a9e6884345e5c9966363178c708df/); sei `0xde04d3...122139` | ⚠️ Unaudited |
| DragonswapStakerFactory | registry | sei | [`0x349752...1d4e2d`](./contracts/sei-1329/0x34975246b5a3c8e9e1c19bf9b6a6088b741d4e2d/) | ⚠️ Unaudited |
| InfraredBribeVault | operational_periphery | berachain | 2 deployments: berachain [`0x33c42e...f64e63`](./contracts/berachain-80094/0x33c42e171cfd7ec85d3db34d7f6d3d8121f64e63/); berachain `0x6686bd...f338c0` | ⚠️ Unaudited |
| InfraredBribeVaultV2 | operational_periphery | berachain | 3 deployments: berachain [`0x702b70...a02767`](./contracts/berachain-80094/0x702b707c2f8dd26f4f1e51cf425035d355a02767/); berachain `0x94822b...94fc67`; berachain `0xe6d155...0d4083` | ⚠️ Unaudited |
| LntOFTAdapter | adapter | arbitrum | [`0x33c42e...f64e63`](./contracts/arbitrum-42161/0x33c42e171cfd7ec85d3db34d7f6d3d8121f64e63/) | ⚠️ Unaudited |
| LntVault0GArbUpg | core_logic | arbitrum | [`0x3010ab...dba454`](./contracts/arbitrum-42161/0x3010abd2fb29496282111088f4240bbb13dba454/) | ⚠️ Unaudited |
| LntVault0GArbUpgV2 | core_logic | arbitrum | 2 deployments: arbitrum [`0x50bdb4...c3aaac`](./contracts/arbitrum-42161/0x50bdb4a9a2bd520a13eb8d412854d95b1cc3aaac/); arbitrum `0x9619fe...cdc6f0` | ⚠️ Unaudited |
| LntVaultAethirSigner | core_logic | arbitrum | [`0x8bf32a...cf411a`](./contracts/arbitrum-42161/0x8bf32a9603859235cdaf32e8201982a6cdcf411a/) | ⚠️ Unaudited |
| NFTDescriptor | token | bsc | [`0x170265...4f3781`](./contracts/bsc-56/0x170265370499b8f388883004fbad9ebde34f3781/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | bsc | 2 deployments: bsc [`0x71479c...27ab95`](./contracts/bsc-56/0x71479cf279bc2fcf5b8faa8c9eed2ab59127ab95/); bsc `0x7b8a01...170613` | ⚠️ Unaudited |
| Protocol | unknown | arbitrum | [`0x170e0c...8470c8`](./contracts/arbitrum-42161/0x170e0c91ffa71dc3c16d43f754b3aece688470c8/) | ⚠️ Unaudited |
| ProtocolSettings | unknown | berachain | 4 deployments: berachain [`0x45a47e...3386ea`](./contracts/berachain-80094/0x45a47e8013425af3e6e71f1aa24e3b8c523386ea/); berachain `0x7d3cec...19bac0`; berachain `0x8c6e43...1d85eb`; berachain `0xe34e1c...dd778a` | ⚠️ Unaudited |
| ProxyAdmin | governance | bsc | 2 deployments: bsc [`0x589b49...43ed8f`](./contracts/bsc-56/0x589b4931d426146864f6e3df652316a6d643ed8f/); bsc `0xc9a7f5...8b1c79` | ⚠️ Unaudited |
| QuoterV2 | periphery | bsc | 2 deployments: bsc [`0x78d78e...3eb077`](./contracts/bsc-56/0x78d78e420da98ad378d7799be8f4af69033eb077/); bsc `0xd00bd4...42db42` | ⚠️ Unaudited |
| RedeemPoolFactory | registry | berachain | [`0x9231e8...e69c72`](./contracts/berachain-80094/0x9231e8161249907656a98f369fa08c51fbe69c72/) | ⚠️ Unaudited |
| SwapRouter02 | adapter | bsc | 2 deployments: bsc [`0xa64dd3...7e650f`](./contracts/bsc-56/0xa64dd3a63feed608660226112e748f93b87e650f/); bsc `0xb971ef...dd85d2` | ⚠️ Unaudited |
| TickLens | periphery | bsc | 2 deployments: bsc [`0xd92700...01a47c`](./contracts/bsc-56/0xd9270014d396281579760619ccf4c3af0501a47c/); bsc `0xf5f449...85615a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | bsc | 2 deployments: bsc [`0x704218...0b0d7c`](./contracts/bsc-56/0x70421847195a77586ca46192e6e0337d610b0d7c/); bsc `0xaec98e...97ee97` | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | base | [`0x4752ba...72ad24`](./contracts/base-8453/0x4752ba5dbc23f44d87826276bf6fd6b1c372ad24/) | ⚠️ Unaudited |
| V3Migrator | periphery | bsc | 2 deployments: bsc [`0x326818...9e760f`](./contracts/bsc-56/0x32681814957e0c13117ddc0c2aba232b5c9e760f/); bsc `0xb3abf5...5746fc` | ⚠️ Unaudited |
| VaultCalculator | unknown | berachain | [`0xfbfaf4...6492ad`](./contracts/berachain-80094/0xfbfaf4eb4ed2e241510a1b7917f58401986492ad/) | ⚠️ Unaudited |
| VestingToken | operational_periphery | bsc | 3 deployments: bsc [`0x24ef95...34ef46`](./contracts/bsc-56/0x24ef95c39dfaa8f9a5adf58edf76c5b22c34ef46/); sei `0x92838c...50cc5f`; base [`0x24ef95...34ef46`](./contracts/base-8453/0x24ef95c39dfaa8f9a5adf58edf76c5b22c34ef46/) | ⚠️ Unaudited |
| VTSwapHook | unknown | arbitrum | [`0xbf4b4a...637a88`](./contracts/arbitrum-42161/0xbf4b4a83708474528a93c123f817e7f2a0637a88/) | ⚠️ Unaudited |
| WSEI | unknown | sei | [`0xe30fed...95e8c7`](./contracts/sei-1329/0xe30fedd158a2e3b13e9badaeabafc5516e95e8c7/) | ⚠️ Unaudited |
| ZooProtocol | unknown | berachain | 4 deployments: berachain [`0x4737c3...be9c81`](./contracts/berachain-80094/0x4737c3bab13a1ad94ede8b46bc6c22fb8bbe9c81/); berachain `0x9f0956...562f87`; berachain `0xc0fa38...2c30dc`; berachain `0xd75dc0...6e4ff1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (37)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x17a90eda8c919b97d36e0082266bf9432fb1eea1) | proxy | arbitrum | `0xf74b2e...118b3b` | ❓ Unverified |
| Proxy (impl: 0x53a1f55283245a99e25004079f6228def7603d91) | proxy | arbitrum | `0xf8dfaa...b84e8b` | ❓ Unverified |
| Proxy (impl: 0x550b031acbc56b309a8ef28914959115f6a97202) | proxy | arbitrum | `0x6e6030...56d913` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x0281e9...44c55c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x831d93...995071` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xcd4855...6c945c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0xed202a...a23a88` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x1434ae...100af6` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x17714e...0129f0` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x3362cb...3a3a88` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x4ceec8...38dca7` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x4dc1ee...077aa5` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x621239...917830` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0x7b2c42...67d139` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xb34b27...3c785b` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xb6ba61...ee1012` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xca9851...2d5266` | ❓ Unverified |
| UnnamedContract | unknown | sei | `0xee5aee...027a88` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x2b7249...f07a88` | ❓ Unverified |
| UnnamedContract | unknown | base | `0x4b9cef...156e4b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x056e53...909181` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x17a90e...b1eea1` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x2f70e7...810fc9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x550b03...a97202` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x878aac...c2ca22` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x893509...14643a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8c6e43...1d85eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0x8d5057...f5761f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xa341e9...8ea134` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xba3a59...e12fe9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc0fa38...2c30dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xc78ae1...c4e976` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xd7fc9a...e48567` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xeaed7f...14a329` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xebf103...17d031` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xefb7ba...ffd0a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf6f4a8...3b2db3` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit Report (also discovered via alternate URL)](https://doc.zoofi.io/security/audit-report.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 2 |
| standard_library | 0 |
| needs_review | 73 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3916] Audit Report

Fork inheritance lineage and inherited audits are included when available.
