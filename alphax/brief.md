# Agentic Audit Brief: AlphaX

## Project Overview

- Project: AlphaX (`alphax`)
- Website: [https://alphax.com/](https://alphax.com/)
- Lifecycle: active (Tier 0, 12.5% below peak)
- Generated: 2026-06-10T20:25:57.043Z
- Pipeline run: v2-pipeline-2026-06-10-b79301-df6b
- Chains: arbitrum, ethereum
- Contract surface: 1 unique implementations (4 raw deployments)
- DeFi Llama TVL: $1,486,770.27
- On-chain TVL (included contracts): $218,199.40
- TVL by chain: Ethereum $218,199.40

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 1 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 4
- Audits discovered: 1
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $218,199.40
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
| DEXVaultV1 | core_logic | ethereum | 4 deployments: ethereum [`0x3afa86...81428e`](./contracts/ethereum-1/0x3afa86022a76e8ca6db1b530a93e33de2081428e/); ethereum `0xec0377...a7e1e1`; arbitrum [`0x3afa86...81428e`](./contracts/arbitrum-42161/0x3afa86022a76e8ca6db1b530a93e33de2081428e/); arbitrum `0xec0377...a7e1e1` | ⚠️ Unaudited |

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
| [AlphaX Audit final.pdf](https://github.com/AlphaX-Protocol/AlphaX-Protocol-Contract/blob/master/Audit-Report/AlphaX%20Audit%20final.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3afa86...81428e`](./contracts/ethereum-1/0x3afa86022a76e8ca6db1b530a93e33de2081428e/) | DEXVaultV1 | core_logic | $218,199.40 | Verified native implementation with $218,199.40 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

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

- [3060] AlphaX Audit final.pdf

Fork inheritance lineage and inherited audits are included when available.
