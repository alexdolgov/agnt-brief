# Agentic Audit Brief: SOFA.org

## Project Overview

- Project: SOFA.org (`sofa.org`)
- Website: [https://www.sofa.org](https://www.sofa.org)
- Lifecycle: unknown
- Generated: 2026-07-04T14:53:56.461Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, bsc, ethereum, polygon, sei
- Contract surface: 65 unique implementations (235 raw deployments)
- DeFi Llama TVL: $1,882,136.55
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Options. Structurally: 27 project-authored contract(s) across 5 chain(s); 5 ERC20 tokens, 4 ERC1155 multi-tokens; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 6 functional families. Its contracts share 1 common project-authored base contract(s) (signaturebitmap). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 271; live-surface contracts included: 208 (192 live, 16 unknown).
- Excluded by liveness: 63 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 9/35 (25.7%)
- Deployed-live implementations: 51 of 65 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 15/51
- Verified + Unaudited implementations: 36
- Verified by bytecode match: 0
- Unverified implementations: 14
- Unique implementations: 65
- Raw deployments: 235
- Audits discovered: 11 (11 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 11
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-01 (aging)
- Audit staleness (calendar age): 0 fresh, 6 aging, 5 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 14 match-unverified
- Tier 1 coverage: 11.4% (Code4rena)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| yAudit | Tier 2 | 15 | 29.4% | 2025-01 |
| Code4rena | Tier 1 | 7 | 13.7% | 2025-01 |
| PeckShield | Tier 2 | 4 | 7.8% | 2024-04 |

## Contract Surface

### ✅ Verified + Audited (15)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AAVEDNTVault | core_logic | ethereum | n/a | 2 deployments: ethereum [`0x00aeca...45ab19`](./contracts/ethereum-1/0x00aeca021d0f06c7dee54d58ee6af47b5645ab19/); ethereum `0x989897...cb84e3` | ✅ Audited |
| AAVESmartTrendVault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x21f759...52efdc`](./contracts/ethereum-1/0x21f759bcb31739032a00b37e3560a216ae52efdc/); ethereum `0x3191a0...703f8c`; ethereum `0xc9aa26...dae931`; ethereum `0xe483d5...bd2263` | ✅ Audited |
| AAVESmartTrendVault | core_logic | ethereum | n/a | 4 deployments: ethereum [`0x62104e...a4f212`](./contracts/ethereum-1/0x62104e40fa81a19f2b7e17c78c3ffbf4aca4f212/); ethereum `0x9377f1...820529`; ethereum `0x99c59d...d509ca`; ethereum `0xf6c70b...b683a6` | ✅ Audited |
| AAVESmartTrendVault | unknown | bsc | n/a | 4 deployments: bsc [`0x457338...f3e81d`](./contracts/bsc-56/0x4573382a9d101eb6dfa1c4b448f939c41ff3e81d/); bsc `0x5dcefc...d83701`; bsc `0x842e97...34656a`; bsc `0x89c82d...43ea22` | ✅ Audited |
| AAVESmartTrendVault | core_logic | polygon | n/a | 4 deployments: polygon [`0x467067...40a7da`](./contracts/polygon-137/0x46706780749bc41e7ab99d13bc1b2a74df40a7da/); polygon `0x4fd90c...a1c021`; polygon `0x842e97...34656a`; polygon `0x89c82d...43ea22` | ✅ Audited |
| AAVESmartTrendVault | unknown | sei | n/a | 4 deployments: sei [`0x088dbb...03d7d9`](./contracts/sei-1329/0x088dbbeec1489c557f8d4fd6146e0590e303d7d9/); sei `0x634b69...b478b5`; sei `0x64bb27...882ff3`; sei `0xfff0d0...1dfb0d` | ✅ Audited |
| Automator | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x0338c2...c5c6c1`](./contracts/arbitrum-42161/0x0338c2d1908549f4fcbca9da84039de1bac5c6c1/); arbitrum `0x4c2414...073cdb` | ✅ Audited |
| AutomatorFactory | registry | arbitrum | n/a | 3 deployments: ethereum `0x438b59...be720b`; sei `0x641708...ea645b`; arbitrum [`0x1893b7...6e5aff`](./contracts/arbitrum-42161/0x1893b75a9711e1c84be86a81edc7f2929d6e5aff/) | ✅ Audited |
| DNTVault | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0x4140ab...6509b5`](./contracts/arbitrum-42161/0x4140ab4afc36b93270a9659bd8387660cc6509b5/); arbitrum `0x7ecd1b...dbe2b0`; arbitrum `0xdfeb34...c26c42` | ✅ Audited |
| FeeCollector | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4140ab...6509b5`](./contracts/ethereum-1/0x4140ab4afc36b93270a9659bd8387660cc6509b5/); arbitrum `0x4bd6be...0e032f` | ✅ Audited |
| LeverageDNTVault | unknown | arbitrum | n/a | 5 deployments: arbitrum [`0x1d2faa...067873`](./contracts/arbitrum-42161/0x1d2faad42cbf3dc121659d856a9a405ed1067873/); arbitrum `0x3fe4fd...aeede3`; arbitrum `0x6f4dbc...c92e50`; arbitrum `0xa8fcc1...fe04ab`; arbitrum `0xbefb3a...5b2b86` | ✅ Audited |
| LeverageSmartTrendVault | unknown | arbitrum | n/a | 11 deployments: arbitrum [`0x0243cb...c51583`](./contracts/arbitrum-42161/0x0243cb49228c95dcb6cb13770417ab9528c51583/); arbitrum `0x08c57a...da7ed8`; arbitrum `0x262ba0...00109e`; arbitrum `0x35383c...f3b431`; arbitrum `0x4a5b40...da67d1`; arbitrum `0x7e11ce...e81cde`; arbitrum `0x8e882a...d2f3f9`; arbitrum `0x94fe82...fd7830`; arbitrum `0xa76ee9...a6ef96`; arbitrum `0xf7be09...134eac`; arbitrum `0xfa49f8...0e7770` | ✅ Audited |
| MerkleAirdrop | operational_periphery | ethereum | n/a | [`0x5a8cdd...553270`](./contracts/ethereum-1/0x5a8cdda6ca37b284b32ef8d513ef71ddac553270/) | ✅ Audited |
| RCH | unknown | ethereum | n/a | [`0x57b96d...bf11af`](./contracts/ethereum-1/0x57b96d4af698605563a4653d882635da59bf11af/) | ✅ Audited |
| SmartTrendVault | core_logic | arbitrum | n/a | 5 deployments: arbitrum [`0x00aeca...45ab19`](./contracts/arbitrum-42161/0x00aeca021d0f06c7dee54d58ee6af47b5645ab19/); arbitrum `0x106825...cf292a`; arbitrum `0x4f1b51...5b0479`; arbitrum `0x6e72c8...83c7b8`; arbitrum `0x989897...cb84e3` | ✅ Audited |

### ⚠️ Verified + Unaudited (36)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AAVEDNTVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1f519b...ff5e39`](./contracts/ethereum-1/0x1f519b172917cfd6b7a69ef9d37e13ac7dff5e39/); ethereum `0x20a826...3b9e14` | ⚠️ Unaudited |
| AAVEDNTVault | unknown | arbitrum | n/a | 2 deployments: arbitrum [`0x3a2538...5d68b2`](./contracts/arbitrum-42161/0x3a253838121b9ad9736fafc030cf4971615d68b2/); arbitrum `0xd9cff1...71370a` | ⚠️ Unaudited |
| AAVEDNTVault | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x3abc70...2eca80`](./contracts/arbitrum-42161/0x3abc7053ec29e26c1429195fd971f280422eca80/); arbitrum `0x75809d...cd0cbf`; arbitrum `0x8f9259...ed0706`; arbitrum `0xa5492b...c08651` | ⚠️ Unaudited |
| AAVEDualVault | core_logic | ethereum | n/a | [`0x7df81f...3b32ad`](./contracts/ethereum-1/0x7df81fdd4b995b31624f3d6662d547ac313b32ad/) | ⚠️ Unaudited |
| AAVESmartTrendVault | unknown | sei | n/a | 4 deployments: sei [`0x00aeca...45ab19`](./contracts/sei-1329/0x00aeca021d0f06c7dee54d58ee6af47b5645ab19/); sei `0x4f1b51...5b0479`; sei `0x6e72c8...83c7b8`; sei `0x989897...cb84e3` | ⚠️ Unaudited |
| AAVESmartTrendVault | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x1e5a68...d6c28c`](./contracts/arbitrum-42161/0x1e5a684d263f42bac1f2bad6fb379277d4d6c28c/); arbitrum `0x770f7f...9c0672`; arbitrum `0x986fa0...4ed160`; arbitrum `0xbf898c...060560` | ⚠️ Unaudited |
| AAVESmartTrendVault | unknown | arbitrum | n/a | 4 deployments: arbitrum [`0x2f1c60...5bc224`](./contracts/arbitrum-42161/0x2f1c60ba96ec6925fa9bbbfc9eb7908bd35bc224/); arbitrum `0x72e090...2869c3`; arbitrum `0x9377f1...820529`; arbitrum `0x9c5d3c...620ad9` | ⚠️ Unaudited |
| AAVESmartTrendVault | unknown | arbitrum | n/a | 8 deployments: arbitrum [`0x3d407e...2bb97c`](./contracts/arbitrum-42161/0x3d407e582aa504ac9e8417098807c1e10f2bb97c/); arbitrum `0x3f4dce...13c773`; arbitrum `0x471358...1173cc`; arbitrum `0xbfd58c...8416fe`; arbitrum `0xcb7c53...bc87ad`; arbitrum `0xddaa9d...3e3cc1`; arbitrum `0xf1485c...c72ffc`; arbitrum `0xf82491...a230f0` | ⚠️ Unaudited |
| CrvUSDDualVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x060c23...bf76d3`](./contracts/ethereum-1/0x060c233146eaed1eff8bef320aaa224377bf76d3/); ethereum `0xeecacc...ba162c` | ⚠️ Unaudited |
| CrvUSDSmartTrendVault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x9832e7...8f6cfa`](./contracts/ethereum-1/0x9832e7e40d5a1495ca7bdbcd6a5c0a90d28f6cfa/); ethereum `0x995954...034aa1`; ethereum `0xf421b0...324487`; ethereum `0xf5bf8a...408d9f`; ethereum `0xfa19cf...7e06e5` | ⚠️ Unaudited |
| DNTVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x3a2538...5d68b2`](./contracts/ethereum-1/0x3a253838121b9ad9736fafc030cf4971615d68b2/); ethereum `0xd9cff1...71370a`; ethereum `0xdfeb34...c26c42` | ⚠️ Unaudited |
| DNTVault | unknown | ethereum | n/a | 4 deployments: ethereum [`0xbefb3a...5b2b86`](./contracts/ethereum-1/0xbefb3aad1dfb1660444f0d76a91261ef755b2b86/); ethereum `0xbfd58c...8416fe`; ethereum `0xf1485c...c72ffc`; ethereum `0xf82491...a230f0` | ⚠️ Unaudited |
| DualVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3400f3...febdbb`](./contracts/ethereum-1/0x3400f3a1822e17db576fe9bba4774123a5febdbb/); ethereum `0x4de9d9...5fd43c` | ⚠️ Unaudited |
| LeverageDNTVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x507525...74e746`](./contracts/ethereum-1/0x50752522d249230fe60c855098bb4a7a0974e746/); ethereum `0x8ea01d...77df0f`; ethereum `0xf4a602...d27d02` | ⚠️ Unaudited |
| LeverageSmartTrendVault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x071e0c...e1feed`](./contracts/ethereum-1/0x071e0c2be2b16c8b00173c6535ef8331b8e1feed/); ethereum `0x3abc70...2eca80`; ethereum `0x57f841...536932`; ethereum `0x8ea963...5f5211`; ethereum `0x8f9259...ed0706` | ⚠️ Unaudited |
| LeverageSmartTrendVault | unknown | bsc | n/a | 5 deployments: bsc [`0x40144b...5ad9cf`](./contracts/bsc-56/0x40144bc227f78a288fe9ae6f4c7389c92c5ad9cf/); bsc `0x41df07...a84776`; bsc `0x53b4b7...918bc5`; bsc `0xab08ff...4a4c97`; bsc `0xd0fb79...7a3a05` | ⚠️ Unaudited |
| LeverageSmartTrendVault | unknown | polygon | n/a | 6 deployments: polygon [`0x40144b...5ad9cf`](./contracts/polygon-137/0x40144bc227f78a288fe9ae6f4c7389c92c5ad9cf/); polygon `0x41df07...a84776`; polygon `0x457338...f3e81d`; polygon `0x53b4b7...918bc5`; polygon `0x5dcefc...d83701`; polygon `0xd0fb79...7a3a05` | ⚠️ Unaudited |
| ProxyAdmin | unknown | bsc | n/a | 7 deployments: ethereum `0xfa24b9...b70089`; bsc [`0x4fd90c...a1c021`](./contracts/bsc-56/0x4fd90c6b2a81d65a10e366dc5051d4d1a2a1c021/); polygon `0x57b96d...bf11af`; sei `0x89c82d...43ea22`; sei `0xa9e233...df0942`; sei `0xd9cff1...71370a`; arbitrum `0x5a8cdd...553270` | ⚠️ Unaudited |
| RCHAutomatorFactory | registry | ethereum | n/a | [`0x307999...47dc1a`](./contracts/ethereum-1/0x3079993b5be4d18d504a6e58939ac6637d47dc1a/) | ⚠️ Unaudited |
| RCHDNTVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x53ee67...0387a3`](./contracts/ethereum-1/0x53ee67c562a7e933679425e6c0070e2b810387a3/); ethereum `0xcba5c0...e953b6`; ethereum `0xe51777...94499d` | ⚠️ Unaudited |
| RCHDualVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x51df98...f2c395`](./contracts/ethereum-1/0x51df98cbbc8173cd207597f9eca0f8f65ff2c395/); ethereum `0x5354c5...9be18b` | ⚠️ Unaudited |
| RCHSmartTrendVault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x13ef70...dd6cfa`](./contracts/ethereum-1/0x13ef7013e98197ef850969a21ef1b42e71dd6cfa/); ethereum `0x4cfc3a...173123`; ethereum `0xc0baa3...791f38`; ethereum `0xf07d6b...9d77a7`; ethereum `0xfce590...c1749e` | ⚠️ Unaudited |
| RebaseSmartTrendVault | unknown | ethereum | n/a | 9 deployments: ethereum [`0x26e9aa...bd946b`](./contracts/ethereum-1/0x26e9aa240070d37c109e976b688e9b05c6bd946b/); ethereum `0x4a42a3...c057f2`; ethereum `0x550cce...91d2c2`; ethereum `0x622ccb...175ffd`; ethereum `0x69bd97...d5af6e`; ethereum `0x81ed11...029452`; ethereum `0xa86dc0...cd89a2`; ethereum `0xbbd734...f297f4`; ethereum `0xe8f4ce...497968` | ⚠️ Unaudited |
| RebaseSmartTrendVault | unknown | bsc | n/a | 7 deployments: bsc [`0x084ca8...40e712`](./contracts/bsc-56/0x084ca8e8690e3e8fe0bd4836c90b4107cd40e712/); bsc `0x6779e7...514c65`; bsc `0x71a170...18381f`; bsc `0x72f25a...10feca`; bsc `0x9b9b91...dd8a8b`; bsc `0xa0fa94...fbcc35`; bsc `0xcd0e48...bae742` | ⚠️ Unaudited |
| RebaseSmartTrendVault | unknown | arbitrum | n/a | 13 deployments: arbitrum [`0x091880...ff7e5f`](./contracts/arbitrum-42161/0x091880b51225fb6b1935be8a71fb47502bff7e5f/); arbitrum `0x09ccc2...aaad4e`; arbitrum `0x3a129b...5f0e86`; arbitrum `0x3d5489...37c049`; arbitrum `0x40e439...385e93`; arbitrum `0x68c91d...6af1e7`; arbitrum `0x6c18e7...460fb3`; arbitrum `0x8b8018...cbdbd3`; arbitrum `0xc914ba...7943eb`; arbitrum `0xd1c852...d1fbd1`; arbitrum `0xe05355...72d61c`; arbitrum `0xe4df80...e75933`; arbitrum `0xe5e973...c9dc94` | ⚠️ Unaudited |
| SimpleSmartTrendVault | unknown | ethereum | n/a | 13 deployments: ethereum [`0x2bdbdb...d0706a`](./contracts/ethereum-1/0x2bdbdb994fb7e7772eaa16ccc41430e095d0706a/); ethereum `0x362950...0379a0`; ethereum `0x397c32...7ff282`; ethereum `0x4a1bc9...4e4f40`; ethereum `0x5e5e68...b80e5c`; ethereum `0x6d05eb...733f67`; ethereum `0x829f43...dd1184`; ethereum `0x9c3386...0cf043`; ethereum `0xce8ec0...1edc51`; ethereum `0xd4c30f...c19da4`; ethereum `0xde417e...9b61a0`; ethereum `0xe02a2c...9d8155`; ethereum `0xfeb044...b95fdf` | ⚠️ Unaudited |
| SmartTrendVault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x08c57a...da7ed8`](./contracts/ethereum-1/0x08c57ae48a89b6876a76dc618972ef1602da7ed8/); ethereum `0x1d2faa...067873`; ethereum `0x4a5b40...da67d1`; ethereum `0x94fe82...fd7830`; ethereum `0xfa49f8...0e7770` | ⚠️ Unaudited |
| SmartTrendVault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x106825...cf292a`](./contracts/ethereum-1/0x106825b71cce77a70b69f57a0acf9c4a6acf292a/); ethereum `0x2f1c60...5bc224`; ethereum `0x549485...87ce34`; ethereum `0x6e72c8...83c7b8`; ethereum `0x9c5d3c...620ad9` | ⚠️ Unaudited |
| StETHDNTVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x141b89...72bc65`](./contracts/ethereum-1/0x141b893e4ae446e634e92116000e54d7fc72bc65/); ethereum `0x2b7b93...3638b7`; ethereum `0xc0f6d3...a780c1` | ⚠️ Unaudited |
| StETHLeverageDNTVault | unknown | ethereum | n/a | 3 deployments: ethereum [`0x601478...463f06`](./contracts/ethereum-1/0x6014784fc074706ab810130f77135bfb24463f06/); ethereum `0xa5a79c...271767`; ethereum `0xd94a2b...cdec71` | ⚠️ Unaudited |
| StETHLeverageSmartTrendVault | unknown | ethereum | n/a | 5 deployments: ethereum [`0x1361fa...db4366`](./contracts/ethereum-1/0x1361fa1398c22d6644dcc1aa619f1b84f6db4366/); ethereum `0x36ac03...8e0629`; ethereum `0x858af7...353f2c`; ethereum `0xa06558...e72178`; ethereum `0xb8610f...e1a0a5` | ⚠️ Unaudited |
| StETHSmartTrendVault | unknown | ethereum | n/a | 7 deployments: ethereum [`0x09df17...e4ff6f`](./contracts/ethereum-1/0x09df1703f353a3345261359a43a210448ae4ff6f/); ethereum `0x22d620...35ae69`; ethereum `0x4f8abb...95b793`; ethereum `0x5bbeb8...be2368`; ethereum `0xbeb059...da4540`; ethereum `0xe497ba...385aa3`; ethereum `0xf2a7d9...2cfe71` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | bsc | n/a | 3 deployments: bsc [`0x467067...40a7da`](./contracts/bsc-56/0x46706780749bc41e7ab99d13bc1b2a74df40a7da/); bsc `0x4fbc67...5d36f5`; bsc `0x72ece8...e6bf13` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sei | n/a | 5 deployments: sei [`0x0c11a7...d26257`](./contracts/sei-1329/0x0c11a73ae97a68388d1034662c914b022ed26257/); sei `0x4bd6be...0e032f`; sei `0x898f1b...4be286`; sei `0xaa7764...74503f`; sei `0xd812f2...91e79d` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | sei | n/a | 5 deployments: sei [`0x457338...f3e81d`](./contracts/sei-1329/0x4573382a9d101eb6dfa1c4b448f939c41ff3e81d/); sei `0x467067...40a7da`; sei `0x4fd90c...a1c021`; sei `0x5dcefc...d83701`; sei `0x842e97...34656a` | ⚠️ Unaudited |
| ZenRCH | unknown | ethereum | n/a | [`0x893b33...f0ba08`](./contracts/ethereum-1/0x893b33977395642039de1b04a0cc788b4af0ba08/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (14)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x467067...40a7da` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x842e97...34656a` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x10b7d8...215ab8` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0x3e270e...1f7170` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xcb71ab...9567fc` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xd54cc1...346444` | ❓ Unverified |
| UnnamedContract | unknown | bsc | n/a | `0xf43ebd...57226a` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x57b96d...bf11af` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x6a7f97...e9d563` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x793080...0f83e5` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x97e10b...c786ab` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xec722a...05fa79` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x05a60a...fb4597` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x97e10b...c786ab` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [PeckShield-Audit-Report-Sofa-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-Sofa-v1.0.pdf) | PeckShield | Audit | 2024-04 | stale | Direct | contract_name | 4 | n/a |
| [Audit Report - Sofa (May 2024).pdf](https://github.com/zenith-security/reports/blob/main/reports/Audit%20Report%20-%20Sofa%20%28May%202024%29.pdf) | Code4rena | Contest | 2024-05 | stale | Direct | contract_name | 5 | n/a |
| [Audit Report - Sofa Automator(Oct 2024).pdf](https://github.com/zenith-security/reports/blob/main/reports/Audit%20Report%20-%20Sofa%20Automator%28Oct%202024%29.pdf) | Code4rena | Contest | 2024-10 | aging | Direct | contract_name | 1 | n/a |
| [Zenith Audit Report - Sofa Automator 2.0.pdf](https://github.com/zenith-security/reports/blob/main/reports/Zenith%20Audit%20Report%20-%20Sofa%20Automator%202.0.pdf) | Code4rena | Contest | 2025-01 | aging | Direct | contract_name | 3 | high |
| [Audit Report - Sofa Automator(Oct 2024).pdf](https://raw.githubusercontent.com/zenith-security/reports/985c60dd51497dfd8540cdc16bf243265ba154b5/reports/Audit%20Report%20-%20Sofa%20Automator(Oct%202024).pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | 1 | n/a |
| [Zenith Audit Report - Sofa Automator 2.0.pdf](https://raw.githubusercontent.com/zenith-security/reports/985c60dd51497dfd8540cdc16bf243265ba154b5/reports/Zenith%20Audit%20Report%20-%20Sofa%20Automator%202.0.pdf) | yAudit | Audit | 2025-01 | aging | Direct | contract_name | 3 | high |
| [Audit Report - Sofa (May 2024).pdf](https://raw.githubusercontent.com/zenith-security/reports/985c60dd51497dfd8540cdc16bf243265ba154b5/reports/Audit%20Report%20-%20Sofa%20(May%202024).pdf) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | 5 | n/a |
| [review.pdf](https://raw.githubusercontent.com/sigp/public-audits/48f7de362df66942a77e1dd5954b580f28ed367f/reports/sofa/review.pdf) | yAudit | Audit | 2024-06 | stale | Direct | contract_name | 12 | n/a |
| [Audit Report - Sofa Automator(Oct 2024).pdf](https://raw.githubusercontent.com/zenith-security/reports/84cd8bcd63d6a9e9f4385fa3f7aa87dca4c8c2fa/reports/Audit%20Report%20-%20Sofa%20Automator(Oct%202024).pdf) | yAudit | Audit | 2024-10 | aging | Direct | contract_name | 1 | n/a |
| [Zenith Audit Report - Sofa Automator 2.0.pdf](https://raw.githubusercontent.com/zenith-security/reports/84cd8bcd63d6a9e9f4385fa3f7aa87dca4c8c2fa/reports/Zenith%20Audit%20Report%20-%20Sofa%20Automator%202.0.pdf) | yAudit | Audit | 2025-01 | aging | Direct | contract_name | 1 | n/a |
| [Audit Report - Sofa (May 2024).pdf](https://raw.githubusercontent.com/zenith-security/reports/84cd8bcd63d6a9e9f4385fa3f7aa87dca4c8c2fa/reports/Audit%20Report%20-%20Sofa%20(May%202024).pdf) | yAudit | Audit | 2024-05 | stale | Direct | contract_name | 12 | n/a |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | [`0x060c23...bf76d3`](./contracts/ethereum-1/0x060c233146eaed1eff8bef320aaa224377bf76d3/) | CrvUSDDualVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x9832e7...8f6cfa`](./contracts/ethereum-1/0x9832e7e40d5a1495ca7bdbcd6a5c0a90d28f6cfa/) | CrvUSDSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3a2538...5d68b2`](./contracts/ethereum-1/0x3a253838121b9ad9736fafc030cf4971615d68b2/) | DNTVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0xbefb3a...5b2b86`](./contracts/ethereum-1/0xbefb3aad1dfb1660444f0d76a91261ef755b2b86/) | DNTVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x3400f3...febdbb`](./contracts/ethereum-1/0x3400f3a1822e17db576fe9bba4774123a5febdbb/) | DualVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x507525...74e746`](./contracts/ethereum-1/0x50752522d249230fe60c855098bb4a7a0974e746/) | LeverageDNTVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x071e0c...e1feed`](./contracts/ethereum-1/0x071e0c2be2b16c8b00173c6535ef8331b8e1feed/) | LeverageSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x40144b...5ad9cf`](./contracts/bsc-56/0x40144bc227f78a288fe9ae6f4c7389c92c5ad9cf/) | LeverageSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x40144b...5ad9cf`](./contracts/polygon-137/0x40144bc227f78a288fe9ae6f4c7389c92c5ad9cf/) | LeverageSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x307999...47dc1a`](./contracts/ethereum-1/0x3079993b5be4d18d504a6e58939ac6637d47dc1a/) | RCHAutomatorFactory | registry | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x53ee67...0387a3`](./contracts/ethereum-1/0x53ee67c562a7e933679425e6c0070e2b810387a3/) | RCHDNTVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x51df98...f2c395`](./contracts/ethereum-1/0x51df98cbbc8173cd207597f9eca0f8f65ff2c395/) | RCHDualVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x13ef70...dd6cfa`](./contracts/ethereum-1/0x13ef7013e98197ef850969a21ef1b42e71dd6cfa/) | RCHSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x26e9aa...bd946b`](./contracts/ethereum-1/0x26e9aa240070d37c109e976b688e9b05c6bd946b/) | RebaseSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x084ca8...40e712`](./contracts/bsc-56/0x084ca8e8690e3e8fe0bd4836c90b4107cd40e712/) | RebaseSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x091880...ff7e5f`](./contracts/arbitrum-42161/0x091880b51225fb6b1935be8a71fb47502bff7e5f/) | RebaseSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x2bdbdb...d0706a`](./contracts/ethereum-1/0x2bdbdb994fb7e7772eaa16ccc41430e095d0706a/) | SimpleSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x08c57a...da7ed8`](./contracts/ethereum-1/0x08c57ae48a89b6876a76dc618972ef1602da7ed8/) | SmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x106825...cf292a`](./contracts/ethereum-1/0x106825b71cce77a70b69f57a0acf9c4a6acf292a/) | SmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x141b89...72bc65`](./contracts/ethereum-1/0x141b893e4ae446e634e92116000e54d7fc72bc65/) | StETHDNTVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x601478...463f06`](./contracts/ethereum-1/0x6014784fc074706ab810130f77135bfb24463f06/) | StETHLeverageDNTVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x1361fa...db4366`](./contracts/ethereum-1/0x1361fa1398c22d6644dcc1aa619f1b84f6db4366/) | StETHLeverageSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x09df17...e4ff6f`](./contracts/ethereum-1/0x09df1703f353a3345261359a43a210448ae4ff6f/) | StETHSmartTrendVault | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x893b33...f0ba08`](./contracts/ethereum-1/0x893b33977395642039de1b04a0cc788b4af0ba08/) | ZenRCH | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 33 |
| upstream | 14 |
| standard_library | 4 |
| needs_review | 14 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 0
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=42, extraction_exact=6

Fork inheritance lineage and inherited audits are included when available.
