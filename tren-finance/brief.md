# Agentic Audit Brief: Tren Finance

⚠️ Lifecycle status: DEAD - TVL changed 0.0% over 90 days

## Project Overview

- Project: Tren Finance (`tren-finance`)
- Website: [https://www.tren.finance/](https://www.tren.finance/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-19T12:22:07.604Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: arbitrum, base
- Contract surface: 4 unique implementations (5 raw deployments)
- DeFi Llama TVL: $25.64
- On-chain TVL (included contracts): $177,936.40
- TVL by chain: Base $173,497.87 | Arbitrum $4,438.53

## Project Description

Tren Finance is a Collateralized Debt Position (CDP) protocol that allows users to deposit collateral and mint a stablecoin (DebtToken). It includes mechanisms for liquidations, stability pools, and flash loans to maintain the peg and system health.

### Architecture

The CDP Core family relies on PriceFeedL2 from the Stability family for collateral valuation. StabilityPool interacts with BorrowerOperations during liquidations, and SwapManager facilitates token swaps for fee collection and stability mechanisms.

## Contract Surface Quality

- Indexed contracts: 77; live-surface contracts included: 5 (5 live, 0 unknown).
- Excluded by liveness: 62 inactive, 10 singleton, 0 uninitialized.
- Deployment units: 0/11 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 1/4 (25.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 4
- Raw deployments: 5
- Audits discovered: 6
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): $177,936.40
- Latest audit: 2024-11 (aging)
- Staleness: 0 fresh, 2 aging, 3 stale, 1 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $177,936.40 represents exposure in a protocol with dead activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 25.0% | 2024-11 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SingleLiquidityProvider | unknown | arbitrum | n/a | [`0xdc4a31...1df11b`](./contracts/arbitrum-42161/0xdc4a311f0d852934d9b51c0eac7c7e13ea1df11b/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| TrenToken | token | base | n/a | 2 deployments: base [`0x45bc45...f891b5`](./contracts/base-8453/0x45bc451818502c45b7e9f628b9e1a72247f891b5/); base `0xa77e22...25c282` | ⚠️ Unaudited |
| DebtToken | token | arbitrum | n/a | [`0xd4fe6e...10239f`](./contracts/arbitrum-42161/0xd4fe6e1e37dfcf35e9eeb54d4cca149d1c10239f/) | ⚠️ Unaudited |
| CurveStableSwapNG | operational_periphery | arbitrum | n/a | [`0x4bd135...4e58b4`](./contracts/arbitrum-42161/0x4bd135524897333bec344e50ddd85126554e58b4/) | ⚠️ Unaudited |

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
| [Tren Finance_Zokyo_audit_report_Nov19th_2024.pdf](https://github.com/zokyo-sec/audit-reports/blob/main/Tren%20Finance/Tren%20Finance_Zokyo_audit_report_Nov19th_2024.pdf) | unknown | Audit | 2024-11 | aging | Direct | contract_name | 1 | high |
| [Audit Report](https://omniscia.io/reports/tren-finance-protocol-implementation-669a7ac304bcc60018f62232) | Omniscia | Audit | 2024-10 | aging | Direct | contract_name | 0 | n/a |
| [Audit Report](https://www.halborn.com/audits/tren-finance/hooks-contracts) | Halborn | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Gamma Security Review (Jan 2024).pdf](https://github.com/GammaStrategies/hypervisor/blob/master/Gamma%20Security%20Review%20(Jan%202024).pdf) | OpenZeppelin | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [* ConsenSys Diligence:[ Read Audit]()](https://github.com/GammaStrategies/hypervisor/blob/master/audits/ConsenSys-Diligence-Audit-28-03-22.pdf) | Consensys Diligence | Audit | 2022-02 | stale | Direct | n/a | 0 | n/a |
| [* Arbitrary Execution:[ Read Audit]()](https://github.com/GammaStrategies/hypervisor/blob/master/audits/AE_Gamma_audit_09_03_22.pdf) | Consensys Diligence | Audit | 2022-03 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x45bc45...f891b5`](./contracts/base-8453/0x45bc451818502c45b7e9f628b9e1a72247f891b5/) | TrenToken | token | $173,497.87 | Verified native implementation with $173,497.87 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0xd4fe6e...10239f`](./contracts/arbitrum-42161/0xd4fe6e1e37dfcf35e9eeb54d4cca149d1c10239f/) | DebtToken | token | $4,438.53 | Verified native implementation with $4,438.53 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 3 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 5
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=1
- Match method counts: extraction_exact=15

Zero-match audit list:

- [14027] Audit Report
- [14028] Audit Report
- [14029] Gamma Security Review (Jan 2024).pdf
- [14030] * ConsenSys Diligence:[ Read Audit]()
- [14031] * Arbitrary Execution:[ Read Audit]()

Fork inheritance lineage and inherited audits are included when available.
