# Agentic Audit Brief: BYDFi

## Project Overview

- Project: BYDFi (`bydfi`)
- Website: [https://www.bydfi.com/en](https://www.bydfi.com/en)
- Lifecycle: active (Tier 0, 46.3% below peak)
- Generated: 2026-06-12T06:42:02.182Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-d6af
- Chains: ethereum
- Contract surface: 1 unique implementations (2 raw deployments)
- DeFi Llama TVL: $72,147,103.65
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

BYDFi is a centralized cryptocurrency exchange offering spot trading, futures/derivatives, copy trading, trading bots, and fiat access. The covered on-chain contract surface is limited to an Ethereum Gnosis Safe SafeProxy wallet used for custody and operational fund management, and does not represent the full BYDFi exchange or reserve/TVL surface across Ethereum, Bitcoin, and Ripple.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 2
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

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Safe | unknown | ethereum | 2 deployments: ethereum [`0x41675c...c7461a`](./contracts/ethereum-1/0x41675c099f32341bf84bfc5382af534df5c7461a/); ethereum `0x845dfa...d5acd4` | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
