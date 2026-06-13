# Agentic Audit Brief: Trevee Earn

⚠️ Lifecycle status: TRANSITIONING - TVL dropped 55.2% over 90 days

## Project Overview

- Project: Trevee Earn (`trevee-earn`)
- Website: [https://rings.money/](https://rings.money/)
- Lifecycle: transitioning (Tier 1, transitioning)
- Generated: 2026-06-13T21:04:14.993Z
- Pipeline run: v2-pipeline-2026-06-13-e4a349-f8ad
- Chains: ethereum, plasma, sonic
- Contract surface: 29 unique implementations (67 raw deployments)
- DeFi Llama TVL: $999,845.47
- On-chain TVL (included contracts): $583,067,801.41
- TVL by chain: Ethereum $494,076,384.39 | Plasma $81,745,549.15 | Sonic $7,245,867.87

## Project Description

Trevee/Rings is a USD and ETH meta-stablecoin and yield product focused on yield for stakers, Sonic DeFi liquidity, and lockers. Its native surface should be distinguished from external integrations and upstream assets: fToken, Pool, and BoringVault-style components may be Trevee/Rings-native where ownership is verified, while Aave ATokens, Frax, Morpho, and other third-party protocol contracts should not be described as Trevee-issued or counted as native Trevee contract surface without supporting evidence.

### Architecture

All contracts belong to a single product family, sharing upgradeable proxy infrastructure for governance and modularity. Core lending and vault contracts interact through tokenized positions, with proxies managing implementation upgrades across the system.

## Audit Coverage Summary

- Verified implementations audited: 0/28 (0.0%)
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 29
- Raw deployments: 67
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $583,067,801.41
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [transitioning]. ASD of $583,067,801.41 represents exposure in a protocol with transitioning activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (28)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| fToken | token | plasma | 4 deployments: ethereum `0x5c20b5...cedd18`; ethereum `0x6a29a4...605c5b`; ethereum `0x9fb7b4...251b33`; plasma [`0x1dd4b1...2ed27b`](./contracts/plasma-9745/0x1dd4b13fcae900c60a350589be8052959d2ed27b/) | ⚠️ Unaudited |
| StakeToken | token | ethereum | [`0x1a88df...c1885d`](./contracts/ethereum-1/0x1a88df1cfe15af22b3c4c783d4e6f7f9e0c1885d/) | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | 6 deployments: ethereum [`0x238789...d4086a`](./contracts/ethereum-1/0x23878914efe38d27c4d67ab83ed1b93a74d4086a/); ethereum `0x32a626...9a4259`; ethereum `0x4d5f47...c514e8`; ethereum `0x98c23e...e16f5c`; sonic `0x578ee1...cd11c6`; sonic `0xe18ab8...1ece96` | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | 9 deployments: ethereum [`0x3bce5c...4c7812`](./contracts/ethereum-1/0x3bce5cb273f0f148010bbea2470e7b5df84c7812/); ethereum `0xbb30e7...32bfbd`; ethereum `0xd3dce7...9b97ae`; sonic [`0x3bce5c...4c7812`](./contracts/sonic-146/0x3bce5cb273f0f148010bbea2470e7b5df84c7812/); sonic `0x455d5f...f85265`; sonic `0x4d85ba...a932ba`; sonic `0xbb30e7...32bfbd`; sonic `0xd08510...5948d0`; sonic `0xd3dce7...9b97ae` | ⚠️ Unaudited |
| WFRAXTokenOFTUpgradeable | token | sonic | [`0x64445f...4e561a`](./contracts/sonic-146/0x64445f0aecc51e94ad52d8ac56b7190e764e561a/) | ⚠️ Unaudited |
| PoolV3 | core_logic | ethereum | [`0xff9499...81244b`](./contracts/ethereum-1/0xff94993fa7ea27efc943645f95adb36c1b81244b/) | ⚠️ Unaudited |
| BoringOnChainQueue | unknown | ethereum | 7 deployments: ethereum [`0x375448...1be720`](./contracts/ethereum-1/0x3754480db8b3e607fbe125697eb496a44a1be720/); ethereum `0x555f4d...fb7957`; sonic [`0x375448...1be720`](./contracts/sonic-146/0x3754480db8b3e607fbe125697eb496a44a1be720/); sonic `0x5448a6...39d8cc`; sonic `0x555f4d...fb7957`; sonic `0x65b6af...90e133`; sonic `0x6df97e...8b6ef3` | ⚠️ Unaudited |
| FraxOFTUpgradeable | unknown | sonic | 4 deployments: sonic [`0x3ec384...7fde45`](./contracts/sonic-146/0x3ec3849c33291a9ef4c5db86de593eb4a37fde45/); sonic `0x43edd7...5a9050`; sonic `0x90581e...cf7927`; sonic `0xeed9de...8c1483` | ⚠️ Unaudited |
| FrxUSD | unknown | ethereum | [`0xcacd6f...586e29`](./contracts/ethereum-1/0xcacd6fd266af91b8aed52accc382b4e165586e29/) | ⚠️ Unaudited |
| FrxUSDOFTUpgradeable | unknown | sonic | [`0x80eede...d600df`](./contracts/sonic-146/0x80eede496655fb9047dd39d9f418d5483ed600df/) | ⚠️ Unaudited |
| GhoToken | token | ethereum | [`0x40d16f...ae6c2f`](./contracts/ethereum-1/0x40d16fc0246ad3160ccc09b8d0d3a2cd28ae6c2f/) | ⚠️ Unaudited |
| LayerZeroTeller | core_logic | ethereum | 4 deployments: ethereum [`0x31a5a9...18f5b8`](./contracts/ethereum-1/0x31a5a9f60dc3d62fa5168352caf0ee05aa18f5b8/); ethereum `0x358cfa...2c776a`; sonic [`0x31a5a9...18f5b8`](./contracts/sonic-146/0x31a5a9f60dc3d62fa5168352caf0ee05aa18f5b8/); sonic `0x358cfa...2c776a` | ⚠️ Unaudited |
| MetaMorpho | unknown | ethereum | 3 deployments: ethereum [`0x2371e1...740618`](./contracts/ethereum-1/0x2371e134e3455e0593363cbf89d3b6cf53740618/); ethereum `0xbeef01...2a64cb`; ethereum `0xd63070...d33a3d` | ⚠️ Unaudited |
| MintedERC20 | token | sonic | [`0x50c42d...f2634b`](./contracts/sonic-146/0x50c42deacd8fc9773493ed674b675be577f2634b/) | ⚠️ Unaudited |
| PlUsdCustomAggregatorFeed | unknown | plasma | [`0x4718e6...e9a7d3`](./contracts/plasma-9745/0x4718e64c12cae76552696934f0b346cfc1e9a7d3/) | ⚠️ Unaudited |
| PlUsdDataFeed | unknown | plasma | [`0x2b3f35...683432`](./contracts/plasma-9745/0x2b3f3514867cbccfadc80121297bb8088c683432/) | ⚠️ Unaudited |
| PlUsdDepositVault | core_logic | plasma | [`0x2b690c...1b0615`](./contracts/plasma-9745/0x2b690cab819a815732544aeb422474efdc1b0615/) | ⚠️ Unaudited |
| PlUsdRedemptionVaultWithSwapper | adapter | plasma | [`0x24e49d...f6bd75`](./contracts/plasma-9745/0x24e49d2ad8f0bcd0cf7f2a5ab560ca4319f6bd75/) | ⚠️ Unaudited |
| SfrxUSD | unknown | ethereum | [`0xcf62f9...c9c5b6`](./contracts/ethereum-1/0xcf62f905562626cfcdd2261162a51fd02fc9c5b6/) | ⚠️ Unaudited |
| SFrxUSDOFTUpgradeable | unknown | sonic | [`0x5bff88...c070c0`](./contracts/sonic-146/0x5bff88ca1442c2496f7e475e9e7786383bc070c0/) | ⚠️ Unaudited |
| SplUsdCustomAggregatorFeed | unknown | plasma | [`0xfe5ae6...a59566`](./contracts/plasma-9745/0xfe5ae64f5ba6a45b9267a5ba274620539fa59566/) | ⚠️ Unaudited |
| SplUsdDataFeed | unknown | plasma | [`0xaa24ba...d84455`](./contracts/plasma-9745/0xaa24baba4da60b2aeaf80b1db07b0a4a7fd84455/) | ⚠️ Unaudited |
| SplUsdDepositVault | core_logic | plasma | [`0x4ef9ff...84093f`](./contracts/plasma-9745/0x4ef9ff56162bd3cb5073fb20dbd355c59084093f/) | ⚠️ Unaudited |
| SplUsdRedemptionVaultWithSwapper | adapter | plasma | [`0x69ecab...30ae50`](./contracts/plasma-9745/0x69ecab6aa7bdfddd99def0891c0317076430ae50/) | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | core_logic | sonic | 3 deployments: sonic [`0x49aceb...cc6562`](./contracts/sonic-146/0x49acebf8f0f79e1ecb0fd47d684dadec81cc6562/); sonic `0x5e3902...60dae0`; sonic `0x825254...e1f4a9` | ⚠️ Unaudited |
| Voter | unknown | sonic | 3 deployments: sonic [`0x43739b...55fa05`](./contracts/sonic-146/0x43739b96b19ae7c2e0d80be7832325846f55fa05/); sonic `0xb84194...469337`; sonic `0xc31c4b...1ee7c3` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | sonic | 3 deployments: sonic [`0x0966ca...5bb86b`](./contracts/sonic-146/0x0966cae7338518961c2d35493d3eb481a75bb86b/); sonic `0x1ec2b9...e3a578`; sonic `0x7585d9...5afa9e` | ⚠️ Unaudited |
| Wrapper | unknown | sonic | 3 deployments: sonic [`0x9fb76f...494206`](./contracts/sonic-146/0x9fb76f7ce5fceaa2c42887ff441d46095e494206/); sonic `0xdb58c4...10c866`; sonic `0xe8a41c...f37c47` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | sonic | `0x8f1b9c...f16250` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| plasma | [`0x1dd4b1...2ed27b`](./contracts/plasma-9745/0x1dd4b13fcae900c60a350589be8052959d2ed27b/) | fToken | token | $435,725,063.56 | Verified native implementation with $435,725,063.56 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1a88df...c1885d`](./contracts/ethereum-1/0x1a88df1cfe15af22b3c4c783d4e6f7f9e0c1885d/) | StakeToken | token | $110,491,532.87 | Verified native implementation with $110,491,532.87 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3bce5c...4c7812`](./contracts/ethereum-1/0x3bce5cb273f0f148010bbea2470e7b5df84c7812/) | BoringVault | core_logic | $884,031.82 | Verified native implementation with $884,031.82 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xff9499...81244b`](./contracts/ethereum-1/0xff94993fa7ea27efc943645f95adb36c1b81244b/) | PoolV3 | core_logic | $82.40 | Verified native implementation with $82.40 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x375448...1be720`](./contracts/ethereum-1/0x3754480db8b3e607fbe125697eb496a44a1be720/) | BoringOnChainQueue | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcacd6f...586e29`](./contracts/ethereum-1/0xcacd6fd266af91b8aed52accc382b4e165586e29/) | FrxUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x50c42d...f2634b`](./contracts/sonic-146/0x50c42deacd8fc9773493ed674b675be577f2634b/) | MintedERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcf62f9...c9c5b6`](./contracts/ethereum-1/0xcf62f905562626cfcdd2261162a51fd02fc9c5b6/) | SfrxUSD | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x49aceb...cc6562`](./contracts/sonic-146/0x49acebf8f0f79e1ecb0fd47d684dadec81cc6562/) | TellerWithMultiAssetSupport | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x43739b...55fa05`](./contracts/sonic-146/0x43739b96b19ae7c2e0d80be7832325846f55fa05/) | Voter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0966ca...5bb86b`](./contracts/sonic-146/0x0966cae7338518961c2d35493d3eb481a75bb86b/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x9fb76f...494206`](./contracts/sonic-146/0x9fb76f7ce5fceaa2c42887ff441d46095e494206/) | Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 12 |
| upstream | 4 |
| standard_library | 8 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
