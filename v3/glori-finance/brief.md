# Agentic Audit Brief: Glori Finance

## Project Overview

- Project: Glori Finance (`glori-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:56.176Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: arbitrum
- Contract surface: 19 unique implementations (20 raw deployments)
- DeFi Llama TVL: $42.08
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Lending. Structurally: 22 project-authored contract(s) across 1 chain(s); 5 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 4 functional families. Its contracts share 10 common project-authored base contract(s) (ctokeninterface, ctokenstorage, cdelegationstorage). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 71; live-surface contracts included: 20 (2 live, 18 unknown).
- Excluded by liveness: 51 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 19 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 17
- Unique implementations: 19
- Raw deployments: 20
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-12 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 50.0% | 2023-12 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RewardDistributor | unknown | arbitrum | n/a | [`0xd31adb...438e66`](./contracts/arbitrum-42161/0xd31adbefac6eada396cab001d21ccfd816438e66/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | arbitrum | n/a | [`0xdf74d7...378bd4`](./contracts/arbitrum-42161/0xdf74d76e25fab06c2cdba4ebb0e6c82823378bd4/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (17)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | arbitrum | n/a | `0x0b4440...32d8be` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x1342a0...4f64bd` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x253a77...ba2a34` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x264370...e3ee0a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x29dfba...b6a300` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x3593d5...c0bce6` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | 2 deployments: arbitrum `0x399206...d71381`; arbitrum `0xe20705...2250ac` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x48a030...caa66c` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7d6b9b...15f12a` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x7d6c5f...827d01` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x8fc504...6a08f8` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xcac9f5...65b189` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xd25e9a...88013e` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xe5c12f...669c65` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xee88c2...01470b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf21e2b...261c65` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xffba9b...1e33c4` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [blocksec_glorifinance_v1.0-signed.pdf](https://github.com/blocksecteam/audit-reports/blob/main/solidity/blocksec_glorifinance_v1.0-signed.pdf) | unknown | Audit | 2023-12 | stale | Direct | contract_name | 1 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 19 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=1

Fork inheritance lineage and inherited audits are included when available.
