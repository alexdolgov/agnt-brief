# Agentic Audit Brief: Ankr

## Project Overview

- Project: Ankr (`ankr`)
- Website: [https://www.ankr.com/](https://www.ankr.com/)
- Lifecycle: active (Tier 0, 91.3% below peak)
- Generated: 2026-05-25T15:15:43.920Z
- Pipeline run: v2-pipeline-2026-05-25-eff36e-79e6
- Chains: avalanche, ethereum, fantom
- Contract surface: 32 unique implementations (37 raw deployments)
- DeFi Llama TVL: $22,086,693.55
- On-chain TVL (included contracts): $47.39
- TVL by chain: Avalanche $47.39

## Project Description

Ankr is a liquid staking protocol that allows users to stake assets across multiple blockchains and receive liquid staking tokens in return. It provides infrastructure for staking, earning rewards, and maintaining liquidity through derivative tokens.

### Architecture

The Ankr family shares infrastructure through configuration contracts (EarnConfig, StakingConfig, Config) that manage parameters for various pools and tokens. Governance (Governance_R3) and the AnkrProtocol contract coordinate across chains, while the CrossChainBridge facilitates asset transfers between networks.

## Audit Coverage Summary

- Verified implementations audited: 3/22 (13.6%)
- Verified + Unaudited implementations: 19
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 32
- Raw deployments: 37
- Audits discovered: 14
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $47.39
- Latest audit: 2024-08 (aging)
- Staleness: 0 fresh, 1 aging, 13 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Beosin | Tier 2 | 3 | 13.6% | 2022-12 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AvalanchePool | core_logic | avalanche | [`0x8a2f83...2ce27a`](./contracts/avalanche-43114/0x8a2f83347f0e59faefe2320b7422f8aa432ce27a/) | ✅ Audited |
| FutureBondAVAX | unknown | avalanche | [`0x11e6ec...df6618`](./contracts/avalanche-43114/0x11e6ecc43f0da52ebd5ad7a6ba3fc925d7df6618/) | ✅ Audited |
| FutureCertAVAX | unknown | avalanche | [`0x96152d...9aa90e`](./contracts/avalanche-43114/0x96152df28527110c89763efb8f2394d25a9aa90e/) | ✅ Audited |

### ⚠️ Verified + Unaudited (19)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| AvalanchePool_R6 | core_logic | avalanche | 2 deployments: avalanche [`0x7baa1e...0a836d`](./contracts/avalanche-43114/0x7baa1e3bfe49db8361680785182b80bb420a836d/); avalanche `0xfad2d6...b45874` | ⚠️ Unaudited |
| AETH_R21 | unknown | ethereum | [`0xe95a20...c2c3cb`](./contracts/ethereum-1/0xe95a203b1a91a908f9b9ce46459d101078c2c3cb/) | ⚠️ Unaudited |
| AvalanchePool_R2 | core_logic | avalanche | 2 deployments: avalanche [`0x4755c0...caba60`](./contracts/avalanche-43114/0x4755c0be76536309f40b924781b258faa0caba60/); avalanche `0xf3a274...817d14` | ⚠️ Unaudited |
| AvalanchePool_R3 | core_logic | avalanche | [`0xd53a4d...26a8d3`](./contracts/avalanche-43114/0xd53a4d620347831e8a4afcb2657f70b7ef26a8d3/) | ⚠️ Unaudited |
| AvalanchePool_R4 | core_logic | avalanche | [`0x4e178d...b4b4f3`](./contracts/avalanche-43114/0x4e178dc6a86bdbc230761945dafa048f58b4b4f3/) | ⚠️ Unaudited |
| AvalanchePool_R5 | core_logic | avalanche | [`0x40d6fc...dad0a5`](./contracts/avalanche-43114/0x40d6fc59fe5c3ecb045f9d7fe0bb5e18e7dad0a5/) | ⚠️ Unaudited |
| FutureBondAVAX_R1 | unknown | avalanche | [`0xde78c1...789934`](./contracts/avalanche-43114/0xde78c1d094ff062b9173cff4142a54971a789934/) | ⚠️ Unaudited |
| FutureBondAVAX_R2 | unknown | avalanche | [`0x66044a...fbc9bd`](./contracts/avalanche-43114/0x66044a6e3e921e11900372b943061c83ecfbc9bd/) | ⚠️ Unaudited |
| FutureBondAVAX_R3 | unknown | avalanche | [`0x7840a8...6ca643`](./contracts/avalanche-43114/0x7840a89079290f35390979b4c95b53b2926ca643/) | ⚠️ Unaudited |
| FutureBondAVAX_R4 | unknown | avalanche | [`0x5d7e1c...ac0a83`](./contracts/avalanche-43114/0x5d7e1c3df5961c9664435da0100d550fb9ac0a83/) | ⚠️ Unaudited |
| FutureBondAVAX_R5 | unknown | avalanche | [`0x315654...18a069`](./contracts/avalanche-43114/0x3156549752f744e493d57d97ae31fc4aa318a069/) | ⚠️ Unaudited |
| FutureBondAVAX_R6 | unknown | avalanche | [`0x3488e7...09b39a`](./contracts/avalanche-43114/0x3488e74267861d2ac354499c8896740fbf09b39a/) | ⚠️ Unaudited |
| FutureBondAVAX_R7 | unknown | avalanche | [`0xf094b4...b13b93`](./contracts/avalanche-43114/0xf094b4291c25ee85ed3996a21589fd1d4fb13b93/) | ⚠️ Unaudited |
| FutureBondAVAX_R8 | unknown | avalanche | 2 deployments: avalanche [`0x0f74bf...0a9be3`](./contracts/avalanche-43114/0x0f74bfd1a33471641d86d9c7d468694e0b0a9be3/); avalanche `0x6c6f91...843929` | ⚠️ Unaudited |
| FutureCertAVAX_R1 | unknown | avalanche | [`0x632ad3...f84e6b`](./contracts/avalanche-43114/0x632ad3226f62b674be28c852233e7a44d4f84e6b/) | ⚠️ Unaudited |
| FutureCertAVAX_R2 | unknown | avalanche | [`0xc040b8...25683e`](./contracts/avalanche-43114/0xc040b8365686dc2cb2aefc004849f79a1025683e/) | ⚠️ Unaudited |
| FutureCertAVAX_R3 | unknown | avalanche | [`0xc33448...c727f6`](./contracts/avalanche-43114/0xc3344870d52688874b06d844e0c36cc39fc727f6/) | ⚠️ Unaudited |
| ProxyAdmin | governance | avalanche | 3 deployments: avalanche [`0x3bfce3...d18c4f`](./contracts/avalanche-43114/0x3bfce37b5401bef13c78830d3a9fb14294d18c4f/); avalanche `0xb13cec...26138b`; avalanche `0xcc4e08...2cb392` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | [`0x7e28bf...ad6ecd`](./contracts/avalanche-43114/0x7e28bff4c435c48ec20e2a8d975abb3af0ad6ecd/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x8a2f83...2ce27a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xfd0f61...6c34d6` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0x26dcfb...c5480c` | ❓ Unverified |
| UnnamedContract | unknown | fantom | `0xcfc785...ef5179` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x1becfb...aa3846` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x6a3b5b...8abe2d` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x755797...01be08` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0x9df460...bbfd55` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xb6fcfc...70db0f` | ❓ Unverified |
| UnnamedContract | unknown | avalanche | `0xce4315...2f66ed` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [detailed audit report](https://www.ankr.com/docs/pdf/system_smart_contracts_security_audit.pdf) | ChainSecurity | Audit | 2022-04 | stale | Direct | n/a | 0 | n/a |
| [DL audit link (also discovered via alternate URL)](https://assets.ankr.com/files/stkr_smart_contract_auditing_report.pdf) | unknown | Audit | 2020-11 | stale | Direct | n/a | 0 | n/a |
| [Ankr Bridge Mar 2022 audit report by Beosin](https://www.ankr.com/docs/pdf/ankr_bridge_security_audit.pdf) | Beosin | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |
| [ANKR Delegated Staking Dec 2022 audit report by Beosin](https://www.ankr.com/docs/pdf/smart_contract_security_audit.pdf) | Beosin | Audit | 2022-12 | stale | Direct | n/a | 0 | n/a |
| [ANKR Delegated Staking Feb 2023 audit report by Veridise](https://www.ankr.com/docs/pdf/ankr_delegated_staking_audit_veridise.pdf) | Veridise | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [AVAX Liquid Staking Jul 2022 audit report by Beosin](https://www.ankr.com/docs/pdf/smart_contract_security_audit_avax_beosin.pdf) | Beosin | Audit | 2022-07 | stale | Direct | contract_name | 3 | high |
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
| avalanche | [`0x4755c0...caba60`](./contracts/avalanche-43114/0x4755c0be76536309f40b924781b258faa0caba60/) | AvalanchePool_R2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xd53a4d...26a8d3`](./contracts/avalanche-43114/0xd53a4d620347831e8a4afcb2657f70b7ef26a8d3/) | AvalanchePool_R3 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x4e178d...b4b4f3`](./contracts/avalanche-43114/0x4e178dc6a86bdbc230761945dafa048f58b4b4f3/) | AvalanchePool_R4 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x40d6fc...dad0a5`](./contracts/avalanche-43114/0x40d6fc59fe5c3ecb045f9d7fe0bb5e18e7dad0a5/) | AvalanchePool_R5 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xde78c1...789934`](./contracts/avalanche-43114/0xde78c1d094ff062b9173cff4142a54971a789934/) | FutureBondAVAX_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x66044a...fbc9bd`](./contracts/avalanche-43114/0x66044a6e3e921e11900372b943061c83ecfbc9bd/) | FutureBondAVAX_R2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x7840a8...6ca643`](./contracts/avalanche-43114/0x7840a89079290f35390979b4c95b53b2926ca643/) | FutureBondAVAX_R3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5d7e1c...ac0a83`](./contracts/avalanche-43114/0x5d7e1c3df5961c9664435da0100d550fb9ac0a83/) | FutureBondAVAX_R4 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x315654...18a069`](./contracts/avalanche-43114/0x3156549752f744e493d57d97ae31fc4aa318a069/) | FutureBondAVAX_R5 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x3488e7...09b39a`](./contracts/avalanche-43114/0x3488e74267861d2ac354499c8896740fbf09b39a/) | FutureBondAVAX_R6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xf094b4...b13b93`](./contracts/avalanche-43114/0xf094b4291c25ee85ed3996a21589fd1d4fb13b93/) | FutureBondAVAX_R7 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x0f74bf...0a9be3`](./contracts/avalanche-43114/0x0f74bfd1a33471641d86d9c7d468694e0b0a9be3/) | FutureBondAVAX_R8 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x632ad3...f84e6b`](./contracts/avalanche-43114/0x632ad3226f62b674be28c852233e7a44d4f84e6b/) | FutureCertAVAX_R1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xc040b8...25683e`](./contracts/avalanche-43114/0xc040b8365686dc2cb2aefc004849f79a1025683e/) | FutureCertAVAX_R2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 28 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=3

Zero-match audit list:

- [1860] detailed audit report
- [3459] DL audit link
- [3461] Ankr Bridge Mar 2022 audit report by Beosin
- [3462] ANKR Delegated Staking Dec 2022 audit report by Beosin
- [3463] ANKR Delegated Staking Feb 2023 audit report by Veridise
- [3465] BNB Liquid Staking Apr 2022 audit report by Beosin
- [3466] BNB Liquid Staking Jul 2022 audit report by PeckShield
- [3467] BNB Liquid Staking Feb 2023 audit report by Veridise
- [3469] ETH Liquid Staking Nov 2022 audit report by Beosin
- [3470] ETH Liquid Staking May 2023 audit report by Salus
- [3471] FLOW Liquid Staking Aug 2024 audit report by Halborn
- [3472] FTM Liquid Staking Mar 2022 audit report by Beosin
- [3473] POL Liquid Staking Jun 2022 audit report by Beosin

Fork inheritance lineage and inherited audits are included when available.
