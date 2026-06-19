# Agentic Audit Brief: SOFA.org

⚠️ Lifecycle status: DECLINING - TVL dropped 14.6% over 90 days

## Project Overview

- Project: SOFA.org (`sofa.org`)
- Website: [https://www.sofa.org](https://www.sofa.org)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T06:14:39.137Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: arbitrum, bsc, ethereum, polygon, sei
- Contract surface: 19 unique implementations (33 raw deployments)
- DeFi Llama TVL: $2,069,854.61
- On-chain TVL (included contracts): $0.00
- TVL by chain: Ethereum $0.00

## Project Description

SOFA.org is a decentralized options protocol that offers structured yield products through vaults. Users can deposit assets into various vault types (e.g., SmartTrend, DNT, Dual) to earn returns based on options strategies, with support for multiple collateral types and leverage.

### Architecture

All vaults share a common architecture using TransparentUpgradeableProxy for upgradeability and are deployed by the same deployer cluster. The RCH and StRCH tokens serve as collateral or reward tokens across multiple vault types, creating a unified ecosystem.

## Contract Surface Quality

- Indexed contracts: 138; live-surface contracts included: 33 (33 live, 0 unknown).
- Excluded by liveness: 23 inactive, 82 singleton, 0 uninitialized.
- Deployment units: 13/35 live.
- Detected codebases: none
- Dependencies extracted: 3; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 15/19 (78.9%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 19
- Raw deployments: 33
- Audits discovered: 11
- Scoreable audits (matched contracts): 9
- ASD (verified + unaudited TVL): $0.00
- Latest audit: 2025-01 (aging)
- Staleness: 0 fresh, 6 aging, 5 stale, 0 unknown
- Tier 1 coverage: 31.6% (Code4rena)
- Note: This protocol is classified as [declining]. ASD of $0.00 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 15 | 78.9% | 2025-01 |
| Code4rena | Tier 1 | 6 | 31.6% | 2025-01 |
| PeckShield | Tier 2 | 4 | 21.1% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AAVEDNTVault | core_logic | ethereum | unit-37222 (2 proxies) | 2 deployments: ethereum [`0x00aeca...45ab19`](./contracts/ethereum-1/0x00aeca021d0f06c7dee54d58ee6af47b5645ab19/); ethereum `0x989897...cb84e3` | ✅ Audited |
| AAVESmartTrendVault | core_logic | ethereum | unit-37231 (4 proxies) | 4 deployments: ethereum [`0x21f759...52efdc`](./contracts/ethereum-1/0x21f759bcb31739032a00b37e3560a216ae52efdc/); ethereum `0x3191a0...703f8c`; ethereum `0xc9aa26...dae931`; ethereum `0xe483d5...bd2263` | ✅ Audited |
| AAVESmartTrendVault | core_logic | ethereum | unit-37240 (4 proxies) | 4 deployments: ethereum [`0x62104e...a4f212`](./contracts/ethereum-1/0x62104e40fa81a19f2b7e17c78c3ffbf4aca4f212/); ethereum `0x9377f1...820529`; ethereum `0x99c59d...d509ca`; ethereum `0xf6c70b...b683a6` | ✅ Audited |
| AAVESmartTrendVault | core_logic | bsc | unit-37246 (2 proxies) | 2 deployments: bsc [`0x842e97...34656a`](./contracts/bsc-56/0x842e97baa96cfe1534f1a50da112c7800134656a/); bsc `0x89c82d...43ea22` | ✅ Audited |
| AAVESmartTrendVault | core_logic | polygon | unit-37247 (2 proxies) | 2 deployments: polygon [`0x467067...40a7da`](./contracts/polygon-137/0x46706780749bc41e7ab99d13bc1b2a74df40a7da/); polygon `0x4fd90c...a1c021` | ✅ Audited |
| AAVESmartTrendVault | core_logic | sei | unit-37249 (2 proxies) | 2 deployments: sei [`0x634b69...b478b5`](./contracts/sei-1329/0x634b69cc4168cfc1c366078fdeb874affbb478b5/); sei `0x64bb27...882ff3` | ✅ Audited |
| Automator | unknown | arbitrum | unit-37252 | [`0x4c2414...073cdb`](./contracts/arbitrum-42161/0x4c241483b4a85e44c59bcecfe17a4e7d0a073cdb/) | ✅ Audited |
| AutomatorFactory | registry | arbitrum | n/a | [`0x1893b7...6e5aff`](./contracts/arbitrum-42161/0x1893b75a9711e1c84be86a81edc7f2929d6e5aff/) | ✅ Audited |
| DNTVault | core_logic | arbitrum | unit-37253 (2 proxies) | 2 deployments: arbitrum [`0x7ecd1b...dbe2b0`](./contracts/arbitrum-42161/0x7ecd1b5255543f4c2d7d8e475afcd01699dbe2b0/); arbitrum `0xdfeb34...c26c42` | ✅ Audited |
| FeeCollector | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4140ab...6509b5`](./contracts/ethereum-1/0x4140ab4afc36b93270a9659bd8387660cc6509b5/); arbitrum `0x4bd6be...0e032f` | ✅ Audited |
| LeverageDNTVault | core_logic | arbitrum | unit-37256 | [`0xbefb3a...5b2b86`](./contracts/arbitrum-42161/0xbefb3aad1dfb1660444f0d76a91261ef755b2b86/) | ✅ Audited |
| LeverageSmartTrendVault | core_logic | arbitrum | unit-37254 (2 proxies) | 2 deployments: arbitrum [`0x8e882a...d2f3f9`](./contracts/arbitrum-42161/0x8e882a56604f2b5735ea979bd6fa06c064d2f3f9/); arbitrum `0xa76ee9...a6ef96` | ✅ Audited |
| MerkleAirdrop | operational_periphery | ethereum | n/a | [`0x5a8cdd...553270`](./contracts/ethereum-1/0x5a8cdda6ca37b284b32ef8d513ef71ddac553270/) | ✅ Audited |
| RCH | unknown | ethereum | n/a | [`0x57b96d...bf11af`](./contracts/ethereum-1/0x57b96d4af698605563a4653d882635da59bf11af/) | ✅ Audited |
| SmartTrendVault | core_logic | arbitrum | unit-37251 (2 proxies) | 2 deployments: arbitrum [`0x00aeca...45ab19`](./contracts/arbitrum-42161/0x00aeca021d0f06c7dee54d58ee6af47b5645ab19/); arbitrum `0x6e72c8...83c7b8` | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AAVEDualVault | core_logic | ethereum | unit-37241 | [`0x7df81f...3b32ad`](./contracts/ethereum-1/0x7df81fdd4b995b31624f3d6662d547ac313b32ad/) | ⚠️ Unaudited |
| RCHAutomatorFactory | registry | ethereum | n/a | [`0x307999...47dc1a`](./contracts/ethereum-1/0x3079993b5be4d18d504a6e58939ac6637d47dc1a/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | sei | unit-37250 | [`0x842e97...34656a`](./contracts/sei-1329/0x842e97baa96cfe1534f1a50da112c7800134656a/) | ⚠️ Unaudited |
| ZenRCH | unknown | ethereum | n/a | [`0x893b33...f0ba08`](./contracts/ethereum-1/0x893b33977395642039de1b04a0cc788b4af0ba08/) | ⚠️ Unaudited |

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
| [PeckShield-Audit-Report-Sofa-v1.0.pdf (also discovered via alternate URL)](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Sofa-v1.0.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | 11 | high |
| [Code4rena(Zenith)](https://github.com/zenith-security/reports/blob/main/reports/Audit%20Report%20-%20Sofa%20%28May%202024%29.pdf) | Code4rena | Contest | 2024-05 | stale | Direct | contract_name | 12 | high |
| [Automator audited by Code4rena(Zenith)](https://github.com/zenith-security/reports/blob/main/reports/Audit%20Report%20-%20Sofa%20Automator%28Oct%202024%29.pdf) | Code4rena | Contest | 2024-10 | aging | Direct | contract_name | 1 | high |
| [Automator2.0 audited by Code4rena(Zenith)](https://github.com/zenith-security/reports/blob/main/reports/Zenith%20Audit%20Report%20-%20Sofa%20Automator%202.0.pdf) | Code4rena | Contest | 2025-01 | aging | Direct | contract_name | 0 | n/a |
| [Rendered PDF capture](https://raw.githubusercontent.com/zenith-security/reports/985c60dd51497dfd8540cdc16bf243265ba154b5/reports/Audit%20Report%20-%20Sofa%20Automator(Oct%202024).pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | 1 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/zenith-security/reports/985c60dd51497dfd8540cdc16bf243265ba154b5/reports/Zenith%20Audit%20Report%20-%20Sofa%20Automator%202.0.pdf) | yAudit | Audit | 2025-01 | aging | Direct | contract_name | 0 | n/a |
| [Rendered PDF capture](https://raw.githubusercontent.com/zenith-security/reports/985c60dd51497dfd8540cdc16bf243265ba154b5/reports/Audit%20Report%20-%20Sofa%20(May%202024).pdf) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | 12 | high |
| [Rendered PDF capture (also discovered via alternate URL)](https://raw.githubusercontent.com/sigp/public-audits/48f7de362df66942a77e1dd5954b580f28ed367f/reports/sofa/review.pdf) | yAudit | Audit | 2024-06 | stale | Direct | contract_name | 25 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/zenith-security/reports/84cd8bcd63d6a9e9f4385fa3f7aa87dca4c8c2fa/reports/Audit%20Report%20-%20Sofa%20Automator(Oct%202024).pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | 1 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/zenith-security/reports/84cd8bcd63d6a9e9f4385fa3f7aa87dca4c8c2fa/reports/Zenith%20Audit%20Report%20-%20Sofa%20Automator%202.0.pdf) | yAudit | Audit | 2025-01 | aging | Direct | contract_name | 1 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/zenith-security/reports/84cd8bcd63d6a9e9f4385fa3f7aa87dca4c8c2fa/reports/Audit%20Report%20-%20Sofa%20(May%202024).pdf) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | 26 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x307999...47dc1a`](./contracts/ethereum-1/0x3079993b5be4d18d504a6e58939ac6637d47dc1a/) | RCHAutomatorFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x893b33...f0ba08`](./contracts/ethereum-1/0x893b33977395642039de1b04a0cc788b4af0ba08/) | ZenRCH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 13 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=9
- Match method counts: extraction_exact=380

Zero-match audit list:

- [2828] Automator2.0 audited by Code4rena(Zenith)
- [2832] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
