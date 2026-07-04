# Agentic Audit Brief: Depth

## Project Overview

- Project: Depth (`depth`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.982Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-ae05
- Chains: bsc, heco
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $1,142,204.56
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 7 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 25; live-surface contracts included: 5 (3 live, 2 unknown).
- Excluded by liveness: 20 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 3 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 1 unknown
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
| dCowVault | core_logic | bsc | n/a | [`0x0b28a5...ccefc0`](./contracts/bsc-56/0x0b28a55dbbd6c5ddd4d1d7157361e9d6d0ccefc0/) | ⚠️ Unaudited |
| dDepAlphaVault | core_logic | bsc | n/a | [`0x024f05...1fb69d`](./contracts/bsc-56/0x024f05c70f203fb77f27b00422534cc33e1fb69d/) | ⚠️ Unaudited |
| dDepVenusVault | core_logic | bsc | n/a | [`0x2e128e...88e1a6`](./contracts/bsc-56/0x2e128eb2ee787428307a7b246d02c1801788e1a6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x179e1f...95b7b2` | ❓ Unverified |
| UnnamedContract | unknown | heco | n/a | `0x48c859...895c27` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [skynet.certik.com/projects/depth-token](https://skynet.certik.com/projects/depth-token) | CertiK | Audit | 2021-07 | stale | Direct | n/a | 0 | n/a |
| [www.certik.com/projects/depth-token](https://www.certik.com/projects/depth-token) | CertiK | Audit | 2021-07 | stale | Direct | n/a | 0 | n/a |
| [Depth-Report-022721.6c156aca.pdf](https://depth.fi/static/media/Depth-Report-022721.6c156aca.pdf) | unnamed (Depth 'Audit Firm #01') | Audit | 2021-02 | stale | Direct | n/a | 0 | n/a |
| [Depth-Report2-EN.69622836.pdf](https://www.depth.fi/static/media/Depth-Report2-EN.69622836.pdf) | unnamed (Depth 'Audit Firm #02') | Audit | 2021-03 | stale | Direct | n/a | 0 | n/a |
| [Manual audit seed](https://catcha.fi/en/domains/depth.fi) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x0b28a5...ccefc0`](./contracts/bsc-56/0x0b28a55dbbd6c5ddd4d1d7157361e9d6d0ccefc0/) | dCowVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x024f05...1fb69d`](./contracts/bsc-56/0x024f05c70f203fb77f27b00422534cc33e1fb69d/) | dDepAlphaVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2e128e...88e1a6`](./contracts/bsc-56/0x2e128eb2ee787428307a7b246d02c1801788e1a6/) | dDepVenusVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21349] skynet.certik.com/projects/depth-token
- [21350] www.certik.com/projects/depth-token
- [21351] Depth-Report-022721.6c156aca.pdf
- [21352] Depth-Report2-EN.69622836.pdf
- [24082] Manual audit seed

Fork inheritance lineage and inherited audits are included when available.
