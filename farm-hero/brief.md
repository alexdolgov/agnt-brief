# Agentic Audit Brief: Farm Hero

## Project Overview

- Project: Farm Hero (`farm-hero`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:13.755Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-2d9c
- Chains: bsc, polygon
- Contract surface: 3 unique implementations (4 raw deployments)
- DeFi Llama TVL: $4,979.54
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 4
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

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
| [PeckShield-Audit-Report-FarmHero-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-FarmHero-v1.0.pdf) | PeckShield | Audit | 2021-07 | stale | Direct | n/a | 0 | n/a |
| [skynet.certik.com/projects/farmhero](https://skynet.certik.com/projects/farmhero) | CertiK | Audit | 2021-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x35bc50...1a0622`](./contracts/bsc-56/0x35bc504e05fa91f17552a9c3a6a2e7e9651a0622/) | PancakePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x4bd5df...b878e1`](./contracts/polygon-137/0x4bd5df4300b7c5309cb1a0143e4a6d0184b878e1/) | WaultSwapPair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 1 |
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

- [13113] PeckShield-Audit-Report-FarmHero-v1.0.pdf
- [13114] skynet.certik.com/projects/farmhero

Fork inheritance lineage and inherited audits are included when available.
