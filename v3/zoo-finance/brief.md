# Agentic Audit Brief: Zoo Finance

## Project Overview

- Project: Zoo Finance (`zoo-finance`)
- Website: [https://zoofi.io](https://zoofi.io)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:18.144Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: arbitrum, base, berachain, bsc, sei
- Contract surface: 68 unique implementations (98 raw deployments)
- DeFi Llama TVL: $27,950,714.12
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 43 project-authored contract(s) across 5 chain(s); 4 ERC20 tokens, 3 ERC721 NFTs; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 9 functional families. Its contracts share 18 common project-authored base contract(s) (upgradeableproxy, proxy, zooerc20). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 144; live-surface contracts included: 96 (58 live, 38 unknown).
- Excluded by liveness: 48 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/33 (0.0%)
- Deployed-live implementations: 33 of 68 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/33
- Verified + Unaudited implementations: 33
- Verified by bytecode match: 0
- Unverified implementations: 35
- Unique implementations: 68
- Raw deployments: 98
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (33)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AgentTokenV2 | token | base | n/a | [`0xff8104...8583d6`](./contracts/base-8453/0xff8104251e7761163fac3211ef5583fb3f8583d6/) | ⚠️ Unaudited |
| BEP20TokenImplementation | token | bsc | n/a | 5 deployments: bsc [`0x0d8ce2...9ae153`](./contracts/bsc-56/0x0d8ce2a99bb6e3b7db580ed848240e4a0f9ae153/); bsc `0x101d82...f9766e`; bsc `0x88f1a5...c9142e`; bsc `0x9ac983...2e8404`; bsc `0xbf5140...2ce9b1` | ⚠️ Unaudited |
| CheckerClaimAndWithdraw | operational_periphery | arbitrum | n/a | 2 deployments: arbitrum [`0x13f34e...04370f`](./contracts/arbitrum-42161/0x13f34e49fefbe55fec4b62afb7adf3920b04370f/); arbitrum `0x73098d...4b9a22` | ⚠️ Unaudited |
| CheckerClaimAndWithdraw | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x179b3d...64dcdb`](./contracts/arbitrum-42161/0x179b3dd2a3e5bf076c8523695996c3d0e764dcdb/); arbitrum `0xf16fff...a2a130` | ⚠️ Unaudited |
| CheckerLicenseNFT | token | arbitrum | n/a | 3 deployments: arbitrum [`0x349834...112d9a`](./contracts/arbitrum-42161/0x349834ba064f4b9286888611dfdb9035c1112d9a/); arbitrum `0x4395cb...747531`; arbitrum `0x9e6cd1...35f6b0` | ⚠️ Unaudited |
| CheckerLicenseNFTv2 | token | arbitrum | n/a | [`0xc227e2...4972f1`](./contracts/arbitrum-42161/0xc227e25544edd261a9066932c71a25f4504972f1/) | ⚠️ Unaudited |
| CheckerNFTClaim | token | arbitrum | n/a | [`0xfa4dfd...3f31da`](./contracts/arbitrum-42161/0xfa4dfdedf41e3b41529cc161b542d84c4a3f31da/) | ⚠️ Unaudited |
| DragonswapFactory | registry | sei | n/a | [`0x71f6b4...bca03d`](./contracts/sei-1329/0x71f6b49ae1558357bbb5a6074f1143c46cbca03d/) | ⚠️ Unaudited |
| DragonswapRouter | adapter | sei | n/a | [`0xa4cf2f...5712f2`](./contracts/sei-1329/0xa4cf2f53d1195addde9e4d3aca54f556895712f2/) | ⚠️ Unaudited |
| DragonswapStakerFactory | registry | sei | n/a | [`0x349752...1d4e2d`](./contracts/sei-1329/0x34975246b5a3c8e9e1c19bf9b6a6088b741d4e2d/) | ⚠️ Unaudited |
| ERC1967Proxy | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x17a90e...b1eea1`](./contracts/arbitrum-42161/0x17a90eda8c919b97d36e0082266bf9432fb1eea1/); arbitrum `0xf74b2e...118b3b` | ⚠️ Unaudited |
| InfraredBribeVault | operational_periphery | berachain | n/a | 2 deployments: berachain [`0x33c42e...f64e63`](./contracts/berachain-80094/0x33c42e171cfd7ec85d3db34d7f6d3d8121f64e63/); berachain `0x6686bd...f338c0` | ⚠️ Unaudited |
| InfraredBribeVaultV2 | operational_periphery | berachain | n/a | 6 deployments: berachain [`0x702b70...a02767`](./contracts/berachain-80094/0x702b707c2f8dd26f4f1e51cf425035d355a02767/); berachain `0x94822b...94fc67`; berachain `0xa6c041...934826`; berachain `0xbc8015...884f55`; berachain `0xe6d155...0d4083`; berachain `0xf579c0...3cdd9f` | ⚠️ Unaudited |
| InterchainToken | token | arbitrum | n/a | [`0xc87b37...9d056c`](./contracts/arbitrum-42161/0xc87b37a581ec3257b734886d9d3a581f5a9d056c/) | ⚠️ Unaudited |
| LntOFTAdapter | adapter | arbitrum | n/a | [`0x33c42e...f64e63`](./contracts/arbitrum-42161/0x33c42e171cfd7ec85d3db34d7f6d3d8121f64e63/) | ⚠️ Unaudited |
| LntVault0GArbUpg | core_logic | arbitrum | n/a | [`0x3010ab...dba454`](./contracts/arbitrum-42161/0x3010abd2fb29496282111088f4240bbb13dba454/) | ⚠️ Unaudited |
| LntVault0GArbUpgV2 | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x50bdb4...c3aaac`](./contracts/arbitrum-42161/0x50bdb4a9a2bd520a13eb8d412854d95b1cc3aaac/); arbitrum `0x9619fe...cdc6f0` | ⚠️ Unaudited |
| LntVaultAethirSigner | core_logic | arbitrum | n/a | [`0x8bf32a...cf411a`](./contracts/arbitrum-42161/0x8bf32a9603859235cdaf32e8201982a6cdcf411a/) | ⚠️ Unaudited |
| NonfungiblePositionManager | governance | bsc | n/a | [`0x7b8a01...170613`](./contracts/bsc-56/0x7b8a01b39d58278b5de7e48c8449c9f4f5170613/) | ⚠️ Unaudited |
| Protocol | unknown | arbitrum | n/a | [`0x170e0c...8470c8`](./contracts/arbitrum-42161/0x170e0c91ffa71dc3c16d43f754b3aece688470c8/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | 2 deployments: bsc [`0x589b49...43ed8f`](./contracts/bsc-56/0x589b4931d426146864f6e3df652316a6d643ed8f/); bsc `0xc9a7f5...8b1c79` | ⚠️ Unaudited |
| QuoterV2 | periphery | bsc | n/a | 2 deployments: bsc [`0x78d78e...3eb077`](./contracts/bsc-56/0x78d78e420da98ad378d7799be8f4af69033eb077/); bsc `0xd00bd4...42db42` | ⚠️ Unaudited |
| SwapRouter02 | adapter | bsc | n/a | [`0xb971ef...dd85d2`](./contracts/bsc-56/0xb971ef87ede563556b2ed4b1c0b0019111dd85d2/) | ⚠️ Unaudited |
| TickLens | unknown | bsc | n/a | 2 deployments: bsc [`0xd92700...01a47c`](./contracts/bsc-56/0xd9270014d396281579760619ccf4c3af0501a47c/); bsc `0xf5f449...85615a` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 2 deployments: bsc [`0x0281e9...44c55c`](./contracts/bsc-56/0x0281e98322e4e8e53491d576ee6a2bfce644c55c/); bsc `0xaec98e...97ee97` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | [`0x704218...0b0d7c`](./contracts/bsc-56/0x70421847195a77586ca46192e6e0337d610b0d7c/) | ⚠️ Unaudited |
| UniswapV2Router02 | adapter | base | n/a | [`0x4752ba...72ad24`](./contracts/base-8453/0x4752ba5dbc23f44d87826276bf6fd6b1c372ad24/) | ⚠️ Unaudited |
| UniswapV3Pool | core_logic | arbitrum | n/a | [`0xc30a05...8309dd`](./contracts/arbitrum-42161/0xc30a053e4689a1080eb7dcbf09b3bf7b628309dd/) | ⚠️ Unaudited |
| V3Migrator | periphery | bsc | n/a | [`0x326818...9e760f`](./contracts/bsc-56/0x32681814957e0c13117ddc0c2aba232b5c9e760f/) | ⚠️ Unaudited |
| VaultCalculator | unknown | berachain | n/a | 8 deployments: berachain [`0x38402a...728214`](./contracts/berachain-80094/0x38402aa01220a1d19edfe061760877a353728214/); berachain `0x38d913...2377fe`; berachain `0x831dc0...189c69`; berachain `0x856d8c...c0636d`; berachain `0x8d5057...f5761f`; berachain `0x9619fe...cdc6f0`; berachain `0xefb7ba...ffd0a6`; berachain `0xfbfaf4...6492ad` | ⚠️ Unaudited |
| VestingToken | operational_periphery | bsc | n/a | 3 deployments: bsc [`0x24ef95...34ef46`](./contracts/bsc-56/0x24ef95c39dfaa8f9a5adf58edf76c5b22c34ef46/); sei `0x92838c...50cc5f`; base [`0x24ef95...34ef46`](./contracts/base-8453/0x24ef95c39dfaa8f9a5adf58edf76c5b22c34ef46/) | ⚠️ Unaudited |
| VTSwapHook | unknown | arbitrum | n/a | [`0xbf4b4a...637a88`](./contracts/arbitrum-42161/0xbf4b4a83708474528a93c123f817e7f2a0637a88/) | ⚠️ Unaudited |
| WSEI | unknown | sei | n/a | [`0xe30fed...95e8c7`](./contracts/sei-1329/0xe30fedd158a2e3b13e9badaeabafc5516e95e8c7/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (35)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x53a1f55283245a99e25004079f6228def7603d91) | proxy | arbitrum | n/a | `0xf8dfaa...b84e8b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x831d93...995071` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcd4855...6c945c` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xed202a...a23a88` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x1434ae...100af6` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x17714e...0129f0` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x3362cb...3a3a88` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x4ceec8...38dca7` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x4dc1ee...077aa5` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x621239...917830` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x7b2c42...67d139` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xb34b27...3c785b` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xb6ba61...ee1012` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xca9851...2d5266` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xee5aee...027a88` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x2b7249...f07a88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x056e53...909181` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x2f70e7...810fc9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x550b03...a97202`; arbitrum `0x6e6030...56d913` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x878aac...c2ca22` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x893509...14643a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8c6e43...1d85eb` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8d5057...f5761f` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa341e9...8ea134` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xba3a59...e12fe9` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc0fa38...2c30dc` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc78ae1...c4e976` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd7fc9a...e48567` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xeaed7f...14a329` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xebf103...17d031` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xefb7ba...ffd0a6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf6f4a8...3b2db3` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x893509...14643a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xeaed7f...14a329` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xeb4072...e44342` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [audit-report.md](https://doc.zoofi.io/security/audit-report.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 68 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [3916] audit-report.md

Fork inheritance lineage and inherited audits are included when available.
