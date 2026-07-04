# Agentic Audit Brief: luaswap

## Project Overview

- Project: luaswap (`luaswap`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:30.213Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 9 unique implementations (9 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 9 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 1 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 9; live-surface contracts included: 9 (9 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/9 (0.0%)
- Deployed-live implementations: 9 of 9 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/9
- Verified + Unaudited implementations: 9
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 9
- Raw deployments: 9
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

### ⚠️ Verified + Unaudited (9)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CrossRouter | unknown | ethereum | n/a | [`0x2821a9...2116c2`](./contracts/ethereum-1/0x2821a9ef6a88bf395e1c3a1de1657c9a042116c2/) | ⚠️ Unaudited |
| CrossSwapRouter | unknown | ethereum | n/a | [`0xbcf9cb...2d64e8`](./contracts/ethereum-1/0xbcf9cb98bdee36e5d2f049bace7cff47bf2d64e8/) | ⚠️ Unaudited |
| LuaMaker | unknown | ethereum | n/a | [`0x0f6fa5...a14aa6`](./contracts/ethereum-1/0x0f6fa5cf935fc84a6a43af4ddce02ddb84a14aa6/) | ⚠️ Unaudited |
| LuaMakerTrigger | unknown | ethereum | n/a | [`0xa406d7...3e349d`](./contracts/ethereum-1/0xa406d72ed7bde82ad532c5cc11070294ac3e349d/) | ⚠️ Unaudited |
| LuaMasterFarmer | unknown | ethereum | n/a | [`0xb67d7a...c7ff62`](./contracts/ethereum-1/0xb67d7a6644d9e191cac4da2b88d6817351c7ff62/) | ⚠️ Unaudited |
| LuaSafe | unknown | ethereum | n/a | [`0x9abf23...cfa52e`](./contracts/ethereum-1/0x9abf23f4e439d695a7fd341a1b25873c50cfa52e/) | ⚠️ Unaudited |
| LuaToken | unknown | ethereum | n/a | [`0xb1f669...4121cc`](./contracts/ethereum-1/0xb1f66997a5760428d3a87d68b90bfe0ae64121cc/) | ⚠️ Unaudited |
| Migrator | unknown | ethereum | n/a | [`0x0ea7dc...6b4a4b`](./contracts/ethereum-1/0x0ea7dc413c6209112101b6ef99a27f9ed56b4a4b/) | ⚠️ Unaudited |
| Timelock | unknown | ethereum | n/a | [`0xdc127c...b3812c`](./contracts/ethereum-1/0xdc127cca2f0f059af6a414ec6da19a92a6b3812c/) | ⚠️ Unaudited |

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
| ethereum | [`0x2821a9...2116c2`](./contracts/ethereum-1/0x2821a9ef6a88bf395e1c3a1de1657c9a042116c2/) | CrossRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbcf9cb...2d64e8`](./contracts/ethereum-1/0xbcf9cb98bdee36e5d2f049bace7cff47bf2d64e8/) | CrossSwapRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f6fa5...a14aa6`](./contracts/ethereum-1/0x0f6fa5cf935fc84a6a43af4ddce02ddb84a14aa6/) | LuaMaker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa406d7...3e349d`](./contracts/ethereum-1/0xa406d72ed7bde82ad532c5cc11070294ac3e349d/) | LuaMakerTrigger | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb67d7a...c7ff62`](./contracts/ethereum-1/0xb67d7a6644d9e191cac4da2b88d6817351c7ff62/) | LuaMasterFarmer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9abf23...cfa52e`](./contracts/ethereum-1/0x9abf23f4e439d695a7fd341a1b25873c50cfa52e/) | LuaSafe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1f669...4121cc`](./contracts/ethereum-1/0xb1f66997a5760428d3a87d68b90bfe0ae64121cc/) | LuaToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ea7dc...6b4a4b`](./contracts/ethereum-1/0x0ea7dc413c6209112101b6ef99a27f9ed56b4a4b/) | Migrator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xdc127c...b3812c`](./contracts/ethereum-1/0xdc127cca2f0f059af6a414ec6da19a92a6b3812c/) | Timelock | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
