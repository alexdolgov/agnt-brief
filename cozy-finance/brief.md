# Agentic Audit Brief: Cozy Finance

## Project Overview

- Project: Cozy Finance (`cozy-finance`)
- Website: [https://www.cozy.finance](https://www.cozy.finance)
- Lifecycle: active (Tier 0, 73.5% below peak)
- Generated: 2026-06-10T22:33:38.159Z
- Pipeline run: v2-pipeline-2026-06-10-5b3b54-03d9
- Chains: optimism
- Contract surface: 48 unique implementations (49 raw deployments)
- DeFi Llama TVL: $2,295,123.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Cozy Finance is a DeFi safety stack for managing and underwriting on-chain risk. The protocol includes protection markets as well as Tranche, Reserve, Earn, and Safety Module components that let users provide capital, earn yield, and support coverage or risk-management mechanisms across supported deployments.

### Architecture

The Core Protocol relies on Model Factories and Trigger Factories to deploy the pricing models and payout triggers that parameterize each protection market. The Metadata Registry provides descriptive information for markets created by the Core Protocol, ensuring a consistent user experience across the system.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 43
- Unique implementations: 48
- Raw deployments: 49
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

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| ChainlinkTriggerFactory | registry | optimism | [`0x961277...f113e2`](./contracts/optimism-10/0x9612779e725f66f34efd94aa723bac28baf113e2/) | ⚠️ Unaudited |
| CostModelDynamicLevelFactory | registry | optimism | 2 deployments: optimism [`0x5adf41...6cc4c8`](./contracts/optimism-10/0x5adf41d47767e61a9aed55b836194b9fd96cc4c8/); optimism `0xcfe0dd...17a79d` | ⚠️ Unaudited |
| CostModelJumpRateFactory | registry | optimism | [`0xcd3b7b...2338e3`](./contracts/optimism-10/0xcd3b7b1981377b58e2dbdb95a5b7c939662338e3/) | ⚠️ Unaudited |
| DripDecayModelConstantFactory | registry | optimism | [`0xa95019...11ee9a`](./contracts/optimism-10/0xa950195c07315eff3145839e7793580ca311ee9a/) | ⚠️ Unaudited |
| UMATriggerFactory | registry | optimism | [`0xf98a76...078e5d`](./contracts/optimism-10/0xf98a7667fabdc2a9182f6600ad87332bff078e5d/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (43)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | optimism | `0x0749ca...0d4d9e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x0a475f...70a5c0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x0aae8c...3f7864` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x0bfdc9...0dea48` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x0e4e17...e7fdc8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x1603f0...c0adb9` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x17aff8...0e8410` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x20433c...46989e` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x33970d...335d03` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x35b52d...bfd5ea` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x3fe029...40dc61` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x483ddb...c8ac72` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x4a343d...c18b0f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x4ce4fc...cbfadc` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x4d2819...736d64` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x562460...3d53d8` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x57d255...ac7b6d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x5e8e77...110fa2` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x724ba9...6b8aa7` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x7c6ef4...5c91e4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x7edfad...647a29` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x7fdafc...8fb35d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x7ffbf9...46b3f4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x8da6e9...6eaa8c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x953b21...6f9b6d` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x996e0a...6fa668` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0x9c5a8b...546f0c` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xa623e7...1b78f4` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xad4618...e3c28f` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xb2fa45...0cf9ae` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xba4cb5...26a622` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xbfc907...774add` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xcb4c51...1b11ff` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xcff72f...53e9ad` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xd1ca15...77bd87` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xd29d0e...263352` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xd662db...c0e2d5` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xde7637...8859a0` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xdebe19...1e6447` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xe4bbfc...ad0ebf` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xe75b71...e63081` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xf4c05f...d134f3` | ❓ Unverified |
| UnnamedContract | unknown | optimism | `0xf8f351...d5316a` | ❓ Unverified |

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
| native | 0 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 47 |

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
