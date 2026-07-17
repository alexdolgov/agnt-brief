# Agentic Audit Brief: Hyphen

## Project Overview

- Project: Hyphen (`hyphen`)
- Website: [https://www.biconomy.io](https://www.biconomy.io)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:21.836Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-dc67
- Chains: base, ethereum, optimism, polygon
- Contract surface: 15 unique implementations (23 raw deployments)
- DeFi Llama TVL: $100,361.01
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Bridge. Structurally: 9 project-authored contract(s) across 2 chain(s); upgradeable via ERC1967/UUPS proxies; built on solady.

### Architecture

The protocol comprises 3 functional families. Its contracts share 3 common project-authored base contract(s) (modulemanager, storage, registryadapter). Dominant framework: solady.

## Contract Surface Quality

- Indexed contracts: 23; live-surface contracts included: 23 (18 live, 5 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/10 (70.0%)
- Deployed-live implementations: 10 of 15 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 7/10
- Verified + Unaudited implementations: 3
- Verified by bytecode match: 0
- Unverified implementations: 5
- Unique implementations: 15
- Raw deployments: 23
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-05 (fresh)
- Audit staleness (calendar age): 1 fresh, 9 aging, 0 stale, 1 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 7 match-unverified
- Tier 1 coverage: 50.0% (Cyfrin, Spearbit)

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
| K1MeeValidator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x00000000d12897ddadc2044614a9677b191a2d95`](./contracts/ethereum-1/0x00000000d12897ddadc2044614a9677b191a2d95/); ethereum `0x00000000e894100becfc7c934ab7ac8fba08a44c` | ✅ Audited |
| K1Validator | unknown | ethereum | n/a | [`0x0000002d6db27c52e3c11c1cf24072004ac75cba`](./contracts/ethereum-1/0x0000002d6db27c52e3c11c1cf24072004ac75cba/) | ✅ Audited |
| K1ValidatorFactory | registry | ethereum | n/a | [`0x00000024115aa990f0bae0b6b0d5b8f68b684cd6`](./contracts/ethereum-1/0x00000024115aa990f0bae0b6b0d5b8f68b684cd6/) | ✅ Audited |
| Nexus | unknown | ethereum | n/a | 2 deployments: ethereum [`0x000000004f43c49e93c970e84001853a70923b03`](./contracts/ethereum-1/0x000000004f43c49e93c970e84001853a70923b03/); ethereum `0x000000008761e87f023f65c49dc9cb1c7edfeaaf` | ✅ Audited |
| NexusAccountFactory | registry | ethereum | n/a | 2 deployments: ethereum [`0x000000001d1d5004a02bafab9de2d6ce5b7b13de`](./contracts/ethereum-1/0x000000001d1d5004a02bafab9de2d6ce5b7b13de/); ethereum `0x000000226cada0d8b36034f5d5c06855f59f6f3a` | ✅ Audited |
| NexusBootstrap | unknown | ethereum | n/a | 2 deployments: ethereum [`0x00000000d3254452a909e4eed47455af7e27c289`](./contracts/ethereum-1/0x00000000d3254452a909e4eed47455af7e27c289/); ethereum `0x000000f5b753fdd20c5ca2d7c1210b3ab1ea5903` | ✅ Audited |
| Storage | unknown | ethereum | n/a | [`0x0000000671eb337e12fe5db0e788f32e1d71b183`](./contracts/ethereum-1/0x0000000671eb337e12fe5db0e788f32e1d71b183/) | ✅ Audited |

### ⚠️ Verified + Unaudited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BiconomySponsorshipPaymaster | unknown | optimism | n/a | 4 deployments: ethereum `0x00000072a5f551d6e80b2f6ad4fb256a27841bbc`; optimism [`0x0000006087310897e0bffcb3f0ed3704f7146852`](./contracts/optimism-10/0x0000006087310897e0bffcb3f0ed3704f7146852/); polygon `0x00000072a5f551d6e80b2f6ad4fb256a27841bbc`; base [`0x0000006087310897e0bffcb3f0ed3704f7146852`](./contracts/base-8453/0x0000006087310897e0bffcb3f0ed3704f7146852/) | ⚠️ Unaudited |
| EntryPoint | unknown | ethereum | n/a | [`0x0000000071727de22e5e9d8baf0edac6f37da032`](./contracts/ethereum-1/0x0000000071727de22e5e9d8baf0edac6f37da032/) | ⚠️ Unaudited |
| EtherForwarder | unknown | ethereum | n/a | 2 deployments: ethereum [`0x000000001f1c68bd5bf69aa1ccc1d429700d41da`](./contracts/ethereum-1/0x000000001f1c68bd5bf69aa1ccc1d429700d41da/); ethereum `0x000000afe527a978ecb761008af475cff04132a1` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x000000001964d23c59962fc7a912872ee8fb3b6a` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0000000c8b6b3329cea5d15c9d8c15f1f254ec3c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x000000c4781be3349f81d341027fd7a4edfa4dd2` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x4b19129ea58431a06d01054f69acae5de50633b6` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe854c84cd68fc434cb3b0042c29235d452cad977` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [CodeHawks-Cyfrin-Competition-170924.pdf](https://github.com/bcnmy/nexus/blob/main/audits/CodeHawks-Cyfrin-Competition-170924.pdf) | Cyfrin | Audit | 2024-09 | aging | Direct | contract_name | 4 | n/a |
| [report-cantinacode-biconomy-0708-updated.pdf](https://github.com/bcnmy/nexus/blob/main/audits/report-cantinacode-biconomy-0708-updated.pdf) | Spearbit | Audit | 2025-03 | aging | Direct | contract_name | 5 | n/a |
| [report-cantinacode-biconomy-erc7739-addon-final.pdf](https://github.com/bcnmy/nexus/blob/main/audits/report-cantinacode-biconomy-erc7739-addon-final.pdf) | Spearbit | Audit | 2024-11 | aging | Direct | contract_name | 2 | n/a |
| [Biconomy-Nexus_Zenith-Audit-Report.pdf](https://github.com/bcnmy/nexus/blob/main/audits/Biconomy-Nexus_Zenith-Audit-Report.pdf) | Zenith | Audit | 2025-03 | aging | Direct | contract_name | 3 | n/a |
| [Nexus-Pashov-Review_2025-03.pdf](https://github.com/bcnmy/nexus/blob/main/audits/Nexus-Pashov-Review_2025-03.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | contract_name | 6 | n/a |
| [2026-05-Composability-Nexus-Pashov-Review.pdf](https://github.com/bcnmy/erc8211-contracts/blob/main/audits/2026-05-Composability-Nexus-Pashov-Review.pdf) | Pashov Audit Group | Audit | 2026-05 | fresh | Direct | contract_name | 3 | n/a |
| [2025-03-Composability_Zenith-Audit-Report.pdf](https://github.com/bcnmy/composability/blob/main/audits/2025-03-Composability_Zenith-Audit-Report.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | contract_name | 2 | n/a |
| [2025-03-Composability-Pashov-Review.pdf](https://github.com/bcnmy/composability/blob/main/audits/2025-03-Composability-Pashov-Review.pdf) | Pashov Audit Group | Audit | 2025-03 | aging | Direct | contract_name | 1 | n/a |
| [2025-02 Zenith Audit Report - Biconomy MEE Contracts.pdf](https://github.com/bcnmy/mee-contracts/blob/main/audit/2025-02%20Zenith%20Audit%20Report%20-%20Biconomy%20MEE%20Contracts.pdf) | Zenith | Audit | 2025-02 | aging | Direct | contract_name | 1 | n/a |
| [2025-04 Zenith Audit Report - Node PM Sponsorship.pdf](https://github.com/bcnmy/mee-contracts/blob/main/audit/2025-04%20Zenith%20Audit%20Report%20-%20Node%20PM%20Sponsorship.pdf) | Zenith | Audit | 2025-04 | aging | Direct | contract_name | 1 | n/a |
| [.gitkeep](https://github.com/bcnmy/nexus/blob/main/audits/.gitkeep) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| optimism | [`0x0000006087310897e0bffcb3f0ed3704f7146852`](./contracts/optimism-10/0x0000006087310897e0bffcb3f0ed3704f7146852/) | BiconomySponsorshipPaymaster | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0000000071727de22e5e9d8baf0edac6f37da032`](./contracts/ethereum-1/0x0000000071727de22e5e9d8baf0edac6f37da032/) | EntryPoint | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x000000001f1c68bd5bf69aa1ccc1d429700d41da`](./contracts/ethereum-1/0x000000001f1c68bd5bf69aa1ccc1d429700d41da/) | EtherForwarder | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 10 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 1
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=28

Zero-match audit list:

- [16245] .gitkeep

Fork inheritance lineage and inherited audits are included when available.
