# Agentic Audit Brief: xWin Finance

## Project Overview

- Project: xWin Finance (`xwin-finance`)
- Website: [https://xwin.finance](https://xwin.finance)
- Lifecycle: active (Tier 0, 57.9% below peak)
- Generated: 2026-05-23T13:03:32.541Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: bsc
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $6,174,447.63
- On-chain TVL (included contracts): $1,844,863.40
- TVL by chain: Bsc $1,844,863.40

## Project Description

xWin Finance is a DeFi protocol that offers index-like investment products, allowing users to gain diversified exposure to a basket of crypto assets through a single token. The protocol simplifies portfolio management by providing automated, rule-based strategies.

### Architecture

The project currently consists of a single token contract, with no additional infrastructure or product families identified. All functionality is encapsulated within the XWINToken contract.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $1,844,863.40
- Latest audit: 2023-06 (stale)
- Staleness: 0 fresh, 0 aging, 1 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| XWINToken | token | bsc | [`0xd88ca0...bb5d28`](./contracts/bsc-56/0xd88ca08d8eec1e9e09562213ae83a7853ebb5d28/) | ⚠️ Unaudited |

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
| [DL audit link](https://skynet.certik.com/projects/xwinfinance) | CertiK | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xd88ca0...bb5d28`](./contracts/bsc-56/0xd88ca08d8eec1e9e09562213ae83a7853ebb5d28/) | XWINToken | token | $1,844,863.40 | Verified native implementation with $1,844,863.40 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

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
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2340] DL audit link

Fork inheritance lineage and inherited audits are included when available.
