# Agentic Audit Brief: Paxe Protocol

## Project Overview

- Project: Paxe Protocol (`paxe-protocol`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:42.985Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: bsc
- Contract surface: 8 unique implementations (10 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 10 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 7 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 21; live-surface contracts included: 10 (8 live, 2 unknown).
- Excluded by liveness: 11 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/6 (16.7%)
- Deployed-live implementations: 6 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/6
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 8
- Raw deployments: 10
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 16.7% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LiquidFarming | unknown | bsc | n/a | 3 deployments: bsc [`0x08d98d...41be85`](./contracts/bsc-56/0x08d98db82d757a868e8a9866a7199e22ce41be85/); bsc `0x75a806...e349fb`; bsc `0xba576f...02241f` | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Paxe | unknown | bsc | n/a | [`0xd2a3ee...5dd2fa`](./contracts/bsc-56/0xd2a3eec06719d5ac66248003b5488e02165dd2fa/) | ⚠️ Unaudited |
| PaxeRestaking | unknown | bsc | n/a | [`0x269e1c...e9e9c8`](./contracts/bsc-56/0x269e1ceb128cccd5684bbaff9906d69ed1e9e9c8/) | ⚠️ Unaudited |
| PaxeStaking | unknown | bsc | n/a | [`0x8461e6...16b8d5`](./contracts/bsc-56/0x8461e6429248656e5479b4bd09f918cbc016b8d5/) | ⚠️ Unaudited |
| PaxeStakingV2 | unknown | bsc | n/a | [`0x311049...364a09`](./contracts/bsc-56/0x311049dcac17e9d9a961590b436c132f91364a09/) | ⚠️ Unaudited |
| PPAXE | unknown | bsc | n/a | [`0x017183...b2f99f`](./contracts/bsc-56/0x017183e188e4cd1b31e509f03d417d0f11b2f99f/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | bsc | n/a | `0x007d0a...bbf503` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x00de3d...373146` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [liquidFarming.pdf](https://github.com/cyberscope-io/audits/blob/main/paxe/liquidFarming.pdf) | unknown | Audit | 2024-08 | aging | Direct | contract_name | 3 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xd2a3ee...5dd2fa`](./contracts/bsc-56/0xd2a3eec06719d5ac66248003b5488e02165dd2fa/) | Paxe | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x269e1c...e9e9c8`](./contracts/bsc-56/0x269e1ceb128cccd5684bbaff9906d69ed1e9e9c8/) | PaxeRestaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x8461e6...16b8d5`](./contracts/bsc-56/0x8461e6429248656e5479b4bd09f918cbc016b8d5/) | PaxeStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x311049...364a09`](./contracts/bsc-56/0x311049dcac17e9d9a961590b436c132f91364a09/) | PaxeStakingV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x017183...b2f99f`](./contracts/bsc-56/0x017183e188e4cd1b31e509f03d417d0f11b2f99f/) | PPAXE | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=3

Fork inheritance lineage and inherited audits are included when available.
