# Agentic Audit Brief: Trevee Earn

⚠️ Lifecycle status: TRANSITIONING - TVL dropped 37.2% over 90 days

## Project Overview

- Project: Trevee Earn (`trevee-earn`)
- Website: [https://rings.money/](https://rings.money/)
- Lifecycle: transitioning (Tier 1, transitioning)
- Generated: 2026-05-25T05:04:47.535Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum, plasma, sonic
- Contract surface: 29 unique implementations (82 raw deployments)
- DeFi Llama TVL: $1,149,746.72
- On-chain TVL (included contracts): $582,358,083.64
- TVL by chain: Ethereum $494,043,079.39 | Plasma $81,745,549.15 | Sonic $6,569,455.10

## Project Description

Trevee Earn is a yield aggregation protocol that pools user deposits into lending markets and vault strategies to generate optimized returns. It issues interest-bearing tokens (ATokens, fTokens) representing user shares and employs upgradeable proxy patterns for modularity and governance.

### Architecture

All contracts belong to a single product family, sharing upgradeable proxy infrastructure for governance and modularity. Core lending and vault contracts interact through tokenized positions, with proxies managing implementation upgrades across the system.

## Audit Coverage Summary

- Verified implementations audited: 0/28 (0.0%)
- Verified + Unaudited implementations: 28
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 29
- Raw deployments: 82
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $582,358,083.64
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [transitioning]. ASD of $582,358,083.64 represents exposure in a protocol with transitioning activity.

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
| MintedERC20 | token | sonic | 20 deployments: sonic [`0x0fdbce...4be3fd`](./contracts/sonic-146/0x0fdbce271bea0d9819034cd09021e0bbe94be3fd/); sonic `0x1a08d5...b336e6`; sonic `0x2fb960...e2eea1`; sonic `0x309c92...79ebc7`; sonic `0x48540d...6fc335`; sonic `0x50c42d...f2634b`; sonic `0x53f753...81e698`; sonic `0x616478...8f6194`; sonic `0x6c7d5e...f354f9`; sonic `0x7cb451...e8edb3`; sonic `0x7fff4c...ccd270`; sonic `0x8f1cbc...c6544c`; sonic `0x9605cc...abf386`; sonic `0x9cacb5...7e8c6b`; sonic `0xa3b9ec...52ce0b`; sonic `0xb026e4...8269fd`; sonic `0xb5f0ed...186fac`; sonic `0xc6915d...38030c`; sonic `0xf1ef7d...71a74b`; sonic `0xffe007...b864c8` | ⚠️ Unaudited |
| WFRAXTokenOFTUpgradeable | token | sonic | [`0x64445f...4e561a`](./contracts/sonic-146/0x64445f0aecc51e94ad52d8ac56b7190e764e561a/) | ⚠️ Unaudited |
| PoolV3 | core_logic | ethereum | [`0xff9499...81244b`](./contracts/ethereum-1/0xff94993fa7ea27efc943645f95adb36c1b81244b/) | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | 2 deployments: ethereum [`0xbb30e7...32bfbd`](./contracts/ethereum-1/0xbb30e76d9bb2cc9631f7fc5eb8e87b5aff32bfbd/); sonic [`0xbb30e7...32bfbd`](./contracts/sonic-146/0xbb30e76d9bb2cc9631f7fc5eb8e87b5aff32bfbd/) | ⚠️ Unaudited |
| Bridge | operational_periphery | sonic | 4 deployments: sonic [`0x0b3fe0...f2107c`](./contracts/sonic-146/0x0b3fe0c10c050270a9bc34271987989b6cf2107c/); sonic `0x0c3443...b4322d`; sonic `0x9ef762...c895b3`; sonic `0xb90371...336387` | ⚠️ Unaudited |
| CircleTokenAdapter | adapter | sonic | 4 deployments: sonic [`0x25c049...e400f4`](./contracts/sonic-146/0x25c049cadb9bb7cea794dba3b58dfdb1ece400f4/); sonic `0x6f0444...e28d6a`; sonic `0xe6dcd5...c3bc8a`; sonic `0xfac12d...33c59c` | ⚠️ Unaudited |
| CircleTokenOwner | token | sonic | [`0x11c224...322545`](./contracts/sonic-146/0x11c224fe2be939718eccc560c4887ef05c322545/) | ⚠️ Unaudited |
| FraxOFTUpgradeable | unknown | sonic | 4 deployments: sonic [`0x3ec384...7fde45`](./contracts/sonic-146/0x3ec3849c33291a9ef4c5db86de593eb4a37fde45/); sonic `0x43edd7...5a9050`; sonic `0x90581e...cf7927`; sonic `0xeed9de...8c1483` | ⚠️ Unaudited |
| FrxUSD | unknown | ethereum | [`0xcacd6f...586e29`](./contracts/ethereum-1/0xcacd6fd266af91b8aed52accc382b4e165586e29/) | ⚠️ Unaudited |
| FrxUSDOFTUpgradeable | unknown | sonic | [`0x80eede...d600df`](./contracts/sonic-146/0x80eede496655fb9047dd39d9f418d5483ed600df/) | ⚠️ Unaudited |
| GhoToken | token | ethereum | [`0x40d16f...ae6c2f`](./contracts/ethereum-1/0x40d16fc0246ad3160ccc09b8d0d3a2cd28ae6c2f/) | ⚠️ Unaudited |
| Liquidator | operational_periphery | sonic | 2 deployments: sonic [`0x332a62...f9a926`](./contracts/sonic-146/0x332a6211b594fefed5a5d779e51dacd145f9a926/); sonic `0xd8c562...558402` | ⚠️ Unaudited |
| MessageBus | operational_periphery | sonic | 2 deployments: sonic [`0x4af339...fa0885`](./contracts/sonic-146/0x4af3397fb17c35ce31bc6e006d60c60136fa0885/); sonic `0xb5b371...925308` | ⚠️ Unaudited |
| MetaMorpho | unknown | ethereum | 3 deployments: ethereum [`0x2371e1...740618`](./contracts/ethereum-1/0x2371e134e3455e0593363cbf89d3b6cf53740618/); ethereum `0xbeef01...2a64cb`; ethereum `0xd63070...d33a3d` | ⚠️ Unaudited |
| MPTProofVerifier | periphery | sonic | 2 deployments: sonic [`0x6aba65...e3036a`](./contracts/sonic-146/0x6aba65dc38e6ae9ed0d95eb67bf1b524c1e3036a/); sonic `0xd2f1e9...5d29a9` | ⚠️ Unaudited |
| NativeTokenAdapter | adapter | sonic | 2 deployments: sonic [`0x4c5683...ad6c6c`](./contracts/sonic-146/0x4c5683a9ede3c8b4fb5ad2e980bbf88652ad6c6c/); sonic `0x6d9d62...e91a1e` | ⚠️ Unaudited |
| ProxyAdmin | governance | sonic | [`0x90409d...874be3`](./contracts/sonic-146/0x90409d5b57e77ca394167b781cfc79a2a0874be3/) | ⚠️ Unaudited |
| SfrxUSD | unknown | ethereum | [`0xcf62f9...c9c5b6`](./contracts/ethereum-1/0xcf62f905562626cfcdd2261162a51fd02fc9c5b6/) | ⚠️ Unaudited |
| SFrxUSDOFTUpgradeable | unknown | sonic | [`0x5bff88...c070c0`](./contracts/sonic-146/0x5bff88ca1442c2496f7e475e9e7786383bc070c0/) | ⚠️ Unaudited |
| StateOracle | operational_periphery | sonic | 2 deployments: sonic [`0x836664...28f2c3`](./contracts/sonic-146/0x836664b0c0cb29b7877bccf94159cc996528f2c3/); sonic `0xb1703a...9c5df9` | ⚠️ Unaudited |
| TetherTokenAdapter | adapter | sonic | 2 deployments: sonic [`0x188042...53d4e4`](./contracts/sonic-146/0x1880425307124ce875aac3e9eb47b5a87453d4e4/); sonic `0x667e06...aa304a` | ⚠️ Unaudited |
| TetherTokenV2 | token | sonic | 2 deployments: sonic [`0x604782...a5eaf9`](./contracts/sonic-146/0x6047828dc181963ba44974801ff68e538da5eaf9/); sonic `0xc80268...252fad` | ⚠️ Unaudited |
| TokenPairs | registry | sonic | 4 deployments: sonic [`0x134e4c...00ba94`](./contracts/sonic-146/0x134e4c207ad5a13549de1ebf8d43c1f49b00ba94/); sonic `0x9171ac...f13d34`; sonic `0xabf0c9...5ebf25`; sonic `0xe34e68...c2d315` | ⚠️ Unaudited |
| UpdateManager | governance | sonic | 4 deployments: sonic [`0x107140...7ee6d4`](./contracts/sonic-146/0x1071405a4736535c545580064039a235827ee6d4/); sonic `0x1d3c99...176bb7`; sonic `0x7160ec...e4ee53`; sonic `0x9a59b2...6f3b01` | ⚠️ Unaudited |
| ValidatorsRegistry | registry | sonic | 2 deployments: sonic [`0x12727d...d3f447`](./contracts/sonic-146/0x12727d4169a42a9b5e3ecb11a6d2c95553d3f447/); sonic `0xbcba1f...ae28d9` | ⚠️ Unaudited |

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
| sonic | [`0x6aba65...e3036a`](./contracts/sonic-146/0x6aba65dc38e6ae9ed0d95eb67bf1b524c1e3036a/) | MPTProofVerifier | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x836664...28f2c3`](./contracts/sonic-146/0x836664b0c0cb29b7877bccf94159cc996528f2c3/) | StateOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x107140...7ee6d4`](./contracts/sonic-146/0x1071405a4736535c545580064039a235827ee6d4/) | UpdateManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 7 |
| standard_library | 13 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
