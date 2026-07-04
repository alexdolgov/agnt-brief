# Agentic Audit Brief: reformdao

## Project Overview

- Project: reformdao (`reformdao`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.653Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 6 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 6 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/6
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
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

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| RFRM | unknown | ethereum | n/a | [`0xea3eed...de9a5e`](./contracts/ethereum-1/0xea3eed8616877f5d3c4aebf5a799f2e8d6de9a5e/) | ⚠️ Unaudited |
| RFRMBonding | unknown | ethereum | n/a | [`0xe3f046...db4b83`](./contracts/ethereum-1/0xe3f046804df6cef94ecc2f1bfce95d6a25db4b83/) | ⚠️ Unaudited |
| RFRMOracle | unknown | ethereum | n/a | [`0x0c4d7d...f8706f`](./contracts/ethereum-1/0x0c4d7dbd8e316353348a60b36008d4e471f8706f/) | ⚠️ Unaudited |
| RFRMStaking | unknown | ethereum | n/a | [`0x1e3fa3...43406e`](./contracts/ethereum-1/0x1e3fa3a395756f9fae3d0e61f6de3424d243406e/) | ⚠️ Unaudited |
| RFRMVesting | unknown | ethereum | n/a | [`0xc7bfca...c3a5ba`](./contracts/ethereum-1/0xc7bfca69a71097c044382da9385df27e39c3a5ba/) | ⚠️ Unaudited |
| UniswapV2Pair | unknown | ethereum | n/a | [`0xf4e14a...4965d8`](./contracts/ethereum-1/0xf4e14a7766a3316d6cefbaec614c714f2d4965d8/) | ⚠️ Unaudited |

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
| ethereum | [`0xea3eed...de9a5e`](./contracts/ethereum-1/0xea3eed8616877f5d3c4aebf5a799f2e8d6de9a5e/) | RFRM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe3f046...db4b83`](./contracts/ethereum-1/0xe3f046804df6cef94ecc2f1bfce95d6a25db4b83/) | RFRMBonding | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0c4d7d...f8706f`](./contracts/ethereum-1/0x0c4d7dbd8e316353348a60b36008d4e471f8706f/) | RFRMOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1e3fa3...43406e`](./contracts/ethereum-1/0x1e3fa3a395756f9fae3d0e61f6de3424d243406e/) | RFRMStaking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc7bfca...c3a5ba`](./contracts/ethereum-1/0xc7bfca69a71097c044382da9385df27e39c3a5ba/) | RFRMVesting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 1 |
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
