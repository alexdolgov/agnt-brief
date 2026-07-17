# Agentic Audit Brief: GumBall Protocol

## Project Overview

- Project: GumBall Protocol (`gumball-protocol`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.124Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: arbitrum
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $235,512.68
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

NFT Marketplace. Structurally: 7 project-authored contract(s) across 1 chain(s); built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 7 (7 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/6 (66.7%)
- Deployed-live implementations: 7 of 7 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/7
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| PeckShield | Tier 2 | 4 | 57.1% | 2022-12 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GBTFactory | unknown | arbitrum | n/a | [`0x040f6b1b3d80c470daf2e28237b332e22bf24d93`](./contracts/arbitrum-42161/0x040f6b1b3d80c470daf2e28237b332e22bf24d93/) | ✅ Audited |
| GNFTFactory | unknown | arbitrum | n/a | [`0x07b4aa89f1ca11175dd1cd0898d8fa5a53014e9a`](./contracts/arbitrum-42161/0x07b4aa89f1ca11175dd1cd0898d8fa5a53014e9a/) | ✅ Audited |
| GumBallFactory | unknown | arbitrum | n/a | [`0x039dda37bed29cd05a02c31f5961056f60ada011`](./contracts/arbitrum-42161/0x039dda37bed29cd05a02c31f5961056f60ada011/) | ✅ Audited |
| XGBTFactory | unknown | arbitrum | n/a | [`0x00df73be2643e2f57cb81ceb5ca11837c3c4ff3a`](./contracts/arbitrum-42161/0x00df73be2643e2f57cb81ceb5ca11837c3c4ff3a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CollectionContract | unknown | arbitrum | n/a | [`0x0031def3a612141ed025a3233366df86b518894b`](./contracts/arbitrum-42161/0x0031def3a612141ed025a3233366df86b518894b/) | ⚠️ Unaudited |
| Multicall | unknown | arbitrum | n/a | [`0x09dc9d209964417018fc302038eaf5ef30097c1c`](./contracts/arbitrum-42161/0x09dc9d209964417018fc302038eaf5ef30097c1c/) | ⚠️ Unaudited |
| Zapper | unknown | arbitrum | n/a | [`0x19c921e19fb2ebb479dfccc80eb33745c9ee9ca1`](./contracts/arbitrum-42161/0x19c921e19fb2ebb479dfccc80eb33745c9ee9ca1/) | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-GumBallV2-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-GumBallV2-v1.0.pdf) | PeckShield | Audit | 2022-12 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x0031def3a612141ed025a3233366df86b518894b`](./contracts/arbitrum-42161/0x0031def3a612141ed025a3233366df86b518894b/) | CollectionContract | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x19c921e19fb2ebb479dfccc80eb33745c9ee9ca1`](./contracts/arbitrum-42161/0x19c921e19fb2ebb479dfccc80eb33745c9ee9ca1/) | Zapper | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=4

Fork inheritance lineage and inherited audits are included when available.
