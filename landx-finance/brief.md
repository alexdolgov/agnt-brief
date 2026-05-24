# Agentic Audit Brief: LandX Finance

## Project Overview

- Project: LandX Finance (`landx-finance`)
- Website: [https://landx.fi](https://landx.fi)
- Lifecycle: active (Tier 0, 21.6% below peak)
- Generated: 2026-05-24T17:27:36.025Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $1,770,562.70
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

LandX Finance tokenizes real-world agricultural assets, allowing users to invest in farmland and earn yield from crop rents. It provides on-chain exposure to physical farmland through its CToken and supporting infrastructure.

### Architecture

CToken represents tokenized farmland shares, OraclePrices provides price feeds for asset valuation, and RentFoundation likely manages rental income distribution, all deployed together as a cohesive unit.

## Audit Coverage Summary

- Verified implementations audited: 3/3 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 1
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Quantstamp | Tier 2 | 3 | 100.0% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| CToken | token | ethereum | [`0x44c7ac...473ac9`](./contracts/ethereum-1/0x44c7aca9c406ded532748194da0d691808473ac9/) | ✅ Audited |
| OraclePrices | operational_periphery | ethereum | [`0xf49a08...da8784`](./contracts/ethereum-1/0xf49a0863d532e6036d693fbacfd2417aebda8784/) | ✅ Audited |
| RentFoundation | unknown | ethereum | [`0xc1b911...09c285`](./contracts/ethereum-1/0xc1b9119ea8f8164be56eb15674107a8d1b09c285/) | ✅ Audited |

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
| [DL audit link](https://certificate.quantstamp.com/full/land-x-finance.pdf) | Quantstamp | Audit | 2023-02 | stale | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=3

Fork inheritance lineage and inherited audits are included when available.
