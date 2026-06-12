# Agentic Audit Brief: Asseto AoABT

## Project Overview

- Project: Asseto AoABT (`asseto-aoabt`)
- Website: [https://asseto.finance/product](https://asseto.finance/product)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-12T05:27:17.126Z
- Pipeline run: v2-pipeline-2026-06-12-c31370-dba8
- Chains: avalanche
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $24,281,398.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Asseto AoABT is an Asseto-operated real-world asset token/product backed 1:1 by Class C Shares of an underlying fund, with subscribe and redeem functionality. DefiLlama tracks AoABT on Avalanche and HashKey Chain; currently only one Avalanche proxy contract is identified in the mapped contract surface, so the HashKey Chain deployment surface remains missing or unmapped.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
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

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0xee23c70af1a8d1a27dbb478d5c861e3da8b704bd) | proxy | avalanche | `0xb2ea3e...5834e2` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xee23c7...b704bd` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audits](https://asseto.gitbook.io/asseto/technical-documentation/audits.md) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [11541] Audits

Fork inheritance lineage and inherited audits are included when available.
