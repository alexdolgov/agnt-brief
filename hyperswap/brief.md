# Agentic Audit Brief: HyperSwap

## Project Overview

- Project: HyperSwap (`hyperswap`)
- Website: [https://app.hyperswap.exchange/#/swap?referral=defillama](https://app.hyperswap.exchange/#/swap?referral=defillama)
- Lifecycle: active (Tier 0, 87.9% below peak)
- Generated: 2026-06-10T20:59:06.102Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: hyperliquid
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $17,368,006.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

HyperSwap is a Hyperliquid/HyperEVM-focused decentralized exchange and interface for token swaps, liquidity management, and token launches. Its product set includes HyperSwap V2 as an official DEX product line, with Terminal treated as an interface rather than a yield, staking, vault aggregation, or cross-chain rewards product.

### Architecture

HyperSwap Terminal serves as the primary user-facing product, integrating multiple yield strategies and liquidity pools. HyperSwap V3 appears to be a separate, evolving product line that may eventually share infrastructure or tokenomics with the Terminal, but currently operates independently.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Staleness: 0 fresh, 3 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | hyperliquid | `0x038327...cfadb8` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x0b7ce1...34c9fc` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x70f57e...2a8d65` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0x9f35ae...76e28e` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | `0xf535d7...ab01fe` | ❓ Unverified |

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
| needs_review | 5 |

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
