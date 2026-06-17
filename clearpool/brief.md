# Agentic Audit Brief: Clearpool

## Project Overview

- Project: Clearpool (`clearpool`)
- Website: [https://clearpool.finance](https://clearpool.finance)
- Lifecycle: active (Tier 0, 31.2% below peak)
- Generated: 2026-06-17T07:00:38.289Z
- Pipeline run: brief-regen-topo-2026-06-17
- Chains: avalanche, base, ethereum, mantle, optimism, polygon, polygon-zkevm
- Contract surface: 9 unique implementations (11 raw deployments)
- DeFi Llama TVL: $34,318,404.00
- On-chain TVL (included contracts): $10,712.83
- TVL by chain: Ethereum $10,712.83

## Project Description

Clearpool is a DeFi protocol for professionally managed on-chain credit, tokenization, and real-world-yield products. Its product lines include Clearpool Lending, which supports unsecured institutional borrowing and lending based on borrower creditworthiness, and Clearpool TPOOL/RWA structured-product vaults, which provide tokenized real-world yield exposure through managed on-chain products.

### Architecture

The Clearpool family provides the foundational lending infrastructure (pools, auctions, CPOOL token), while Clearpool Lending extends it with additional factory and model contracts. Clearpool Smart Contracts and TPOOL appear to be specialized or upgraded variants that share the same proxy-based upgradeability pattern and likely integrate with the core CPOOL token and governance.

## Contract Surface Quality

- Indexed contracts: 229; live-surface contracts included: 11 (7 live, 4 unknown).
- Excluded by liveness: 145 inactive, 73 singleton, 0 uninitialized.
- Deployment units: 2/51 live.
- Detected codebases: none
- Unverified dependencies: 3/7.

## Audit Coverage Summary

- Verified implementations audited: 0/5 (0.0%)
- Verified + Unaudited implementations: 5
- Verified by bytecode match: 0
- Unverified implementations: 4
- Unique implementations: 9
- Raw deployments: 11
- Audits discovered: 7
- Scoreable audits (matched contracts): 0
- ASD (verified + unaudited TVL): $10,712.83
- Latest audit: 2024-12 (aging)
- Staleness: 0 fresh, 1 aging, 3 stale, 3 unknown
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

- None

## Contract Surface

### ✅ Verified + Audited (0)

- None

### ⚠️ Verified + Unaudited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| CPOOL | core_logic | ethereum | n/a | [`0x66761f...c2fac5`](./contracts/ethereum-1/0x66761fa41377003622aee3c7675fc7b5c1c2fac5/) | ⚠️ Unaudited |
| CPOOLOFT | core_logic | base | n/a | 2 deployments: optimism `0x379c8d...faacd9`; base [`0x29157e...783a5c`](./contracts/base-8453/0x29157e2b6a34ae1787cddd05ad54dd4aa9783a5c/) | ⚠️ Unaudited |
| CPOOLOFT20 | core_logic | mantle | n/a | 2 deployments: polygon `0xb08b36...3a2d91`; mantle [`0x0c8927...5279d8`](./contracts/mantle-5000/0x0c8927de225bb1ed9db05aa7d641e434b95279d8/) | ⚠️ Unaudited |
| PoolFactory | registry | base | unit-24012 | [`0x199a01...05dfad`](./contracts/base-8453/0x199a016ffbe14781365bcaed9cc52598b205dfad/) | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | avalanche | unit-24021 | [`0x8e5573...ab2b7a`](./contracts/avalanche-43114/0x8e557363ac9e5cbf09a2616a302ca3c8f6ab2b7a/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (4)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x04df6f...cd4445` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0x5cda11...255900` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xc3630b...f3d3fe` | ❓ Unverified |
| UnnamedContract | unknown | polygon-zkevm | n/a | `0xce3fec...c7ca16` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [0xmacro-boring-vault-arctic-0.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/0xmacro-boring-vault-arctic-0.pdf) | 0xMacro | Audit | 2024-03 | stale | Direct | n/a | 0 | n/a |
| [0xmacro-boring-vault-arctic-1.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/0xmacro-boring-vault-arctic-1.pdf) | 0xMacro | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pashov-boring-vault.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/pashov-boring-vault.pdf) | Pashov Audit Group | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [pashov-hyperlane.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/pashov-hyperlane.pdf) | Pashov Audit Group | Audit | 2024-12 | aging | Direct | n/a | 0 | n/a |
| [spearbit-boring-vault-arctic-0.pdf](https://github.com/clearpool-finance/clearpool-payfi-vaults/blob/main/audit/spearbit-boring-vault-arctic-0.pdf) | Spearbit | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [DL audit link](https://skynet.certik.com/projects/clearpool) | CertiK | Audit | 2022-03 | stale | Direct | contract_name | 0 | n/a |
| [DL audit link](https://3929482601-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FhkiSI8bK3ThlypJ3jdEC%2Fuploads%2FOFonx1OQS6ni5lUsyiPx%2FClearpool%20Security%20Analysis%20by%20Pessimistic.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 9 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: extraction_exact=20

Zero-match audit list:

- [5805] 0xmacro-boring-vault-arctic-0.pdf
- [5806] 0xmacro-boring-vault-arctic-1.pdf
- [5807] pashov-boring-vault.pdf
- [5808] pashov-hyperlane.pdf
- [5809] spearbit-boring-vault-arctic-0.pdf
- [12320] DL audit link
- [12321] DL audit link

Fork inheritance lineage and inherited audits are included when available.
