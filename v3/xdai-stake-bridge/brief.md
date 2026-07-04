# Agentic Audit Brief: xDAI Stake Bridge

## Project Overview

- Project: xDAI Stake Bridge (`xdai-stake-bridge`)
- Website: [https://www.gnosis.io/](https://www.gnosis.io/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:15.950Z
- Pipeline run: v2-2026-07-02-1ba3fd
- Chains: ethereum
- Contract surface: 3 unique implementations (3 raw deployments)
- DeFi Llama TVL: $238,595,826.49
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## ⚠️ Limited Contract Surface

This brief covers only 3 contract implementation(s). The pipeline may not have discovered all deployed contracts for this project.
Coverage assessment and audit matching are based on this incomplete surface.

## Project Description

Contract surface contains 3 implementation(s). Insufficient contract coverage for automated architecture assessment. Manual review recommended.

## Contract Surface Quality

- Indexed contracts: 3; live-surface contracts included: 3 (3 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 0/3 (0.0%)
- Deployed-live implementations: 3 of 3 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 0/3
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 3
- Raw deployments: 3
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 3 stale, 17 unknown
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
| Distribution | unknown | ethereum | n/a | [`0x5d020e...366555`](./contracts/ethereum-1/0x5d020eb50fce62320a6730e6c18659a28b366555/) | ⚠️ Unaudited |
| ERC677MultiBridgeToken | unknown | ethereum | n/a | [`0x0ae055...f195e6`](./contracts/ethereum-1/0x0ae055097c6d159879521c384f1d2123d1f195e6/) | ⚠️ Unaudited |
| MultipleDistribution | unknown | ethereum | n/a | [`0x0218b7...aea918`](./contracts/ethereum-1/0x0218b706898d234b85d2494df21eb0677eaea918/) | ⚠️ Unaudited |

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
| [docs.gnosischain.com/bridges/audits](https://docs.gnosischain.com/bridges/audits) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [202510-Gnosis-Bridge-USDS-Upgrade.pdf](https://github.com/OmegaAudits/audits/blob/main/202510-Gnosis-Bridge-USDS-Upgrade.pdf) | Omega | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [bridge-USDS-upgrade3.pdf](https://github.com/cducrest/audit-reports/blob/main/bridge-USDS-upgrade3.pdf) | Gnosis Ltd (internal) | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf](https://docs.gnosischain.com/assets/files/Omega-Gnosis-Hashi%20Final%20Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf](https://docs.gnosischain.com/assets/files/g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf) | g0 | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Least Authority-Gnosis Hashi Final Audit Report-f8585bd3b5b3092f8bb5b5e5a81a2bef.pdf](https://docs.gnosischain.com/assets/files/Least%20Authority-Gnosis%20Hashi%20Final%20Audit%20Report-f8585bd3b5b3092f8bb5b5e5a81a2bef.pdf) | Least Authority | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Omega - Gnosis Bridge - final report-6a87d4840b00d3944437f59f17a58cc1.pdf](https://docs.gnosischain.com/assets/files/Omega%20-%20Gnosis%20Bridge%20-%20final%20report-6a87d4840b00d3944437f59f17a58cc1.pdf) | Omega | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [dai-xdai-08-23-2c5b3494548440e1e709988682da3696.pdf](https://docs.gnosischain.com/assets/files/dai-xdai-08-23-2c5b3494548440e1e709988682da3696.pdf) | ChainSafe | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf](https://docs.gnosischain.com/assets/files/ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf) | ChainSecurity | Audit | 2021 | stale | Direct | n/a | 0 | n/a |
| [www.chainsecurity.com/security-audit/poa-network-omnibridge](https://www.chainsecurity.com/security-audit/poa-network-omnibridge) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TokenBridge Audit by Quantstamp - OmniBridge-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf](https://docs.gnosischain.com/assets/files/TokenBridge%20Audit%20by%20Quantstamp%20-%20OmniBridge-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TokenBridge Audit by Quantstamp - AMB Bridge-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf](https://docs.gnosischain.com/assets/files/TokenBridge%20Audit%20by%20Quantstamp%20-%20AMB%20Bridge-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [SmartDec Security Audit-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf](https://docs.gnosischain.com/assets/files/SmartDec%20Security%20Audit-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf) | yAudit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Peppersec Initial TokenBridge Audit-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf](https://docs.gnosischain.com/assets/files/Peppersec%20Initial%20TokenBridge%20Audit-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf) | Peppersec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf](https://github.com/omni/tokenbridge/blob/master/audit/quantstamp/POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [POA-Network-Token-bridge-security-assessment-report.pdf](https://github.com/omni/tokenbridge/blob/73d500210546e2959536dc569f1aec5752077225/audit/quantstamp/POA-Network-Token-bridge-security-assessment-report.pdf) | Quantstamp | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf](https://github.com/omni/tokenbridge/blob/73d500210546e2959536dc569f1aec5752077225/audit/smartdec/POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf) | yAudit | Audit | 2019-07 | stale | Direct | n/a | 0 | n/a |
| [POA-Network-Token-bridge-security-assessment-report.pdf](https://github.com/omni/tokenbridge/blob/73d500210546e2959536dc569f1aec5752077225/audit/peppersec/POA-Network-Token-bridge-security-assessment-report.pdf) | Peppersec | Audit | 2018-10 | stale | Direct | n/a | 0 | n/a |
| [HashiMay2023.pdf](https://github.com/gnosis/hashi/blob/main/audits/HashiMay2023.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [g0-HashiMar2024.pdf](https://github.com/gnosis/hashi/blob/main/audits/g0-HashiMar2024.pdf) | g0 | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 3 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 20
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [21067] docs.gnosischain.com/bridges/audits
- [21068] 202510-Gnosis-Bridge-USDS-Upgrade.pdf
- [21069] bridge-USDS-upgrade3.pdf
- [21070] Omega-Gnosis-Hashi Final Report-32f8a8ccc11c91ddf6adc49a6584f768.pdf
- [21071] g0-Hashi-Gnosis-FinalAuditReport-74cd027d9cb39551aa53d7c2904dd5e5.pdf
- [21072] Least Authority-Gnosis Hashi Final Audit Report-f8585bd3b5b3092f8bb5b5e5a81a2bef.pdf
- [21073] Omega - Gnosis Bridge - final report-6a87d4840b00d3944437f59f17a58cc1.pdf
- [21074] dai-xdai-08-23-2c5b3494548440e1e709988682da3696.pdf
- [21075] ChainSecurity_POA_Network_Omnibridge_Version_6_0_audit-37682389588f38075a14b6fcfb329cb1.pdf
- [21076] www.chainsecurity.com/security-audit/poa-network-omnibridge
- [21077] TokenBridge Audit by Quantstamp - OmniBridge-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf
- [21078] TokenBridge Audit by Quantstamp - AMB Bridge-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf
- [21079] SmartDec Security Audit-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf
- [21080] Peppersec Initial TokenBridge Audit-2e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e7e.pdf
- [21081] POA-Network-TokenBridge-contracts-5.4.1-security-assessment-report.pdf
- [21082] POA-Network-Token-bridge-security-assessment-report.pdf
- [21083] POA-Network-TokenBridge-Contracts-v2-3-2-Security-Assessment.pdf
- [21084] POA-Network-Token-bridge-security-assessment-report.pdf
- [21085] HashiMay2023.pdf
- [21086] g0-HashiMar2024.pdf

Fork inheritance lineage and inherited audits are included when available.
