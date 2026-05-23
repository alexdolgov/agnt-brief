# Agentic Audit Brief: Singularity Finance

⚠️ Lifecycle status: DECLINING - TVL dropped 90.5% over 90 days

## Project Overview

- Project: Singularity Finance (`singularity-finance`)
- Website: [https://singularityfinance.ai/](https://singularityfinance.ai/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-05-23T16:24:13.433Z
- Pipeline run: v2-pipeline-2026-05-22-eff36e-2ebb
- Chains: ethereum
- Contract surface: 1 unique implementations (1 raw deployments)
- DeFi Llama TVL: $5,364,404.02
- On-chain TVL (included contracts): $2,686,081.32
- TVL by chain: Ethereum $2,686,081.32

## Project Description

Singularity Finance is a yield-focused protocol on Ethereum, centered around its native SFI token. The protocol appears to offer yield generation opportunities, likely through staking or farming mechanisms involving the SFI token.

### Architecture

The protocol consists of a single product family built around the SFI token. All functionality is encapsulated within this token contract, with no additional supporting contracts identified.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 1
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,686,081.32
- Latest audit: 2026-03 (fresh)
- Staleness: 1 fresh, 1 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $2,686,081.32 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SFItoken | token | ethereum | [`0x7636d8...b386bf`](./contracts/ethereum-1/0x7636d8722fdf7cd34232a915e48e96aa3eb386bf/) | ⚠️ Unaudited |

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
| [DL audit link](https://paladinsec.co/projects/singularitydao) | Paladin | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [DL audit link](https://hacken.io/audits/singularitydao) | Hacken | Audit | 2026-03 | fresh | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x7636d8...b386bf`](./contracts/ethereum-1/0x7636d8722fdf7cd34232a915e48e96aa3eb386bf/) | SFItoken | token | $2,686,081.32 | Verified native implementation with $2,686,081.32 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

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
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2478] DL audit link
- [2479] DL audit link

Fork inheritance lineage and inherited audits are included when available.
