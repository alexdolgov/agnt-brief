# Agentic Audit Brief: Crypto.com Liquid Staking

## Project Overview

- Project: Crypto.com Liquid Staking (`crypto.com-liquid-staking`)
- Website: [https://crypto.com/staking](https://crypto.com/staking)
- Lifecycle: active (Tier 0, 88.9% below peak)
- Generated: 2026-06-12T12:50:48.284Z
- Pipeline run: v2-pipeline-2026-06-12-6a3052-fc52
- Chains: cronos, ethereum
- Contract surface: 2 unique implementations (3 raw deployments)
- DeFi Llama TVL: $20,023,846.22
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Crypto.com Liquid Staking is tracked as liquid staking receipt tokens across Cronos and Solana, including CDCETH for staked ETH and, per DefiLlama, CDCSOL for Solana liquid staking; note that the current homepage may primarily highlight ETH/CDCETH.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 2
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
| LiquidETHV1 | unknown | ethereum | 2 deployments: ethereum [`0x7e772e...669253`](./contracts/ethereum-1/0x7e772ed6e4bfeae80f2d58e4254f6b6e96669253/); ethereum `0xfe18ae...91c38e` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | cronos | `0x7a7c9d...ce3446` | ❓ Unverified |

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
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
