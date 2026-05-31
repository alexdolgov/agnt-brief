# Agentic Audit Brief: AILayer farm

## Project Overview

- Project: AILayer farm (`ailayer-farm`)
- Website: [https://ailayer.xyz/](https://ailayer.xyz/)
- Lifecycle: active (Tier 0, 89.1% below peak)
- Generated: 2026-05-31T07:04:28.757Z
- Pipeline run: v2-pipeline-2026-05-31-ab6275-1b32
- Chains: bsc
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $76,399,480.65
- On-chain TVL (included contracts): $211,858.71
- TVL by chain: Bsc $211,858.71

## Project Description

AILayer farm is a yield farming protocol on BSC that allows users to stake or farm AILayer tokens to earn rewards.

### Architecture

The protocol consists of a single product family centered around the AILayerToken contract, with no additional infrastructure or shared components identified.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $211,858.71
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
| AILayerToken | token | bsc | [`0x66e3da...442244`](./contracts/bsc-56/0x66e3daa0c86e0ad56302d36af0e7c1ba24442244/) | ⚠️ Unaudited |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x66e3da...442244`](./contracts/bsc-56/0x66e3daa0c86e0ad56302d36af0e7c1ba24442244/) | AILayerToken | token | $211,858.71 | Verified native implementation with $211,858.71 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
