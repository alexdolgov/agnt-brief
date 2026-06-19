# Agentic Audit Brief: BIMA CDP

## Project Overview

- Project: BIMA CDP (`bima-cdp`)
- Website: [https://bima.money/](https://bima.money/)
- Lifecycle: active (Tier 0, 72.2% below peak)
- Generated: 2026-06-19T06:13:18.221Z
- Pipeline run: v2-pipeline-2026-06-19-32b207-c216
- Chains: bsc, ethereum, sonic
- Contract surface: 19 unique implementations (26 raw deployments)
- DeFi Llama TVL: $6,514,963.39
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

BIMA CDP is a decentralized Bitcoin-backed stablecoin and borrowing protocol positioned for universal yield. Users deposit collateral to mint the protocol stablecoin/debt token, with liquidation mechanisms, stability pools, and governance features used to maintain peg stability and manage risk across supported deployments and accounting chains.

### Architecture

The CDP family relies on Price Oracles for collateral valuation and Cross-Chain Assets as collateral types. BIMA Token & Governance controls protocol parameters and incentives, while Stability Mechanisms and Yield & Strategies support peg stability and capital efficiency.

## Contract Surface Quality

- Indexed contracts: 110; live-surface contracts included: 26 (21 live, 5 unknown).
- Excluded by liveness: 80 inactive, 4 singleton, 0 uninitialized.
- Deployment units: 2/7 live.
- Detected codebases: none
- Dependencies extracted: 26; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 6/16 (37.5%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 0
- Unverified implementations: 3
- Unique implementations: 19
- Raw deployments: 26
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Staleness: 0 fresh, 3 aging, 0 stale, 0 unknown
- Tier 1 coverage: 37.5% (Cyfrin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 5 | 31.3% | 2024-09 |
| Unknown | Tier 2 | 5 | 31.3% | 2024-09 |
| Spearbit | Tier 1 | 4 | 25.0% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BimaVault | core_logic | ethereum | n/a | [`0xc4bbfb...126799`](./contracts/ethereum-1/0xc4bbfb26a2285b3d5e7406f383a676e78b126799/) | ✅ Audited |
| BorrowerOperations | core_logic | ethereum | n/a | [`0x87fed3...cdfaec`](./contracts/ethereum-1/0x87fed36c032ee7289a1d2f3c48798e4c7fcdfaec/) | ✅ Audited |
| DebtToken | token | ethereum | n/a | [`0x6bede1...fdb68c`](./contracts/ethereum-1/0x6bede1c6009a78c222d9bdb7974bb67847fdb68c/) | ✅ Audited |
| Factory | registry | ethereum | n/a | [`0xc57901...759376`](./contracts/ethereum-1/0xc5790164d3ccb6533b241eee3fd7f56862759376/) | ✅ Audited |
| PriceFeed | operational_periphery | ethereum | n/a | [`0x4b248f...9cbff2`](./contracts/ethereum-1/0x4b248f3646755f5b71a66bae8c55c568809cbff2/) | ✅ Audited |
| TroveManager | governance | ethereum | n/a | 4 deployments: ethereum [`0x5066dc...d36b97`](./contracts/ethereum-1/0x5066dc39248e6696c0f2606a744a4482a3d36b97/); ethereum `0xa20c3d...800ff2`; bsc `0xa20c3d...800ff2`; sonic `0xa20c3d...800ff2` | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bfbtc | unknown | ethereum | n/a | [`0x4ca67a...6069f0`](./contracts/ethereum-1/0x4ca67a794051e036eefb5aa4b34fe2bd836069f0/) | ⚠️ Unaudited |
| BimaPSM | unknown | ethereum | n/a | 2 deployments: ethereum [`0x97bb31...6009e9`](./contracts/ethereum-1/0x97bb3167a88fe34b1ec6d7f02560c4f0aa6009e9/); ethereum `0xea811c...a888fe` | ⚠️ Unaudited |
| BimaWrappedCollateral | unknown | ethereum | n/a | 3 deployments: ethereum [`0x59063f...2018e1`](./contracts/ethereum-1/0x59063fbe70d3b0f9312e5c89acdc476f5d2018e1/); ethereum `0x856db2...232ce0`; ethereum `0xdc0cca...655197` | ⚠️ Unaudited |
| BimaWrappedCollateralFactory | registry | ethereum | n/a | [`0x76de9b...129dbf`](./contracts/ethereum-1/0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf/) | ⚠️ Unaudited |
| BitFiStablecoinManager | governance | ethereum | n/a | [`0xb69865...d21f06`](./contracts/ethereum-1/0xb69865f8fa4bfc67ab4ad233e36ac593a5d21f06/) | ⚠️ Unaudited |
| BitFiStablecoinZap | adapter | ethereum | n/a | [`0x140b55...4b66cb`](./contracts/ethereum-1/0x140b5517df7e33878eb0a494d6882cfac54b66cb/) | ⚠️ Unaudited |
| EnzoBTC | unknown | ethereum | n/a | [`0x6a9a65...fbce4a`](./contracts/ethereum-1/0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a/) | ⚠️ Unaudited |
| LBTC | unknown | sonic | unit-37121 | [`0xecac9c...5c11c1`](./contracts/sonic-146/0xecac9c5f704e954931349da37f60e39f515c11c1/) | ⚠️ Unaudited |
| ProxyMock | unknown | ethereum | unit-37119 | [`0xecac9c...5c11c1`](./contracts/ethereum-1/0xecac9c5f704e954931349da37f60e39f515c11c1/) | ⚠️ Unaudited |
| StakedBitFiStablecoin | token | ethereum | n/a | 2 deployments: ethereum [`0x688745...a871c5`](./contracts/ethereum-1/0x688745d56f93924dbda1c2caa613adcbcea871c5/); ethereum `0xd32224...951734` | ⚠️ Unaudited |

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
| UnnamedContract | unknown | ethereum | n/a | `0x3bbd33...458a92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x536394...c78395` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f339e...a7ff47` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024-09-27-cyfrin-bima-v2.0.pdf](https://github.com/Bima-Labs/bima-core-audits/blob/main/aduits/2024-09-27-cyfrin-bima-v2.0.pdf) | Cyfrin | Audit | 2024-09 | aging | Direct | contract_name | 8 | high |
| [20241023-Bima-Final-Audit-Report.pdf](https://github.com/Bima-Labs/bima-core-audits/blob/main/aduits/20241023-Bima-Final-Audit-Report.pdf) | Unknown | Audit | 2024-09 | aging | Direct | contract_name | 8 | high |
| [cantina_competition_bima_december2024.pdf](https://github.com/Bima-Labs/bima-core-audits/blob/main/aduits/cantina_competition_bima_december2024.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | 7 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4ca67a...6069f0`](./contracts/ethereum-1/0x4ca67a794051e036eefb5aa4b34fe2bd836069f0/) | Bfbtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x97bb31...6009e9`](./contracts/ethereum-1/0x97bb3167a88fe34b1ec6d7f02560c4f0aa6009e9/) | BimaPSM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59063f...2018e1`](./contracts/ethereum-1/0x59063fbe70d3b0f9312e5c89acdc476f5d2018e1/) | BimaWrappedCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76de9b...129dbf`](./contracts/ethereum-1/0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf/) | BimaWrappedCollateralFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb69865...d21f06`](./contracts/ethereum-1/0xb69865f8fa4bfc67ab4ad233e36ac593a5d21f06/) | BitFiStablecoinManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x140b55...4b66cb`](./contracts/ethereum-1/0x140b5517df7e33878eb0a494d6882cfac54b66cb/) | BitFiStablecoinZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x688745...a871c5`](./contracts/ethereum-1/0x688745d56f93924dbda1c2caa613adcbcea871c5/) | StakedBitFiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 4 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2, medium=1
- Match method counts: extraction_exact=109

Fork inheritance lineage and inherited audits are included when available.
