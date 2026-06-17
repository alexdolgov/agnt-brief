# Agentic Audit Brief: Cozy Finance

## Project Overview

- Project: Cozy Finance (`cozy-finance`)
- Website: [https://www.cozy.finance](https://www.cozy.finance)
- Lifecycle: active (Tier 0, 77.1% below peak)
- Generated: 2026-06-17T07:00:49.499Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: ethereum, optimism
- Contract surface: 13 unique implementations (13 raw deployments)
- DeFi Llama TVL: $1,965,031.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Cozy Finance is a DeFi safety stack for managing and underwriting on-chain risk. The protocol includes protection markets as well as Tranche, Reserve, Earn, and Safety Module components that let users provide capital, earn yield, and support coverage or risk-management mechanisms across supported deployments.

### Architecture

The Core Protocol relies on Model Factories and Trigger Factories to deploy the pricing models and payout triggers that parameterize each protection market. The Metadata Registry provides descriptive information for markets created by the Core Protocol, ensuring a consistent user experience across the system.

## Contract Surface Quality

- Indexed contracts: 65; live-surface contracts included: 13 (13 live, 0 unknown).
- Excluded by liveness: 52 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: compound-v2
- Unverified dependencies: 3/4.

## Audit Coverage Summary

- Verified implementations audited: 0/0 (0.0%)
- Verified + Unaudited implementations: 0
- Verified by bytecode match: 0
- Unverified implementations: 13
- Unique implementations: 13
- Raw deployments: 13
- Audits discovered: 5
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-02 (aging)
- Staleness: 0 fresh, 3 aging, 1 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (0)

- None

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x1b2e4a...5499b7` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x20fd25...dd014f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x22893a...27d56d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x425640...7d28df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4f993a...8d7759` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x527d9a...e34e5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x640c73...920726` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x6f4b2b...205bc0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x8e6b29...74e5c2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97d251...8c3843` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa97f85...c96dde` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf8ec0f...3e91ea` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x562460...3d53d8` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [here](https://www.notion.so/cozyfinance/Audits-2cc44b4e9a2080ea9d8ec959c45bface) | Code4rena | Contest | n/a | unknown | Direct | n/a | 0 | n/a |
| [www.notion.so/cozyfinance/Certona-Dec-2025-2cc44b4e9a2080c99693ce828082b406](https://www.notion.so/cozyfinance/Certona-Dec-2025-2cc44b4e9a2080c99693ce828082b406) | Code4rena | Contest | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [www.notion.so/cozyfinance/Cantina-Aug-Oct-2025-2cc44b4e9a208015aa07ea1ae6ce14e6](https://www.notion.so/cozyfinance/Cantina-Aug-Oct-2025-2cc44b4e9a208015aa07ea1ae6ce14e6) | Spearbit | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [www.notion.so/cozyfinance/yAudit-May-2025-2cc44b4e9a20801ba5a5d1b6022c20a6](https://www.notion.so/cozyfinance/yAudit-May-2025-2cc44b4e9a20801ba5a5d1b6022c20a6) | yAudit | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [www.notion.so/cozyfinance/Zellic-Mar-2024-2cc44b4e9a20806791baf9ebeaa0319b](https://www.notion.so/cozyfinance/Zellic-Mar-2024-2cc44b4e9a20806791baf9ebeaa0319b) | Zellic | Audit | 2024-02 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 1 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 12 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Zero-match audit list:

- [2849] here
- [2850] www.notion.so/cozyfinance/Certona-Dec-2025-2cc44b4e9a2080c99693ce828082b406
- [2851] www.notion.so/cozyfinance/Cantina-Aug-Oct-2025-2cc44b4e9a208015aa07ea1ae6ce14e6
- [2852] www.notion.so/cozyfinance/yAudit-May-2025-2cc44b4e9a20801ba5a5d1b6022c20a6
- [2853] www.notion.so/cozyfinance/Zellic-Mar-2024-2cc44b4e9a20806791baf9ebeaa0319b

Fork inheritance lineage and inherited audits are included when available.
