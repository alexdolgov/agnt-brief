# Agentic Audit Brief: Block Analitica

⚠️ Lifecycle status: DECLINING - TVL dropped 39.8% over 90 days

## Project Overview

- Project: Block Analitica (`block-analitica`)
- Website: [https://blockanalitica.com/](https://blockanalitica.com/)
- Lifecycle: declining (Tier 0, 85.6% below peak)
- Generated: 2026-06-17T07:00:49.481Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: arbitrum, base, ethereum, sonic
- Contract surface: 11 unique implementations (31 raw deployments)
- DeFi Llama TVL: $39,144,295.67
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Block Analitica is a DeFi risk intelligence, analytics, advisory, and risk-curation provider. It supports protocols and curated markets with risk research, monitoring, parameter recommendations, and related advisory services; vault deployment or management should only be attributed where a specific Block Analitica curator or owner role is evidenced.

### Architecture

All contracts belong to a single product family, with MetaMorpho vaults and HarborCommand contracts deployed by distinct deployer clusters, indicating a unified risk curation infrastructure.

## Contract Surface Quality

- Indexed contracts: 112; live-surface contracts included: 31 (30 live, 1 unknown).
- Excluded by liveness: 79 inactive, 2 singleton, 0 uninitialized.
- Deployment units: 0/2 live.
- Detected codebases: none
- Unverified dependencies: 1/50.

## Audit Coverage Summary

- Verified implementations audited: 0/11 (0.0%)
- Verified + Unaudited implementations: 11
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 11
- Raw deployments: 31
- Audits discovered: 0
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): n/a
- Latest audit: n/a (unknown)
- Staleness: 0 fresh, 0 aging, 0 stale, 0 unknown
- Tier 1 coverage: No Tier 1 coverage
- Note: This protocol is classified as [declining]. ASD of n/a represents exposure in a protocol with declining activity.

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AdmiralsQuarters | unknown | sonic | n/a | 2 deployments: sonic [`0xaab08a...0206ef`](./contracts/sonic-146/0xaab08ab98c93696665454b8c0a6ef8c2cd0206ef/); sonic `0xc5b2e6...125459` | ⚠️ Unaudited |
| BufferArk | unknown | sonic | n/a | [`0x809a0c...2562af`](./contracts/sonic-146/0x809a0c98fac68a0c4319f3a3e864540c772562af/) | ⚠️ Unaudited |
| DutchAuctionLibrary | unknown | sonic | n/a | [`0x355e2e...ba87d7`](./contracts/sonic-146/0x355e2e10a0056a0ae18f5f67925b74fdd9ba87d7/) | ⚠️ Unaudited |
| FleetCommander | unknown | ethereum | n/a | 11 deployments: ethereum [`0x17ee2d...54ad8d`](./contracts/ethereum-1/0x17ee2d03e88b55e762c66c76ec99c3a28a54ad8d/); ethereum `0x2e6abc...a88e10`; ethereum `0x67e536...0ab506`; ethereum `0x98c49e...9ecf17`; ethereum `0xe9cda4...70cb06`; sonic `0x507a2d...7964f8`; base `0x2bb9ad...f834af`; base `0x64db8f...48e0f0`; base `0x98c49e...9ecf17`; arbitrum `0x4f63cf...34bb58`; arbitrum `0x98c49e...9ecf17` | ⚠️ Unaudited |
| MetaMorpho | unknown | ethereum | n/a | 7 deployments: ethereum [`0x186514...d47344`](./contracts/ethereum-1/0x186514400e52270cef3d80e1c6f8d10a75d47344/); ethereum `0x2c25f6...e5d6b1`; ethereum `0x38989b...63ac5d`; base `0x543257...f5a796`; base `0xa0e430...3d0ff1`; base `0xc1256a...00a2ca`; base `0xf24608...01a026` | ⚠️ Unaudited |
| ProtocolAccessManager | governance | sonic | n/a | [`0xa55cd6...0f3f27`](./contracts/sonic-146/0xa55cd6a6d882180e84ddb25f7c7ae4e4af0f3f27/) | ⚠️ Unaudited |
| Raft | unknown | sonic | n/a | 3 deployments: ethereum `0xd1bccf...10bc6e`; sonic [`0x2a828b...f4f018`](./contracts/sonic-146/0x2a828b0e5cb549ee568923e815d9a781b6f4f018/); sonic `0x6e6b9c...05e204` | ⚠️ Unaudited |
| SiloManagedVaultArk | core_logic | sonic | n/a | [`0x8faf71...69db53`](./contracts/sonic-146/0x8faf711962e89047cb26fb4b4f8dbd578069db53/) | ⚠️ Unaudited |
| SummerTimelockController | governance | sonic | n/a | 2 deployments: sonic [`0x363139...b53ac5`](./contracts/sonic-146/0x363139edcb1994e6f9f928ceb33b431e9db53ac5/); sonic `0x4c32a2...721ed9` | ⚠️ Unaudited |
| SummerToken | token | sonic | n/a | [`0x4e0037...6099e3`](./contracts/sonic-146/0x4e0037f487bbb588bf1b7a83bde6c34fed6099e3/) | ⚠️ Unaudited |
| TipJar | unknown | sonic | n/a | [`0xa68959...853e6c`](./contracts/sonic-146/0xa689599c43c30e20153d2a9ed3d263fb72853e6c/) | ⚠️ Unaudited |

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

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: n/a

Fork inheritance lineage and inherited audits are included when available.
