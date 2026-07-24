# Agentic Audit Brief: USDT0

## Export Authority

- Production state: **published scope**
- Raw selected rows: 11 across 8 audit(s)
- Eligible audit results: 20 (8 matched; 12 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e40c73181a386361babecc6895e0f6c5587548f92814db09f88491f8b4a38d92`

## Project Overview

- Project: USDT0 (`usdt0`)
- Website: [https://usdt0.to](https://usdt0.to)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, berachain, bsc, celo, ethereum, hyperliquid, ink, mantle, optimism, plasma, polygon, sei, unichain
- Contract surface: 132 unique implementations (219 raw deployments)
- Coverage basis: 6/41 confirmed own live verified implementations (14.6%); conservative 14.6% with 0 needs-review implementation(s)
- DeFi Llama TVL: $3,624,558,073.84
- On-chain TVL (included contracts): $42,178,136.11
- TVL by chain: Ethereum $18,884,287.59 | Arbitrum $11,220,961.08 | Polygon $8,860,735.08 | Celo $3,212,152.07 | Hyperliquid $0.30

## Project Description

This brief describes the observed EVM deployment and audit surface for USDT0. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 62 contract row(s) across arbitrum, avalanche, berachain, bsc, celo, ethereum, hyperliquid, ink, mantle, optimism, plasma, polygon, sei, unichain. Structural roles: 37 supporting, 17 unclassified, 8 core. 33 row(s) use upgradeable patterns.

## Logic Topography

- Exact-run contract rows: 62
- Structural roles: supporting (37), unclassified (17), core (8)
- Contract kinds: contract (62)
- Detected standards: erc1967proxy (32), ownable (4), erc165 (1), erc20 (1), erc20permit (1)
- Frameworks: openzeppelin (39), openzeppelin-upgradeable (19), layerzero (6)
- Upgradeable-pattern rows: 33

## Fork Analysis

0 of 56 contracts are derived from known codebases. 56 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- UnnamedContract (`0x57142977ba9826793398fbdec436284065187f49`, chain 43114)
- GnosisSafeProxy (`0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8`, chain 1329)
- GnosisSafeProxy (`0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8`, chain 5000)
- GnosisSafeProxy (`0x425d1d17c33bdc0615ea18d1b18cca7e14beeb58`, chain 80094)
- HyperLiquidComposer_V1 (`0x689f01244c1fc30c75a70f627fa8fa4d6fdc1802`, chain 999)
- HyperLiquidComposer_V1_FeeToken (`0x80123ab57c9bc0c452d6c18f92a653a4ee2e7585`, chain 999)
- MultiHopComposer (`0x759ba420bf1ded1765f18c2dc3fc57a1964a2ad1`, chain 42161)
- SafeProxy (`0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8`, chain 1)
- SafeProxy (`0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8`, chain 10)
- SafeProxy (`0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8`, chain 130)
- SafeProxy (`0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8`, chain 137)
- SafeProxy (`0xb64a89ad247a2d691a728bb6822a85eedd7fc541`, chain 999)
- SafeProxy (`0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8`, chain 9745)
- SafeProxy (`0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8`, chain 42161)
- TetherTokenOFTExtension (`0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff`, chain 1329)
- TransparentUpgradeableProxy (`0x68749665ff8d2d112fa859aa293f07a622782f38`, chain 1)
- TransparentUpgradeableProxy (`0x6c96de32cea08842dcc4058c14d3aaad7fa41dee`, chain 1)
- TransparentUpgradeableProxy (`0xb9c2321bb7d0db468f570d10a424d1cc8efd696c`, chain 1)
- TransparentUpgradeableProxy (`0x01bff41798a0bcf287b996046ca68b395dbc1071`, chain 10)
- TransparentUpgradeableProxy (`0xf03b4d9ac1d5d1e7c4cef54c2a313b9fe051a0ad`, chain 10)
- TransparentUpgradeableProxy (`0x21caef8a43163eea865baee23b9c2e327696a3bf`, chain 56)
- TransparentUpgradeableProxy (`0x53c3a64c8942288e12813c1f8457db45980bcfc2`, chain 56)
- TransparentUpgradeableProxy (`0x9151434b16b9763660705744891fa906f660ecc5`, chain 130)
- TransparentUpgradeableProxy (`0xc07be8994d035631c36fb4a89c918cefb2f03ec3`, chain 130)
- TransparentUpgradeableProxy (`0x5421cf4288d8007d3c43ac4246eafce5b049e352`, chain 137)
- TransparentUpgradeableProxy (`0x6ba10300f0dc58b7a1e4c0e41f5dabb7d7829e13`, chain 137)
- TransparentUpgradeableProxy (`0xf1815bd50389c46847f0bda824ec8da914045d14`, chain 137)
- TransparentUpgradeableProxy (`0x4e41cfc3f3b19e29e323d2c36f8f202a1e151daf`, chain 999)
- TransparentUpgradeableProxy (`0x904861a24f30ec96ea7cfc3be9ea4b476d237e98`, chain 999)
- TransparentUpgradeableProxy (`0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb`, chain 999)
- TransparentUpgradeableProxy (`0xf4d9235269a96aadafc9adae454a0618ebe37949`, chain 999)
- TransparentUpgradeableProxy (`0x56fe74a2e3b484b921c447357203431a3485cc60`, chain 1329)
- TransparentUpgradeableProxy (`0x9151434b16b9763660705744891fa906f660ecc5`, chain 1329)
- TransparentUpgradeableProxy (`0x779ded0c9e1022225f8e0630b35a9b54be713736`, chain 5000)
- TransparentUpgradeableProxy (`0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc`, chain 5000)
- TransparentUpgradeableProxy (`0x02ca37966753bdddf11216b73b16c1de756a7cf9`, chain 9745)
- TransparentUpgradeableProxy (`0x1b64b9025eebb9a6239575df9ea4b9ac46d4d193`, chain 9745)
- TransparentUpgradeableProxy (`0x63ab93cbc9d4ecd9c4947b1a38f458147c08e6f7`, chain 9745)
- TransparentUpgradeableProxy (`0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb`, chain 9745)
- TransparentUpgradeableProxy (`0x14e4a1b13bf7f943c8ff7c51fb60fa964a298d92`, chain 42161)
- TransparentUpgradeableProxy (`0x40461291347e1ecbb09499f3371d3f17f10d7159`, chain 42161)
- TransparentUpgradeableProxy (`0xf40542a7b66ad7c68c459ee3679635d2fdb6df39`, chain 42161)
- TransparentUpgradeableProxy (`0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9`, chain 42161)
- TransparentUpgradeableProxy (`0x2775d5105276781b4b85ba6ea6a6653beed1dd32`, chain 43114)
- TransparentUpgradeableProxy (`0x7e7866bc840aff9f517a49afdbfc9e7c7aba9a68`, chain 43114)
- TransparentUpgradeableProxy (`0x3dc96399109df5ceb2c226664a086140bd0379cb`, chain 80094)
- TransparentUpgradeableProxy (`0x779ded0c9e1022225f8e0630b35a9b54be713736`, chain 80094)
- UChildERC20Proxy (`0xc2132d05d31c914a87c6611c10748aeb04b58e8f`, chain 137)
- UnnamedContract (`0x0200c29006150606b650577bbe7b6248f58470c1`, chain 57073)
- UnnamedContract (`0x1cb6de532588fca4a21b7209de7c456af8434a65`, chain 57073)
- UnnamedContract (`0xa1be1572b4beef24f812efdc58bdc41d56a0dab2`, chain 57073)
- UnnamedContract (`0xc95de55ce5e93f788a1faab2a9c9503f51a5dae2`, chain 57073)
- UnnamedContract (`0xf50258d3c1dd88946c567920b986a12e65b50dac`, chain 57073)
- UsdtOFT (`0x1f748c76de468e9d11bd340fa9d5cbadf315dfb0`, chain 1)
- UsdtOFT (`0x77652d5aba086137b595875263fc200182919b92`, chain 42161)
- UsdtOFT (`0xf10e161027410128e63e75d0200fb6d34b2db243`, chain 42220)

## Contract Surface Quality

- Logic-topography rows: 62; live-surface rows included: 62 (62 live, 0 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 53/81 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 6/41 (14.6%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 46 own, 0 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 86 discovered implementations shown in the inventory but excluded from coverage (0 third-party/infra; 1 standard proxy/library)
- Proxy deployments represented within implementation groups: 50
- Confirmed-live implementations: 46 of 132 unique; 86 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 6/65
- Verified + Unaudited implementations: 57
- Verified by bytecode match: 2
- Unverified implementations: 67
- Unique implementations: 132
- Raw deployments: 219
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 8
- ASD (verified + unaudited TVL): $33,170,512.69
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 18 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 1 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 6 match-unverified
- Tier 1 coverage: 9.8% (ChainSecurity, OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| OpenZeppelin | Tier 1 | 4 | 6.2% | 2025-09 |
| Paladin | Tier 2 | 2 | 3.1% | 2025-01 |
| ChainSecurity | Tier 1 | 1 | 1.5% | 2025-03 |
| Guardian | Tier 2 | 1 | 1.5% | 2025-01 |
| TonTech | Tier 2 | 1 | 1.5% | 2025-07 |

## Contract Surface

### ✅ Verified + Audited (6)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| ArbitrumExtensionV2 | adapter | project_anchor | own_supporting | 1 | arbitrum | unit-260301 | `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` | ✅ Audited |
| MultiHopComposer | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-260257 | `0x759ba420bf1ded1765f18c2dc3fc57a1964a2ad1` | ✅ Audited |
| OAdapterUpgradeable | adapter | project_anchor | own_supporting | 1 | ethereum | unit-260285 | `0x6c96de32cea08842dcc4058c14d3aaad7fa41dee` | ✅ Audited |
| TetherToken | token | project_anchor | own_supporting | 1 | ethereum | unit-260283 | `0x68749665ff8d2d112fa859aa293f07a622782f38` | ✅ Audited |
| TetherTokenOFTExtension | adapter | project_anchor | own_supporting | 1 | berachain | unit-260311 | 2 deployments: berachain `0x1ec7df9e74be05cb5a456aca2dc1ac2cec9ab6a3`; berachain `0x779ded0c9e1022225f8e0630b35a9b54be713736` | ✅ Audited |
| UChildUSDT0 | token | project_anchor | own_supporting | 1 | polygon | unit-260298 | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | ✅ Audited |

### ⚠️ Verified + Unaudited (57)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UsdtOFT | token | project_anchor | own_supporting | 0 | ethereum | unit-260241 | `0x1f748c76de468e9d11bd340fa9d5cbadf315dfb0` | ⚠️ Unaudited |
| UsdtOFT | token | project_anchor | own_supporting | 0 | arbitrum | unit-260258 | `0x77652d5aba086137b595875263fc200182919b92` | ⚠️ Unaudited |
| ChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 4 deployments: polygon `0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39`; polygon `0x556f501cf8a43216df5bc9cc57eb04d4ffaa9e6d`; polygon `0x578360adf0bbb2f10ec9cec7ef89ef495511ed5f`; polygon `0x71b821aa52a49f32eed535fca6eb5aa130085978` | ⚠️ Unaudited |
| UsdtOFT | token | project_anchor | own_supporting | 0 | celo | unit-260259 | `0xf10e161027410128e63e75d0200fb6d34b2db243` | ⚠️ Unaudited |
| UsdtOFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x811ed79db9d34e83bdb73df6c3e07961cfb0d5c0`; celo `0x811ed79db9d34e83bdb73df6c3e07961cfb0d5c0` | ⚠️ Unaudited |
| UChildERC20Proxy | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | 2 deployments: polygon `0x313d009888329c9d1cf4f75ca3f32566335bd604`; polygon `0x5a2fdf906ada9353ebe496fa5d351b39f8908d19` | ⚠️ Unaudited |
| EQBOFT | token | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 3 deployments: hyperliquid `0x3ce8426dc0b90a36f0e20d7c2acaaf4578ad4e50`; hyperliquid `0x73e247faabf71a67afa8f75773139998464cac8c`; hyperliquid `0xb4484a64ad7dccb4e8cc89e84fe02140e42cefd1` | ⚠️ Unaudited |
| ChildChainManager | governance | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa` | ⚠️ Unaudited |
| ChildERC1155 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0c68c638235ee32657e8f720a23cec1bfc77c77` | ⚠️ Unaudited |
| ERC20Mock | token | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf1815bd50389c46847f0bda824ec8da914045d14` | ⚠️ Unaudited |
| FxChild | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8397259c983751daf40400790063935a11afa28a` | ⚠️ Unaudited |
| GnosisSafeL2 | governance | project_anchor | own_supporting | 1 | berachain | unit-260312 | `0x425d1d17c33bdc0615ea18d1b18cca7e14beeb58` | ⚠️ Unaudited |
| GnosisSafeProxy | governance | project_anchor | own_supporting | 0 | sei | unit-260250 | `0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8` | ⚠️ Unaudited |
| HyperLiquidComposer | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 2 deployments: hyperliquid `0x036afc9e3498ec863239e9e3f7eeb5af9c44484b`; hyperliquid `0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc` | ⚠️ Unaudited |
| HyperLiquidComposer_V1 | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 14 deployments: hyperliquid `0x11ae59271ece49223126e089100ed74c1ae13083`; hyperliquid `0x19d317814d3b77a0b087977dd07ed9f5960cabc2`; hyperliquid `0x2a661ae363300891339c4cac5321f29f5b90dd93`; hyperliquid `0x37f02738dcc08967a6eaec9a905d679ba20594df`; hyperliquid `0x40838078a2e39e5a90b2439ff081177b1d32bfd5`; hyperliquid `0x5bddd9947263bf3bdf5cf96ebab84f626d2dc486`; hyperliquid `0x5bfee52f5b0272184125993d41873be9d46dc280`; hyperliquid `0x62855e31a32145de8abf1a537c3ed88d12b82b58`; hyperliquid `0xc1c74bcf1bee765248816a2d93dd0d84648d4ffe`; hyperliquid `0xd9b7a23ba2ff80f2d61f96682a0f71220f3e04a6`; hyperliquid `0xe5aa9a77950929fbcc70650fa24299e35399d921`; hyperliquid `0xfa5c61c57dc478d5f3ddcc5185cb118414c5e756`; hyperliquid `0xfa616f43d2f6826d7bf07e05b8626e16e8fa8aae`; hyperliquid `0xfb67615bff54078322e758efbeb5db27fdf873d8` | ⚠️ Unaudited |
| HyperLiquidComposer_V1 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-260278 | `0x689f01244c1fc30c75a70f627fa8fa4d6fdc1802` | ⚠️ Unaudited |
| HyperLiquidComposer_V1_FeeToken | token | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | 3 deployments: hyperliquid `0x7a32202edec16a34e9996f2064acc39a90eb05a0`; hyperliquid `0xa1819918ba910d05c4332be09b43f1bc894a62eb`; hyperliquid `0xb120daaf44b9270375ac2a96cc6fca9603a8123a` | ⚠️ Unaudited |
| HyperLiquidComposer_V1_FeeToken | token | project_anchor | own_supporting | 0 | hyperliquid | unit-260279 | `0x80123ab57c9bc0c452d6c18f92a653a4ee2e7585` | ⚠️ Unaudited |
| HyperliquidExtension | adapter | project_anchor | own_supporting | 2 | hyperliquid | unit-260318 | 4 deployments: hyperliquid `0x4bb13347ce7cbf8884adb137aeda0355ef61b259`; hyperliquid `0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb`; hyperliquid `0xf4d9235269a96aadafc9adae454a0618ebe37949`; hyperliquid `0xf555a12bffaef20cc201a74ae6513cb4aadb34b9` | ⚠️ Unaudited |
| MaticWETH | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7ceb23fd6bc0add59e62ac25578270cff1b9f619` | ⚠️ Unaudited |
| OAdapterUpgradeable | adapter | project_anchor | own_supporting | 1 | ethereum | unit-260284 | `0xb9c2321bb7d0db468f570d10a424d1cc8efd696c` | ⚠️ Unaudited |
| OFTMock | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbc7f244e2b38657bd014a5f6f4e4ba1125c14b84` | ⚠️ Unaudited |
| OmniCounter | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | 2 deployments: ethereum `0x519639a31ace9bf7f9c2646531ec0fb4be9a063a`; ethereum `0xe87fb1e8e0deb5f5ac388965d202002cb7432f94` | ⚠️ Unaudited |
| OUpgradeable | proxy | project_anchor | own_supporting | 1 | optimism | unit-260288 | `0xf03b4d9ac1d5d1e7c4cef54c2a313b9fe051a0ad` | ⚠️ Unaudited |
| OUpgradeable | proxy | project_anchor | own_supporting | 1 | bsc | unit-260310 | 2 deployments: bsc `0x53c3a64c8942288e12813c1f8457db45980bcfc2`; bsc `0xded1660192d4d82e7c0b628ba556861edbb5cada` | ⚠️ Unaudited |
| OUpgradeable | proxy | project_anchor | own_core | 2 | bsc | n/a | 4 deployments: bsc `0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff`; bsc `0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc`; mantle `0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff`; mantle `0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc` | ⚠️ Unaudited |
| OUpgradeable | proxy | project_anchor | own_supporting | 1 | unichain | unit-260289 | `0xc07be8994d035631c36fb4a89c918cefb2f03ec3` | ⚠️ Unaudited |
| OUpgradeable | proxy | project_anchor | own_supporting | 1 | polygon | unit-260296 | `0x5421cf4288d8007d3c43ac4246eafce5b049e352` | ⚠️ Unaudited |
| OUpgradeable | proxy | project_anchor | own_supporting | 1 | polygon | unit-260297 | `0x6ba10300f0dc58b7a1e4c0e41f5dabb7d7829e13` | ⚠️ Unaudited |
| OUpgradeable | proxy | project_anchor | own_supporting | 1 | hyperliquid | unit-260319 | `0x4e41cfc3f3b19e29e323d2c36f8f202a1e151daf` | ⚠️ Unaudited |
| OUpgradeable | proxy | project_anchor | own_supporting | 1 | hyperliquid | unit-260320 | `0x904861a24f30ec96ea7cfc3be9ea4b476d237e98` | ⚠️ Unaudited |
| OUpgradeable | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | hyperliquid | n/a | 2 deployments: hyperliquid `0xad11a8beb98bbf61dbb1aa0f6d6f2ecd87b35afa`; hyperliquid `0xcd9a74e5fe451025e92b5b8f74117c6e275aa7c8` | ⚠️ Unaudited |
| OUpgradeable | proxy | project_anchor | own_supporting | 1 | sei | unit-260292 | `0x56fe74a2e3b484b921c447357203431a3485cc60` | ⚠️ Unaudited |
| OUpgradeable | proxy | project_anchor | own_supporting | 1 | plasma | unit-260316 | `0x02ca37966753bdddf11216b73b16c1de756a7cf9` | ⚠️ Unaudited |
| OUpgradeable | proxy | project_anchor | own_supporting | 1 | plasma | unit-260315 | `0x63ab93cbc9d4ecd9c4947b1a38f458147c08e6f7` | ⚠️ Unaudited |
| OUpgradeable | proxy | project_anchor | own_supporting | 1 | arbitrum | unit-260299 | `0x14e4a1b13bf7f943c8ff7c51fb60fa964a298d92` | ⚠️ Unaudited |
| OUpgradeable | proxy | project_anchor | own_supporting | 1 | arbitrum | unit-260303 | `0xf40542a7b66ad7c68c459ee3679635d2fdb6df39` | ⚠️ Unaudited |
| OUpgradeable | proxy | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 2 deployments: berachain `0x3224831b5f45c616f8accba907798c6236773772`; berachain `0x4970ea919f0073d4e7c4fa8ec1b8cefaaa0e8752` | ⚠️ Unaudited |
| OUpgradeable | proxy | project_anchor | own_supporting | 1 | berachain | unit-260313 | `0x3dc96399109df5ceb2c226664a086140bd0379cb` | ⚠️ Unaudited |
| Safe | unknown | project_anchor | own_supporting | 1 | ethereum | unit-260282 | `0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 1 | optimism | unit-260286 | `0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 1 | unichain | unit-260290 | `0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 1 | polygon | unit-260294 | `0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 1 | mantle | unit-260307 | `0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 1 | plasma | unit-260314 | `0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8` | ⚠️ Unaudited |
| SafeL2 | unknown | project_anchor | own_supporting | 1 | arbitrum | unit-260300 | `0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8` | ⚠️ Unaudited |
| SafeProxy | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-260280 | `0xb64a89ad247a2d691a728bb6822a85eedd7fc541` | ⚠️ Unaudited |
| SignatureChecker | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 3 deployments: polygon `0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf`; arbitrum `0xd9492653457a69e9f4987db43d7fa0112e620cb4`; avalanche `0x6d205337f45d6850c3c3006e28d5b52c8a432c35` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | project_anchor | own_supporting | 10 | optimism | unit-260287 | 24 deployments: optimism `0x01bff41798a0bcf287b996046ca68b395dbc1071`; optimism `0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb`; bsc `0x1ec7df9e74be05cb5a456aca2dc1ac2cec9ab6a3`; bsc `0x21caef8a43163eea865baee23b9c2e327696a3bf`; bsc `0x9151434b16b9763660705744891fa906f660ecc5`; unichain `0x01bff41798a0bcf287b996046ca68b395dbc1071`; unichain `0x9151434b16b9763660705744891fa906f660ecc5`; unichain `0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff`; polygon `0x6d205337f45d6850c3c3006e28d5b52c8a432c35`; polygon `0xe1ad845d93853fff44990ae0dcecd8575293681e`; polygon `0xf1815bd50389c46847f0bda824ec8da914045d14`; hyperliquid `0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf`; hyperliquid `0xd9492653457a69e9f4987db43d7fa0112e620cb4`; hyperliquid `0xe1ad845d93853fff44990ae0dcecd8575293681e`; hyperliquid `0xe9aba835f813ca05e50a6c0ce65d0d74390f7de7`; mantle `0x1ec7df9e74be05cb5a456aca2dc1ac2cec9ab6a3`; mantle `0x779ded0c9e1022225f8e0630b35a9b54be713736`; arbitrum `0x40461291347e1ecbb09499f3371d3f17f10d7159`; arbitrum `0x9001dbe4d68d36ab87923a2a9dfb0c745fd25001`; avalanche `0x2775d5105276781b4b85ba6ea6a6653beed1dd32`; avalanche `0x824d8fcdc36e81618377d140bec12c3b7e4e4cba`; avalanche `0xc6bc407706b7140ee8eef2f86f9504651b63e7f9`; avalanche `0xd9492653457a69e9f4987db43d7fa0112e620cb4`; avalanche `0xf1815bd50389c46847f0bda824ec8da914045d14` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | project_anchor | own_supporting | 1 | sei | unit-260293 | 2 deployments: sei `0x9151434b16b9763660705744891fa906f660ecc5`; sei `0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | project_anchor | own_supporting | 2 | plasma | unit-260317 (2 proxies) | 2 deployments: plasma `0x1b64b9025eebb9a6239575df9ea4b9ac46d4d193`; plasma `0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x779ded0c9e1022225f8e0630b35a9b54be713736` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | project_anchor | own_supporting | 1 | avalanche | unit-260304 | 2 deployments: avalanche `0x57142977ba9826793398fbdec436284065187f49`; avalanche `0x7e7866bc840aff9f517a49afdbfc9e7c7aba9a68` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | non_address_book | standard_proxy_or_library (excluded) | 1 | berachain | n/a | `0x476b0a565a8f1a9df7b520f9d4460f34b107c4df` | ⚠️ Unaudited |
| UChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x42243231fb4a64a5bcfc7f4b7a9ad92576804046` | ⚠️ Unaudited |
| USDCOFTAdapter | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x67480c30ff8cc128cf0250e25616857302df647f` | ⚠️ Unaudited |
| WOFTAdapterFactory | adapter | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x69bfc7b0deb166aa4341a2c7437956b13ea74d9f` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (2)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| OUpgradeable | unknown | non_address_book | non_address_book_inventory (excluded) | 1 | berachain | n/a | 3 deployments: unichain `0x63f2f03b44bbbd04483dbeb1b2615f6ef1116ad8`; unichain `0xf48e70a5149ca9a70086aec094cbf4f79dcd32e3`; berachain `0x4eee452c24ada19d2699c7c92cc630b5cad1d60b` | ⚠️ Unaudited (bytecode match) |
| ProxyAdmin | governance | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | 24 deployments: ethereum `0x8ad82b29261a9657a89a299dac3bfe01880778d4`; ethereum `0x943ed40709dfd0c30f25c458c54fcbb3b01ca66e`; optimism `0xe7cd86e13ac4309349f30b3435a9d337750fc82d`; bsc `0x01bff41798a0bcf287b996046ca68b395dbc1071`; bsc `0xedaba024be4d87974d5ab11c6dd586963cccb027`; bsc `0xf555a12bffaef20cc201a74ae6513cb4aadb34b9`; unichain `0x818861321540148dbf6058d585cc0427f273c97a`; unichain `0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc`; polygon `0xd9492653457a69e9f4987db43d7fa0112e620cb4`; hyperliquid `0x6d205337f45d6850c3c3006e28d5b52c8a432c35`; hyperliquid `0x779ded0c9e1022225f8e0630b35a9b54be713736`; hyperliquid `0x880f614c729c622c727f3625b263a36c0b89167f`; hyperliquid `0xb1eead6959cb5bb9b20417d6689922523b2b86c3`; hyperliquid `0xd8cf92e9b6fae6b32f795acb11edd50e8dd6ff4d`; sei `0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc`; mantle `0x01bff41798a0bcf287b996046ca68b395dbc1071`; mantle `0xf555a12bffaef20cc201a74ae6513cb4aadb34b9`; plasma `0x3224831b5f45c616f8accba907798c6236773772`; plasma `0x5be536efb28c8efbd2da6894996f5df88347d8b2`; plasma `0x779ded0c9e1022225f8e0630b35a9b54be713736`; avalanche `0xf8b07fc6924b80e4792aca834309e03caf36cd80`; berachain `0xdbbf435a45c63f7f4371fa782e72913726e9728c`; berachain `0xdfb6f25524e8233f285702cbcc5cbdb5b4718f79`; berachain `0xf555a12bffaef20cc201a74ae6513cb4aadb34b9` | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (67)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x00000000000000000000000000000000009ce723` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x01bff41798a0bcf287b996046ca68b395dbc1071` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0200c29006150606b650577bbe7b6248f58470c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x02ca37966753bdddf11216b73b16c1de756a7cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x06d886ff518b5e642e7e6aad3ce797b7dabd8e9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x14e4a1b13bf7f943c8ff7c51fb60fa964a298d92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1a594d5d5d1c426281c1064b07f23f57b2716b61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1b64b9025eebb9a6239575df9ea4b9ac46d4d193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x1cb6de532588fca4a21b7209de7c456af8434a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x21caef8a43163eea865baee23b9c2e327696a3bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2775d5105276781b4b85ba6ea6a6653beed1dd32` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3dc96399109df5ceb2c226664a086140bd0379cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3e10cfc7cc74cd87ad524373b7307c72667a0597` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x3f82943338a8a76c35bfa0c1828aa27fd43a34e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x40461291347e1ecbb09499f3371d3f17f10d7159` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x425d1d17c33bdc0615ea18d1b18cca7e14beeb58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4e41cfc3f3b19e29e323d2c36f8f202a1e151daf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x53c3a64c8942288e12813c1f8457db45980bcfc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x5421cf4288d8007d3c43ac4246eafce5b049e352` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x567287d2a9829215a37e3b88843d32f9221e7588` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x56fe74a2e3b484b921c447357203431a3485cc60` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x57d798f9d3b014bac81a6b9fb3c18c0242a9411e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x63ab93cbc9d4ecd9c4947b1a38f458147c08e6f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x689f01244c1fc30c75a70f627fa8fa4d6fdc1802` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ae078461f35c3cc216a71029f71ee7bc4d9a10b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x6ba10300f0dc58b7a1e4c0e41f5dabb7d7829e13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x759ba420bf1ded1765f18c2dc3fc57a1964a2ad1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x77652d5aba086137b595875263fc200182919b92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x789498616f3bb9f8df52288a9311247028872105` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7916ac895d7180de50d1fca0eaeb6c7f6dfb8675` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x7e7866bc840aff9f517a49afdbfc9e7c7aba9a68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x80123ab57c9bc0c452d6c18f92a653a4ee2e7585` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x904861a24f30ec96ea7cfc3be9ea4b476d237e98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x9151434b16b9763660705744891fa906f660ecc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x94bcca6bdfd6a61817ab0e960bfede4984505554` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1438c6982849a2a30270ed32ee3779e3d05b024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xa1be1572b4beef24f812efdc58bdc41d56a0dab2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xacc6efbe554397b741baadecf0120780b858f5f4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb64a89ad247a2d691a728bb6822a85eedd7fc541` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc07be8994d035631c36fb4a89c918cefb2f03ec3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc1bc8b9001646ba0f87c1e493755972c625ace0c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc57efa1c7113d98bda6f9f249471704ece5dd84a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc95de55ce5e93f788a1faab2a9c9503f51a5dae2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd8479f87686ed263d00ca7505f86327dbed4171a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xdd19d41816042ad164d1394b6406abf04b2fc3df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe3119e23fc2371d1e6b01775ba312035425a53d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xe7cd86e13ac4309349f30b3435a9d337750fc82d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf03b4d9ac1d5d1e7c4cef54c2a313b9fe051a0ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf10e161027410128e63e75d0200fb6d34b2db243` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf40542a7b66ad7c68c459ee3679635d2fdb6df39` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf4d9235269a96aadafc9adae454a0618ebe37949` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xf50258d3c1dd88946c567920b986a12e65b50dac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x593a212dda19d70ade089da5ffcc65db5bfc905b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xee604bf71a0ff1ebd37633f91dfa61f651624672` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x4fcec14f93aa57230d8463efbcee068e6183ab0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | celo | n/a | `0x603b73af6dd931d78fa8b251405d14e76f72308a` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-260263 | `0x0200c29006150606b650577bbe7b6248f58470c1` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-260264 | `0x1cb6de532588fca4a21b7209de7c456af8434a65` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-260265 | `0xa1be1572b4beef24f812efdc58bdc41d56a0dab2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-260266 | `0xc95de55ce5e93f788a1faab2a9c9503f51a5dae2` | ❓ Unverified |
| UnnamedContract | unknown | project_anchor | own_supporting | 0 | ink | unit-260267 | `0xf50258d3c1dd88946c567920b986a12e65b50dac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x928b57f2ffeec340d05d19ba0cc634d4f812c577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcbafebee278374bdcf753d44255180a45f35efad` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 56
- Live contracts: 13
- Unknown liveness contracts: 43
- Source-verified contracts: 47
- Currently scope-matched contracts retained as-is: 0
- Classification counts: candidate review=24, candidate hard block=23, unverified unclassified=9

| Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|
| candidate review | OmniCounter<br>`0x519639a31ace9bf7f9c2646531ec0fb4be9a063a` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x45813da61888a9908938f40604a87eab8e608447` |
| candidate review | ProxyAdmin<br>`0xe7cd86e13ac4309349f30b3435a9d337750fc82d` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate review | TetherTokenOFTExtension<br>`0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb` | retained_scope_excluded_inventory | adapter | live | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate review | OUpgradeable<br>`0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate review | OUpgradeable<br>`0xded1660192d4d82e7c0b628ba556861edbb5cada` | retained_scope_excluded_inventory | proxy | live | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate review | TetherTokenOFTExtension<br>`0x9151434b16b9763660705744891fa906f660ecc5` | retained_scope_excluded_inventory | adapter | live | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate review | TransparentUpgradeableProxy<br>`0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate review | OUpgradeable<br>`0xf48e70a5149ca9a70086aec094cbf4f79dcd32e3` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate review | ProxyAdmin<br>`0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate review | TetherTokenOFTExtension<br>`0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff` | retained_scope_excluded_inventory | adapter | live | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate review | TransparentUpgradeableProxy<br>`0x63f2f03b44bbbd04483dbeb1b2615f6ef1116ad8` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate review | HyperLiquidComposer<br>`0x036afc9e3498ec863239e9e3f7eeb5af9c44484b` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate review | HyperLiquidComposer<br>`0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc` | non_address_book | unknown | unknown | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate review | HyperliquidExtension<br>`0xf555a12bffaef20cc201a74ae6513cb4aadb34b9` | retained_scope_excluded_inventory | adapter | live | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate review | ProxyAdmin<br>`0x779ded0c9e1022225f8e0630b35a9b54be713736` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate review | ProxyAdmin<br>`0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate review | OUpgradeable<br>`0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff` | retained_scope_excluded_inventory | proxy | live | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate review | TetherTokenOFTExtension<br>`0x1ec7df9e74be05cb5a456aca2dc1ac2cec9ab6a3` | retained_scope_excluded_inventory | adapter | live | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate review | OUpgradeable<br>`0x3224831b5f45c616f8accba907798c6236773772` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate review | ProxyAdmin<br>`0xdbbf435a45c63f7f4371fa782e72913726e9728c` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate review | ProxyAdmin<br>`0xf555a12bffaef20cc201a74ae6513cb4aadb34b9` | non_address_book | governance | unknown | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate review | TetherTokenOFTExtension<br>`0x1ec7df9e74be05cb5a456aca2dc1ac2cec9ab6a3` | retained_scope_excluded_inventory | adapter | live | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate review | TransparentUpgradeableProxy<br>`0x476b0a565a8f1a9df7b520f9d4460f34b107c4df` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate review | TransparentUpgradeableProxy<br>`0x4970ea919f0073d4e7c4fa8ec1b8cefaaa0e8752` | non_address_book | proxy | unknown | verified | review: no_fresh_structural_match | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| candidate hard block | ProxyAdmin<br>`0xd9492653457a69e9f4987db43d7fa0112e620cb4` | non_address_book | governance | unknown | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| candidate hard block | SignatureChecker<br>`0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| candidate hard block | TetherTokenOFTExtension<br>`0x6d205337f45d6850c3c3006e28d5b52c8a432c35` | retained_scope_excluded_inventory | adapter | live | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| candidate hard block | TetherTokenOFTExtension<br>`0xe1ad845d93853fff44990ae0dcecd8575293681e` | non_address_book | adapter | unknown | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| candidate hard block | HyperliquidExtension<br>`0x4bb13347ce7cbf8884adb137aeda0355ef61b259` | retained_scope_excluded_inventory | adapter | live | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| candidate hard block | OUpgradeable<br>`0xad11a8beb98bbf61dbb1aa0f6d6f2ecd87b35afa` | non_address_book | proxy | unknown | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| candidate hard block | ProxyAdmin<br>`0x6d205337f45d6850c3c3006e28d5b52c8a432c35` | non_address_book | governance | unknown | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| candidate hard block | ProxyAdmin<br>`0x880f614c729c622c727f3625b263a36c0b89167f` | non_address_book | governance | unknown | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| candidate hard block | ProxyAdmin<br>`0xb1eead6959cb5bb9b20417d6689922523b2b86c3` | non_address_book | governance | unknown | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| candidate hard block | ProxyAdmin<br>`0xd8cf92e9b6fae6b32f795acb11edd50e8dd6ff4d` | non_address_book | governance | unknown | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| candidate hard block | TetherTokenOFTExtension<br>`0xe1ad845d93853fff44990ae0dcecd8575293681e` | non_address_book | adapter | unknown | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| candidate hard block | TetherTokenOFTExtension<br>`0xe9aba835f813ca05e50a6c0ce65d0d74390f7de7` | non_address_book | adapter | unknown | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| candidate hard block | TransparentUpgradeableProxy<br>`0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf` | non_address_book | adapter | unknown | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| candidate hard block | TransparentUpgradeableProxy<br>`0xcd9a74e5fe451025e92b5b8f74117c6e275aa7c8` | non_address_book | proxy | unknown | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| candidate hard block | TransparentUpgradeableProxy<br>`0xd9492653457a69e9f4987db43d7fa0112e620cb4` | non_address_book | adapter | unknown | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| candidate hard block | SignatureChecker<br>`0xd9492653457a69e9f4987db43d7fa0112e620cb4` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| candidate hard block | TetherTokenOFTExtension<br>`0x9001dbe4d68d36ab87923a2a9dfb0c745fd25001` | retained_scope_excluded_inventory | adapter | live | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| candidate hard block | ProxyAdmin<br>`0xf8b07fc6924b80e4792aca834309e03caf36cd80` | non_address_book | governance | unknown | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| candidate hard block | SignatureChecker<br>`0x6d205337f45d6850c3c3006e28d5b52c8a432c35` | non_address_book | unknown | unknown | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| candidate hard block | TetherTokenOFTExtension<br>`0xc6bc407706b7140ee8eef2f86f9504651b63e7f9` | retained_scope_excluded_inventory | adapter | live | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| candidate hard block | TetherTokenOFTExtension<br>`0xd9492653457a69e9f4987db43d7fa0112e620cb4` | non_address_book | adapter | unknown | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| candidate hard block | TetherTokenOFTExtension<br>`0xf1815bd50389c46847f0bda824ec8da914045d14` | non_address_book | adapter | unknown | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| candidate hard block | TransparentUpgradeableProxy<br>`0x824d8fcdc36e81618377d140bec12c3b7e4e4cba` | non_address_book | adapter | unknown | verified | hard_block: cross_project_deployer_fanout:4 | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| unverified unclassified | UnnamedContract<br>`0x3e10cfc7cc74cd87ad524373b7307c72667a0597` | non_address_book | unknown | unknown | unverified | n/a | `0x45813da61888a9908938f40604a87eab8e608447` |
| unverified unclassified | UnnamedContract<br>`0xdd19d41816042ad164d1394b6406abf04b2fc3df` | non_address_book | unknown | unknown | unverified | n/a | `0x45813da61888a9908938f40604a87eab8e608447` |
| unverified unclassified | UnnamedContract<br>`0xee604bf71a0ff1ebd37633f91dfa61f651624672` | non_address_book | unknown | unknown | unverified | n/a | `0x45813da61888a9908938f40604a87eab8e608447` |
| unverified unclassified | UnnamedContract<br>`0x4fcec14f93aa57230d8463efbcee068e6183ab0a` | non_address_book | unknown | unknown | unverified | n/a | `0x45813da61888a9908938f40604a87eab8e608447` |
| unverified unclassified | UnnamedContract<br>`0x603b73af6dd931d78fa8b251405d14e76f72308a` | non_address_book | unknown | unknown | unverified | n/a | `0x45813da61888a9908938f40604a87eab8e608447` |
| unverified unclassified | UnnamedContract<br>`0x57142977ba9826793398fbdec436284065187f49` | retained_scope_excluded_inventory | unknown | live | unverified | n/a | `0x565786abe5ba0f9d307adfa681379f0788bedef7` |
| unverified unclassified | UnnamedContract<br>`0x4eee452c24ada19d2699c7c92cc630b5cad1d60b` | non_address_book | unknown | unknown | unverified | n/a | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| unverified unclassified | UnnamedContract<br>`0x928b57f2ffeec340d05d19ba0cc634d4f812c577` | non_address_book | unknown | unknown | unverified | n/a | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |
| unverified unclassified | UnnamedContract<br>`0xcbafebee278374bdcf753d44255180a45f35efad` | non_address_book | unknown | unknown | unverified | n/a | `0x1a6362ad64ccff5902d46d875b36e8798267d154` |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [2025-01-14_USDT0.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Guardian/2025-01-14_USDT0.pdf) | Guardian | Audit | 2025-01 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 5 | high |
| [ChainSecurity_USDT0_audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/ChainSecurity/ChainSecurity_USDT0_audit.pdf) | ChainSecurity | Audit | 2024-01 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [20250110_Paladin_Everdawn_Final_Report.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Paladin/20250110_Paladin_Everdawn_Final_Report.pdf) | Paladin | Audit | 2025-01 | aging | Direct | contract_name | matched | 2 | 2 | 0 | 9 | high |
| [ChainSecurity_USDT0_Arbitrum_v2_audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/ChainSecurity/ChainSecurity_USDT0_Arbitrum_v2_audit.pdf) | ChainSecurity | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [ChainSecurity_USDT0_Flare_audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/ChainSecurity/ChainSecurity_USDT0_Flare_audit.pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | address | matched | 1 | 1 | 0 | 5 | high |
| [ChainSecurity_USDT0_HyperLiquid_and_Stable_audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/ChainSecurity/ChainSecurity_USDT0_HyperLiquid_and_Stable_audit.pdf) | ChainSecurity | Audit | 2025-02 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [ChainSecurity_USDT0_Ink_audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/ChainSecurity/ChainSecurity_USDT0_Ink_audit.pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | address | matched | 1 | 0 | 0 | 5 | high |
| [Everdawn Deployment Assessment.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Openzeppelin/Everdawn%20Deployment%20Assessment.pdf) | OpenZeppelin | Audit | 2025-09 | fresh | Direct | contract_name | no match | 0 | 0 | 0 | 6 | high |
| [Everdawn USDT0 ERC-7802 Upgrade Audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Openzeppelin/Everdawn%20USDT0%20ERC-7802%20Upgrade%20Audit.pdf) | OpenZeppelin | Audit | 2025-03 | aging | Direct | contract_name | matched | 1 | 1 | 0 | 5 | high |
| [OneSig Audit 2.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Openzeppelin/OneSig%20Audit%202.pdf) | OpenZeppelin | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [OneSig Audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Openzeppelin/OneSig%20Audit.pdf) | OpenZeppelin | Audit | 2025-03 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [USDT0 Child Token Audit (1).pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Openzeppelin/USDT0%20Child%20Token%20Audit%20(1).pdf) | OpenZeppelin | Audit | 2025-05 | aging | Direct | n/a | matched | 1 | 1 | 0 | 1 | n/a |
| [USDT0 Transaction Helper Audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Openzeppelin/USDT0%20Transaction%20Helper%20Audit.pdf) | OpenZeppelin | Audit | 2025-04 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [USDT0_Audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Openzeppelin/USDT0_Audit.pdf) | OpenZeppelin | Audit | 2025-01 | aging | Direct | n/a | matched | 3 | 3 | 0 | 10 | n/a |
| [TON_OFT-Ottersec-23May2025.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/OtterSec/TON_OFT-Ottersec-23May2025.pdf) | OtterSec | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [lz_native_mesh_ton_evm_audit_final.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/OtterSec/lz_native_mesh_ton_evm_audit_final.pdf) | OtterSec | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [USDT0 Audit Report.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/TonTech/USDT0%20Audit%20Report.pdf) | TonTech | Audit | 2025-07 | aging | Direct | contract_name | matched | 1 | 0 | 0 | 59 | high |
| [Ethena_OFT-Zellic-16JAN2025.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Zellic/Ethena_OFT-Zellic-16JAN2025.pdf) | Zellic | Audit | 2025-01 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [TON_OFT-Zellic-19May2025.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Zellic/TON_OFT-Zellic-19May2025.pdf) | Zellic | Audit | 2025-05 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [usdt_native_mesh_1.1_upgrade_-_zellic_audit_report_draft-1.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Zellic/usdt_native_mesh_1.1_upgrade_-_zellic_audit_report_draft-1.pdf) | Zellic | Audit | 2025-06 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [14069] 2025-01-14_USDT0.pdf — matched: Contracts extracted from findings and scope sections. The report covers USDT0 OFT token on Ink, including OFTAdapterUpgradeable, OUpgradeable, OFTExtension, TetherTokenOFTExtension, SignatureChecker, and ERC20PermitUpgradeable.
- [14070] ChainSecurity_USDT0_audit.pdf — no match: Three contracts explicitly listed in scope section. Audit date from cover page.
- [14071] 20250110_Paladin_Everdawn_Final_Report.pdf — matched: All 11 contracts explicitly listed in 'Contracts Assessed' table on page 6. Audit date from cover page: '10 January 2025'.
- [14072] ChainSecurity_USDT0_Arbitrum_v2_audit.pdf — no match: Scope explicitly lists two files: Wrappers/ArbitrumExtension.sol and Wrappers/OFTExtension.sol. Contract names extracted from filenames.
- [14073] ChainSecurity_USDT0_Flare_audit.pdf — matched: Extracted contract names from the Verified Contracts table and deployment validation sections. The report is a deployment verification, not a full audit, but the contracts listed are explicitly in scope.
- [14074] ChainSecurity_USDT0_HyperLiquid_and_Stable_audit.pdf — no match: Four contracts explicitly listed in scope table. Audit date from cover page.
- [14075] ChainSecurity_USDT0_Ink_audit.pdf — matched: Report is a deployment verification. Scope includes contracts from usdt0-oft-contracts and usdt0-tether-contracts-hardhat repositories. Verified contracts listed in section 2.2. Date found on cover page.
- [14076] Everdawn Deployment Assessment.pdf — no match: The report covers deployment assessments of USDT0 and XAUt0 tokens across multiple networks, focusing on OFT (OUpgradeable) and token contracts (TetherTokenOFTExtension, HyperliquidExtension) behind ProxyAdmin.
- [14077] Everdawn USDT0 ERC-7802 Upgrade Audit.pdf — matched: Extracted contract names from the Scope section file listing. Also extracted audit date from the title line.
- [14078] OneSig Audit 2.pdf — no match: Scope section explicitly lists two files: MultiSig.sol and OneSig.sol. Audit date is June 2, 2025 from the header.
- [14079] OneSig Audit.pdf — no match: Two contracts in scope: MultiSig.sol and OneSig.sol. Audit date from cover page.
- [14080] USDT0 Child Token Audit (1).pdf — matched: No reason recorded
- [14081] USDT0 Transaction Helper Audit.pdf — no match: Scope section explicitly lists two files: TransactionValueHelper.sol and OwnableOperators.sol.
- [14082] USDT0_Audit.pdf — matched: No reason recorded
- [14083] TON_OFT-Ottersec-23May2025.pdf — no match: Scope section explicitly lists three contracts: BamOFT, Token, TokenAdmin. Audit date is May 23rd, 2025 from the cover page.
- [14084] lz_native_mesh_ton_evm_audit_final.pdf — no match: Scope section lists three modules: usdtoft-evm, composer, usdtoft-ton. No individual contract files or addresses provided.
- [14085] USDT0 Audit Report.pdf — matched: All files listed in the Scope section (EVM and TON) are included. Test files and structs are also considered in scope as per the listing.
- [14086] Ethena_OFT-Zellic-16JAN2025.pdf — no match: Scope section lists programs: src/handler.fc, src/main.fc, src/ethenaOFT/*.fc, src/oApp/*.fc, src/token/*, src/tokenAdmin/*, structs/*. Contract names extracted from threat model descriptions: EthenaJetton and TokenAdmin. No other specific contract names found.
- [14087] TON_OFT-Zellic-19May2025.pdf — no match: The scope section lists a diff file (diff_output3.diff) and a commit hash, but no specific contract or source file names. The report mentions 'TON OFT files' and references 'ethena-oft' but does not enumerate individual contracts. The audit date is clearly stated on the cover page.
- [14088] usdt_native_mesh_1.1_upgrade_-_zellic_audit_report_draft-1.pdf — no match: Extracted three contracts from scope and system design sections. Audit date from cover page and header.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| 2025-01-14_USDT0.pdf | OFTAdapterUpgradeable | unmatched — not counted | — | mentioned in findings L-02, L-05, L-06 | no |
| 2025-01-14_USDT0.pdf | OUpgradeable | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x14e4a1b13bf7f943c8ff7c51fb60fa964a298d92` — deployed 2025-01-17 02:37:50+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4e41cfc3f3b19e29e323d2c36f8f202a1e151daf` — deployed 2025-04-28 20:08:00+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf03b4d9ac1d5d1e7c4cef54c2a313b9fe051a0ad` — deployed 2025-03-15 00:00:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc07be8994d035631c36fb4a89c918cefb2f03ec3` — deployed 2025-03-15 00:00:12+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x6ba10300f0dc58b7a1e4c0e41f5dabb7d7829e13` — deployed 2025-07-03 12:25:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x02ca37966753bdddf11216b73b16c1de756a7cf9` — deployed 2025-09-09 12:17:55+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x53c3a64c8942288e12813c1f8457db45980bcfc2` — deployed 2026-03-17 17:21:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x5421cf4288d8007d3c43ac4246eafce5b049e352` — deployed 2025-04-23 02:21:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc` — deployed 2025-11-01 17:18:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x904861a24f30ec96ea7cfc3be9ea4b476d237e98` — deployed 2025-04-30 03:06:00+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x63ab93cbc9d4ecd9c4947b1a38f458147c08e6f7` — deployed 2025-09-11 09:59:58+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x56fe74a2e3b484b921c447357203431a3485cc60` — deployed 2025-03-26 17:38:04+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf40542a7b66ad7c68c459ee3679635d2fdb6df39` — deployed 2025-04-23 02:20:39+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3dc96399109df5ceb2c226664a086140bd0379cb` — deployed 2025-01-21 23:37:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 2025-01-14_USDT0.pdf | OFTExtension | unmatched — not counted | — | mentioned in findings L-05, I-03, I-04, I-07 | no |
| 2025-01-14_USDT0.pdf | TetherTokenOFTExtension | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x01bff41798a0bcf287b996046ca68b395dbc1071` — deployed 2025-03-14 23:48:35+03 — liveness: live (current_address_book_code)<br>TetherTokenOFTExtension (alternative) `0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff` — deployed 2025-03-26 17:24:17+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb` — deployed 2025-09-08 18:28:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x1b64b9025eebb9a6239575df9ea4b9ac46d4d193` — deployed 2025-09-11 09:57:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x21caef8a43163eea865baee23b9c2e327696a3bf` — deployed 2026-03-17 17:16:10+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf1815bd50389c46847f0bda824ec8da914045d14` — deployed 2025-04-23 01:00:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x40461291347e1ecbb09499f3371d3f17f10d7159` — deployed 2025-04-23 00:44:16+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2775d5105276781b4b85ba6ea6a6653beed1dd32` — deployed 2025-05-21 21:30:39+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9151434b16b9763660705744891fa906f660ecc5` — deployed 2025-03-26 17:24:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x779ded0c9e1022225f8e0630b35a9b54be713736` — deployed 2025-11-01 16:58:54+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x779ded0c9e1022225f8e0630b35a9b54be713736` — deployed 2025-01-21 09:07:20+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9151434b16b9763660705744891fa906f660ecc5` — deployed 2025-03-14 23:42:12+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-01-21 was 7d from audit; next candidate 59d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 2025-01-14_USDT0.pdf | SignatureChecker | unmatched — not counted | — | mentioned in finding L-03 | no |
| 2025-01-14_USDT0.pdf | ERC20PermitUpgradeable | unmatched — not counted | — | mentioned in finding I-05 | no |
| ChainSecurity_USDT0_audit.pdf | OAdapterUpgradeable | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xb9c2321bb7d0db468f570d10a424d1cc8efd696c` — deployed 2025-04-23 01:20:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x6c96de32cea08842dcc4058c14d3aaad7fa41dee` — deployed 2025-01-08 18:53:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_USDT0_audit.pdf | OUpgradeable | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x14e4a1b13bf7f943c8ff7c51fb60fa964a298d92` — deployed 2025-01-17 02:37:50+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4e41cfc3f3b19e29e323d2c36f8f202a1e151daf` — deployed 2025-04-28 20:08:00+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf03b4d9ac1d5d1e7c4cef54c2a313b9fe051a0ad` — deployed 2025-03-15 00:00:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc07be8994d035631c36fb4a89c918cefb2f03ec3` — deployed 2025-03-15 00:00:12+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x6ba10300f0dc58b7a1e4c0e41f5dabb7d7829e13` — deployed 2025-07-03 12:25:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x02ca37966753bdddf11216b73b16c1de756a7cf9` — deployed 2025-09-09 12:17:55+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x53c3a64c8942288e12813c1f8457db45980bcfc2` — deployed 2026-03-17 17:21:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x5421cf4288d8007d3c43ac4246eafce5b049e352` — deployed 2025-04-23 02:21:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc` — deployed 2025-11-01 17:18:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x904861a24f30ec96ea7cfc3be9ea4b476d237e98` — deployed 2025-04-30 03:06:00+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x63ab93cbc9d4ecd9c4947b1a38f458147c08e6f7` — deployed 2025-09-11 09:59:58+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x56fe74a2e3b484b921c447357203431a3485cc60` — deployed 2025-03-26 17:38:04+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf40542a7b66ad7c68c459ee3679635d2fdb6df39` — deployed 2025-04-23 02:20:39+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3dc96399109df5ceb2c226664a086140bd0379cb` — deployed 2025-01-21 23:37:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_USDT0_audit.pdf | OFTExtension | unmatched — not counted | — | listed in scope | no |
| 20250110_Paladin_Everdawn_Final_Report.pdf | OAdapterUpgradeable | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0xb9c2321bb7d0db468f570d10a424d1cc8efd696c` — deployed 2025-04-23 01:20:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x6c96de32cea08842dcc4058c14d3aaad7fa41dee` — deployed 2025-01-08 18:53:59+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-01-08 was 2d from audit; next candidate 103d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20250110_Paladin_Everdawn_Final_Report.pdf | OUpgradeable | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x14e4a1b13bf7f943c8ff7c51fb60fa964a298d92` — deployed 2025-01-17 02:37:50+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4e41cfc3f3b19e29e323d2c36f8f202a1e151daf` — deployed 2025-04-28 20:08:00+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf03b4d9ac1d5d1e7c4cef54c2a313b9fe051a0ad` — deployed 2025-03-15 00:00:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc07be8994d035631c36fb4a89c918cefb2f03ec3` — deployed 2025-03-15 00:00:12+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x6ba10300f0dc58b7a1e4c0e41f5dabb7d7829e13` — deployed 2025-07-03 12:25:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x02ca37966753bdddf11216b73b16c1de756a7cf9` — deployed 2025-09-09 12:17:55+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x53c3a64c8942288e12813c1f8457db45980bcfc2` — deployed 2026-03-17 17:21:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x5421cf4288d8007d3c43ac4246eafce5b049e352` — deployed 2025-04-23 02:21:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc` — deployed 2025-11-01 17:18:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x904861a24f30ec96ea7cfc3be9ea4b476d237e98` — deployed 2025-04-30 03:06:00+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x63ab93cbc9d4ecd9c4947b1a38f458147c08e6f7` — deployed 2025-09-11 09:59:58+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x56fe74a2e3b484b921c447357203431a3485cc60` — deployed 2025-03-26 17:38:04+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf40542a7b66ad7c68c459ee3679635d2fdb6df39` — deployed 2025-04-23 02:20:39+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3dc96399109df5ceb2c226664a086140bd0379cb` — deployed 2025-01-21 23:37:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| 20250110_Paladin_Everdawn_Final_Report.pdf | TetherToken | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x68749665ff8d2d112fa859aa293f07a622782f38` — deployed 2021-10-31 14:21:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| 20250110_Paladin_Everdawn_Final_Report.pdf | EIP3009 | unmatched — not counted | — | listed in scope table and findings section | no |
| 20250110_Paladin_Everdawn_Final_Report.pdf | TetherTokenV2 | unmatched — not counted | — | listed in scope table and findings section | no |
| 20250110_Paladin_Everdawn_Final_Report.pdf | WithBlockedList | unmatched — not counted | — | listed in scope table and findings section | no |
| 20250110_Paladin_Everdawn_Final_Report.pdf | ArbitrumExtension | unmatched — not counted | — | listed in scope table and findings section | no |
| 20250110_Paladin_Everdawn_Final_Report.pdf | CeloExtension | unmatched — not counted | — | listed in scope table and findings section | no |
| 20250110_Paladin_Everdawn_Final_Report.pdf | FeeCurrencyWrapper | unmatched — not counted | — | listed in scope table and findings section | no |
| 20250110_Paladin_Everdawn_Final_Report.pdf | OFTExtension | unmatched — not counted | — | listed in scope table and findings section | no |
| 20250110_Paladin_Everdawn_Final_Report.pdf | WrapperExtension | unmatched — not counted | — | listed in scope table and findings section | no |
| ChainSecurity_USDT0_Arbitrum_v2_audit.pdf | ArbitrumExtension | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_USDT0_Arbitrum_v2_audit.pdf | OFTExtension | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_USDT0_Flare_audit.pdf | TetherTokenOFTExtension | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x779ded0c9e1022225f8e0630b35a9b54be713736` — deployed 2025-11-01 16:58:54+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x779ded0c9e1022225f8e0630b35a9b54be713736` — deployed 2025-01-21 09:07:20+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-01-21 was 55d from audit; next candidate 229d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_USDT0_Flare_audit.pdf | OUpgradeable | unmatched — not counted | — | listed in Verified Contracts table and validated on Flare mainnet | no |
| ChainSecurity_USDT0_Flare_audit.pdf | EndpointV2 | unmatched — not counted | — | listed in Verified Contracts table | no |
| ChainSecurity_USDT0_Flare_audit.pdf | SendUln302 | unmatched — not counted | — | listed in Verified Contracts table (Flare) | no |
| ChainSecurity_USDT0_Flare_audit.pdf | ReceiveUln302 | unmatched — not counted | — | listed in Verified Contracts table (Flare) | no |
| ChainSecurity_USDT0_Flare_audit.pdf | TransparentUpgradeableProxy | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x14e4a1b13bf7f943c8ff7c51fb60fa964a298d92` — deployed 2025-01-17 02:37:50+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` — deployed 2021-08-31 20:48:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4e41cfc3f3b19e29e323d2c36f8f202a1e151daf` — deployed 2025-04-28 20:08:00+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x01bff41798a0bcf287b996046ca68b395dbc1071` — deployed 2025-03-14 23:48:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf03b4d9ac1d5d1e7c4cef54c2a313b9fe051a0ad` — deployed 2025-03-15 00:00:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x7e7866bc840aff9f517a49afdbfc9e7c7aba9a68` — deployed 2025-04-23 02:21:07+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x68749665ff8d2d112fa859aa293f07a622782f38` — deployed 2021-10-31 14:21:50+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb` — deployed 2025-09-08 18:28:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc07be8994d035631c36fb4a89c918cefb2f03ec3` — deployed 2025-03-15 00:00:12+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x1b64b9025eebb9a6239575df9ea4b9ac46d4d193` — deployed 2025-09-11 09:57:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x6ba10300f0dc58b7a1e4c0e41f5dabb7d7829e13` — deployed 2025-07-03 12:25:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x02ca37966753bdddf11216b73b16c1de756a7cf9` — deployed 2025-09-09 12:17:55+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x21caef8a43163eea865baee23b9c2e327696a3bf` — deployed 2026-03-17 17:16:10+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf1815bd50389c46847f0bda824ec8da914045d14` — deployed 2025-04-23 01:00:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf4d9235269a96aadafc9adae454a0618ebe37949` — deployed 2025-04-28 19:49:00+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb9c2321bb7d0db468f570d10a424d1cc8efd696c` — deployed 2025-04-23 01:20:35+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x53c3a64c8942288e12813c1f8457db45980bcfc2` — deployed 2026-03-17 17:21:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x6c96de32cea08842dcc4058c14d3aaad7fa41dee` — deployed 2025-01-08 18:53:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x5421cf4288d8007d3c43ac4246eafce5b049e352` — deployed 2025-04-23 02:21:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x40461291347e1ecbb09499f3371d3f17f10d7159` — deployed 2025-04-23 00:44:16+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc` — deployed 2025-11-01 17:18:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2775d5105276781b4b85ba6ea6a6653beed1dd32` — deployed 2025-05-21 21:30:39+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb` — deployed 2025-04-30 02:51:00+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x904861a24f30ec96ea7cfc3be9ea4b476d237e98` — deployed 2025-04-30 03:06:00+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x63ab93cbc9d4ecd9c4947b1a38f458147c08e6f7` — deployed 2025-09-11 09:59:58+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9151434b16b9763660705744891fa906f660ecc5` — deployed 2025-03-26 17:24:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x779ded0c9e1022225f8e0630b35a9b54be713736` — deployed 2025-11-01 16:58:54+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x56fe74a2e3b484b921c447357203431a3485cc60` — deployed 2025-03-26 17:38:04+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x779ded0c9e1022225f8e0630b35a9b54be713736` — deployed 2025-01-21 09:07:20+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf40542a7b66ad7c68c459ee3679635d2fdb6df39` — deployed 2025-04-23 02:20:39+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9151434b16b9763660705744891fa906f660ecc5` — deployed 2025-03-14 23:42:12+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3dc96399109df5ceb2c226664a086140bd0379cb` — deployed 2025-01-21 23:37:09+03 — liveness: live (current_address_book_code) | bare standard proxy-shell name is not deployment identity; normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_USDT0_HyperLiquid_and_Stable_audit.pdf | HyperLiquidComposer | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_USDT0_HyperLiquid_and_Stable_audit.pdf | OStableWrapper | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_USDT0_HyperLiquid_and_Stable_audit.pdf | StableComposer | unmatched — not counted | — | listed in scope table | no |
| ChainSecurity_USDT0_HyperLiquid_and_Stable_audit.pdf | HyperliquidExtension | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xf4d9235269a96aadafc9adae454a0618ebe37949` — deployed 2025-04-28 19:49:00+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb` — deployed 2025-04-30 02:51:00+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| ChainSecurity_USDT0_Ink_audit.pdf | TransparentUpgradeableProxy | own contract | UnnamedContract (selected) `0x0200c29006150606b650577bbe7b6248f58470c1` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| ChainSecurity_USDT0_Ink_audit.pdf | TetherTokenOFTExtension | unmatched — not counted | — | Verified Contracts table | no |
| ChainSecurity_USDT0_Ink_audit.pdf | OUpgradeable | unmatched — not counted | — | Verified Contracts table | no |
| ChainSecurity_USDT0_Ink_audit.pdf | EndpointV2 | unmatched — not counted | — | Verified Contracts table | no |
| ChainSecurity_USDT0_Ink_audit.pdf | SendUln302 | unmatched — not counted | — | Verified Contracts table (Berachain) | no |
| ChainSecurity_USDT0_Ink_audit.pdf | ReceiveUln302 | unmatched — not counted | — | Verified Contracts table (Berachain) | no |
| Everdawn Deployment Assessment.pdf | USDT0 | unmatched — not counted | — | USDT0 is an ERC-20 wrapper for Tether (USDT) deployed across multiple networks. | no |
| Everdawn Deployment Assessment.pdf | XAUt0 | unmatched — not counted | — | XAUt0 is an ERC-20 wrapper for Tether Gold (XAUt) deployed across multiple networks. | no |
| Everdawn Deployment Assessment.pdf | OUpgradeable | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x14e4a1b13bf7f943c8ff7c51fb60fa964a298d92` — deployed 2025-01-17 02:37:50+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4e41cfc3f3b19e29e323d2c36f8f202a1e151daf` — deployed 2025-04-28 20:08:00+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf03b4d9ac1d5d1e7c4cef54c2a313b9fe051a0ad` — deployed 2025-03-15 00:00:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc07be8994d035631c36fb4a89c918cefb2f03ec3` — deployed 2025-03-15 00:00:12+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x6ba10300f0dc58b7a1e4c0e41f5dabb7d7829e13` — deployed 2025-07-03 12:25:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x02ca37966753bdddf11216b73b16c1de756a7cf9` — deployed 2025-09-09 12:17:55+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x53c3a64c8942288e12813c1f8457db45980bcfc2` — deployed 2026-03-17 17:21:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x5421cf4288d8007d3c43ac4246eafce5b049e352` — deployed 2025-04-23 02:21:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc` — deployed 2025-11-01 17:18:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x904861a24f30ec96ea7cfc3be9ea4b476d237e98` — deployed 2025-04-30 03:06:00+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x63ab93cbc9d4ecd9c4947b1a38f458147c08e6f7` — deployed 2025-09-11 09:59:58+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x56fe74a2e3b484b921c447357203431a3485cc60` — deployed 2025-03-26 17:38:04+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf40542a7b66ad7c68c459ee3679635d2fdb6df39` — deployed 2025-04-23 02:20:39+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3dc96399109df5ceb2c226664a086140bd0379cb` — deployed 2025-01-21 23:37:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Everdawn Deployment Assessment.pdf | TetherTokenOFTExtension | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x01bff41798a0bcf287b996046ca68b395dbc1071` — deployed 2025-03-14 23:48:35+03 — liveness: live (current_address_book_code)<br>TetherTokenOFTExtension (alternative) `0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff` — deployed 2025-03-26 17:24:17+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb` — deployed 2025-09-08 18:28:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x1b64b9025eebb9a6239575df9ea4b9ac46d4d193` — deployed 2025-09-11 09:57:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x21caef8a43163eea865baee23b9c2e327696a3bf` — deployed 2026-03-17 17:16:10+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf1815bd50389c46847f0bda824ec8da914045d14` — deployed 2025-04-23 01:00:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x40461291347e1ecbb09499f3371d3f17f10d7159` — deployed 2025-04-23 00:44:16+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2775d5105276781b4b85ba6ea6a6653beed1dd32` — deployed 2025-05-21 21:30:39+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9151434b16b9763660705744891fa906f660ecc5` — deployed 2025-03-26 17:24:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x779ded0c9e1022225f8e0630b35a9b54be713736` — deployed 2025-11-01 16:58:54+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x779ded0c9e1022225f8e0630b35a9b54be713736` — deployed 2025-01-21 09:07:20+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9151434b16b9763660705744891fa906f660ecc5` — deployed 2025-03-14 23:42:12+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Everdawn Deployment Assessment.pdf | HyperliquidExtension | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xf4d9235269a96aadafc9adae454a0618ebe37949` — deployed 2025-04-28 19:49:00+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb` — deployed 2025-04-30 02:51:00+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Everdawn Deployment Assessment.pdf | ProxyAdmin | unmatched — not counted | — | Admin contract managing upgradeable proxies. | no |
| Everdawn USDT0 ERC-7802 Upgrade Audit.pdf | TetherToken | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x68749665ff8d2d112fa859aa293f07a622782f38` — deployed 2021-10-31 14:21:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| Everdawn USDT0 ERC-7802 Upgrade Audit.pdf | ArbitrumExtension | unmatched — not counted | — | listed in scope | no |
| Everdawn USDT0 ERC-7802 Upgrade Audit.pdf | HyperliquidExtension | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xf4d9235269a96aadafc9adae454a0618ebe37949` — deployed 2025-04-28 19:49:00+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb` — deployed 2025-04-30 02:51:00+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| Everdawn USDT0 ERC-7802 Upgrade Audit.pdf | OFTExtension | unmatched — not counted | — | listed in scope | no |
| Everdawn USDT0 ERC-7802 Upgrade Audit.pdf | IERC7802 | unmatched — not counted | — | listed in scope | no |
| Everdawn USDT0 ERC-7802 Upgrade Audit.pdf | OUpgradeable | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x14e4a1b13bf7f943c8ff7c51fb60fa964a298d92` — deployed 2025-01-17 02:37:50+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x4e41cfc3f3b19e29e323d2c36f8f202a1e151daf` — deployed 2025-04-28 20:08:00+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf03b4d9ac1d5d1e7c4cef54c2a313b9fe051a0ad` — deployed 2025-03-15 00:00:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc07be8994d035631c36fb4a89c918cefb2f03ec3` — deployed 2025-03-15 00:00:12+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x6ba10300f0dc58b7a1e4c0e41f5dabb7d7829e13` — deployed 2025-07-03 12:25:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x02ca37966753bdddf11216b73b16c1de756a7cf9` — deployed 2025-09-09 12:17:55+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x53c3a64c8942288e12813c1f8457db45980bcfc2` — deployed 2026-03-17 17:21:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x5421cf4288d8007d3c43ac4246eafce5b049e352` — deployed 2025-04-23 02:21:47+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc` — deployed 2025-11-01 17:18:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x904861a24f30ec96ea7cfc3be9ea4b476d237e98` — deployed 2025-04-30 03:06:00+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x63ab93cbc9d4ecd9c4947b1a38f458147c08e6f7` — deployed 2025-09-11 09:59:58+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x56fe74a2e3b484b921c447357203431a3485cc60` — deployed 2025-03-26 17:38:04+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf40542a7b66ad7c68c459ee3679635d2fdb6df39` — deployed 2025-04-23 02:20:39+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3dc96399109df5ceb2c226664a086140bd0379cb` — deployed 2025-01-21 23:37:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| OneSig Audit 2.pdf | MultiSig | unmatched — not counted | — | listed in scope | no |
| OneSig Audit 2.pdf | OneSig | unmatched — not counted | — | listed in scope | no |
| OneSig Audit.pdf | MultiSig | unmatched — not counted | — | listed in scope | no |
| OneSig Audit.pdf | OneSig | unmatched — not counted | — | listed in scope | no |
| USDT0 Child Token Audit (1).pdf | UChildUSDT0 | own proxy deployment | UChildERC20Proxy (proxy) (selected) `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` — deployed 2020-09-08 00:07:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDT0 Child Token Audit (1).pdf | WithBlockedList | unmatched — not counted | — | — | no |
| USDT0 Transaction Helper Audit.pdf | TransactionValueHelper | unmatched — not counted | — | listed in scope | no |
| USDT0 Transaction Helper Audit.pdf | OwnableOperators | unmatched — not counted | — | listed in scope | no |
| USDT0_Audit.pdf | ArbitrumExtension | unmatched — not counted | — | — | no |
| USDT0_Audit.pdf | ArbitrumExtensionV2 | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` — deployed 2021-08-31 20:48:43+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDT0_Audit.pdf | EIP3009 | unmatched — not counted | — | — | no |
| USDT0_Audit.pdf | IArbL2GatewayRouter | unmatched — not counted | — | — | no |
| USDT0_Audit.pdf | IArbToken | unmatched — not counted | — | — | no |
| USDT0_Audit.pdf | MessageHashUtils | unmatched — not counted | — | — | no |
| USDT0_Audit.pdf | OFTExtension | unmatched — not counted | — | — | no |
| USDT0_Audit.pdf | SignatureChecker | unmatched — not counted | — | — | no |
| USDT0_Audit.pdf | TetherToken | own proxy deployment | TransparentUpgradeableProxy (proxy) (selected) `0x68749665ff8d2d112fa859aa293f07a622782f38` — deployed 2021-10-31 14:21:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDT0_Audit.pdf | TetherTokenOFTExtension | own proxy deployment | TransparentUpgradeableProxy (proxy) (alternative) `0x01bff41798a0bcf287b996046ca68b395dbc1071` — deployed 2025-03-14 23:48:35+03 — liveness: live (current_address_book_code)<br>TetherTokenOFTExtension (alternative) `0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff` — deployed 2025-03-26 17:24:17+03 — liveness: live (proxy_unit_reachable)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb` — deployed 2025-09-08 18:28:51+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x1b64b9025eebb9a6239575df9ea4b9ac46d4d193` — deployed 2025-09-11 09:57:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x21caef8a43163eea865baee23b9c2e327696a3bf` — deployed 2026-03-17 17:16:10+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf1815bd50389c46847f0bda824ec8da914045d14` — deployed 2025-04-23 01:00:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x40461291347e1ecbb09499f3371d3f17f10d7159` — deployed 2025-04-23 00:44:16+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x2775d5105276781b4b85ba6ea6a6653beed1dd32` — deployed 2025-05-21 21:30:39+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9151434b16b9763660705744891fa906f660ecc5` — deployed 2025-03-26 17:24:31+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x779ded0c9e1022225f8e0630b35a9b54be713736` — deployed 2025-11-01 16:58:54+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (selected) `0x779ded0c9e1022225f8e0630b35a9b54be713736` — deployed 2025-01-21 09:07:20+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x9151434b16b9763660705744891fa906f660ecc5` — deployed 2025-03-14 23:42:12+03 — liveness: live (current_address_book_code) | deployment-date disambiguation: 2025-01-21 was 20d from audit; next candidate 72d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDT0_Audit.pdf | TetherTokenV2 | unmatched — not counted | — | — | no |
| USDT0_Audit.pdf | TetherTokenV2Arbitrum | unmatched — not counted | — | — | no |
| USDT0_Audit.pdf | WithBlockedList | unmatched — not counted | — | — | no |
| TON_OFT-Ottersec-23May2025.pdf | BamOFT | unmatched — not counted | — | Scope section: 'BamOFT FunC implementation of the OFT OApp.' | no |
| TON_OFT-Ottersec-23May2025.pdf | Token | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9` — deployed 2021-08-31 20:48:43+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x01bff41798a0bcf287b996046ca68b395dbc1071` — deployed 2025-03-14 23:48:35+03 — liveness: live (current_address_book_code)<br>HyperLiquidComposer_V1_FeeToken (alternative) `0x80123ab57c9bc0c452d6c18f92a653a4ee2e7585` — deployed 2025-09-05 17:03:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x68749665ff8d2d112fa859aa293f07a622782f38` — deployed 2021-10-31 14:21:50+03 — liveness: live (current_address_book_code)<br>UsdtOFT (alternative) `0x1f748c76de468e9d11bd340fa9d5cbadf315dfb0` — deployed 2025-08-08 02:58:59+03 — liveness: live (current_address_book_code)<br>UsdtOFT (alternative) `0x77652d5aba086137b595875263fc200182919b92` — deployed 2025-08-08 02:56:12+03 — liveness: live (code_present_context)<br>UsdtOFT (alternative) `0xf10e161027410128e63e75d0200fb6d34b2db243` — deployed 2025-08-08 02:56:14+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x0200c29006150606b650577bbe7b6248f58470c1` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x779ded0c9e1022225f8e0630b35a9b54be713736` — deployed 2025-01-21 09:07:20+03 — liveness: live (current_address_book_code)<br>UChildERC20Proxy (proxy) (alternative) `0xc2132d05d31c914a87c6611c10748aeb04b58e8f` — deployed 2020-09-08 00:07:27+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| TON_OFT-Ottersec-23May2025.pdf | TokenAdmin | unmatched — not counted | — | Scope section: 'TokenAdmin Contract administering the Jetton.' | no |
| lz_native_mesh_ton_evm_audit_final.pdf | usdtoft-evm | unmatched — not counted | — | Scope section: 'usdtoft-evm' module | no |
| lz_native_mesh_ton_evm_audit_final.pdf | composer | unmatched — not counted | — | Scope section: 'composer' module | no |
| lz_native_mesh_ton_evm_audit_final.pdf | usdtoft-ton | unmatched — not counted | — | Scope section: 'usdtoft-ton' module | no |
| USDT0 Audit Report.pdf | IMultiHopComposer | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | IUsdtOFT | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | MultiHopComposer | own contract | MultiHopComposer (selected) `0x759ba420bf1ded1765f18c2dc3fc57a1964a2ad1` — deployed 2025-08-11 22:53:41+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| USDT0 Audit Report.pdf | UsdtOFT | ambiguous — not counted | UsdtOFT (alternative) `0x1f748c76de468e9d11bd340fa9d5cbadf315dfb0` — deployed 2025-08-08 02:58:59+03 — liveness: live (current_address_book_code)<br>UsdtOFT (alternative) `0x77652d5aba086137b595875263fc200182919b92` — deployed 2025-08-08 02:56:12+03 — liveness: live (code_present_context)<br>UsdtOFT (alternative) `0xf10e161027410128e63e75d0200fb6d34b2db243` — deployed 2025-08-08 02:56:14+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| USDT0 Audit Report.pdf | ERC20Mock | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | OFTMock | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | MultiHopComposer_E2E | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | MultiHopComposer_Unit | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | MultiHopComposerBase | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | handler | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | main | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | handlerOApp | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | interface | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | storage | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | coders | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | consts | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | handlerUsdt | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | Address | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | Amount | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | CostAsserts | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | Credits | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | Fee | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | GasAsserts | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | LayerZeroStructs | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | MdError | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | MdGuid | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | MsgSize | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | OFTCredits | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | OFTSend | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | RecoverUsdt | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | SetPeer | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | TokenTransfer | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | baseSerdeTest | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | mocks | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | testUtils | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | channel | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | helpersCredits | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | helpersOApp | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | helpersOFT | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | liquidity | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | oft | ambiguous — not counted | TransparentUpgradeableProxy (proxy) (alternative) `0x14e4a1b13bf7f943c8ff7c51fb60fa964a298d92` — deployed 2025-01-17 02:37:50+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xf03b4d9ac1d5d1e7c4cef54c2a313b9fe051a0ad` — deployed 2025-03-15 00:00:09+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xc07be8994d035631c36fb4a89c918cefb2f03ec3` — deployed 2025-03-15 00:00:12+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x6ba10300f0dc58b7a1e4c0e41f5dabb7d7829e13` — deployed 2025-07-03 12:25:59+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x02ca37966753bdddf11216b73b16c1de756a7cf9` — deployed 2025-09-09 12:17:55+03 — liveness: live (current_address_book_code)<br>UnnamedContract (alternative) `0x1cb6de532588fca4a21b7209de7c456af8434a65` — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc` — deployed 2025-11-01 17:18:00+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x904861a24f30ec96ea7cfc3be9ea4b476d237e98` — deployed 2025-04-30 03:06:00+03 — liveness: live (code_present_context)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x56fe74a2e3b484b921c447357203431a3485cc60` — deployed 2025-03-26 17:38:04+03 — liveness: live (current_address_book_code)<br>TransparentUpgradeableProxy (proxy) (alternative) `0x3dc96399109df5ceb2c226664a086140bd0379cb` — deployed 2025-01-21 23:37:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| USDT0 Audit Report.pdf | optionsOApp | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | ownershipOApp | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | ownershipOFT | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | permissions | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | addressSerde | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | amountSerde | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | costAssertsSerde | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | creditsSerde | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | feeSerde | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | gasAssertsSerde | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | mdErrorSerde | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | mdGuidSerde | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | oAppStorageSerde | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | oftCreditsSerde | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | oftSendSerde | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | recoverUsdtSerde | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | setPeerSerde | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | tokenTransferSerde | unmatched — not counted | — | listed in scope | no |
| USDT0 Audit Report.pdf | usdtOftStorageSerde | unmatched — not counted | — | listed in scope | no |
| Ethena_OFT-Zellic-16JAN2025.pdf | EthenaJetton | unmatched — not counted | — | ThreatModel section 4.1 describes EthenaJetton as a modified Jetton contract in scope. | no |
| Ethena_OFT-Zellic-16JAN2025.pdf | TokenAdmin | unmatched — not counted | — | ThreatModel section 4.2 describes TokenAdmin as a proxy contract in scope. | no |
| usdt_native_mesh_1.1_upgrade_-_zellic_audit_report_draft-1.pdf | USDTOFTTON | unmatched — not counted | — | Scope section lists packages/usdtoft-ton/src/**.fc and packages/usdtoft-ton/structs/**.fc; System Design section describes 'USDTOFT TON contract (version 1.1 upgrade)' | no |
| usdt_native_mesh_1.1_upgrade_-_zellic_audit_report_draft-1.pdf | USDTOFTEVM | unmatched — not counted | — | Scope section lists packages/usdtoft-evm/contracts/**.sol; System Design section describes 'USDTOFT EVM contract (version 1.1 upgrade)' | no |
| usdt_native_mesh_1.1_upgrade_-_zellic_audit_report_draft-1.pdf | MultiHopComposerEVM | unmatched — not counted | — | System Design section describes 'MultiHopComposer EVM contract (introduced in version 1.1)' | no |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| ethereum | `0x1f748c76de468e9d11bd340fa9d5cbadf315dfb0` | UsdtOFT | token | $18,737,428.86 | Verified native implementation with $18,737,428.86 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x77652d5aba086137b595875263fc200182919b92` | UsdtOFT | token | $11,220,961.08 | Verified native implementation with $11,220,961.08 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| celo | `0xf10e161027410128e63e75d0200fb6d34b2db243` | UsdtOFT | token | $3,212,122.75 | Verified native implementation with $3,212,122.75 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x689f01244c1fc30c75a70f627fa8fa4d6fdc1802` | HyperLiquidComposer_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x80123ab57c9bc0c452d6c18f92a653a4ee2e7585` | HyperLiquidComposer_V1_FeeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x4bb13347ce7cbf8884adb137aeda0355ef61b259` | HyperliquidExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xb9c2321bb7d0db468f570d10a424d1cc8efd696c` | OAdapterUpgradeable | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xf03b4d9ac1d5d1e7c4cef54c2a313b9fe051a0ad` | OUpgradeable | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x53c3a64c8942288e12813c1f8457db45980bcfc2` | OUpgradeable | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff` | OUpgradeable | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | `0xc07be8994d035631c36fb4a89c918cefb2f03ec3` | OUpgradeable | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x5421cf4288d8007d3c43ac4246eafce5b049e352` | OUpgradeable | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x6ba10300f0dc58b7a1e4c0e41f5dabb7d7829e13` | OUpgradeable | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x4e41cfc3f3b19e29e323d2c36f8f202a1e151daf` | OUpgradeable | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | `0x904861a24f30ec96ea7cfc3be9ea4b476d237e98` | OUpgradeable | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x56fe74a2e3b484b921c447357203431a3485cc60` | OUpgradeable | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x02ca37966753bdddf11216b73b16c1de756a7cf9` | OUpgradeable | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x63ab93cbc9d4ecd9c4947b1a38f458147c08e6f7` | OUpgradeable | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x14e4a1b13bf7f943c8ff7c51fb60fa964a298d92` | OUpgradeable | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xf40542a7b66ad7c68c459ee3679635d2fdb6df39` | OUpgradeable | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | `0x3dc96399109df5ceb2c226664a086140bd0379cb` | OUpgradeable | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0x01bff41798a0bcf287b996046ca68b395dbc1071` | TetherTokenOFTExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | `0x9151434b16b9763660705744891fa906f660ecc5` | TetherTokenOFTExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | `0x1b64b9025eebb9a6239575df9ea4b9ac46d4d193` | TetherTokenOFTExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 50 |
| upstream | 0 |
| standard_library | 13 |
| needs_review | 69 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 12
- Inherited remapped matches: 0
- Address-book scope dispositions: 11 own (9 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 14 ambiguous, 117 unmatched
- Matched-own operational status: 11 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=17, low=1
- Match method counts: address=1, temporal_name=4, unique_name=6

Zero-match audit list:

- [14070] ChainSecurity_USDT0_audit.pdf
- [14072] ChainSecurity_USDT0_Arbitrum_v2_audit.pdf
- [14074] ChainSecurity_USDT0_HyperLiquid_and_Stable_audit.pdf
- [14076] Everdawn Deployment Assessment.pdf
- [14078] OneSig Audit 2.pdf
- [14079] OneSig Audit.pdf
- [14081] USDT0 Transaction Helper Audit.pdf
- [14083] TON_OFT-Ottersec-23May2025.pdf
- [14084] lz_native_mesh_ton_evm_audit_final.pdf
- [14086] Ethena_OFT-Zellic-16JAN2025.pdf
- [14087] TON_OFT-Zellic-19May2025.pdf
- [14088] usdt_native_mesh_1.1_upgrade_-_zellic_audit_report_draft-1.pdf

Fork inheritance lineage and inherited audits are included when available.
