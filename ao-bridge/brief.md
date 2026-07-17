# Agentic Audit Brief: AO Bridge

⚠️ Lifecycle status: DECLINING - TVL dropped 56.4% over 90 days

## Project Overview

- Project: AO Bridge (`ao-bridge`)
- Website: [https://ao.arweave.net/](https://ao.arweave.net/)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-07-04T14:53:03.921Z
- Pipeline run: v2-pipeline-2026-07-01-2b719a-f2f0
- Chains: ethereum
- Contract surface: 4 unique implementations (7 raw deployments)
- DeFi Llama TVL: $40,188,831.16
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Canonical Bridge. Structurally: 1 project-authored contract(s) across 1 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 43; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 39 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/4 (0.0%)
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/4
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 7
- Audits discovered: 0 (0 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Distribution | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3df444111b36e1debd4060ebad89887e1d8dc0b5`](./contracts/ethereum-1/0x3df444111b36e1debd4060ebad89887e1d8dc0b5/); ethereum `0x7cd01d5cad4ba0caeba02583a5c61d35b23e08eb` | ⚠️ Unaudited |
| Distribution | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6a1b588b0684dace1f53c5820111f400b3dbfebf`](./contracts/ethereum-1/0x6a1b588b0684dace1f53c5820111f400b3dbfebf/); ethereum `0x78cc4fad915ff9514f73046d84ce8b2aac98da12` | ⚠️ Unaudited |
| Distribution | unknown | ethereum | n/a | 2 deployments: ethereum [`0x76488832a88475af0ac223d8fd4d053177a012cc`](./contracts/ethereum-1/0x76488832a88475af0ac223d8fd4d053177a012cc/); ethereum `0xfe08d40eee53d64936d3128838867c867602665c` | ⚠️ Unaudited |
| Refunder | unknown | ethereum | n/a | [`0x0278d076edccb596fca5de58e7e8e70d2a906a32`](./contracts/ethereum-1/0x0278d076edccb596fca5de58e7e8e70d2a906a32/) | ⚠️ Unaudited |

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
| ethereum | [`0x3df444111b36e1debd4060ebad89887e1d8dc0b5`](./contracts/ethereum-1/0x3df444111b36e1debd4060ebad89887e1d8dc0b5/) | Distribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76488832a88475af0ac223d8fd4d053177a012cc`](./contracts/ethereum-1/0x76488832a88475af0ac223d8fd4d053177a012cc/) | Distribution | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0278d076edccb596fca5de58e7e8e70d2a906a32`](./contracts/ethereum-1/0x0278d076edccb596fca5de58e7e8e70d2a906a32/) | Refunder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
