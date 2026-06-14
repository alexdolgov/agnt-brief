# Agentic Audit Brief: Nest Credit

## Project Overview

- Project: Nest Credit (`nest-credit`)
- Website: [https://nest.credit/](https://nest.credit/)
- Lifecycle: active (Tier 0, 39.9% below peak)
- Generated: 2026-06-14T04:39:51.894Z
- Pipeline run: v2-pipeline-2026-06-14-ec5560-d641
- Chains: arbitrum, bsc, ethereum, plasma
- Contract surface: 20 unique implementations (69 raw deployments)
- DeFi Llama TVL: $51,938,486.69
- On-chain TVL (included contracts): $4,349,102.05
- TVL by chain: Ethereum $4,348,367.20 | Bsc $713.91 | Arbitrum $19.10 | Plasma $1.85

## Project Description

Nest Credit is an RWA-focused yield and vault product on Plume that enables users to deposit stablecoins or supported assets into vaults for tokenized real-world asset yield exposure. Cross-chain messaging and atomic solver components should be treated as observed contract components unless confirmed as current product functionality in Nest documentation.

### Architecture

The Vault Contracts family relies on the Atomic Solver and Atomic Queue for efficient execution of vault operations like deposits and withdrawals. The Atomic Queue likely feeds operations to the Atomic Solver, which executes them atomically, while vaults use LayerZero tellers for cross-chain interactions.

## Audit Coverage Summary

- Verified implementations audited: 6/11 (54.5%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 1
- Unverified implementations: 9
- Unique implementations: 20
- Raw deployments: 69
- Audits discovered: 16
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): $693.42
- Latest audit: 2026-04 (fresh)
- Staleness: 3 fresh, 2 aging, 2 stale, 9 unknown
- Tier 1 coverage: 18.2% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| 0xMacro | Tier 2 | 4 | 36.4% | 2024-04 |
| Spearbit | Tier 1 | 2 | 18.2% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| NestVaultOFT | core_logic | ethereum | [`0x5e949f...657a2c`](./contracts/ethereum-1/0x5e949fa6401d7c49cdcb48e3a8bdc28f60657a2c/) | ✅ Audited |
| BoringVault | core_logic | ethereum | 14 deployments: ethereum [`0x11113f...9ee94b`](./contracts/ethereum-1/0x11113ff3a60c2450f4b22515cb760417259ee94b/); ethereum `0x119dd7...299165`; ethereum `0x1639dc...a2fbfb`; ethereum `0x29bf22...2c0240`; ethereum `0x593ccc...6388db`; ethereum `0x9fbc36...ffdc4c`; ethereum `0xa5f78b...ec066c`; ethereum `0xbfc577...ed19de`; ethereum `0xe72fe6...938cb9`; bsc `0x119dd7...299165`; bsc `0x1639dc...a2fbfb`; plasma `0x119dd7...299165`; plasma `0x1639dc...a2fbfb`; arbitrum `0xe72fe6...938cb9` | ✅ Audited |
| NestVault | core_logic | ethereum | [`0xb72856...bc14a0`](./contracts/ethereum-1/0xb7285655b17e28c343a8d5cb340947576fbc14a0/) | ✅ Audited |
| AccountantWithRateProviders | operational_periphery | ethereum | 11 deployments: ethereum [`0x0b738c...6892ec`](./contracts/ethereum-1/0x0b738cd187872b265a689e8e4130c336e76892ec/); ethereum `0x2ed2f7...94ed1d`; ethereum `0x3d6497...836b32`; ethereum `0x486e03...8b19f3`; ethereum `0xa67d20...f4dc2f`; ethereum `0xadb076...c15d93`; ethereum `0xb00bbb...12a55b`; ethereum `0xe0cf45...6421e1`; bsc `0x2ed2f7...94ed1d`; bsc `0x3d6497...836b32`; arbitrum [`0x0b738c...6892ec`](./contracts/arbitrum-42161/0x0b738cd187872b265a689e8e4130c336e76892ec/) | ✅ Audited |
| AtomicQueue | unknown | bsc | 2 deployments: bsc [`0x220dc6...6e8264`](./contracts/bsc-56/0x220dc6d4569c1f406d532f9633d5be5bc86e8264/); plasma [`0x220dc6...6e8264`](./contracts/plasma-9745/0x220dc6d4569c1f406d532f9633d5be5bc86e8264/) | ✅ Audited |
| ManagerWithMerkleVerification | operational_periphery | ethereum | 13 deployments: ethereum [`0x17767f...fc24a1`](./contracts/ethereum-1/0x17767f384cead5182caaf9056635bac14afc24a1/); ethereum `0x23d8f2...e65eca`; ethereum `0x8226b6...8f18cc`; ethereum `0xac4ea2...691a1b`; ethereum `0xca8856...7afc63`; ethereum `0xd476b7...600262`; ethereum `0xea452b...da0393`; ethereum `0xf713a3...a34857`; ethereum `0xf71de9...8c0c81`; bsc `0xd476b7...600262`; bsc `0xea452b...da0393`; plasma `0xd476b7...600262`; plasma `0xea452b...da0393` | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BoringVaultSY | core_logic | ethereum | [`0xa08c5b...d84ed1`](./contracts/ethereum-1/0xa08c5b18a05317dc0ed43c9eea9ea6db85d84ed1/) | ⚠️ Unaudited |
| AtomicQueueUCP | unknown | ethereum | [`0x228c44...5112e5`](./contracts/ethereum-1/0x228c44bb4885c6633f4b6c83f14622f37d5112e5/) | ⚠️ Unaudited |
| AtomicSolverV3 | unknown | ethereum | 3 deployments: ethereum [`0x77fb09...7fc974`](./contracts/ethereum-1/0x77fb098a1c28a5b50bfadb69ca1bee515a7fc974/); bsc [`0x77fb09...7fc974`](./contracts/bsc-56/0x77fb098a1c28a5b50bfadb69ca1bee515a7fc974/); plasma [`0x77fb09...7fc974`](./contracts/plasma-9745/0x77fb098a1c28a5b50bfadb69ca1bee515a7fc974/) | ⚠️ Unaudited |
| ProxyAdmin | governance | ethereum | [`0xa28c08...5c5e64`](./contracts/ethereum-1/0xa28c08f165116587d4f3e708743b4dee155c5e64/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| MultiChainLayerZeroTellerWithMultiAssetSupport | core_logic | ethereum | 12 deployments: ethereum [`0x149206...ea0c59`](./contracts/ethereum-1/0x1492062b3ae7996c71f87a2b390b6b82afea0c59/); ethereum `0x272002...759f9d`; ethereum `0x7d218b...8e0d25`; ethereum `0x8034c2...6f4ab9`; ethereum `0xa5f8e5...08a90b`; ethereum `0xad60d4...ffb89b`; ethereum `0xc9f6a4...324a35`; ethereum `0xd65d39...fc4c15`; ethereum `0xf288a0...a6551c`; bsc `0x8034c2...6f4ab9`; bsc `0xa5f8e5...08a90b`; arbitrum [`0x149206...ea0c59`](./contracts/arbitrum-42161/0x1492062b3ae7996c71f87a2b390b6b82afea0c59/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (9)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x2a3e30...f161cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xa1d572...6d41fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xd9ec26...466063` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0xf76bc9...ddcab9` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x2ed2f7...94ed1d` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x3d6497...836b32` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0x8034c2...6f4ab9` | ❓ Unverified |
| UnnamedContract | unknown | plasma | `0xa5f8e5...08a90b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | `0xf713a3...a34857` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [slowmist.pdf](https://github.com/plumenetwork/contracts/blob/main/staking/audit/slowmist.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [slowmist2.pdf](https://github.com/plumenetwork/contracts/blob/main/staking/audit/slowmist2.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [| 2026/04/10 | [Nest vault, share & accountant contracts with cross-chain orchestration]() | Cantina |](https://github.com/plumenetwork/nest-protocol/blob/main/audits/report_cantinacode_2601.pdf) | Spearbit | Audit | 2026-04 | fresh | Direct | contract_name | 2 | high |
| [BoringVault smart contracts (also discovered via alternate URL)](https://github.com/paxoslabs/nucleus-boring-vault/blob/master/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | 2024-03 | stale | Direct | contract_name|n/a | 40 | high |
| [BoringVault follow-up audit (also discovered via alternate URL)](https://github.com/paxoslabs/nucleus-boring-vault/blob/master/audit/0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Nucleus cross-chain infrastructure (also discovered via alternate URL)](https://github.com/paxoslabs/nucleus-boring-vault/blob/master/audit/pashov-boring-vault.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Nucleus + Hyperlane integration (also discovered via alternate URL)](https://github.com/paxoslabs/nucleus-boring-vault/blob/master/audit/pashov-hyperlane.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [| 2026/01/07 | [NestVault, NestAccountant, NestShare, NestVaultOFT]() | Cantina |](https://github.com/plumenetwork/nest-protocol/blob/main/audits/report-cantinacode-plume-2511.pdf) | Spearbit | Audit | 2026-01 | fresh | Direct | contract_name | 2 | high |
| [| 2026/01/07 | [Nest CCTP relayer & OVault composer]() | Cantina |](https://github.com/plumenetwork/nest-protocol/blob/main/audits/report-cantinacode-plume-pr11.pdf) | Spearbit | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [pashov-hlp-controller:account.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-hlp-controller%3Aaccount.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pashov-one-to-one-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-one-to-one-queue.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pashov-predicate-freeze-supply-cap.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-predicate-freeze-supply-cap.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pashov-withdraw-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-withdraw-queue.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [zenith-one-to-one-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/zenith-one-to-one-queue.pdf) | zenith | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [zenith-withdraw-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/zenith-withdraw-queue.pdf) | zenith | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [spearbit-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x228c44...5112e5`](./contracts/ethereum-1/0x228c44bb4885c6633f4b6c83f14622f37d5112e5/) | AtomicQueueUCP | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x77fb09...7fc974`](./contracts/ethereum-1/0x77fb098a1c28a5b50bfadb69ca1bee515a7fc974/) | AtomicSolverV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 6 |
| upstream | 1 |
| standard_library | 4 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 13
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: extraction_exact=44

Zero-match audit list:

- [4751] slowmist.pdf
- [4752] slowmist2.pdf
- [4756] BoringVault follow-up audit
- [4757] Nucleus cross-chain infrastructure
- [4758] Nucleus + Hyperlane integration
- [4760] | 2026/01/07 | [Nest CCTP relayer & OVault composer]() | Cantina |
- [4761] pashov-hlp-controller:account.pdf
- [4762] pashov-one-to-one-queue.pdf
- [4763] pashov-predicate-freeze-supply-cap.pdf
- [4764] pashov-withdraw-queue.pdf
- [4765] zenith-one-to-one-queue.pdf
- [4766] zenith-withdraw-queue.pdf
- [14375] spearbit-boring-vault-arctic-0.pdf

Fork inheritance lineage and inherited audits are included when available.
