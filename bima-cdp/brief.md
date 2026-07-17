# Agentic Audit Brief: BIMA CDP

## Project Overview

- Project: BIMA CDP (`bima-cdp`)
- Website: [https://bima.money/](https://bima.money/)
- Lifecycle: active (Tier 0, 66.7% below peak)
- Generated: 2026-07-04T14:53:07.459Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-d640
- Chains: bsc, ethereum, sonic
- Contract surface: 28 unique implementations (48 raw deployments)
- DeFi Llama TVL: $6,207,050.85
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

CDP. Structurally: 37 project-authored contract(s) across 3 chain(s); 1 ERC4626 vault, 7 ERC20 tokens; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 10 functional families. Its contracts share 22 common project-authored base contract(s) (bimaownable, systemstart, bimabase). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 116; live-surface contracts included: 44 (34 live, 10 unknown).
- Excluded by liveness: 72 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 6/18 (33.3%)
- Deployed-live implementations: 20 of 28 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 6/20
- Verified + Unaudited implementations: 14
- Verified by bytecode match: 1
- Unverified implementations: 8
- Unique implementations: 28
- Raw deployments: 48
- Audits discovered: 3 (3 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Audit staleness (calendar age): 0 fresh, 3 aging, 0 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 33.3% (Cyfrin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 5 | 25.0% | 2024-09 |
| Unknown | Tier 2 | 5 | 25.0% | 2024-09 |
| Spearbit | Tier 1 | 4 | 20.0% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (5)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BimaVault | core_logic | ethereum | n/a | [`0xc4bbfb26a2285b3d5e7406f383a676e78b126799`](./contracts/ethereum-1/0xc4bbfb26a2285b3d5e7406f383a676e78b126799/) | ✅ Audited |
| DebtToken | token | ethereum | n/a | 2 deployments: ethereum [`0x6bede1c6009a78c222d9bdb7974bb67847fdb68c`](./contracts/ethereum-1/0x6bede1c6009a78c222d9bdb7974bb67847fdb68c/); bsc [`0x6bede1c6009a78c222d9bdb7974bb67847fdb68c`](./contracts/bsc-56/0x6bede1c6009a78c222d9bdb7974bb67847fdb68c/) | ✅ Audited |
| Factory | registry | ethereum | n/a | 3 deployments: ethereum [`0xc5790164d3ccb6533b241eee3fd7f56862759376`](./contracts/ethereum-1/0xc5790164d3ccb6533b241eee3fd7f56862759376/); bsc [`0xc5790164d3ccb6533b241eee3fd7f56862759376`](./contracts/bsc-56/0xc5790164d3ccb6533b241eee3fd7f56862759376/); sonic [`0xc5790164d3ccb6533b241eee3fd7f56862759376`](./contracts/sonic-146/0xc5790164d3ccb6533b241eee3fd7f56862759376/) | ✅ Audited |
| PriceFeed | operational_periphery | ethereum | n/a | [`0x4b248f3646755f5b71a66bae8c55c568809cbff2`](./contracts/ethereum-1/0x4b248f3646755f5b71a66bae8c55c568809cbff2/) | ✅ Audited |
| TroveManager | governance | ethereum | n/a | 4 deployments: ethereum [`0x5066dc39248e6696c0f2606a744a4482a3d36b97`](./contracts/ethereum-1/0x5066dc39248e6696c0f2606a744a4482a3d36b97/); ethereum `0xa20c3dc27c8c1a1adc92e3b443607914ed800ff2`; bsc `0xa20c3dc27c8c1a1adc92e3b443607914ed800ff2`; sonic `0xa20c3dc27c8c1a1adc92e3b443607914ed800ff2` | ✅ Audited |

### ⚠️ Verified + Unaudited (14)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Bfbtc | unknown | ethereum | n/a | [`0x4ca67a794051e036eefb5aa4b34fe2bd836069f0`](./contracts/ethereum-1/0x4ca67a794051e036eefb5aa4b34fe2bd836069f0/) | ⚠️ Unaudited |
| Bfbtc | unknown | ethereum | n/a | 2 deployments: ethereum [`0x623f2774d9f27b59bc6b954544487532ce79d9df`](./contracts/ethereum-1/0x623f2774d9f27b59bc6b954544487532ce79d9df/); ethereum `0xcdfb58c8c859cb3f62ebe9cf2767f9e036c7fb15` | ⚠️ Unaudited |
| BimaPSM | unknown | ethereum | n/a | 4 deployments: ethereum [`0x42ad6834a6599a0b7a7812f01f8092b580523d67`](./contracts/ethereum-1/0x42ad6834a6599a0b7a7812f01f8092b580523d67/); ethereum `0x705fd2306bf6e4dec47bf8aaab378b04024792d4`; ethereum `0x97bb3167a88fe34b1ec6d7f02560c4f0aa6009e9`; ethereum `0xea811c2c400ee846e352d45c849657d920a888fe` | ⚠️ Unaudited |
| BimaWrappedCollateral | unknown | ethereum | n/a | 3 deployments: ethereum [`0x59063fbe70d3b0f9312e5c89acdc476f5d2018e1`](./contracts/ethereum-1/0x59063fbe70d3b0f9312e5c89acdc476f5d2018e1/); ethereum `0x856db20b0c326afee3bf64770f7d8d39bf232ce0`; ethereum `0xdc0ccad18ca645a03870676c78a81524b4655197` | ⚠️ Unaudited |
| BimaWrappedCollateralFactory | registry | ethereum | n/a | 3 deployments: ethereum [`0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf`](./contracts/ethereum-1/0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf/); bsc [`0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf`](./contracts/bsc-56/0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf/); sonic [`0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf`](./contracts/sonic-146/0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf/) | ⚠️ Unaudited |
| BitFiStablecoinManager | governance | ethereum | n/a | [`0xb69865f8fa4bfc67ab4ad233e36ac593a5d21f06`](./contracts/ethereum-1/0xb69865f8fa4bfc67ab4ad233e36ac593a5d21f06/) | ⚠️ Unaudited |
| BitFiStablecoinZap | adapter | ethereum | n/a | [`0x140b5517df7e33878eb0a494d6882cfac54b66cb`](./contracts/ethereum-1/0x140b5517df7e33878eb0a494d6882cfac54b66cb/) | ⚠️ Unaudited |
| EnzoBTC | unknown | ethereum | n/a | [`0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a`](./contracts/ethereum-1/0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a/) | ⚠️ Unaudited |
| EnzoNetwork | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7efb3515d9ec4537fafca635a1de7da7a5c5c567`](./contracts/ethereum-1/0x7efb3515d9ec4537fafca635a1de7da7a5c5c567/); ethereum `0xdc2156498144f172746c4e6d4baab54d87950068` | ⚠️ Unaudited |
| LBTC | unknown | sonic | n/a | [`0xecac9c5f704e954931349da37f60e39f515c11c1`](./contracts/sonic-146/0xecac9c5f704e954931349da37f60e39f515c11c1/) | ⚠️ Unaudited |
| MintSecurity | unknown | ethereum | n/a | 2 deployments: ethereum [`0x316c1b6b0c7051a10073abf0d06f9cc5ae2ab302`](./contracts/ethereum-1/0x316c1b6b0c7051a10073abf0d06f9cc5ae2ab302/); ethereum `0x47c4ac7d1d0ff9594de5f3d2d07ff67253620a1c` | ⚠️ Unaudited |
| MintStrategy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x81d7dab8b95085034d9ce90958038251726b2c59`](./contracts/ethereum-1/0x81d7dab8b95085034d9ce90958038251726b2c59/); ethereum `0xb3cf78f3e483b63280cfe19d52c9c1bdd03d02ab` | ⚠️ Unaudited |
| ProxyMock | unknown | ethereum | n/a | [`0xecac9c5f704e954931349da37f60e39f515c11c1`](./contracts/ethereum-1/0xecac9c5f704e954931349da37f60e39f515c11c1/) | ⚠️ Unaudited |
| StakedBitFiStablecoin | token | ethereum | n/a | 2 deployments: ethereum [`0x688745d56f93924dbda1c2caa613adcbcea871c5`](./contracts/ethereum-1/0x688745d56f93924dbda1c2caa613adcbcea871c5/); ethereum `0xd32224533b63ddeb63409010fe6c841350951734` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| BorrowerOperations | core_logic | ethereum | n/a | 3 deployments: ethereum [`0x87fed36c032ee7289a1d2f3c48798e4c7fcdfaec`](./contracts/ethereum-1/0x87fed36c032ee7289a1d2f3c48798e4c7fcdfaec/); bsc [`0x87fed36c032ee7289a1d2f3c48798e4c7fcdfaec`](./contracts/bsc-56/0x87fed36c032ee7289a1d2f3c48798e4c7fcdfaec/); sonic [`0x87fed36c032ee7289a1d2f3c48798e4c7fcdfaec`](./contracts/sonic-146/0x87fed36c032ee7289a1d2f3c48798e4c7fcdfaec/) | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (8)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x128eb2baca6ac5416bed268d41c202fc41d55f1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3bbd33135621ce0d2faa023adec2faf5a7458a92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5363949018262d778a6ff7b4a16c82b4e5c78395` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x5f339e8811941271e9037a5d899766e3f5a7ff47` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6a62989d451c4f359a30bfcece51da8a313dd490` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x49ce2eabdeaf65864a9d6542b2de9d384dfaef15` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6a62989d451c4f359a30bfcece51da8a313dd490` | ❓ Unverified |
| UnnamedContract | unknown | sonic | n/a | `0x6bede1c6009a78c222d9bdb7974bb67847fdb68c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024-09-27-cyfrin-bima-v2.0.pdf](https://github.com/Bima-Labs/bima-core-audits/blob/main/aduits/2024-09-27-cyfrin-bima-v2.0.pdf) | Cyfrin | Audit | 2024-09 | aging | Direct | contract_name | 5 | n/a |
| [20241023-Bima-Final-Audit-Report.pdf](https://github.com/Bima-Labs/bima-core-audits/blob/main/aduits/20241023-Bima-Final-Audit-Report.pdf) | Unknown | Audit | 2024-09 | aging | Direct | contract_name | 5 | n/a |
| [cantina_competition_bima_december2024.pdf](https://github.com/Bima-Labs/bima-core-audits/blob/main/aduits/cantina_competition_bima_december2024.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | 4 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x4ca67a794051e036eefb5aa4b34fe2bd836069f0`](./contracts/ethereum-1/0x4ca67a794051e036eefb5aa4b34fe2bd836069f0/) | Bfbtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x623f2774d9f27b59bc6b954544487532ce79d9df`](./contracts/ethereum-1/0x623f2774d9f27b59bc6b954544487532ce79d9df/) | Bfbtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42ad6834a6599a0b7a7812f01f8092b580523d67`](./contracts/ethereum-1/0x42ad6834a6599a0b7a7812f01f8092b580523d67/) | BimaPSM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59063fbe70d3b0f9312e5c89acdc476f5d2018e1`](./contracts/ethereum-1/0x59063fbe70d3b0f9312e5c89acdc476f5d2018e1/) | BimaWrappedCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf`](./contracts/ethereum-1/0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf/) | BimaWrappedCollateralFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb69865f8fa4bfc67ab4ad233e36ac593a5d21f06`](./contracts/ethereum-1/0xb69865f8fa4bfc67ab4ad233e36ac593a5d21f06/) | BitFiStablecoinManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x140b5517df7e33878eb0a494d6882cfac54b66cb`](./contracts/ethereum-1/0x140b5517df7e33878eb0a494d6882cfac54b66cb/) | BitFiStablecoinZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a`](./contracts/ethereum-1/0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a/) | EnzoBTC | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x7efb3515d9ec4537fafca635a1de7da7a5c5c567`](./contracts/ethereum-1/0x7efb3515d9ec4537fafca635a1de7da7a5c5c567/) | EnzoNetwork | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x316c1b6b0c7051a10073abf0d06f9cc5ae2ab302`](./contracts/ethereum-1/0x316c1b6b0c7051a10073abf0d06f9cc5ae2ab302/) | MintSecurity | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x81d7dab8b95085034d9ce90958038251726b2c59`](./contracts/ethereum-1/0x81d7dab8b95085034d9ce90958038251726b2c59/) | MintStrategy | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x688745d56f93924dbda1c2caa613adcbcea871c5`](./contracts/ethereum-1/0x688745d56f93924dbda1c2caa613adcbcea871c5/) | StakedBitFiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 21 |
| upstream | 0 |
| standard_library | 2 |
| needs_review | 5 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: n/a
- Match method counts: contract_name=14

Fork inheritance lineage and inherited audits are included when available.
