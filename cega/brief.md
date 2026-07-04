# Agentic Audit Brief: Cega

## Project Overview

- Project: Cega (`cega`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.165Z
- Pipeline run: v2-2026-07-04-db4eb6
- Chains: arbitrum, ethereum
- Contract surface: 8 unique implementations (8 raw deployments)
- DeFi Llama TVL: $750,963.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Options. Structurally: 8 project-authored contract(s) across 2 chain(s); 2 ERC20 tokens, 1 Chainlink feed; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 8 contract(s).

## Contract Surface Quality

- Indexed contracts: 8; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/8 (0.0%)
- Deployed-live implementations: 8 of 8 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/8
- Verified + Unaudited implementations: 8
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 8
- Raw deployments: 8
- Audits discovered: 4 (4 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-02 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CegaState | unknown | ethereum | n/a | [`0x0730aa...30f26b`](./contracts/ethereum-1/0x0730aa138062d8cc54510aa939b533ba7c30f26b/) | ⚠️ Unaudited |
| CegaViewer | unknown | ethereum | n/a | [`0x31c73c...baf2c4`](./contracts/ethereum-1/0x31c73c07dbd8d026684950b17dd6131ea9baf2c4/) | ⚠️ Unaudited |
| DCSCalculations | unknown | arbitrum | n/a | [`0x0e1e35...e730c5`](./contracts/arbitrum-42161/0x0e1e35af84b87c66dbbaa3c56f692d9003e730c5/) | ⚠️ Unaudited |
| DCSProduct | unknown | arbitrum | n/a | [`0x042021...a362ea`](./contracts/arbitrum-42161/0x042021d59731d3ffa908c7c4211177137ba362ea/) | ⚠️ Unaudited |
| FCNProduct | unknown | ethereum | n/a | [`0x042021...a362ea`](./contracts/ethereum-1/0x042021d59731d3ffa908c7c4211177137ba362ea/) | ⚠️ Unaudited |
| FCNProductViewer | unknown | ethereum | n/a | [`0x51d8dd...b1a55b`](./contracts/ethereum-1/0x51d8ddcf0d300f773d7ded11eb6087b75fb1a55b/) | ⚠️ Unaudited |
| LOVProduct | unknown | arbitrum | n/a | [`0x0299a5...4fdb38`](./contracts/arbitrum-42161/0x0299a5b8d523ebccf5501177c35c0958774fdb38/) | ⚠️ Unaudited |
| Oracle | unknown | ethereum | n/a | [`0x063aa8...ccc5c2`](./contracts/ethereum-1/0x063aa85325c243d0092e9ecfbeae7b4f5cccc5c2/) | ⚠️ Unaudited |

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
| [drive.google.com/file/d/1a0nYzQ41kZMFDxDDDOJua3V2UTK8v2jX/view](https://drive.google.com/file/d/1a0nYzQ41kZMFDxDDDOJua3V2UTK8v2jX/view) | OtterSec | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1qcNiP-5vQpqUqo4WzlNT6gsjzKSd8IqZ/view](https://drive.google.com/file/d/1qcNiP-5vQpqUqo4WzlNT6gsjzKSd8IqZ/view) | Zellic | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [reports.zellic.io/publications/cega](https://reports.zellic.io/publications/cega) | Zellic | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [drive.google.com/file/d/1RbEJmROcl-5j6wwA-cYbSekGJQ4Jmmba/view](https://drive.google.com/file/d/1RbEJmROcl-5j6wwA-cYbSekGJQ4Jmmba/view) | OtterSec | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x0730aa...30f26b`](./contracts/ethereum-1/0x0730aa138062d8cc54510aa939b533ba7c30f26b/) | CegaState | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x31c73c...baf2c4`](./contracts/ethereum-1/0x31c73c07dbd8d026684950b17dd6131ea9baf2c4/) | CegaViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0e1e35...e730c5`](./contracts/arbitrum-42161/0x0e1e35af84b87c66dbbaa3c56f692d9003e730c5/) | DCSCalculations | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x042021...a362ea`](./contracts/arbitrum-42161/0x042021d59731d3ffa908c7c4211177137ba362ea/) | DCSProduct | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x042021...a362ea`](./contracts/ethereum-1/0x042021d59731d3ffa908c7c4211177137ba362ea/) | FCNProduct | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51d8dd...b1a55b`](./contracts/ethereum-1/0x51d8ddcf0d300f773d7ded11eb6087b75fb1a55b/) | FCNProductViewer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x0299a5...4fdb38`](./contracts/arbitrum-42161/0x0299a5b8d523ebccf5501177c35c0958774fdb38/) | LOVProduct | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x063aa8...ccc5c2`](./contracts/ethereum-1/0x063aa85325c243d0092e9ecfbeae7b4f5cccc5c2/) | Oracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 4
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21335] drive.google.com/file/d/1a0nYzQ41kZMFDxDDDOJua3V2UTK8v2jX/view
- [21336] drive.google.com/file/d/1qcNiP-5vQpqUqo4WzlNT6gsjzKSd8IqZ/view
- [21337] reports.zellic.io/publications/cega
- [21338] drive.google.com/file/d/1RbEJmROcl-5j6wwA-cYbSekGJQ4Jmmba/view

Fork inheritance lineage and inherited audits are included when available.
