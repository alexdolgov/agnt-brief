# Agentic Audit Brief: Incprinter

## Project Overview

- Project: Incprinter (`incprinter`)
- Website: [https://incprinter.com/](https://incprinter.com/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.928Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $703,549.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 6 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 6 contract(s).

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/6 (0.0%)
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
| EternalStorageProxy | unknown | ethereum | n/a | [`0x1715a3...eba10d`](./contracts/ethereum-1/0x1715a3e4a142d8b698131108995174f37aeba10d/) | ⚠️ Unaudited |
| EternalStorageProxy | unknown | ethereum | n/a | [`0x2fa878...b0c95d`](./contracts/ethereum-1/0x2fa878ab3f87cc1c9737fc071108f904c0b0c95d/) | ⚠️ Unaudited |
| EternalStorageProxy | unknown | ethereum | n/a | [`0xd0764f...d5636c`](./contracts/ethereum-1/0xd0764fae29e0a6a96ff685f71cfc685456d5636c/) | ⚠️ Unaudited |
| PermittableToken | unknown | ethereum | n/a | [`0xa1077a...0f9a27`](./contracts/ethereum-1/0xa1077a294dde1b09bb078844df40758a5d0f9a27/) | ⚠️ Unaudited |
| TokenFactory | unknown | ethereum | n/a | [`0x98bf93...dacc02`](./contracts/ethereum-1/0x98bf93ebf5c380c0e6ae8e192a7e2ae08edacc02/) | ⚠️ Unaudited |
| WETHOmnibridgeRouter | unknown | ethereum | n/a | [`0x8ac4ae...350f55`](./contracts/ethereum-1/0x8ac4ae65b3656e26dc4e0e69108b392283350f55/) | ⚠️ Unaudited |

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
| ethereum | [`0x1715a3...eba10d`](./contracts/ethereum-1/0x1715a3e4a142d8b698131108995174f37aeba10d/) | EternalStorageProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2fa878...b0c95d`](./contracts/ethereum-1/0x2fa878ab3f87cc1c9737fc071108f904c0b0c95d/) | EternalStorageProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xd0764f...d5636c`](./contracts/ethereum-1/0xd0764fae29e0a6a96ff685f71cfc685456d5636c/) | EternalStorageProxy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa1077a...0f9a27`](./contracts/ethereum-1/0xa1077a294dde1b09bb078844df40758a5d0f9a27/) | PermittableToken | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x98bf93...dacc02`](./contracts/ethereum-1/0x98bf93ebf5c380c0e6ae8e192a7e2ae08edacc02/) | TokenFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x8ac4ae...350f55`](./contracts/ethereum-1/0x8ac4ae65b3656e26dc4e0e69108b392283350f55/) | WETHOmnibridgeRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
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
