# Agentic Audit Brief: Nest Credit

## Project Overview

- Project: Nest Credit (`nest-credit`)
- Website: [https://nest.credit/](https://nest.credit/)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:38.670Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d094
- Chains: arbitrum, bsc, ethereum, plasma
- Contract surface: 20 unique implementations (62 raw deployments)
- DeFi Llama TVL: $73,665,389.90
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

RWA. Structurally: 7 project-authored contract(s) across 2 chain(s); upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 2 functional families. Contracts are linked by 6 cross-contract reference(s). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 62; live-surface contracts included: 62 (52 live, 10 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 7/9 (77.8%)
- Deployed-live implementations: 10 of 20 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 8/10
- Verified + Unaudited implementations: 2
- Verified by bytecode match: 0
- Unverified implementations: 10
- Unique implementations: 20
- Raw deployments: 62
- Audits discovered: 16 (16 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-04 (fresh)
- Audit staleness (calendar age): 8 fresh, 4 aging, 4 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 3 match-unverified
- Tier 1 coverage: 55.6% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Spearbit | Tier 1 | 6 | 60.0% | 2026-04 |
| 0xMacro | Tier 2 | 4 | 40.0% | 2024-04 |
| Pashov Audit Group | Tier 2 | 4 | 40.0% | 2026-03 |
| zenith | Tier 2 | 2 | 20.0% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountantWithRateProviders | operational_periphery | ethereum | n/a | 11 deployments: ethereum [`0x0b738c...6892ec`](./contracts/ethereum-1/0x0b738cd187872b265a689e8e4130c336e76892ec/); ethereum `0x2ed2f7...94ed1d`; ethereum `0x3d6497...836b32`; ethereum `0x486e03...8b19f3`; ethereum `0xa67d20...f4dc2f`; ethereum `0xadb076...c15d93`; ethereum `0xb00bbb...12a55b`; ethereum `0xe0cf45...6421e1`; bsc `0x2ed2f7...94ed1d`; bsc `0x3d6497...836b32`; arbitrum [`0x0b738c...6892ec`](./contracts/arbitrum-42161/0x0b738cd187872b265a689e8e4130c336e76892ec/) | ✅ Audited |
| AtomicQueue | unknown | bsc | n/a | 2 deployments: bsc [`0x220dc6...6e8264`](./contracts/bsc-56/0x220dc6d4569c1f406d532f9633d5be5bc86e8264/); plasma [`0x220dc6...6e8264`](./contracts/plasma-9745/0x220dc6d4569c1f406d532f9633d5be5bc86e8264/) | ✅ Audited |
| AtomicQueueUCP | unknown | ethereum | n/a | [`0x228c44...5112e5`](./contracts/ethereum-1/0x228c44bb4885c6633f4b6c83f14622f37d5112e5/) | ✅ Audited |
| BoringVault | core_logic | ethereum | n/a | 14 deployments: ethereum [`0x11113f...9ee94b`](./contracts/ethereum-1/0x11113ff3a60c2450f4b22515cb760417259ee94b/); ethereum `0x119dd7...299165`; ethereum `0x1639dc...a2fbfb`; ethereum `0x29bf22...2c0240`; ethereum `0x593ccc...6388db`; ethereum `0x9fbc36...ffdc4c`; ethereum `0xa5f78b...ec066c`; ethereum `0xbfc577...ed19de`; ethereum `0xe72fe6...938cb9`; bsc `0x119dd7...299165`; bsc `0x1639dc...a2fbfb`; plasma `0x119dd7...299165`; plasma `0x1639dc...a2fbfb`; arbitrum `0xe72fe6...938cb9` | ✅ Audited |
| ManagerWithMerkleVerification | operational_periphery | ethereum | n/a | 7 deployments: ethereum [`0x8226b6...8f18cc`](./contracts/ethereum-1/0x8226b661ebaf1cba4e2a92ae2616ccf2348f18cc/); ethereum `0xd476b7...600262`; ethereum `0xea452b...da0393`; bsc `0xd476b7...600262`; bsc `0xea452b...da0393`; plasma `0xd476b7...600262`; plasma `0xea452b...da0393` | ✅ Audited |
| MultiChainLayerZeroTellerWithMultiAssetSupport | core_logic | ethereum | n/a | 11 deployments: ethereum [`0x149206...ea0c59`](./contracts/ethereum-1/0x1492062b3ae7996c71f87a2b390b6b82afea0c59/); ethereum `0x272002...759f9d`; ethereum `0x7d218b...8e0d25`; ethereum `0x8034c2...6f4ab9`; ethereum `0xa5f8e5...08a90b`; ethereum `0xad60d4...ffb89b`; ethereum `0xc9f6a4...324a35`; ethereum `0xd65d39...fc4c15`; ethereum `0xf288a0...a6551c`; bsc `0x8034c2...6f4ab9`; bsc `0xa5f8e5...08a90b` | ✅ Audited |
| NestVault | core_logic | ethereum | n/a | [`0xb72856...bc14a0`](./contracts/ethereum-1/0xb7285655b17e28c343a8d5cb340947576fbc14a0/) | ✅ Audited |
| NestVaultOFT | core_logic | ethereum | n/a | [`0x5e949f...657a2c`](./contracts/ethereum-1/0x5e949fa6401d7c49cdcb48e3a8bdc28f60657a2c/) | ✅ Audited |

### ⚠️ Verified + Unaudited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AtomicSolverV3 | unknown | ethereum | n/a | 3 deployments: ethereum [`0x77fb09...7fc974`](./contracts/ethereum-1/0x77fb098a1c28a5b50bfadb69ca1bee515a7fc974/); bsc [`0x77fb09...7fc974`](./contracts/bsc-56/0x77fb098a1c28a5b50bfadb69ca1bee515a7fc974/); plasma [`0x77fb09...7fc974`](./contracts/plasma-9745/0x77fb098a1c28a5b50bfadb69ca1bee515a7fc974/) | ⚠️ Unaudited |
| BoringVaultSY | core_logic | ethereum | n/a | [`0xa08c5b...d84ed1`](./contracts/ethereum-1/0xa08c5b18a05317dc0ed43c9eea9ea6db85d84ed1/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (10)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x2a3e30...f161cb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1d572...6d41fd` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd9ec26...466063` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf76bc9...ddcab9` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x2ed2f7...94ed1d` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x3d6497...836b32` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0x8034c2...6f4ab9` | ❓ Unverified |
| UnnamedContract | unknown | plasma | n/a | `0xa5f8e5...08a90b` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x149206...ea0c59` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xf713a3...a34857` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [slowmist.pdf](https://github.com/plumenetwork/contracts/blob/main/staking/audit/slowmist.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [slowmist2.pdf](https://github.com/plumenetwork/contracts/blob/main/staking/audit/slowmist2.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [report_cantinacode_2601.pdf](https://github.com/plumenetwork/nest-protocol/blob/main/audits/report_cantinacode_2601.pdf) | Spearbit | Audit | 2026-04 | fresh | Direct | contract_name | 2 | n/a |
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/paxoslabs/nucleus-boring-vault/blob/master/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | 2024-03 | stale | Direct | contract_name | 4 | n/a |
| [0xmacro-boring-vault-arctic-1.pdf](https://github.com/paxoslabs/nucleus-boring-vault/blob/master/audit/0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [pashov-boring-vault.pdf](https://github.com/paxoslabs/nucleus-boring-vault/blob/master/audit/pashov-boring-vault.pdf) | Pashov Audit Group | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [pashov-hyperlane.pdf](https://github.com/paxoslabs/nucleus-boring-vault/blob/master/audit/pashov-hyperlane.pdf) | Pashov Audit Group | Audit | 2024-12 | aging | Direct | contract_name | 1 | high |
| [report-cantinacode-plume-2511.pdf](https://github.com/plumenetwork/nest-protocol/blob/main/audits/report-cantinacode-plume-2511.pdf) | Spearbit | Audit | 2026-01 | fresh | Direct | contract_name | 2 | n/a |
| [report-cantinacode-plume-pr11.pdf](https://github.com/plumenetwork/nest-protocol/blob/main/audits/report-cantinacode-plume-pr11.pdf) | Spearbit | Audit | 2026-01 | fresh | Direct | n/a | 0 | n/a |
| [pashov-hlp-controller:account.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-hlp-controller%3Aaccount.pdf) | Pashov Audit Group | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [pashov-one-to-one-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-one-to-one-queue.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [pashov-predicate-freeze-supply-cap.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-predicate-freeze-supply-cap.pdf) | Pashov Audit Group | Audit | 2026-03 | fresh | Direct | contract_name | 25 | high |
| [pashov-withdraw-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-withdraw-queue.pdf) | Pashov Audit Group | Audit | 2026-02 | fresh | Direct | contract_name | 12 | high |
| [zenith-one-to-one-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/zenith-one-to-one-queue.pdf) | zenith | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [zenith-withdraw-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/zenith-withdraw-queue.pdf) | zenith | Audit | 2026-01 | fresh | Direct | contract_name | 12 | high |
| [spearbit-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | 33 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x77fb09...7fc974`](./contracts/ethereum-1/0x77fb098a1c28a5b50bfadb69ca1bee515a7fc974/) | AtomicSolverV3 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xa08c5b...d84ed1`](./contracts/ethereum-1/0xa08c5b18a05317dc0ed43c9eea9ea6db85d84ed1/) | BoringVaultSY | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 9 |
| upstream | 1 |
| standard_library | 0 |
| needs_review | 10 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: contract_name=8, extraction_exact=83

Zero-match audit list:

- [4751] slowmist.pdf
- [4752] slowmist2.pdf
- [4756] 0xmacro-boring-vault-arctic-1.pdf
- [4757] pashov-boring-vault.pdf
- [4760] report-cantinacode-plume-pr11.pdf
- [4761] pashov-hlp-controller:account.pdf
- [4762] pashov-one-to-one-queue.pdf
- [4765] zenith-one-to-one-queue.pdf

Fork inheritance lineage and inherited audits are included when available.
