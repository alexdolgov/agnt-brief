# Agentic Audit Brief: Credit Coop

⚠️ Lifecycle status: UNKNOWN - TVL dropped 34.9% over 90 days

## Project Overview

- Project: Credit Coop (`credit-coop`)
- Website: [https://www.creditcoop.xyz/](https://www.creditcoop.xyz/)
- Lifecycle: unknown (Tier 0, 48.9% below peak)
- Generated: 2026-05-23T20:45:49.500Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: base, ethereum
- Contract surface: 2 unique implementations (5 raw deployments)
- DeFi Llama TVL: $4,554,277.04
- On-chain TVL (included contracts): $2,075,800.61
- TVL by chain: Base $2,075,798.49 | Ethereum $2.11

## Project Description

Credit Coop is a decentralized lending protocol that enables real-world asset (RWA) backed loans. It uses lending vaults to pool stablecoins and issue loans, with USDC as the primary settlement token.

### Architecture

The Credit Coop lending vaults rely on the PayFi Vault's USDC tokens as the deposit and loan currency. All vaults interact with the same USDC contracts, sharing a common settlement layer across Ethereum and Base.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 5
- Audits discovered: 3
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,075,800.61
- Latest audit: 2024-09 (aging)
- Staleness: 0 fresh, 2 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of $2,075,800.61 represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| LendingVault | core_logic | base | 3 deployments: ethereum `0x6dacaf...88b623`; base [`0x0cf11a...5fcf9d`](./contracts/base-8453/0x0cf11ac4ea33b6d7274cd7d6e7cea9f3f65fcf9d/); base `0x214699...dc85ce` | ⚠️ Unaudited |
| FiatTokenV2_2 | token | base | 2 deployments: ethereum `0xa0b869...06eb48`; base [`0x833589...a02913`](./contracts/base-8453/0x833589fcd6edb6e08f4c7c32d4f71b54bda02913/) | ⚠️ Unaudited |

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
| [IndexDIMv3AuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexDIMv3AuditReport.md) | unknown | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [IndexIcUSDAuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexIcUSDAuditReport.md) | unknown | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [IndexPRTAuditReport.md](https://github.com/IndexCoop/audits/blob/main/audits/IndexPRTAuditReport.md) | unknown | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x0cf11a...5fcf9d`](./contracts/base-8453/0x0cf11ac4ea33b6d7274cd7d6e7cea9f3f65fcf9d/) | LendingVault | core_logic | $2,075,800.61 | Verified native implementation with $2,075,800.61 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2570] IndexDIMv3AuditReport.md
- [2571] IndexIcUSDAuditReport.md
- [2572] IndexPRTAuditReport.md

Fork inheritance lineage and inherited audits are included when available.
