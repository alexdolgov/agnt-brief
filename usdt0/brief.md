# Agentic Audit Brief: USDT0

## Project Overview

- Project: USDT0 (`usdt0`)
- Website: [https://usdt0.to](https://usdt0.to)
- Lifecycle: active (Tier 0, 52.8% below peak)
- Generated: 2026-06-21T20:18:44.315Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, berachain, bsc, celo, ethereum, hyperliquid, ink, mantle, optimism, plasma, polygon, sei, unichain
- Contract surface: 59 unique implementations (98 raw deployments)
- DeFi Llama TVL: $3,612,313,979.95
- On-chain TVL (included contracts): $34,751,733.33
- TVL by chain: Ethereum $14,689,816.06 | Polygon $9,774,259.96 | Arbitrum $5,882,593.72 | Celo $4,405,063.25 | Hyperliquid $0.33

## Project Description

USDT0 is a cross-chain bridge protocol that enables the transfer of USDT0 stablecoins across multiple blockchains using LayerZero's Omnichain Fungible Token (OFT) standard. It provides wrapped or bridged representations of USDT0 on various chains, with adapter contracts handling chain-specific logic and extensions for networks like Hyperliquid.

### Architecture

The USDT0 Core family defines the token and bridging logic, which is then deployed across multiple chains via the Chain-Specific Deployments family using standardized adapter and proxy contracts. Governance and Operations contracts (Safe multisigs) control upgrades and parameters across all deployments, sharing the same proxy admin patterns.

## Contract Surface Quality

- Indexed contracts: 281; live-surface contracts included: 98 (89 live, 9 unknown).
- Excluded by liveness: 98 inactive, 85 singleton, 0 uninitialized.
- Deployment units: 25/63 live.
- Detected codebases: none
- Dependencies extracted: 8; unverified dependencies: 0.

## Audit Coverage Summary

- Verified implementations audited: 23/46 (50.0%)
- Verified + Unaudited implementations: 23
- Verified by bytecode match: 1
- Unverified implementations: 13
- Unique implementations: 59
- Raw deployments: 98
- Audits discovered: 20
- Scoreable audits (matched contracts): 10
- ASD (verified + unaudited TVL): $9,774,260.30
- Latest audit: 2025-09 (fresh)
- Staleness: 2 fresh, 16 aging, 1 stale, 1 unknown
- Tier 1 coverage: 41.3% (ChainSecurity, OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 17 | 37.0% | 2025-03 |
| OpenZeppelin | Tier 1 | 16 | 34.8% | 2025-09 |
| Paladin | Tier 2 | 14 | 30.4% | 2025-01 |
| Guardian | Tier 2 | 12 | 26.1% | 2025-01 |
| TonTech | Tier 2 | 4 | 8.7% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (22)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UsdtOFT | token | ethereum | n/a | 5 deployments: ethereum [`0x1f748c...15dfb0`](./contracts/ethereum-1/0x1f748c76de468e9d11bd340fa9d5cbadf315dfb0/); ethereum `0x811ed7...b0d5c0`; arbitrum `0x77652d...919b92`; celo `0x811ed7...b0d5c0`; celo `0xf10e16...2db243` | ✅ Audited |
| ArbitrumExtensionV2 | adapter | arbitrum | unit-43927 | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ✅ Audited |
| ERC20Mock | token | ethereum | n/a | [`0xf1815b...045d14`](./contracts/ethereum-1/0xf1815bd50389c46847f0bda824ec8da914045d14/) | ✅ Audited |
| MultiHopComposer | unknown | arbitrum | n/a | [`0x759ba4...4a2ad1`](./contracts/arbitrum-42161/0x759ba420bf1ded1765f18c2dc3fc57a1964a2ad1/) | ✅ Audited |
| OAdapterUpgradeable | adapter | ethereum | unit-43876 | [`0x6c96de...a41dee`](./contracts/ethereum-1/0x6c96de32cea08842dcc4058c14d3aaad7fa41dee/) | ✅ Audited |
| OAdapterUpgradeable | adapter | ethereum | unit-43881 | [`0xb9c232...fd696c`](./contracts/ethereum-1/0xb9c2321bb7d0db468f570d10a424d1cc8efd696c/) | ✅ Audited |
| OFTMock | unknown | ethereum | n/a | [`0xbc7f24...c14b84`](./contracts/ethereum-1/0xbc7f244e2b38657bd014a5f6f4e4ba1125c14b84/) | ✅ Audited |
| OUpgradeable | proxy | optimism | unit-43885 | [`0xf03b4d...51a0ad`](./contracts/optimism-10/0xf03b4d9ac1d5d1e7c4cef54c2a313b9fe051a0ad/) | ✅ Audited |
| OUpgradeable | proxy | unichain | unit-43892 | [`0xc07be8...f03ec3`](./contracts/unichain-130/0xc07be8994d035631c36fb4a89c918cefb2f03ec3/) | ✅ Audited |
| OUpgradeable | proxy | polygon | unit-43897 | [`0x5421cf...49e352`](./contracts/polygon-137/0x5421cf4288d8007d3c43ac4246eafce5b049e352/) | ✅ Audited |
| OUpgradeable | proxy | polygon | unit-43898 | [`0x6ba103...829e13`](./contracts/polygon-137/0x6ba10300f0dc58b7a1e4c0e41f5dabb7d7829e13/) | ✅ Audited |
| OUpgradeable | proxy | hyperliquid | unit-43906 | [`0x4e41cf...151daf`](./contracts/hyperliquid-999/0x4e41cfc3f3b19e29e323d2c36f8f202a1e151daf/) | ✅ Audited |
| OUpgradeable | proxy | hyperliquid | unit-43907 | [`0x904861...237e98`](./contracts/hyperliquid-999/0x904861a24f30ec96ea7cfc3be9ea4b476d237e98/) | ✅ Audited |
| OUpgradeable | proxy | sei | unit-43913 | [`0x56fe74...85cc60`](./contracts/sei-1329/0x56fe74a2e3b484b921c447357203431a3485cc60/) | ✅ Audited |
| OUpgradeable | proxy | plasma | unit-43918 | [`0x02ca37...6a7cf9`](./contracts/plasma-9745/0x02ca37966753bdddf11216b73b16c1de756a7cf9/) | ✅ Audited |
| OUpgradeable | proxy | arbitrum | unit-43923 | [`0x14e4a1...298d92`](./contracts/arbitrum-42161/0x14e4a1b13bf7f943c8ff7c51fb60fa964a298d92/) | ✅ Audited |
| OUpgradeable | proxy | arbitrum | unit-43926 | [`0xf40542...b6df39`](./contracts/arbitrum-42161/0xf40542a7b66ad7c68c459ee3679635d2fdb6df39/) | ✅ Audited |
| OUpgradeable | proxy | berachain | unit-43931 | [`0x3dc963...0379cb`](./contracts/berachain-80094/0x3dc96399109df5ceb2c226664a086140bd0379cb/) | ✅ Audited |
| TetherToken | token | ethereum | unit-43875 | [`0x687496...782f38`](./contracts/ethereum-1/0x68749665ff8d2d112fa859aa293f07a622782f38/) | ✅ Audited |
| TetherTokenOFTExtension | adapter | unichain | n/a | 2 deployments: bsc `0x1ec7df...9ab6a3`; unichain [`0x01bff4...bc1071`](./contracts/unichain-130/0x01bff41798a0bcf287b996046ca68b395dbc1071/) | ✅ Audited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | [`0x779ded...713736`](./contracts/bsc-56/0x779ded0c9e1022225f8e0630b35a9b54be713736/) | ✅ Audited |
| UChildUSDT0 | token | polygon | unit-43903 | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (23)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChildERC20 | token | polygon | n/a | 4 deployments: polygon [`0x53e0bc...abad39`](./contracts/polygon-137/0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39/); polygon `0x556f50...aa9e6d`; polygon `0x578360...11ed5f`; polygon `0x71b821...085978` | ⚠️ Unaudited |
| UChildERC20Proxy | token | polygon | n/a | 2 deployments: polygon [`0x313d00...5bd604`](./contracts/polygon-137/0x313d009888329c9d1cf4f75ca3f32566335bd604/); polygon `0x5a2fdf...908d19` | ⚠️ Unaudited |
| EQBOFT | token | hyperliquid | n/a | 3 deployments: hyperliquid [`0x3ce842...ad4e50`](./contracts/hyperliquid-999/0x3ce8426dc0b90a36f0e20d7c2acaaf4578ad4e50/); hyperliquid `0x73e247...4cac8c`; hyperliquid `0xb4484a...2cefd1` | ⚠️ Unaudited |
| ChildChainManager | governance | polygon | unit-43901 | [`0xa6fa4f...d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ⚠️ Unaudited |
| ChildERC1155 | token | polygon | n/a | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | berachain | unit-43932 | [`0x425d1d...beeb58`](./contracts/berachain-80094/0x425d1d17c33bdc0615ea18d1b18cca7e14beeb58/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | sei | n/a | [`0x4dff9b...600bf8`](./contracts/sei-1329/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| HyperLiquidComposer_V1 | unknown | hyperliquid | n/a | 15 deployments: hyperliquid [`0x11ae59...e13083`](./contracts/hyperliquid-999/0x11ae59271ece49223126e089100ed74c1ae13083/); hyperliquid `0x19d317...0cabc2`; hyperliquid `0x2a661a...90dd93`; hyperliquid `0x37f027...0594df`; hyperliquid `0x408380...32bfd5`; hyperliquid `0x5bddd9...2dc486`; hyperliquid `0x5bfee5...6dc280`; hyperliquid `0x62855e...b82b58`; hyperliquid `0x689f01...dc1802`; hyperliquid `0xc1c74b...8d4ffe`; hyperliquid `0xd9b7a2...3e04a6`; hyperliquid `0xe5aa9a...99d921`; hyperliquid `0xfa5c61...c5e756`; hyperliquid `0xfa616f...fa8aae`; hyperliquid `0xfb6761...f873d8` | ⚠️ Unaudited |
| HyperLiquidComposer_V1_FeeToken | token | hyperliquid | n/a | 4 deployments: hyperliquid [`0x7a3220...eb05a0`](./contracts/hyperliquid-999/0x7a32202edec16a34e9996f2064acc39a90eb05a0/); hyperliquid `0x80123a...2e7585`; hyperliquid `0xa18199...4a62eb`; hyperliquid `0xb120da...a8123a` | ⚠️ Unaudited |
| MaticWETH | token | polygon | n/a | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| OmniCounter | unknown | ethereum | n/a | [`0xe87fb1...432f94`](./contracts/ethereum-1/0xe87fb1e8e0deb5f5ac388965d202002cb7432f94/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-43873 | [`0x4dff9b...600bf8`](./contracts/ethereum-1/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| SafeL2 | unknown | optimism | unit-43884 | [`0x4dff9b...600bf8`](./contracts/optimism-10/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| SafeL2 | unknown | unichain | unit-43889 | [`0x4dff9b...600bf8`](./contracts/unichain-130/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| SafeL2 | unknown | polygon | unit-43896 | [`0x4dff9b...600bf8`](./contracts/polygon-137/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| SafeL2 | unknown | mantle | unit-43915 | [`0x4dff9b...600bf8`](./contracts/mantle-5000/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| SafeL2 | unknown | plasma | unit-43920 | [`0x4dff9b...600bf8`](./contracts/plasma-9745/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| SafeL2 | unknown | arbitrum | unit-43925 | [`0x4dff9b...600bf8`](./contracts/arbitrum-42161/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| SafeProxy | unknown | hyperliquid | n/a | [`0xb64a89...7fc541`](./contracts/hyperliquid-999/0xb64a89ad247a2d691a728bb6822a85eedd7fc541/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x422432...804046`](./contracts/polygon-137/0x42243231fb4a64a5bcfc7f4b7a9ad92576804046/) | ⚠️ Unaudited |
| USDCOFTAdapter | adapter | ethereum | n/a | [`0x67480c...df647f`](./contracts/ethereum-1/0x67480c30ff8cc128cf0250e25616857302df647f/) | ⚠️ Unaudited |
| WOFTAdapterFactory | adapter | ethereum | n/a | [`0x69bfc7...a74d9f`](./contracts/ethereum-1/0x69bfc7b0deb166aa4341a2c7437956b13ea74d9f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyAdmin | governance | bsc | n/a | 12 deployments: ethereum `0x8ad82b...0778d4`; ethereum `0x943ed4...1ca66e`; bsc [`0x01bff4...bc1071`](./contracts/bsc-56/0x01bff41798a0bcf287b996046ca68b395dbc1071/); bsc `0xedaba0...ccb027`; bsc `0xf555a1...db34b9`; unichain `0x818861...73c97a`; mantle [`0x01bff4...bc1071`](./contracts/mantle-5000/0x01bff41798a0bcf287b996046ca68b395dbc1071/); mantle `0xf555a1...db34b9`; plasma `0x322483...773772`; plasma `0x5be536...47d8b2`; plasma `0x779ded...713736`; berachain `0xdfb6f2...718f79` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (13)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x7916ac...fb8675` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1438c...05b024` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1bc8b...5ace0c` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x593a21...fc905b` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x20c000...01eb73` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x779ded...713736` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xbb95da...55e8e0` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xedaba0...ccb027` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x0200c2...8470c1` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0x1cb6de...434a65` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xa1be15...a0dab2` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xc95de5...a5dae2` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | `0xf50258...b50dac` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025-01-14_USDT0.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Guardian/2025-01-14_USDT0.pdf) | Guardian | Audit | 2025-01 | aging | Direct | contract_name | 13 | high |
| [ChainSecurity_USDT0_audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/ChainSecurity/ChainSecurity_USDT0_audit.pdf) | ChainSecurity | Audit | 2024-01 | stale | Direct | contract_name | 13 | high |
| [20250110_Paladin_Everdawn_Final_Report.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Paladin/20250110_Paladin_Everdawn_Final_Report.pdf) | Paladin | Audit | 2025-01 | aging | Direct | contract_name | 14 | high |
| [ChainSecurity_USDT0_Arbitrum_v2_audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/ChainSecurity/ChainSecurity_USDT0_Arbitrum_v2_audit.pdf) | ChainSecurity | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [ChainSecurity_USDT0_Flare_audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/ChainSecurity/ChainSecurity_USDT0_Flare_audit.pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | contract_name | 18 | high |
| [ChainSecurity_USDT0_HyperLiquid_and_Stable_audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/ChainSecurity/ChainSecurity_USDT0_HyperLiquid_and_Stable_audit.pdf) | ChainSecurity | Audit | 2025-02 | aging | Direct | contract_name | 0 | n/a |
| [ChainSecurity_USDT0_Ink_audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/ChainSecurity/ChainSecurity_USDT0_Ink_audit.pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | contract_name | 18 | high |
| [Everdawn Deployment Assessment.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Openzeppelin/Everdawn%20Deployment%20Assessment.pdf) | OpenZeppelin | Audit | 2025-09 | fresh | Direct | contract_name | 24 | high |
| [Everdawn USDT0 ERC-7802 Upgrade Audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Openzeppelin/Everdawn%20USDT0%20ERC-7802%20Upgrade%20Audit.pdf) | OpenZeppelin | Audit | 2025-03 | aging | Direct | contract_name | 12 | high |
| [OneSig Audit 2.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Openzeppelin/OneSig%20Audit%202.pdf) | OpenZeppelin | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [OneSig Audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Openzeppelin/OneSig%20Audit.pdf) | OpenZeppelin | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [USDT0 Child Token Audit (1).pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Openzeppelin/USDT0%20Child%20Token%20Audit%20(1).pdf) | OpenZeppelin | Audit | 2025-05 | aging | Direct | contract_name | 1 | high |
| [USDT0 Transaction Helper Audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Openzeppelin/USDT0%20Transaction%20Helper%20Audit.pdf) | OpenZeppelin | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [USDT0_Audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Openzeppelin/USDT0_Audit.pdf) | OpenZeppelin | Audit | 2025-01 | aging | Direct | contract_name | 4 | high |
| [TON_OFT-Ottersec-23May2025.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/OtterSec/TON_OFT-Ottersec-23May2025.pdf) | OtterSec | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [lz_native_mesh_ton_evm_audit_final.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/OtterSec/lz_native_mesh_ton_evm_audit_final.pdf) | OtterSec | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [USDT0 Audit Report.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/TonTech/USDT0%20Audit%20Report.pdf) | TonTech | Audit | 2025-07 | fresh | Direct | contract_name | 8 | high |
| [Ethena_OFT-Zellic-16JAN2025.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Zellic/Ethena_OFT-Zellic-16JAN2025.pdf) | Zellic | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [TON_OFT-Zellic-19May2025.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Zellic/TON_OFT-Zellic-19May2025.pdf) | Zellic | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [usdt_native_mesh_1.1_upgrade_-_zellic_audit_report_draft-1.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Zellic/usdt_native_mesh_1.1_upgrade_-_zellic_audit_report_draft-1.pdf) | Zellic | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| hyperliquid | [`0x3ce842...ad4e50`](./contracts/hyperliquid-999/0x3ce8426dc0b90a36f0e20d7c2acaaf4578ad4e50/) | EQBOFT | token | $0.33 | Verified native implementation with $0.33 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x11ae59...e13083`](./contracts/hyperliquid-999/0x11ae59271ece49223126e089100ed74c1ae13083/) | HyperLiquidComposer_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7a3220...eb05a0`](./contracts/hyperliquid-999/0x7a32202edec16a34e9996f2064acc39a90eb05a0/) | HyperLiquidComposer_V1_FeeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xe87fb1...432f94`](./contracts/ethereum-1/0xe87fb1e8e0deb5f5ac388965d202002cb7432f94/) | OmniCounter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67480c...df647f`](./contracts/ethereum-1/0x67480c30ff8cc128cf0250e25616857302df647f/) | USDCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69bfc7...a74d9f`](./contracts/ethereum-1/0x69bfc7b0deb166aa4341a2c7437956b13ea74d9f/) | WOFTAdapterFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 15 |
| upstream | 6 |
| standard_library | 27 |
| needs_review | 11 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 10
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=10
- Match method counts: extraction_exact=458

Zero-match audit list:

- [14072] ChainSecurity_USDT0_Arbitrum_v2_audit.pdf
- [14074] ChainSecurity_USDT0_HyperLiquid_and_Stable_audit.pdf
- [14078] OneSig Audit 2.pdf
- [14079] OneSig Audit.pdf
- [14081] USDT0 Transaction Helper Audit.pdf
- [14083] TON_OFT-Ottersec-23May2025.pdf
- [14084] lz_native_mesh_ton_evm_audit_final.pdf
- [14086] Ethena_OFT-Zellic-16JAN2025.pdf
- [14087] TON_OFT-Zellic-19May2025.pdf
- [14088] usdt_native_mesh_1.1_upgrade_-_zellic_audit_report_draft-1.pdf

Fork inheritance lineage and inherited audits are included when available.
