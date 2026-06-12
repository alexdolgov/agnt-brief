# Agentic Audit Brief: HashKey Global

## Project Overview

- Project: HashKey Global (`hashkey-global`)
- Website: [https://www.hashkey.com](https://www.hashkey.com)
- Lifecycle: active (Tier 0, 87.3% below peak)
- Generated: 2026-06-12T19:26:03.650Z
- Pipeline run: v2-pipeline-2026-06-12-546062-9988
- Chains: ethereum, scroll
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $13,434,700.79
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

HashKey Global is a centralized exchange (CEX) that provides trading and custody services for digital assets. The reviewed on-chain surface consists of two unverified Scroll addresses with unknown roles and an unconfirmed relationship to HashKey exchange operations; these addresses should not be described as a verified deposit/withdrawal or token-management system without further evidence.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 3
- Raw deployments: 3
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
| HSKImplementationV1 | unknown | ethereum | [`0x557683...cf647a`](./contracts/ethereum-1/0x557683a5fa469d00516dee63fbf345c450cf647a/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | scroll | `0x08c974...6cab76` | ❓ Unverified |
| UnnamedContract | unknown | scroll | `0xdd2613...479cdb` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x557683...cf647a`](./contracts/ethereum-1/0x557683a5fa469d00516dee63fbf345c450cf647a/) | HSKImplementationV1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
