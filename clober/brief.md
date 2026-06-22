# Agentic Audit Brief: Clober

## Project Overview

- Project: Clober (`clober`)
- Website: [https://clober.io](https://clober.io)
- Lifecycle: active (Tier 0, 56.2% below peak)
- Generated: 2026-06-21T14:10:05.804Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: base
- Contract surface: 7 unique implementations (8 raw deployments)
- DeFi Llama TVL: $516,460.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Clober is a decentralized exchange protocol that provides on-chain liquidity infrastructure, including a liquidity vault for concentrated liquidity provision and a market factory for creating trading markets.

### Architecture

The Liquidity Vault family relies on the BookManager for governance and may interact with markets created by the V1 MarketFactory. Both families share the Clober DEX ecosystem but operate as distinct components with no direct on-chain dependency visible in the contract surface.

## Contract Surface Quality

- Indexed contracts: 29; live-surface contracts included: 8 (7 live, 1 unknown).
- Excluded by liveness: 7 inactive, 14 singleton, 0 uninitialized.
- Deployment units: 0/7 live.
- Detected codebases: none
- Dependencies extracted: 8; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/3 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 7
- Raw deployments: 8
- Audits discovered: 8
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-02 (fresh)
- Staleness: 1 fresh, 4 aging, 3 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 66.7% | 2024-11 |
| HickupHH | Tier 2 | 1 | 33.3% | 2026-02 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BookManager | governance | base | n/a | [`0x8ca3a6...380112`](./contracts/base-8453/0x8ca3a6f4a6260661fcb9a25584c796a1fa380112/) | ✅ Audited |
| Controller | governance | base | n/a | [`0x2610dc...520bca`](./contracts/base-8453/0x2610dc1f2e625e57f07b0ce17152b0f4c6520bca/) | ✅ Audited |
| Minter | operational_periphery | base | n/a | 2 deployments: base [`0x2092a5...0c59d1`](./contracts/base-8453/0x2092a58c47f3444c82871ecdd5ea1e96c80c59d1/); base `0xc8f98f...5f098f` | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x000000...64c133` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x6657d1...be8ccc` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x976f96...cd1efd` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0xc23995...3e5ccc` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Clober_Rebalancer_v03.pdf](https://github.com/clober-dex/clober-rebalancer/blob/master/audits/Clober_Rebalancer_v03.pdf) | unknown | Audit | 2024-07 | aging | Direct | contract_name | 0 | n/a |
| [Clober_V2.pdf](https://github.com/clober-dex/v2-core/blob/master/audits/Clober_V2.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | 2 | high |
| [Trust Security Audit report PDF](https://docs.clober.io/assets/files/Clober_Liquidity_Vault_v2_Audit_Report_by_Trust_Security-7d8bcf5e7f6b488122f7974aef1d70c7.pdf) | yAudit | Audit | 2024-12 | aging | Direct | contract_name | 0 | n/a |
| [HickupHH Audit report PDF 2025](https://docs.clober.io/assets/files/2025_1_Clober_LiquidityVault-50ac1ebac2c19b9449389bcdf1c788bf.pdf) | HickupHH | Audit | 2025-01 | aging | Direct | contract_name | 2 | high |
| [HickupHH Audit report PDF 2026](https://docs.clober.io/assets/files/2026_4_Clober_LiquidityVault-a2cb42bf934d68038d8d46230bd6615f.pdf) | HickupHH | Audit | 2026-02 | fresh | Direct | contract_name | 0 | n/a |
| [Audit report PDF](https://docs.clober.io/assets/files/Clober_V2-fc545ee25635e5ef6d3a73c0991461eb.pdf) | unknown | Audit | 2024-02 | stale | Direct | contract_name | 2 | high |
| [Audit report PDF](https://docs.clober.io/assets/files/SpearbitDAO2023Feb-a7fe0c644f3989e3de617b7a3158ed5d.pdf) | Spearbit | Audit | 2023-02 | stale | Direct | contract_name | 0 | n/a |
| [Audit report PDF](https://docs.clober.io/assets/files/Clober_v2_Cairo_audit_report-790707b7dc1d8bd4063539b47ada493b.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=39

Zero-match audit list:

- [12920] Clober_Rebalancer_v03.pdf
- [12922] Trust Security Audit report PDF
- [12924] HickupHH Audit report PDF 2026
- [12926] Audit report PDF

Fork inheritance lineage and inherited audits are included when available.
