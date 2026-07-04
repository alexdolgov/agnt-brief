# Agentic Audit Brief: USDT0

## Project Overview

- Project: USDT0 (`usdt0`)
- Website: [https://usdt0.to](https://usdt0.to)
- Lifecycle: unknown
- Generated: 2026-07-03T21:07:03.991Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-b097
- Chains: arbitrum, avalanche, berachain, bsc, celo, ethereum, hyperliquid, ink, mantle, optimism, plasma, polygon, sei, unichain
- Contract surface: 133 unique implementations (283 raw deployments)
- DeFi Llama TVL: $3,624,558,073.84
- On-chain TVL (included contracts): $42,178,136.11
- TVL by chain: Ethereum $18,884,287.59 | Arbitrum $11,220,961.08 | Polygon $8,860,735.08 | Celo $3,212,152.07 | Hyperliquid $0.30

## Project Description

Bridge. Structurally: 171 project-authored contract(s) across 11 chain(s); 15 ERC20 tokens, 1 ERC721 NFT, 1 ERC1155 multi-token; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 11 functional families. Its contracts share 39 common project-authored base contract(s) (oapp, oappsender, oappcore). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 376; live-surface contracts included: 283 (227 live, 56 unknown).
- Excluded by liveness: 93 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 27/84 (32.1%)
- Deployed-live implementations: 84 of 133 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 27/84
- Verified + Unaudited implementations: 56
- Verified by bytecode match: 2
- Unverified implementations: 49
- Unique implementations: 133
- Raw deployments: 283
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 13
- ASD (verified + unaudited TVL): $8,860,735.37
- Latest audit: 2025-09 (fresh)
- Audit staleness (calendar age): 1 fresh, 18 aging, 1 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 5 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 22 match-unverified
- Tier 1 coverage: 27.4% (ChainSecurity, OpenZeppelin)

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| ChainSecurity | Tier 1 | 21 | 25.0% | 2025-03 |
| OpenZeppelin | Tier 1 | 16 | 19.0% | 2025-09 |
| Paladin | Tier 2 | 14 | 16.7% | 2025-01 |
| Guardian | Tier 2 | 12 | 14.3% | 2025-01 |
| TonTech | Tier 2 | 4 | 4.8% | 2025-07 |
| Zellic | Tier 2 | 1 | 1.2% | 2025-06 |

## Contract Surface

### ✅ Verified + Audited (26)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UsdtOFT | token | ethereum | n/a | 5 deployments: ethereum [`0x1f748c...15dfb0`](./contracts/ethereum-1/0x1f748c76de468e9d11bd340fa9d5cbadf315dfb0/); ethereum `0x811ed7...b0d5c0`; arbitrum `0x77652d...919b92`; celo `0x811ed7...b0d5c0`; celo `0xf10e16...2db243` | ✅ Audited |
| ArbitrumExtension | unknown | arbitrum | n/a | 3 deployments: arbitrum [`0xba4eee...133a7e`](./contracts/arbitrum-42161/0xba4eee20f434bc3908a0b18da496348657133a7e/); arbitrum `0xd80a88...fe2642`; arbitrum `0xf31e1a...d39b50` | ✅ Audited |
| ArbitrumExtensionV2 | adapter | arbitrum | n/a | [`0xfd086b...9fcbb9`](./contracts/arbitrum-42161/0xfd086bc7cd5c481dcc9c85ebe478a1c0b69fcbb9/) | ✅ Audited |
| ERC20Mock | token | ethereum | n/a | [`0xf1815b...045d14`](./contracts/ethereum-1/0xf1815bd50389c46847f0bda824ec8da914045d14/) | ✅ Audited |
| HyperLiquidComposer | unknown | hyperliquid | n/a | 2 deployments: hyperliquid [`0x036afc...44484b`](./contracts/hyperliquid-999/0x036afc9e3498ec863239e9e3f7eeb5af9c44484b/); hyperliquid `0xcb768e...dc59cc` | ✅ Audited |
| HyperliquidExtension | adapter | hyperliquid | n/a | 2 deployments: hyperliquid [`0x4bb133...61b259`](./contracts/hyperliquid-999/0x4bb13347ce7cbf8884adb137aeda0355ef61b259/); hyperliquid `0xf4d923...e37949` | ✅ Audited |
| HyperliquidExtension | adapter | hyperliquid | n/a | 2 deployments: hyperliquid [`0xb8ce59...625ebb`](./contracts/hyperliquid-999/0xb8ce59fc3717ada4c02eadf9682a9e934f625ebb/); hyperliquid `0xf555a1...db34b9` | ✅ Audited |
| MultiHopComposer | unknown | arbitrum | n/a | [`0x759ba4...4a2ad1`](./contracts/arbitrum-42161/0x759ba420bf1ded1765f18c2dc3fc57a1964a2ad1/) | ✅ Audited |
| OAdapterUpgradeable | adapter | ethereum | n/a | [`0x6c96de...a41dee`](./contracts/ethereum-1/0x6c96de32cea08842dcc4058c14d3aaad7fa41dee/) | ✅ Audited |
| OAdapterUpgradeable | adapter | ethereum | n/a | [`0xb9c232...fd696c`](./contracts/ethereum-1/0xb9c2321bb7d0db468f570d10a424d1cc8efd696c/) | ✅ Audited |
| OFTMock | unknown | ethereum | n/a | [`0xbc7f24...c14b84`](./contracts/ethereum-1/0xbc7f244e2b38657bd014a5f6f4e4ba1125c14b84/) | ✅ Audited |
| OUpgradeable | proxy | optimism | n/a | [`0xf03b4d...51a0ad`](./contracts/optimism-10/0xf03b4d9ac1d5d1e7c4cef54c2a313b9fe051a0ad/) | ✅ Audited |
| OUpgradeable | proxy | unichain | n/a | [`0xc07be8...f03ec3`](./contracts/unichain-130/0xc07be8994d035631c36fb4a89c918cefb2f03ec3/) | ✅ Audited |
| OUpgradeable | proxy | polygon | n/a | [`0x5421cf...49e352`](./contracts/polygon-137/0x5421cf4288d8007d3c43ac4246eafce5b049e352/) | ✅ Audited |
| OUpgradeable | proxy | polygon | n/a | [`0x6ba103...829e13`](./contracts/polygon-137/0x6ba10300f0dc58b7a1e4c0e41f5dabb7d7829e13/) | ✅ Audited |
| OUpgradeable | proxy | hyperliquid | n/a | [`0x4e41cf...151daf`](./contracts/hyperliquid-999/0x4e41cfc3f3b19e29e323d2c36f8f202a1e151daf/) | ✅ Audited |
| OUpgradeable | proxy | hyperliquid | n/a | [`0x904861...237e98`](./contracts/hyperliquid-999/0x904861a24f30ec96ea7cfc3be9ea4b476d237e98/) | ✅ Audited |
| OUpgradeable | proxy | sei | n/a | [`0x56fe74...85cc60`](./contracts/sei-1329/0x56fe74a2e3b484b921c447357203431a3485cc60/) | ✅ Audited |
| OUpgradeable | proxy | plasma | n/a | [`0x02ca37...6a7cf9`](./contracts/plasma-9745/0x02ca37966753bdddf11216b73b16c1de756a7cf9/) | ✅ Audited |
| OUpgradeable | proxy | arbitrum | n/a | [`0x14e4a1...298d92`](./contracts/arbitrum-42161/0x14e4a1b13bf7f943c8ff7c51fb60fa964a298d92/) | ✅ Audited |
| OUpgradeable | proxy | arbitrum | n/a | [`0xf40542...b6df39`](./contracts/arbitrum-42161/0xf40542a7b66ad7c68c459ee3679635d2fdb6df39/) | ✅ Audited |
| OUpgradeable | proxy | berachain | n/a | [`0x3dc963...0379cb`](./contracts/berachain-80094/0x3dc96399109df5ceb2c226664a086140bd0379cb/) | ✅ Audited |
| TetherToken | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4c0d2c...f9e566`](./contracts/ethereum-1/0x4c0d2c74a8d26f1e4f5653021c521f5471f9e566/); ethereum `0x687496...782f38`; ethereum `0x93d070...fc25e3` | ✅ Audited |
| TetherTokenOFTExtension | adapter | unichain | n/a | 4 deployments: bsc `0x1ec7df...9ab6a3`; unichain [`0x01bff4...bc1071`](./contracts/unichain-130/0x01bff41798a0bcf287b996046ca68b395dbc1071/); polygon `0xe1ad84...93681e`; avalanche `0xd94926...620cb4` | ✅ Audited |
| TransparentUpgradeableProxy | proxy | bsc | n/a | [`0x779ded...713736`](./contracts/bsc-56/0x779ded0c9e1022225f8e0630b35a9b54be713736/) | ✅ Audited |
| UChildUSDT0 | token | polygon | n/a | [`0xc2132d...b58e8f`](./contracts/polygon-137/0xc2132d05d31c914a87c6611c10748aeb04b58e8f/) | ✅ Audited |

### ⚠️ Verified + Unaudited (56)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ChildERC20 | unknown | polygon | n/a | 16 deployments: polygon [`0x0b9020...6eb88f`](./contracts/polygon-137/0x0b9020d4e32990d67559b1317c7bf0c15d6eb88f/); polygon `0x46ca15...ec1871`; polygon `0x4a8766...e1f2b9`; polygon `0x4e5612...1f6db6`; polygon `0x53e0bc...abad39`; polygon `0x556f50...aa9e6d`; polygon `0x578360...11ed5f`; polygon `0x5fab57...c5c8d6`; polygon `0x6bfb5b...a19243`; polygon `0x71b821...085978`; polygon `0x8484ef...922b30`; polygon `0xadc0c4...69ea73`; polygon `0xb6a508...5c1326`; polygon `0xca3441...28a223`; polygon `0xeffdcb...230e3e`; polygon `0xf2f3bd...2be82a` | ⚠️ Unaudited |
| UChildERC20Proxy | token | polygon | n/a | 2 deployments: polygon [`0x313d00...5bd604`](./contracts/polygon-137/0x313d009888329c9d1cf4f75ca3f32566335bd604/); polygon `0x5a2fdf...908d19` | ⚠️ Unaudited |
| EQBOFT | token | hyperliquid | n/a | 3 deployments: hyperliquid [`0x3ce842...ad4e50`](./contracts/hyperliquid-999/0x3ce8426dc0b90a36f0e20d7c2acaaf4578ad4e50/); hyperliquid `0x73e247...4cac8c`; hyperliquid `0xb4484a...2cefd1` | ⚠️ Unaudited |
| ChildChainManager | governance | polygon | n/a | [`0xa6fa4f...d1c0aa`](./contracts/polygon-137/0xa6fa4fb5f76172d178d61b04b0ecd319c5d1c0aa/) | ⚠️ Unaudited |
| ChildERC1155 | token | polygon | n/a | [`0xa0c68c...c77c77`](./contracts/polygon-137/0xa0c68c638235ee32657e8f720a23cec1bfc77c77/) | ⚠️ Unaudited |
| DVFDepositContract | unknown | arbitrum | n/a | [`0x104177...b28ad0`](./contracts/arbitrum-42161/0x10417734001162ea139e8b044dfe28dbb8b28ad0/) | ⚠️ Unaudited |
| FxChild | unknown | polygon | n/a | [`0x839725...afa28a`](./contracts/polygon-137/0x8397259c983751daf40400790063935a11afa28a/) | ⚠️ Unaudited |
| GnosisSafeL2 | governance | berachain | n/a | [`0x425d1d...beeb58`](./contracts/berachain-80094/0x425d1d17c33bdc0615ea18d1b18cca7e14beeb58/) | ⚠️ Unaudited |
| GnosisSafeProxy | governance | sei | n/a | [`0x4dff9b...600bf8`](./contracts/sei-1329/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| HyperLiquidComposer_V1 | unknown | hyperliquid | n/a | 15 deployments: hyperliquid [`0x11ae59...e13083`](./contracts/hyperliquid-999/0x11ae59271ece49223126e089100ed74c1ae13083/); hyperliquid `0x19d317...0cabc2`; hyperliquid `0x2a661a...90dd93`; hyperliquid `0x37f027...0594df`; hyperliquid `0x408380...32bfd5`; hyperliquid `0x5bddd9...2dc486`; hyperliquid `0x5bfee5...6dc280`; hyperliquid `0x62855e...b82b58`; hyperliquid `0x689f01...dc1802`; hyperliquid `0xc1c74b...8d4ffe`; hyperliquid `0xd9b7a2...3e04a6`; hyperliquid `0xe5aa9a...99d921`; hyperliquid `0xfa5c61...c5e756`; hyperliquid `0xfa616f...fa8aae`; hyperliquid `0xfb6761...f873d8` | ⚠️ Unaudited |
| HyperLiquidComposer_V1_FeeToken | token | hyperliquid | n/a | 4 deployments: hyperliquid [`0x7a3220...eb05a0`](./contracts/hyperliquid-999/0x7a32202edec16a34e9996f2064acc39a90eb05a0/); hyperliquid `0x80123a...2e7585`; hyperliquid `0xa18199...4a62eb`; hyperliquid `0xb120da...a8123a` | ⚠️ Unaudited |
| MaticWETH | token | polygon | n/a | [`0x7ceb23...b9f619`](./contracts/polygon-137/0x7ceb23fd6bc0add59e62ac25578270cff1b9f619/) | ⚠️ Unaudited |
| OmniCounter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x519639...9a063a`](./contracts/ethereum-1/0x519639a31ace9bf7f9c2646531ec0fb4be9a063a/); ethereum `0xe87fb1...432f94` | ⚠️ Unaudited |
| OUpgradeable | proxy | bsc | n/a | 2 deployments: bsc [`0x53c3a6...0bcfc2`](./contracts/bsc-56/0x53c3a64c8942288e12813c1f8457db45980bcfc2/); bsc `0xded166...b5cada` | ⚠️ Unaudited |
| OUpgradeable | proxy | bsc | n/a | 2 deployments: bsc [`0xaf37e8...0847ff`](./contracts/bsc-56/0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff/); bsc `0xcb768e...dc59cc` | ⚠️ Unaudited |
| OUpgradeable | proxy | hyperliquid | n/a | 2 deployments: hyperliquid [`0xad11a8...b35afa`](./contracts/hyperliquid-999/0xad11a8beb98bbf61dbb1aa0f6d6f2ecd87b35afa/); hyperliquid `0xcd9a74...5aa7c8` | ⚠️ Unaudited |
| OUpgradeable | proxy | mantle | n/a | 2 deployments: mantle [`0xaf37e8...0847ff`](./contracts/mantle-5000/0xaf37e8b6c9ed7f6318979f56fc287d76c30847ff/); mantle `0xcb768e...dc59cc` | ⚠️ Unaudited |
| OUpgradeable | proxy | plasma | n/a | 2 deployments: plasma [`0x0200c2...8470c1`](./contracts/plasma-9745/0x0200c29006150606b650577bbe7b6248f58470c1/); plasma `0xc00e2c...ae65c1` | ⚠️ Unaudited |
| OUpgradeable | proxy | plasma | n/a | 2 deployments: plasma [`0x4970ea...0e8752`](./contracts/plasma-9745/0x4970ea919f0073d4e7c4fa8ec1b8cefaaa0e8752/); plasma `0x63ab93...08e6f7` | ⚠️ Unaudited |
| OUpgradeable | proxy | berachain | n/a | 2 deployments: berachain [`0x322483...773772`](./contracts/berachain-80094/0x3224831b5f45c616f8accba907798c6236773772/); berachain `0x4970ea...0e8752` | ⚠️ Unaudited |
| Safe | unknown | ethereum | n/a | [`0x4dff9b...600bf8`](./contracts/ethereum-1/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| SafeL2 | unknown | optimism | n/a | [`0x4dff9b...600bf8`](./contracts/optimism-10/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| SafeL2 | unknown | unichain | n/a | [`0x4dff9b...600bf8`](./contracts/unichain-130/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| SafeL2 | unknown | polygon | n/a | [`0x4dff9b...600bf8`](./contracts/polygon-137/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| SafeL2 | unknown | mantle | n/a | [`0x4dff9b...600bf8`](./contracts/mantle-5000/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| SafeL2 | unknown | plasma | n/a | [`0x4dff9b...600bf8`](./contracts/plasma-9745/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| SafeL2 | unknown | arbitrum | n/a | [`0x4dff9b...600bf8`](./contracts/arbitrum-42161/0x4dff9b5b0143e642a3f63a5bcf2d1c328e600bf8/) | ⚠️ Unaudited |
| SafeProxy | unknown | hyperliquid | n/a | [`0xb64a89...7fc541`](./contracts/hyperliquid-999/0xb64a89ad247a2d691a728bb6822a85eedd7fc541/) | ⚠️ Unaudited |
| SignatureChecker | unknown | avalanche | n/a | 4 deployments: ethereum `0xdf7108...f86b6c`; polygon `0xaf368c...bcbebf`; arbitrum `0xd94926...620cb4`; avalanche [`0x6d2053...432c35`](./contracts/avalanche-43114/0x6d205337f45d6850c3c3006e28d5b52c8a432c35/) | ⚠️ Unaudited |
| TetherToken | unknown | ethereum | n/a | 4 deployments: ethereum [`0x354f86...d9ba87`](./contracts/ethereum-1/0x354f861227fc9b7abf55389e0038163047d9ba87/); ethereum `0xd131ef...3b36b4`; ethereum `0xd17c11...b91c5e`; ethereum `0xdf601d...f8d1d5` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | optimism | n/a | 2 deployments: optimism [`0x01bff4...bc1071`](./contracts/optimism-10/0x01bff41798a0bcf287b996046ca68b395dbc1071/); optimism `0xb8ce59...625ebb` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | bsc | n/a | 2 deployments: bsc [`0x21caef...96a3bf`](./contracts/bsc-56/0x21caef8a43163eea865baee23b9c2e327696a3bf/); bsc `0x915143...60ecc5` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | unichain | n/a | 2 deployments: unichain [`0x915143...60ecc5`](./contracts/unichain-130/0x9151434b16b9763660705744891fa906f660ecc5/); unichain `0xaf37e8...0847ff` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | polygon | n/a | 2 deployments: polygon [`0x6d2053...432c35`](./contracts/polygon-137/0x6d205337f45d6850c3c3006e28d5b52c8a432c35/); polygon `0xf1815b...045d14` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | hyperliquid | n/a | 2 deployments: hyperliquid [`0xaf368c...bcbebf`](./contracts/hyperliquid-999/0xaf368c91793cb22739386dfcbbb2f1a9e4bcbebf/); hyperliquid `0xe9aba8...0f7de7` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | hyperliquid | n/a | 2 deployments: hyperliquid [`0xd94926...620cb4`](./contracts/hyperliquid-999/0xd9492653457a69e9f4987db43d7fa0112e620cb4/); hyperliquid `0xe1ad84...93681e` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | sei | n/a | 2 deployments: sei [`0x915143...60ecc5`](./contracts/sei-1329/0x9151434b16b9763660705744891fa906f660ecc5/); sei `0xaf37e8...0847ff` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | mantle | n/a | 2 deployments: mantle [`0x1ec7df...9ab6a3`](./contracts/mantle-5000/0x1ec7df9e74be05cb5a456aca2dc1ac2cec9ab6a3/); mantle `0x779ded...713736` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | plasma | n/a | 5 deployments: plasma [`0x1b64b9...d4d193`](./contracts/plasma-9745/0x1b64b9025eebb9a6239575df9ea4b9ac46d4d193/); plasma `0x4a5cd3...7a6e0e`; plasma `0xb8ce59...625ebb`; plasma `0xcab8f3...f50b90`; plasma `0xf555a1...db34b9` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | arbitrum | n/a | 2 deployments: arbitrum [`0x404612...0d7159`](./contracts/arbitrum-42161/0x40461291347e1ecbb09499f3371d3f17f10d7159/); arbitrum `0x9001db...d25001` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | avalanche | n/a | 2 deployments: avalanche [`0x2775d5...d1dd32`](./contracts/avalanche-43114/0x2775d5105276781b4b85ba6ea6a6653beed1dd32/); avalanche `0xc6bc40...63e7f9` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | avalanche | n/a | 2 deployments: avalanche [`0x824d8f...4e4cba`](./contracts/avalanche-43114/0x824d8fcdc36e81618377d140bec12c3b7e4e4cba/); avalanche `0xf1815b...045d14` | ⚠️ Unaudited |
| TetherTokenOFTExtension | adapter | berachain | n/a | 2 deployments: berachain [`0x1ec7df...9ab6a3`](./contracts/berachain-80094/0x1ec7df9e74be05cb5a456aca2dc1ac2cec9ab6a3/); berachain `0x779ded...713736` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | avalanche | n/a | 2 deployments: avalanche [`0x571429...187f49`](./contracts/avalanche-43114/0x57142977ba9826793398fbdec436284065187f49/); avalanche `0x7e7866...ba9a68` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | proxy | berachain | n/a | [`0x476b0a...07c4df`](./contracts/berachain-80094/0x476b0a565a8f1a9df7b520f9d4460f34b107c4df/) | ⚠️ Unaudited |
| UChildAdministrableERC20 | unknown | polygon | n/a | [`0xdd9185...812226`](./contracts/polygon-137/0xdd9185db084f5c4fff3b4f70e7ba62123b812226/) | ⚠️ Unaudited |
| UChildDAI | unknown | polygon | n/a | [`0x490e37...7999a7`](./contracts/polygon-137/0x490e379c9cff64944be82b849f8fd5972c7999a7/) | ⚠️ Unaudited |
| UChildERC20 | unknown | polygon | n/a | 23 deployments: polygon [`0x0735a6...6f0e12`](./contracts/polygon-137/0x0735a62b0b6e837fa67130589988436fd26f0e12/); polygon `0x12aa9d...38621e`; polygon `0x15e22d...fb0269`; polygon `0x1bd727...de1443`; polygon `0x1ce2aa...dba776`; polygon `0x422432...804046`; polygon `0x55ffbe...8da5db`; polygon `0x5e81f3...0f1299`; polygon `0x77d58f...86a32e`; polygon `0x7ffb3d...afc1e2`; polygon `0x8234e1...bcb209`; polygon `0x88a034...5ae06a`; polygon `0x9b7a8c...efe32e`; polygon `0x9cceed...622c38`; polygon `0xa42544...4aea96`; polygon `0xa48e39...2d180b`; polygon `0xa5b0ef...4a1f8f`; polygon `0xb2223a...fe24d8`; polygon `0xbfbd88...0468f7`; polygon `0xcd7f85...5752a3`; polygon `0xd77cf2...ab16cb`; polygon `0xe47efb...c4f718`; polygon `0xea0d65...685586` | ⚠️ Unaudited |
| USDCOFTAdapter | adapter | ethereum | n/a | [`0x67480c...df647f`](./contracts/ethereum-1/0x67480c30ff8cc128cf0250e25616857302df647f/) | ⚠️ Unaudited |
| WOFTAdapterFactory | adapter | ethereum | n/a | [`0x69bfc7...a74d9f`](./contracts/ethereum-1/0x69bfc7b0deb166aa4341a2c7437956b13ea74d9f/) | ⚠️ Unaudited |
| wstETHOFTAdapterUpgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x02dedc...7f808d`](./contracts/ethereum-1/0x02dedca9ccfdaa3a68fac4f368644416be7f808d/); ethereum `0x6cea30...795848` | ⚠️ Unaudited |
| wstETHOFTAdapterUpgradeable | unknown | ethereum | n/a | 3 deployments: ethereum [`0x1a9dd4...41ce06`](./contracts/ethereum-1/0x1a9dd47b69e01a1a48a162bf52bd447b1b41ce06/); ethereum `0x8ac372...8c90ef`; ethereum `0xa2d339...19ee3f` | ⚠️ Unaudited |
| wstETHOFTAdapterUpgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4175d9...13ebe3`](./contracts/ethereum-1/0x4175d9dea315864ed0bcdc256805ea187b13ebe3/); ethereum `0x5c2973...be7362` | ⚠️ Unaudited |
| wstETHOFTAdapterUpgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x734cef...f9610a`](./contracts/ethereum-1/0x734cef0c55c856ba82d82c209136b3f33df9610a/); ethereum `0xb8b21b...4e9339` | ⚠️ Unaudited |
| wstETHOFTAdapterUpgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7bcdc4...8629d6`](./contracts/ethereum-1/0x7bcdc4c2d626c5c9d94dfceada5204b1798629d6/); ethereum `0xfe634e...6e001f` | ⚠️ Unaudited |
| wstETHOFTAdapterUpgradeable | unknown | ethereum | n/a | 3 deployments: ethereum [`0x7bf810...fac855`](./contracts/ethereum-1/0x7bf810829004cd2f2cc26c464c7c6b821dfac855/); ethereum `0xa460c9...955839`; ethereum `0xfe146a...b4a337` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| ProxyAdmin | governance | bsc | n/a | 35 deployments: ethereum `0x856fcc...fb873e`; ethereum `0x8ad82b...0778d4`; ethereum `0x943ed4...1ca66e`; ethereum `0x963c3c...a8eaa0`; ethereum `0xba4eee...133a7e`; ethereum `0xc95801...726782`; ethereum `0xd04a69...86ec39`; optimism `0xe7cd86...0fc82d`; bsc [`0x01bff4...bc1071`](./contracts/bsc-56/0x01bff41798a0bcf287b996046ca68b395dbc1071/); bsc `0xedaba0...ccb027`; bsc `0xf555a1...db34b9`; unichain `0x818861...73c97a`; unichain `0xcb768e...dc59cc`; polygon `0xd94926...620cb4`; hyperliquid `0x6d2053...432c35`; hyperliquid `0x779ded...713736`; hyperliquid `0x880f61...89167f`; hyperliquid `0xb1eead...2b86c3`; hyperliquid `0xd8cf92...d6ff4d`; sei `0xcb768e...dc59cc`; mantle [`0x01bff4...bc1071`](./contracts/mantle-5000/0x01bff41798a0bcf287b996046ca68b395dbc1071/); mantle `0xf555a1...db34b9`; plasma `0x322483...773772`; plasma `0x5be536...47d8b2`; plasma `0x779ded...713736`; arbitrum `0x38f03b...a036e8`; arbitrum `0x553ec4...6a1b4a`; arbitrum `0x85ff34...bb940b`; arbitrum `0x934452...97adda`; arbitrum `0xb06fba...cdcf03`; arbitrum `0xed9d63...f21646`; avalanche `0xf8b07f...36cd80`; berachain `0xdbbf43...e9728c`; berachain `0xdfb6f2...718f79`; berachain `0xf555a1...db34b9` | ✅ Audited (bytecode match) |

### ⚠️ Verified by Bytecode + Unaudited (1)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| OUpgradeable | unknown | berachain | n/a | 3 deployments: unichain `0x63f2f0...116ad8`; unichain `0xf48e70...cd32e3`; berachain [`0x4eee45...d1d60b`](./contracts/berachain-80094/0x4eee452c24ada19d2699c7c92cc630b5cad1d60b/) | ⚠️ Unaudited (bytecode match) |

### ❓ Unverified (49)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| UnnamedContract | unknown | ethereum | n/a | `0x20c000...01eb73` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x3e10cf...7a0597` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x779ded...713736` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x7916ac...fb8675` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x824d8f...4e4cba` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9001db...d25001` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x96c4bf...00159b` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x9b3093...8fa3d1` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xa1438c...05b024` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xaf37e8...0847ff` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xbb95da...55e8e0` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc1bc8b...5ace0c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xdd19d4...2fc3df` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xde7f57...071e5e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xedaba0...ccb027` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x779ded...713736` | ❓ Unverified |
| UnnamedContract | unknown | unichain | n/a | `0x94bcca...505554` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x1a594d...716b61` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x425d1d...beeb58` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x779ded...713736` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0x9d1701...87de74` | ❓ Unverified |
| UnnamedContract | unknown | polygon | n/a | `0xc760de...6d7345` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x000000...9ce723` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0x593a21...fc905b` | ❓ Unverified |
| UnnamedContract | unknown | hyperliquid | n/a | `0xe3119e...5a53d6` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x20c000...01eb73` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0x779ded...713736` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xbb95da...55e8e0` | ❓ Unverified |
| UnnamedContract | unknown | sei | n/a | `0xedaba0...ccb027` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0x915143...60ecc5` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xb8ce59...625ebb` | ❓ Unverified |
| UnnamedContract | unknown | mantle | n/a | `0xe7cd86...0fc82d` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0x71c0af...411d88` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xa297ec...319212` | ❓ Unverified |
| UnnamedContract | unknown | arbitrum | n/a | `0xee604b...624672` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x4fcec1...83ab0a` | ❓ Unverified |
| UnnamedContract | unknown | celo | n/a | `0x603b73...72308a` | ❓ Unverified |
| UnnamedContract | unknown | ink | n/a | 5 deployments: ink `0x0200c2...8470c1`; ink `0x1cb6de...434a65`; ink `0xa1be15...a0dab2`; ink `0xc95de5...a5dae2`; ink `0xf50258...b50dac` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x3f8294...3a34e4` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x567287...1e7588` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x57d798...a9411e` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x6ae078...d9a10b` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x789498...872105` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0x928b57...12c577` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xaf37e8...0847ff` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xb8ce59...625ebb` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xc57efa...5dd84a` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xcbafeb...35efad` | ❓ Unverified |
| UnnamedContract | unknown | berachain | n/a | `0xe7cd86...0fc82d` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [2025-01-14_USDT0.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Guardian/2025-01-14_USDT0.pdf) | Guardian | Audit | 2025-01 | aging | Direct | contract_name | 12 | n/a |
| [ChainSecurity_USDT0_audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/ChainSecurity/ChainSecurity_USDT0_audit.pdf) | ChainSecurity | Audit | 2024-01 | stale | Direct | contract_name | 13 | n/a |
| [20250110_Paladin_Everdawn_Final_Report.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/Paladin/20250110_Paladin_Everdawn_Final_Report.pdf) | Paladin | Audit | 2025-01 | aging | Direct | contract_name | 14 | n/a |
| [ChainSecurity_USDT0_Arbitrum_v2_audit.pdf](https://github.com/Everdawn-Labs/usdt0-audit-reports/blob/main/ChainSecurity/ChainSecurity_USDT0_Arbitrum_v2_audit.pdf) | ChainSecurity | Audit | 2025-01 | aging | Direct | contract_name | 3 | high |
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

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 133 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 7
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=3
- Match method counts: contract_name=106, extraction_exact=14

Zero-match audit list:

- [14078] OneSig Audit 2.pdf
- [14079] OneSig Audit.pdf
- [14081] USDT0 Transaction Helper Audit.pdf
- [14083] TON_OFT-Ottersec-23May2025.pdf
- [14084] lz_native_mesh_ton_evm_audit_final.pdf
- [14086] Ethena_OFT-Zellic-16JAN2025.pdf
- [14087] TON_OFT-Zellic-19May2025.pdf

Fork inheritance lineage and inherited audits are included when available.
