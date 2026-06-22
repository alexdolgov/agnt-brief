# Agentic Audit Brief: Carina

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Carina (`carina`)
- Website: [https://app.carina.finance/](https://app.carina.finance/)
- Lifecycle: unknown (Tier 0, TVL trajectory)
- Generated: 2026-06-19T09:45:21.556Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: sei
- Contract surface: 2 unique implementations (2 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Carina is a DEX aggregator on Sei that optimizes trade execution by routing orders across multiple liquidity sources. It uses a settlement contract to execute swaps and a native token flow mechanism to manage token transfers efficiently.

### Architecture

The Settlement contract orchestrates swaps by interacting with the VaultRelayer for liquidity access and the NativeTokenFlow for handling native token transfers. The Authenticator proxy manages access control, while Permit2 provides gasless token approvals, supporting the core swap flow.

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 2 (1 live, 1 unknown).
- Excluded by liveness: 0 inactive, 6 singleton, 0 uninitialized.
- Deployment units: 0/3 live.
- Detected codebases: none
- Unverified dependencies: 2/3.

## Audit Coverage Summary

- Verified implementations audited: 1/2 (50.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-10 (fresh)
- Staleness: 2 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 50.0% | 2025-10 |
| Zellic | Tier 2 | 1 | 50.0% | 2025-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VaultRelayer | core_logic | sei | n/a | [`0xe077a0...f8dafb`](./contracts/sei-1329/0xe077a0eda893f0f9cbd37a5942dece86f4f8dafb/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Permit2 | unknown | sei | n/a | [`0xb95257...cee578`](./contracts/sei-1329/0xb952578f3520ee8ea45b7914994dcf4702cee578/) | ⚠️ Unaudited |

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
| [038_CODESPECT_CARINA.pdf](https://github.com/CODESPECT-security/audit-reports/blob/main/038_CODESPECT_CARINA.pdf) | unknown | Audit | 2025-10 | fresh | Direct | contract_name | 1 | high |
| [Carina Smart Contracts - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Carina%20Smart%20Contracts%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2025-10 | fresh | Direct | contract_name | 1 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/carina-finance/carina-docs/db68b3858579371607e8423bbd4cc70d867072a3/privacy_policy.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=12

Zero-match audit list:

- [12887] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
