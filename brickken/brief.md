# Agentic Audit Brief: Brickken

## Project Overview

- Project: Brickken (`brickken`)
- Website: [https://www.brickken.com](https://www.brickken.com)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-17T07:00:33.331Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: base, ethereum, polygon
- Contract surface: 3 unique implementations (5 raw deployments)
- DeFi Llama TVL: $42,197,681.59
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Brickken is an institutional digital asset and real-world asset (RWA) tokenization platform. It provides infrastructure for no-code asset issuance, compliance workflows such as KYC/KYB, investor onboarding, token offerings, white-label token stores or portals, marketplace-style functionality, and lifecycle management across multiple asset classes.

### Architecture

The STOFactoryManagedUpgradeable acts as a central registry and factory, deploying and managing STOTokenManagedUpgradeable and STOEscrowManagedUpgradeable instances via proxy patterns. UpgradeableBeaconToken and UpgradeableBeaconEscrow serve as beacon proxies that point to the respective implementation contracts, enabling upgradeability across all deployed tokens and escrows.

## Contract Surface Quality

- Indexed contracts: 65; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 38 inactive, 22 singleton, 0 uninitialized.
- Deployment units: 0/11 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 5
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026 (fresh)
- Staleness: 1 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| P2PHandler | unknown | base | n/a | 2 deployments: polygon `0x8ed660...0c5800`; base [`0x89b281...c7ba3b`](./contracts/base-8453/0x89b281df2702f19189fdd73f1d7865707bc7ba3b/) | ⚠️ Unaudited |
| STOEscrowManagedUpgradeable | operational_periphery | polygon | n/a | 2 deployments: polygon [`0xc6c230...bcde61`](./contracts/polygon-137/0xc6c230fa8f40022de997727436fae01caabcde61/); base `0xf6b623...079977` | ⚠️ Unaudited |
| WBrickken | unknown | ethereum | n/a | [`0xf6b623...079977`](./contracts/ethereum-1/0xf6b6235f6725f84457f5d6f0b0aa3c962a079977/) | ⚠️ Unaudited |

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
| [skynet.certik.com/projects/brickken](https://skynet.certik.com/projects/brickken) | CertiK | Audit | 2022-12 | stale | Direct | contract_name | 0 | n/a |
| [69e0f131a3c7f0b39a48f86d_BRICKKEN_AI 2026_signed.pdf](https://cdn.prod.website-files.com/680a2df699085611f5f9221a/69e0f131a3c7f0b39a48f86d_BRICKKEN_AI%202026_signed.pdf) | unknown | Audit | 2026 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=4

Zero-match audit list:

- [11550] skynet.certik.com/projects/brickken
- [12093] 69e0f131a3c7f0b39a48f86d_BRICKKEN_AI 2026_signed.pdf

Fork inheritance lineage and inherited audits are included when available.
