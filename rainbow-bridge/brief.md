# Agentic Audit Brief: Rainbow Bridge

## Project Overview

- Project: Rainbow Bridge (`rainbow-bridge`)
- Website: [https://rainbowbridge.app/transfer](https://rainbowbridge.app/transfer)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:44.548Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-bd47
- Chains: ethereum
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $1,581,305.11
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 4 project-authored contract(s) across 1 chain(s); 1 ERC20 token; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts operate as largely independent structural surfaces. Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (4 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 4/4 (100.0%)
- Deployed-live implementations: 4 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 4/4
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 14 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Sigma Prime | Tier 2 | 4 | 100.0% | 2023-06 |
| Hacken | Tier 2 | 1 | 25.0% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| eNear | unknown | ethereum | n/a | [`0x85f17c...b9f6a4`](./contracts/ethereum-1/0x85f17cf997934a597031b2e18a9ab6ebd4b9f6a4/) | ✅ Audited |
| ERC20Locker | token | ethereum | n/a | [`0x23ddd3...9e127f`](./contracts/ethereum-1/0x23ddd3e3692d1861ed57ede224608875809e127f/) | ✅ Audited |
| EthCustodian | unknown | ethereum | n/a | [`0x6bfad4...89fa52`](./contracts/ethereum-1/0x6bfad42cfc4efc96f529d786d643ff4a8b89fa52/) | ✅ Audited |
| NearBridge | unknown | ethereum | n/a | [`0x015156...efc362`](./contracts/ethereum-1/0x0151568af92125fb289f1dd81d9d8f7484efc362/) | ✅ Audited |

### ⚠️ Verified + Unaudited (0)

- None

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
| [1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf](https://www.datocms-assets.com/50156/1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf) | Sigma Prime | Audit | 2022-06 | stale | Direct | contract_name | 4 | high |
| [1689149463-sigmaprime-rainbow-bridge-final-report-v2-2-june2023.pdf](https://www.datocms-assets.com/50156/1689149463-sigmaprime-rainbow-bridge-final-report-v2-2-june2023.pdf) | Sigma Prime | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [Rainbow-Bridge-audit-report-_compressed.pdf](https://blaize.tech/wp-content/uploads/2023/03/Rainbow-Bridge-audit-report-_compressed.pdf) | Blaize Security | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [Manual audit seed](https://aurora.dev/audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [January 2025 / HackenNEAR IntentsView audit report](https://www.datocms-assets.com/50156/1738583399-hacken_aurora-labs-limited-sca-aurora-labs-defuse-contracts-dec2024_p-2024-1418_2_20250127-10_50.pdf) | Hacken | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [May 2024 / AuditOneEngine/BridgeView audit report](https://www.datocms-assets.com/50156/1719854230-aurora-engine-audit-report.pdf) | Hacken | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [May 2024 / AuditOneForwarder/ControllerView audit report](https://www.datocms-assets.com/50156/1719853937-auroraf-c-audit-report.pdf) | Hacken | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [June 2023 / ZokyoNEAR FT ConnectorView audit report](https://www.datocms-assets.com/50156/1689941745-zokyo-near-ft-connector-audit.pdf) | Hacken | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [May 2023 / AuditOneFast BridgeView audit report](https://www.datocms-assets.com/50156/1686729017-auditone-fast-bridge-final-report-v3-may2023-1.pdf) | Hacken | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [March 2023 / HackenNEAR PluginsView audit report](https://www.datocms-assets.com/50156/1680101850-hacken-near-plugins-final-report-updated-march2023.pdf) | Hacken | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [March 2023 / AuditOneNEAR PluginsView audit report](https://www.datocms-assets.com/50156/1680590522-auditone-near-plugins-final-report-updated-march2023.pdf) | Hacken | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [January 2023 / HackenVote Token & Election ContractView audit report](https://www.datocms-assets.com/50156/1675403586-hacken-election-vote-contracts-final-report.pdf) | Hacken | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [October 2022 / BlaizeNEAR FT ConnectorView audit report](https://www.datocms-assets.com/50156/1676635327-blaize-near-ftconnector-reportv2-october-2022.pdf) | Hacken | Audit | 2022-10 | stale | Direct | contract_name | 1 | high |
| [June 2022 / HackenStaking ContractView audit report](https://www.datocms-assets.com/50156/1659612404-hacken-staking-contract-final-report-08-06-2022.pdf) | Hacken | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [June 2022 / BlaizeStaking ContractView audit report](https://www.datocms-assets.com/50156/1660299853-blaize-staking-contract-final-report-8-6-2022.pdf) | Hacken | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [March 2022 / HalbornNEAR's Staking FarmView audit report](https://www.datocms-assets.com/50156/1659612370-aurora_farm_near_smart_contract_security_audit_report_halborn_final-2.pdf) | Halborn | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

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
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=5

Zero-match audit list:

- [21317] 1689149463-sigmaprime-rainbow-bridge-final-report-v2-2-june2023.pdf
- [21318] Rainbow-Bridge-audit-report-_compressed.pdf
- [24384] Manual audit seed
- [24385] January 2025 / HackenNEAR IntentsView audit report
- [24386] May 2024 / AuditOneEngine/BridgeView audit report
- [24387] May 2024 / AuditOneForwarder/ControllerView audit report
- [24388] June 2023 / ZokyoNEAR FT ConnectorView audit report
- [24390] May 2023 / AuditOneFast BridgeView audit report
- [24391] March 2023 / HackenNEAR PluginsView audit report
- [24392] March 2023 / AuditOneNEAR PluginsView audit report
- [24393] January 2023 / HackenVote Token & Election ContractView audit report
- [24395] June 2022 / HackenStaking ContractView audit report
- [24396] June 2022 / BlaizeStaking ContractView audit report
- [24397] March 2022 / HalbornNEAR's Staking FarmView audit report

Fork inheritance lineage and inherited audits are included when available.
