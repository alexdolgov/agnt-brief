# Agentic Audit Brief: SmartCoin

## Project Overview

- Project: SmartCoin (`smartcoin`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.389Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: avalanche
- Contract surface: 5 unique implementations (5 raw deployments)
- DeFi Llama TVL: $935.78
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 4 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 5; live-surface contracts included: 5 (2 live, 3 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 5 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/4
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 5
- Raw deployments: 5
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Paladin | Tier 2 | 1 | 25.0% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SmartCoin | unknown | avalanche | n/a | [`0xcc2f1d827b18321254223df4e84de399d9ff116c`](./contracts/avalanche-43114/0xcc2f1d827b18321254223df4e84de399d9ff116c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| JoePair | unknown | avalanche | n/a | [`0xf070843ba9ed0ab85b0d15f9e8d67a5a8e073254`](./contracts/avalanche-43114/0xf070843ba9ed0ab85b0d15f9e8d67a5a8e073254/) | ⚠️ Unaudited |
| MasterChefSmartCoinV2 | unknown | avalanche | n/a | [`0xa0488f956d7fe05b1798e9faf0ce5f1133d23822`](./contracts/avalanche-43114/0xa0488f956d7fe05b1798e9faf0ce5f1133d23822/) | ⚠️ Unaudited |
| MasterChefSmartCoinV3 | unknown | avalanche | n/a | [`0xdb69c8841363d76efc0b7008afac15756c8bf443`](./contracts/avalanche-43114/0xdb69c8841363d76efc0b7008afac15756c8bf443/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | avalanche | n/a | `0x7877a16a3d7d2de9e9c1046c896167d067e4b23a` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [20211018_Paladin_SmartCoin_Final_Report.pdf](https://paladinsec.co/pld/assets/20211018_Paladin_SmartCoin_Final_Report.pdf) | Paladin | Audit | 2021-10 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| avalanche | [`0xf070843ba9ed0ab85b0d15f9e8d67a5a8e073254`](./contracts/avalanche-43114/0xf070843ba9ed0ab85b0d15f9e8d67a5a8e073254/) | JoePair | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xa0488f956d7fe05b1798e9faf0ce5f1133d23822`](./contracts/avalanche-43114/0xa0488f956d7fe05b1798e9faf0ce5f1133d23822/) | MasterChefSmartCoinV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xdb69c8841363d76efc0b7008afac15756c8bf443`](./contracts/avalanche-43114/0xdb69c8841363d76efc0b7008afac15756c8bf443/) | MasterChefSmartCoinV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
