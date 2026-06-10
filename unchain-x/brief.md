# Agentic Audit Brief: Unchain X

## Project Overview

- Project: Unchain X (`unchain-x`)
- Website: [https://unchainx.io](https://unchainx.io)
- Lifecycle: active (Tier 0, 63.4% below peak)
- Generated: 2026-06-10T20:59:18.486Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: bsc
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $1,208,578.29
- On-chain TVL (included contracts): $35,109,981.13
- TVL by chain: Bsc $35,109,981.13

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Unchain X is a BSC AMM/DEX, apparently using a Uniswap V3-style concentrated liquidity model for token swapping and liquidity provision. The current contract inventory only includes the UNX token address and should not be treated as the complete protocol surface; additional DEX, staking/launchpad, liquidity mining/farming, governance/timelock, and related protocol contracts appear to be missing or unknown.

## Audit Coverage Summary

- Verified implementations audited: 1/1 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 2
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-09 (aging)
- Staleness: 0 fresh, 1 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| CertiK | Tier 2 | 1 | 100.0% | 2024-09 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UNXToken | token | bsc | [`0x4f0572...bdea6f`](./contracts/bsc-56/0x4f0572ca0bf96f5ae17b7062d97cea3f35bdea6f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [DL audit link](https://skynet.certik.com/projects/unchain-x) | CertiK | Audit | 2024-09 | aging | Direct | contract_name | 1 | high |
| [Launchpad security audit](https://github.com/UNCHAIN-X-Labs/launchpad-staking-contract/blob/main/audit/PeckShield-Audit-Report-UnchainX-v1.0.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Zero-match audit list:

- [3136] Launchpad security audit

Fork inheritance lineage and inherited audits are included when available.
