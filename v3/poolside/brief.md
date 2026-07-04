# Agentic Audit Brief: Poolside

## Project Overview

- Project: Poolside (`poolside`)
- Website: [https://www.poolside.party](https://www.poolside.party)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:42.955Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: base
- Contract surface: 2 unique implementations (2 raw deployments)
- DeFi Llama TVL: $28,738.37
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 7 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 2 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 2 (2 live, 0 unknown).
- Excluded by liveness: 7 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 2 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 2
- Raw deployments: 2
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-08 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 50.0% | 2023-08 |
| yAudit | Tier 2 | 1 | 50.0% | 2023-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ButtonswapFactory | unknown | base | n/a | [`0x75a92d...9ba64a`](./contracts/base-8453/0x75a92dfb38c3506dce3bbb5eb32a10852f9ba64a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GenericButtonswapRouter | adapter | base | n/a | [`0xa6c9d0...ed2e2f`](./contracts/base-8453/0xa6c9d0cb8fff7a47db726ab8b31206dd69ed2e2f/) | ⚠️ Unaudited |

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
| [statemind_2023-08-11.pdf](https://github.com/buttonwood-protocol/buttonswap-core/blob/main/notes/statemind_2023-08-11.pdf) | unknown | Audit | 2023-08 | stale | Direct | contract_name | 1 | high |
| [spaces/1OyEScoUCIfVRkK0pfQm/uploads/RAecNiY4W8m84dbjdayw/buttonswap.pdf](https://2693699415-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2F1OyEScoUCIfVRkK0pfQm%2Fuploads%2FRAecNiY4W8m84dbjdayw%2Fbuttonswap.pdf) | yAudit | Audit | 2023-08 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
