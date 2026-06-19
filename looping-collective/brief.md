# Agentic Audit Brief: Looping Collective

## Project Overview

- Project: Looping Collective (`looping-collective`)
- Website: [https://www.loopingcollective.org/](https://www.loopingcollective.org/)
- Lifecycle: active (Tier 0, 74% below peak)
- Generated: 2026-06-19T06:14:26.396Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: ethereum, hyperliquid
- Contract surface: 10 unique implementations (37 raw deployments)
- DeFi Llama TVL: $11,937,641.00
- On-chain TVL (included contracts): $204,075.26
- TVL by chain: Hyperliquid $204,075.26

## Project Description

Looping Collective is an active yield protocol offering user-facing vault products including LHYPE, wHLP, and LcBTC/loopedBTC. Its vaults aggregate deposits and deploy capital across DeFi strategies, including leveraged looping and Hyperliquid integrations, with supporting rate providers, accountants, adapters, and oracle-related components used to optimize and report yields.

### Architecture

The Vault Infrastructure family provides reusable UltraVault logic and rate providers used by other vault products. Wrapped HLP operates independently as an adapter to Hyperliquid, while Contract Addresses and Looped Hype are separate BoringVault-based products that do not share the UltraVault infrastructure.

## Contract Surface Quality

- Indexed contracts: 98; live-surface contracts included: 37 (37 live, 0 unknown).
- Excluded by liveness: 5 inactive, 56 singleton, 0 uninitialized.
- Deployment units: 0/28 live.
- Detected codebases: none
- Dependencies extracted: 7; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 4/8 (50.0%)
- Verified + Unaudited implementations: 4
- Verified by bytecode match: 0
- Unverified implementations: 2
- Unique implementations: 10
- Raw deployments: 37
- Audits discovered: 13
- Scoreable audits (matched contracts): 6
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-03 (fresh)
- Staleness: 6 fresh, 2 aging, 3 stale, 2 unknown
- Tier 1 coverage: 37.5% (Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| 0xMacro | Tier 2 | 3 | 37.5% | 2024-04 |
| Pashov Audit Group | Tier 2 | 3 | 37.5% | 2026-03 |
| Spearbit | Tier 1 | 3 | 37.5% | 2024-04 |
| Zenith | Tier 2 | 1 | 12.5% | 2026-01 |

## Contract Surface

### ✅ Verified + Audited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BoringVault | core_logic | hyperliquid | n/a | 2 deployments: hyperliquid [`0x1359b0...4c0de8`](./contracts/hyperliquid-999/0x1359b05241ca5076c9f59605214f4f84114c0de8/); hyperliquid `0x5748ae...485562` | ✅ Audited |
| AccountantWithRateProviders | operational_periphery | hyperliquid | n/a | 2 deployments: hyperliquid [`0x470bd1...e8bdff`](./contracts/hyperliquid-999/0x470bd109a24f608590d85fc1f5a4b6e625e8bdff/); hyperliquid `0xce621a...f001c3` | ✅ Audited |
| AtomicQueueUCP | unknown | hyperliquid | n/a | [`0x228c44...5112e5`](./contracts/hyperliquid-999/0x228c44bb4885c6633f4b6c83f14622f37d5112e5/) | ✅ Audited |
| ManagerWithMerkleVerification | operational_periphery | hyperliquid | n/a | [`0xe66139...3e81d0`](./contracts/hyperliquid-999/0xe661393c409f7caec8564bc49ed92c22a63e81d0/) | ✅ Audited |

### ⚠️ Verified + Unaudited (4)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LoopedHypeDepositor | unknown | hyperliquid | n/a | [`0x6e358d...be5337`](./contracts/hyperliquid-999/0x6e358dd1204c3fb1d24e569df0899f48fabe5337/) | ⚠️ Unaudited |
| UltraFrontendHelper | periphery | ethereum | n/a | 9 deployments: ethereum [`0x1414c2...25ffd9`](./contracts/ethereum-1/0x1414c25624a80540cad83f123ff2e0be8925ffd9/); ethereum `0x264638...808921`; ethereum `0x2bf69e...7f3e5d`; ethereum `0x7d159f...de32e7`; ethereum `0x93bffc...55571b`; ethereum `0xa2b51c...e5bb6f`; ethereum `0xaea48c...114414`; ethereum `0xea8baf...bda2a9`; ethereum `0xf076c4...544729` | ⚠️ Unaudited |
| UltraVaultOracle | operational_periphery | ethereum | n/a | 9 deployments: ethereum [`0x1467ce...246f1d`](./contracts/ethereum-1/0x1467ce4ad75991303adda4c7ec8e553534246f1d/); ethereum `0x199378...549032`; ethereum `0x3adf95...b848e6`; ethereum `0x536080...f53b07`; ethereum `0x6217de...969526`; ethereum `0x74c4bb...87dc2b`; ethereum `0xbae89d...947ebf`; ethereum `0xc9fa75...487308`; ethereum `0xe8149f...351bac` | ⚠️ Unaudited |
| VaultPriceManager | operational_periphery | ethereum | n/a | 10 deployments: ethereum [`0x0ecb66...2396b5`](./contracts/ethereum-1/0x0ecb66d64a3c5cc592b72f135f6f317da42396b5/); ethereum `0x0fcea1...315f86`; ethereum `0x2882a1...58268a`; ethereum `0x303ab4...8a1617`; ethereum `0x525ee8...b41ad5`; ethereum `0x6bb07c...b2b311`; ethereum `0xa5c6d7...5a75a2`; ethereum `0xd7fc73...864983`; ethereum `0xdd5085...7eb640`; ethereum `0xff5e63...e0a5b5` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | hyperliquid | n/a | `0x340c9f...6b41c1` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xfd83c1...5bf4f0` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [v1_May_2025_ChainSecurity.pdf](https://github.com/UltraYield/contracts/blob/main/audits/v1_May_2025_ChainSecurity.pdf) | ChainSecurity | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [v2_Sep_2025_Omniscia.pdf](https://github.com/UltraYield/contracts/blob/main/audits/v2_Sep_2025_Omniscia.pdf) | Omniscia | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | 2024-03 | stale | Direct | contract_name | 5 | high |
| [0xmacro-boring-vault-arctic-1.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [pashov-boring-vault.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-boring-vault.pdf) | Pashov Audit Group | Audit | 2024-07 | aging | Direct | n/a | 0 | n/a |
| [pashov-hlp-controller:account.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-hlp-controller%3Aaccount.pdf) | Pashov Audit Group | Audit | 2025-07 | fresh | Direct | n/a | 0 | n/a |
| [pashov-hyperlane.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-hyperlane.pdf) | Pashov Audit Group | Audit | 2024-12 | aging | Direct | contract_name | 1 | high |
| [pashov-one-to-one-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-one-to-one-queue.pdf) | Pashov Audit Group | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [pashov-predicate-freeze-supply-cap.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-predicate-freeze-supply-cap.pdf) | Pashov Audit Group | Audit | 2026-03 | fresh | Direct | contract_name | 2 | high |
| [pashov-withdraw-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/pashov-withdraw-queue.pdf) | Pashov Audit Group | Audit | 2026-02 | fresh | Direct | contract_name | 2 | high |
| [spearbit-boring-vault-arctic-0.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | 5 | high |
| [zenith-one-to-one-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/zenith-one-to-one-queue.pdf) | Zenith | Audit | 2025-11 | fresh | Direct | n/a | 0 | n/a |
| [zenith-withdraw-queue.pdf](https://github.com/Ion-Protocol/nucleus-boring-vault/blob/master/audit/zenith-withdraw-queue.pdf) | Zenith | Audit | 2026-01 | fresh | Direct | contract_name | 2 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x6e358d...be5337`](./contracts/hyperliquid-999/0x6e358dd1204c3fb1d24e569df0899f48fabe5337/) | LoopedHypeDepositor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1414c2...25ffd9`](./contracts/ethereum-1/0x1414c25624a80540cad83f123ff2e0be8925ffd9/) | UltraFrontendHelper | periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1467ce...246f1d`](./contracts/ethereum-1/0x1467ce4ad75991303adda4c7ec8e553534246f1d/) | UltraVaultOracle | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0ecb66...2396b5`](./contracts/ethereum-1/0x0ecb66d64a3c5cc592b72f135f6f317da42396b5/) | VaultPriceManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 8 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 2 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=6
- Match method counts: extraction_exact=17

Zero-match audit list:

- [11619] v1_May_2025_ChainSecurity.pdf
- [11620] v2_Sep_2025_Omniscia.pdf
- [12449] 0xmacro-boring-vault-arctic-1.pdf
- [12450] pashov-boring-vault.pdf
- [12451] pashov-hlp-controller:account.pdf
- [12453] pashov-one-to-one-queue.pdf
- [12457] zenith-one-to-one-queue.pdf

Fork inheritance lineage and inherited audits are included when available.
