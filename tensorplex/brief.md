# Agentic Audit Brief: Tensorplex

## Project Overview

- Project: Tensorplex (`tensorplex`)
- Website: [https://stake.tensorplex.ai/](https://stake.tensorplex.ai/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:00.865Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16bc
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $236,279.82
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Liquid Staking. Structurally: 3 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/2 (0.0%)
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Audit staleness (calendar age): 0 fresh, 0 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BridgeWrapper | operational_periphery | ethereum | n/a | [`0xecaec5e1cfaa7a7f0c5a097dcbdf9140f3b03b1c`](./contracts/ethereum-1/0xecaec5e1cfaa7a7f0c5a097dcbdf9140f3b03b1c/) | ⚠️ Unaudited |
| ConsensusBridge | operational_periphery | ethereum | n/a | [`0x3538767654f6a2d2f3330a601b6b0a390b8b17d5`](./contracts/ethereum-1/0x3538767654f6a2d2f3330a601b6b0a390b8b17d5/) | ⚠️ Unaudited |
| GnosisSafe | governance | ethereum | n/a | [`0xfb47f57c064a0032ee66f98566dedce2aa6d68f3`](./contracts/ethereum-1/0xfb47f57c064a0032ee66f98566dedce2aa6d68f3/) | ⚠️ Unaudited |

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
| [index.html (also discovered via alternate URL)](https://certificate.quantstamp.com/full/tensorplex-stake/7a7c3615-5f16-4129-86e6-ee4f37fdaf0a/index.html) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xecaec5e1cfaa7a7f0c5a097dcbdf9140f3b03b1c`](./contracts/ethereum-1/0xecaec5e1cfaa7a7f0c5a097dcbdf9140f3b03b1c/) | BridgeWrapper | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3538767654f6a2d2f3330a601b6b0a390b8b17d5`](./contracts/ethereum-1/0x3538767654f6a2d2f3330a601b6b0a390b8b17d5/) | ConsensusBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21368] index.html

Fork inheritance lineage and inherited audits are included when available.
