# Agentic Audit Brief: Armitage by Wintermute

## Project Overview

- Project: Armitage by Wintermute (`armitage-by-wintermute`)
- Website: [https://armitage.wintermute.com](https://armitage.wintermute.com)
- Lifecycle: active (Tier 0, TVL trajectory)
- Generated: 2026-06-10T20:58:57.746Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: ethereum
- Contract surface: 1 unique implementations (2 raw deployments)
- DeFi Llama TVL: $51,051,101.46
- On-chain TVL (included contracts): $51,808,883.67
- TVL by chain: Ethereum $51,808,883.67

## ⚠️ Limited Contract Surface

This brief covers only 1 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Armitage by Wintermute is Wintermute's onchain vault curation product for yield-bearing DeFi vaults. It curates and manages risk for depositors, currently including Prime and Select USDC vaults on Ethereum.

## Audit Coverage Summary

- Verified implementations audited: 0/1 (0.0%)
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 1
- Raw deployments: 2
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $51,808,883.67
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
| VaultV2 | core_logic | ethereum | 2 deployments: ethereum [`0x5dc53a...71ff2b`](./contracts/ethereum-1/0x5dc53a23adc9f2bed98de6f59f7f309a7c71ff2b/); ethereum `0xa2eaad...7d68cd` | ⚠️ Unaudited |

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
| ethereum | [`0x5dc53a...71ff2b`](./contracts/ethereum-1/0x5dc53a23adc9f2bed98de6f59f7f309a7c71ff2b/) | VaultV2 | core_logic | $51,808,883.67 | Verified native implementation with $51,808,883.67 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

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
