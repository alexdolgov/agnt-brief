# Agentic Audit Brief: USDT0

## Project Overview

- Project: USDT0 (`usdt0`)
- Website: [https://usdt0.to](https://usdt0.to)
- Lifecycle: unknown
- Generated: 2026-07-04T14:54:02.981Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, avalanche, berachain, bsc, celo, ethereum, hyperliquid, ink, mantle, optimism, plasma, polygon, sei, unichain
- Contract surface: 112 unique implementations (196 raw deployments)
- DeFi Llama TVL: $3,624,558,073.84
- On-chain TVL (included contracts): $42,178,136.11
- TVL by chain: Ethereum $18,884,287.59 | Arbitrum $11,220,961.08 | Polygon $8,860,735.08 | Celo $3,212,152.07 | Hyperliquid $0.30

## Project Description

Bridge. Structurally: 171 project-authored contract(s) across 11 chain(s); 15 ERC20 tokens, 1 ERC721 NFT, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 11 functional families. Its contracts share 39 common project-authored base contract(s) (oapp, oappsender, oappcore). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 196; live-surface contracts included: 196 (149 live, 47 unknown).
- Excluded by liveness: 0 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 25/60 (41.7%)
- Deployed-live implementations: 72 of 112 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 26/72
- Verified + Unaudited implementations: 45
- Verified by bytecode match: 2
- Unverified implementations: 40
- Unique implementations: 112
- Raw deployments: 196
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 12
- ASD (verified + unaudited TVL): $8,860,735.37
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 18 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 4 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 22 match-unverified
- Tier 1 coverage: 35.0% (ChainSecurity, OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 20 | 27.8% | 2025-03 |
| OpenZeppelin | Tier 1 | 16 | 22.2% | 2025-09 |
| Paladin | Tier 2 | 14 | 19.4% | 2025-01 |
| Guardian | Tier 2 | 12 | 16.7% | 2025-01 |
| TonTech | Tier 2 | 4 | 5.6% | 2025-07 |
| Zellic | Tier 2 | 1 | 1.4% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (25)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UsdtOFT | token | ethereum | n/a | 5 deployments: ethereum [`0x1f748c76de468e9d11bd340fa9d5cbadf315dfb0`](./contracts/ethereum-1/0x1f748c76de468e9d11bd340fa9d5cbadf315dfb0/); ethereum `0x811ed79db9d34e83bdb73df6c3e07961cfb0d5c0`; arbitrum `0x77652d5aba086137b595875263fc200182919b92`; celo `0x811ed79db9d34e83bdb73df6c3e07961cfb0d5c0`; celo `0xf10e161027410128e63e75d0200fb6d34b2db243` | ✅ Audited |
| ArbitrumExtensionV2 | adapter | arbitrum | n/a | [`0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ✅ Audited |
| ERC20Mock | token | ethereum | n/a | [`0xf1815bd50389c46847f0bda824ec8da914045d14`](./contracts/ethereum-1/0xf1815bd50389c46847f0bda824ec8da914045d14/) | ✅ Audited |
| HyperLiquidComposer | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x036afc9e3498ec863239e9e3f7eeb5af9c44484b`](./contracts/hyperliquid-999/0x036afc9e3498ec863239e9e3f7eeb5af9c44484b/); hyperliquid `0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc` | ✅ Audited |
| HyperliquidExtension | adapter | hyperliquid | n/a | 2 deployments: hyperliquid [`0x4bb13347ce7cbf8884adb137aeda0355ef61b259`](./contracts/hyperliquid-999/0x4bb13347ce7cbf8884adb137aeda0355ef61b259/); hyperliquid `0xf4d9235269a96aadafc9adae454a0618ebe37949` | ✅ Audited |
| HyperliquidExtension | adapter | hyperliquid | n/a | 2 deployments: hyperliquid [`0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb`](./contracts/hyperliquid-999/0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb/); hyperliquid `0xf555a12bffaef20cc201a74ae6513cb4aadb34b9` | ✅ Audited |
| MultiHopComposer | unknown | arbitrum | n/a | [`0x759ba420bf1ded1765f18c2dc3fc57a1964a2ad1`](./contracts/arbitrum-42161/0x759ba420bf1ded1765f18c2dc3fc57a1964a2ad1/) | ✅ Audited |
| OAdapterUpgradeable | adapter | ethereum | n/a | [`0x6c96de32cea08842dcc4058c14d3aaad7fa41dee`](./contracts/ethereum-1/0x6c96de32cea08842dcc4058c14d3aaad7fa41dee/) | ✅ Audited |
| OAdapterUpgradeable | adapter | ethereum | n/a | [`0xb9c2321bb7d0db468f570d10a424d1cc8efd696c`](./contracts/ethereum-1/0xb9c2321bb7d0db468f570d10a424d1cc8efd696c/) | ✅ Audited |
| OFTMock | unknown | ethereum | n/a | [`0xbc7f244e2b38657bd014a5f6f4e4ba1125c14b84`](./contracts/ethereum-1/0xbc7f244e2b38657bd014a5f6f4e4ba1125c14b84/) | ✅ Audited |
| OUpgradeable | proxy | optimism | n/a | [`0xf03b4d9ac1d5d1e7c4cef54c2a313b9fe051a0ad`](./contracts/optimism-10/0xf03b4d9ac1d5d1e7c4cef54c2a313b9fe051a0ad/) | ✅ Audited |
| OUpgradeable | proxy | unichain | n/a | [`0xc07be8994d035631c36fb4a89c918cefb2f03ec3`](./contracts/unichain-130/0xc07be8994d035631c36fb4a89c918cefb2f03ec3/) | ✅ Audited |
| OUpgradeable | proxy | polygon | n/a | [`0x5421cf4288d8007d3c43ac4246eafce5b049e352`](./contracts/polygon-137/0x5421cf4288d8007d3c43ac4246eafce5b049e352/) | ✅ Audited |
| OUpgradeable | proxy | polygon | n/a | [`0x6ba10300f0dc58b7a1e4c0e41f5dabb7d7829e13`](./contracts/polygon-137/0x6ba10300f0dc58b7a1e4c0e41f5dabb7d7829e13/) | ✅ Audited |
| OUpgradeable | proxy | hyperliquid | n/a | [`0x4e41cfc3f3b19e29e323d2c36f8f202a1e151daf`](./contracts/hyperliquid-999/0x4e41cfc3f3b19e29e323d2c36f8f202a1e151daf/) | ✅ Audited |
| OUpgradeable | proxy | hyperliquid | n/a | [`0x904861a24f30ec96ea7cfc3be9ea4b476d237e98`](./contracts/hyperliquid-999/0x904861a24f30ec96ea7cfc3be9ea4b476d237e98/) | ✅ Audited |
| OUpgradeable | proxy | sei | n/a | [`0x56fe74a2e3b484b921c447357203431a3485cc60`](./contracts/sei-1329/0x56fe74a2e3b484b921c447357203431a3485cc60/) | ✅ Audited |
| OUpgradeable | proxy | plasma | n/a | [`0x02ca37966753bdddf11216b73b16c1de756a7cf9`](./contracts/plasma-9745/0x02ca37966753bdddf11216b73b16c1de756a7cf9/) | ✅ Audited |
| OUpgradeable | proxy | arbitrum | n/a | [`0x14e4a1b13bf7f943c8ff7c51fb60fa964a298d92`](./contracts/arbitrum-42161/0x14e4a1b13bf7f943c8ff7c51fb60fa964a298d92/) | ✅ Audited |
| OUpgradeable | proxy | arbitrum | n/a | [`0xf40542a7b66ad7c68c459ee3679635d2fdb6df39`](./contracts/arbitrum-42161/0xf40542a7b66ad7c68c459ee3679635d2fdb6df39/) | ✅ Audited |
| OUpgradeable | proxy | berachain | n/a | [`0x3dc96399109df5ceb2c226664a086140bd0379cb`](./contracts/berachain-80094/0x3dc96399109df5ceb2c226664a086140bd0379cb/) | ✅ Audited |
| TetherToken | token | ethereum | n/a | [`0x68749665ff8d2d112fa859aa293f07a622782f38`](./contracts/ethereum-1/0x68749665ff8d2d112fa859aa293f07a622782f38/) | ✅ Audited |
| TetherTokenOFTExtension | adapter | unichain | n/a | 4 deployments: bsc `0x1ec7df9e74be05cb5a456aca2dc1ac2cec9ab6a3`; unichain [`0x01bff41798a0bcf287b996046ca68b395dbc1071`](./contracts/unichain-130/0x01bff41798a0bcf287b996046ca68b395dbc1071/); polygon `0xe1ad845d93853fff44990ae0dcecd8575293681e`; avalanche `0xd9492653457a69e9f4987db43d7fa0112e620cb4` | ✅ Audited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | [`0x779ded0c9e1022225f8e0630b35a9b54be713736`](./contracts/bsc-56/0x779ded0c9e1022225f8e0630b35a9b54be713736/) | ✅ Audited |
| UChildUSDT0 | token | polygon | n/a | [`0xc2132d05d31c914a87c6611c10748aeb04b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (45)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChildERC20 | token | polygon | n/a | 4 deployments: polygon [`0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39`](./contracts/polygon-137/0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39/); polygon `0x556f501cf8a43216df5bc9cc57eb04d4ffaa9e6d`; polygon `0x578360adf0bbb2f10ec9cec7ef89ef495511ed5f`; polygon `0x71b821aa52a49f32eed535fca6eb5aa130085978` | ⚠️ Unaudited |
| UChildERC20Proxy | token | polygon | n/a | 2 deployments: polygon [`0x313d009888329c9d1cf4f75ca3f32566335bd604`](./contracts/polygon-137/0x313d009888329c9d1cf4f75ca3f32566335bd604/); polygon `0x5a2fdf906ada9353ebe496fa5d351b39f8908d19` | ⚠️ Unaudited |
| EQBOFT | token | hyperliquid | n/a | 3 deployments: hyperliquid [`0x3ce8426dc0b90a36f0e20d7c2acaaf4578ad4e50`](./contracts/hyperliquid-999/0x3ce8426dc0b90a36f0e20d7c2acaaf4578ad4e50/); hyperliquid `0x73e247faabf71a67afa8f75773139998464cac8c`; hyperliquid `0xb4484a64ad7dccb4e8cc89e84fe02140e42cefd1` | ⚠️ Unaudited |
| ChildChainManager | governance | polygon | n/a | [`0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ⚠️ Unaudited |
| ChildERC1155 | token | polygon | n/a | [`0xa0c68c638235ee32657e8f720a23cec1bfc77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x8397259c983751daf40400790063935a11afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | berachain | n/a | [`0x425d1d17c33bdc0615ea18d1b18cca7e14beeb58`](./contracts/berachain-80094/0x425d1d17c33bdc0615ea18d1b18cca7e14beeb58/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | sei | n/a | [`0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8`](./contracts/sei-1329/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| HyperLiquidComposer_V1 | unknown | hyperliquid | n/a | 15 deployments: hyperliquid [`0x11ae59271ece49223126e089100ed74c1ae13083`](./contracts/hyperliquid-999/0x11ae59271ece49223126e089100ed74c1ae13083/); hyperliquid `0x19d317814d3b77a0b087977dd07ed9f5960cabc2`; hyperliquid `0x2a661ae363300891339c4cac5321f29f5b90dd93`; hyperliquid `0x37f02738dcc08967a6eaec9a905d679ba20594df`; hyperliquid `0x40838078a2e39e5a90b2439ff081177b1d32bfd5`; hyperliquid `0x5bddd9947263bf3bdf5cf96ebab84f626d2dc486`; hyperliquid `0x5bfee52f5b0272184125993d41873be9d46dc280`; hyperliquid `0x62855e31a32145de8abf1a537c3ed88d12b82b58`; hyperliquid `0x689f01244c1fc30c75a70f627fa8fa4d6fdc1802`; hyperliquid `0xc1c74bcf1bee765248816a2d93dd0d84648d4ffe`; hyperliquid `0xd9b7a23ba2ff80f2d61f96682a0f71220f3e04a6`; hyperliquid `0xe5aa9a77950929fbcc70650fa24299e35399d921`; hyperliquid `0xfa5c61c57dc478d5f3ddcc5185cb118414c5e756`; hyperliquid `0xfa616f43d2f6826d7bf07e05b8626e16e8fa8aae`; hyperliquid `0xfb67615bff54078322e758efbeb5db27fdf873d8` | ⚠️ Unaudited |
| HyperLiquidComposer_V1_FeeToken | token | hyperliquid | n/a | 4 deployments: hyperliquid [`0x7a32202edec16a34e9996f2064acc39a90eb05a0`](./contracts/hyperliquid-999/0x7a32202edec16a34e9996f2064acc39a90eb05a0/); hyperliquid `0x80123ab57c9bc0c452d6c18f92a653a4ee2e7585`; hyperliquid `0xa1819918ba910d05c4332be09b43f1bc894a62eb`; hyperliquid `0xb120daaf44b9270375ac2a96cc6fca9603a8123a` | ⚠️ Unaudited |
| MaticWETH | token | polygon | n/a | [`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| OmniCounter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x519639a31ace9bf7f9c2646531ec0fb4be9a063a`](./contracts/ethereum-1/0x519639a31ace9bf7f9c2646531ec0fb4be9a063a/); ethereum `0xe87fb1e8e0deb5f5ac388965d202002cb7432f94` | ⚠️ Unaudited |
| OUpgradeable | proxy | bsc | n/a | 2 deployments: bsc [`0x53c3a64c8942288e12813c1f8457db45980bcfc2`](./contracts/bsc-56/0x53c3a64c8942288e12813c1f8457db45980bcfc2/); bsc `0xded1660192d4d82e7c0b628ba556861edbb5cada` | ⚠️ Unaudited |
| OUpgradeable | proxy | bsc | n/a | 2 deployments: bsc [`0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff`](./contracts/bsc-56/0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff/); bsc `0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc` | ⚠️ Unaudited |
| OUpgradeable | proxy | hyperliquid | n/a | 2 deployments: hyperliquid [`0xad11a8beb98bbf61dbb1aa0f6d6f2ecd87b35afa`](./contracts/hyperliquid-999/0xad11a8beb98bbf61dbb1aa0f6d6f2ecd87b35afa/); hyperliquid `0xcd9a74e5fe451025e92b5b8f74117c6e275aa7c8` | ⚠️ Unaudited |
| OUpgradeable | proxy | mantle | n/a | 2 deployments: mantle [`0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff`](./contracts/mantle-5000/0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff/); mantle `0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc` | ⚠️ Unaudited |
| OUpgradeable | proxy | plasma | n/a | [`0x63ab93cbc9d4ecd9c4947b1a38f458147c08e6f7`](./contracts/plasma-9745/0x63ab93cbc9d4ecd9c4947b1a38f458147c08e6f7/) | ⚠️ Unaudited |
| OUpgradeable | proxy | berachain | n/a | 2 deployments: berachain [`0x3224831b5f45c616f8accba907798c6236773772`](./contracts/berachain-80094/0x3224831b5f45c616f8accba907798c6236773772/); berachain `0x4970ea919f0073d4e7c4fa8ec1b8cefaaa0e8752` | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8`](./contracts/ethereum-1/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| SafeL2 | unknown | optimism | n/a | [`0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8`](./contracts/optimism-10/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| SafeL2 | unknown | unichain | n/a | [`0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8`](./contracts/unichain-130/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| SafeL2 | unknown | polygon | n/a | [`0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8`](./contracts/polygon-137/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| SafeL2 | unknown | mantle | n/a | [`0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8`](./contracts/mantle-5000/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| SafeL2 | unknown | plasma | n/a | [`0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8`](./contracts/plasma-9745/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| SafeL2 | unknown | arbitrum | n/a | [`0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8`](./contracts/arbitrum-42161/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| SafeProxy | unknown | hyperliquid | n/a | [`0xb64a89ad247a2d691a728bb6822a85eedd7fc541`](./contracts/hyperliquid-999/0xb64a89ad247a2d691a728bb6822a85eedd7fc541/) | ⚠️ Unaudited |
| SignatureChecker | unknown | avalanche | n/a | 3 deployments: polygon `0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf`; arbitrum `0xd9492653457a69e9f4987db43d7fa0112e620cb4`; avalanche [`0x6d205337f45d6850c3c3006e28d5b52c8a432c35`](./contracts/avalanche-43114/0x6d205337f45d6850c3c3006e28d5b52c8a432c35/) | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | optimism | n/a | 2 deployments: optimism [`0x01bff41798a0bcf287b996046ca68b395dbc1071`](./contracts/optimism-10/0x01bff41798a0bcf287b996046ca68b395dbc1071/); optimism `0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | bsc | n/a | 2 deployments: bsc [`0x21caef8a43163eea865baee23b9c2e327696a3bf`](./contracts/bsc-56/0x21caef8a43163eea865baee23b9c2e327696a3bf/); bsc `0x9151434b16b9763660705744891fa906f660ecc5` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | unichain | n/a | 2 deployments: unichain [`0x9151434b16b9763660705744891fa906f660ecc5`](./contracts/unichain-130/0x9151434b16b9763660705744891fa906f660ecc5/); unichain `0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | polygon | n/a | 2 deployments: polygon [`0x6d205337f45d6850c3c3006e28d5b52c8a432c35`](./contracts/polygon-137/0x6d205337f45d6850c3c3006e28d5b52c8a432c35/); polygon `0xf1815bd50389c46847f0bda824ec8da914045d14` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | hyperliquid | n/a | 2 deployments: hyperliquid [`0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf`](./contracts/hyperliquid-999/0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf/); hyperliquid `0xe9aba835f813ca05e50a6c0ce65d0d74390f7de7` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | hyperliquid | n/a | 2 deployments: hyperliquid [`0xd9492653457a69e9f4987db43d7fa0112e620cb4`](./contracts/hyperliquid-999/0xd9492653457a69e9f4987db43d7fa0112e620cb4/); hyperliquid `0xe1ad845d93853fff44990ae0dcecd8575293681e` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | sei | n/a | 2 deployments: sei [`0x9151434b16b9763660705744891fa906f660ecc5`](./contracts/sei-1329/0x9151434b16b9763660705744891fa906f660ecc5/); sei `0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | mantle | n/a | 2 deployments: mantle [`0x1ec7df9e74be05cb5a456aca2dc1ac2cec9ab6a3`](./contracts/mantle-5000/0x1ec7df9e74be05cb5a456aca2dc1ac2cec9ab6a3/); mantle `0x779ded0c9e1022225f8e0630b35a9b54be713736` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | plasma | n/a | 2 deployments: plasma [`0x1b64b9025eebb9a6239575df9ea4b9ac46d4d193`](./contracts/plasma-9745/0x1b64b9025eebb9a6239575df9ea4b9ac46d4d193/); plasma `0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x40461291347e1ecbb09499f3371d3f17f10d7159`](./contracts/arbitrum-42161/0x40461291347e1ecbb09499f3371d3f17f10d7159/); arbitrum `0x9001dbe4d68d36ab87923a2a9dfb0c745fd25001` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | avalanche | n/a | 2 deployments: avalanche [`0x2775d5105276781b4b85ba6ea6a6653beed1dd32`](./contracts/avalanche-43114/0x2775d5105276781b4b85ba6ea6a6653beed1dd32/); avalanche `0xc6bc407706b7140ee8eef2f86f9504651b63e7f9` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | avalanche | n/a | 2 deployments: avalanche [`0x824d8fcdc36e81618377d140bec12c3b7e4e4cba`](./contracts/avalanche-43114/0x824d8fcdc36e81618377d140bec12c3b7e4e4cba/); avalanche `0xf1815bd50389c46847f0bda824ec8da914045d14` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | berachain | n/a | 2 deployments: berachain [`0x1ec7df9e74be05cb5a456aca2dc1ac2cec9ab6a3`](./contracts/berachain-80094/0x1ec7df9e74be05cb5a456aca2dc1ac2cec9ab6a3/); berachain `0x779ded0c9e1022225f8e0630b35a9b54be713736` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x57142977ba9826793398fbdec436284065187f49`](./contracts/avalanche-43114/0x57142977ba9826793398fbdec436284065187f49/); avalanche `0x7e7866bc840aff9f517a49afdbfc9e7c7aba9a68` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | berachain | n/a | [`0x476b0a565a8f1a9df7b520f9d4460f34b107c4df`](./contracts/berachain-80094/0x476b0a565a8f1a9df7b520f9d4460f34b107c4df/) | ⚠️ Unaudited |
| UChildERC20 | token | polygon | n/a | [`0x42243231fb4a64a5bcfc7f4b7a9ad92576804046`](./contracts/polygon-137/0x42243231fb4a64a5bcfc7f4b7a9ad92576804046/) | ⚠️ Unaudited |
| USDCOFTAdapter | adapter | ethereum | n/a | [`0x67480c30ff8cc128cf0250e25616857302df647f`](./contracts/ethereum-1/0x67480c30ff8cc128cf0250e25616857302df647f/) | ⚠️ Unaudited |
| WOFTAdapterFactory | adapter | ethereum | n/a | [`0x69bfc7b0deb166aa4341a2c7437956b13ea74d9f`](./contracts/ethereum-1/0x69bfc7b0deb166aa4341a2c7437956b13ea74d9f/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyAdmin | governance | bsc | n/a | 24 deployments: ethereum `0x8ad82b29261a9657a89a299dac3bfe01880778d4`; ethereum `0x943ed40709dfd0c30f25c458c54fcbb3b01ca66e`; optimism `0xe7cd86e13ac4309349f30b3435a9d337750fc82d`; bsc [`0x01bff41798a0bcf287b996046ca68b395dbc1071`](./contracts/bsc-56/0x01bff41798a0bcf287b996046ca68b395dbc1071/); bsc `0xedaba024be4d87974d5ab11c6dd586963cccb027`; bsc `0xf555a12bffaef20cc201a74ae6513cb4aadb34b9`; unichain `0x818861321540148dbf6058d585cc0427f273c97a`; unichain `0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc`; polygon `0xd9492653457a69e9f4987db43d7fa0112e620cb4`; hyperliquid `0x6d205337f45d6850c3c3006e28d5b52c8a432c35`; hyperliquid `0x779ded0c9e1022225f8e0630b35a9b54be713736`; hyperliquid `0x880f614c729c622c727f3625b263a36c0b89167f`; hyperliquid `0xb1eead6959cb5bb9b20417d6689922523b2b86c3`; hyperliquid `0xd8cf92e9b6fae6b32f795acb11edd50e8dd6ff4d`; sei `0xcb768e263fb1c62214e7cab4aa8d036d76dc59cc`; mantle [`0x01bff41798a0bcf287b996046ca68b395dbc1071`](./contracts/mantle-5000/0x01bff41798a0bcf287b996046ca68b395dbc1071/); mantle `0xf555a12bffaef20cc201a74ae6513cb4aadb34b9`; plasma `0x3224831b5f45c616f8accba907798c6236773772`; plasma `0x5be536efb28c8efbd2da6894996f5df88347d8b2`; plasma `0x779ded0c9e1022225f8e0630b35a9b54be713736`; avalanche `0xf8b07fc6924b80e4792aca834309e03caf36cd80`; berachain `0xdbbf435a45c63f7f4371fa782e72913726e9728c`; berachain `0xdfb6f25524e8233f285702cbcc5cbdb5b4718f79`; berachain `0xf555a12bffaef20cc201a74ae6513cb4aadb34b9` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OUpgradeable | unknown | berachain | n/a | 3 deployments: unichain `0x63f2f03b44bbbd04483dbeb1b2615f6ef1116ad8`; unichain `0xf48e70a5149ca9a70086aec094cbf4f79dcd32e3`; berachain [`0x4eee452c24ada19d2699c7c92cc630b5cad1d60b`](./contracts/berachain-80094/0x4eee452c24ada19d2699c7c92cc630b5cad1d60b/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (40)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x20c00000000000000000000014f22ca97301eb73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e10cfc7cc74cd87ad524373b7307c72667a0597` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x779ded0c9e1022225f8e0630b35a9b54be713736` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7916ac895d7180de50d1fca0eaeb6c7f6dfb8675` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1438c6982849a2a30270ed32ee3779e3d05b024` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb95daf376cd63f258d7c37a4efe57c10055e8e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1bc8b9001646ba0f87c1e493755972c625ace0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd19d41816042ad164d1394b6406abf04b2fc3df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedaba024be4d87974d5ab11c6dd586963cccb027` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x779ded0c9e1022225f8e0630b35a9b54be713736` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x94bcca6bdfd6a61817ab0e960bfede4984505554` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a594d5d5d1c426281c1064b07f23f57b2716b61` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x425d1d17c33bdc0615ea18d1b18cca7e14beeb58` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x779ded0c9e1022225f8e0630b35a9b54be713736` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x00000000000000000000000000000000009ce723` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x593a212dda19d70ade089da5ffcc65db5bfc905b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe3119e23fc2371d1e6b01775ba312035425a53d6` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x20c00000000000000000000014f22ca97301eb73` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x779ded0c9e1022225f8e0630b35a9b54be713736` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xbb95daf376cd63f258d7c37a4efe57c10055e8e0` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xedaba024be4d87974d5ab11c6dd586963cccb027` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x9151434b16b9763660705744891fa906f660ecc5` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe7cd86e13ac4309349f30b3435a9d337750fc82d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xee604bf71a0ff1ebd37633f91dfa61f651624672` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4fcec14f93aa57230d8463efbcee068e6183ab0a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x603b73af6dd931d78fa8b251405d14e76f72308a` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | 5 deployments: ink `0x0200c29006150606b650577bbe7b6248f58470c1`; ink `0x1cb6de532588fca4a21b7209de7c456af8434a65`; ink `0xa1be1572b4beef24f812efdc58bdc41d56a0dab2`; ink `0xc95de55ce5e93f788a1faab2a9c9503f51a5dae2`; ink `0xf50258d3c1dd88946c567920b986a12e65b50dac` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x3f82943338a8a76c35bfa0c1828aa27fd43a34e4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x567287d2a9829215a37e3b88843d32f9221e7588` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x57d798f9d3b014bac81a6b9fb3c18c0242a9411e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x6ae078461f35c3cc216a71029f71ee7bc4d9a10b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x789498616f3bb9f8df52288a9311247028872105` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x928b57f2ffeec340d05d19ba0cc634d4f812c577` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xc57efa1c7113d98bda6f9f249471704ece5dd84a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xcbafebee278374bdcf753d44255180a45f35efad` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe7cd86e13ac4309349f30b3435a9d337750fc82d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025-01-14_USDT0.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Guardian/2025-01-14_USDT0.pdf) | Guardian | Audit | 2025-01 | aging | Direct | contract_name | 12 | n/a |
| [ChainSecurity_USDT0_audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/ChainSecurity/ChainSecurity_USDT0_audit.pdf) | ChainSecurity | Audit | 2024-01 | stale | Direct | contract_name | 13 | n/a |
| [20250110_Paladin_Everdawn_Final_Report.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Paladin/20250110_Paladin_Everdawn_Final_Report.pdf) | Paladin | Audit | 2025-01 | aging | Direct | contract_name | 14 | n/a |
| [ChainSecurity_USDT0_Arbitrum_v2_audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/ChainSecurity/ChainSecurity_USDT0_Arbitrum_v2_audit.pdf) | ChainSecurity | Audit | 2025-01 | aging | Direct | contract_name | 0 | n/a |
| [ChainSecurity_USDT0_Flare_audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/ChainSecurity/ChainSecurity_USDT0_Flare_audit.pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | contract_name | 17 | n/a |
| [ChainSecurity_USDT0_HyperLiquid_and_Stable_audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/ChainSecurity/ChainSecurity_USDT0_HyperLiquid_and_Stable_audit.pdf) | ChainSecurity | Audit | 2025-02 | aging | Direct | contract_name | 6 | high |
| [ChainSecurity_USDT0_Ink_audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/ChainSecurity/ChainSecurity_USDT0_Ink_audit.pdf) | ChainSecurity | Audit | 2025-03 | aging | Direct | contract_name | 17 | n/a |
| [Everdawn Deployment Assessment.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Openzeppelin/Everdawn%20Deployment%20Assessment.pdf) | OpenZeppelin | Audit | 2025-09 | fresh | Direct | contract_name | 13 | n/a |
| [Everdawn USDT0 ERC-7802 Upgrade Audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Openzeppelin/Everdawn%20USDT0%20ERC-7802%20Upgrade%20Audit.pdf) | OpenZeppelin | Audit | 2025-03 | aging | Direct | contract_name | 12 | n/a |
| [OneSig Audit 2.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Openzeppelin/OneSig%20Audit%202.pdf) | OpenZeppelin | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [OneSig Audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Openzeppelin/OneSig%20Audit.pdf) | OpenZeppelin | Audit | 2025-03 | aging | Direct | n/a | 0 | n/a |
| [USDT0 Child Token Audit (1).pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Openzeppelin/USDT0%20Child%20Token%20Audit%20(1).pdf) | OpenZeppelin | Audit | 2025-05 | aging | Direct | contract_name | 1 | n/a |
| [USDT0 Transaction Helper Audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Openzeppelin/USDT0%20Transaction%20Helper%20Audit.pdf) | OpenZeppelin | Audit | 2025-04 | aging | Direct | n/a | 0 | n/a |
| [USDT0_Audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Openzeppelin/USDT0_Audit.pdf) | OpenZeppelin | Audit | 2025-01 | aging | Direct | contract_name | 3 | n/a |
| [TON_OFT-Ottersec-23May2025.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/OtterSec/TON_OFT-Ottersec-23May2025.pdf) | OtterSec | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [lz_native_mesh_ton_evm_audit_final.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/OtterSec/lz_native_mesh_ton_evm_audit_final.pdf) | OtterSec | Audit | 2025-06 | aging | Direct | n/a | 0 | n/a |
| [USDT0 Audit Report.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/TonTech/USDT0%20Audit%20Report.pdf) | TonTech | Audit | 2025-07 | aging | Direct | contract_name | 4 | n/a |
| [Ethena_OFT-Zellic-16JAN2025.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Zellic/Ethena_OFT-Zellic-16JAN2025.pdf) | Zellic | Audit | 2025-01 | aging | Direct | n/a | 0 | n/a |
| [TON_OFT-Zellic-19May2025.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Zellic/TON_OFT-Zellic-19May2025.pdf) | Zellic | Audit | 2025-05 | aging | Direct | n/a | 0 | n/a |
| [usdt_native_mesh_1.1_upgrade_-_zellic_audit_report_draft-1.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Zellic/usdt_native_mesh_1.1_upgrade_-_zellic_audit_report_draft-1.pdf) | Zellic | Audit | 2025-06 | aging | Direct | contract_name | 5 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| polygon | [`0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39`](./contracts/polygon-137/0x53e0bca35ec356bd5dddfebbd1fc0fd03fabad39/) | ChildERC20 | token | $8,860,676.24 | Verified native implementation with $8,860,676.24 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x313d009888329c9d1cf4f75ca3f32566335bd604`](./contracts/polygon-137/0x313d009888329c9d1cf4f75ca3f32566335bd604/) | UChildERC20Proxy | token | $58.84 | Verified native implementation with $58.84 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x3ce8426dc0b90a36f0e20d7c2acaaf4578ad4e50`](./contracts/hyperliquid-999/0x3ce8426dc0b90a36f0e20d7c2acaaf4578ad4e50/) | EQBOFT | token | $0.30 | Verified native implementation with $0.30 on-chain TVL and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ChildChainManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0xa0c68c638235ee32657e8f720a23cec1bfc77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ChildERC1155 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x8397259c983751daf40400790063935a11afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | FxChild | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x11ae59271ece49223126e089100ed74c1ae13083`](./contracts/hyperliquid-999/0x11ae59271ece49223126e089100ed74c1ae13083/) | HyperLiquidComposer_V1 | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0x7a32202edec16a34e9996f2064acc39a90eb05a0`](./contracts/hyperliquid-999/0x7a32202edec16a34e9996f2064acc39a90eb05a0/) | HyperLiquidComposer_V1_FeeToken | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x7ceb23fd6bc0add59e62ac25578270cff1b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | MaticWETH | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x519639a31ace9bf7f9c2646531ec0fb4be9a063a`](./contracts/ethereum-1/0x519639a31ace9bf7f9c2646531ec0fb4be9a063a/) | OmniCounter | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x53c3a64c8942288e12813c1f8457db45980bcfc2`](./contracts/bsc-56/0x53c3a64c8942288e12813c1f8457db45980bcfc2/) | OUpgradeable | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff`](./contracts/bsc-56/0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff/) | OUpgradeable | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xad11a8beb98bbf61dbb1aa0f6d6f2ecd87b35afa`](./contracts/hyperliquid-999/0xad11a8beb98bbf61dbb1aa0f6d6f2ecd87b35afa/) | OUpgradeable | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff`](./contracts/mantle-5000/0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff/) | OUpgradeable | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x63ab93cbc9d4ecd9c4947b1a38f458147c08e6f7`](./contracts/plasma-9745/0x63ab93cbc9d4ecd9c4947b1a38f458147c08e6f7/) | OUpgradeable | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x3224831b5f45c616f8accba907798c6236773772`](./contracts/berachain-80094/0x3224831b5f45c616f8accba907798c6236773772/) | OUpgradeable | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x6d205337f45d6850c3c3006e28d5b52c8a432c35`](./contracts/avalanche-43114/0x6d205337f45d6850c3c3006e28d5b52c8a432c35/) | SignatureChecker | unknown | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | [`0x01bff41798a0bcf287b996046ca68b395dbc1071`](./contracts/optimism-10/0x01bff41798a0bcf287b996046ca68b395dbc1071/) | TetherTokenOFTExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | [`0x21caef8a43163eea865baee23b9c2e327696a3bf`](./contracts/bsc-56/0x21caef8a43163eea865baee23b9c2e327696a3bf/) | TetherTokenOFTExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| unichain | [`0x9151434b16b9763660705744891fa906f660ecc5`](./contracts/unichain-130/0x9151434b16b9763660705744891fa906f660ecc5/) | TetherTokenOFTExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x6d205337f45d6850c3c3006e28d5b52c8a432c35`](./contracts/polygon-137/0x6d205337f45d6850c3c3006e28d5b52c8a432c35/) | TetherTokenOFTExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf`](./contracts/hyperliquid-999/0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf/) | TetherTokenOFTExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| hyperliquid | [`0xd9492653457a69e9f4987db43d7fa0112e620cb4`](./contracts/hyperliquid-999/0xd9492653457a69e9f4987db43d7fa0112e620cb4/) | TetherTokenOFTExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| sei | [`0x9151434b16b9763660705744891fa906f660ecc5`](./contracts/sei-1329/0x9151434b16b9763660705744891fa906f660ecc5/) | TetherTokenOFTExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| mantle | [`0x1ec7df9e74be05cb5a456aca2dc1ac2cec9ab6a3`](./contracts/mantle-5000/0x1ec7df9e74be05cb5a456aca2dc1ac2cec9ab6a3/) | TetherTokenOFTExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| plasma | [`0x1b64b9025eebb9a6239575df9ea4b9ac46d4d193`](./contracts/plasma-9745/0x1b64b9025eebb9a6239575df9ea4b9ac46d4d193/) | TetherTokenOFTExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | [`0x40461291347e1ecbb09499f3371d3f17f10d7159`](./contracts/arbitrum-42161/0x40461291347e1ecbb09499f3371d3f17f10d7159/) | TetherTokenOFTExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x2775d5105276781b4b85ba6ea6a6653beed1dd32`](./contracts/avalanche-43114/0x2775d5105276781b4b85ba6ea6a6653beed1dd32/) | TetherTokenOFTExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | [`0x824d8fcdc36e81618377d140bec12c3b7e4e4cba`](./contracts/avalanche-43114/0x824d8fcdc36e81618377d140bec12c3b7e4e4cba/) | TetherTokenOFTExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| berachain | [`0x1ec7df9e74be05cb5a456aca2dc1ac2cec9ab6a3`](./contracts/berachain-80094/0x1ec7df9e74be05cb5a456aca2dc1ac2cec9ab6a3/) | TetherTokenOFTExtension | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | [`0x42243231fb4a64a5bcfc7f4b7a9ad92576804046`](./contracts/polygon-137/0x42243231fb4a64a5bcfc7f4b7a9ad92576804046/) | UChildERC20 | token | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x67480c30ff8cc128cf0250e25616857302df647f`](./contracts/ethereum-1/0x67480c30ff8cc128cf0250e25616857302df647f/) | USDCOFTAdapter | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | [`0x69bfc7b0deb166aa4341a2c7437956b13ea74d9f`](./contracts/ethereum-1/0x69bfc7b0deb166aa4341a2c7437956b13ea74d9f/) | WOFTAdapterFactory | adapter | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 57 |
| upstream | 0 |
| standard_library | 13 |
| needs_review | 42 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 8
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=106, extraction_exact=14

Zero-match audit list:

- [14072] ChainSecurity_USDT0_Arbitrum_v2_audit.pdf
- [14078] OneSig Audit 2.pdf
- [14079] OneSig Audit.pdf
- [14081] USDT0 Transaction Helper Audit.pdf
- [14083] TON_OFT-Ottersec-23May2025.pdf
- [14084] lz_native_mesh_ton_evm_audit_final.pdf
- [14086] Ethena_OFT-Zellic-16JAN2025.pdf
- [14087] TON_OFT-Zellic-19May2025.pdf

Fork inheritance lineage and inherited audits are included when available.
