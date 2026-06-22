# Agentic Audit Brief: Blasterswap

⚠️ Lifecycle status: DECLINING - TVL dropped 14.4% over 90 days

## Project Overview

- Project: Blasterswap (`blasterswap`)
- Website: [https://blasterswap.com/](https://blasterswap.com/)
- Lifecycle: declining (Tier 0, 98.3% below peak)
- Generated: 2026-06-21T11:40:11.568Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: blast
- Contract surface: 3 unique implementations (6 raw deployments)
- DeFi Llama TVL: $302,507.00
- On-chain TVL (included contracts): $2,643.46
- TVL by chain: Blast $2,643.46

## Project Description

Blasterswap is a decentralized exchange and yield protocol on Blast that enables users to provide liquidity and earn yield through vaults. It appears to offer automated yield strategies and token swapping, leveraging Blast's native yield features.

### Architecture

The Vault contracts form the core yield-generating logic, while Andy and Pacmoon appear to be supporting tokens or adapters that interact with the vaults. All contracts are deployed on Blast and share the same deployer cluster, indicating a unified infrastructure.

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Unverified dependencies: 1/4.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 6
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,643.46
- Latest audit: 2024-03 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $2,643.46 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Vault | core_logic | blast | n/a | 3 deployments: blast [`0x013249...a84260`](./contracts/blast-81457/0x013249266842e078999088807033d80531a84260/); blast `0x0464a3...6f6e3f`; blast `0xc52fb7...58c91d` | ⚠️ Unaudited |
| Andy | unknown | blast | n/a | 2 deployments: blast [`0x0ecd76...e9d505`](./contracts/blast-81457/0x0ecd76c73caf3ef7995cb236366f71fae2e9d505/); blast `0xd43d8a...752cf8` | ⚠️ Unaudited |
| Pacmoon | unknown | blast | n/a | [`0x5ffd9e...a29c06`](./contracts/blast-81457/0x5ffd9ebd27f2fcab044c0f0a26a45cb62fa29c06/) | ⚠️ Unaudited |

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
| [AstraSec-AuditReport-BlasterSwap.pdf](https://github.com/blasterswap/blasterswap-core-v2/blob/main/AstraSec-AuditReport-BlasterSwap.pdf) | unknown | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| blast | [`0x013249...a84260`](./contracts/blast-81457/0x013249266842e078999088807033d80531a84260/) | Vault | core_logic | $2,643.46 | Verified native implementation with $2,643.46 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| blast | [`0x5ffd9e...a29c06`](./contracts/blast-81457/0x5ffd9ebd27f2fcab044c0f0a26a45cb62fa29c06/) | Pacmoon | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [12792] AstraSec-AuditReport-BlasterSwap.pdf

Fork inheritance lineage and inherited audits are included when available.
