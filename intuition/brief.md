# Agentic Audit Brief: Intuition

⚠️ Lifecycle status: DECLINING - TVL trajectory indicates non-active lifecycle.

## Project Overview

- Project: Intuition (`intuition`)
- Website: [https://www.intuition.systems](https://www.intuition.systems)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-19T09:16:42.607Z
- Pipeline run: v2-pipeline-2026-06-19-727228-cc10
- Chains: base
- Contract surface: 9 unique implementations (11 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Intuition is a developer tools protocol on Base that provides infrastructure for decentralized identity and reputation. It enables users to create and manage trust relationships through a system of claims and attestations.

### Architecture

The EntryPoint contract serves as the main gateway for user interactions, while Trust (behind a proxy) manages trust relationships and IntuitionEthClaim handles ETH-based claims. Multicall3 is a shared utility for batching calls, and the proxy pattern enables upgradeability.

## Contract Surface Quality

- Indexed contracts: 12; live-surface contracts included: 11 (11 live, 0 unknown).
- Excluded by liveness: 1 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 2/2 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 3/8 (37.5%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 9
- Raw deployments: 11
- Audits discovered: 5
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Staleness: 2 fresh, 0 aging, 3 stale, 0 unknown
- Tier 1 coverage: 37.5% (ConsenSys Diligence, Trail of Bits)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Consensys Diligence | Tier 1 | 3 | 37.5% | 2025-09 |
| Trail of Bits | Tier 1 | 2 | 25.0% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BaseEmissionsController | operational_periphery | base | unit-39472 | [`0x7745bd...b60667`](./contracts/base-8453/0x7745bdee668501e5eef7e9605c746f9cdfb60667/) | ✅ Audited |
| BaseEmissionsController | operational_periphery | base | n/a | [`0xb2ade5...191232`](./contracts/base-8453/0xb2ade5cb220f9edd121a623526c720a819191232/) | ✅ Audited |
| Trust | unknown | base | unit-39471 | [`0x6cd905...c6d8a3`](./contracts/base-8453/0x6cd905df2ed214b22e0d48ff17cd4200c1c6d8a3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EntryPoint | unknown | base | n/a | [`0x433708...5ff108`](./contracts/base-8453/0x4337084d9e255ff0702461cf8895ce9e3b5ff108/) | ⚠️ Unaudited |
| HubBridge | operational_periphery | base | n/a | 3 deployments: base [`0x2cc310...e039d7`](./contracts/base-8453/0x2cc310fed2493c61a7fc68519d646845ece039d7/); base `0xdeab88...0578e7`; base `0xfdae6a...1952a1` | ⚠️ Unaudited |
| IntuitionEthClaim | unknown | base | n/a | [`0x81cfb0...4bf672`](./contracts/base-8453/0x81cfb09cb44f7184ad934c09f82000701a4bf672/) | ⚠️ Unaudited |
| Multicall3 | periphery | base | n/a | [`0xca11bd...76ca11`](./contracts/base-8453/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| TimelockController | governance | base | n/a | [`0x1e442b...df9157`](./contracts/base-8453/0x1e442bbb08c98100b18fa830a88e8a57b5df9157/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | base | n/a | `0x914d7f...5643d7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024-03-intuition-smart-contracts-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-03-intuition-smart-contracts-securityreview.pdf) | Trail of Bits | Audit | 2024-03 | stale | Direct | contract_name | 2 | high |
| [- [Diligence Audit Report - 1]()](https://github.com/0xIntuition/intuition-contracts-v2/blob/main/audits/Diligence-Audit-Report-1.pdf) | Consensys Diligence | Audit | 2025-09 | fresh | Direct | contract_name | 3 | high |
| [- [Diligence Audit Report - 2]()](https://github.com/0xIntuition/intuition-contracts-v2/blob/main/audits/Diligence-Audit-Report-2.pdf) | Consensys Diligence | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [- [Intuition Smart Contracts]()](https://github.com/0xIntuition/intuition-contracts-v0.1/blob/main/audits/tob/Intuition%20Summary%20Report%20-%20ToB%20Audit%201.pdf) | Trail of Bits | Audit | 2024-03 | stale | Direct | contract_name | 2 | high |
| [Intuition - Smart Contracts - Summary Report with Fix Review Appendix.pdf](https://github.com/0xIntuition/intuition-contracts-v0.1/blob/main/audits/tob/Intuition%20-%20Smart%20Contracts%20-%20Summary%20Report%20with%20Fix%20Review%20Appendix.pdf) | Trail of Bits | Audit | 2024-04 | stale | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x433708...5ff108`](./contracts/base-8453/0x4337084d9e255ff0702461cf8895ce9e3b5ff108/) | EntryPoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2cc310...e039d7`](./contracts/base-8453/0x2cc310fed2493c61a7fc68519d646845ece039d7/) | HubBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x81cfb0...4bf672`](./contracts/base-8453/0x81cfb09cb44f7184ad934c09f82000701a4bf672/) | IntuitionEthClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 4 |
| upstream | 0 |
| standard_library | 4 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=4
- Match method counts: extraction_exact=9

Zero-match audit list:

- [13296] - [Diligence Audit Report - 2]()

Fork inheritance lineage and inherited audits are included when available.
