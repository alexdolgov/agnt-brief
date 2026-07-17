# Agentic Audit Brief: Amulet

## Project Overview

- Project: Amulet (`amulet`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:00.702Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum, optimism
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $275,442.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 2 project-authored contract(s) across 2 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
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
| IdleCDO | unknown | ethereum | n/a | [`0xc4574c60a455655864ab80fa7638561a756c5e61`](./contracts/ethereum-1/0xc4574c60a455655864ab80fa7638561a756c5e61/) | ⚠️ Unaudited |
| IdleCDOOptimism | unknown | optimism | n/a | [`0x8771128e9e386dc8e4663118bb11ea3de910e528`](./contracts/optimism-10/0x8771128e9e386dc8e4663118bb11ea3de910e528/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | ethereum | n/a | [`0x34ca1eb15b86f70dbac2631c1d4bb6aa9bc3e03e`](./contracts/ethereum-1/0x34ca1eb15b86f70dbac2631c1d4bb6aa9bc3e03e/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | [`0x00233ca2d687d962edc95a9ebc03b2aade85d10f`](./contracts/ethereum-1/0x00233ca2d687d962edc95a9ebc03b2aade85d10f/) | ⚠️ Unaudited |

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

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xc4574c60a455655864ab80fa7638561a756c5e61`](./contracts/ethereum-1/0xc4574c60a455655864ab80fa7638561a756c5e61/) | IdleCDO | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x8771128e9e386dc8e4663118bb11ea3de910e528`](./contracts/optimism-10/0x8771128e9e386dc8e4663118bb11ea3de910e528/) | IdleCDOOptimism | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
