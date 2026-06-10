# Agentic Audit Brief: BIMA CDP

## Project Overview

- Project: BIMA CDP (`bima-cdp`)
- Website: [https://bima.money/](https://bima.money/)
- Lifecycle: active (Tier 0, 72.2% below peak)
- Generated: 2026-06-10T20:58:59.196Z
- Pipeline run: correction-skeletal-description-fix-all
- Chains: bsc, ethereum, sonic
- Contract surface: 37 unique implementations (109 raw deployments)
- DeFi Llama TVL: $5,315,000.87
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

BIMA CDP is a decentralized Bitcoin-backed stablecoin and borrowing protocol positioned for universal yield. Users deposit collateral to mint the protocol stablecoin/debt token, with liquidation mechanisms, stability pools, and governance features used to maintain peg stability and manage risk across supported deployments and accounting chains.

### Architecture

The CDP family relies on Price Oracles for collateral valuation and Cross-Chain Assets as collateral types. BIMA Token & Governance controls protocol parameters and incentives, while Stability Mechanisms and Yield & Strategies support peg stability and capital efficiency.

## Audit Coverage Summary

- Verified implementations audited: 16/31 (51.6%)
- Verified + Unaudited implementations: 15
- Verified by bytecode match: 2
- Unverified implementations: 6
- Unique implementations: 37
- Raw deployments: 109
- Audits discovered: 3
- Scoreable audits (matched contracts): 3
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-06 (aging)
- Staleness: 0 fresh, 3 aging, 0 stale, 0 unknown
- Tier 1 coverage: 51.6% (Cyfrin, Spearbit)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Cyfrin | Tier 1 | 14 | 45.2% | 2024-09 |
| Unknown | Tier 2 | 11 | 35.5% | 2024-09 |
| Spearbit | Tier 1 | 9 | 29.0% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (14)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BimaCore | unknown | ethereum | 3 deployments: ethereum [`0x227e93...2380ab`](./contracts/ethereum-1/0x227e9323d692578ca3df92b87d06625df22380ab/); bsc [`0x227e93...2380ab`](./contracts/bsc-56/0x227e9323d692578ca3df92b87d06625df22380ab/); sonic [`0x227e93...2380ab`](./contracts/sonic-146/0x227e9323d692578ca3df92b87d06625df22380ab/) | ✅ Audited |
| BimaVault | core_logic | ethereum | 3 deployments: ethereum [`0xc4bbfb...126799`](./contracts/ethereum-1/0xc4bbfb26a2285b3d5e7406f383a676e78b126799/); bsc [`0xc4bbfb...126799`](./contracts/bsc-56/0xc4bbfb26a2285b3d5e7406f383a676e78b126799/); sonic [`0xc4bbfb...126799`](./contracts/sonic-146/0xc4bbfb26a2285b3d5e7406f383a676e78b126799/) | ✅ Audited |
| DebtToken | token | ethereum | 2 deployments: ethereum [`0x6bede1...fdb68c`](./contracts/ethereum-1/0x6bede1c6009a78c222d9bdb7974bb67847fdb68c/); bsc [`0x6bede1...fdb68c`](./contracts/bsc-56/0x6bede1c6009a78c222d9bdb7974bb67847fdb68c/) | ✅ Audited |
| Factory | registry | ethereum | 3 deployments: ethereum [`0xc57901...759376`](./contracts/ethereum-1/0xc5790164d3ccb6533b241eee3fd7f56862759376/); bsc [`0xc57901...759376`](./contracts/bsc-56/0xc5790164d3ccb6533b241eee3fd7f56862759376/); sonic [`0xc57901...759376`](./contracts/sonic-146/0xc5790164d3ccb6533b241eee3fd7f56862759376/) | ✅ Audited |
| GasPool | core_logic | ethereum | 3 deployments: ethereum [`0xcbf153...ae8b89`](./contracts/ethereum-1/0xcbf15324c5838aefe6731077c55adc85bdae8b89/); bsc [`0xcbf153...ae8b89`](./contracts/bsc-56/0xcbf15324c5838aefe6731077c55adc85bdae8b89/); sonic [`0xcbf153...ae8b89`](./contracts/sonic-146/0xcbf15324c5838aefe6731077c55adc85bdae8b89/) | ✅ Audited |
| IncentiveVoting | unknown | ethereum | 3 deployments: ethereum [`0x558741...ddb7a8`](./contracts/ethereum-1/0x5587416ef31da806948e6975c377844f5eddb7a8/); bsc [`0x558741...ddb7a8`](./contracts/bsc-56/0x5587416ef31da806948e6975c377844f5eddb7a8/); sonic [`0x558741...ddb7a8`](./contracts/sonic-146/0x5587416ef31da806948e6975c377844f5eddb7a8/) | ✅ Audited |
| LiquidationManager | governance | ethereum | 3 deployments: ethereum [`0x2d3b9e...6b73ba`](./contracts/ethereum-1/0x2d3b9e988470d14a81b9965e4e5229aae06b73ba/); bsc [`0x2d3b9e...6b73ba`](./contracts/bsc-56/0x2d3b9e988470d14a81b9965e4e5229aae06b73ba/); sonic [`0x2d3b9e...6b73ba`](./contracts/sonic-146/0x2d3b9e988470d14a81b9965e4e5229aae06b73ba/) | ✅ Audited |
| MultiTroveGetter | unknown | ethereum | 3 deployments: ethereum [`0x42186e...0dcf6b`](./contracts/ethereum-1/0x42186eefc0e6d7e3cfb82f3845671ef1600dcf6b/); bsc [`0x42186e...0dcf6b`](./contracts/bsc-56/0x42186eefc0e6d7e3cfb82f3845671ef1600dcf6b/); sonic [`0x42186e...0dcf6b`](./contracts/sonic-146/0x42186eefc0e6d7e3cfb82f3845671ef1600dcf6b/) | ✅ Audited |
| PriceFeed | operational_periphery | ethereum | 3 deployments: ethereum [`0x4b248f...9cbff2`](./contracts/ethereum-1/0x4b248f3646755f5b71a66bae8c55c568809cbff2/); bsc [`0x4b248f...9cbff2`](./contracts/bsc-56/0x4b248f3646755f5b71a66bae8c55c568809cbff2/); sonic [`0x4b248f...9cbff2`](./contracts/sonic-146/0x4b248f3646755f5b71a66bae8c55c568809cbff2/) | ✅ Audited |
| SortedTroves | unknown | ethereum | 3 deployments: ethereum [`0x870a10...c56b4a`](./contracts/ethereum-1/0x870a108234dee42a9fa01c36368e5e4ea3c56b4a/); bsc [`0x870a10...c56b4a`](./contracts/bsc-56/0x870a108234dee42a9fa01c36368e5e4ea3c56b4a/); sonic [`0x870a10...c56b4a`](./contracts/sonic-146/0x870a108234dee42a9fa01c36368e5e4ea3c56b4a/) | ✅ Audited |
| StabilityPool | core_logic | ethereum | 3 deployments: ethereum [`0x5f2283...82d627`](./contracts/ethereum-1/0x5f2283c7c8967c5fb3a959e63ea89865b882d627/); bsc [`0x5f2283...82d627`](./contracts/bsc-56/0x5f2283c7c8967c5fb3a959e63ea89865b882d627/); sonic [`0x5f2283...82d627`](./contracts/sonic-146/0x5f2283c7c8967c5fb3a959e63ea89865b882d627/) | ✅ Audited |
| TokenLocker | token | ethereum | 3 deployments: ethereum [`0x09a028...f75bf7`](./contracts/ethereum-1/0x09a028587705b49fa162671d2507567cfef75bf7/); bsc [`0x09a028...f75bf7`](./contracts/bsc-56/0x09a028587705b49fa162671d2507567cfef75bf7/); sonic [`0x09a028...f75bf7`](./contracts/sonic-146/0x09a028587705b49fa162671d2507567cfef75bf7/) | ✅ Audited |
| TroveManager | governance | ethereum | 8 deployments: ethereum [`0x294672...ec4c05`](./contracts/ethereum-1/0x29467211ad35f97cea26ae11da0c427836ec4c05/); ethereum `0x5066dc...d36b97`; ethereum `0x8ed4f2...657938`; ethereum `0xa20c3d...800ff2`; bsc `0x8ed4f2...657938`; bsc `0xa20c3d...800ff2`; sonic `0x8ed4f2...657938`; sonic `0xa20c3d...800ff2` | ✅ Audited |
| TroveManagerGetters | governance | ethereum | 3 deployments: ethereum [`0x6e26de...d7b1b1`](./contracts/ethereum-1/0x6e26de999ff1a1c39f44ba642e3b2f0e0cd7b1b1/); bsc [`0x6e26de...d7b1b1`](./contracts/bsc-56/0x6e26de999ff1a1c39f44ba642e3b2f0e0cd7b1b1/); sonic [`0x6e26de...d7b1b1`](./contracts/sonic-146/0x6e26de999ff1a1c39f44ba642e3b2f0e0cd7b1b1/) | ✅ Audited |

### ⚠️ Verified + Unaudited (15)

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| Bfbtc | unknown | bsc | 5 deployments: ethereum `0x623f27...79d9df`; ethereum `0xcdfb58...c7fb15`; bsc [`0x128eb2...d55f1b`](./contracts/bsc-56/0x128eb2baca6ac5416bed268d41c202fc41d55f1b/); bsc `0x623f27...79d9df`; bsc `0x9b974f...1c54dd` | ⚠️ Unaudited |
| BimaBurner | unknown | bsc | 3 deployments: ethereum `0xf0de02...8c92c1`; bsc [`0x93ee18...f80f09`](./contracts/bsc-56/0x93ee18e6d372a2c9bf8c876932e39c4126f80f09/); sonic [`0x93ee18...f80f09`](./contracts/sonic-146/0x93ee18e6d372a2c9bf8c876932e39c4126f80f09/) | ⚠️ Unaudited |
| BimaPSM | unknown | ethereum | 4 deployments: ethereum [`0x42ad68...523d67`](./contracts/ethereum-1/0x42ad6834a6599a0b7a7812f01f8092b580523d67/); ethereum `0x705fd2...4792d4`; ethereum `0x97bb31...6009e9`; ethereum `0xea811c...a888fe` | ⚠️ Unaudited |
| BimaToken | token | ethereum | 2 deployments: ethereum [`0x49ce2e...faef15`](./contracts/ethereum-1/0x49ce2eabdeaf65864a9d6542b2de9d384dfaef15/); bsc [`0x49ce2e...faef15`](./contracts/bsc-56/0x49ce2eabdeaf65864a9d6542b2de9d384dfaef15/) | ⚠️ Unaudited |
| BimaWrappedCollateral | unknown | ethereum | 3 deployments: ethereum [`0x59063f...2018e1`](./contracts/ethereum-1/0x59063fbe70d3b0f9312e5c89acdc476f5d2018e1/); ethereum `0x856db2...232ce0`; ethereum `0xdc0cca...655197` | ⚠️ Unaudited |
| BimaWrappedCollateralFactory | registry | ethereum | 3 deployments: ethereum [`0x76de9b...129dbf`](./contracts/ethereum-1/0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf/); bsc [`0x76de9b...129dbf`](./contracts/bsc-56/0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf/); sonic [`0x76de9b...129dbf`](./contracts/sonic-146/0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf/) | ⚠️ Unaudited |
| BitFiStablecoinManager | governance | ethereum | [`0xb69865...d21f06`](./contracts/ethereum-1/0xb69865f8fa4bfc67ab4ad233e36ac593a5d21f06/) | ⚠️ Unaudited |
| BitFiStablecoinZap | adapter | ethereum | [`0x140b55...4b66cb`](./contracts/ethereum-1/0x140b5517df7e33878eb0a494d6882cfac54b66cb/) | ⚠️ Unaudited |
| EnzoBTC | unknown | ethereum | [`0x6a9a65...fbce4a`](./contracts/ethereum-1/0x6a9a65b84843f5fd4ac9a0471c4fc11afffbce4a/) | ⚠️ Unaudited |
| LBTC | unknown | sonic | [`0xecac9c...5c11c1`](./contracts/sonic-146/0xecac9c5f704e954931349da37f60e39f515c11c1/) | ⚠️ Unaudited |
| ProxyMock | unknown | ethereum | [`0xecac9c...5c11c1`](./contracts/ethereum-1/0xecac9c5f704e954931349da37f60e39f515c11c1/) | ⚠️ Unaudited |
| StakedBitFiStablecoin | token | ethereum | 2 deployments: ethereum [`0x688745...a871c5`](./contracts/ethereum-1/0x688745d56f93924dbda1c2caa613adcbcea871c5/); ethereum `0xd32224...951734` | ⚠️ Unaudited |
| StakedUsbd | token | ethereum | 8 deployments: ethereum [`0x15ba04...1d1eef`](./contracts/ethereum-1/0x15ba049b9481e8c30531f736b58609b8aa1d1eef/); ethereum `0x190909...4b7504`; ethereum `0x424147...fd71ae`; ethereum `0x7d0ae6...421522`; ethereum `0xb4b22a...a6a3d0`; ethereum `0xbf095f...79d6df`; ethereum `0xcbc829...fe023d`; ethereum `0xda44aa...06f92a` | ⚠️ Unaudited |
| StakedUsbdOftAdapter | adapter | ethereum | 8 deployments: ethereum [`0x450bd4...e0b42f`](./contracts/ethereum-1/0x450bd4e955ee33ff42bf9dff84dbbb301ce0b42f/); ethereum `0x64a5ec...035b2a`; ethereum `0x6e75ce...008e49`; ethereum `0x9e5017...9264a3`; ethereum `0xb76847...5a7f9d`; ethereum `0xc302c5...36c13b`; ethereum `0xc49914...0c8170`; ethereum `0xf9d835...52db57` | ⚠️ Unaudited |
| StakingModule | unknown | ethereum | 8 deployments: ethereum [`0x048408...07705f`](./contracts/ethereum-1/0x048408944dc91720fda3a3059540227bd707705f/); ethereum `0x59961e...d9959c`; ethereum `0x71e7c8...fc4621`; ethereum `0xbf35d5...8ef409`; ethereum `0xc0e4ea...3112fb`; ethereum `0xda1cc5...eb0755`; ethereum `0xf4f2c2...db3bcf`; ethereum `0xfbbe9c...1cb468` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| BorrowerOperations | core_logic | ethereum | 3 deployments: ethereum [`0x87fed3...cdfaec`](./contracts/ethereum-1/0x87fed36c032ee7289a1d2f3c48798e4c7fcdfaec/); bsc [`0x87fed3...cdfaec`](./contracts/bsc-56/0x87fed36c032ee7289a1d2f3c48798e4c7fcdfaec/); sonic [`0x87fed3...cdfaec`](./contracts/sonic-146/0x87fed36c032ee7289a1d2f3c48798e4c7fcdfaec/) | ✅ Audited (bytecode match) |
| MultiCollateralHintHelpers | periphery | ethereum | 3 deployments: ethereum [`0x6a6298...3dd490`](./contracts/ethereum-1/0x6a62989d451c4f359a30bfcece51da8a313dd490/); bsc [`0x6a6298...3dd490`](./contracts/bsc-56/0x6a62989d451c4f359a30bfcece51da8a313dd490/); sonic [`0x6a6298...3dd490`](./contracts/sonic-146/0x6a62989d451c4f359a30bfcece51da8a313dd490/) | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (6)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployments | Audit Status |
|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | `0x128eb2...d55f1b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x3bbd33...458a92` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x536394...c78395` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | `0x5f339e...a7ff47` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x49ce2e...faef15` | ❓ Unverified |
| UnnamedContract | unknown | sonic | `0x6bede1...fdb68c` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2024-09-27-cyfrin-bima-v2.0.pdf](https://github.com/Bima-Labs/bima-core-audits/blob/main/aduits/2024-09-27-cyfrin-bima-v2.0.pdf) | Cyfrin | Audit | 2024-09 | aging | Direct | contract_name | 42 | high |
| [20241023-Bima-Final-Audit-Report.pdf](https://github.com/Bima-Labs/bima-core-audits/blob/main/aduits/20241023-Bima-Final-Audit-Report.pdf) | Unknown | Audit | 2024-09 | aging | Direct | contract_name | 35 | high |
| [cantina_competition_bima_december2024.pdf](https://github.com/Bima-Labs/bima-core-audits/blob/main/aduits/cantina_competition_bima_december2024.pdf) | Spearbit | Audit | 2025-06 | aging | Direct | contract_name | 32 | medium |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x128eb2...d55f1b`](./contracts/bsc-56/0x128eb2baca6ac5416bed268d41c202fc41d55f1b/) | Bfbtc | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x93ee18...f80f09`](./contracts/bsc-56/0x93ee18e6d372a2c9bf8c876932e39c4126f80f09/) | BimaBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x42ad68...523d67`](./contracts/ethereum-1/0x42ad6834a6599a0b7a7812f01f8092b580523d67/) | BimaPSM | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x59063f...2018e1`](./contracts/ethereum-1/0x59063fbe70d3b0f9312e5c89acdc476f5d2018e1/) | BimaWrappedCollateral | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x76de9b...129dbf`](./contracts/ethereum-1/0x76de9b5df6dcaa70f88e4e0949e17367c4129dbf/) | BimaWrappedCollateralFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xb69865...d21f06`](./contracts/ethereum-1/0xb69865f8fa4bfc67ab4ad233e36ac593a5d21f06/) | BitFiStablecoinManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x140b55...4b66cb`](./contracts/ethereum-1/0x140b5517df7e33878eb0a494d6882cfac54b66cb/) | BitFiStablecoinZap | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x688745...a871c5`](./contracts/ethereum-1/0x688745d56f93924dbda1c2caa613adcbcea871c5/) | StakedBitFiStablecoin | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x15ba04...1d1eef`](./contracts/ethereum-1/0x15ba049b9481e8c30531f736b58609b8aa1d1eef/) | StakedUsbd | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x450bd4...e0b42f`](./contracts/ethereum-1/0x450bd4e955ee33ff42bf9dff84dbbb301ce0b42f/) | StakedUsbdOftAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x048408...07705f`](./contracts/ethereum-1/0x048408944dc91720fda3a3059540227bd707705f/) | StakingModule | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 29 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 8 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2, medium=1
- Match method counts: extraction_exact=109

Fork inheritance lineage and inherited audits are included when available.
