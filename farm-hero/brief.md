# Agentic Audit Brief: Farm Hero

⚠️ Lifecycle status: UNKNOWN - TVL dropped 1.4% over 90 days

## Project Overview

- Project: Farm Hero (`farm-hero`)
- Lifecycle: unknown (Tier 0, 92.4% below peak)
- Generated: 2026-06-19T19:52:31.649Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: bsc, polygon
- Contract surface: 3 unique implementations (4 raw deployments)
- DeFi Llama TVL: $5,096.40
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 357; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 128 inactive, 225 singleton, 0 uninitialized.
- Deployment units: 0/87 live.
- Detected codebases: uniswap-v2
- Dependencies extracted: 2; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 0/3 (0.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 4
- Audits discovered: 2
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Staleness: 0 fresh, 0 aging, 2 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [unknown]. ASD of n/a represents exposure in a protocol with unknown activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| PancakePair | unknown | bsc | n/a | 2 deployments: bsc [`0x35bc50...1a0622`](./contracts/bsc-56/0x35bc504e05fa91f17552a9c3a6a2e7e9651a0622/); bsc `0x4bcaa3...b55cc2` | ⚠️ Unaudited |
| UniswapV2Pair | unknown | polygon | n/a | [`0x46489f...246e73`](./contracts/polygon-137/0x46489f825f11d7473d20279699b108acaa246e73/) | ⚠️ Unaudited |
| WaultSwapPair | unknown | polygon | n/a | [`0x4bd5df...b878e1`](./contracts/polygon-137/0x4bd5df4300b7c5309cb1a0143e4a6d0184b878e1/) | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-FarmHero-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-FarmHero-v1.0.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | contract_name | 0 | n/a |
| [DL audit link](https://skynet.certik.com/projects/farmhero) | CertiK | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 3 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=12

Zero-match audit list:

- [13113] PeckShield-Audit-Report-FarmHero-v1.0.pdf
- [13114] DL audit link

Fork inheritance lineage and inherited audits are included when available.
