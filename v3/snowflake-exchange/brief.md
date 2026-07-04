# Agentic Audit Brief: Snowflake Exchange

## Project Overview

- Project: Snowflake Exchange (`snowflake-exchange`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:06:54.469Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: polygon
- Contract surface: 10 unique implementations (10 raw deployments)
- DeFi Llama TVL: $106,477.92
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Dexs. Structurally: 7 project-authored contract(s) across 1 chain(s); 1 ERC20 token; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 3 common project-authored base contract(s) (contextupgradeable, reentrancyguardupgradeable, pausableupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 10; live-surface contracts included: 10 (10 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/10 (0.0%)
- Deployed-live implementations: 10 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/10
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 10
- Raw deployments: 10
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

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdminUpgradeabilityProxy | unknown | polygon | n/a | [`0x1d060c...df5608`](./contracts/polygon-137/0x1d060c82e643528db02882b4b2e4379631df5608/) | ⚠️ Unaudited |
| AdminUpgradeabilityProxy | unknown | polygon | n/a | [`0x30d5d5...166295`](./contracts/polygon-137/0x30d5d5549ffef0a70c1b0de09a6448babb166295/) | ⚠️ Unaudited |
| LiquidityLock | unknown | polygon | n/a | [`0x8490e3...c5d16b`](./contracts/polygon-137/0x8490e32cb4e8a43f35eee19244b0513c14c5d16b/) | ⚠️ Unaudited |
| MasterSnowflakeV3 | unknown | polygon | n/a | [`0x6a22e8...5e3165`](./contracts/polygon-137/0x6a22e86a983db7c24a71b3666c1a7ca7925e3165/) | ⚠️ Unaudited |
| Pool | unknown | polygon | n/a | [`0x6f52d3...527f95`](./contracts/polygon-137/0x6f52d32dff6a9b9d9a20c5d059f83c2183527f95/) | ⚠️ Unaudited |
| PoolProxy | unknown | polygon | n/a | [`0x93236d...25dedf`](./contracts/polygon-137/0x93236d836fb2723eac51db86a803aeb53c25dedf/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | polygon | n/a | [`0x4dc0bf...42364f`](./contracts/polygon-137/0x4dc0bf37138caf947c6e7f7811f5a0a94342364f/) | ⚠️ Unaudited |
| SimpleRewarderPerSec | unknown | polygon | n/a | [`0x068e00...035500`](./contracts/polygon-137/0x068e00886dc66b4ca002ef8bfb09ae705f035500/) | ⚠️ Unaudited |
| Token | unknown | polygon | n/a | [`0x7dbdb7...ca9095`](./contracts/polygon-137/0x7dbdb74b1ca0e7da16101877a1221a800cca9095/) | ⚠️ Unaudited |
| VeSnow | unknown | polygon | n/a | [`0x44f7e9...7ced9d`](./contracts/polygon-137/0x44f7e9d762754e0c757b37bfb68440c0bf7ced9d/) | ⚠️ Unaudited |

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
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
