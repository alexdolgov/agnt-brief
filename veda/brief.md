# Agentic Audit Brief: Veda

## Project Overview

- Project: Veda (`veda`)
- Website: [https://veda.tech](https://veda.tech)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:09.753Z
- Pipeline run: v2-2026-07-02-3df6b3
- Chains: bsc, ethereum
- Contract surface: 27 unique implementations (27 raw deployments)
- DeFi Llama TVL: $1,032,820,200.73
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Onchain Capital Allocator. Structurally: 26 project-authored contract(s) across 2 chain(s); role-gated via AccessControl; built on solmate.

### Architecture

The protocol comprises 3 functional families. Its contracts share 5 common project-authored base contract(s) (erc721holder, erc165, baseadaptor). Dominant framework: solmate.

## Contract Surface Quality

- Indexed contracts: 27; live-surface contracts included: 27 (27 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 10/24 (41.7%)
- Deployed-live implementations: 27 of 27 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 11/27
- Verified + Unaudited implementations: 16
- Verified by bytecode match: 0
- Unverified implementations: 0
- Unique implementations: 27
- Raw deployments: 27
- Audits discovered: 60 (60 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 18
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2026-06 (fresh)
- Audit staleness (calendar age): 14 fresh, 33 aging, 13 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 11 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 0 match-unverified
- Tier 1 coverage: 20.8% (Certora, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| 0xMacro | Tier 2 | 11 | 40.7% | 2026-06 |
| sigma-prime | Tier 2 | 5 | 18.5% | 2025-12 |
| Spearbit | Tier 1 | 5 | 18.5% | 2024-04 |
| certora | Tier 1 | 3 | 11.1% | 2026-04 |

## Contract Surface

### ✅ Verified + Audited (11)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountantWithRateProviders | unknown | ethereum | n/a | [`0x05a155...bda32b`](./contracts/ethereum-1/0x05a1552c5e18f5a0bb9571b5f2d6a4765ebda32b/) | ✅ Audited |
| ArcticArchitectureLens | unknown | bsc | n/a | [`0x5232bc...f94a1b`](./contracts/bsc-56/0x5232bc0f5999f8da604c42e1748a13a170f94a1b/) | ✅ Audited |
| AtomicQueue | unknown | ethereum | n/a | [`0xd45884...5dea07`](./contracts/ethereum-1/0xd45884b592e316eb816199615a95c182f75dea07/) | ✅ Audited |
| BoringVault | unknown | ethereum | n/a | [`0x08c6f9...c1364c`](./contracts/ethereum-1/0x08c6f91e2b681faf5e17227f2a44c307b3c1364c/) | ✅ Audited |
| FeesAndReserves | unknown | ethereum | n/a | [`0x8a2295...02ec74`](./contracts/ethereum-1/0x8a22951e3b5133844e37959cc75fce9b3502ec74/) | ✅ Audited |
| LayerZeroTeller | unknown | ethereum | n/a | [`0x31a5a9...18f5b8`](./contracts/ethereum-1/0x31a5a9f60dc3d62fa5168352caf0ee05aa18f5b8/) | ✅ Audited |
| ManagerWithMerkleVerification | unknown | ethereum | n/a | [`0x048a50...4d0a17`](./contracts/ethereum-1/0x048a5002e57166a78dd060b3b36ded2f404d0a17/) | ✅ Audited |
| PriceRouter | unknown | ethereum | n/a | [`0x693799...a4fff5`](./contracts/ethereum-1/0x693799805b502264f9365440b93c113d86a4fff5/) | ✅ Audited |
| ProtocolFeeCollector | unknown | ethereum | n/a | [`0xdfb286...e42524`](./contracts/ethereum-1/0xdfb286d16f9cd8c5cf4d5180501c190519e42524/) | ✅ Audited |
| TellerWithMultiAssetSupport | unknown | bsc | n/a | [`0x2ea433...deb9b3`](./contracts/bsc-56/0x2ea43384f1a98765257bc6cb26c7131debdeb9b3/) | ✅ Audited |
| weEthExtension | unknown | ethereum | n/a | [`0x78e593...fd7535`](./contracts/ethereum-1/0x78e59309ba2779a5d3522e965fe9be2790fd7535/) | ✅ Audited |

### ⚠️ Verified + Unaudited (16)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AtomicSolverV2 | unknown | ethereum | n/a | [`0x5b744e...1a2d7a`](./contracts/ethereum-1/0x5b744e93bbf5caf38df34f3ba14a40024d1a2d7a/) | ⚠️ Unaudited |
| AuraERC4626Adaptor | unknown | ethereum | n/a | [`0x0f3f8c...2bb162`](./contracts/ethereum-1/0x0f3f8cab8d3888281033faf7a6c0b74de62bb162/) | ⚠️ Unaudited |
| CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport | unknown | ethereum | n/a | [`0xea1a63...06a221`](./contracts/ethereum-1/0xea1a6307d9b18f8d1cbf1c3dd6aad8416c06a221/) | ⚠️ Unaudited |
| eEthExtension | unknown | ethereum | n/a | [`0x4ec6e3...740d5b`](./contracts/ethereum-1/0x4ec6e3b0933cc90fdb274267dff1a57db9740d5b/) | ⚠️ Unaudited |
| ERC20Adaptor | unknown | ethereum | n/a | [`0x7a5b17...81331d`](./contracts/ethereum-1/0x7a5b17e0ad1e0f37061fcc7f90512c367981331d/) | ⚠️ Unaudited |
| ERC4626Adaptor | unknown | ethereum | n/a | [`0xb1761a...a681e2`](./contracts/ethereum-1/0xb1761a7c7799cb429eb5bf2db16d88534da681e2/) | ⚠️ Unaudited |
| ERC4626SharePriceOracle | unknown | ethereum | n/a | [`0x9d3eb5...8014b0`](./contracts/ethereum-1/0x9d3eb50ed4540135a78facd70063bccc988014b0/) | ⚠️ Unaudited |
| FeesAndReservesAdaptor | unknown | ethereum | n/a | [`0x5d84ec...b358da`](./contracts/ethereum-1/0x5d84ec98c476b159f3e107709f224d5bbbb358da/) | ⚠️ Unaudited |
| IncentiveDistributor | unknown | ethereum | n/a | [`0xf0164d...0f8780`](./contracts/ethereum-1/0xf0164d48b308c42ae028e3379b2fb620e70f8780/) | ⚠️ Unaudited |
| OneInchAdaptor | unknown | ethereum | n/a | [`0x5f7de9...c58d43`](./contracts/ethereum-1/0x5f7de90fb222d37225dd8929672e427699c58d43/) | ⚠️ Unaudited |
| RedstoneEthPriceFeedExtension | unknown | ethereum | n/a | [`0xdb4b77...63ae84`](./contracts/ethereum-1/0xdb4b778085ed412518cb64207259a746f363ae84/) | ⚠️ Unaudited |
| Registry | unknown | ethereum | n/a | [`0x37912f...059bbd`](./contracts/ethereum-1/0x37912f4c0f0d916890ebd755bf6d1f0a0e059bbd/) | ⚠️ Unaudited |
| RolesAuthority | unknown | ethereum | n/a | [`0x6a4abb...c67d73`](./contracts/ethereum-1/0x6a4abbee0a07f358c7706c78fd7cc2702fc67d73/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | [`0x55148d...13924c`](./contracts/ethereum-1/0x55148d7e3983a54c9f9d1e0c2c2039e2d513924c/) | ⚠️ Unaudited |
| WstEthExtension | unknown | ethereum | n/a | [`0xc5a3cb...c46d35`](./contracts/ethereum-1/0xc5a3cb224b799b982706008a1081073fe0c46d35/) | ⚠️ Unaudited |
| ZeroXAdaptor | unknown | ethereum | n/a | [`0x497bbe...eecfc2`](./contracts/ethereum-1/0x497bbe7d974b45e2e28cfbbdedf9e67646eecfc2/) | ⚠️ Unaudited |

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
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/Se7en-Seas/boring-vault/blob/main/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | contract_name | 7 | high |
| [0xmacro-boring-vault-arctic-1.pdf](https://github.com/Se7en-Seas/boring-vault/blob/main/audit/0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [spearbit-boring-vault-arctic-0.pdf (also discovered via alternate URL)](https://github.com/Se7en-Seas/boring-vault/blob/main/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | contract_name | 5 | high |
| [DL audit link](https://0xmacro.com/library/audits/sevenSeas-1.html) | 0xMacro | Audit | 2024-03 | stale | Direct | contract_name | 2 | high |
| [DL audit link](https://0xmacro.com/library/audits/sevenSeas-2.html) | 0xMacro | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [DL audit link](https://0xmacro.com/library/audits/sevenSeas-3.html) | 0xMacro | Audit | 2024-03 | stale | Direct | contract_name | 1 | high |
| [0xmacro-sevenSeas-10.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-10.pdf) | 0xMacro | Audit | 2024-07 | stale | Direct | contract_name | 1 | high |
| [0xmacro-sevenSeas-13.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-13.pdf) | 0xMacro | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-14.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-14.pdf) | 0xMacro | Audit | 2024-07 | stale | Direct | contract_name | 1 | high |
| [0xmacro-sevenSeas-15.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-15.pdf) | 0xMacro | Audit | 2024-08 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-16.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-16.pdf) | 0xMacro | Audit | 2024-09 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-17.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-17.pdf) | 0xMacro | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-18.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-18.pdf) | 0xMacro | Audit | 2024-10 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-19.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-19.pdf) | 0xMacro | Audit | 2024-11 | aging | Direct | contract_name | 5 | high |
| [0xmacro-sevenSeas-21.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-21.pdf) | 0xMacro | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-22.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-22.pdf) | 0xMacro | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-23.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-23.pdf) | 0xMacro | Audit | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-24.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-24.pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-25.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-25.pdf) | 0xMacro | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-26.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-26.pdf) | 0xMacro | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-27.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-27.pdf) | 0xMacro | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-28.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-28.pdf) | 0xMacro | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-30.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-30.pdf) | 0xMacro | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-31.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-31.pdf) | 0xMacro | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-32.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-32.pdf) | 0xMacro | Audit | 2025-02 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-33.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-33.pdf) | 0xMacro | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-34.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-34.pdf) | 0xMacro | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-35.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-35.pdf) | 0xMacro | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-36.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-36.pdf) | 0xMacro | Audit | 2025-03 | aging | Direct | contract_name | 1 | high |
| [0xmacro-sevenSeas-37.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-37.pdf) | 0xMacro | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-38.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-38.pdf) | 0xMacro | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-39.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-39.pdf) | 0xMacro | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-40.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-40.pdf) | 0xMacro | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-41.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-41.pdf) | 0xMacro | Audit | 2025-05 | aging | Direct | contract_name | 1 | high |
| [0xmacro-sevenSeas-44.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-44.pdf) | 0xMacro | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-45.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-45.pdf) | 0xMacro | Audit | 2025-05 | aging | Direct | contract_name | 1 | high |
| [0xmacro-sevenSeas-46.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-46.pdf) | 0xMacro | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-47.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-47.pdf) | 0xMacro | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-51.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-51.pdf) | 0xMacro | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-52.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-52.pdf) | 0xMacro | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-53.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-53.pdf) | 0xMacro | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-55.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-55.pdf) | 0xMacro | Audit | 2025-07 | aging | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-6.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-6.pdf) | 0xMacro | Audit | 2024-05 | stale | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-60.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-60.pdf) | 0xMacro | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-62.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-62.pdf) | 0xMacro | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-63.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-63.pdf) | 0xMacro | Audit | 2025-09 | fresh | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-64.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-64.pdf) | 0xMacro | Audit | 2025-09 | fresh | Direct | contract_name | 1 | high |
| [0xmacro-sevenSeas-66.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-66.pdf) | 0xMacro | Audit | 2025-10 | fresh | Direct | n/a | 0 | n/a |
| [0xmacro-sevenSeas-7.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-7.pdf) | 0xMacro | Audit | 2024-05 | stale | Direct | contract_name | 2 | high |
| [0xmacro-sevenSeas-8.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-8.pdf) | 0xMacro | Audit | 2024-06 | stale | Direct | contract_name | 3 | high |
| [0xmacro-sevenSeas-9.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-sevenSeas-9.pdf) | 0xMacro | Audit | 2024-07 | stale | Direct | n/a | 0 | n/a |
| [0xmacro-veda-83.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-veda-83.pdf) | 0xMacro | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [0xmacro-veda-84.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-veda-84.pdf) | 0xMacro | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [0xmacro-veda-85.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-veda-85.pdf) | 0xMacro | Audit | 2026-05 | fresh | Direct | n/a | 0 | n/a |
| [0xmacro-veda-90.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/0xmacro-veda-90.pdf) | 0xMacro | Audit | 2026-06 | fresh | Direct | n/a | 0 | n/a |
| [certora-boring-vault-0.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/certora-boring-vault-0.pdf) | certora | Audit | 2025-11 | fresh | Direct | contract_name | 3 | high |
| [certora-boring-vault-1.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/certora-boring-vault-1.pdf) | certora | Audit | 2026-01 | fresh | Direct | contract_name | 1 | high |
| [certora-boring-vault-2.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/certora-boring-vault-2.pdf) | certora | Audit | 2026-04 | fresh | Direct | contract_name | 2 | high |
| [certora-boring-vault-3.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/certora-boring-vault-3.pdf) | certora | Audit | 2026-02 | fresh | Direct | contract_name | 2 | high |
| [sigma-prime-boring-vault-0.pdf](https://github.com/Veda-Labs/boring-vault/blob/main/audit/sigma-prime-boring-vault-0.pdf) | sigma-prime | Audit | 2025-12 | fresh | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x5b744e...1a2d7a`](./contracts/ethereum-1/0x5b744e93bbf5caf38df34f3ba14a40024d1a2d7a/) | AtomicSolverV2 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x0f3f8c...2bb162`](./contracts/ethereum-1/0x0f3f8cab8d3888281033faf7a6c0b74de62bb162/) | AuraERC4626Adaptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xea1a63...06a221`](./contracts/ethereum-1/0xea1a6307d9b18f8d1cbf1c3dd6aad8416c06a221/) | CellarWithOracleWithBalancerFlashLoansWithMultiAssetDepositWithNativeSupport | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x4ec6e3...740d5b`](./contracts/ethereum-1/0x4ec6e3b0933cc90fdb274267dff1a57db9740d5b/) | eEthExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7a5b17...81331d`](./contracts/ethereum-1/0x7a5b17e0ad1e0f37061fcc7f90512c367981331d/) | ERC20Adaptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb1761a...a681e2`](./contracts/ethereum-1/0xb1761a7c7799cb429eb5bf2db16d88534da681e2/) | ERC4626Adaptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9d3eb5...8014b0`](./contracts/ethereum-1/0x9d3eb50ed4540135a78facd70063bccc988014b0/) | ERC4626SharePriceOracle | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5d84ec...b358da`](./contracts/ethereum-1/0x5d84ec98c476b159f3e107709f224d5bbbb358da/) | FeesAndReservesAdaptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xf0164d...0f8780`](./contracts/ethereum-1/0xf0164d48b308c42ae028e3379b2fb620e70f8780/) | IncentiveDistributor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x5f7de9...c58d43`](./contracts/ethereum-1/0x5f7de90fb222d37225dd8929672e427699c58d43/) | OneInchAdaptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x37912f...059bbd`](./contracts/ethereum-1/0x37912f4c0f0d916890ebd755bf6d1f0a0e059bbd/) | Registry | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a4abb...c67d73`](./contracts/ethereum-1/0x6a4abbee0a07f358c7706c78fd7cc2702fc67d73/) | RolesAuthority | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xc5a3cb...c46d35`](./contracts/ethereum-1/0xc5a3cb224b799b982706008a1081073fe0c46d35/) | WstEthExtension | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x497bbe...eecfc2`](./contracts/ethereum-1/0x497bbe7d974b45e2e28cfbbdedf9e67646eecfc2/) | ZeroXAdaptor | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 24 |
| upstream | 2 |
| standard_library | 1 |
| needs_review | 0 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 42
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=18
- Match method counts: extraction_exact=49

Zero-match audit list:

- [18537] 0xmacro-boring-vault-arctic-1.pdf
- [18540] DL audit link
- [18560] 0xmacro-sevenSeas-13.pdf
- [18562] 0xmacro-sevenSeas-15.pdf
- [18563] 0xmacro-sevenSeas-16.pdf
- [18564] 0xmacro-sevenSeas-17.pdf
- [18565] 0xmacro-sevenSeas-18.pdf
- [18567] 0xmacro-sevenSeas-21.pdf
- [18568] 0xmacro-sevenSeas-22.pdf
- [18569] 0xmacro-sevenSeas-23.pdf
- [18570] 0xmacro-sevenSeas-24.pdf
- [18571] 0xmacro-sevenSeas-25.pdf
- [18572] 0xmacro-sevenSeas-26.pdf
- [18573] 0xmacro-sevenSeas-27.pdf
- [18574] 0xmacro-sevenSeas-28.pdf
- [18575] 0xmacro-sevenSeas-30.pdf
- [18576] 0xmacro-sevenSeas-31.pdf
- [18577] 0xmacro-sevenSeas-32.pdf
- [18578] 0xmacro-sevenSeas-33.pdf
- [18579] 0xmacro-sevenSeas-34.pdf
- [18580] 0xmacro-sevenSeas-35.pdf
- [18582] 0xmacro-sevenSeas-37.pdf
- [18583] 0xmacro-sevenSeas-38.pdf
- [18584] 0xmacro-sevenSeas-39.pdf
- [18585] 0xmacro-sevenSeas-40.pdf
- [18587] 0xmacro-sevenSeas-44.pdf
- [18589] 0xmacro-sevenSeas-46.pdf
- [18590] 0xmacro-sevenSeas-47.pdf
- [18591] 0xmacro-sevenSeas-51.pdf
- [18592] 0xmacro-sevenSeas-52.pdf
- [18593] 0xmacro-sevenSeas-53.pdf
- [18594] 0xmacro-sevenSeas-55.pdf
- [18595] 0xmacro-sevenSeas-6.pdf
- [18596] 0xmacro-sevenSeas-60.pdf
- [18597] 0xmacro-sevenSeas-62.pdf
- [18598] 0xmacro-sevenSeas-63.pdf
- [18600] 0xmacro-sevenSeas-66.pdf
- [18603] 0xmacro-sevenSeas-9.pdf
- [18604] 0xmacro-veda-83.pdf
- [18605] 0xmacro-veda-84.pdf
- [18606] 0xmacro-veda-85.pdf
- [18607] 0xmacro-veda-90.pdf

Fork inheritance lineage and inherited audits are included when available.
