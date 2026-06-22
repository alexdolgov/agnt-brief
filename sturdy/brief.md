# Agentic Audit Brief: Sturdy

⚠️ Lifecycle status: DEAD - TVL dropped 22.6% over 90 days

## Project Overview

- Project: Sturdy (`sturdy`)
- Website: [https://sturdy.finance/](https://sturdy.finance/)
- Lifecycle: dead (Tier 1, dead)
- Generated: 2026-06-21T12:20:38.233Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: ethereum, linea, mode, optimism, sei
- Contract surface: 14 unique implementations (31 raw deployments)
- DeFi Llama TVL: $371,222.00
- On-chain TVL (included contracts): $812,904.08
- TVL by chain: Ethereum $812,904.08

## Project Description

Sturdy is a lending protocol that aggregates yield from multiple DeFi strategies, allowing users to deposit assets and earn optimized returns. It uses tokenized vaults (TokenizedStrategy) to manage deposits and route funds to various yield sources like Silo and Aera.

### Architecture

The Sturdy V2 family relies on multiple TokenizedStrategy proxies (SturdySiloStrategy, AeraStrategy) that share a common implementation and use AggregatorDataProvider contracts for data. The CurveswapAdapter serves as a supporting adapter for swap operations within the strategies.

## Contract Surface Quality

- Indexed contracts: 314; live-surface contracts included: 31 (30 live, 1 unknown).
- Excluded by liveness: 281 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 1/5 live.
- Detected codebases: aave-v2
- Unverified dependencies: 5/116.

## Audit Coverage Summary

- Verified implementations audited: 0/11 (0.0%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 14
- Raw deployments: 31
- Audits discovered: 7
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $812,904.08
- Latest audit: 2023-10 (stale)
- Staleness: 0 fresh, 0 aging, 5 stale, 2 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [dead]. ASD of $812,904.08 represents exposure in a protocol with dead activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Token | token | ethereum | n/a | [`0xaeb360...54309a`](./contracts/ethereum-1/0xaeb3607ec434454ceb308f5cd540875efb54309a/) | ⚠️ Unaudited |
| TokenizedStrategy | core_logic | ethereum | unit-42504 (15 proxies) | 15 deployments: ethereum [`0x066909...288124`](./contracts/ethereum-1/0x0669091f451142b3228171ae6ad794cf98288124/); ethereum `0x076d2b...783cab`; ethereum `0x0dd49c...02fd8f`; ethereum `0x200723...b1a04b`; ethereum `0x26fe40...16ac88`; ethereum `0x4e72fc...c4d883`; ethereum `0x501bbb...229b11`; ethereum `0x613897...75b52c`; ethereum `0x6311ff...8e5227`; ethereum `0x8dde9a...08c84d`; ethereum `0xc8d4a8...3f9695`; ethereum `0xd002dc...b81bd2`; ethereum `0xeef271...432e3f`; ethereum `0xf94b34...72223b`; ethereum `0xfa6870...edee1d` | ⚠️ Unaudited |
| AggregatorAccountant | operational_periphery | mode | n/a | [`0xd57742...794a3b`](./contracts/mode-34443/0xd577429db653cd20effcd4977b2b41a6fd794a3b/) | ⚠️ Unaudited |
| IncentiveDistributor | operational_periphery | ethereum | n/a | [`0x94c120...40d39d`](./contracts/ethereum-1/0x94c1201e12d5773410c35fe509dd0f4bb440d39d/) | ⚠️ Unaudited |
| IncentiveVoting | unknown | ethereum | n/a | [`0x7a8446...c88561`](./contracts/ethereum-1/0x7a84460e6df989c258d31017bdddedd54cc88561/) | ⚠️ Unaudited |
| SiloHelper | periphery | mode | n/a | 2 deployments: mode [`0x5fad91...848892`](./contracts/mode-34443/0x5fad91704f52b173a5d9fb8cf83822a1d9848892/); linea `0x9dc7b2...2e1ac4` | ⚠️ Unaudited |
| STRDYLocker | unknown | ethereum | n/a | [`0xe01c0e...fb3d18`](./contracts/ethereum-1/0xe01c0e2a2afede29c955d6b0f6f0ed7738fb3d18/) | ⚠️ Unaudited |
| SturdyAllocator | operational_periphery | ethereum | n/a | [`0x17f960...922667`](./contracts/ethereum-1/0x17f960aedb1320358c9458b9fc71e7ac85922667/) | ⚠️ Unaudited |
| SturdyLeverageWihtoutFlashloan1 | unknown | mode | n/a | [`0x3d34bc...cd1b87`](./contracts/mode-34443/0x3d34bcb3da8a7e74a6207c34612d763b94cd1b87/) | ⚠️ Unaudited |
| SturdySiloStrategy | core_logic | mode | n/a | 2 deployments: mode [`0x168f6c...4519d9`](./contracts/mode-34443/0x168f6c2c46a58f4394924d14b9dc0a2b394519d9/); mode `0xcdb88a...b9e1c6` | ⚠️ Unaudited |
| SwapBridgeAndCallFromMain | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x41d503...d05367`](./contracts/ethereum-1/0x41d503c017223b981c4b4794281a732339d05367/); ethereum `0xdbe036...c86aef` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (3)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x72d6b1...32958a` | ❓ Unverified |
| UnnamedContract | unknown | optimism | n/a | `0x4534f5...ea1303` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x49b50f...d94903` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://skynet.certik.com/projects/sturdy) | CertiK | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Sturdy - Zellic Audit Report.pdf (also discovered via alternate URL)](https://github.com/Zellic/publications/blob/master/Sturdy%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2023-09 | stale | Direct | contract_name | 0 | n/a |
| [DL audit link](https://www.chainsecurity.com/security-audit/sturdy-aggregator-smart-contracts) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [download report](https://reports.chainsecurity.com/Sturdy/ChainSecurity_Sturdy_SturdyAggregator_Audit.pdf) | ChainSecurity | Audit | 2023-10 | stale | Direct | contract_name | 0 | n/a |
| [code4rena.com/reports/2022-05-sturdy](https://code4rena.com/reports/2022-05-sturdy) | Code4rena | Contest | 2022-05 | stale | Direct | n/a | 0 | n/a |
| [sturdy-aura-integration-and-leverage.pdf](https://certificate.quantstamp.com/full/sturdy-aura-integration-and-leverage.pdf) | Quantstamp | Audit | 2023-02 | stale | Direct | n/a | 0 | n/a |
| [| [Spearbit]() | 2023/10/21 |](https://cantina.xyz/portfolio/34989eb5-b357-4ee0-9546-ace0256b2f32) | Spearbit | Audit | 2023-09 | stale | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x066909...288124`](./contracts/ethereum-1/0x0669091f451142b3228171ae6ad794cf98288124/) | TokenizedStrategy | core_logic | $17,367.08 | Verified native implementation with $17,367.08 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0xd57742...794a3b`](./contracts/mode-34443/0xd577429db653cd20effcd4977b2b41a6fd794a3b/) | AggregatorAccountant | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x94c120...40d39d`](./contracts/ethereum-1/0x94c1201e12d5773410c35fe509dd0f4bb440d39d/) | IncentiveDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a8446...c88561`](./contracts/ethereum-1/0x7a84460e6df989c258d31017bdddedd54cc88561/) | IncentiveVoting | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x5fad91...848892`](./contracts/mode-34443/0x5fad91704f52b173a5d9fb8cf83822a1d9848892/) | SiloHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe01c0e...fb3d18`](./contracts/ethereum-1/0xe01c0e2a2afede29c955d6b0f6f0ed7738fb3d18/) | STRDYLocker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17f960...922667`](./contracts/ethereum-1/0x17f960aedb1320358c9458b9fc71e7ac85922667/) | SturdyAllocator | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x3d34bc...cd1b87`](./contracts/mode-34443/0x3d34bcb3da8a7e74a6207c34612d763b94cd1b87/) | SturdyLeverageWihtoutFlashloan1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mode | [`0x168f6c...4519d9`](./contracts/mode-34443/0x168f6c2c46a58f4394924d14b9dc0a2b394519d9/) | SturdySiloStrategy | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x41d503...d05367`](./contracts/ethereum-1/0x41d503c017223b981c4b4794281a732339d05367/) | SwapBridgeAndCallFromMain | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 11 |
| upstream | 0 |
| standard_library | 1 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=63

Zero-match audit list:

- [13925] DL audit link
- [13926] Sturdy - Zellic Audit Report.pdf
- [13927] DL audit link
- [13928] download report
- [13930] code4rena.com/reports/2022-05-sturdy
- [13931] sturdy-aura-integration-and-leverage.pdf
- [13932] | [Spearbit]() | 2023/10/21 |

Fork inheritance lineage and inherited audits are included when available.
