# Agentic Audit Brief: Intuition

## Project Overview

- Project: Intuition (`intuition`)
- Website: [https://www.intuition.systems](https://www.intuition.systems)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:23.686Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: base
- Contract surface: 10 unique implementations (12 raw deployments)
- DeFi Llama TVL: $0.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Developer Tools. Structurally: 8 project-authored contract(s) across 1 chain(s); 2 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 1 common project-authored base contract(s) (erc165). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 14; live-surface contracts included: 12 (11 live, 1 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/6 (50.0%)
- Deployed-live implementations: 9 of 10 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/9
- Verified + Unaudited implementations: 6
- Verified by bytecode match: 0
- Unverified implementations: 1
- Unique implementations: 10
- Raw deployments: 12
- Audits discovered: 5 (5 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 2 fresh, 0 aging, 3 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 50.0% (ConsenSys Diligence, Trail of Bits)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Consensys Diligence | Tier 1 | 3 | 33.3% | 2025-09 |
| Trail of Bits | Tier 1 | 2 | 22.2% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BaseEmissionsController | operational_periphery | base | n/a | [`0x7745bdee668501e5eef7e9605c746f9cdfb60667`](./contracts/base-8453/0x7745bdee668501e5eef7e9605c746f9cdfb60667/) | ✅ Audited |
| BaseEmissionsController | operational_periphery | base | n/a | [`0xb2ade5cb220f9edd121a623526c720a819191232`](./contracts/base-8453/0xb2ade5cb220f9edd121a623526c720a819191232/) | ✅ Audited |
| Trust | unknown | base | n/a | [`0x6cd905df2ed214b22e0d48ff17cd4200c1c6d8a3`](./contracts/base-8453/0x6cd905df2ed214b22e0d48ff17cd4200c1c6d8a3/) | ✅ Audited |

### ⚠️ Verified + Unaudited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| EntryPoint | unknown | base | n/a | [`0x4337084d9e255ff0702461cf8895ce9e3b5ff108`](./contracts/base-8453/0x4337084d9e255ff0702461cf8895ce9e3b5ff108/) | ⚠️ Unaudited |
| HubBridge | operational_periphery | base | n/a | 3 deployments: base [`0x2cc310fed2493c61a7fc68519d646845ece039d7`](./contracts/base-8453/0x2cc310fed2493c61a7fc68519d646845ece039d7/); base `0xdeab8819f5aa7732f533f53b9e29d2334d0578e7`; base `0xfdae6ae4ca946746cb7470570bbc95c71e1952a1` | ⚠️ Unaudited |
| IntuitionEthClaim | unknown | base | n/a | [`0x81cfb09cb44f7184ad934c09f82000701a4bf672`](./contracts/base-8453/0x81cfb09cb44f7184ad934c09f82000701a4bf672/) | ⚠️ Unaudited |
| Multicall3 | periphery | base | n/a | [`0xca11bde05977b3631167028862be2a173976ca11`](./contracts/base-8453/0xca11bde05977b3631167028862be2a173976ca11/) | ⚠️ Unaudited |
| ProxyAdmin | unknown | base | n/a | [`0x857552ab95e6cc389b977d5fef971dede8683e8e`](./contracts/base-8453/0x857552ab95e6cc389b977d5fef971dede8683e8e/) | ⚠️ Unaudited |
| TimelockController | governance | base | n/a | [`0x1e442bbb08c98100b18fa830a88e8a57b5df9157`](./contracts/base-8453/0x1e442bbb08c98100b18fa830a88e8a57b5df9157/) | ⚠️ Unaudited |

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
| UnnamedContract | unknown | base | n/a | `0x914d7fec6aac8cd542e72bca78b30650d45643d7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024-03-intuition-smart-contracts-securityreview.pdf](https://github.com/trailofbits/publications/blob/master/reviews/2024-03-intuition-smart-contracts-securityreview.pdf) | Trail of Bits | Audit | 2024-03 | stale | Direct | contract_name | 2 | n/a |
| [Diligence-Audit-Report-1.pdf](https://github.com/0xIntuition/intuition-contracts-v2/blob/main/audits/Diligence-Audit-Report-1.pdf) | Consensys Diligence | Audit | 2025-09 | fresh | Direct | contract_name | 3 | n/a |
| [Diligence-Audit-Report-2.pdf](https://github.com/0xIntuition/intuition-contracts-v2/blob/main/audits/Diligence-Audit-Report-2.pdf) | Consensys Diligence | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [Intuition Summary Report - ToB Audit 1.pdf](https://github.com/0xIntuition/intuition-contracts-v0.1/blob/main/audits/tob/Intuition%20Summary%20Report%20-%20ToB%20Audit%201.pdf) | Trail of Bits | Audit | 2024-03 | stale | Direct | contract_name | 2 | n/a |
| [Intuition - Smart Contracts - Summary Report with Fix Review Appendix.pdf](https://github.com/0xIntuition/intuition-contracts-v0.1/blob/main/audits/tob/Intuition%20-%20Smart%20Contracts%20-%20Summary%20Report%20with%20Fix%20Review%20Appendix.pdf) | Trail of Bits | Audit | 2024-04 | stale | Direct | contract_name | 2 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| base | [`0x4337084d9e255ff0702461cf8895ce9e3b5ff108`](./contracts/base-8453/0x4337084d9e255ff0702461cf8895ce9e3b5ff108/) | EntryPoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x2cc310fed2493c61a7fc68519d646845ece039d7`](./contracts/base-8453/0x2cc310fed2493c61a7fc68519d646845ece039d7/) | HubBridge | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | [`0x81cfb09cb44f7184ad934c09f82000701a4bf672`](./contracts/base-8453/0x81cfb09cb44f7184ad934c09f82000701a4bf672/) | IntuitionEthClaim | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 0 |
| standard_library | 3 |
| needs_review | 1 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=9

Zero-match audit list:

- [13296] Diligence-Audit-Report-2.pdf

Fork inheritance lineage and inherited audits are included when available.
