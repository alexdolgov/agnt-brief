# Agentic Audit Brief: Crystl Finance

## Project Overview

- Project: Crystl Finance (`crystl-finance`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:42.300Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: polygon
- Contract surface: 13 unique implementations (13 raw deployments)
- DeFi Llama TVL: $165,979.20
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 12 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 3 common project-authored base contract(s) (basestrategylpsingle, basestrategylp, basestrategy). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/13 (0.0%)
- Deployed-live implementations: 13 of 13 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/13
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 13
- Raw deployments: 13
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

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CrystalMine | unknown | polygon | n/a | [`0x5badd6...d057dd`](./contracts/polygon-137/0x5badd6c71ffd0da6e4c7d425797f130684d057dd/) | ⚠️ Unaudited |
| CrystalToken | unknown | polygon | n/a | [`0x76bf0c...3cfe64`](./contracts/polygon-137/0x76bf0c28e604cc3fe9967c83b3c3f31c213cfe64/) | ⚠️ Unaudited |
| MasterHealer | unknown | polygon | n/a | [`0xebcc84...ef1e6d`](./contracts/polygon-137/0xebcc84d2a73f0c9e23066089c6c24f4629ef1e6d/) | ⚠️ Unaudited |
| PoolFactory | unknown | polygon | n/a | [`0x4ff339...58ff56`](./contracts/polygon-137/0x4ff339ab4f7a08698a8d6c97ee656233db58ff56/) | ⚠️ Unaudited |
| StakingPool | unknown | polygon | n/a | [`0x03a6c9...aa4957`](./contracts/polygon-137/0x03a6c95be4d1cefd51511c0a7ce6be66f0aa4957/) | ⚠️ Unaudited |
| StrategyMasterHealer | unknown | polygon | n/a | [`0x03196c...a2ad21`](./contracts/polygon-137/0x03196c0cf1965ec96fb3394403572c9d58a2ad21/) | ⚠️ Unaudited |
| StrategyMasterHealerForDoubleReflect | unknown | polygon | n/a | [`0xa023d9...744341`](./contracts/polygon-137/0xa023d9e76007a56c7ac1890e629b1a5032744341/) | ⚠️ Unaudited |
| StrategyMasterHealerForQuick | unknown | polygon | n/a | [`0x4509c2...8d5245`](./contracts/polygon-137/0x4509c2f7301ca1a45d314cabca86faa41c8d5245/) | ⚠️ Unaudited |
| StrategyMasterHealerForReflect | unknown | polygon | n/a | [`0x231166...5f2a4c`](./contracts/polygon-137/0x23116627d5e46ab441568e9e37fb12d1ab5f2a4c/) | ⚠️ Unaudited |
| StrategyMasterHealerKavian | unknown | polygon | n/a | [`0x2c83d7...48eeea`](./contracts/polygon-137/0x2c83d79197c031cb2b87337ff754cc6e0148eeea/) | ⚠️ Unaudited |
| StrategyMasterHealerWithReferral | unknown | polygon | n/a | [`0x0b9245...79a2c9`](./contracts/polygon-137/0x0b92451538547c84eb22ea4a6d3b9a551d79a2c9/) | ⚠️ Unaudited |
| Timelock | unknown | polygon | n/a | [`0x12fc8f...990145`](./contracts/polygon-137/0x12fc8f5cfb609981c6f6d141f0fb0bce0b990145/) | ⚠️ Unaudited |
| VaultHealer | unknown | polygon | n/a | [`0x0192eb...fb47ef`](./contracts/polygon-137/0x0192eb09c31ded57ee77dbb9856ee75b19fb47ef/) | ⚠️ Unaudited |

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

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 13 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
