# Agentic Audit Brief: SOFA.org

## Export Authority

- Production state: **published scope**
- Raw selected rows: 5 across 5 audit(s)
- Eligible audit results: 12 (5 matched; 7 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: SOFA.org (`sofa.org`)
- Website: [https://www.sofa.org](https://www.sofa.org)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, bsc, ethereum, polygon, sei
- Contract surface: 92 unique implementations (282 raw deployments)
- Coverage basis: 2/39 confirmed own live verified implementations (5.1%); conservative 5.1% with 0 needs-review implementation(s)
- DeFi Llama TVL: $1,882,136.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for SOFA.org. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 95 contract row(s) across arbitrum, bsc, ethereum, polygon, sei. Structural roles: 70 unclassified, 19 core, 5 supporting, 1 infra. 14 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 95
- Structural roles: unclassified (70), core (19), supporting (5), infra (1)
- Contract kinds: contract (95)
- Detected standards: erc1967proxy (12), ownable (11), erc20 (4), erc165 (3), erc1155 (1), erc20permit (1)
- Frameworks: openzeppelin (25), aave (2), openzeppelin-upgradeable (2), foundry (1), uniswap-v3 (1)
- Upgradeable-pattern rows: 14

## Fork Analysis

0 of 45 contracts are derived from known codebases. 45 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x467067...40a7da`, chain 1)
- UnnamedContract (`0x72e090...2869c3`, chain 1)
- UnnamedContract (`0x842e97...34656a`, chain 1)
- Automator (`0x0338c2...c5c6c1`, chain 42161)
- AutomatorFactory (`0x1893b7...6e5aff`, chain 42161)
- CrvUSDAutomator (`0x267adc...10cf8c`, chain 1)
- CrvUSDAutomator (`0x31d22b...c1bf8a`, chain 1)
- CrvUSDSmartTrendVault (`0xfa19cf...7e06e5`, chain 1)
- DNTVault (`0xdfeb34...c26c42`, chain 1)
- DNTVault (`0xf82491...a230f0`, chain 1)
- DNTVault (`0x4140ab...6509b5`, chain 42161)
- FeeCollector (`0x4140ab...6509b5`, chain 1)
- FeeCollector (`0xec722a...05fa79`, chain 56)
- FeeCollector (`0x4bd6be...0e032f`, chain 42161)
- FeeCollectorSimple (`0x322665...4ba9d1`, chain 1)
- FeeCollectorSimple (`0x6a7f97...e9d563`, chain 137)
- LeverageDNTVault (`0x8ea01d...77df0f`, chain 1)
- LeverageDNTVault (`0x3fe4fd...aeede3`, chain 42161)
- LeverageSmartTrendVault (`0x57f841...536932`, chain 1)
- LeverageSmartTrendVault (`0x53b4b7...918bc5`, chain 56)
- LeverageSmartTrendVault (`0x0243cb...c51583`, chain 42161)
- RCH (`0x57b96d...bf11af`, chain 1)
- RCHAutomatorFactory (`0x307999...47dc1a`, chain 1)
- RCHDNTVault (`0xcba5c0...e953b6`, chain 1)
- RCHSmartTrendVault (`0xfce590...c1749e`, chain 1)
- SmartTrendVault (`0x1d2faa...067873`, chain 1)
- SmartTrendVault (`0x6e72c8...83c7b8`, chain 1)
- StETHDNTVault (`0x2b7b93...3638b7`, chain 1)
- StETHLeverageDNTVault (`0xa5a79c...271767`, chain 1)
- StETHLeverageSmartTrendVault (`0xa06558...e72178`, chain 1)
- StETHSmartTrendVault (`0xe497ba...385aa3`, chain 1)
- StRCH (`0x2b9aea...3bb6b4`, chain 1)
- TransparentUpgradeableProxy (`0x00aeca...45ab19`, chain 1)
- TransparentUpgradeableProxy (`0x21f759...52efdc`, chain 1)
- TransparentUpgradeableProxy (`0x3191a0...703f8c`, chain 1)
- TransparentUpgradeableProxy (`0x62104e...a4f212`, chain 1)
- TransparentUpgradeableProxy (`0x9377f1...820529`, chain 1)
- TransparentUpgradeableProxy (`0x989897...cb84e3`, chain 1)
- TransparentUpgradeableProxy (`0x99c59d...d509ca`, chain 1)
- TransparentUpgradeableProxy (`0xc9aa26...dae931`, chain 1)
- TransparentUpgradeableProxy (`0xe483d5...bd2263`, chain 1)
- TransparentUpgradeableProxy (`0xf6c70b...b683a6`, chain 1)
- TransparentUpgradeableProxy (`0x4c2414...073cdb`, chain 42161)
- TransparentUpgradeableProxy (`0xdfeb34...c26c42`, chain 42161)
- ZenRCH (`0x893b33...f0ba08`, chain 1)

## Contract Surface Quality

- Logic-topography rows: 95; live-surface rows included: 95 (95 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 41/54 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 2/39 (5.1%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 41 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 51 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 173
- Confirmed-live implementations: 41 of 92 unique; 51 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 2/78
- Verified + Unaudited implementations: 76
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 92
- Raw deployments: 282
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 2 match-unverified
- Tier 1 coverage: 2.6% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 2 | 2.6% | 2025-01 |
| Code4rena | Tier 1 | 1 | 1.3% | 2025-01 |

## Contract Surface

### ✅ Verified + Audited (2)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| Automator | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-392777 | 2 deployments: arbitrum `0x0338c2...c5c6c1`; arbitrum `0x4c2414...073cdb` | ✅ Audited |
| RCH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392730 | `0x57b96d...bf11af` | ✅ Audited |

### ⚠️ Verified + Unaudited (76)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AAVEDNTVault | core_logic | project_anchor | own_supporting | 2 | ethereum | unit-392760 (2 proxies) | 2 deployments: ethereum `0x00aeca...45ab19`; ethereum `0x989897...cb84e3` | ⚠️ Unaudited |
| AAVEDNTVault | unknown | project_anchor | own_supporting | 2 | ethereum | unit-392766 (2 proxies) | 2 deployments: ethereum `0x1f519b...ff5e39`; ethereum `0x20a826...3b9e14` | ⚠️ Unaudited |
| AAVEDNTVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 2 deployments: arbitrum `0x3a2538...5d68b2`; arbitrum `0xd9cff1...71370a` | ⚠️ Unaudited |
| AAVEDNTVault | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | arbitrum | n/a | 3 deployments: arbitrum `0x3abc70...2eca80`; arbitrum `0x8f9259...ed0706`; arbitrum `0xa5492b...c08651` | ⚠️ Unaudited |
| AAVEDNTVault | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-392781 | `0x75809d...cd0cbf` | ⚠️ Unaudited |
| AAVEDualVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | `0x7df81f...3b32ad` | ⚠️ Unaudited |
| AAVESmartTrendVault | core_logic | project_anchor | own_supporting | 4 | ethereum | unit-392762 (4 proxies) | 4 deployments: ethereum `0x21f759...52efdc`; ethereum `0x3191a0...703f8c`; ethereum `0xc9aa26...dae931`; ethereum `0xe483d5...bd2263` | ⚠️ Unaudited |
| AAVESmartTrendVault | core_logic | project_anchor | own_supporting | 4 | ethereum | unit-392765 (4 proxies) | 5 deployments: ethereum `0x62104e...a4f212`; ethereum `0x72e090...2869c3`; ethereum `0x9377f1...820529`; ethereum `0x99c59d...d509ca`; ethereum `0xf6c70b...b683a6` | ⚠️ Unaudited |
| AAVESmartTrendVault | unknown | project_anchor | own_supporting | 1 | bsc | unit-392783 | `0x457338...f3e81d` | ⚠️ Unaudited |
| AAVESmartTrendVault | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 3 deployments: bsc `0x5dcefc...d83701`; bsc `0x842e97...34656a`; bsc `0x89c82d...43ea22` | ⚠️ Unaudited |
| AAVESmartTrendVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 4 | polygon | n/a | 4 deployments: polygon `0x467067...40a7da`; polygon `0x4fd90c...a1c021`; polygon `0x842e97...34656a`; polygon `0x89c82d...43ea22` | ⚠️ Unaudited |
| AAVESmartTrendVault | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | sei | n/a | 4 deployments: sei `0x00aeca...45ab19`; sei `0x4f1b51...5b0479`; sei `0x6e72c8...83c7b8`; sei `0x989897...cb84e3` | ⚠️ Unaudited |
| AAVESmartTrendVault | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | sei | n/a | 4 deployments: sei `0x088dbb...03d7d9`; sei `0x634b69...b478b5`; sei `0x64bb27...882ff3`; sei `0xfff0d0...1dfb0d` | ⚠️ Unaudited |
| AAVESmartTrendVault | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | arbitrum | n/a | 4 deployments: arbitrum `0x1e5a68...d6c28c`; arbitrum `0x770f7f...9c0672`; arbitrum `0x986fa0...4ed160`; arbitrum `0xbf898c...060560` | ⚠️ Unaudited |
| AAVESmartTrendVault | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | arbitrum | n/a | 4 deployments: arbitrum `0x2f1c60...5bc224`; arbitrum `0x72e090...2869c3`; arbitrum `0x9377f1...820529`; arbitrum `0x9c5d3c...620ad9` | ⚠️ Unaudited |
| AAVESmartTrendVault | unknown | non_address_book | non_address_book_inventory (excluded) | 7 | arbitrum | n/a | 7 deployments: arbitrum `0x3d407e...2bb97c`; arbitrum `0x3f4dce...13c773`; arbitrum `0x471358...1173cc`; arbitrum `0xbfd58c...8416fe`; arbitrum `0xcb7c53...bc87ad`; arbitrum `0xddaa9d...3e3cc1`; arbitrum `0xf1485c...c72ffc` | ⚠️ Unaudited |
| AAVESmartTrendVault | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-392778 | `0xf82491...a230f0` | ⚠️ Unaudited |
| AutomatorBurner | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392746 | `0x909332...59a14d` | ⚠️ Unaudited |
| AutomatorFactory | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392722 | `0x438b59...be720b` | ⚠️ Unaudited |
| AutomatorFactory | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x641708...ea645b` | ⚠️ Unaudited |
| AutomatorFactory | registry | project_anchor | own_supporting | 0 | arbitrum | unit-392755 | `0x1893b7...6e5aff` | ⚠️ Unaudited |
| CrvUSDAutomator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392704 | `0x267adc...10cf8c` | ⚠️ Unaudited |
| CrvUSDAutomator | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392711 | `0x31d22b...c1bf8a` | ⚠️ Unaudited |
| CrvUSDAutomator | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x8a7122...7b3404`; ethereum `0xe6f94a...1988af` | ⚠️ Unaudited |
| CrvUSDDualVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x060c23...bf76d3`; ethereum `0xeecacc...ba162c` | ⚠️ Unaudited |
| CrvUSDPriceOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x1ee05b...0a1a86`; ethereum `0xb08490...c9d66c` | ⚠️ Unaudited |
| CrvUSDSmartTrendVault | unknown | project_anchor | own_supporting | 4 | ethereum | unit-392774 (4 proxies) | 5 deployments: ethereum `0x9832e7...8f6cfa`; ethereum `0x995954...034aa1`; ethereum `0xf421b0...324487`; ethereum `0xf5bf8a...408d9f`; ethereum `0xfa19cf...7e06e5` | ⚠️ Unaudited |
| DNT | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: ethereum `0xd812f2...91e79d`; bsc `0x793080...0f83e5`; arbitrum `0xd812f2...91e79d` | ⚠️ Unaudited |
| DNTVault | unknown | project_anchor | own_supporting | 2 | ethereum | unit-392771 (2 proxies) | 3 deployments: ethereum `0x3a2538...5d68b2`; ethereum `0xd9cff1...71370a`; ethereum `0xdfeb34...c26c42` | ⚠️ Unaudited |
| DNTVault | unknown | project_anchor | own_supporting | 3 | ethereum | unit-392773 (3 proxies) | 4 deployments: ethereum `0xbefb3a...5b2b86`; ethereum `0xbfd58c...8416fe`; ethereum `0xf1485c...c72ffc`; ethereum `0xf82491...a230f0` | ⚠️ Unaudited |
| DNTVault | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-392780 | 2 deployments: arbitrum `0x4140ab...6509b5`; arbitrum `0xdfeb34...c26c42` | ⚠️ Unaudited |
| DNTVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0x7ecd1b...dbe2b0` | ⚠️ Unaudited |
| DualVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x3400f3...febdbb`; ethereum `0x4de9d9...5fd43c` | ⚠️ Unaudited |
| FeeCollector | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392718 | `0x4140ab...6509b5` | ⚠️ Unaudited |
| FeeCollector | unknown | project_anchor | own_supporting | 0 | bsc | unit-392757 | `0xec722a...05fa79` | ⚠️ Unaudited |
| FeeCollector | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-392756 | `0x4bd6be...0e032f` | ⚠️ Unaudited |
| FeeCollectorSimple | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392713 | `0x322665...4ba9d1` | ⚠️ Unaudited |
| FeeCollectorSimple | unknown | project_anchor | own_supporting | 0 | polygon | unit-392754 | `0x6a7f97...e9d563` | ⚠️ Unaudited |
| FeeCollectorSimple | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2000d...f871a4` | ⚠️ Unaudited |
| HlOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 4 deployments: ethereum `0x088dbb...03d7d9`; ethereum `0x634b69...b478b5`; arbitrum `0x40144b...5ad9cf`; arbitrum `0x41df07...a84776` | ⚠️ Unaudited |
| LeverageDNTVault | unknown | project_anchor | own_supporting | 2 | ethereum | unit-392767 (2 proxies) | 3 deployments: ethereum `0x507525...74e746`; ethereum `0x8ea01d...77df0f`; ethereum `0xf4a602...d27d02` | ⚠️ Unaudited |
| LeverageDNTVault | unknown | project_anchor | own_supporting | 2 | arbitrum | unit-392779 (2 proxies) | 3 deployments: arbitrum `0x1d2faa...067873`; arbitrum `0x3fe4fd...aeede3`; arbitrum `0xa8fcc1...fe04ab` | ⚠️ Unaudited |
| LeverageDNTVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | arbitrum | n/a | 2 deployments: arbitrum `0x6f4dbc...c92e50`; arbitrum `0xbefb3a...5b2b86` | ⚠️ Unaudited |
| LeverageSmartTrendVault | unknown | project_anchor | own_supporting | 4 | ethereum | unit-392761 (4 proxies) | 5 deployments: ethereum `0x071e0c...e1feed`; ethereum `0x3abc70...2eca80`; ethereum `0x57f841...536932`; ethereum `0x8ea963...5f5211`; ethereum `0x8f9259...ed0706` | ⚠️ Unaudited |
| LeverageSmartTrendVault | unknown | non_address_book | non_address_book_inventory (excluded) | 3 | bsc | n/a | 3 deployments: bsc `0x40144b...5ad9cf`; bsc `0x41df07...a84776`; bsc `0xd0fb79...7a3a05` | ⚠️ Unaudited |
| LeverageSmartTrendVault | unknown | project_anchor | own_supporting | 1 | bsc | unit-392782 | 2 deployments: bsc `0x53b4b7...918bc5`; bsc `0xab08ff...4a4c97` | ⚠️ Unaudited |
| LeverageSmartTrendVault | unknown | non_address_book | non_address_book_inventory (excluded) | 5 | polygon | n/a | 6 deployments: polygon `0x40144b...5ad9cf`; polygon `0x41df07...a84776`; polygon `0x457338...f3e81d`; polygon `0x53b4b7...918bc5`; polygon `0x5dcefc...d83701`; polygon `0xd0fb79...7a3a05` | ⚠️ Unaudited |
| LeverageSmartTrendVault | unknown | project_anchor | own_supporting | 2 | arbitrum | unit-392776 (2 proxies) | 3 deployments: arbitrum `0x0243cb...c51583`; arbitrum `0x7e11ce...e81cde`; arbitrum `0xf7be09...134eac` | ⚠️ Unaudited |
| LeverageSmartTrendVault | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | arbitrum | n/a | 8 deployments: arbitrum `0x08c57a...da7ed8`; arbitrum `0x262ba0...00109e`; arbitrum `0x35383c...f3b431`; arbitrum `0x4a5b40...da67d1`; arbitrum `0x8e882a...d2f3f9`; arbitrum `0x94fe82...fd7830`; arbitrum `0xa76ee9...a6ef96`; arbitrum `0xfa49f8...0e7770` | ⚠️ Unaudited |
| MerkleAirdrop | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5a8cdd...553270` | ⚠️ Unaudited |
| ProxyAdmin | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 7 deployments: ethereum `0xfa24b9...b70089`; bsc `0x4fd90c...a1c021`; polygon `0x57b96d...bf11af`; sei `0x89c82d...43ea22`; sei `0xa9e233...df0942`; sei `0xd9cff1...71370a`; arbitrum `0x5a8cdd...553270` | ⚠️ Unaudited |
| RCHAutomatorFactory | registry | project_anchor | own_supporting | 0 | ethereum | unit-392708 | `0x307999...47dc1a` | ⚠️ Unaudited |
| RCHDNTVault | unknown | project_anchor | own_supporting | 2 | ethereum | unit-392770 (2 proxies) | 3 deployments: ethereum `0x53ee67...0387a3`; ethereum `0xcba5c0...e953b6`; ethereum `0xe51777...94499d` | ⚠️ Unaudited |
| RCHDualVault | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | ethereum | n/a | 2 deployments: ethereum `0x51df98...f2c395`; ethereum `0x5354c5...9be18b` | ⚠️ Unaudited |
| RCHSmartTrendVault | unknown | project_anchor | own_supporting | 4 | ethereum | unit-392775 (4 proxies) | 5 deployments: ethereum `0x13ef70...dd6cfa`; ethereum `0x4cfc3a...173123`; ethereum `0xc0baa3...791f38`; ethereum `0xf07d6b...9d77a7`; ethereum `0xfce590...c1749e` | ⚠️ Unaudited |
| RebaseSmartTrendVault | unknown | non_address_book | non_address_book_inventory (excluded) | 8 | ethereum | n/a | 9 deployments: ethereum `0x26e9aa...bd946b`; ethereum `0x4a42a3...c057f2`; ethereum `0x550cce...91d2c2`; ethereum `0x622ccb...175ffd`; ethereum `0x69bd97...d5af6e`; ethereum `0x81ed11...029452`; ethereum `0xa86dc0...cd89a2`; ethereum `0xbbd734...f297f4`; ethereum `0xe8f4ce...497968` | ⚠️ Unaudited |
| RebaseSmartTrendVault | unknown | non_address_book | non_address_book_inventory (excluded) | 6 | bsc | n/a | 7 deployments: bsc `0x084ca8...40e712`; bsc `0x6779e7...514c65`; bsc `0x71a170...18381f`; bsc `0x72f25a...10feca`; bsc `0x9b9b91...dd8a8b`; bsc `0xa0fa94...fbcc35`; bsc `0xcd0e48...bae742` | ⚠️ Unaudited |
| RebaseSmartTrendVault | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 9 deployments: bsc `0x184c82...9ca984`; bsc `0x292cdb...2e89d3`; bsc `0x5a944b...893d16`; bsc `0x906712...f05e5f`; bsc `0xad958e...81ed14`; bsc `0xbb2f44...1b0a92`; bsc `0xcefb90...0e846c`; bsc `0xd9a26d...e6000e`; bsc `0xed68dc...0e76f8` | ⚠️ Unaudited |
| RebaseSmartTrendVault | unknown | non_address_book | non_address_book_inventory (excluded) | 12 | arbitrum | n/a | 13 deployments: arbitrum `0x091880...ff7e5f`; arbitrum `0x09ccc2...aaad4e`; arbitrum `0x3a129b...5f0e86`; arbitrum `0x3d5489...37c049`; arbitrum `0x40e439...385e93`; arbitrum `0x68c91d...6af1e7`; arbitrum `0x6c18e7...460fb3`; arbitrum `0x8b8018...cbdbd3`; arbitrum `0xc914ba...7943eb`; arbitrum `0xd1c852...d1fbd1`; arbitrum `0xe05355...72d61c`; arbitrum `0xe4df80...e75933`; arbitrum `0xe5e973...c9dc94` | ⚠️ Unaudited |
| SimpleSmartTrendVault | unknown | non_address_book | non_address_book_inventory (excluded) | 12 | ethereum | n/a | 13 deployments: ethereum `0x2bdbdb...d0706a`; ethereum `0x362950...0379a0`; ethereum `0x397c32...7ff282`; ethereum `0x4a1bc9...4e4f40`; ethereum `0x5e5e68...b80e5c`; ethereum `0x6d05eb...733f67`; ethereum `0x829f43...dd1184`; ethereum `0x9c3386...0cf043`; ethereum `0xce8ec0...1edc51`; ethereum `0xd4c30f...c19da4`; ethereum `0xde417e...9b61a0`; ethereum `0xe02a2c...9d8155`; ethereum `0xfeb044...b95fdf` | ⚠️ Unaudited |
| SmartBear | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 4 deployments: ethereum `0x0c11a7...d26257`; bsc `0x05a60a...fb4597`; polygon `0x97e10b...c786ab`; arbitrum `0x0c11a7...d26257` | ⚠️ Unaudited |
| SmartBull | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: ethereum `0xaa7764...74503f`; bsc `0x97e10b...c786ab`; polygon `0x793080...0f83e5`; arbitrum `0xaa7764...74503f` | ⚠️ Unaudited |
| SmartTrendVault | unknown | project_anchor | own_supporting | 4 | ethereum | unit-392758 (4 proxies) | 5 deployments: ethereum `0x08c57a...da7ed8`; ethereum `0x1d2faa...067873`; ethereum `0x4a5b40...da67d1`; ethereum `0x94fe82...fd7830`; ethereum `0xfa49f8...0e7770` | ⚠️ Unaudited |
| SmartTrendVault | unknown | project_anchor | own_supporting | 4 | ethereum | unit-392764 (4 proxies) | 5 deployments: ethereum `0x106825...cf292a`; ethereum `0x2f1c60...5bc224`; ethereum `0x549485...87ce34`; ethereum `0x6e72c8...83c7b8`; ethereum `0x9c5d3c...620ad9` | ⚠️ Unaudited |
| SmartTrendVault | core_logic | non_address_book | non_address_book_inventory (excluded) | 4 | arbitrum | n/a | 5 deployments: arbitrum `0x00aeca...45ab19`; arbitrum `0x106825...cf292a`; arbitrum `0x4f1b51...5b0479`; arbitrum `0x6e72c8...83c7b8`; arbitrum `0x989897...cb84e3` | ⚠️ Unaudited |
| SpotOracle | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 10 deployments: ethereum `0x641708...ea645b`; ethereum `0xfff0d0...1dfb0d`; bsc `0x0ce8b7...611858`; bsc `0x6a7f97...e9d563`; polygon `0x05a60a...fb4597`; polygon `0x0ce8b7...611858`; sei `0x05a60a...fb4597`; sei `0x0ce8b7...611858`; arbitrum `0xab08ff...4a4c97`; arbitrum `0xd0fb79...7a3a05` | ⚠️ Unaudited |
| StETHDNTVault | unknown | project_anchor | own_supporting | 2 | ethereum | unit-392759 (2 proxies) | 3 deployments: ethereum `0x141b89...72bc65`; ethereum `0x2b7b93...3638b7`; ethereum `0xc0f6d3...a780c1` | ⚠️ Unaudited |
| StETHLeverageDNTVault | unknown | project_anchor | own_supporting | 2 | ethereum | unit-392769 (2 proxies) | 3 deployments: ethereum `0x601478...463f06`; ethereum `0xa5a79c...271767`; ethereum `0xd94a2b...cdec71` | ⚠️ Unaudited |
| StETHLeverageSmartTrendVault | unknown | project_anchor | own_supporting | 4 | ethereum | unit-392768 (4 proxies) | 5 deployments: ethereum `0x1361fa...db4366`; ethereum `0x36ac03...8e0629`; ethereum `0x858af7...353f2c`; ethereum `0xa06558...e72178`; ethereum `0xb8610f...e1a0a5` | ⚠️ Unaudited |
| StETHSmartTrendVault | unknown | non_address_book | non_address_book_inventory (excluded) | 2 | ethereum | n/a | 2 deployments: ethereum `0x09df17...e4ff6f`; ethereum `0xf2a7d9...2cfe71` | ⚠️ Unaudited |
| StETHSmartTrendVault | unknown | project_anchor | own_supporting | 4 | ethereum | unit-392772 (4 proxies) | 5 deployments: ethereum `0x22d620...35ae69`; ethereum `0x4f8abb...95b793`; ethereum `0x5bbeb8...be2368`; ethereum `0xbeb059...da4540`; ethereum `0xe497ba...385aa3` | ⚠️ Unaudited |
| StRCH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392706 | `0x2b9aea...3bb6b4` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 3 deployments: bsc `0x467067...40a7da`; bsc `0x4fbc67...5d36f5`; bsc `0x72ece8...e6bf13` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | sei | n/a | 5 deployments: sei `0x0c11a7...d26257`; sei `0x4bd6be...0e032f`; sei `0x898f1b...4be286`; sei `0xaa7764...74503f`; sei `0xd812f2...91e79d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | non_address_book | non_address_book_inventory (excluded) | 4 | sei | n/a | 5 deployments: sei `0x457338...f3e81d`; sei `0x467067...40a7da`; sei `0x4fd90c...a1c021`; sei `0x5dcefc...d83701`; sei `0x842e97...34656a` | ⚠️ Unaudited |
| ZenRCH | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392741 | `0x893b33...f0ba08` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392724 | `0x467067...40a7da` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ethereum | unit-392739 | `0x842e97...34656a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10b7d8...215ab8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3e270e...1f7170` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb71ab...9567fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd54cc1...346444` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf43ebd...57226a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x57b96d...bf11af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x6a7f97...e9d563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x793080...0f83e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0x97e10b...c786ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sei | n/a | `0xec722a...05fa79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x05a60a...fb4597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x97e10b...c786ab` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [PeckShield-Audit-Report-Sofa-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Sofa-v1.0.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 7 | high |
| [Audit Report - Sofa (May 2024).pdf](https://github.com/zenith-security/reports/blob/main/reports/Audit%20Report%20-%20Sofa%20%28May%202024%29.pdf) | Code4rena | Contest | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [Audit Report - Sofa Automator(Oct 2024).pdf](https://github.com/zenith-security/reports/blob/main/reports/Audit%20Report%20-%20Sofa%20Automator%28Oct%202024%29.pdf) | Code4rena | Contest | 2024-10 | aging | Direct | n/a | matched | 1 | 1 | 0 | 0 | n/a |
| [Zenith Audit Report - Sofa Automator 2.0.pdf](https://github.com/zenith-security/reports/blob/main/reports/Zenith%20Audit%20Report%20-%20Sofa%20Automator%202.0.pdf) | Code4rena | Contest | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Audit Report - Sofa Automator(Oct 2024).pdf](https://raw.githubusercontent.com/zenith-security/reports/985c60dd51497dfd8540cdc16bf243265ba154b5/reports/Audit%20Report%20-%20Sofa%20Automator(Oct%202024).pdf) | yAudit | Audit | 2024-10 | aging | Direct | n/a | matched | 1 | 1 | 0 | 0 | n/a |
| [Zenith Audit Report - Sofa Automator 2.0.pdf](https://raw.githubusercontent.com/zenith-security/reports/985c60dd51497dfd8540cdc16bf243265ba154b5/reports/Zenith%20Audit%20Report%20-%20Sofa%20Automator%202.0.pdf) | yAudit | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Audit Report - Sofa (May 2024).pdf](https://raw.githubusercontent.com/zenith-security/reports/985c60dd51497dfd8540cdc16bf243265ba154b5/reports/Audit%20Report%20-%20Sofa%20(May%202024).pdf) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |
| [review.pdf (also discovered via alternate URL)](https://raw.githubusercontent.com/sigp/public-audits/48f7de362df66942a77e1dd5954b580f28ed367f/reports/sofa/review.pdf) | yAudit | Audit | 2024-06 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 10 | high |
| [Audit Report - Sofa Automator(Oct 2024).pdf](https://raw.githubusercontent.com/zenith-security/reports/84cd8bcd63d6a9e9f4385fa3f7aa87dca4c8c2fa/reports/Audit%20Report%20-%20Sofa%20Automator(Oct%202024).pdf) | yAudit | Audit | 2024-10 | aging | Direct | n/a | matched | 1 | 1 | 0 | 0 | n/a |
| [Zenith Audit Report - Sofa Automator 2.0.pdf](https://raw.githubusercontent.com/zenith-security/reports/84cd8bcd63d6a9e9f4385fa3f7aa87dca4c8c2fa/reports/Zenith%20Audit%20Report%20-%20Sofa%20Automator%202.0.pdf) | yAudit | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [Audit Report - Sofa (May 2024).pdf](https://raw.githubusercontent.com/zenith-security/reports/84cd8bcd63d6a9e9f4385fa3f7aa87dca4c8c2fa/reports/Audit%20Report%20-%20Sofa%20(May%202024).pdf) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 10 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [2824] PeckShield-Audit-Report-Sofa-v1.0.pdf — no match: Contracts extracted from findings and recommendations; no explicit scope table but contracts are clearly audited targets.
- [2826] Audit Report - Sofa (May 2024).pdf — no match: Extracted contract names from findings context and scope section. Audit dates: May 15 – May 27, 2024, so end date used.
- [2827] Audit Report - Sofa Automator(Oct 2024).pdf — matched: No reason recorded
- [2828] Zenith Audit Report - Sofa Automator 2.0.pdf — no match: Scope section lists repository and commit hash but no explicit contract names; contracts extracted from findings context.
- [2831] Audit Report - Sofa Automator(Oct 2024).pdf — matched: No reason recorded
- [2832] Zenith Audit Report - Sofa Automator 2.0.pdf — no match: Scope section lists repository and commit hash but no explicit contract names; contracts extracted from findings context.
- [2833] Audit Report - Sofa (May 2024).pdf — no match: Extracted contract names from findings context and scope section. Audit dates: May 15 – May 27, 2024, so end date used.
- [15342] review.pdf — matched: Scope explicitly lists directories: oracles/, strategies/, tokenomics/, vaults/. Contract names extracted from file paths and findings. Audit date is June 2024 (version 2.0, June 2024), interpreted as end of month.
- [15343] Audit Report - Sofa Automator(Oct 2024).pdf — matched: No reason recorded
- [15344] Zenith Audit Report - Sofa Automator 2.0.pdf — no match: Scope section lists repository and commit hash but not individual contracts; contracts extracted from findings context.
- [15345] Audit Report - Sofa (May 2024).pdf — no match: Extracted 10 contracts from the audit report. The scope section lists the repository and commit hash but not individual files; contract names were extracted from findings context. Audit dates: May 15 – May 27, 2024, so end date used.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| PeckShield-Audit-Report-Sofa-v1.0.pdf | SmartTrendVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x08c57a...da7ed8` — deployed 2024-07-18 04:21:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfa49f8...0e7770` — deployed 2024-07-18 04:19:23+03 — liveness: live (current_address_book_code)<br>SmartTrendVault (alternative) `0x6e72c8...83c7b8` — deployed 2024-06-06 16:32:47+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4a5b40...da67d1` — deployed 2024-07-18 04:20:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x549485...87ce34` — deployed 2024-06-06 16:34:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x94fe82...fd7830` — deployed 2024-07-18 04:20:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9c5d3c...620ad9` — deployed 2024-06-06 16:35:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x106825...cf292a` — deployed 2024-06-06 16:33:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2f1c60...5bc224` — deployed 2024-06-06 16:36:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Sofa-v1.0.pdf | DNTVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xd9cff1...71370a` — deployed 2024-06-06 16:27:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xbefb3a...5b2b86` — deployed 2024-07-17 14:06:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3a2538...5d68b2` — deployed 2024-06-06 16:23:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf1485c...c72ffc` — deployed 2024-07-17 13:29:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xdfeb34...c26c42` — deployed 2024-06-06 13:08:56+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xbfd58c...8416fe` — deployed 2024-07-17 13:34:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Sofa-v1.0.pdf | AAVEDNTVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x75809d...cd0cbf` — deployed 2024-07-15 12:55:52+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x20a826...3b9e14` — deployed 2024-07-17 07:12:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x00aeca...45ab19` — deployed 2024-06-06 16:29:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x989897...cb84e3` — deployed 2024-06-06 16:30:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x1f519b...ff5e39` — deployed 2024-07-17 07:10:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Sofa-v1.0.pdf | AAVESmartTrendVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xf6c70b...b683a6` — deployed 2024-06-06 16:40:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x21f759...52efdc` — deployed 2024-09-03 10:22:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x99c59d...d509ca` — deployed 2024-06-06 16:39:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9377f1...820529` — deployed 2024-06-06 16:37:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc9aa26...dae931` — deployed 2024-09-03 10:22:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe483d5...bd2263` — deployed 2024-09-03 10:22:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3191a0...703f8c` — deployed 2024-09-03 10:22:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x457338...f3e81d` — deployed 2024-09-11 11:54:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x62104e...a4f212` — deployed 2024-06-06 16:41:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf82491...a230f0` — deployed 2024-07-15 11:28:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Sofa-v1.0.pdf | LeverageDNTVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x1d2faa...067873` — deployed 2024-07-15 11:47:49+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x507525...74e746` — deployed 2024-07-17 10:10:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf4a602...d27d02` — deployed 2024-07-17 10:08:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xa8fcc1...fe04ab` — deployed 2024-07-08 09:45:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Sofa-v1.0.pdf | LeverageSmartTrendVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x8ea963...5f5211` — deployed 2024-07-17 10:16:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7e11ce...e81cde` — deployed 2024-07-08 10:00:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xab08ff...4a4c97` — deployed 2024-09-11 12:22:24+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x071e0c...e1feed` — deployed 2024-07-17 10:20:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf7be09...134eac` — deployed 2024-07-08 09:51:08+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8f9259...ed0706` — deployed 2024-07-17 10:17:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3abc70...2eca80` — deployed 2024-07-17 10:18:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-Sofa-v1.0.pdf | FeeCollector | ambiguous — not counted | FeeCollector (alternative) `0xec722a...05fa79` — deployed 2024-09-11 10:03:25+03 — liveness: live (current_address_book_code)<br>FeeCollector (alternative) `0x4140ab...6509b5` — deployed 2024-06-06 16:12:59+03 — liveness: live (code_present_context)<br>FeeCollector (alternative) `0x4bd6be...0e032f` — deployed 2024-06-06 12:21:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa (May 2024).pdf | AAVEDNTVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x75809d...cd0cbf` — deployed 2024-07-15 12:55:52+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x20a826...3b9e14` — deployed 2024-07-17 07:12:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x00aeca...45ab19` — deployed 2024-06-06 16:29:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x989897...cb84e3` — deployed 2024-06-06 16:30:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x1f519b...ff5e39` — deployed 2024-07-17 07:10:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa (May 2024).pdf | AAVESmartTrendVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xf6c70b...b683a6` — deployed 2024-06-06 16:40:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x21f759...52efdc` — deployed 2024-09-03 10:22:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x99c59d...d509ca` — deployed 2024-06-06 16:39:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9377f1...820529` — deployed 2024-06-06 16:37:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc9aa26...dae931` — deployed 2024-09-03 10:22:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe483d5...bd2263` — deployed 2024-09-03 10:22:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3191a0...703f8c` — deployed 2024-09-03 10:22:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x457338...f3e81d` — deployed 2024-09-11 11:54:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x62104e...a4f212` — deployed 2024-06-06 16:41:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf82491...a230f0` — deployed 2024-07-15 11:28:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa (May 2024).pdf | DNTVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xd9cff1...71370a` — deployed 2024-06-06 16:27:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xbefb3a...5b2b86` — deployed 2024-07-17 14:06:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3a2538...5d68b2` — deployed 2024-06-06 16:23:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf1485c...c72ffc` — deployed 2024-07-17 13:29:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xdfeb34...c26c42` — deployed 2024-06-06 13:08:56+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xbfd58c...8416fe` — deployed 2024-07-17 13:34:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa (May 2024).pdf | LeverageDNTVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x1d2faa...067873` — deployed 2024-07-15 11:47:49+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x507525...74e746` — deployed 2024-07-17 10:10:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf4a602...d27d02` — deployed 2024-07-17 10:08:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xa8fcc1...fe04ab` — deployed 2024-07-08 09:45:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa (May 2024).pdf | LeverageSmartTrendVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x8ea963...5f5211` — deployed 2024-07-17 10:16:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7e11ce...e81cde` — deployed 2024-07-08 10:00:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xab08ff...4a4c97` — deployed 2024-09-11 12:22:24+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x071e0c...e1feed` — deployed 2024-07-17 10:20:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf7be09...134eac` — deployed 2024-07-08 09:51:08+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8f9259...ed0706` — deployed 2024-07-17 10:17:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3abc70...2eca80` — deployed 2024-07-17 10:18:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa (May 2024).pdf | SmartTrendVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x08c57a...da7ed8` — deployed 2024-07-18 04:21:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfa49f8...0e7770` — deployed 2024-07-18 04:19:23+03 — liveness: live (current_address_book_code)<br>SmartTrendVault (alternative) `0x6e72c8...83c7b8` — deployed 2024-06-06 16:32:47+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4a5b40...da67d1` — deployed 2024-07-18 04:20:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x549485...87ce34` — deployed 2024-06-06 16:34:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x94fe82...fd7830` — deployed 2024-07-18 04:20:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9c5d3c...620ad9` — deployed 2024-06-06 16:35:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x106825...cf292a` — deployed 2024-06-06 16:33:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2f1c60...5bc224` — deployed 2024-06-06 16:36:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa (May 2024).pdf | SpotOracle | unmatched — not counted | — | Listed in findings context (e.g., SpotOracle.sol#L20-L40) | no |
| Audit Report - Sofa (May 2024).pdf | HlOracle | unmatched — not counted | — | Listed in findings context (e.g., HlOracle.sol#L47-L74) | no |
| Audit Report - Sofa (May 2024).pdf | FeeCollector | ambiguous — not counted | FeeCollector (alternative) `0xec722a...05fa79` — deployed 2024-09-11 10:03:25+03 — liveness: live (current_address_book_code)<br>FeeCollector (alternative) `0x4140ab...6509b5` — deployed 2024-06-06 16:12:59+03 — liveness: live (code_present_context)<br>FeeCollector (alternative) `0x4bd6be...0e032f` — deployed 2024-06-06 12:21:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa (May 2024).pdf | MerkleAirdrop | unmatched — not counted | — | Listed in findings context (e.g., MerkleAirdrop.sol#L42-L53) | no |
| Audit Report - Sofa Automator(Oct 2024).pdf | Automator | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x4c2414...073cdb` — deployed 2024-11-20 13:45:34+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zenith Audit Report - Sofa Automator 2.0.pdf | AutomatorFactory | ambiguous — not counted | AutomatorFactory (alternative) `0x1893b7...6e5aff` — deployed 2025-01-21 10:50:30+03 — liveness: live (current_address_book_code)<br>AutomatorFactory (alternative) `0x438b59...be720b` — deployed 2025-01-23 04:35:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Zenith Audit Report - Sofa Automator 2.0.pdf | AAVEAutomatorBase | unmatched — not counted | — | mentioned in findings L-2 and L-4 | no |
| Zenith Audit Report - Sofa Automator 2.0.pdf | RCHAutomatorBase | unmatched — not counted | — | mentioned in findings L-3 and L-4 | no |
| Audit Report - Sofa Automator(Oct 2024).pdf | Automator | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x4c2414...073cdb` — deployed 2024-11-20 13:45:34+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zenith Audit Report - Sofa Automator 2.0.pdf | AutomatorFactory | ambiguous — not counted | AutomatorFactory (alternative) `0x1893b7...6e5aff` — deployed 2025-01-21 10:50:30+03 — liveness: live (current_address_book_code)<br>AutomatorFactory (alternative) `0x438b59...be720b` — deployed 2025-01-23 04:35:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Zenith Audit Report - Sofa Automator 2.0.pdf | AAVEAutomatorBase | unmatched — not counted | — | mentioned in findings context | no |
| Zenith Audit Report - Sofa Automator 2.0.pdf | RCHAutomatorBase | unmatched — not counted | — | mentioned in findings context | no |
| Audit Report - Sofa (May 2024).pdf | AAVEDNTVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x75809d...cd0cbf` — deployed 2024-07-15 12:55:52+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x20a826...3b9e14` — deployed 2024-07-17 07:12:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x00aeca...45ab19` — deployed 2024-06-06 16:29:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x989897...cb84e3` — deployed 2024-06-06 16:30:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x1f519b...ff5e39` — deployed 2024-07-17 07:10:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa (May 2024).pdf | AAVESmartTrendVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xf6c70b...b683a6` — deployed 2024-06-06 16:40:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x21f759...52efdc` — deployed 2024-09-03 10:22:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x99c59d...d509ca` — deployed 2024-06-06 16:39:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9377f1...820529` — deployed 2024-06-06 16:37:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc9aa26...dae931` — deployed 2024-09-03 10:22:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe483d5...bd2263` — deployed 2024-09-03 10:22:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3191a0...703f8c` — deployed 2024-09-03 10:22:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x457338...f3e81d` — deployed 2024-09-11 11:54:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x62104e...a4f212` — deployed 2024-06-06 16:41:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf82491...a230f0` — deployed 2024-07-15 11:28:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa (May 2024).pdf | DNTVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xd9cff1...71370a` — deployed 2024-06-06 16:27:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xbefb3a...5b2b86` — deployed 2024-07-17 14:06:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3a2538...5d68b2` — deployed 2024-06-06 16:23:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf1485c...c72ffc` — deployed 2024-07-17 13:29:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xdfeb34...c26c42` — deployed 2024-06-06 13:08:56+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xbfd58c...8416fe` — deployed 2024-07-17 13:34:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa (May 2024).pdf | LeverageDNTVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x1d2faa...067873` — deployed 2024-07-15 11:47:49+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x507525...74e746` — deployed 2024-07-17 10:10:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf4a602...d27d02` — deployed 2024-07-17 10:08:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xa8fcc1...fe04ab` — deployed 2024-07-08 09:45:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa (May 2024).pdf | LeverageSmartTrendVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x8ea963...5f5211` — deployed 2024-07-17 10:16:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7e11ce...e81cde` — deployed 2024-07-08 10:00:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xab08ff...4a4c97` — deployed 2024-09-11 12:22:24+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x071e0c...e1feed` — deployed 2024-07-17 10:20:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf7be09...134eac` — deployed 2024-07-08 09:51:08+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8f9259...ed0706` — deployed 2024-07-17 10:17:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3abc70...2eca80` — deployed 2024-07-17 10:18:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa (May 2024).pdf | SmartTrendVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x08c57a...da7ed8` — deployed 2024-07-18 04:21:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfa49f8...0e7770` — deployed 2024-07-18 04:19:23+03 — liveness: live (current_address_book_code)<br>SmartTrendVault (alternative) `0x6e72c8...83c7b8` — deployed 2024-06-06 16:32:47+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4a5b40...da67d1` — deployed 2024-07-18 04:20:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x549485...87ce34` — deployed 2024-06-06 16:34:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x94fe82...fd7830` — deployed 2024-07-18 04:20:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9c5d3c...620ad9` — deployed 2024-06-06 16:35:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x106825...cf292a` — deployed 2024-06-06 16:33:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2f1c60...5bc224` — deployed 2024-06-06 16:36:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa (May 2024).pdf | SpotOracle | unmatched — not counted | — | Context in M-1, M-3 | no |
| Audit Report - Sofa (May 2024).pdf | HlOracle | unmatched — not counted | — | Context in M-3 | no |
| Audit Report - Sofa (May 2024).pdf | FeeCollector | ambiguous — not counted | FeeCollector (alternative) `0xec722a...05fa79` — deployed 2024-09-11 10:03:25+03 — liveness: live (current_address_book_code)<br>FeeCollector (alternative) `0x4140ab...6509b5` — deployed 2024-06-06 16:12:59+03 — liveness: live (code_present_context)<br>FeeCollector (alternative) `0x4bd6be...0e032f` — deployed 2024-06-06 12:21:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa (May 2024).pdf | MerkleAirdrop | unmatched — not counted | — | Context in I-1 | no |
| review.pdf | HlOracle | unmatched — not counted | — | listed in scope under oracles/ directory | no |
| review.pdf | SpotOracle | unmatched — not counted | — | listed in scope under oracles/ directory | no |
| review.pdf | AAVEDNTVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x75809d...cd0cbf` — deployed 2024-07-15 12:55:52+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x20a826...3b9e14` — deployed 2024-07-17 07:12:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x00aeca...45ab19` — deployed 2024-06-06 16:29:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x989897...cb84e3` — deployed 2024-06-06 16:30:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x1f519b...ff5e39` — deployed 2024-07-17 07:10:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| review.pdf | AAVESmartTrendVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xf6c70b...b683a6` — deployed 2024-06-06 16:40:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x21f759...52efdc` — deployed 2024-09-03 10:22:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x99c59d...d509ca` — deployed 2024-06-06 16:39:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9377f1...820529` — deployed 2024-06-06 16:37:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc9aa26...dae931` — deployed 2024-09-03 10:22:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe483d5...bd2263` — deployed 2024-09-03 10:22:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3191a0...703f8c` — deployed 2024-09-03 10:22:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x457338...f3e81d` — deployed 2024-09-11 11:54:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x62104e...a4f212` — deployed 2024-06-06 16:41:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf82491...a230f0` — deployed 2024-07-15 11:28:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| review.pdf | LeverageDNTVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x1d2faa...067873` — deployed 2024-07-15 11:47:49+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x507525...74e746` — deployed 2024-07-17 10:10:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf4a602...d27d02` — deployed 2024-07-17 10:08:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xa8fcc1...fe04ab` — deployed 2024-07-08 09:45:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| review.pdf | LeverageSmartTrendVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x8ea963...5f5211` — deployed 2024-07-17 10:16:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7e11ce...e81cde` — deployed 2024-07-08 10:00:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xab08ff...4a4c97` — deployed 2024-09-11 12:22:24+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x071e0c...e1feed` — deployed 2024-07-17 10:20:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf7be09...134eac` — deployed 2024-07-08 09:51:08+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8f9259...ed0706` — deployed 2024-07-17 10:17:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3abc70...2eca80` — deployed 2024-07-17 10:18:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| review.pdf | RCH | own contract | RCH (selected) `0x57b96d...bf11af` — deployed 2024-06-06 13:50:47+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| review.pdf | MerkleAirdrop | unmatched — not counted | — | listed in scope under tokenomics/ directory | no |
| review.pdf | SignatureBitMap | unmatched — not counted | — | listed in scope under utils/ directory (mentioned in findings) | no |
| review.pdf | DNTVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xd9cff1...71370a` — deployed 2024-06-06 16:27:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xbefb3a...5b2b86` — deployed 2024-07-17 14:06:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3a2538...5d68b2` — deployed 2024-06-06 16:23:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf1485c...c72ffc` — deployed 2024-07-17 13:29:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xdfeb34...c26c42` — deployed 2024-06-06 13:08:56+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xbfd58c...8416fe` — deployed 2024-07-17 13:34:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| review.pdf | SmartTrendVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x08c57a...da7ed8` — deployed 2024-07-18 04:21:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfa49f8...0e7770` — deployed 2024-07-18 04:19:23+03 — liveness: live (current_address_book_code)<br>SmartTrendVault (alternative) `0x6e72c8...83c7b8` — deployed 2024-06-06 16:32:47+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4a5b40...da67d1` — deployed 2024-07-18 04:20:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x549485...87ce34` — deployed 2024-06-06 16:34:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x94fe82...fd7830` — deployed 2024-07-18 04:20:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9c5d3c...620ad9` — deployed 2024-06-06 16:35:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x106825...cf292a` — deployed 2024-06-06 16:33:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2f1c60...5bc224` — deployed 2024-06-06 16:36:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa Automator(Oct 2024).pdf | Automator | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x4c2414...073cdb` — deployed 2024-11-20 13:45:34+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Zenith Audit Report - Sofa Automator 2.0.pdf | AutomatorFactory | ambiguous — not counted | AutomatorFactory (alternative) `0x1893b7...6e5aff` — deployed 2025-01-21 10:50:30+03 — liveness: live (current_address_book_code)<br>AutomatorFactory (alternative) `0x438b59...be720b` — deployed 2025-01-23 04:35:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Zenith Audit Report - Sofa Automator 2.0.pdf | AAVEAutomatorBase | unmatched — not counted | — | mentioned in findings L-2 and L-4 | no |
| Zenith Audit Report - Sofa Automator 2.0.pdf | RCHAutomatorBase | unmatched — not counted | — | mentioned in findings L-3 and L-4 | no |
| Audit Report - Sofa (May 2024).pdf | AAVEDNTVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x75809d...cd0cbf` — deployed 2024-07-15 12:55:52+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x20a826...3b9e14` — deployed 2024-07-17 07:12:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x00aeca...45ab19` — deployed 2024-06-06 16:29:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x989897...cb84e3` — deployed 2024-06-06 16:30:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x1f519b...ff5e39` — deployed 2024-07-17 07:10:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa (May 2024).pdf | AAVESmartTrendVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xf6c70b...b683a6` — deployed 2024-06-06 16:40:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x21f759...52efdc` — deployed 2024-09-03 10:22:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x99c59d...d509ca` — deployed 2024-06-06 16:39:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9377f1...820529` — deployed 2024-06-06 16:37:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc9aa26...dae931` — deployed 2024-09-03 10:22:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xe483d5...bd2263` — deployed 2024-09-03 10:22:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3191a0...703f8c` — deployed 2024-09-03 10:22:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x457338...f3e81d` — deployed 2024-09-11 11:54:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x62104e...a4f212` — deployed 2024-06-06 16:41:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf82491...a230f0` — deployed 2024-07-15 11:28:05+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa (May 2024).pdf | DNTVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xd9cff1...71370a` — deployed 2024-06-06 16:27:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xbefb3a...5b2b86` — deployed 2024-07-17 14:06:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3a2538...5d68b2` — deployed 2024-06-06 16:23:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf1485c...c72ffc` — deployed 2024-07-17 13:29:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xdfeb34...c26c42` — deployed 2024-06-06 13:08:56+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xbfd58c...8416fe` — deployed 2024-07-17 13:34:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa (May 2024).pdf | LeverageDNTVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x1d2faa...067873` — deployed 2024-07-15 11:47:49+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x507525...74e746` — deployed 2024-07-17 10:10:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf4a602...d27d02` — deployed 2024-07-17 10:08:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xa8fcc1...fe04ab` — deployed 2024-07-08 09:45:54+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa (May 2024).pdf | LeverageSmartTrendVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x8ea963...5f5211` — deployed 2024-07-17 10:16:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7e11ce...e81cde` — deployed 2024-07-08 10:00:27+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xab08ff...4a4c97` — deployed 2024-09-11 12:22:24+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x071e0c...e1feed` — deployed 2024-07-17 10:20:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf7be09...134eac` — deployed 2024-07-08 09:51:08+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x8f9259...ed0706` — deployed 2024-07-17 10:17:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3abc70...2eca80` — deployed 2024-07-17 10:18:35+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa (May 2024).pdf | SmartTrendVault | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x08c57a...da7ed8` — deployed 2024-07-18 04:21:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfa49f8...0e7770` — deployed 2024-07-18 04:19:23+03 — liveness: live (current_address_book_code)<br>SmartTrendVault (alternative) `0x6e72c8...83c7b8` — deployed 2024-06-06 16:32:47+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4a5b40...da67d1` — deployed 2024-07-18 04:20:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x549485...87ce34` — deployed 2024-06-06 16:34:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x94fe82...fd7830` — deployed 2024-07-18 04:20:11+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9c5d3c...620ad9` — deployed 2024-06-06 16:35:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x106825...cf292a` — deployed 2024-06-06 16:33:23+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2f1c60...5bc224` — deployed 2024-06-06 16:36:23+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa (May 2024).pdf | SpotOracle | unmatched — not counted | — | Context in findings M-1, M-3 | no |
| Audit Report - Sofa (May 2024).pdf | HlOracle | unmatched — not counted | — | Context in finding M-3 | no |
| Audit Report - Sofa (May 2024).pdf | FeeCollector | ambiguous — not counted | FeeCollector (alternative) `0xec722a...05fa79` — deployed 2024-09-11 10:03:25+03 — liveness: live (current_address_book_code)<br>FeeCollector (alternative) `0x4140ab...6509b5` — deployed 2024-06-06 16:12:59+03 — liveness: live (code_present_context)<br>FeeCollector (alternative) `0x4bd6be...0e032f` — deployed 2024-06-06 12:21:41+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Audit Report - Sofa (May 2024).pdf | MerkleAirdrop | unmatched — not counted | — | Context in finding I-1 | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x909332...59a14d` | AutomatorBurner | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x438b59...be720b` | AutomatorFactory | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1893b7...6e5aff` | AutomatorFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x267adc...10cf8c` | CrvUSDAutomator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x31d22b...c1bf8a` | CrvUSDAutomator | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x9832e7...8f6cfa` | CrvUSDSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x3a2538...5d68b2` | DNTVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xbefb3a...5b2b86` | DNTVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4140ab...6509b5` | DNTVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x4140ab...6509b5` | FeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xec722a...05fa79` | FeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x4bd6be...0e032f` | FeeCollector | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x322665...4ba9d1` | FeeCollectorSimple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x6a7f97...e9d563` | FeeCollectorSimple | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x507525...74e746` | LeverageDNTVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x1d2faa...067873` | LeverageDNTVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x071e0c...e1feed` | LeverageSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x53b4b7...918bc5` | LeverageSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x0243cb...c51583` | LeverageSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x307999...47dc1a` | RCHAutomatorFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x53ee67...0387a3` | RCHDNTVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x13ef70...dd6cfa` | RCHSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x08c57a...da7ed8` | SmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x106825...cf292a` | SmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x141b89...72bc65` | StETHDNTVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x601478...463f06` | StETHLeverageDNTVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x1361fa...db4366` | StETHLeverageSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x22d620...35ae69` | StETHSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x2b9aea...3bb6b4` | StRCH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0x893b33...f0ba08` | ZenRCH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 57 |
| upstream | 17 |
| standard_library | 4 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Address-book scope dispositions: 4 own (3 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 37 ambiguous, 19 unmatched
- Matched-own operational status: 4 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=8
- Match method counts: unique_name=5

Zero-match audit list:

- [2824] PeckShield-Audit-Report-Sofa-v1.0.pdf
- [2826] Audit Report - Sofa (May 2024).pdf
- [2828] Zenith Audit Report - Sofa Automator 2.0.pdf
- [2832] Zenith Audit Report - Sofa Automator 2.0.pdf
- [2833] Audit Report - Sofa (May 2024).pdf
- [15344] Zenith Audit Report - Sofa Automator 2.0.pdf
- [15345] Audit Report - Sofa (May 2024).pdf

Fork inheritance lineage and inherited audits are included when available.
