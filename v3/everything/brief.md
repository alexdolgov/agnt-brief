# Agentic Audit Brief: Everything

## Project Overview

- Project: Everything (`everything`)
- Website: [https://everything.inc/](https://everything.inc/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:48.953Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: arbitrum
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $1,630,503.95
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 3 project-authored contract(s) across 1 chain(s); 1 ERC20 token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 3 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 15; live-surface contracts included: 8 (4 live, 4 unknown).
- Excluded by liveness: 7 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/4 (0.0%)
- Deployed-live implementations: 4 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UniPoolPair | core_logic | arbitrum | n/a | [`0xfa896e...fe8f56`](./contracts/arbitrum-42161/0xfa896ef9659ea0dcf42c751e2b1f78f626fe8f56/) | ⚠️ Unaudited |
| UniPoolRouter | adapter | arbitrum | n/a | [`0xb15e7a...ff7628`](./contracts/arbitrum-42161/0xb15e7a89e71b8468c23eb330f837caf0f2ff7628/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | arbitrum | n/a | [`0x1ea94d...9d63b5`](./contracts/arbitrum-42161/0x1ea94dfaaabfa1ac4dcc672cc27fca6bc59d63b5/) | ⚠️ Unaudited |
| WormholeTransceiver | unknown | arbitrum | n/a | [`0x3d0f80...a945f6`](./contracts/arbitrum-42161/0x3d0f808e717943f7aa53c6285a33a2dfa2a945f6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x4e3ca9...e8acb5` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x6a53ed...c98003` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x99af3f...7cd682` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xc26494...4fca44` | ❓ Unverified |

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
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
