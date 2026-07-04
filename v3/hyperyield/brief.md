# Agentic Audit Brief: hyperyield

## Project Overview

- Project: hyperyield (`hyperyield`)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:59.955Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: hyperliquid
- Contract surface: 6 unique implementations (6 raw deployments)
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Structural profile: 6 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol forms a single structural family (Core Logic) of 6 contract(s).

## Fork Lineage

This project reuses audited code from **Avalon Labs** (`avalon-labs`) in the ACLManager, AaveProtocolDataProvider subsystem.
8 audits inherited from `avalon-labs`, scoped to that subsystem.

Total inherited audits: 8. Inherited coverage reflects forked/shared code audited by the origin project — it is not a direct audit of this project.

## Contract Surface Quality

- Indexed contracts: 6; live-surface contracts included: 6 (6 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/6 (16.7%)
- Deployed-live implementations: 6 of 6 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/6
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 8 (0 direct, 8 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-10 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 2 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 16.7% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BlockSec | Tier 2 | 1 | 16.7% | 2024-10 |
| SlowMist | Tier 1 | 1 | 16.7% | 2024-10 |
| unknown | Tier 2 | 1 | 16.7% | 2024-06 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AaveProtocolDataProvider | unknown | hyperliquid | n/a | [`0x022f16...56e244`](./contracts/hyperliquid-999/0x022f164ddba35a994ad0f001705e9c187156e244/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ACLManagerEnumerable | unknown | hyperliquid | n/a | [`0x5b3e93...a12b39`](./contracts/hyperliquid-999/0x5b3e93e64a9bf2e529e184fd910485aae2a12b39/) | ⚠️ Unaudited |
| AToken | unknown | hyperliquid | n/a | [`0x3ec571...e3a96c`](./contracts/hyperliquid-999/0x3ec5714eae0f52824ddd4eb853a260d6e3e3a96c/) | ⚠️ Unaudited |
| PoolAddressesProvider | unknown | hyperliquid | n/a | [`0x23c279...0f6a34`](./contracts/hyperliquid-999/0x23c2797ce39bc6925933dca0447798cd850f6a34/) | ⚠️ Unaudited |
| VariableDebtToken | unknown | hyperliquid | n/a | [`0x76fb5b...2afe54`](./contracts/hyperliquid-999/0x76fb5b73d63f6c170f1500402c802588e92afe54/) | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | unknown | hyperliquid | n/a | [`0x22d5be...0a6a48`](./contracts/hyperliquid-999/0x22d5be95e3c1f0c0309e75d5ec6f792ad90a6a48/) | ⚠️ Unaudited |

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
| [Avalon-Finance_USDA_audit_report_2024-10-18.pdf](https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf) | SlowMist | Audit | 2024-10 | aging | Inherited from Avalon Labs — forked code, scoped to AaveProtocolDataProvider, ACLManager | inherited | 1 | n/a |
| [Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf](https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf) | SlowMist | Audit | 2024-10 | aging | Inherited from Avalon Labs — forked code, scoped to AaveProtocolDataProvider, ACLManager | inherited | 1 | n/a |
| [Avalon Finance - SlowMist Audit Report.pdf](https://github.com/avalonfinancexyz/USDa-audit-slowmist/blob/main/Avalon%20Finance%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-10 | aging | Inherited from Avalon Labs — forked code, scoped to AaveProtocolDataProvider, ACLManager | inherited | 1 | n/a |
| [blocksec_avalon_v1.0-signed.pdf](https://github.com/avalonfinancexyz/USDa-audit-blocksec/blob/main/blocksec_avalon_v1.0-signed.pdf) | BlockSec | Audit | 2024-10 | aging | Inherited from Avalon Labs — forked code, scoped to AaveProtocolDataProvider, ACLManager | inherited | 1 | n/a |
| [blocksec_avalon_v1.1-signed.pdf](https://github.com/avalonfinancexyz/USDa-audit-blocksec/blob/main/blocksec_avalon_v1.1-signed.pdf) | BlockSec | Audit | 2024-10 | aging | Inherited from Avalon Labs — forked code, scoped to AaveProtocolDataProvider, ACLManager | inherited | 1 | n/a |
| [blocksec_avalon_v1.3-signed.pdf](https://github.com/avalonfinancexyz/USDa-audit-blocksec/blob/main/blocksec_avalon_v1.3-signed.pdf) | BlockSec | Audit | 2024-10 | aging | Inherited from Avalon Labs — forked code, scoped to AaveProtocolDataProvider, ACLManager | inherited | 1 | n/a |
| [Avalon-AVAF_audit_report_2024-06-11.pdf](https://cert-api.salusec.io/api/v1/salus/contract/certificate/full/2024/Avalon-AVAF_audit_report_2024-06-11.pdf) | unknown | Audit | 2024-06 | stale | Inherited from Avalon Labs — forked code, scoped to AaveProtocolDataProvider, ACLManager | inherited | 1 | n/a |
| [Avalon_Finance-ORACLE_audit_report_2024-04-09.pdf](https://cert-api.salusec.io/api/v1/salus/contract/certificate/full/2024/Avalon_Finance-ORACLE_audit_report_2024-04-09.pdf) | unknown | Audit | 2024-04 | stale | Inherited from Avalon Labs — forked code, scoped to AaveProtocolDataProvider, ACLManager | inherited | 1 | n/a |

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
- Match method counts: inherited_name_remap=8

Fork inheritance lineage and inherited audits are included when available.
