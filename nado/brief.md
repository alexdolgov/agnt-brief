# Agentic Audit Brief: Nado

## Project Overview

- Project: Nado (`nado`)
- Website: [https://app.nado.xyz?join=sP6or8A](https://app.nado.xyz?join=sP6or8A)
- Lifecycle: active (Tier 0, 13.5% below peak)
- Generated: 2026-06-11T01:17:45.932Z
- Pipeline run: v2-pipeline-2026-06-11-5b3b54-2b99
- Chains: ink
- Contract surface: 22 unique implementations (22 raw deployments)
- DeFi Llama TVL: $54,956,474.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Nado is a decentralized trading protocol on Ink offering Nado Spot and Nado Perps. It uses a CLOB/orderbook trading model with off-chain sequencing and on-chain settlement, supports unified cross-margin for trading, and includes the NLP liquidity vault for protocol liquidity.

### Architecture

Both product families operate on the Ink chain and likely share common infrastructure such as oracles and liquidity pools, though no explicit shared contracts are identified in the provided inventory.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 22
- Unique implementations: 22
- Raw deployments: 22
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
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

### ❓ Unverified (22)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ink | `0x0200c2...8470c1` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x05ec92...65974e` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x09fb49...5b9651` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x1e3818...1a45d0` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x23a283...55cc73` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x3352b2...f54e5d` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x4e859c...67702e` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x59841b...cd4f85` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x60f50f...7fa86f` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x634965...27800e` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x687982...c9dff8` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x698d87...633ac2` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x79cc76...cfeea8` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x8373c3...6994ab` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x8e693b...3743c8` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0x9acdc6...fecf17` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0xbd672f...852b3b` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0xc1cc56...971603` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0xd21810...44c5fe` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0xf8599d...f96da1` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0xf8963f...e1fc0c` | ❓ Unverified |
| UnnamedContract | unknown | ink | `0xfcd947...0907fe` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 22 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
