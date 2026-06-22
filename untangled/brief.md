# Agentic Audit Brief: Untangled

## Project Overview

- Project: Untangled (`untangled`)
- Website: [https://untangled.finance/](https://untangled.finance/)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-21T11:44:55.428Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, celo, polygon
- Contract surface: 5 unique implementations (10 raw deployments)
- DeFi Llama TVL: $302,813.00
- On-chain TVL (included contracts): $151,339.17
- TVL by chain: Celo $144,457.18 | Polygon $5,620.50 | Arbitrum $1,261.49

## Project Description

Untangled is a real-world asset (RWA) protocol that tokenizes private credit and other off-chain assets into on-chain structured products. It enables investors to deposit capital into vaults that fund real-world loans, with cash flows and risk managed through securitization pools and note tokens.

### Architecture

All vault families share a common architecture where VaultFactory and ModuleFactory registries deploy and manage vault instances. Cross-chain infrastructure includes shared proxy implementations for securitization, loan kernels, and token factories, enabling consistent asset tokenization and pool management across networks.

## Contract Surface Quality

- Indexed contracts: 74; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 42 inactive, 22 singleton, 0 uninitialized.
- Deployment units: 0/12 live.
- Detected codebases: none
- Unverified dependencies: 1/2.

## Audit Coverage Summary

- Verified implementations audited: 0/4 (0.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 5
- Raw deployments: 10
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $151,339.17
- Latest audit: 2026-03 (fresh)
- Staleness: 1 fresh, 1 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | polygon | n/a | 5 deployments: polygon [`0x02c25a...b38a48`](./contracts/polygon-137/0x02c25ac43ae068d5808b726af720f47b87b38a48/); polygon `0x3f48e0...553e32`; polygon `0xf532b7...3d4c0d`; arbitrum `0x4a3f7d...7d31a9`; celo `0x2a68c9...51343f` | ⚠️ Unaudited |
| Hook | unknown | polygon | n/a | 2 deployments: polygon [`0x48b38b...cf6bff`](./contracts/polygon-137/0x48b38b467ece159c9e149153fce4a53685cf6bff/); polygon `0xfa171a...6a5036` | ⚠️ Unaudited |
| ValuationModule | unknown | polygon | n/a | [`0x10761d...5d72d9`](./contracts/polygon-137/0x10761dbefafe3aac2feaac2a0d0c6148fb5d72d9/) | ⚠️ Unaudited |
| WithdrawModule | operational_periphery | polygon | n/a | [`0xa40173...8393a5`](./contracts/polygon-137/0xa40173bfd57178e748b41ff0d18080b8c18393a5/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon | n/a | `0x0ef0f6...b920f7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Untangled_FInance_Audit_Report.pdf](https://github.com/Verilog-Solutions/.github/blob/main/Audit/Untangle_Protocol_Audit/Untangled_FInance_Audit_Report.pdf) | unknown | Audit | 2024-04 | stale | Direct | contract_name | 0 | n/a |
| [OctoLendBy Runtime Verification](https://strapi-rv-bucket-01.s3.us-east-2.amazonaws.com/Octo_Lend_Report_ba51eb961d.pdf) | Runtime Verification | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |
| [OctoVaultBy Veridise](https://veridise.com/wp-content/uploads/2025/07/VAR-Untangled-250508-vaults-V2.pdf) | Veridise | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x02c25a...b38a48`](./contracts/polygon-137/0x02c25ac43ae068d5808b726af720f47b87b38a48/) | Vault | core_logic | $151,339.17 | Verified native implementation with $151,339.17 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x48b38b...cf6bff`](./contracts/polygon-137/0x48b38b467ece159c9e149153fce4a53685cf6bff/) | Hook | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x10761d...5d72d9`](./contracts/polygon-137/0x10761dbefafe3aac2feaac2a0d0c6148fb5d72d9/) | ValuationModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa40173...8393a5`](./contracts/polygon-137/0xa40173bfd57178e748b41ff0d18080b8c18393a5/) | WithdrawModule | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=15

Zero-match audit list:

- [14062] Untangled_FInance_Audit_Report.pdf
- [14063] OctoLendBy Runtime Verification
- [14064] OctoVaultBy Veridise

Fork inheritance lineage and inherited audits are included when available.
