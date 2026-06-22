# Agentic Audit Brief: MortgageFi

## Project Overview

- Project: MortgageFi (`mortgagefi`)
- Website: [https://mortgagefi.app](https://mortgagefi.app)
- Lifecycle: active (Tier 0, 45.9% below peak)
- Generated: 2026-06-21T15:38:55.945Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, base
- Contract surface: 5 unique implementations (8 raw deployments)
- DeFi Llama TVL: $777,898.46
- On-chain TVL (included contracts): $131,527.70
- TVL by chain: Base $130,352.04 | Arbitrum $1,175.67

## Project Description

MortgageFi is a lending protocol that enables users to borrow against or lend assets through isolated lending pools. It supports multiple collateral and debt pairs, such as USDC/WETH and USDT/WBTC, on Base and Arbitrum One.

### Architecture

The MortgageFi family consists of isolated pool contracts that operate independently for each asset pair, with a shared upgradeable proxy contract (mortgagefiusdccbbtcupgraded) likely providing common logic or governance across pools.

## Contract Surface Quality

- Indexed contracts: 30; live-surface contracts included: 8 (8 live, 0 unknown).
- Excluded by liveness: 22 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 1/1 live.
- Detected codebases: none
- Dependencies extracted: 4; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 2/5 (40.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 5
- Raw deployments: 8
- Audits discovered: 3
- Scoreable audits (matched contracts): 2
- ASD (verified + unaudited TVL): $130,640.24
- Latest audit: 2024-08 (aging)
- Staleness: 0 fresh, 3 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Decurity | Tier 2 | 2 | 40.0% | 2024-08 |
| Hashlock | Tier 2 | 2 | 40.0% | 2024-08 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| mortgageconversionvault | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x61d268...33fbed`](./contracts/arbitrum-42161/0x61d2688121676ed8123ad62e71994c66ee33fbed/); arbitrum `0xa468d9...9f8988` | ✅ Audited |
| mortgagecontracts | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0xa702f6...059109`](./contracts/arbitrum-42161/0xa702f61b6e055be8d394754f59814254f7059109/); arbitrum `0xede6f5...92bfe1` | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| mortgagefipoolusdcweth | core_logic | base | n/a | [`0x1be87d...de9eea`](./contracts/base-8453/0x1be87d273d47c3832ab7853812e9a995a4de9eea/) | ⚠️ Unaudited |
| mortgagefipoolusdtwbtc | core_logic | arbitrum | n/a | 2 deployments: arbitrum [`0x2f5aac...520a91`](./contracts/arbitrum-42161/0x2f5aac46575f68fe600e99096ca38301a4520a91/); arbitrum `0x9be2cf...22a33f` | ⚠️ Unaudited |
| mortgagefiusdccbbtcupgraded | unknown | base | unit-42966 | [`0xe93131...b62dc7`](./contracts/base-8453/0xe93131620945a1273b48f57f453983d270b62dc7/) | ⚠️ Unaudited |

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
| [mortgagefi-audit-report-1.1.pdf](https://github.com/Decurity/audits/blob/master/MortgageFi/mortgagefi-audit-report-1.1.pdf) | Decurity | Audit | 2024-08 | aging | Direct | contract_name | 4 | high |
| [DL audit link](https://hashlock.com/audits/mortgagefi) | unknown | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [View Report](https://hashlock.com/wp-content/uploads/2024/10/MortageFi-Smart-Contract-Audit-Report-Final-Report.pdf) | Hashlock | Audit | 2024-08 | aging | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x1be87d...de9eea`](./contracts/base-8453/0x1be87d273d47c3832ab7853812e9a995a4de9eea/) | mortgagefipoolusdcweth | core_logic | $130,352.04 | Verified native implementation with $130,352.04 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x2f5aac...520a91`](./contracts/arbitrum-42161/0x2f5aac46575f68fe600e99096ca38301a4520a91/) | mortgagefipoolusdtwbtc | core_logic | $288.20 | Verified native implementation with $288.20 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0xe93131...b62dc7`](./contracts/base-8453/0xe93131620945a1273b48f57f453983d270b62dc7/) | mortgagefiusdccbbtcupgraded | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 5 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: extraction_exact=12

Zero-match audit list:

- [13525] DL audit link

Fork inheritance lineage and inherited audits are included when available.
