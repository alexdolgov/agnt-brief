# Agentic Audit Brief: Enosys

## Project Overview

- Project: Enosys (`enosys`)
- Website: [https://enosys.global](https://enosys.global)
- Lifecycle: active (Tier 0, 81.3% below peak)
- Generated: 2026-06-10T23:06:07.555Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-22cc
- Chains: ethereum
- Contract surface: 2 unique implementations (4 raw deployments)
- DeFi Llama TVL: $26,899,011.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Enosys is a multi-chain DeFi ecosystem primarily centered on Flare and Songbird, with additional activity across other supported chains. Its product surface includes DEX/AMM liquidity, farms and yield products, loans/collateralized debt positions, bridge functionality, NFTs, governance/APYCloud, and supporting infrastructure. The currently listed Ethereum contracts represent only a small, incomplete subset of the project surface and should not be treated as project-wide Enosys coverage without mapping the non-Ethereum product contracts.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 4
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

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| StandardToken | token | ethereum | [`0x4a220e...254675`](./contracts/ethereum-1/0x4a220e6096b25eadb88358cb44068a3248254675/) | ⚠️ Unaudited |
| WrapDepositRedeem | unknown | ethereum | 3 deployments: ethereum [`0x37aca9...b68970`](./contracts/ethereum-1/0x37aca97a99d1b4260a5e9821d0ef14947fb68970/); ethereum `0x893676...162c51`; ethereum `0xb39026...d9b1e2` | ⚠️ Unaudited |

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
| ethereum | [`0x4a220e...254675`](./contracts/ethereum-1/0x4a220e6096b25eadb88358cb44068a3248254675/) | StandardToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37aca9...b68970`](./contracts/ethereum-1/0x37aca97a99d1b4260a5e9821d0ef14947fb68970/) | WrapDepositRedeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
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
