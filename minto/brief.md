# Agentic Audit Brief: Minto

## Project Overview

- Project: Minto (`minto`)
- Website: [https://minto.finance](https://minto.finance)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:33.160Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-16da
- Chains: bsc, heco
- Contract surface: 4 unique implementations (6 raw deployments)
- DeFi Llama TVL: $3,799,069.36
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 4 project-authored contract(s) across 1 chain(s); 1 ERC20 token; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 4 contract(s).

## Contract Surface Quality

- Indexed contracts: 7; live-surface contracts included: 6 (3 live, 3 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/3 (33.3%)
- Deployed-live implementations: 3 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/3
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 4
- Raw deployments: 6
- Audits discovered: 2 (2 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-07 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 1 | 33.3% | 2021-07 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BTCMT | unknown | bsc | n/a | [`0x410a56...f09567`](./contracts/bsc-56/0x410a56541bd912f9b60943fcb344f1e3d6f09567/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Staking | unknown | bsc | n/a | [`0xe742fc...5a7e12`](./contracts/bsc-56/0xe742fce58484ff7be7835d95e350c23ce55a7e12/) | ⚠️ Unaudited |
| StakingOwn | unknown | bsc | n/a | [`0x78ae30...5ebcfb`](./contracts/bsc-56/0x78ae303182fca96a4629a78ee13235e6525ebcfb/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | heco | n/a | 3 deployments: heco `0x410a56...f09567`; heco `0x78ae30...5ebcfb`; heco `0xe742fc...5a7e12` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [MintoAuditReport.pdf](https://files.minto.finance/MintoAuditReport.pdf) | yAudit | Audit | 2021-07 | stale | Direct | contract_name | 1 | n/a |
| [ingreso.php](https://devcfirma.cconducir.com/ingreso.php) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0xe742fc...5a7e12`](./contracts/bsc-56/0xe742fce58484ff7be7835d95e350c23ce55a7e12/) | Staking | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x78ae30...5ebcfb`](./contracts/bsc-56/0x78ae303182fca96a4629a78ee13235e6525ebcfb/) | StakingOwn | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Zero-match audit list:

- [12203] ingreso.php

Fork inheritance lineage and inherited audits are included when available.
