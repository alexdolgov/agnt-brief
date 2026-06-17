# Agentic Audit Brief: Stable Jack

## Project Overview

- Project: Stable Jack (`stable-jack`)
- Website: [https://www.stablejack.xyz](https://www.stablejack.xyz)
- Lifecycle: active (Tier 0, 85.7% below peak)
- Generated: 2026-06-17T07:00:49.854Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: avalanche, sonic
- Contract surface: 28 unique implementations (63 raw deployments)
- DeFi Llama TVL: $1,230,578.00
- On-chain TVL (included contracts): $76,842,217.26
- TVL by chain: Avalanche $76,829,444.38 | Sonic $12,772.88

## Project Description

Stable Jack is a DeFi protocol focused on markets for trading yield, volatility, and points to help users increase or manage exposure to assets. Its observed on-chain components include vault, wrapper, and staking-token contracts, but these should be treated as implementation infrastructure rather than the full product identity.

### Architecture

Stable Jack V2 builds upon V1 by introducing more sophisticated token wrappers and vaults, while V1 contracts remain as legacy infrastructure. Both families share proxy patterns and likely interact with common oracles and registries, though V2's core contracts (e.g., BoringVault) are distinct from V1's bridged token.

## Contract Surface Quality

- Indexed contracts: 368; live-surface contracts included: 63 (63 live, 0 unknown).
- Excluded by liveness: 287 inactive, 18 singleton, 0 uninitialized.
- Deployment units: 4/23 live.
- Detected codebases: none
- Unverified dependencies: 14/38.

## Audit Coverage Summary

- Verified implementations audited: 0/17 (0.0%)
- Verified + Unaudited implementations: 17
- Verified by bytecode match: 0
- Unverified implementations: 11
- Unique implementations: 28
- Raw deployments: 63
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $76,842,217.26
- Latest audit: 2024-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (17)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakedAvUSDV2 | token | avalanche | n/a | [`0x06d47f...72219e`](./contracts/avalanche-43114/0x06d47f3fb376649c3a9dafe069b3d6e35572219e/) | ⚠️ Unaudited |
| OSVault | core_logic | sonic | unit-30398 | [`0xa3c0ec...180186`](./contracts/sonic-146/0xa3c0eca00d2b76b4d1f170b0ab3fdea16c180186/) | ⚠️ Unaudited |
| TokenWrapper | token | sonic | unit-30400 | [`0xb27f55...3e3c8f`](./contracts/sonic-146/0xb27f555175e67783ba16f11de3168f87693e3c8f/) | ⚠️ Unaudited |
| AirdropDistributor | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x244c88...05a831`](./contracts/sonic-146/0x244c88a7f5e11b092acd29f0033972d05e05a831/); sonic `0xc49182...9c124c` | ⚠️ Unaudited |
| AirdropReclaimer | operational_periphery | sonic | n/a | [`0x5db8d9...5d261a`](./contracts/sonic-146/0x5db8d98ed02a3b8c2781ab0b80f00cd2b75d261a/) | ⚠️ Unaudited |
| BoringVault | core_logic | avalanche | n/a | [`0xdf788a...f52f67`](./contracts/avalanche-43114/0xdf788ad40181894da035b827cdf55c523bf52f67/) | ⚠️ Unaudited |
| DistributionSwapper | adapter | sonic | n/a | 16 deployments: sonic [`0x05d61a...bfee01`](./contracts/sonic-146/0x05d61aca7111e177ca0a03e7145f342494bfee01/); sonic `0x14cedd...227230`; sonic `0x1bc06e...d86e52`; sonic `0x324a04...64527c`; sonic `0x3692b1...28d3a6`; sonic `0x3a15cc...4b53eb`; sonic `0x4cba4a...c338fd`; sonic `0x4ce11a...e7fb29`; sonic `0x58d02d...df52b2`; sonic `0x61b9bf...54dd5b`; sonic `0x633ff2...7b3b83`; sonic `0x9a7d08...19cf7b`; sonic `0xa55d93...891248`; sonic `0xa9d889...b67eb3`; sonic `0xb8c5b4...6b8b5d`; sonic `0xed801d...8678c5` | ⚠️ Unaudited |
| JackTokenBridged | operational_periphery | sonic | n/a | [`0x9d549c...102e36`](./contracts/sonic-146/0x9d549c39e5e1a0e7ef41d4b7d74c49f976102e36/) | ⚠️ Unaudited |
| OSonic | unknown | sonic | unit-30399 | [`0xb1e256...f8a794`](./contracts/sonic-146/0xb1e25689d55734fd3fffc939c4c3eb52dff8a794/) | ⚠️ Unaudited |
| OSonicVaultCore | core_logic | sonic | n/a | [`0xd66afa...836cf3`](./contracts/sonic-146/0xd66afaa7fe071162d055b3cc703cc1eaed836cf3/) | ⚠️ Unaudited |
| OSonicZapper | adapter | sonic | n/a | [`0xe25a2b...2fab21`](./contracts/sonic-146/0xe25a2b256ffb3ad73678d5e80de8d2f6022fab21/) | ⚠️ Unaudited |
| PoolBoosterFactorySwapxDouble | registry | sonic | n/a | [`0x840081...5a3b49`](./contracts/sonic-146/0x840081c97256d553a8f234d469d797b9535a3b49/) | ⚠️ Unaudited |
| RewardsDistributor | operational_periphery | sonic | n/a | 15 deployments: sonic [`0x0ab6d0...1de1d3`](./contracts/sonic-146/0x0ab6d071af5b692c88baddd1f6e4f3ad5c1de1d3/); sonic `0x266c10...6e80b6`; sonic `0x29dafa...c8057f`; sonic `0x485eab...a784bd`; sonic `0x66df6a...27d7ed`; sonic `0x7545dd...8fb931`; sonic `0x7b949a...1c33b5`; sonic `0x8329d2...8f85e9`; sonic `0x87c165...cfde21`; sonic `0x9981a5...8333f5`; sonic `0x9987a6...6638af`; sonic `0xa10466...3b11d7`; sonic `0xadeeb0...9f3ec0`; sonic `0xee1e11...145177`; sonic `0xfc7d3e...e4094a` | ⚠️ Unaudited |
| Router | adapter | sonic | n/a | 2 deployments: sonic [`0x10c490...30a829`](./contracts/sonic-146/0x10c490921916e6d2d38535e63080d54e7e30a829/); sonic `0x4d6223...8dc9e0` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | n/a | 2 deployments: avalanche [`0x698c34...5e715e`](./contracts/avalanche-43114/0x698c34bad17193af7e1b4eb07d1309ff6c5e715e/); avalanche `0xbb640e...41b697` | ⚠️ Unaudited |
| VotingEscrow | operational_periphery | sonic | n/a | 2 deployments: sonic [`0x0966ca...5bb86b`](./contracts/sonic-146/0x0966cae7338518961c2d35493d3eb481a75bb86b/); sonic `0x1ec2b9...e3a578` | ⚠️ Unaudited |
| Wrapper | unknown | sonic | n/a | 3 deployments: sonic [`0x9fb76f...494206`](./contracts/sonic-146/0x9fb76f7ce5fceaa2c42887ff441d46095e494206/); sonic `0xdb58c4...10c866`; sonic `0xe8a41c...f37c47` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (11)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0x2c3585ad9f052b12578a474beab0b0cf438e5a00) | proxy | avalanche | unit-30412 | `0xf01069...6ca440` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x50a68c...b7739a` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x5220ff...8ea29e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x67952c...483d70` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xc9ec89...a1675e` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xd3d5e4...624ed7` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xe59c17...814f64` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0xf22f28...4b13cc` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x013b34...6e3273` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0x7aa5c7...4c17a1` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | n/a | `0xa8460b...5aa6f6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [aUSD_SC_Final_Audit_Report.pdf](https://github.com/Credshields/audit-reports/blob/master/aUSD_SC_Final_Audit_Report.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0x06d47f...72219e`](./contracts/avalanche-43114/0x06d47f3fb376649c3a9dafe069b3d6e35572219e/) | StakedAvUSDV2 | token | $76,829,444.38 | Verified native implementation with $76,829,444.38 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xa3c0ec...180186`](./contracts/sonic-146/0xa3c0eca00d2b76b4d1f170b0ab3fdea16c180186/) | OSVault | core_logic | $12,617.96 | Verified native implementation with $12,617.96 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x244c88...05a831`](./contracts/sonic-146/0x244c88a7f5e11b092acd29f0033972d05e05a831/) | AirdropDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x5db8d9...5d261a`](./contracts/sonic-146/0x5db8d98ed02a3b8c2781ab0b80f00cd2b75d261a/) | AirdropReclaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdf788a...f52f67`](./contracts/avalanche-43114/0xdf788ad40181894da035b827cdf55c523bf52f67/) | BoringVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x05d61a...bfee01`](./contracts/sonic-146/0x05d61aca7111e177ca0a03e7145f342494bfee01/) | DistributionSwapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x9d549c...102e36`](./contracts/sonic-146/0x9d549c39e5e1a0e7ef41d4b7d74c49f976102e36/) | JackTokenBridged | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xb1e256...f8a794`](./contracts/sonic-146/0xb1e25689d55734fd3fffc939c4c3eb52dff8a794/) | OSonic | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xd66afa...836cf3`](./contracts/sonic-146/0xd66afaa7fe071162d055b3cc703cc1eaed836cf3/) | OSonicVaultCore | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0xe25a2b...2fab21`](./contracts/sonic-146/0xe25a2b256ffb3ad73678d5e80de8d2f6022fab21/) | OSonicZapper | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x840081...5a3b49`](./contracts/sonic-146/0x840081c97256d553a8f234d469d797b9535a3b49/) | PoolBoosterFactorySwapxDouble | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0ab6d0...1de1d3`](./contracts/sonic-146/0x0ab6d071af5b692c88baddd1f6e4f3ad5c1de1d3/) | RewardsDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x10c490...30a829`](./contracts/sonic-146/0x10c490921916e6d2d38535e63080d54e7e30a829/) | Router | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0966ca...5bb86b`](./contracts/sonic-146/0x0966cae7338518961c2d35493d3eb481a75bb86b/) | VotingEscrow | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x9fb76f...494206`](./contracts/sonic-146/0x9fb76f7ce5fceaa2c42887ff441d46095e494206/) | Wrapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 16 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2961] aUSD_SC_Final_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
