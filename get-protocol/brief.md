# Agentic Audit Brief: GET Protocol

## Project Overview

- Project: GET Protocol (`get-protocol`)
- Website: [https://www.get-protocol.io](https://www.get-protocol.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:19.261Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-17a2
- Chains: ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Services. Structurally: 2 project-authored contract(s) across 1 chain(s); 1 ERC4626 vault, 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Tokens) of 2 contract(s).

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (2 live, 2 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/2 (50.0%)
- Deployed-live implementations: 2 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/2
- Verified + Unaudited implementations: 1
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2022-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 50.0% | 2022-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GetToken | token | ethereum | n/a | [`0x8a8542...0c6a1b`](./contracts/ethereum-1/0x8a854288a5976036a725879164ca3e91d30c6a1b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| GovernanceLockedRevenueDistributionToken | token | ethereum | n/a | [`0x3e49e9...9f1a04`](./contracts/ethereum-1/0x3e49e9c890cd5b015a18ed76e7a4093f569f1a04/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0xbd9fb5...8724e1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf72aae...d5c932` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [get-protocol-token-sale-matthew-di-ferrante.pdf](https://get-protocol.io/files/get-protocol-token-sale-matthew-di-ferrante.pdf) | unknown | Audit | 2017-10 | stale | Direct | contract_name | 1 | n/a |
| [reports.yacademy.dev/docs/12-2022-GET-Protocol-Staking](https://reports.yacademy.dev/docs/12-2022-GET-Protocol-Staking) | unknown | Audit | 2022-01 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x3e49e9...9f1a04`](./contracts/ethereum-1/0x3e49e9c890cd5b015a18ed76e7a4093f569f1a04/) | GovernanceLockedRevenueDistributionToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 2 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Zero-match audit list:

- [13179] reports.yacademy.dev/docs/12-2022-GET-Protocol-Staking

Fork inheritance lineage and inherited audits are included when available.
