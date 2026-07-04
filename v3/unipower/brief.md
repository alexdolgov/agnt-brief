# Agentic Audit Brief: UniPower

## Project Overview

- Project: UniPower (`unipower`)
- Website: [https://unipower.network](https://unipower.network)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:02.419Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $461,870.17
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 6 project-authored contract(s) across 1 chain(s); 3 ERC20 tokens; built on openzeppelin.

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
| EthPrime | unknown | ethereum | n/a | [`0xe40e15...316a2d`](./contracts/ethereum-1/0xe40e1531a4b56fb65571ad2ca43dc0048a316a2d/) | ⚠️ Unaudited |
| Goo | unknown | ethereum | n/a | [`0xa170fb...21a5f6`](./contracts/ethereum-1/0xa170fb6f3e0f127f1f592a656eadff3dc421a5f6/) | ⚠️ Unaudited |
| LiquidityVault | unknown | ethereum | n/a | [`0xc73bb8...934513`](./contracts/ethereum-1/0xc73bb871dbf66958242deba79e4db19bc2934513/) | ⚠️ Unaudited |
| PowerLock | unknown | ethereum | n/a | [`0xae7b53...c018b4`](./contracts/ethereum-1/0xae7b530be880457523eb46d8ec6484e067c018b4/) | ⚠️ Unaudited |
| ProofOfEtherDelta | unknown | ethereum | n/a | [`0xc5765b...a933c1`](./contracts/ethereum-1/0xc5765b90766da9debad0b9122521c27e1ea933c1/) | ⚠️ Unaudited |
| UniPower | unknown | ethereum | n/a | [`0xf2f9a7...cce509`](./contracts/ethereum-1/0xf2f9a7e93f845b3ce154efbeb64fb9346fcce509/) | ⚠️ Unaudited |

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
| needs_review | 6 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
