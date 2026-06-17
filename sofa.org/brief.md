# Agentic Audit Brief: SOFA.org

⚠️ Lifecycle status: DECLINING - TVL dropped 14.6% over 90 days

## Project Overview

- Project: SOFA.org (`sofa.org`)
- Website: [https://www.sofa.org](https://www.sofa.org)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-17T07:00:49.839Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum
- Contract surface: 12 unique implementations (20 raw deployments)
- DeFi Llama TVL: $2,069,854.61
- On-chain TVL (included contracts): $0.00
- TVL by chain: Ethereum $0.00

## Project Description

SOFA.org is a decentralized options protocol that offers structured yield products through vaults. Users can deposit assets into various vault types (e.g., SmartTrend, DNT, Dual) to earn returns based on options strategies, with support for multiple collateral types and leverage.

### Architecture

All vaults share a common architecture using TransparentUpgradeableProxy for upgradeability and are deployed by the same deployer cluster. The RCH and StRCH tokens serve as collateral or reward tokens across multiple vault types, creating a unified ecosystem.

## Contract Surface Quality

- Indexed contracts: 122; live-surface contracts included: 20 (20 live, 0 unknown).
- Excluded by liveness: 18 inactive, 84 singleton, 0 uninitialized.
- Deployment units: 4/23 live.
- Detected codebases: aave-v2
- Dependencies extracted: 10; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 7/12 (58.3%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 12
- Raw deployments: 20
- Audits discovered: 8
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): $0.00
- Latest audit: 2025-01 (aging)
- Staleness: 0 fresh, 4 aging, 4 stale, 0 unknown
- Tier 1 coverage: 50.0% (Code4rena)
- Note: This protocol is classified as [declining]. ASD of $0.00 represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Code4rena | Tier 1 | 6 | 50.0% | 2025-01 |
| yAudit | Tier 2 | 6 | 50.0% | 2025-01 |
| unknown | Tier 2 | 5 | 41.7% | 2024-06 |
| PeckShield | Tier 2 | 4 | 33.3% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AAVEDNTVault | core_logic | ethereum | unit-30367 (2 proxies) | 2 deployments: ethereum [`0x00aeca...45ab19`](./contracts/ethereum-1/0x00aeca021d0f06c7dee54d58ee6af47b5645ab19/); ethereum `0x989897...cb84e3` | ✅ Audited |
| AAVESmartTrendVault | core_logic | ethereum | unit-30376 (4 proxies) | 4 deployments: ethereum [`0x21f759...52efdc`](./contracts/ethereum-1/0x21f759bcb31739032a00b37e3560a216ae52efdc/); ethereum `0x3191a0...703f8c`; ethereum `0xc9aa26...dae931`; ethereum `0xe483d5...bd2263` | ✅ Audited |
| AAVESmartTrendVault | core_logic | ethereum | unit-30385 (4 proxies) | 4 deployments: ethereum [`0x62104e...a4f212`](./contracts/ethereum-1/0x62104e40fa81a19f2b7e17c78c3ffbf4aca4f212/); ethereum `0x9377f1...820529`; ethereum `0x99c59d...d509ca`; ethereum `0xf6c70b...b683a6` | ✅ Audited |
| AutomatorFactory | registry | ethereum | n/a | [`0x438b59...be720b`](./contracts/ethereum-1/0x438b597bdc946db1bd62c2bb32ccec7742be720b/) | ✅ Audited |
| FeeCollector | unknown | ethereum | n/a | [`0x4140ab...6509b5`](./contracts/ethereum-1/0x4140ab4afc36b93270a9659bd8387660cc6509b5/) | ✅ Audited |
| MerkleAirdrop | operational_periphery | ethereum | n/a | [`0x5a8cdd...553270`](./contracts/ethereum-1/0x5a8cdda6ca37b284b32ef8d513ef71ddac553270/) | ✅ Audited |
| RCH | unknown | ethereum | n/a | [`0x57b96d...bf11af`](./contracts/ethereum-1/0x57b96d4af698605563a4653d882635da59bf11af/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AAVEDualVault | core_logic | ethereum | unit-30386 | [`0x7df81f...3b32ad`](./contracts/ethereum-1/0x7df81fdd4b995b31624f3d6662d547ac313b32ad/) | ⚠️ Unaudited |
| AutomatorBurner | unknown | ethereum | n/a | [`0x909332...59a14d`](./contracts/ethereum-1/0x9093321dee6123272ec54690ce28437e2b59a14d/) | ⚠️ Unaudited |
| CrvUSDAutomator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x267adc...10cf8c`](./contracts/ethereum-1/0x267adc3e106b72ce3b0f2bbdb6c638a12110cf8c/); ethereum `0x31d22b...c1bf8a` | ⚠️ Unaudited |
| RCHAutomatorFactory | registry | ethereum | n/a | [`0x307999...47dc1a`](./contracts/ethereum-1/0x3079993b5be4d18d504a6e58939ac6637d47dc1a/) | ⚠️ Unaudited |
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
| [review.pdf (also discovered via alternate URL)](https://github.com/sigp/public-audits/blob/master/reports/sofa/review.pdf) | unknown | Audit | 2024-06 | stale | Direct | contract_name | 12 | high |
| [Code4rena(Zenith)](https://github.com/zenith-security/reports/blob/main/reports/Audit%20Report%20-%20Sofa%20%28May%202024%29.pdf) | Code4rena | Contest | 2024-05 | stale | Direct | contract_name | 12 | high |
| [Automator audited by Code4rena(Zenith)](https://github.com/zenith-security/reports/blob/main/reports/Audit%20Report%20-%20Sofa%20Automator%28Oct%202024%29.pdf) | Code4rena | Contest | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [Automator2.0 audited by Code4rena(Zenith)](https://github.com/zenith-security/reports/blob/main/reports/Zenith%20Audit%20Report%20-%20Sofa%20Automator%202.0.pdf) | Code4rena | Contest | 2025-01 | aging | Direct | contract_name | 1 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/zenith-security/reports/985c60dd51497dfd8540cdc16bf243265ba154b5/reports/Audit%20Report%20-%20Sofa%20Automator(Oct%202024).pdf) | yAudit | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://raw.githubusercontent.com/zenith-security/reports/985c60dd51497dfd8540cdc16bf243265ba154b5/reports/Zenith%20Audit%20Report%20-%20Sofa%20Automator%202.0.pdf) | yAudit | Audit | 2025-01 | aging | Direct | contract_name | 1 | high |
| [Rendered PDF capture](https://raw.githubusercontent.com/zenith-security/reports/985c60dd51497dfd8540cdc16bf243265ba154b5/reports/Audit%20Report%20-%20Sofa%20(May%202024).pdf) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | 12 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x909332...59a14d`](./contracts/ethereum-1/0x9093321dee6123272ec54690ce28437e2b59a14d/) | AutomatorBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x267adc...10cf8c`](./contracts/ethereum-1/0x267adc3e106b72ce3b0f2bbdb6c638a12110cf8c/) | CrvUSDAutomator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x307999...47dc1a`](./contracts/ethereum-1/0x3079993b5be4d18d504a6e58939ac6637d47dc1a/) | RCHAutomatorFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x893b33...f0ba08`](./contracts/ethereum-1/0x893b33977395642039de1b04a0cc788b4af0ba08/) | ZenRCH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 2
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=250

Zero-match audit list:

- [2827] Automator audited by Code4rena(Zenith)
- [2831] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
