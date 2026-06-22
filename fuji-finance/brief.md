# Agentic Audit Brief: Fuji Finance

## Project Overview

- Project: Fuji Finance (`fuji-finance`)
- Website: [https://fuji.finance/](https://fuji.finance/)
- Lifecycle: active (Tier 0, 94.1% below peak)
- Generated: 2026-06-21T09:46:05.701Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum, fantom
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $144,602.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 2 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 2 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 251; live-surface contracts included: 2 (1 live, 1 unknown).
- Excluded by liveness: 218 inactive, 31 singleton, 0 uninitialized.
- Deployment units: 0/14 live.
- Detected codebases: aave-v2, aave-v3
- Unverified dependencies: 4/33.

## Audit Coverage Summary

- Verified implementations audited: 1/1 (100.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-12 (stale)
- Staleness: 0 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: 100.0% (Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Trail of Bits | Tier 1 | 1 | 100.0% | 2021-10 |
| unknown | Tier 2 | 1 | 100.0% | 2022-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| FujiERC1155 | token | ethereum | n/a | [`0x1cf24e...a95484`](./contracts/ethereum-1/0x1cf24e4ec41da581bee223e1affebb62a5a95484/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | fantom | n/a | `0xb4e2ec...721d70` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Fuji_Securing_2021-07.pdf](https://github.com/Fujicracy/fuji-protocol/blob/main/audits/Fuji_Securing_2021-07.pdf) | unknown | Audit | 2021-07 | stale | Direct | contract_name | 1 | high |
| [Fuji_TrailOfBits_2021-11.pdf](https://github.com/Fujicracy/fuji-protocol/blob/main/audits/Fuji_TrailOfBits_2021-11.pdf) | Trail of Bits | Audit | 2021-10 | stale | Direct | contract_name | 1 | high |
| [2022_11_Fujidao_Labs_OU.pdf](https://github.com/ComposableSecurity/.github/blob/main/reports/2022_11_Fujidao_Labs_OU.pdf) | unknown | Audit | 2022-12 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

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
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=166

Zero-match audit list:

- [13143] 2022_11_Fujidao_Labs_OU.pdf

Fork inheritance lineage and inherited audits are included when available.
