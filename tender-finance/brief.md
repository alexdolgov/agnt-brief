# Agentic Audit Brief: Tender Finance

⚠️ Lifecycle status: DECLINING - TVL changed 30.5% over 90 days

## Project Overview

- Project: Tender Finance (`tender-finance`)
- Lifecycle: declining (Tier 0, 96.6% below peak)
- Generated: 2026-05-25T01:18:09.990Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: arbitrum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $1,292,330.57
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Tender Finance is a lending protocol on Arbitrum One that allows users to supply and borrow assets. It appears to be a fork of Compound, providing algorithmic money markets.

### Architecture

The protocol consists of a single product family with one known contract, TND, which likely serves as the governance or utility token for the lending market.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| TND | unknown | arbitrum | [`0xc47d97...d2798c`](./contracts/arbitrum-42161/0xc47d9753f3b32aa9548a7c3f30b6aec3b2d2798c/) | ⚠️ Unaudited |

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
| [DL audit link](http://odex.vip/?sign=6100531bc2e5bf8b94dd7a7b87b53577) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xc47d97...d2798c`](./contracts/arbitrum-42161/0xc47d9753f3b32aa9548a7c3f30b6aec3b2d2798c/) | TND | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

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

- [3118] DL audit link

Fork inheritance lineage and inherited audits are included when available.
