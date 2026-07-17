# Agentic Audit Brief: ArenaSwap

⚠️ Lifecycle status: DECLINING - TVL dropped 5.2% over 90 days

## Project Overview

- Project: ArenaSwap (`arenaswap`)
- Website: [https://www.arenaswap.com/](https://www.arenaswap.com/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:53:04.127Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: bsc
- Contract surface: 7 unique implementations (7 raw deployments)
- DeFi Llama TVL: $26,699.10
- On-chain TVL (included contracts): $4,351.69
- TVL by chain: Bsc $4,351.69

## Project Description

Dexs. Structurally: 4 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 2 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 7 (2 live, 5 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 7 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 7
- Raw deployments: 7
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-06 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 1 | 50.0% | 2021-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArenaToken | token | bsc | n/a | [`0x2a17dc11a1828725cdb318e0036acf12727d27a2`](./contracts/bsc-56/0x2a17dc11a1828725cdb318e0036acf12727d27a2/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ArenaMaster | unknown | bsc | n/a | [`0xbea60d145747a66cf27456ef136b3976322b7e77`](./contracts/bsc-56/0xbea60d145747a66cf27456ef136b3976322b7e77/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | bsc | n/a | `0x2370c7a8a72e323102730a8419d49ecbc9e01466` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x61018455f6318b782d5b3de7585e61fd5db142e9` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6b55178df599c84bc2b13c7791aab639569c2631` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xad63f10232787f8c8bc6ceace0d5861860fc6d1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf37c37385061835b566dacbccdc9b0b3c87816fe` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [ArenaSwap Standart Smart Contract Security Audit.pdf](https://github.com/TechRate/Smart-Contract-Audits/blob/main/2018-21%20A-M/ArenaSwap%20Standart%20Smart%20Contract%20Security%20Audit.pdf) | yAudit | Audit | 2021-06 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xbea60d145747a66cf27456ef136b3976322b7e77`](./contracts/bsc-56/0xbea60d145747a66cf27456ef136b3976322b7e77/) | ArenaMaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
