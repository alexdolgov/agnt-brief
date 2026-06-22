# Agentic Audit Brief: Tristero

⚠️ Lifecycle status: UNKNOWN - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Tristero (`tristero`)
- Website: [https://www.tristero.com/](https://www.tristero.com/)
- Lifecycle: unknown (Tier 0, 87.5% below peak)
- Generated: 2026-06-19T13:30:29.135Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: arbitrum, base, ethereum
- Contract surface: 2 unique implementations (4 raw deployments)
- DeFi Llama TVL: $353.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Tristero is a decentralized derivatives and spot trading protocol that enables users to trade with leverage or spot across multiple chains. It uses escrow contracts to custody collateral and manage trade settlement.

### Architecture

The protocol currently consists of a single product family, Tristero Margin, which relies on escrow contracts deployed on multiple chains. All contracts share the same deployer and are part of a unified margin trading system.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 1; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 4
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-09 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EscrowV4 | operational_periphery | arbitrum | n/a | [`0x270f52...00611c`](./contracts/arbitrum-42161/0x270f529f16a578aad524b94e34f579a51e00611c/) | ⚠️ Unaudited |
| TristeroEscrowV4 | operational_periphery | ethereum | n/a | 3 deployments: ethereum [`0xe40000...471d2e`](./contracts/ethereum-1/0xe400000df2f227133ff74c662c9e935439471d2e/); base [`0xe40000...471d2e`](./contracts/base-8453/0xe400000df2f227133ff74c662c9e935439471d2e/); arbitrum [`0xe40000...471d2e`](./contracts/arbitrum-42161/0xe400000df2f227133ff74c662c9e935439471d2e/) | ⚠️ Unaudited |

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
| [Tristero - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/Tristero%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x270f52...00611c`](./contracts/arbitrum-42161/0x270f529f16a578aad524b94e34f579a51e00611c/) | EscrowV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe40000...471d2e`](./contracts/ethereum-1/0xe400000df2f227133ff74c662c9e935439471d2e/) | TristeroEscrowV4 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [14025] Tristero - Zellic Audit Report.pdf

Fork inheritance lineage and inherited audits are included when available.
