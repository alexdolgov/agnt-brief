# Agentic Audit Brief: ChimpX AI

## Project Overview

- Project: ChimpX AI (`chimpx-ai`)
- Website: [https://chimpx.ai/](https://chimpx.ai/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:10.257Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: linea
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $118,141.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DEX Aggregator. Structurally: 5 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 5 contract(s).

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/5 (0.0%)
- Deployed-live implementations: 5 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/5
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 5
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

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Authorizer | unknown | linea | n/a | [`0x7adcda7bbe51376b190814d76a423de6df64a1a1`](./contracts/linea-59144/0x7adcda7bbe51376b190814d76a423de6df64a1a1/) | ⚠️ Unaudited |
| ComposableStablePoolFactory | unknown | linea | n/a | [`0x55813edb4b83a3286bb69c826cb81bf8c7773524`](./contracts/linea-59144/0x55813edb4b83a3286bb69c826cb81bf8c7773524/) | ⚠️ Unaudited |
| ProtocolFeePercentagesProvider | unknown | linea | n/a | [`0xd69300d71133cedba6b317d16a67aa794d57e5c9`](./contracts/linea-59144/0xd69300d71133cedba6b317d16a67aa794d57e5c9/) | ⚠️ Unaudited |
| Vault | unknown | linea | n/a | [`0x286381aedd20e51f642fe4a200b5cb2fe3729695`](./contracts/linea-59144/0x286381aedd20e51f642fe4a200b5cb2fe3729695/) | ⚠️ Unaudited |
| WeightedPoolFactory | unknown | linea | n/a | [`0x0a5064b28df6d028b8e04299ddb972d03be14b30`](./contracts/linea-59144/0x0a5064b28df6d028b8e04299ddb972d03be14b30/) | ⚠️ Unaudited |

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
| linea | [`0x7adcda7bbe51376b190814d76a423de6df64a1a1`](./contracts/linea-59144/0x7adcda7bbe51376b190814d76a423de6df64a1a1/) | Authorizer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x55813edb4b83a3286bb69c826cb81bf8c7773524`](./contracts/linea-59144/0x55813edb4b83a3286bb69c826cb81bf8c7773524/) | ComposableStablePoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0xd69300d71133cedba6b317d16a67aa794d57e5c9`](./contracts/linea-59144/0xd69300d71133cedba6b317d16a67aa794d57e5c9/) | ProtocolFeePercentagesProvider | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x286381aedd20e51f642fe4a200b5cb2fe3729695`](./contracts/linea-59144/0x286381aedd20e51f642fe4a200b5cb2fe3729695/) | Vault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| linea | [`0x0a5064b28df6d028b8e04299ddb972d03be14b30`](./contracts/linea-59144/0x0a5064b28df6d028b8e04299ddb972d03be14b30/) | WeightedPoolFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
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
