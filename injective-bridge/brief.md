# Agentic Audit Brief: Injective Bridge

## Project Overview

- Project: Injective Bridge (`injective-bridge`)
- Website: [https://injective.com](https://injective.com)
- Lifecycle: active (Tier 0, 73.3% below peak)
- Generated: 2026-06-12T21:52:29.721Z
- Pipeline run: v2-pipeline-2026-06-12-546062-9d5a
- Chains: ethereum
- Contract surface: 3 unique implementations (6 raw deployments)
- DeFi Llama TVL: $12,354,093.58
- On-chain TVL (included contracts): $2,617.33
- TVL by chain: Ethereum $2,617.33

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 6
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $2,617.33
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| InjectiveToken | token | ethereum | [`0xe28b3b...ceca30`](./contracts/ethereum-1/0xe28b3b32b6c345a34ff64674606124dd5aceca30/) | ⚠️ Unaudited |
| Peggy | unknown | ethereum | 4 deployments: ethereum [`0x100dcb...e6abdc`](./contracts/ethereum-1/0x100dcb8b78c608d148cb207ac3875935dfe6abdc/); ethereum `0x1d3544...524b7d`; ethereum `0xe42719...06fd5c`; ethereum `0xf955c5...bad6f3` | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0x19c003...eaeef7`](./contracts/ethereum-1/0x19c00323cafc23c4d72c1a25f0f78e769deaeef7/) | ⚠️ Unaudited |

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
| ethereum | [`0xe28b3b...ceca30`](./contracts/ethereum-1/0xe28b3b32b6c345a34ff64674606124dd5aceca30/) | InjectiveToken | token | $2,617.33 | Verified native implementation with $2,617.33 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x100dcb...e6abdc`](./contracts/ethereum-1/0x100dcb8b78c608d148cb207ac3875935dfe6abdc/) | Peggy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
