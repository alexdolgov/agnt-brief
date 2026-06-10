# Agentic Audit Brief: Ankr

## Project Overview

- Project: Ankr (`ankr`)
- Website: [https://www.ankr.com/](https://www.ankr.com/)
- Lifecycle: active (Tier 0, 91.3% below peak)
- Generated: 2026-06-10T20:58:57.570Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: avalanche, ethereum, fantom
- Contract surface: 6 unique implementations (6 raw deployments)
- DeFi Llama TVL: $21,690,242.52
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Ankr is a Web3 infrastructure provider. Its DeFi/DefiLlama-listed product includes liquid staking services that allow users to stake assets across multiple blockchains and receive liquid staking tokens, while the currently attested contract roles are largely unknown or incomplete and should not be treated as the full active deployment surface.

### Architecture

The Ankr family shares infrastructure through configuration contracts (EarnConfig, StakingConfig, Config) that manage parameters for various pools and tokens. Governance (Governance_R3) and the AnkrProtocol contract coordinate across chains, while the CrossChainBridge facilitates asset transfers between networks.

## Audit Coverage Summary

- Verified implementations audited: 0/2 (0.0%)
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 6
- Raw deployments: 6
- Audits discovered: 14
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-08 (aging)
- Staleness: 0 fresh, 1 aging, 13 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AETH_R21 | unknown | ethereum | [`0xe95a20...c2c3cb`](./contracts/ethereum-1/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | ⚠️ Unaudited |
| FutureCertAVAX_R3 | unknown | avalanche | [`0xc33448...c727f6`](./contracts/avalanche-43114/0xc3344870d52688874b06d844e0c36cc39fc727f6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x8a2f83...2ce27a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfd0f61...6c34d6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x26dcfb...c5480c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xcfc785...ef5179` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [detailed audit report](https://www.ankr.com/docs/pdf/system_smart_contracts_security_audit.pdf) | ChainSecurity | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [DL audit link (also discovered via alternate URL)](https://assets.ankr.com/files/stkr_smart_contract_auditing_report.pdf) | unknown | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Ankr Bridge Mar 2022 audit report by Beosin](https://www.ankr.com/docs/pdf/ankr_bridge_security_audit.pdf) | Beosin | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [ANKR Delegated Staking Dec 2022 audit report by Beosin](https://www.ankr.com/docs/pdf/smart_contract_security_audit.pdf) | Beosin | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [ANKR Delegated Staking Feb 2023 audit report by Veridise](https://www.ankr.com/docs/pdf/ankr_delegated_staking_audit_veridise.pdf) | Veridise | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [AVAX Liquid Staking Jul 2022 audit report by Beosin](https://www.ankr.com/docs/pdf/smart_contract_security_audit_avax_beosin.pdf) | Beosin | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [BNB Liquid Staking Apr 2022 audit report by Beosin](https://www.ankr.com/docs/pdf/smart_contract_security_audit_bnb.pdf) | Beosin | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [BNB Liquid Staking Jul 2022 audit report by PeckShield](https://www.ankr.com/docs/pdf/smart_contract_security_audit_bnb_peckshield.pdf) | PeckShield | Audit | 2022-07 | stale | Direct | n/a | 0 | n/a |
| [BNB Liquid Staking Feb 2023 audit report by Veridise](https://www.ankr.com/docs/pdf/smart_contract_security_audit_ankrbnb_veridise_feb_2023.pdf) | Veridise | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [ETH Liquid Staking Nov 2022 audit report by Beosin](https://www.ankr.com/docs/pdf/smart_contract_security_audit_aeth_beosin.pdf) | Beosin | Audit | 2022-11 | stale | Direct | n/a | 0 | n/a |
| [ETH Liquid Staking May 2023 audit report by Salus](https://www.ankr.com/docs/pdf/smart_contract_security_audit_ankreth_salus.pdf) | Salus | Audit | 2023-05 | stale | Direct | n/a | 0 | n/a |
| [FLOW Liquid Staking Aug 2024 audit report by Halborn](https://www.ankr.com/docs/pdf/smart_contract_security_audit_flow_halborn.pdf) | Halborn | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [FTM Liquid Staking Mar 2022 audit report by Beosin](https://www.ankr.com/docs/pdf/smart_contract_security_audit_ftm.pdf) | Beosin | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [POL Liquid Staking Jun 2022 audit report by Beosin](https://www.ankr.com/docs/pdf/smart_contract_security_audit_matic.pdf) | Beosin | Audit | 2022-06 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0xe95a20...c2c3cb`](./contracts/ethereum-1/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | AETH_R21 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [1860] detailed audit report
- [3459] DL audit link
- [3461] Ankr Bridge Mar 2022 audit report by Beosin
- [3462] ANKR Delegated Staking Dec 2022 audit report by Beosin
- [3463] ANKR Delegated Staking Feb 2023 audit report by Veridise
- [3464] AVAX Liquid Staking Jul 2022 audit report by Beosin
- [3465] BNB Liquid Staking Apr 2022 audit report by Beosin
- [3466] BNB Liquid Staking Jul 2022 audit report by PeckShield
- [3467] BNB Liquid Staking Feb 2023 audit report by Veridise
- [3469] ETH Liquid Staking Nov 2022 audit report by Beosin
- [3470] ETH Liquid Staking May 2023 audit report by Salus
- [3471] FLOW Liquid Staking Aug 2024 audit report by Halborn
- [3472] FTM Liquid Staking Mar 2022 audit report by Beosin
- [3473] POL Liquid Staking Jun 2022 audit report by Beosin

Fork inheritance lineage and inherited audits are included when available.
