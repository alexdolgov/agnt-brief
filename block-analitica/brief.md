# Agentic Audit Brief: Block Analitica

⚠️ Lifecycle status: DECLINING - TVL dropped 39.8% over 90 days

## Project Overview

- Project: Block Analitica (`block-analitica`)
- Website: [https://blockanalitica.com/](https://blockanalitica.com/)
- Lifecycle: declining (Tier 0, 85.6% below peak)
- Generated: 2026-06-10T20:59:00.988Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: arbitrum, base, ethereum, sonic
- Contract surface: 18 unique implementations (99 raw deployments)
- DeFi Llama TVL: $49,595,780.40
- On-chain TVL (included contracts): $252,833.05
- TVL by chain: Sonic $252,833.05

## Project Description

Block Analitica is a DeFi risk intelligence, analytics, advisory, and risk-curation provider. It supports protocols and curated markets with risk research, monitoring, parameter recommendations, and related advisory services; vault deployment or management should only be attributed where a specific Block Analitica curator or owner role is evidenced.

### Architecture

All contracts belong to a single product family, with MetaMorpho vaults and HarborCommand contracts deployed by distinct deployer clusters, indicating a unified risk curation infrastructure.

## Audit Coverage Summary

- Verified implementations audited: 0/16 (0.0%)
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 18
- Raw deployments: 99
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $252,833.05
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of $252,833.05 represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| SiloManagedVaultArk | core_logic | sonic | 7 deployments: sonic [`0x39c5d3...f82fa0`](./contracts/sonic-146/0x39c5d327ff8b12649a0a8056ca4499cb27f82fa0/); sonic `0x43a836...e28745`; sonic `0x4c62fc...284b19`; sonic `0x552d10...d284de`; sonic `0x6fcf84...87dceb`; sonic `0x8faf71...69db53`; sonic `0xf67e17...f36c5f` | ⚠️ Unaudited |
| AdmiralsQuarters | unknown | ethereum | 7 deployments: ethereum [`0x275ca5...a2c836`](./contracts/ethereum-1/0x275ca55c32258ce10870ca4e44c071aa14a2c836/); sonic `0x364a0f...e6ccae`; sonic `0xaab08a...0206ef`; sonic `0xc5b2e6...125459`; sonic `0xc61b22...a77343`; base [`0x275ca5...a2c836`](./contracts/base-8453/0x275ca55c32258ce10870ca4e44c071aa14a2c836/); arbitrum [`0x275ca5...a2c836`](./contracts/arbitrum-42161/0x275ca55c32258ce10870ca4e44c071aa14a2c836/) | ⚠️ Unaudited |
| ConfigurationManager | governance | sonic | 6 deployments: ethereum `0x8ae7fb...3e2a66`; sonic [`0x3714c1...8e8ffb`](./contracts/sonic-146/0x3714c1d845e7137f144902a19828124c388e8ffb/); sonic `0x49f154...4326d8`; sonic `0xdff0fc...463e32`; base `0x8ae7fb...3e2a66`; arbitrum `0x8ae7fb...3e2a66` | ⚠️ Unaudited |
| DutchAuctionLibrary | unknown | sonic | 7 deployments: ethereum `0x7ee9e8...c1aa8e`; sonic [`0x355e2e...ba87d7`](./contracts/sonic-146/0x355e2e10a0056a0ae18f5f67925b74fdd9ba87d7/); sonic `0x3fa7e5...f9da77`; sonic `0x4cd514...b4c770`; base `0x7ee9e8...c1aa8e`; base `0xd1bccf...10bc6e`; arbitrum `0x7ee9e8...c1aa8e` | ⚠️ Unaudited |
| ERC4626Ark | unknown | sonic | 20 deployments: ethereum `0x165d1a...e4d79b`; ethereum `0x2d0afb...f0af14`; ethereum `0x36d050...873a6f`; ethereum `0x4b7752...d49728`; ethereum `0x5093da...c21c14`; ethereum `0x5da1c5...93cb66`; ethereum `0x6a6033...962e44`; ethereum `0x6d3ef0...e2668f`; ethereum `0x78bfc6...e27d78`; ethereum `0xca75e8...2b5c35`; ethereum `0xccbd61...9c1cc4`; ethereum `0xdb6d68...9cc02e`; sonic [`0x0381b9...6780d4`](./contracts/sonic-146/0x0381b9d857bccc043be9fca2717f02b7486780d4/); sonic `0x3002a7...ad5935`; sonic `0x4b757b...bec214`; sonic `0xc0bccb...c9e681`; sonic `0xd4dd34...a4aa27`; sonic `0xda50ce...30a817`; base `0xdb6d68...9cc02e`; arbitrum `0xdb6d68...9cc02e` | ⚠️ Unaudited |
| FleetCommander | unknown | ethereum | 9 deployments: ethereum [`0x17ee2d...54ad8d`](./contracts/ethereum-1/0x17ee2d03e88b55e762c66c76ec99c3a28a54ad8d/); ethereum `0x67e536...0ab506`; ethereum `0x98c49e...9ecf17`; sonic `0x507a2d...7964f8`; sonic `0x64eb3c...3d2b86`; sonic `0x8b8235...a12922`; sonic `0xf06bed...6bfbe0`; base `0x98c49e...9ecf17`; arbitrum `0x98c49e...9ecf17` | ⚠️ Unaudited |
| FleetCommanderRewardsManagerFactory | registry | sonic | 6 deployments: ethereum `0x83e1e5...9dc90c`; sonic [`0x716028...dba7d1`](./contracts/sonic-146/0x7160287da4c544907011c0548c0818f7a9dba7d1/); sonic `0xb3be2a...71b80b`; sonic `0xc474cd...ef0459`; base `0x83e1e5...9dc90c`; arbitrum `0x83e1e5...9dc90c` | ⚠️ Unaudited |
| HarborCommand | unknown | sonic | 6 deployments: ethereum `0x09eb32...b0140f`; sonic [`0x092c41...dd6f57`](./contracts/sonic-146/0x092c41c6e9a8a54577cede5d077971116ddd6f57/); sonic `0x5de028...4b2523`; sonic `0xa8e471...4cf191`; base `0x09eb32...b0140f`; arbitrum `0x09eb32...b0140f` | ⚠️ Unaudited |
| ProtocolAccessManager | governance | sonic | 3 deployments: sonic [`0x244d9a...364c25`](./contracts/sonic-146/0x244d9affcca2eafd689b0393bf15f26f79364c25/); sonic `0xa55cd6...0f3f27`; sonic `0xafb8a8...270bc6` | ⚠️ Unaudited |
| Raft | unknown | sonic | 5 deployments: ethereum `0xd1bccf...10bc6e`; sonic [`0x2a828b...f4f018`](./contracts/sonic-146/0x2a828b0e5cb549ee568923e815d9a781b6f4f018/); sonic `0x6e6b9c...05e204`; sonic `0x887482...afb4bc`; arbitrum `0xd1bccf...10bc6e` | ⚠️ Unaudited |
| SummerGovernor | governance | sonic | 3 deployments: sonic [`0x2aa6df...7feb0d`](./contracts/sonic-146/0x2aa6dfdb53517243b5abb97fdaf2d6003b7feb0d/); sonic `0x59485a...3770af`; sonic `0x9b4998...b92768` | ⚠️ Unaudited |
| SummerRewardsRedeemer | unknown | sonic | 3 deployments: sonic [`0x08543e...a16326`](./contracts/sonic-146/0x08543e2b7e644c5471cddda18e25f3ab93a16326/); sonic `0x394c95...b35237`; sonic `0x3e5163...be78e4` | ⚠️ Unaudited |
| SummerTimelockController | governance | sonic | 3 deployments: sonic [`0x363139...b53ac5`](./contracts/sonic-146/0x363139edcb1994e6f9f928ceb33b431e9db53ac5/); sonic `0x4c32a2...721ed9`; sonic `0xc5cab7...c41aac` | ⚠️ Unaudited |
| SummerToken | token | sonic | 3 deployments: sonic [`0x424aa3...66f40e`](./contracts/sonic-146/0x424aa31d64cabd39ea8b133be844d935d666f40e/); sonic `0x4e0037...6099e3`; sonic `0xe8e6e0...f74845` | ⚠️ Unaudited |
| SummerVestingWalletFactory | operational_periphery | sonic | 3 deployments: sonic [`0x31d129...42876c`](./contracts/sonic-146/0x31d12954b4f8c2cd9029f0cc36d82fd01b42876c/); sonic `0x3cd70d...4f49a2`; sonic `0xa29f32...637b9b` | ⚠️ Unaudited |
| TipJar | unknown | ethereum | 6 deployments: ethereum [`0x9abd84...85b9b6`](./contracts/ethereum-1/0x9abd840fb9a5f108bd6c76a8f71b93a71985b9b6/); sonic `0xa68959...853e6c`; sonic `0xa6a157...b847ea`; sonic `0xd236cc...0dc46b`; base [`0x9abd84...85b9b6`](./contracts/base-8453/0x9abd840fb9a5f108bd6c76a8f71b93a71985b9b6/); arbitrum [`0x9abd84...85b9b6`](./contracts/arbitrum-42161/0x9abd840fb9a5f108bd6c76a8f71b93a71985b9b6/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (2)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | sonic | `0x702c41...c7826f` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x9026cc...03ba5f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| sonic | [`0x39c5d3...f82fa0`](./contracts/sonic-146/0x39c5d327ff8b12649a0a8056ca4499cb27f82fa0/) | SiloManagedVaultArk | core_logic | $252,833.05 | Verified native implementation with $252,833.05 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x275ca5...a2c836`](./contracts/ethereum-1/0x275ca55c32258ce10870ca4e44c071aa14a2c836/) | AdmiralsQuarters | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x3714c1...8e8ffb`](./contracts/sonic-146/0x3714c1d845e7137f144902a19828124c388e8ffb/) | ConfigurationManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x355e2e...ba87d7`](./contracts/sonic-146/0x355e2e10a0056a0ae18f5f67925b74fdd9ba87d7/) | DutchAuctionLibrary | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x0381b9...6780d4`](./contracts/sonic-146/0x0381b9d857bccc043be9fca2717f02b7486780d4/) | ERC4626Ark | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x17ee2d...54ad8d`](./contracts/ethereum-1/0x17ee2d03e88b55e762c66c76ec99c3a28a54ad8d/) | FleetCommander | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x716028...dba7d1`](./contracts/sonic-146/0x7160287da4c544907011c0548c0818f7a9dba7d1/) | FleetCommanderRewardsManagerFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x092c41...dd6f57`](./contracts/sonic-146/0x092c41c6e9a8a54577cede5d077971116ddd6f57/) | HarborCommand | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x244d9a...364c25`](./contracts/sonic-146/0x244d9affcca2eafd689b0393bf15f26f79364c25/) | ProtocolAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2a828b...f4f018`](./contracts/sonic-146/0x2a828b0e5cb549ee568923e815d9a781b6f4f018/) | Raft | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x2aa6df...7feb0d`](./contracts/sonic-146/0x2aa6dfdb53517243b5abb97fdaf2d6003b7feb0d/) | SummerGovernor | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x08543e...a16326`](./contracts/sonic-146/0x08543e2b7e644c5471cddda18e25f3ab93a16326/) | SummerRewardsRedeemer | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x363139...b53ac5`](./contracts/sonic-146/0x363139edcb1994e6f9f928ceb33b431e9db53ac5/) | SummerTimelockController | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x424aa3...66f40e`](./contracts/sonic-146/0x424aa31d64cabd39ea8b133be844d935d666f40e/) | SummerToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sonic | [`0x31d129...42876c`](./contracts/sonic-146/0x31d12954b4f8c2cd9029f0cc36d82fd01b42876c/) | SummerVestingWalletFactory | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9abd84...85b9b6`](./contracts/ethereum-1/0x9abd840fb9a5f108bd6c76a8f71b93a71985b9b6/) | TipJar | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
