# Agentic Audit Brief: Aurora Plus

## Project Overview

- Project: Aurora Plus (`aurora-plus`)
- Website: [https://aurora.plus/](https://aurora.plus/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:04.312Z
- Pipeline run: v2-2026-07-03-89943a
- Chains: aurora
- Contract surface: 4 unique implementations (4 raw deployments)
- DeFi Llama TVL: $1,495,590.88
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Farm. Structurally: 3 project-authored contract(s) across 1 chain(s); role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin-upgradeable.

### Architecture

The protocol comprises 2 functional families. Its contracts share 1 common project-authored base contract(s) (admincontrolled). Dominant framework: openzeppelin-upgradeable.

## Contract Surface Quality

- Indexed contracts: 4; live-surface contracts included: 4 (0 live, 4 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/0 (0.0%)
- Deployed-live implementations: 0 of 4 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 2/4
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 4
- Audits discovered: 15 (15 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 13 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Hacken | Tier 2 | 2 | 50.0% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| JetStakingV1 | unknown | aurora | n/a | [`0x852f139dd31d2cdc669470880700037cb3790934`](./contracts/aurora-1313161554/0x852f139dd31d2cdc669470880700037cb3790934/) | ✅ Audited |
| Treasury | unknown | aurora | n/a | [`0x4c101a39ca2d3095db2507dadde736b8e6ed827a`](./contracts/aurora-1313161554/0x4c101a39ca2d3095db2507dadde736b8e6ed827a/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ERC1967Proxy | unknown | aurora | n/a | [`0x05702b754bdd27015a18faf2009d8781f641e48e`](./contracts/aurora-1313161554/0x05702b754bdd27015a18faf2009d8781f641e48e/) | ⚠️ Unaudited |
| EvmErc20 | unknown | aurora | n/a | [`0x18921f1e257038e538ba24d49fa6495c8b1617bc`](./contracts/aurora-1313161554/0x18921f1e257038e538ba24d49fa6495c8b1617bc/) | ⚠️ Unaudited |

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
| [DL audit link](https://aurora.dev/audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [January 2025 / HackenNEAR IntentsView audit report](https://www.datocms-assets.com/50156/1738583399-hacken_aurora-labs-limited-sca-aurora-labs-defuse-contracts-dec2024_p-2024-1418_2_20250127-10_50.pdf) | Hacken | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [May 2024 / AuditOneEngine/BridgeView audit report](https://www.datocms-assets.com/50156/1719854230-aurora-engine-audit-report.pdf) | Hacken | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [May 2024 / AuditOneForwarder/ControllerView audit report](https://www.datocms-assets.com/50156/1719853937-auroraf-c-audit-report.pdf) | Hacken | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [June 2023 / ZokyoNEAR FT ConnectorView audit report](https://www.datocms-assets.com/50156/1689941745-zokyo-near-ft-connector-audit.pdf) | Hacken | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [June 2023 / Sigma PrimeRainbow Bridge ETH2 ClientView audit report](https://www.datocms-assets.com/50156/1689149463-sigmaprime-rainbow-bridge-final-report-v2-2-june2023.pdf) | Sigma Prime | Audit | 2023-06 | stale | Direct | n/a | 0 | n/a |
| [May 2023 / AuditOneFast BridgeView audit report](https://www.datocms-assets.com/50156/1686729017-auditone-fast-bridge-final-report-v3-may2023-1.pdf) | Hacken | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [March 2023 / HackenNEAR PluginsView audit report](https://www.datocms-assets.com/50156/1680101850-hacken-near-plugins-final-report-updated-march2023.pdf) | Hacken | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [March 2023 / AuditOneNEAR PluginsView audit report](https://www.datocms-assets.com/50156/1680590522-auditone-near-plugins-final-report-updated-march2023.pdf) | Hacken | Audit | 2023-03 | stale | Direct | n/a | 0 | n/a |
| [January 2023 / HackenVote Token & Election ContractView audit report](https://www.datocms-assets.com/50156/1675403586-hacken-election-vote-contracts-final-report.pdf) | Hacken | Audit | 2023-01 | stale | Direct | n/a | 0 | n/a |
| [October 2022 / BlaizeNEAR FT ConnectorView audit report](https://www.datocms-assets.com/50156/1676635327-blaize-near-ftconnector-reportv2-october-2022.pdf) | Hacken | Audit | 2022-10 | stale | Direct | n/a | 0 | n/a |
| [June 2022 / Sigma PrimeRainbow BridgeView audit report](https://www.datocms-assets.com/50156/1659700568-sigma-prime-rainbow-bridge-final-report-10-06-2022.pdf) | Hacken | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |
| [June 2022 / HackenStaking ContractView audit report](https://www.datocms-assets.com/50156/1659612404-hacken-staking-contract-final-report-08-06-2022.pdf) | Hacken | Audit | 2022-06 | stale | Direct | contract_name | 2 | high |
| [June 2022 / BlaizeStaking ContractView audit report](https://www.datocms-assets.com/50156/1660299853-blaize-staking-contract-final-report-8-6-2022.pdf) | Hacken | Audit | 2022-06 | stale | Direct | contract_name | 2 | high |
| [March 2022 / HalbornNEAR's Staking FarmView audit report](https://www.datocms-assets.com/50156/1659612370-aurora_farm_near_smart_contract_security_audit_report_halborn_final-2.pdf) | Halborn | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| aurora | [`0x18921f1e257038e538ba24d49fa6495c8b1617bc`](./contracts/aurora-1313161554/0x18921f1e257038e538ba24d49fa6495c8b1617bc/) | EvmErc20 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=4

Zero-match audit list:

- [19461] DL audit link
- [19462] January 2025 / HackenNEAR IntentsView audit report
- [19463] May 2024 / AuditOneEngine/BridgeView audit report
- [19464] May 2024 / AuditOneForwarder/ControllerView audit report
- [19465] June 2023 / ZokyoNEAR FT ConnectorView audit report
- [19466] June 2023 / Sigma PrimeRainbow Bridge ETH2 ClientView audit report
- [19467] May 2023 / AuditOneFast BridgeView audit report
- [19468] March 2023 / HackenNEAR PluginsView audit report
- [19469] March 2023 / AuditOneNEAR PluginsView audit report
- [19470] January 2023 / HackenVote Token & Election ContractView audit report
- [19471] October 2022 / BlaizeNEAR FT ConnectorView audit report
- [19472] June 2022 / Sigma PrimeRainbow BridgeView audit report
- [19475] March 2022 / HalbornNEAR's Staking FarmView audit report

Fork inheritance lineage and inherited audits are included when available.
