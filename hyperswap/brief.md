# Agentic Audit Brief: HyperSwap

## Project Overview

- Project: HyperSwap (`hyperswap`)
- Website: [https://app.hyperswap.exchange/#/swap?referral=defillama](https://app.hyperswap.exchange/#/swap?referral=defillama)
- Lifecycle: active (Tier 0, 85.8% below peak)
- Generated: 2026-06-12T14:55:07.632Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-769a
- Chains: hyperliquid
- Contract surface: 30 unique implementations (32 raw deployments)
- DeFi Llama TVL: $14,501,247.00
- On-chain TVL (included contracts): $3,680,878.40
- TVL by chain: Hyperliquid $3,680,878.40

## Project Description

HyperSwap is a Hyperliquid/HyperEVM-focused decentralized exchange and interface for token swaps, liquidity management, and token launches. Its product set includes HyperSwap V2 as an official DEX product line, with Terminal treated as an interface rather than a yield, staking, vault aggregation, or cross-chain rewards product.

### Architecture

HyperSwap Terminal serves as the primary user-facing product, integrating multiple yield strategies and liquidity pools. HyperSwap V3 appears to be a separate, evolving product line that may eventually share infrastructure or tokenomics with the Terminal, but currently operates independently.

## Audit Coverage Summary

- Verified implementations audited: 0/11 (0.0%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 19
- Unique implementations: 30
- Raw deployments: 32
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $3,680,878.40
- Latest audit: 2025-06 (aging)
- Staleness: 0 fresh, 3 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| HyperswapV3Pool | core_logic | hyperliquid | 3 deployments: hyperliquid [`0x337b56...070c30`](./contracts/hyperliquid-999/0x337b56d87a6185cd46af3ac2cdf03cbc37070c30/); hyperliquid `0x3a36b0...0b43e7`; hyperliquid `0xe712d5...0e23c9` | ⚠️ Unaudited |
| HuskeyInterfaceMulticall | unknown | hyperliquid | [`0xe8571f...9b97b4`](./contracts/hyperliquid-999/0xe8571fd6629da6e488f7bbd83e729c20fa9b97b4/) | ⚠️ Unaudited |
| HyperswapPair | unknown | hyperliquid | [`0xa19ea0...98a7ca`](./contracts/hyperliquid-999/0xa19ea099afed76d1cf5f84c6c863365e5798a7ca/) | ⚠️ Unaudited |
| HyperswapRouter | adapter | hyperliquid | [`0xb4a9c4...21240a`](./contracts/hyperliquid-999/0xb4a9c4e6ea8e2191d2fa5b380452a634fb21240a/) | ⚠️ Unaudited |
| HyperswapV3Factory | registry | hyperliquid | [`0xb1c0fa...2602e3`](./contracts/hyperliquid-999/0xb1c0fa0b789320044a6f623cfe5ebda9562602e3/) | ⚠️ Unaudited |
| MixedRouteQuoterV1 | unknown | hyperliquid | [`0xec8f3d...423516`](./contracts/hyperliquid-999/0xec8f3d08dd762e935fb914bd2b2e788e5e423516/) | ⚠️ Unaudited |
| Permit2 | unknown | hyperliquid | [`0x000000...c78ba3`](./contracts/hyperliquid-999/0x000000000022d473030f116ddee9f6b43ac78ba3/) | ⚠️ Unaudited |
| SwapRouter | adapter | hyperliquid | [`0x4e2960...6b094d`](./contracts/hyperliquid-999/0x4e2960a8cd19b467b82d26d83facb0fae26b094d/) | ⚠️ Unaudited |
| TickLens | unknown | hyperliquid | [`0x8f1ea9...b2975a`](./contracts/hyperliquid-999/0x8f1ea97ffdfeda3be7eabfed95ef49f909b2975a/) | ⚠️ Unaudited |
| V3Migrator | unknown | hyperliquid | [`0x820ec8...d78cf8`](./contracts/hyperliquid-999/0x820ec81e0556f2f94f4725d358b399c11cd78cf8/) | ⚠️ Unaudited |
| WHYPE9 | unknown | hyperliquid | [`0x555555...555555`](./contracts/hyperliquid-999/0x5555555555555555555555555555555555555555/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (19)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x6d99e7f6747af2cdbb5164b6dd50e40d4fde1e77) | proxy | hyperliquid | `0x6d99e7...de1e77` | ❓ Unverified |
| Proxy (impl: 0x6eda206207c09e5428f281761ddc0d300851fbc8) | unknown | hyperliquid | `0x6eda20...51fbc8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x038327...cfadb8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x03a918...a45c7c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x093de4...b53661` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x0b7ce1...34c9fc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x19967b...3ccf6e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x4a6907...9c8e98` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x56dee1...44bb15` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x70f57e...2a8d65` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x724412...ea1c48` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x744c89...5c96dc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x9f35ae...76e28e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xb4610e...b222e0` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xb58388...dcad46` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xd86d0f...7da315` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xefabeb...afd229` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xf535d7...ab01fe` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xf86571...0b8139` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [spaces/4EuEeIhLFXp6HBAjMQG5/uploads/4pNbf8mA0rmNGAHYnvV1/PeckShield-Audit-Report-HyperSwapX-V3-v1.0.pdf](https://3308851984-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F4EuEeIhLFXp6HBAjMQG5%2Fuploads%2F4pNbf8mA0rmNGAHYnvV1%2FPeckShield-Audit-Report-HyperSwapX-V3-v1.0.pdf?alt=media&token=b72a08ea-2b62-46bc-be95-9f8cd6c6e41b) | peckshield | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [spaces/4EuEeIhLFXp6HBAjMQG5/uploads/h0ceiQ0YLlomWA0lvQm5/PeckShield-Audit-Report-HyperSwapX-V2-v1.0.pdf](https://3308851984-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F4EuEeIhLFXp6HBAjMQG5%2Fuploads%2Fh0ceiQ0YLlomWA0lvQm5%2FPeckShield-Audit-Report-HyperSwapX-V2-v1.0.pdf?alt=media&token=006075ec-06f9-4ecd-9b24-c8547afb5c14) | peckshield | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [spaces/4EuEeIhLFXp6HBAjMQG5/uploads/r6TksVPyZO1QVyB1VR67/PeckShield-Audit-Report-DelegatedPositionVault-v1.0.pdf](https://3308851984-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F4EuEeIhLFXp6HBAjMQG5%2Fuploads%2Fr6TksVPyZO1QVyB1VR67%2FPeckShield-Audit-Report-DelegatedPositionVault-v1.0.pdf?alt=media&token=ab435ee1-335e-4bc5-aa75-02f14814c7bb) | peckshield | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 30 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11495] spaces/4EuEeIhLFXp6HBAjMQG5/uploads/4pNbf8mA0rmNGAHYnvV1/PeckShield-Audit-Report-HyperSwapX-V3-v1.0.pdf
- [11496] spaces/4EuEeIhLFXp6HBAjMQG5/uploads/h0ceiQ0YLlomWA0lvQm5/PeckShield-Audit-Report-HyperSwapX-V2-v1.0.pdf
- [11497] spaces/4EuEeIhLFXp6HBAjMQG5/uploads/r6TksVPyZO1QVyB1VR67/PeckShield-Audit-Report-DelegatedPositionVault-v1.0.pdf

Fork inheritance lineage and inherited audits are included when available.
