# Agentic Audit Brief: RoseonX

## Project Overview

- Project: RoseonX (`roseonx`)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:53.739Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-66d5
- Chains: arbitrum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Derivatives. Structurally: 9 project-authored contract(s) across 1 chain(s); 4 ERC20 tokens, 1 Chainlink feed; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Its contracts share 5 common project-authored base contract(s) (baseaccess, baseconstants, constants). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 13; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 9 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 2/4 (50.0%)
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/4
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2023-10 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 2 | 50.0% | 2023-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SettingsManager | unknown | arbitrum | n/a | [`0xa666f14d3cd15f6c9bebfd875bb90498aea5a9ae`](./contracts/arbitrum-42161/0xa666f14d3cd15f6c9bebfd875bb90498aea5a9ae/) | ✅ Audited |
| Vault | unknown | arbitrum | n/a | [`0x19a85b30bdcba70ba331504dfe3c7ca12b83bf25`](./contracts/arbitrum-42161/0x19a85b30bdcba70ba331504dfe3c7ca12b83bf25/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ROSX | unknown | arbitrum | n/a | [`0xdc8184ba488e949815d4aafb35b3c56ad03b4179`](./contracts/arbitrum-42161/0xdc8184ba488e949815d4aafb35b3c56ad03b4179/) | ⚠️ Unaudited |
| StakingDualTokenV2 | token | arbitrum | n/a | [`0x42fa477a24d5471a24b798d5b4d9ec3a2c3dd49a`](./contracts/arbitrum-42161/0x42fa477a24d5471a24b798d5b4d9ec3a2c3dd49a/) | ⚠️ Unaudited |

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
| [Verichains Public Audit Report - Roseon Perpetual Exchange - v1.1.pdf](https://github.com/verichains/public-audit-reports/blob/main/Verichains%20Public%20Audit%20Report%20-%20Roseon%20Perpetual%20Exchange%20-%20v1.1.pdf) | unknown | Audit | 2023-10 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0xdc8184ba488e949815d4aafb35b3c56ad03b4179`](./contracts/arbitrum-42161/0xdc8184ba488e949815d4aafb35b3c56ad03b4179/) | ROSX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x42fa477a24d5471a24b798d5b4d9ec3a2c3dd49a`](./contracts/arbitrum-42161/0x42fa477a24d5471a24b798d5b4d9ec3a2c3dd49a/) | StakingDualTokenV2 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=2

Fork inheritance lineage and inherited audits are included when available.
