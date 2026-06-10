# Agentic Audit Brief: Trevee Earn

⚠️ Lifecycle status: DECLINING - TVL dropped 37.2% over 90 days

## Project Overview

- Project: Trevee Earn (`trevee-earn`)
- Website: [https://rings.money/](https://rings.money/)
- Lifecycle: declining (Tier 1, transitioning)
- Generated: 2026-06-10T20:59:17.583Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum, plasma, sonic
- Contract surface: 15 unique implementations (29 raw deployments)
- DeFi Llama TVL: $1,146,226.61
- On-chain TVL (included contracts): $582,183,821.34
- TVL by chain: Ethereum $494,043,079.39 | Plasma $81,745,549.15 | Sonic $6,395,192.80

## Project Description

Trevee/Rings is a USD and ETH meta-stablecoin and yield product focused on yield for stakers, Sonic DeFi liquidity, and lockers. Its native surface should be distinguished from external integrations and upstream assets: fToken, Pool, and BoringVault-style components may be Trevee/Rings-native where ownership is verified, while Aave ATokens, Frax, Morpho, and other third-party protocol contracts should not be described as Trevee-issued or counted as native Trevee contract surface without supporting evidence.

### Architecture

All contracts belong to a single product family, sharing upgradeable proxy infrastructure for governance and modularity. Core lending and vault contracts interact through tokenized positions, with proxies managing implementation upgrades across the system.

## Audit Coverage Summary

- Verified implementations audited: 0/14 (0.0%)
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 15
- Raw deployments: 29
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $582,183,821.34
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $582,183,821.34 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| fToken | token | plasma | 4 deployments: ethereum `0x5c20b5...cedd18`; ethereum `0x6a29a4...605c5b`; ethereum `0x9fb7b4...251b33`; plasma [`0x1dd4b1...2ed27b`](./contracts/plasma-9745/0x1dd4b13fcae900c60a350589be8052959d2ed27b/) | ⚠️ Unaudited |
| StakeToken | token | ethereum | [`0x1a88df...c1885d`](./contracts/ethereum-1/0x1a88df1cfe15af22b3c4c783d4e6f7f9e0c1885d/) | ⚠️ Unaudited |
| ATokenInstance | token | ethereum | 6 deployments: ethereum [`0x238789...d4086a`](./contracts/ethereum-1/0x23878914efe38d27c4d67ab83ed1b93a74d4086a/); ethereum `0x32a626...9a4259`; ethereum `0x4d5f47...c514e8`; ethereum `0x98c23e...e16f5c`; sonic `0x578ee1...cd11c6`; sonic `0xe18ab8...1ece96` | ⚠️ Unaudited |
| WFRAXTokenOFTUpgradeable | token | sonic | [`0x64445f...4e561a`](./contracts/sonic-146/0x64445f0aecc51e94ad52d8ac56b7190e764e561a/) | ⚠️ Unaudited |
| PoolV3 | core_logic | ethereum | [`0xff9499...81244b`](./contracts/ethereum-1/0xff94993fa7ea27efc943645f95adb36c1b81244b/) | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | 2 deployments: ethereum [`0xbb30e7...32bfbd`](./contracts/ethereum-1/0xbb30e76d9bb2cc9631f7fc5eb8e87b5aff32bfbd/); sonic [`0xbb30e7...32bfbd`](./contracts/sonic-146/0xbb30e76d9bb2cc9631f7fc5eb8e87b5aff32bfbd/) | ⚠️ Unaudited |
| FraxOFTUpgradeable | unknown | sonic | 4 deployments: sonic [`0x3ec384...7fde45`](./contracts/sonic-146/0x3ec3849c33291a9ef4c5db86de593eb4a37fde45/); sonic `0x43edd7...5a9050`; sonic `0x90581e...cf7927`; sonic `0xeed9de...8c1483` | ⚠️ Unaudited |
| FrxUSD | unknown | ethereum | [`0xcacd6f...586e29`](./contracts/ethereum-1/0xcacd6fd266af91b8aed52accc382b4e165586e29/) | ⚠️ Unaudited |
| FrxUSDOFTUpgradeable | unknown | sonic | [`0x80eede...d600df`](./contracts/sonic-146/0x80eede496655fb9047dd39d9f418d5483ed600df/) | ⚠️ Unaudited |
| GhoToken | token | ethereum | [`0x40d16f...ae6c2f`](./contracts/ethereum-1/0x40d16fc0246ad3160ccc09b8d0d3a2cd28ae6c2f/) | ⚠️ Unaudited |
| MetaMorpho | unknown | ethereum | 3 deployments: ethereum [`0x2371e1...740618`](./contracts/ethereum-1/0x2371e134e3455e0593363cbf89d3b6cf53740618/); ethereum `0xbeef01...2a64cb`; ethereum `0xd63070...d33a3d` | ⚠️ Unaudited |
| MintedERC20 | token | sonic | [`0x50c42d...f2634b`](./contracts/sonic-146/0x50c42deacd8fc9773493ed674b675be577f2634b/) | ⚠️ Unaudited |
| SfrxUSD | unknown | ethereum | [`0xcf62f9...c9c5b6`](./contracts/ethereum-1/0xcf62f905562626cfcdd2261162a51fd02fc9c5b6/) | ⚠️ Unaudited |
| SFrxUSDOFTUpgradeable | unknown | sonic | [`0x5bff88...c070c0`](./contracts/sonic-146/0x5bff88ca1442c2496f7e475e9e7786383bc070c0/) | ⚠️ Unaudited |

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
| ethereum | [`0xff9499...81244b`](./contracts/ethereum-1/0xff94993fa7ea27efc943645f95adb36c1b81244b/) | PoolV3 | core_logic | $82.40 | Verified native implementation with $82.40 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbb30e7...32bfbd`](./contracts/ethereum-1/0xbb30e76d9bb2cc9631f7fc5eb8e87b5aff32bfbd/) | BoringVault | core_logic | $51.75 | Verified native implementation with $51.75 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 2 |
| standard_library | 8 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
