# Agentic Audit Brief: Velora

## Project Overview

- Project: Velora (`velora`)
- Website: [https://app.velora.xyz](https://app.velora.xyz)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:09.840Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-4c3e
- Chains: avalanche, base, bsc, ethereum, optimism, polygon
- Contract surface: 27 unique implementations (62 raw deployments)
- DeFi Llama TVL: $226,515.14
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

DEX Aggregator. Structurally: 60 project-authored contract(s) across 6 chain(s); 12 ERC20 tokens; role-gated via AccessControl; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 34 common project-authored base contract(s) (eip712, dystopiauniswapv2fork, wethprovider). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 192; live-surface contracts included: 62 (60 live, 2 unknown).
- Excluded by liveness: 130 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 1/25 (4.0%)
- Deployed-live implementations: 25 of 27 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 1/25
- Verified + Unaudited implementations: 24
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 27
- Raw deployments: 62
- Audits discovered: 1 (1 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 1
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2021-01 (stale)
- Audit staleness (calendar age): 0 fresh, 0 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 1 | 4.0% | 2021-01 |

## Contract Surface

### ✅ Verified + Audited (1)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AugustusSwapper | adapter | base | n/a | 4 deployments: polygon `0x64f72fcfd9c624e3e471223f043060981c83aafc`; polygon `0xbd09504819a604ca503f30d2cc9d0ef4c76dac33`; base [`0x59c7c832e96d2568bea6db468c1aadcbbda08a52`](./contracts/base-8453/0x59c7c832e96d2568bea6db468c1aadcbbda08a52/); base `0x793a0bb089c6787e84277f08179dac594edb9443` | ✅ Audited |

### ⚠️ Verified + Unaudited (24)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Adapter03 | unknown | ethereum | n/a | 4 deployments: ethereum [`0x43dad56947b20d5808fdb5d0913639cdadc8cca2`](./contracts/ethereum-1/0x43dad56947b20d5808fdb5d0913639cdadc8cca2/); ethereum `0x79359292ffd5c3307084084b5b7c3e81d733ee98`; ethereum `0xe5993623ff3ecd1f550124059252ddff804b3879`; ethereum `0xe609aeab29245b235f63ddc23a34ed911524818a` | ⚠️ Unaudited |
| AugustusFeeVault | core_logic | ethereum | n/a | [`0x00700052c0608f670705380a4900e0a8080010cc`](./contracts/ethereum-1/0x00700052c0608f670705380a4900e0a8080010cc/) | ⚠️ Unaudited |
| AugustusRFQ | unknown | avalanche | n/a | 5 deployments: ethereum `0xe92b586627cca7a83dc919cc7127196d70f55a06`; bsc `0x8dcdfe88ef0351f27437284d0710cd65b20288bb`; polygon `0xf3cd476c3c4d3ac5ca2724767f269070ca09a043`; base `0xa003dfba51c9e1e56c67ae445b852bded7ac5eed`; avalanche [`0x34302c4267d0da0a8c65510282cc22e9e39df51f`](./contracts/avalanche-43114/0x34302c4267d0da0a8c65510282cc22e9e39df51f/) | ⚠️ Unaudited |
| AugustusRFQRouter | unknown | ethereum | n/a | [`0x64f72fcfd9c624e3e471223f043060981c83aafc`](./contracts/ethereum-1/0x64f72fcfd9c624e3e471223f043060981c83aafc/) | ⚠️ Unaudited |
| AugustusV6 | unknown | ethereum | n/a | [`0x6a000f20005980200259b80c5102003040001068`](./contracts/ethereum-1/0x6a000f20005980200259b80c5102003040001068/) | ⚠️ Unaudited |
| AvalancheAdapter01 | unknown | avalanche | n/a | 4 deployments: avalanche [`0x5b99094c3c2129f17b78ce5ebd1cd8adb887b340`](./contracts/avalanche-43114/0x5b99094c3c2129f17b78ce5ebd1cd8adb887b340/); avalanche `0x5f7cf10348a7d53709f13bba1d6b47c2628c1bb9`; avalanche `0x6e8b66cc92fcd7fe1332664182beb1161dbfc82d`; avalanche `0xb41ec6e014e2ad12ae8514216eab2592b74f19e7` | ⚠️ Unaudited |
| AvalancheBuyAdapter | unknown | avalanche | n/a | [`0xe92b586627cca7a83dc919cc7127196d70f55a06`](./contracts/avalanche-43114/0xe92b586627cca7a83dc919cc7127196d70f55a06/) | ⚠️ Unaudited |
| BscAdapter01 | unknown | bsc | n/a | 2 deployments: bsc [`0x27eb327b7255a2bf666ebb4d60ab4752da4611b9`](./contracts/bsc-56/0x27eb327b7255a2bf666ebb4d60ab4752da4611b9/); bsc `0xc9229eec07b176acc448be33177c2834c9575ec5` | ⚠️ Unaudited |
| BscBuyAdapter | unknown | bsc | n/a | [`0xf52523b9d788f4e2dd256dc5077879af0448c37a`](./contracts/bsc-56/0xf52523b9d788f4e2dd256dc5077879af0448c37a/) | ⚠️ Unaudited |
| BuyAdapter | unknown | ethereum | n/a | 3 deployments: ethereum [`0x737e642eec6e5bd675022adc6d726eb19ff74383`](./contracts/ethereum-1/0x737e642eec6e5bd675022adc6d726eb19ff74383/); ethereum `0x760870be538e7b4e2110e2890473cc17adb1fdc1`; ethereum `0xe56823ac543c81f747ed95f3f095b5a19224bd3a` | ⚠️ Unaudited |
| CumulativeMerkleDistributor | operational_periphery | ethereum | n/a | 2 deployments: ethereum [`0x2cf552a87adae03b1f53a760f81c0c0b5fb36892`](./contracts/ethereum-1/0x2cf552a87adae03b1f53a760f81c0c0b5fb36892/); optimism `0x7e202c9423a6e4ae4c0458f464a0391dd0d1cd4a` | ⚠️ Unaudited |
| DeltaWrappedNative | unknown | ethereum | n/a | [`0x0a0d53b6684c7b32b4cbef5fe8483bfcc8406742`](./contracts/ethereum-1/0x0a0d53b6684c7b32b4cbef5fe8483bfcc8406742/) | ⚠️ Unaudited |
| FeeClaimer | operational_periphery | bsc | n/a | 8 deployments: ethereum `0xef13101c5bbd737cfb2bf00bbd38c626ad6952f7`; bsc [`0x2df17455b96dde3618fd6b1c3a9aa06d6ab89347`](./contracts/bsc-56/0x2df17455b96dde3618fd6b1c3a9aa06d6ab89347/); polygon `0x8b5cf413214ca9348f047d1af402db1b4e96c060`; polygon `0x8dcdfe88ef0351f27437284d0710cd65b20288bb`; polygon `0xabb58098a7b5172a9b0b38a1925a522dbf0b4fc3`; base `0x6c33c7f6cbb4a428fe9ee31ca500a787c9f1525b`; base `0x9aab4b24541af30fd72784ed98d8756ac0efb3c7`; avalanche `0xbfcd68fd74b4b458961495f3392bf96f46a29e67` | ⚠️ Unaudited |
| L2StandardERC20 | token | optimism | n/a | [`0xd3594e879b358f430e20f82bea61e83562d49d48`](./contracts/optimism-10/0xd3594e879b358f430e20f82bea61e83562d49d48/) | ⚠️ Unaudited |
| MerkleRedeem | operational_periphery | optimism | n/a | [`0xd57fd755f53666ce2d3ed8c862a8d06e38c21ce6`](./contracts/optimism-10/0xd57fd755f53666ce2d3ed8c862a8d06e38c21ce6/) | ⚠️ Unaudited |
| PolygonAdapter02 | unknown | polygon | n/a | 6 deployments: polygon [`0x475928fe50a9e9adb706d6f5624fb97ee2ac087d`](./contracts/polygon-137/0x475928fe50a9e9adb706d6f5624fb97ee2ac087d/); polygon `0x74ef12c4acb03d131bb7cf2ff5ce7d03675d91fa`; polygon `0x97768fd3a529ee29b433cbb5e45e63f3bfff0a93`; polygon `0xad1732884cf5aab27b293707757a9b9011611be6`; polygon `0xb5e59e865fa40a17ecf87fb4111e91f8213bbac9`; polygon `0xc69849f77644d4629260e00e494d8cc8bb543299` | ⚠️ Unaudited |
| PolygonBuyAdapter | unknown | polygon | n/a | 4 deployments: polygon [`0x40e11ae88a9402a34208d05bfb7e88171d2f58a0`](./contracts/polygon-137/0x40e11ae88a9402a34208d05bfb7e88171d2f58a0/); polygon `0x9aa1b161ddb7775dcd94a370ed7611182fee3ac3`; polygon `0xd7d3e2491cc495faaa9a770cbdc7535fd1446d8c`; polygon `0xdc514c500db446f5a7ab80872baf3addefd00174` | ⚠️ Unaudited |
| PreSignatureModule | unknown | ethereum | n/a | [`0x0000000000bbf5c5fd284e657f01bd000933c96d`](./contracts/ethereum-1/0x0000000000bbf5c5fd284e657f01bd000933c96d/) | ⚠️ Unaudited |
| PSP | unknown | ethereum | n/a | [`0xcafe001067cdef266afb7eb5a286dcfd277f3de5`](./contracts/ethereum-1/0xcafe001067cdef266afb7eb5a286dcfd277f3de5/) | ⚠️ Unaudited |
| PSPStakingMigratorV1 | periphery | ethereum | n/a | [`0x81df863e89429b0d4230a2a922de4f37f718eed3`](./contracts/ethereum-1/0x81df863e89429b0d4230a2a922de4f37f718eed3/) | ⚠️ Unaudited |
| sePSP | unknown | ethereum | n/a | 2 deployments: ethereum [`0x716fbc68e0c761684d9280484243ff094cc5ffab`](./contracts/ethereum-1/0x716fbc68e0c761684d9280484243ff094cc5ffab/); optimism `0x8c934b7dbc782568d14ceabbeaedf37cb6348615` | ⚠️ Unaudited |
| sePSP2 | unknown | optimism | n/a | 2 deployments: ethereum `0x593f39a4ba26a9c8ed2128ac95d109e8e403c485`; optimism [`0x26ee65874f5dbefa629eb103e7bbb2deaf4fb2c8`](./contracts/optimism-10/0x26ee65874f5dbefa629eb103e7bbb2deaf4fb2c8/) | ⚠️ Unaudited |
| sePSPStakingMigratorV1 | periphery | optimism | n/a | [`0x18e1a8431ce39cbfe95958207da2d68a7ef8c583`](./contracts/optimism-10/0x18e1a8431ce39cbfe95958207da2d68a7ef8c583/) | ⚠️ Unaudited |
| WeightedPool | core_logic | optimism | n/a | 2 deployments: ethereum `0xcb0e14e96f2cefa8550ad8e4aea344f211e5061d`; optimism [`0x11f0b5cca01b0f0a9fe6265ad6e8ee3419c68440`](./contracts/optimism-10/0x11f0b5cca01b0f0a9fe6265ad6e8ee3419c68440/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x3582115f96279a9ccf8856273da62d0e5b12336f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe46be36654f0859a943bfa1ae26667f85228e053` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [Audit Report - ParaSwap [20.01.2021].pdf](https://github.com/solidified-platform/audits/blob/master/Audit%20Report%20-%20ParaSwap%20%5B20.01.2021%5D.pdf) | unknown | Audit | 2021-01 | stale | Direct | contract_name | 1 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x43dad56947b20d5808fdb5d0913639cdadc8cca2`](./contracts/ethereum-1/0x43dad56947b20d5808fdb5d0913639cdadc8cca2/) | Adapter03 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x00700052c0608f670705380a4900e0a8080010cc`](./contracts/ethereum-1/0x00700052c0608f670705380a4900e0a8080010cc/) | AugustusFeeVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x34302c4267d0da0a8c65510282cc22e9e39df51f`](./contracts/avalanche-43114/0x34302c4267d0da0a8c65510282cc22e9e39df51f/) | AugustusRFQ | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x64f72fcfd9c624e3e471223f043060981c83aafc`](./contracts/ethereum-1/0x64f72fcfd9c624e3e471223f043060981c83aafc/) | AugustusRFQRouter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a000f20005980200259b80c5102003040001068`](./contracts/ethereum-1/0x6a000f20005980200259b80c5102003040001068/) | AugustusV6 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x5b99094c3c2129f17b78ce5ebd1cd8adb887b340`](./contracts/avalanche-43114/0x5b99094c3c2129f17b78ce5ebd1cd8adb887b340/) | AvalancheAdapter01 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0xe92b586627cca7a83dc919cc7127196d70f55a06`](./contracts/avalanche-43114/0xe92b586627cca7a83dc919cc7127196d70f55a06/) | AvalancheBuyAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x27eb327b7255a2bf666ebb4d60ab4752da4611b9`](./contracts/bsc-56/0x27eb327b7255a2bf666ebb4d60ab4752da4611b9/) | BscAdapter01 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf52523b9d788f4e2dd256dc5077879af0448c37a`](./contracts/bsc-56/0xf52523b9d788f4e2dd256dc5077879af0448c37a/) | BscBuyAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x737e642eec6e5bd675022adc6d726eb19ff74383`](./contracts/ethereum-1/0x737e642eec6e5bd675022adc6d726eb19ff74383/) | BuyAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2cf552a87adae03b1f53a760f81c0c0b5fb36892`](./contracts/ethereum-1/0x2cf552a87adae03b1f53a760f81c0c0b5fb36892/) | CumulativeMerkleDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0a0d53b6684c7b32b4cbef5fe8483bfcc8406742`](./contracts/ethereum-1/0x0a0d53b6684c7b32b4cbef5fe8483bfcc8406742/) | DeltaWrappedNative | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x2df17455b96dde3618fd6b1c3a9aa06d6ab89347`](./contracts/bsc-56/0x2df17455b96dde3618fd6b1c3a9aa06d6ab89347/) | FeeClaimer | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xd3594e879b358f430e20f82bea61e83562d49d48`](./contracts/optimism-10/0xd3594e879b358f430e20f82bea61e83562d49d48/) | L2StandardERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0xd57fd755f53666ce2d3ed8c862a8d06e38c21ce6`](./contracts/optimism-10/0xd57fd755f53666ce2d3ed8c862a8d06e38c21ce6/) | MerkleRedeem | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x475928fe50a9e9adb706d6f5624fb97ee2ac087d`](./contracts/polygon-137/0x475928fe50a9e9adb706d6f5624fb97ee2ac087d/) | PolygonAdapter02 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x40e11ae88a9402a34208d05bfb7e88171d2f58a0`](./contracts/polygon-137/0x40e11ae88a9402a34208d05bfb7e88171d2f58a0/) | PolygonBuyAdapter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0000000000bbf5c5fd284e657f01bd000933c96d`](./contracts/ethereum-1/0x0000000000bbf5c5fd284e657f01bd000933c96d/) | PreSignatureModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xcafe001067cdef266afb7eb5a286dcfd277f3de5`](./contracts/ethereum-1/0xcafe001067cdef266afb7eb5a286dcfd277f3de5/) | PSP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81df863e89429b0d4230a2a922de4f37f718eed3`](./contracts/ethereum-1/0x81df863e89429b0d4230a2a922de4f37f718eed3/) | PSPStakingMigratorV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x716fbc68e0c761684d9280484243ff094cc5ffab`](./contracts/ethereum-1/0x716fbc68e0c761684d9280484243ff094cc5ffab/) | sePSP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x26ee65874f5dbefa629eb103e7bbb2deaf4fb2c8`](./contracts/optimism-10/0x26ee65874f5dbefa629eb103e7bbb2deaf4fb2c8/) | sePSP2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x18e1a8431ce39cbfe95958207da2d68a7ef8c583`](./contracts/optimism-10/0x18e1a8431ce39cbfe95958207da2d68a7ef8c583/) | sePSPStakingMigratorV1 | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x11f0b5cca01b0f0a9fe6265ad6e8ee3419c68440`](./contracts/optimism-10/0x11f0b5cca01b0f0a9fe6265ad6e8ee3419c68440/) | WeightedPool | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 25 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=1

Fork inheritance lineage and inherited audits are included when available.
