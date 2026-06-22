# Agentic Audit Brief: Avalon Labs

## Project Overview

- Project: Avalon Labs (`avalon-labs`)
- Website: [https://www.avalonfinance.xyz](https://www.avalonfinance.xyz)
- Lifecycle: active (Tier 0, 77.3% below peak)
- Generated: 2026-06-21T19:51:09.210Z
- Pipeline run: v2-pipeline-2026-06-21-727228-48f6
- Chains: arbitrum, base, berachain, bsc, ethereum, klaytn, mantle, merlin, mode, scroll, sonic
- Contract surface: 74 unique implementations (86 raw deployments)
- DeFi Llama TVL: $550,829,749.00
- On-chain TVL (included contracts): $1,990,093.28
- TVL by chain: Bsc $1,990,093.28

## Project Description

Avalon Labs is a multi-chain DeFi protocol offering lending, borrowing, yield generation, and a Bitcoin-backed stablecoin (USDa). It combines CeDeFi yield strategies, an Aave-based lending market, and a CDP mechanism for minting USDa against BTC collateral.

### Architecture

Avalon Finance provides the core lending infrastructure, which is reused by USDaLend for USDa-specific markets. USDa mints against locked FBTC and can be supplied into Avalon Finance or USDaLend for yield, while CeDeFi and Superearn offer managed yield strategies that may interact with these lending pools.

## Contract Surface Quality

- Indexed contracts: 1576; live-surface contracts included: 86 (63 live, 23 unknown).
- Excluded by liveness: 1430 inactive, 60 singleton, 0 uninitialized.
- Deployment units: 1/35 live.
- Detected codebases: aave-v2
- Unverified dependencies: 7/59.

## Audit Coverage Summary

- Verified implementations audited: 3/13 (23.1%)
- Verified + Unaudited implementations: 10
- Verified by bytecode match: 1
- Unverified implementations: 61
- Unique implementations: 74
- Raw deployments: 86
- Audits discovered: 19
- Scoreable audits (matched contracts): 5
- ASD (verified + unaudited TVL): $1,990,093.28
- Latest audit: 2024-10 (aging)
- Staleness: 0 fresh, 6 aging, 2 stale, 11 unknown
- Tier 1 coverage: 15.4% (SlowMist)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| BlockSec | Tier 2 | 3 | 23.1% | 2024-10 |
| SlowMist | Tier 1 | 2 | 15.4% | 2024-10 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| SavingAccount | core_logic | ethereum | n/a | [`0x01e3cc...5ddfa6`](./contracts/ethereum-1/0x01e3cc8e17755989ad2cafe78a822354eb5ddfa6/) | ✅ Audited |
| sUSDa | unknown | ethereum | n/a | 3 deployments: ethereum [`0x2b66aa...d43bd9`](./contracts/ethereum-1/0x2b66aade1e9c062ff411bd47c44e0ad696d43bd9/); bsc `0x73a325...f82b03`; mantle `0x5a61b1...66bc6e` | ✅ Audited |

### ⚠️ Verified + Unaudited (10)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| StakedUSDX | token | bsc | n/a | [`0x7788a3...d87d92`](./contracts/bsc-56/0x7788a3538c5fc7f9c7c8a74eac4c898fc8d87d92/) | ⚠️ Unaudited |
| ACLManager | governance | bsc | n/a | 3 deployments: bsc [`0xae5d15...c88537`](./contracts/bsc-56/0xae5d156cecb47b7082e404fcb36cccee92c88537/); bsc `0xdc041a...b5049e`; base `0xb96166...21d928` | ⚠️ Unaudited |
| AVLStaking | token | bsc | n/a | 2 deployments: ethereum `0x2c9b3d...7a1680`; bsc [`0x1c961a...69ec3b`](./contracts/bsc-56/0x1c961a18882661dc2aea540108a1165dfa69ec3b/) | ⚠️ Unaudited |
| ERC1967Proxy | proxy | bsc | n/a | [`0x2aa51a...9a8247`](./contracts/bsc-56/0x2aa51a1d4a549cf2fff0159f9d041cb50a9a8247/) | ⚠️ Unaudited |
| Safe | unknown | ethereum | unit-43844 | [`0x5a7931...c6757e`](./contracts/ethereum-1/0x5a79311083dc82abc2de1e5639673c876cc6757e/) | ⚠️ Unaudited |
| sAVL | unknown | bsc | n/a | 2 deployments: ethereum `0xdb8d77...b33b50`; bsc [`0x5e2a06...c0d300`](./contracts/bsc-56/0x5e2a06121b2cc7e5ac30bb2d5a128bfbb0c0d300/) | ⚠️ Unaudited |
| USDX | unknown | bsc | n/a | [`0xf3527e...a66cef`](./contracts/bsc-56/0xf3527ef8de265eaa3716fb312c12847bfba66cef/) | ⚠️ Unaudited |
| USDXRedeem | unknown | bsc | n/a | [`0x0eaf6f...d82f7b`](./contracts/bsc-56/0x0eaf6fe1aed8631114d1de78317982ce73d82f7b/) | ⚠️ Unaudited |
| USDXSales | unknown | bsc | n/a | [`0xb45c42...0a56d1`](./contracts/bsc-56/0xb45c42fbf8af8df5a1fa080a351e9b2f8e0a56d1/) | ⚠️ Unaudited |
| WrappedTokenGatewayV3 | token | arbitrum | n/a | 3 deployments: bsc `0xebfd8d...5fe687`; sonic `0xee4cfd...284a17`; arbitrum [`0xb2a64a...dd4928`](./contracts/arbitrum-42161/0xb2a64a0640bd22277de5bec18f23164ee5dd4928/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| USDa | unknown | mantle | n/a | 5 deployments: ethereum `0x8a60e4...17d9c2`; bsc `0x935608...699894`; sonic `0xff1247...fe9acc`; mantle [`0x075df6...06e326`](./contracts/mantle-5000/0x075df695b8e7f4361fa7f8c1426c63f11b06e326/); berachain `0xff1247...fe9acc` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (61)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| LockedFBTC | unknown | sonic | unit-43858 | `0x040c10...8b2ba5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0dbd62...cae4ea` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0fbb0e...17275e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2093f1...8c2eb8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x631da0...79cfd9` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf0ba8...0587b8` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcc5f87...0fa74c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf5cce1...834e8d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x06b162...8c13f7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x10392e...1ce382` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x1683f5...79b337` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x20a2be...c1a321` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2a85e8...51415a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x2f1ea9...09f9aa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x354b8d...e31e23` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e3e76...52e073` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x523c66...e57e5e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x5ad428...5e7ab5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6ce969...3055b7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6cf44d...2c2a1d` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x6f8c5f...bd3713` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x722175...0d24fa` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x76ff29...ebc6ff` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x923ae0...16bbb7` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x954522...da4420` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x95ffbd...3e38c4` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x986a4b...7b2039` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xc5ebe2...313497` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd192fb...a35946` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd55074...0597cb` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe02825...805c67` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe6d86f...dd137f` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xe8d7bd...bd5c4e` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xeb2c84...9ec779` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xee76f7...e1ee45` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf0e056...f470b5` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf36c62...9826c2` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xfdcd3a...f6f474` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0x002481...df0a5e` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0x5f314b...9536ca` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0x623700...c4dda6` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0x6ab5d5...219796` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0x883cb2...405682` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0x898d0e...e4b234` | ❓ Unverified |
| UnnamedContract | unknown | merlin | n/a | `0x91b212...dfc070` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x100ac2...debc88` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x276c51...c486ea` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x2c4aeb...bd1966` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x43248d...2d81ec` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x4353b7...fe6d3b` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x45f842...78dbef` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x56552f...afc519` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0x585e26...fae9b2` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xa34f1a...1fa20f` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xba8870...9a5e4a` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xdc3cf1...6a4ff6` | ❓ Unverified |
| UnnamedContract | unknown | klaytn | n/a | `0xddd3d4...daa076` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x100ac2...debc88` | ❓ Unverified |
| UnnamedContract | unknown | mode | n/a | `0x28292e...3cb8cb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x2840f9...8b304f` | ❓ Unverified |
| UnnamedContract | unknown | scroll | n/a | `0xba7752...72533f` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [DL audit link](https://cert-api.salusec.io/api/v1/salus/contract/certificate/full/2024/Avalon-AVAF_audit_report_2024-06-11.pdf) | unknown | Audit | 2024-06 | stale | Direct | n/a | 0 | n/a |
| [DL audit link](https://cert-api.salusec.io/api/v1/salus/contract/certificate/full/2024/Avalon_Finance-ORACLE_audit_report_2024-04-09.pdf) | unknown | Audit | 2024-04 | stale | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://raw.githubusercontent.com/avalonfinancexyz/website-ts/bb035cea494cc098d4a26fe267d0b2aa2702406b/Terms%20and%20Conditions%20-%20Avalon%20Finance.docx.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [Rendered PDF capture](https://729569225-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FlcdCcIXgWo7dKoZEUxKp%2Fuploads%2F1R2vC6XKZq24RHJcoH5R%2FAvalon%20Labs%20MiCAR%20White%20Paper.pdf) | unknown | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [<table><thead><tr><th width="160">Auditing Firms</th><th width="126">Audit</th><th data-type="content-ref"></th></tr></thead><tbody><tr><td>Slowmist</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-slowmist">https://github.com/avalonfinancexyz/USDa-audit-slowmist</a></td></tr><tr><td>Slowmist</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-slowmist">https://github.com/avalonfinancexyz/AVL-audit-slowmist</a></td></tr><tr><td>BlockSec</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-blocksec">https://github.com/avalonfinancexyz/USDa-audit-blocksec</a></td></tr><tr><td>BlockSec</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-blocksec">https://github.com/avalonfinancexyz/AVL-audit-blocksec</a></td></tr><tr><td>Salus</td><td>USDa 1</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf</a></td></tr><tr><td>Salus</td><td>USDa 2</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf</a></td></tr><tr><td>Salus</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-salus">https://github.com/avalonfinancexyz/AVL-audit-salus</a></td></tr><tr><td>Salus</td><td>DeFi Lending</td><td><a href="">https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus</a></td></tr></tbody></table>](https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [<table><thead><tr><th width="160">Auditing Firms</th><th width="126">Audit</th><th data-type="content-ref"></th></tr></thead><tbody><tr><td>Slowmist</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-slowmist">https://github.com/avalonfinancexyz/USDa-audit-slowmist</a></td></tr><tr><td>Slowmist</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-slowmist">https://github.com/avalonfinancexyz/AVL-audit-slowmist</a></td></tr><tr><td>BlockSec</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-blocksec">https://github.com/avalonfinancexyz/USDa-audit-blocksec</a></td></tr><tr><td>BlockSec</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-blocksec">https://github.com/avalonfinancexyz/AVL-audit-blocksec</a></td></tr><tr><td>Salus</td><td>USDa 1</td><td><a href="">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf</a></td></tr><tr><td>Salus</td><td>USDa 2</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf</a></td></tr><tr><td>Salus</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-salus">https://github.com/avalonfinancexyz/AVL-audit-salus</a></td></tr><tr><td>Salus</td><td>DeFi Lending</td><td><a href="https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus">https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus</a></td></tr></tbody></table>](https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | contract_name | 4 | high |
| [<table><thead><tr><th width="160">Auditing Firms</th><th width="126">Audit</th><th data-type="content-ref"></th></tr></thead><tbody><tr><td>Slowmist</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-slowmist">https://github.com/avalonfinancexyz/USDa-audit-slowmist</a></td></tr><tr><td>Slowmist</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-slowmist">https://github.com/avalonfinancexyz/AVL-audit-slowmist</a></td></tr><tr><td>BlockSec</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-blocksec">https://github.com/avalonfinancexyz/USDa-audit-blocksec</a></td></tr><tr><td>BlockSec</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-blocksec">https://github.com/avalonfinancexyz/AVL-audit-blocksec</a></td></tr><tr><td>Salus</td><td>USDa 1</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf</a></td></tr><tr><td>Salus</td><td>USDa 2</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf</a></td></tr><tr><td>Salus</td><td>AVL</td><td><a href="">https://github.com/avalonfinancexyz/AVL-audit-salus</a></td></tr><tr><td>Salus</td><td>DeFi Lending</td><td><a href="https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus">https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus</a></td></tr></tbody></table>](https://github.com/avalonfinancexyz/AVL-audit-salus) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [<table><thead><tr><th width="160">Auditing Firms</th><th width="126">Audit</th><th data-type="content-ref"></th></tr></thead><tbody><tr><td>Slowmist</td><td>USDa</td><td><a href="">https://github.com/avalonfinancexyz/USDa-audit-slowmist</a></td></tr><tr><td>Slowmist</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-slowmist">https://github.com/avalonfinancexyz/AVL-audit-slowmist</a></td></tr><tr><td>BlockSec</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-blocksec">https://github.com/avalonfinancexyz/USDa-audit-blocksec</a></td></tr><tr><td>BlockSec</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-blocksec">https://github.com/avalonfinancexyz/AVL-audit-blocksec</a></td></tr><tr><td>Salus</td><td>USDa 1</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf</a></td></tr><tr><td>Salus</td><td>USDa 2</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf</a></td></tr><tr><td>Salus</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-salus">https://github.com/avalonfinancexyz/AVL-audit-salus</a></td></tr><tr><td>Salus</td><td>DeFi Lending</td><td><a href="https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus">https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus</a></td></tr></tbody></table>](https://github.com/avalonfinancexyz/USDa-audit-slowmist) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [<table><thead><tr><th width="160">Auditing Firms</th><th width="126">Audit</th><th data-type="content-ref"></th></tr></thead><tbody><tr><td>Slowmist</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-slowmist">https://github.com/avalonfinancexyz/USDa-audit-slowmist</a></td></tr><tr><td>Slowmist</td><td>AVL</td><td><a href="">https://github.com/avalonfinancexyz/AVL-audit-slowmist</a></td></tr><tr><td>BlockSec</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-blocksec">https://github.com/avalonfinancexyz/USDa-audit-blocksec</a></td></tr><tr><td>BlockSec</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-blocksec">https://github.com/avalonfinancexyz/AVL-audit-blocksec</a></td></tr><tr><td>Salus</td><td>USDa 1</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf</a></td></tr><tr><td>Salus</td><td>USDa 2</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf</a></td></tr><tr><td>Salus</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-salus">https://github.com/avalonfinancexyz/AVL-audit-salus</a></td></tr><tr><td>Salus</td><td>DeFi Lending</td><td><a href="https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus">https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus</a></td></tr></tbody></table>](https://github.com/avalonfinancexyz/AVL-audit-slowmist) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [USDaMinter](https://github.com/avalonfinancexyz/USDaMinter-audit-blocksec) | BlockSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [USDaConvert](https://github.com/avalonfinancexyz/USDaConvert-audit-slowmist) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [<table><thead><tr><th width="160">Auditing Firms</th><th width="126">Audit</th><th data-type="content-ref"></th></tr></thead><tbody><tr><td>Slowmist</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-slowmist">https://github.com/avalonfinancexyz/USDa-audit-slowmist</a></td></tr><tr><td>Slowmist</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-slowmist">https://github.com/avalonfinancexyz/AVL-audit-slowmist</a></td></tr><tr><td>BlockSec</td><td>USDa</td><td><a href="">https://github.com/avalonfinancexyz/USDa-audit-blocksec</a></td></tr><tr><td>BlockSec</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-blocksec">https://github.com/avalonfinancexyz/AVL-audit-blocksec</a></td></tr><tr><td>Salus</td><td>USDa 1</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf</a></td></tr><tr><td>Salus</td><td>USDa 2</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf</a></td></tr><tr><td>Salus</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-salus">https://github.com/avalonfinancexyz/AVL-audit-salus</a></td></tr><tr><td>Salus</td><td>DeFi Lending</td><td><a href="https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus">https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus</a></td></tr></tbody></table>](https://github.com/avalonfinancexyz/USDa-audit-blocksec) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [<table><thead><tr><th width="160">Auditing Firms</th><th width="126">Audit</th><th data-type="content-ref"></th></tr></thead><tbody><tr><td>Slowmist</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-slowmist">https://github.com/avalonfinancexyz/USDa-audit-slowmist</a></td></tr><tr><td>Slowmist</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-slowmist">https://github.com/avalonfinancexyz/AVL-audit-slowmist</a></td></tr><tr><td>BlockSec</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-blocksec">https://github.com/avalonfinancexyz/USDa-audit-blocksec</a></td></tr><tr><td>BlockSec</td><td>AVL</td><td><a href="">https://github.com/avalonfinancexyz/AVL-audit-blocksec</a></td></tr><tr><td>Salus</td><td>USDa 1</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf</a></td></tr><tr><td>Salus</td><td>USDa 2</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf</a></td></tr><tr><td>Salus</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-salus">https://github.com/avalonfinancexyz/AVL-audit-salus</a></td></tr><tr><td>Salus</td><td>DeFi Lending</td><td><a href="https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus">https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus</a></td></tr></tbody></table>](https://github.com/avalonfinancexyz/AVL-audit-blocksec) | SlowMist | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [USDaConvert](https://github.com/avalonfinancexyz/USDaConvert-audit-blocksec) | BlockSec | Audit | n/a | unknown | Direct | n/a | 0 | n/a |
| [<table><thead><tr><th width="160">Auditing Firms</th><th width="126">Audit</th><th data-type="content-ref"></th></tr></thead><tbody><tr><td>Slowmist</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-slowmist">https://github.com/avalonfinancexyz/USDa-audit-slowmist</a></td></tr><tr><td>Slowmist</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-slowmist">https://github.com/avalonfinancexyz/AVL-audit-slowmist</a></td></tr><tr><td>BlockSec</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-blocksec">https://github.com/avalonfinancexyz/USDa-audit-blocksec</a></td></tr><tr><td>BlockSec</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-blocksec">https://github.com/avalonfinancexyz/AVL-audit-blocksec</a></td></tr><tr><td>Salus</td><td>USDa 1</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf</a></td></tr><tr><td>Salus</td><td>USDa 2</td><td><a href="">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf</a></td></tr><tr><td>Salus</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-salus">https://github.com/avalonfinancexyz/AVL-audit-salus</a></td></tr><tr><td>Salus</td><td>DeFi Lending</td><td><a href="https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus">https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus</a></td></tr></tbody></table>](https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | contract_name | 0 | n/a |
| [Avalon Finance - SlowMist Audit Report.pdf](https://github.com/avalonfinancexyz/USDa-audit-slowmist/blob/main/Avalon%20Finance%20-%20SlowMist%20Audit%20Report.pdf) | SlowMist | Audit | 2024-10 | aging | Direct | contract_name | 5 | high |
| [blocksec_avalon_v1.0-signed.pdf](https://github.com/avalonfinancexyz/USDa-audit-blocksec/blob/main/blocksec_avalon_v1.0-signed.pdf) | BlockSec | Audit | 2024-10 | aging | Direct | contract_name | 4 | high |
| [blocksec_avalon_v1.1-signed.pdf](https://github.com/avalonfinancexyz/USDa-audit-blocksec/blob/main/blocksec_avalon_v1.1-signed.pdf) | BlockSec | Audit | 2024-10 | aging | Direct | contract_name | 8 | high |
| [blocksec_avalon_v1.3-signed.pdf](https://github.com/avalonfinancexyz/USDa-audit-blocksec/blob/main/blocksec_avalon_v1.3-signed.pdf) | BlockSec | Audit | 2024-10 | aging | Direct | contract_name | 8 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| bsc | [`0x7788a3...d87d92`](./contracts/bsc-56/0x7788a3538c5fc7f9c7c8a74eac4c898fc8d87d92/) | StakedUSDX | token | $1,990,093.28 | Verified native implementation with $1,990,093.28 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x1c961a...69ec3b`](./contracts/bsc-56/0x1c961a18882661dc2aea540108a1165dfa69ec3b/) | AVLStaking | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x5e2a06...c0d300`](./contracts/bsc-56/0x5e2a06121b2cc7e5ac30bb2d5a128bfbb0c0d300/) | sAVL | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xf3527e...a66cef`](./contracts/bsc-56/0xf3527ef8de265eaa3716fb312c12847bfba66cef/) | USDX | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x0eaf6f...d82f7b`](./contracts/bsc-56/0x0eaf6fe1aed8631114d1de78317982ce73d82f7b/) | USDXRedeem | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xb45c42...0a56d1`](./contracts/bsc-56/0xb45c42fbf8af8df5a1fa080a351e9b2f8e0a56d1/) | USDXSales | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 18 |
| upstream | 1 |
| standard_library | 2 |
| needs_review | 53 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=5
- Match method counts: extraction_exact=85

Zero-match audit list:

- [12714] DL audit link
- [12715] DL audit link
- [12716] Rendered PDF capture
- [12717] Rendered PDF capture
- [12718] <table><thead><tr><th width="160">Auditing Firms</th><th width="126">Audit</th><th data-type="content-ref"></th></tr></thead><tbody><tr><td>Slowmist</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-slowmist">https://github.com/avalonfinancexyz/USDa-audit-slowmist</a></td></tr><tr><td>Slowmist</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-slowmist">https://github.com/avalonfinancexyz/AVL-audit-slowmist</a></td></tr><tr><td>BlockSec</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-blocksec">https://github.com/avalonfinancexyz/USDa-audit-blocksec</a></td></tr><tr><td>BlockSec</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-blocksec">https://github.com/avalonfinancexyz/AVL-audit-blocksec</a></td></tr><tr><td>Salus</td><td>USDa 1</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf</a></td></tr><tr><td>Salus</td><td>USDa 2</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf</a></td></tr><tr><td>Salus</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-salus">https://github.com/avalonfinancexyz/AVL-audit-salus</a></td></tr><tr><td>Salus</td><td>DeFi Lending</td><td><a href="">https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus</a></td></tr></tbody></table>
- [12720] <table><thead><tr><th width="160">Auditing Firms</th><th width="126">Audit</th><th data-type="content-ref"></th></tr></thead><tbody><tr><td>Slowmist</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-slowmist">https://github.com/avalonfinancexyz/USDa-audit-slowmist</a></td></tr><tr><td>Slowmist</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-slowmist">https://github.com/avalonfinancexyz/AVL-audit-slowmist</a></td></tr><tr><td>BlockSec</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-blocksec">https://github.com/avalonfinancexyz/USDa-audit-blocksec</a></td></tr><tr><td>BlockSec</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-blocksec">https://github.com/avalonfinancexyz/AVL-audit-blocksec</a></td></tr><tr><td>Salus</td><td>USDa 1</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf</a></td></tr><tr><td>Salus</td><td>USDa 2</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf</a></td></tr><tr><td>Salus</td><td>AVL</td><td><a href="">https://github.com/avalonfinancexyz/AVL-audit-salus</a></td></tr><tr><td>Salus</td><td>DeFi Lending</td><td><a href="https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus">https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus</a></td></tr></tbody></table>
- [12721] <table><thead><tr><th width="160">Auditing Firms</th><th width="126">Audit</th><th data-type="content-ref"></th></tr></thead><tbody><tr><td>Slowmist</td><td>USDa</td><td><a href="">https://github.com/avalonfinancexyz/USDa-audit-slowmist</a></td></tr><tr><td>Slowmist</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-slowmist">https://github.com/avalonfinancexyz/AVL-audit-slowmist</a></td></tr><tr><td>BlockSec</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-blocksec">https://github.com/avalonfinancexyz/USDa-audit-blocksec</a></td></tr><tr><td>BlockSec</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-blocksec">https://github.com/avalonfinancexyz/AVL-audit-blocksec</a></td></tr><tr><td>Salus</td><td>USDa 1</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf</a></td></tr><tr><td>Salus</td><td>USDa 2</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf</a></td></tr><tr><td>Salus</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-salus">https://github.com/avalonfinancexyz/AVL-audit-salus</a></td></tr><tr><td>Salus</td><td>DeFi Lending</td><td><a href="https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus">https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus</a></td></tr></tbody></table>
- [12722] <table><thead><tr><th width="160">Auditing Firms</th><th width="126">Audit</th><th data-type="content-ref"></th></tr></thead><tbody><tr><td>Slowmist</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-slowmist">https://github.com/avalonfinancexyz/USDa-audit-slowmist</a></td></tr><tr><td>Slowmist</td><td>AVL</td><td><a href="">https://github.com/avalonfinancexyz/AVL-audit-slowmist</a></td></tr><tr><td>BlockSec</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-blocksec">https://github.com/avalonfinancexyz/USDa-audit-blocksec</a></td></tr><tr><td>BlockSec</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-blocksec">https://github.com/avalonfinancexyz/AVL-audit-blocksec</a></td></tr><tr><td>Salus</td><td>USDa 1</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf</a></td></tr><tr><td>Salus</td><td>USDa 2</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf</a></td></tr><tr><td>Salus</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-salus">https://github.com/avalonfinancexyz/AVL-audit-salus</a></td></tr><tr><td>Salus</td><td>DeFi Lending</td><td><a href="https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus">https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus</a></td></tr></tbody></table>
- [12723] USDaMinter
- [12724] USDaConvert
- [12725] <table><thead><tr><th width="160">Auditing Firms</th><th width="126">Audit</th><th data-type="content-ref"></th></tr></thead><tbody><tr><td>Slowmist</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-slowmist">https://github.com/avalonfinancexyz/USDa-audit-slowmist</a></td></tr><tr><td>Slowmist</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-slowmist">https://github.com/avalonfinancexyz/AVL-audit-slowmist</a></td></tr><tr><td>BlockSec</td><td>USDa</td><td><a href="">https://github.com/avalonfinancexyz/USDa-audit-blocksec</a></td></tr><tr><td>BlockSec</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-blocksec">https://github.com/avalonfinancexyz/AVL-audit-blocksec</a></td></tr><tr><td>Salus</td><td>USDa 1</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf</a></td></tr><tr><td>Salus</td><td>USDa 2</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf</a></td></tr><tr><td>Salus</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-salus">https://github.com/avalonfinancexyz/AVL-audit-salus</a></td></tr><tr><td>Salus</td><td>DeFi Lending</td><td><a href="https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus">https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus</a></td></tr></tbody></table>
- [12726] <table><thead><tr><th width="160">Auditing Firms</th><th width="126">Audit</th><th data-type="content-ref"></th></tr></thead><tbody><tr><td>Slowmist</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-slowmist">https://github.com/avalonfinancexyz/USDa-audit-slowmist</a></td></tr><tr><td>Slowmist</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-slowmist">https://github.com/avalonfinancexyz/AVL-audit-slowmist</a></td></tr><tr><td>BlockSec</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-blocksec">https://github.com/avalonfinancexyz/USDa-audit-blocksec</a></td></tr><tr><td>BlockSec</td><td>AVL</td><td><a href="">https://github.com/avalonfinancexyz/AVL-audit-blocksec</a></td></tr><tr><td>Salus</td><td>USDa 1</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf</a></td></tr><tr><td>Salus</td><td>USDa 2</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf</a></td></tr><tr><td>Salus</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-salus">https://github.com/avalonfinancexyz/AVL-audit-salus</a></td></tr><tr><td>Salus</td><td>DeFi Lending</td><td><a href="https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus">https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus</a></td></tr></tbody></table>
- [12727] USDaConvert
- [12728] <table><thead><tr><th width="160">Auditing Firms</th><th width="126">Audit</th><th data-type="content-ref"></th></tr></thead><tbody><tr><td>Slowmist</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-slowmist">https://github.com/avalonfinancexyz/USDa-audit-slowmist</a></td></tr><tr><td>Slowmist</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-slowmist">https://github.com/avalonfinancexyz/AVL-audit-slowmist</a></td></tr><tr><td>BlockSec</td><td>USDa</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-blocksec">https://github.com/avalonfinancexyz/USDa-audit-blocksec</a></td></tr><tr><td>BlockSec</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-blocksec">https://github.com/avalonfinancexyz/AVL-audit-blocksec</a></td></tr><tr><td>Salus</td><td>USDa 1</td><td><a href="https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avalon-Finance_USDA_audit_report_2024-10-18.pdf</a></td></tr><tr><td>Salus</td><td>USDa 2</td><td><a href="">https://github.com/avalonfinancexyz/USDa-audit-salus/blob/main/Avaloan-Finance-AALoan_audit_report_2024-10-17.pdf</a></td></tr><tr><td>Salus</td><td>AVL</td><td><a href="https://github.com/avalonfinancexyz/AVL-audit-salus">https://github.com/avalonfinancexyz/AVL-audit-salus</a></td></tr><tr><td>Salus</td><td>DeFi Lending</td><td><a href="https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus">https://github.com/avalonfinancexyz/DeFi-Lending-audit-salus</a></td></tr></tbody></table>

Fork inheritance lineage and inherited audits are included when available.
