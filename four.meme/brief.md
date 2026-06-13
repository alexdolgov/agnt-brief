# Agentic Audit Brief: four.meme

## Project Overview

- Project: four.meme (`four.meme`)
- Website: [https://four.meme](https://four.meme)
- Lifecycle: active (Tier 0, 57% below peak)
- Generated: 2026-06-13T04:55:22.061Z
- Pipeline run: v2-pipeline-2026-06-13-546062-8c0a
- Chains: bsc
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $4,621,111.46
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Four.meme is a launchpad protocol on BSC that enables users to create and trade meme tokens. It provides a platform for token launches and initial liquidity events.

### Architecture

The two proxy contracts likely represent the main launchpad logic and a supporting module (e.g., fee handler or token factory), sharing the same product family with no external dependencies.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 5
- Raw deployments: 5
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

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ERC1967Proxy | proxy | bsc | [`0xf251f8...e46034`](./contracts/bsc-56/0xf251f83e40a78868fcfa3fa4599dad6494e46034/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Proxy (impl: 0x57df49f5d8412d05e792c30c023ee974c48a90b5) | proxy | bsc | `0xec4549...33bfbc` | ❓ Unverified |
| Proxy (impl: 0x7f9411ea1a34b0b0d91a54b4776d00e78a329bbf) | proxy | bsc | `0x5c9520...50762b` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x57df49...8a90b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | `0x7f9411...329bbf` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://easy-fight-6a5.notion.site/Salus-Audit-Report-294ce2c0b4e442cb81e090b0232ae243) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2522] DL audit link

Fork inheritance lineage and inherited audits are included when available.
