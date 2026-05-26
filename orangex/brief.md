# Agentic Audit Brief: OrangeX

## Project Overview

- Project: OrangeX (`orangex`)
- Website: [https://www.orangex.com](https://www.orangex.com)
- Lifecycle: active (Tier 0, 34.8% below peak)
- Generated: 2026-05-26T15:04:55.481Z
- Pipeline run: v2-pipeline-2026-05-26-695c23-aaf8
- Chains: base, ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $39,839,466.40
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

OrangeX is a centralized exchange (CEX) that issues and manages its own ecosystem tokens, GameBitCoin and GPS, on Ethereum and Base.

### Architecture

Both tokens are deployed from the same deployer address, indicating shared administrative control, but no on-chain infrastructure contracts are present to link them further.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
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

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| GameBitCoin | unknown | ethereum | [`0x19eb66...d17ff7`](./contracts/ethereum-1/0x19eb667fcb458e7321c1eb1c1bf687d9dbd17ff7/) | ⚠️ Unaudited |
| GPS | unknown | base | [`0x0c1dc7...a0dca5`](./contracts/base-8453/0x0c1dc73159e30c4b06170f2593d3118968a0dca5/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | `0x1e8b34...6cad56` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x19eb66...d17ff7`](./contracts/ethereum-1/0x19eb667fcb458e7321c1eb1c1bf687d9dbd17ff7/) | GameBitCoin | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x0c1dc7...a0dca5`](./contracts/base-8453/0x0c1dc73159e30c4b06170f2593d3118968a0dca5/) | GPS | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
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
