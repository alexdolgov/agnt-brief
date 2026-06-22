# Agentic Audit Brief: Vaultka

⚠️ Lifecycle status: DEAD - TVL dropped 98.0% over 90 days

## Project Overview

- Project: Vaultka (`vaultka`)
- Website: [https://www.vaultka.com](https://www.vaultka.com)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T20:48:58.202Z
- Pipeline run: v2-pipeline-2026-06-19-727228-a815
- Chains: arbitrum
- Contract surface: 14 unique implementations (15 raw deployments)
- DeFi Llama TVL: $5,886.88
- On-chain TVL (included contracts): $4,845,417.34
- TVL by chain: Arbitrum $4,845,417.34

## Project Description

Vaultka is a yield optimization protocol on Arbitrum that offers automated vaults for leveraged yield farming, liquidity provision, and staking. Users deposit assets into various vaults (e.g., SakeVault, VodkaVault, Water) which execute strategies across GMX, AARK, and other DeFi protocols to generate returns. The protocol also features a governance token (VKA) with voting escrow mechanics and a suite of reward handlers and vesting contracts.

### Architecture

All contracts belong to a single Vaultka family, sharing a common governance token (VKA) and voting escrow system. Vaults like SakeVault and VodkaVault rely on handler contracts (e.g., VodkaV2GMXHandler) and reward handlers to interact with external protocols and distribute incentives, while proxy contracts provide upgradeability across the system.

## Contract Surface Quality

- Indexed contracts: 1683; live-surface contracts included: 15 (15 live, 0 unknown).
- Excluded by liveness: 1040 inactive, 628 singleton, 0 uninitialized.
- Deployment units: 7/311 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/14 (7.1%)
- Verified + Unaudited implementations: 13
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 14
- Raw deployments: 15
- Audits discovered: 4
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $4,845,417.34
- Latest audit: 2023-08 (stale)
- Staleness: 0 fresh, 0 aging, 4 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $4,845,417.34 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 7.1% | 2023-02 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| VodkaVault | core_logic | arbitrum | unit-40070 | [`0x008177...f5ecde`](./contracts/arbitrum-42161/0x0081772fd29e4838372cbccdd020f53954f5ecde/) | ✅ Audited |

### ⚠️ Verified + Unaudited (13)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TokenImplementation | token | arbitrum | unit-40116 | [`0x2bcc6d...330c07`](./contracts/arbitrum-42161/0x2bcc6d6cdbbdc0a4071e48bb3b969b06b3330c07/) | ⚠️ Unaudited |
| DualStaking | token | arbitrum | n/a | [`0x31fa38...28a65e`](./contracts/arbitrum-42161/0x31fa38a6381e9d1f4770c73ab14a0ced1528a65e/) | ⚠️ Unaudited |
| VKAToken | token | arbitrum | n/a | [`0xafccb7...80622d`](./contracts/arbitrum-42161/0xafccb724e3aec1657fc9514e3e53a0e71e80622d/) | ⚠️ Unaudited |
| AgedVodkaV2BTC | unknown | arbitrum | unit-40243 | [`0x83c8a6...d26770`](./contracts/arbitrum-42161/0x83c8a6b6867a3706a99573d39dc65a6805d26770/) | ⚠️ Unaudited |
| Claim | unknown | arbitrum | n/a | [`0x24f563...286a1a`](./contracts/arbitrum-42161/0x24f563ba1cb5373b3935284833bf8b9bc6286a1a/) | ⚠️ Unaudited |
| esVKAToken | token | arbitrum | n/a | [`0x95b3f9...20eb2a`](./contracts/arbitrum-42161/0x95b3f9797077ddca971ab8524b439553a220eb2a/) | ⚠️ Unaudited |
| ProxyAdmin | governance | arbitrum | n/a | 2 deployments: arbitrum [`0x97ba85...805568`](./contracts/arbitrum-42161/0x97ba85abdd14ee2f1c84f67f3f58a28031805568/); arbitrum `0xeec16e...518e34` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-40124 | [`0x316142...289269`](./contracts/arbitrum-42161/0x316142c166ada230d0afad9493ef4bf053289269/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-40153 | [`0x421c25...f76a1d`](./contracts/arbitrum-42161/0x421c25a322c7683af7c0076664f8ab36a2f76a1d/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-40259 | [`0x919898...c9cf27`](./contracts/arbitrum-42161/0x9198989a85e35adec46309e06684dca444c9cf27/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | arbitrum | unit-40338 | [`0xdf8a26...f53b83`](./contracts/arbitrum-42161/0xdf8a266e3066872cd7f942b66dcb84a196f53b83/) | ⚠️ Unaudited |
| Vester12Months | operational_periphery | arbitrum | n/a | [`0xebdd7a...ba2fd2`](./contracts/arbitrum-42161/0xebdd7a3c94132ef72a955e869d8780e064ba2fd2/) | ⚠️ Unaudited |
| Vester3Months | operational_periphery | arbitrum | n/a | [`0x40abc7...c5f1ee`](./contracts/arbitrum-42161/0x40abc7a356cb220a5e3e3bd3b12a1852dac5f1ee/) | ⚠️ Unaudited |

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
| [Fortitude-Vaultka-Audit-Report.pdf (also discovered via alternate URL)](https://github.com/Vaultka/vaultka-contracts/blob/main/Audits/Fortitude-Vaultka-Audit-Report.pdf) | unknown | Audit | 2023-02 | stale | Direct | contract_name | 1 | high |
| [Vaultka_Zokyo_audit_report_30th_2023.pdf](https://github.com/zokyo-sec/audit-reports/blob/main/Vaultka/Vaultka_Zokyo_audit_report_30th_2023.pdf) | Zokyo | Audit | 2023-08 | stale | Direct | contract_name | 0 | n/a |
| [Rendered PDF capture](https://raw.githubusercontent.com/zokyo-sec/audit-reports/f01422b04915aae6aae8aa386f62203b0019f918/Vaultka/Vaultka_Zokyo_audit_report_30th_2023.pdf) | Hacken | Audit | 2023-08 | stale | Direct | contract_name | 0 | n/a |
| [Rendered PDF capture](https://raw.githubusercontent.com/zokyo-sec/audit-reports/0fffba57bcb4eb8255f54659804bc8c76d16275c/Vaultka/Vaultka_Zokyo_audit_report_30th_2023.pdf) | Hacken | Audit | 2023-08 | stale | Direct | contract_name | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | [`0x31fa38...28a65e`](./contracts/arbitrum-42161/0x31fa38a6381e9d1f4770c73ab14a0ced1528a65e/) | DualStaking | token | $52,012.11 | Verified native implementation with $52,012.11 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xafccb7...80622d`](./contracts/arbitrum-42161/0xafccb724e3aec1657fc9514e3e53a0e71e80622d/) | VKAToken | token | $2,081.54 | Verified native implementation with $2,081.54 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x24f563...286a1a`](./contracts/arbitrum-42161/0x24f563ba1cb5373b3935284833bf8b9bc6286a1a/) | Claim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x95b3f9...20eb2a`](./contracts/arbitrum-42161/0x95b3f9797077ddca971ab8524b439553a220eb2a/) | esVKAToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x40abc7...c5f1ee`](./contracts/arbitrum-42161/0x40abc7a356cb220a5e3e3bd3b12a1852dac5f1ee/) | Vester3Months | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=321

Zero-match audit list:

- [14096] Vaultka_Zokyo_audit_report_30th_2023.pdf
- [14098] Rendered PDF capture
- [15903] Rendered PDF capture

Fork inheritance lineage and inherited audits are included when available.
