# Agentic Audit Brief: Hyphen

⚠️ Lifecycle status: DECLINING - TVL changed 0.0% over 90 days

## Project Overview

- Project: Hyphen (`hyphen`)
- Website: [https://www.biconomy.io](https://www.biconomy.io)
- Lifecycle: declining (Tier 1, declining)
- Generated: 2026-06-21T08:21:25.326Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: base, ethereum, optimism, polygon
- Contract surface: 15 unique implementations (23 raw deployments)
- DeFi Llama TVL: $100,361.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Hyphen is a bridge protocol enabling cross-chain asset transfers. It uses smart contract wallets and paymasters to facilitate gasless transactions and account abstraction across Ethereum, Base, Polygon, and Optimism.

### Architecture

The Nexus & MEE family builds on the Legacy Contracts by upgrading wallet and validator implementations. Sponsorship Paymaster Contracts and Base & Optimism families integrate with the wallet infrastructure to enable gasless and token-based fee payments across chains.

## Contract Surface Quality

- Indexed contracts: 25; live-surface contracts included: 23 (9 live, 14 unknown).
- Excluded by liveness: 2 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Unverified dependencies: 1/10.

## Audit Coverage Summary

- Verified implementations audited: 7/10 (70.0%)
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 15
- Raw deployments: 23
- Audits discovered: 11
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Staleness: 1 fresh, 9 aging, 0 stale, 1 unknown
- Tier 1 coverage: 50.0% (Cyfrin, Spearbit)
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Pashov Audit Group | Tier 2 | 7 | 70.0% | 2026-05 |
| Spearbit | Tier 1 | 5 | 50.0% | 2025-03 |
| Cyfrin | Tier 1 | 4 | 40.0% | 2024-09 |
| Zenith | Tier 2 | 4 | 40.0% | 2025-04 |

## Contract Surface

### ✅ Verified + Audited (7)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| K1MeeValidator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x000000...1a2d95`](./contracts/ethereum-1/0x00000000d12897ddadc2044614a9677b191a2d95/); ethereum `0x000000...08a44c` | ✅ Audited |
| K1Validator | unknown | ethereum | n/a | [`0x000000...c75cba`](./contracts/ethereum-1/0x0000002d6db27c52e3c11c1cf24072004ac75cba/) | ✅ Audited |
| K1ValidatorFactory | registry | ethereum | n/a | [`0x000000...684cd6`](./contracts/ethereum-1/0x00000024115aa990f0bae0b6b0d5b8f68b684cd6/) | ✅ Audited |
| Nexus | unknown | ethereum | n/a | 2 deployments: ethereum [`0x000000...923b03`](./contracts/ethereum-1/0x000000004f43c49e93c970e84001853a70923b03/); ethereum `0x000000...dfeaaf` | ✅ Audited |
| NexusAccountFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x000000...7b13de`](./contracts/ethereum-1/0x000000001d1d5004a02bafab9de2d6ce5b7b13de/); ethereum `0x000000...9f6f3a` | ✅ Audited |
| NexusBootstrap | unknown | ethereum | n/a | 2 deployments: ethereum [`0x000000...27c289`](./contracts/ethereum-1/0x00000000d3254452a909e4eed47455af7e27c289/); ethereum `0x000000...ea5903` | ✅ Audited |
| Storage | unknown | ethereum | n/a | [`0x000000...71b183`](./contracts/ethereum-1/0x0000000671eb337e12fe5db0e788f32e1d71b183/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BiconomySponsorshipPaymaster | unknown | optimism | n/a | 4 deployments: ethereum `0x000000...841bbc`; optimism [`0x000000...146852`](./contracts/optimism-10/0x0000006087310897e0bffcb3f0ed3704f7146852/); polygon `0x000000...841bbc`; base [`0x000000...146852`](./contracts/base-8453/0x0000006087310897e0bffcb3f0ed3704f7146852/) | ⚠️ Unaudited |
| EntryPoint | unknown | ethereum | n/a | [`0x000000...7da032`](./contracts/ethereum-1/0x0000000071727de22e5e9d8baf0edac6f37da032/) | ⚠️ Unaudited |
| EtherForwarder | unknown | ethereum | n/a | 2 deployments: ethereum [`0x000000...0d41da`](./contracts/ethereum-1/0x000000001f1c68bd5bf69aa1ccc1d429700d41da/); ethereum `0x000000...4132a1` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (5)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x000000...fb3b6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x000000...54ec3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x000000...fa4dd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b1912...0633b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe854c8...cad977` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CodeHawks-Cyfrin-Competition-170924.pdf](https://github.com/bcnmy/nexus/blob/main/audits/CodeHawks-Cyfrin-Competition-170924.pdf) | Cyfrin | Audit | 2024-09 | aging | Direct | contract_name | 6 | high |
| [* [Core audit]()](https://github.com/bcnmy/nexus/blob/main/audits/report-cantinacode-biconomy-0708-updated.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | 7 | high |
| [* [ERC-7739]()](https://github.com/bcnmy/nexus/blob/main/audits/report-cantinacode-biconomy-erc7739-addon-final.pdf) | Spearbit | Audit | 2024-11 | aging | Direct | contract_name | 3 | high |
| [Biconomy-Nexus_Zenith-Audit-Report.pdf](https://github.com/bcnmy/nexus/blob/main/audits/Biconomy-Nexus_Zenith-Audit-Report.pdf) | Zenith | Audit | 2025-03 | aging | Direct | contract_name | 5 | high |
| [Nexus-Pashov-Review_2025-03.pdf](https://github.com/bcnmy/nexus/blob/main/audits/Nexus-Pashov-Review_2025-03.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | contract_name | 9 | high |
| [The composability module is **audited by Pashov Audit Group** ([May 2026 report]()) and deployed deterministically at `0x0000821108B5C9F3fe17E40811bE5b66DaF8f0e7` (module) and `0x00008211dea1Aca67ac55fc44AE3bF88CF41281d` (storage) on every supported chain.](https://github.com/bcnmy/erc8211-contracts/blob/main/audits/2026-05-Composability-Nexus-Pashov-Review.pdf) | Pashov Audit Group | Audit | 2026-05 | fresh | Direct | contract_name | 6 | high |
| [* [Zenith Report (2025-03)]()](https://github.com/bcnmy/composability/blob/main/audits/2025-03-Composability_Zenith-Audit-Report.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | contract_name | 3 | high |
| [* [Pashov Report (2025-03)]() (also discovered via alternate URL)](https://github.com/bcnmy/composability/blob/main/audits/2025-03-Composability-Pashov-Review.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | contract_name | 1 | high |
| [2025-02 Zenith Audit Report - Biconomy MEE Contracts.pdf](https://github.com/bcnmy/mee-contracts/blob/main/audit/2025-02%20Zenith%20Audit%20Report%20-%20Biconomy%20MEE%20Contracts.pdf) | Zenith | Audit | 2025-02 | aging | Direct | contract_name | 2 | high |
| [2025-04 Zenith Audit Report - Node PM Sponsorship.pdf](https://github.com/bcnmy/mee-contracts/blob/main/audit/2025-04%20Zenith%20Audit%20Report%20-%20Node%20PM%20Sponsorship.pdf) | Zenith | Audit | 2025-04 | aging | Direct | contract_name | 2 | high |
| [.gitkeep](https://github.com/bcnmy/nexus/blob/main/audits/.gitkeep) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x000000...146852`](./contracts/optimism-10/0x0000006087310897e0bffcb3f0ed3704f7146852/) | BiconomySponsorshipPaymaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000000...0d41da`](./contracts/ethereum-1/0x000000001f1c68bd5bf69aa1ccc1d429700d41da/) | EtherForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 14 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=10
- Match method counts: extraction_exact=45

Zero-match audit list:

- [16245] .gitkeep

Fork inheritance lineage and inherited audits are included when available.
