# Agentic Audit Brief: Hourglass

## Project Overview

- Project: Hourglass (`hourglass`)
- Website: [https://hourglass.com/](https://hourglass.com/)
- Lifecycle: unknown
- Generated: 2026-07-03T21:05:58.674Z
- Pipeline run: v2-pipeline-2026-07-01-3e33f2-f007
- Chains: base, ethereum, mantle
- Contract surface: 217 unique implementations (452 raw deployments)
- DeFi Llama TVL: $116,802.97
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

Yield. Structurally: 248 project-authored contract(s) across 3 chain(s); 3 ERC4626 vaults, 30 ERC20 tokens, 11 ERC721 NFTs, 6 ERC1155 multi-tokens, 1 Chainlink feed; role-gated via AccessControl; upgradeable via ERC1967/UUPS proxies; built on openzeppelin.

### Architecture

The protocol comprises 8 functional families. Its contracts share 37 common project-authored base contract(s) (proxy, erc20upgradeable, contextupgradeable). Dominant framework: openzeppelin.

## Contract Surface Quality

- Indexed contracts: 537; live-surface contracts included: 405 (374 live, 31 unknown).
- Excluded by liveness: 132 inactive, 0 singleton, 0 uninitialized.
- Deployment units: 0/0 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of deployed-live implementations: 3/191 (1.6%)
- Deployed-live implementations: 191 of 217 unique (rest dead/inactive/uninitialized)
- All verified implementations audited (incl. non-live): 3/191
- Verified + Unaudited implementations: 188
- Verified by bytecode match: 0
- Unverified implementations: 26
- Unique implementations: 217
- Raw deployments: 452
- Audits discovered: 7 (7 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 4
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2024-11 (aging)
- Audit staleness (calendar age): 0 fresh, 1 aging, 6 stale, 0 unknown
- Coverage code basis (deployed vs audited code): 2 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 1 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| unknown | Tier 2 | 3 | 1.6% | 2024-03 |

## Contract Surface

### ✅ Verified + Audited (3)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| HourglassERC20TBT | token | ethereum | n/a | 63 deployments: ethereum [`0x004d95...99dd5d`](./contracts/ethereum-1/0x004d956c022bd0791fc34c4b4f06ec65d499dd5d/); ethereum `0x036d9d...08544b`; ethereum `0x0abcbd...3f3ca6`; ethereum `0x2b8e68...0fad28`; ethereum `0x3e9314...73d863`; ethereum `0x418cff...4fa358`; ethereum `0x43efe8...0a060d`; ethereum `0x47a3a3...9058e4`; ethereum `0x484f8d...a77a71`; ethereum `0x4e11cf...9fcbbe`; ethereum `0x4eaf2a...e4842c`; ethereum `0x577512...9311c3`; ethereum `0x602883...3d0585`; ethereum `0x60e3e1...68d86b`; ethereum `0x66e400...a7c37d`; ethereum `0x68f080...2f4ba6`; ethereum `0x7875ea...32870b`; ethereum `0x859ce1...4d788e`; ethereum `0x8bd79f...b92e1e`; ethereum `0x8ed775...495e5c`; ethereum `0x9734a6...9416bf`; ethereum `0x98ca0f...8a69d7`; ethereum `0x9b7f50...f20418`; ethereum `0x9e1c22...0d6bdf`; ethereum `0x9ec533...33d863`; ethereum `0x9eee7e...361857`; ethereum `0xa2962e...44e798`; ethereum `0xa47a1c...9c12c3`; ethereum `0xb00591...484a24`; ethereum `0xb05e8a...5d3fef`; ethereum `0xb204ab...4461a8`; ethereum `0xb3cb22...e6a38c`; ethereum `0xb66835...d88dd0`; ethereum `0xb7a2c7...aa9946`; ethereum `0xb97661...cd1fc8`; ethereum `0xbaf470...e9ffa8`; ethereum `0xbd91c7...97196a`; ethereum `0xc5dbc2...ed6ae0`; ethereum `0xd02b31...ea589c`; ethereum `0xd3b637...d44579`; ethereum `0xd7f10a...43e834`; ethereum `0xdb0ee7...a878d9`; ethereum `0xe6da3b...a669b1`; ethereum `0xe7f0dc...106fb6`; ethereum `0xe86550...8d109a`; ethereum `0xe91838...54e76b`; ethereum `0xf3fe41...d0f275`; ethereum `0xf68c4b...910b5e`; ethereum `0xfd8b20...aa3dc1`; mantle `0x326b11...90ae6c`; mantle `0x4865bb...647560`; mantle `0x62b9fd...0c92d7`; mantle `0x8fc1e4...b5fef3`; mantle `0x979ecd...3d01ed`; mantle `0xbfe0e2...2470c4`; base `0x2c7432...f4e41c`; base `0x37b93e...5d310b`; base `0x4347e8...d291a0`; base `0x5e57e8...32c997`; base `0x60fba8...bfa3a5`; base `0x70b64c...06342e`; base `0x85e2c7...77088e`; base `0xea3ff2...02af74` | ✅ Audited |
| RewardsDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x306ebe...eb5f72`](./contracts/ethereum-1/0x306ebed66642867b94b29752be37b8f20feb5f72/); ethereum `0x40d5ff...652351` | ✅ Audited |
| RewardsDistributor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x77b26a...9d6f99`](./contracts/ethereum-1/0x77b26a2ebb73ce9bdf5c8c44cb98e98f089d6f99/); ethereum `0xa469cd...74f2ec` | ✅ Audited |

### ⚠️ Verified + Unaudited (188)

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| AccountantWithRateProviders | unknown | ethereum | n/a | [`0xc6f89c...622d8f`](./contracts/ethereum-1/0xc6f89cc0551c944ceae872997a4060dc95622d8f/) | ⚠️ Unaudited |
| AccountingModule | unknown | ethereum | n/a | [`0x77fb6f...de469a`](./contracts/ethereum-1/0x77fb6fd121afe51c95fea53069686138b8de469a/) | ⚠️ Unaudited |
| AccountingToken | unknown | ethereum | n/a | [`0xb39822...071421`](./contracts/ethereum-1/0xb39822a4212b63c90c674a5e608cecbf4b071421/) | ⚠️ Unaudited |
| AccountsGuard | governance | base | n/a | [`0x2529ae...d6240b`](./contracts/base-8453/0x2529ae4a3c9d3285dd06cadfc8516d3fabd6240b/) | ⚠️ Unaudited |
| AccountV3 | core_logic | base | n/a | [`0x78db6a...16e8d6`](./contracts/base-8453/0x78db6a136edd0f70bed7a6eb5ca2fdf6ee16e8d6/) | ⚠️ Unaudited |
| AccountV4 | core_logic | base | n/a | [`0xe976bf...63d442`](./contracts/base-8453/0xe976bfb44f9322164ca6fda6c5b84fbb6163d442/) | ⚠️ Unaudited |
| ArcticArchitectureLens | unknown | ethereum | n/a | [`0xe12eef...faa54a`](./contracts/ethereum-1/0xe12eef08bfef01579d22895cd790f32d94faa54a/) | ⚠️ Unaudited |
| AssetRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0734ca...904101`](./contracts/ethereum-1/0x0734ca72aa1b8f42e1364924c8ae01ffdb904101/); ethereum `0x54ab85...5bafce` | ⚠️ Unaudited |
| AssetRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x081755...20f4a9`](./contracts/ethereum-1/0x081755f41f20697cbabaef7315a964bf3620f4a9/); ethereum `0xedb597...f62576` | ⚠️ Unaudited |
| AssetRegistry | unknown | ethereum | n/a | [`0x323c93...4270fd`](./contracts/ethereum-1/0x323c933df2523d5b0c756210446eee0fb84270fd/) | ⚠️ Unaudited |
| AsyncWithdrawalLib | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa4ce33...16610c`](./contracts/ethereum-1/0xa4ce33a1e22c79330873ba8010e69f0bd016610c/); ethereum `0xee25e8...322684` | ⚠️ Unaudited |
| AtomicQueue | unknown | ethereum | n/a | [`0xd45884...5dea07`](./contracts/ethereum-1/0xd45884b592e316eb816199615a95c182f75dea07/) | ⚠️ Unaudited |
| AtomicSolverV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5b744e...1a2d7a`](./contracts/ethereum-1/0x5b744e93bbf5caf38df34f3ba14a40024d1a2d7a/); ethereum `0x8650bd...9987ec` | ⚠️ Unaudited |
| AuctionManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x68fe80...ba5366`](./contracts/ethereum-1/0x68fe80c6e97e0c8613e2fed344358c6635ba5366/); ethereum `0xcbf18f...6433a0` | ⚠️ Unaudited |
| AuraERC4626Adaptor | unknown | ethereum | n/a | [`0x0f3f8c...2bb162`](./contracts/ethereum-1/0x0f3f8cab8d3888281033faf7a6c0b74de62bb162/) | ⚠️ Unaudited |
| AvsOperator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8969d7...3960f5`](./contracts/ethereum-1/0x8969d7c2e3e5b056d5d4984031788eca923960f5/); ethereum `0xf47187...064d29` | ⚠️ Unaudited |
| AvsOperatorManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2093bb...a37a6a`](./contracts/ethereum-1/0x2093bbb221f1d8c7c932c32ee28be6dee4a37a6a/); ethereum `0xdc9e0d...04fae7` | ⚠️ Unaudited |
| AvsOperatorManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc2743a...6fb5e5`](./contracts/ethereum-1/0xc2743a788db5c914ef15243e9cda97958e6fb5e5/); ethereum `0xeda445...419e55` | ⚠️ Unaudited |
| BaseRules | unknown | ethereum | n/a | [`0x3f582d...0d2410`](./contracts/ethereum-1/0x3f582d92e96cd5d61a29fac2badf8d1e4f0d2410/) | ⚠️ Unaudited |
| BNFT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6a3938...687242`](./contracts/ethereum-1/0x6a393848f5d1b8e7dab45f3a7e01f9f0dc687242/); ethereum `0xad6ad4...c35599` | ⚠️ Unaudited |
| BoringVault | core_logic | ethereum | n/a | 7 deployments: ethereum [`0x08c6f9...c1364c`](./contracts/ethereum-1/0x08c6f91e2b681faf5e17227f2a44c307b3c1364c/); ethereum `0x5401b8...77d57c`; ethereum `0x657e8c...88c642`; ethereum `0x722344...8c4273`; ethereum `0x917cee...909d88`; ethereum `0xc79cc4...5952ea`; ethereum `0xf0bb20...73416c` | ⚠️ Unaudited |
| CellarMigrationAdaptor2 | operational_periphery | ethereum | n/a | [`0xea1a63...06a221`](./contracts/ethereum-1/0xea1a6307d9b18f8d1cbf1c3dd6aad8416c06a221/) | ⚠️ Unaudited |
| ConcreteMultiStrategyVault | core_logic | ethereum | n/a | [`0x34bdba...c32da8`](./contracts/ethereum-1/0x34bdba9b3d8e3073eb4470cd4c031c2e39c32da8/) | ⚠️ Unaudited |
| Connector | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc98dce...0919cb`](./contracts/ethereum-1/0xc98dce50f707f7563ec8ba0274b43bcf940919cb/); ethereum `0xd4f8cc...eb514d` | ⚠️ Unaudited |
| CowSwapper | adapter | base | n/a | 3 deployments: base [`0xb988a3...da1f23`](./contracts/base-8453/0xb988a32def54821dde0d7382e8a74f1be4da1f23/); base `0xc92801...811854`; base `0xffc742...da2bb6` | ⚠️ Unaudited |
| CumulativeMerkleDrop | unknown | ethereum | n/a | [`0x6db24e...ba6b64`](./contracts/ethereum-1/0x6db24ee656843e3fe03eb8762a54d86186ba6b64/) | ⚠️ Unaudited |
| DefaultOrderHook | unknown | base | n/a | 3 deployments: base [`0x0f56a2...c1f681`](./contracts/base-8453/0x0f56a2d3ad80817de76d0498c98dd1223bc1f681/); base `0x5f7dfa...20cea6`; base `0xf510ba...09e5bb` | ⚠️ Unaudited |
| depositRootGenerator | unknown | ethereum | n/a | 2 deployments: ethereum [`0x10f2c5...c561d6`](./contracts/ethereum-1/0x10f2c552ef9ca8d2b592a8055e2db0efe5c561d6/); ethereum `0x9f4c27...076776` | ⚠️ Unaudited |
| DummyTokenUpgradeable | unknown | ethereum | n/a | 6 deployments: ethereum [`0x0295e0...a5ae46`](./contracts/ethereum-1/0x0295e0ce709723fb25a28b8f67c54a488ba5ae46/); ethereum `0x20e885...b509ad`; ethereum `0x61ff31...f9a2bf`; ethereum `0x83998e...2d4b28`; ethereum `0xabc12e...f04ae8`; ethereum `0xdc400f...644cf3` | ⚠️ Unaudited |
| DummyTokenUpgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4e1da7...04081d`](./contracts/ethereum-1/0x4e1da7cb3a23e601f73e532fdc9300db6f04081d/); ethereum `0xc2455e...f12aa9` | ⚠️ Unaudited |
| DummyTokenUpgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0xaae009...86fee6`](./contracts/ethereum-1/0xaae009676e1802d4cb27fd41b0d1c3599e86fee6/); ethereum `0xba4f87...65f10e` | ⚠️ Unaudited |
| EETH | unknown | ethereum | n/a | [`0x35fa16...118ac2`](./contracts/ethereum-1/0x35fa164735182de50811e8e2e824cfb9b6118ac2/) | ⚠️ Unaudited |
| eEthExtension | unknown | ethereum | n/a | [`0x4ec6e3...740d5b`](./contracts/ethereum-1/0x4ec6e3b0933cc90fdb274267dff1a57db9740d5b/) | ⚠️ Unaudited |
| EigenStrategyManager | unknown | ethereum | n/a | [`0x7390cd...5701e5`](./contracts/ethereum-1/0x7390cdfff38c8871ccb80e9b38ff88fe735701e5/) | ⚠️ Unaudited |
| EigenStrategyManager | unknown | ethereum | n/a | [`0x92d904...5a68fc`](./contracts/ethereum-1/0x92d904019a92b0cafce3492abb95577c285a68fc/) | ⚠️ Unaudited |
| EigenStrategyManager | unknown | ethereum | n/a | [`0xb1c635...36e94d`](./contracts/ethereum-1/0xb1c63581929d372f35c26327385e9ff6c636e94d/) | ⚠️ Unaudited |
| ERC20Adaptor | unknown | ethereum | n/a | [`0x7a5b17...81331d`](./contracts/ethereum-1/0x7a5b17e0ad1e0f37061fcc7f90512c367981331d/) | ⚠️ Unaudited |
| ERC4626Adaptor | unknown | ethereum | n/a | [`0xb1761a...a681e2`](./contracts/ethereum-1/0xb1761a7c7799cb429eb5bf2db16d88534da681e2/) | ⚠️ Unaudited |
| ERC4626SharePriceOracle | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9d3eb5...8014b0`](./contracts/ethereum-1/0x9d3eb50ed4540135a78facd70063bccc988014b0/); ethereum `0xb09cbb...03ece4`; ethereum `0xb12143...981a04` | ⚠️ Unaudited |
| EtherFiAdmin | unknown | ethereum | n/a | [`0x0ef8fa...42d705`](./contracts/ethereum-1/0x0ef8fa4760db8f5cd4d993f3e3416f30f942d705/) | ⚠️ Unaudited |
| EtherfiL1LineaReceiverETH | unknown | ethereum | n/a | [`0x6f149f...94aa35`](./contracts/ethereum-1/0x6f149f8bf1cb0245e70171c9972059c22294aa35/) | ⚠️ Unaudited |
| EtherfiL1SyncPoolETH | unknown | ethereum | n/a | [`0xd78987...5da146`](./contracts/ethereum-1/0xd789870bea40d056a4d26055d0befcc8755da146/) | ⚠️ Unaudited |
| EtherFiOperationParameters | unknown | ethereum | n/a | [`0xd0ff89...fead1a`](./contracts/ethereum-1/0xd0ff8996db4bdb46870b7e833b7532f484fead1a/) | ⚠️ Unaudited |
| EtherFiOracle | unknown | ethereum | n/a | [`0x57aaf0...bb6a41`](./contracts/ethereum-1/0x57aaf0004c716388b21795431cd7d5f9d3bb6a41/) | ⚠️ Unaudited |
| EtherFiOracle | unknown | ethereum | n/a | [`0x5bb017...4d809b`](./contracts/ethereum-1/0x5bb0175ae640d4f1a30bc6860aa0db92814d809b/) | ⚠️ Unaudited |
| EtherFiOracle | unknown | ethereum | n/a | [`0x7997cf...2e7eaa`](./contracts/ethereum-1/0x7997cf455e7e002f04a91a597a5ea0558b2e7eaa/) | ⚠️ Unaudited |
| EtherFiRestaker | unknown | ethereum | n/a | [`0x1b7a4c...736fff`](./contracts/ethereum-1/0x1b7a4c3797236a1c37f8741c0be35c2c72736fff/) | ⚠️ Unaudited |
| EtherFiStaking | unknown | ethereum | n/a | 2 deployments: ethereum [`0x857b4f...d16f8b`](./contracts/ethereum-1/0x857b4faa11b143f69f091d1c4ded5480a8d16f8b/); ethereum `0xb6b4a4...6c7d36` | ⚠️ Unaudited |
| EtherFiViewer | unknown | ethereum | n/a | [`0x2ecd15...2fab81`](./contracts/ethereum-1/0x2ecd155405ca52a5ca0e552981ff44a8252fab81/) | ⚠️ Unaudited |
| Factory | registry | base | n/a | [`0xda14fd...768e59`](./contracts/base-8453/0xda14fdd72345c4d2511357214c5b89a919768e59/) | ⚠️ Unaudited |
| FeeRegistry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0bc9df...68cd46`](./contracts/ethereum-1/0x0bc9df52ff655932d08daacba33881c0d268cd46/); ethereum `0xe0e4e0...c24897` | ⚠️ Unaudited |
| FeesAndReserves | unknown | ethereum | n/a | [`0x8a2295...02ec74`](./contracts/ethereum-1/0x8a22951e3b5133844e37959cc75fce9b3502ec74/) | ⚠️ Unaudited |
| FeesAndReservesAdaptor | unknown | ethereum | n/a | [`0x5d84ec...b358da`](./contracts/ethereum-1/0x5d84ec98c476b159f3e107709f224d5bbbb358da/) | ⚠️ Unaudited |
| FlexStrategy | unknown | ethereum | n/a | [`0xf151b8...e29153`](./contracts/ethereum-1/0xf151b80d9be891fdc97279f373eefd6289e29153/) | ⚠️ Unaudited |
| FlexStrategyDeployer | unknown | ethereum | n/a | [`0x7f275b...d36938`](./contracts/ethereum-1/0x7f275b3c502f0b685ef477a1357093c88ed36938/) | ⚠️ Unaudited |
| FraxVoterProxyV4 | unknown | ethereum | n/a | [`0x78ec75...62acc0`](./contracts/ethereum-1/0x78ec75e69a5f2150c1095e5feffc1fe17362acc0/) | ⚠️ Unaudited |
| FXSDepositorV2 | unknown | ethereum | n/a | 2 deployments: ethereum [`0x28fb88...6aae3f`](./contracts/ethereum-1/0x28fb88e578890587563dd49ae35d3422e76aae3f/); ethereum `0xdfa1f6...3c5335` | ⚠️ Unaudited |
| GaugeIncentivesStash | unknown | ethereum | n/a | 2 deployments: ethereum [`0x183d1a...5a9eab`](./contracts/ethereum-1/0x183d1a60e1e00bd87ba8b7e673fd9c26585a9eab/); ethereum `0x5d135c...e6d096` | ⚠️ Unaudited |
| GaugeIncentivesStash | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa9e640...a8b766`](./contracts/ethereum-1/0xa9e640a1fa2a74653368ebe12161939efaa8b766/); ethereum `0xbc74b8...1349ae` | ⚠️ Unaudited |
| globalIndexLibrary | unknown | ethereum | n/a | [`0x325ea0...c85fb9`](./contracts/ethereum-1/0x325ea059f11d6860e50a803ae52d49ef35c85fb9/) | ⚠️ Unaudited |
| HourglassEtherFiLiquidLockDepositor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x035d13...52da4d`](./contracts/ethereum-1/0x035d135bf428460be8e1c19b36e8d4231752da4d/); ethereum `0xd573ce...aa28a2` | ⚠️ Unaudited |
| HourglassStableVaultKYC | core_logic | ethereum | n/a | [`0xd9b2cb...fcce40`](./contracts/ethereum-1/0xd9b2cb2fbad204fc548787ef56b918c845fcce40/) | ⚠️ Unaudited |
| L1cmETH | unknown | ethereum | n/a | [`0xe6829d...59e8fa`](./contracts/ethereum-1/0xe6829d9a7ee3040e1276fa75293bde931859e8fa/) | ⚠️ Unaudited |
| L1LineaReceiverETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x332754...ef27f1`](./contracts/ethereum-1/0x33275453144a4d6ef266ef1164f3e6fcb6ef27f1/); ethereum `0x595677...9a29a5` | ⚠️ Unaudited |
| L1ModeReceiverETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3b099b...6b7f24`](./contracts/ethereum-1/0x3b099bc0e9854799688b0542222c938e0a6b7f24/); ethereum `0xf68f84...9d3d60` | ⚠️ Unaudited |
| L1ModeReceiverETHUpgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x27e120...5985c2`](./contracts/ethereum-1/0x27e120c518a339c3d8b665e56c4503df785985c2/); ethereum `0xfab5f2...425ed1` | ⚠️ Unaudited |
| L1ModeReceiverETHUpgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0x40819e...6311ca`](./contracts/ethereum-1/0x40819e335c72fb403761d1cc3a1fa57ad36311ca/); ethereum `0x8963c9...ccbc37` | ⚠️ Unaudited |
| L1ModeReceiverETHUpgradeable | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc8ad09...e1696f`](./contracts/ethereum-1/0xc8ad0949f33f02730cff3b96e7f067e83de1696f/); ethereum `0xefc323...cf2e8f` | ⚠️ Unaudited |
| L1SyncPoolETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x33757a...f43ee7`](./contracts/ethereum-1/0x33757a5e3afb438733679275c03ee2db43f43ee7/); ethereum `0x39272e...d334c0` | ⚠️ Unaudited |
| L2cmETH | unknown | mantle | n/a | [`0xe6829d...59e8fa`](./contracts/mantle-5000/0xe6829d9a7ee3040e1276fa75293bde931859e8fa/) | ⚠️ Unaudited |
| LendingPool | core_logic | base | n/a | 3 deployments: base [`0x3ec4a2...141df1`](./contracts/base-8453/0x3ec4a293fb906dd2cd440c20decb250def141df1/); base `0x803ea6...6b98e2`; base `0xa37e9b...645e3b` | ⚠️ Unaudited |
| Liquidator | operational_periphery | base | n/a | [`0xa4b0b9...e1a7af`](./contracts/base-8453/0xa4b0b9fd1d91fa2de44f6abfd59cc14ba1e1a7af/) | ⚠️ Unaudited |
| LiquidityPool | unknown | ethereum | n/a | 11 deployments: ethereum [`0x02656f...bac65b`](./contracts/ethereum-1/0x02656fe285fac5d5c756c2f03c17277df9bac65b/); ethereum `0x11858b...21cf63`; ethereum `0x403ba4...310cef`; ethereum `0x4d784a...d93860`; ethereum `0x605f17...426399`; ethereum `0x72481f...b97f4a`; ethereum `0x833514...3cc0b8`; ethereum `0xa8a8be...4ffb1f`; ethereum `0xcef428...cfc474`; ethereum `0xd27a57...1f5a8b`; ethereum `0xe86922...a5eb79` | ⚠️ Unaudited |
| LiquidityPool | unknown | ethereum | n/a | [`0x308861...daf216`](./contracts/ethereum-1/0x308861a430be4cce5502d0a12724771fc6daf216/) | ⚠️ Unaudited |
| Liquifier | unknown | ethereum | n/a | [`0x9ffdf4...ef764f`](./contracts/ethereum-1/0x9ffdf407cde9a93c47611799da23924af3ef764f/) | ⚠️ Unaudited |
| Liquifier | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc22c7f...87e691`](./contracts/ethereum-1/0xc22c7fb3e6cc84e9ef0f8921bd76cc1fd287e691/); ethereum `0xfdb757...f8ce41` | ⚠️ Unaudited |
| LRTSquaredCore | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1cb489...1957de`](./contracts/ethereum-1/0x1cb489ef513e1cc35c4657c91853a2e6ff1957de/); ethereum `0x8f08b7...8e6040` | ⚠️ Unaudited |
| LSDRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x345f73...9f5b18`](./contracts/ethereum-1/0x345f73efd1cef9912340010e8f7e8192b49f5b18/); ethereum `0x3e30b4...4ea070` | ⚠️ Unaudited |
| LSDRateProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0xaedc83...5bba01`](./contracts/ethereum-1/0xaedc83f607126b4d2437f79285e2c635685bba01/); ethereum `0xb658cf...9f20d9` | ⚠️ Unaudited |
| LSDRateProvider | unknown | ethereum | n/a | [`0xc5ba40...e2d214`](./contracts/ethereum-1/0xc5ba40447f057d28442dc7d2ca7b2d7cf4e2d214/) | ⚠️ Unaudited |
| LSDWrapper | unknown | ethereum | n/a | [`0x99db76...1d6992`](./contracts/ethereum-1/0x99db7619c018d61dbc2822767b63240d311d6992/) | ⚠️ Unaudited |
| MainnetActors | unknown | ethereum | n/a | 6 deployments: ethereum [`0x447aad...d669c5`](./contracts/ethereum-1/0x447aaddf08d6b0d1daf8f0e8a99dc1a2f8d669c5/); ethereum `0x51ad86...401bc3`; ethereum `0x71635d...80393c`; ethereum `0xba4cc4...eb64fb`; ethereum `0xd9e79b...0adfa2`; ethereum `0xdd6f2c...7a9d0d` | ⚠️ Unaudited |
| ManagerWithMerkleVerification | unknown | ethereum | n/a | [`0x048a50...4d0a17`](./contracts/ethereum-1/0x048a5002e57166a78dd060b3b36ded2f404d0a17/) | ⚠️ Unaudited |
| MaxVaultViewer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0f2b81...bea74e`](./contracts/ethereum-1/0x0f2b81368781f1c846c8b2ad48bacb45a0bea74e/); ethereum `0xeed274...9e5c81` | ⚠️ Unaudited |
| MembershipManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x047a77...f15889`](./contracts/ethereum-1/0x047a7749ad683c2fd8a27c7904ca8dd128f15889/); ethereum `0x3d3202...3e3000` | ⚠️ Unaudited |
| MembershipManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x190f44...a3cfee`](./contracts/ethereum-1/0x190f44c7a5e06ad5a5fd5e17522fe243b9a3cfee/); ethereum `0xb27e1b...de3b84` | ⚠️ Unaudited |
| MembershipNFT | unknown | ethereum | n/a | 2 deployments: ethereum [`0x290d98...307106`](./contracts/ethereum-1/0x290d981b41b713437265cd7846806d7500307106/); ethereum `0xb49e44...27e479` | ⚠️ Unaudited |
| MerklOperator | operational_periphery | base | n/a | [`0x969f02...8b42c6`](./contracts/base-8453/0x969f0251360b9cf11c68f6ce9587924c1b8b42c6/) | ⚠️ Unaudited |
| MerklOperatorBase | operational_periphery | base | n/a | [`0x4aa34f...575d5f`](./contracts/base-8453/0x4aa34f76f85f72a0f0b6df7ae109f94da0575d5f/) | ⚠️ Unaudited |
| METHL2 | token | mantle | n/a | [`0xcda86a...b90bb0`](./contracts/mantle-5000/0xcda86a272531e8640cd7f1a92c01839911b90bb0/) | ⚠️ Unaudited |
| MockEtherFiAdmin | unknown | ethereum | n/a | [`0x46c4ab...cc29a8`](./contracts/ethereum-1/0x46c4ab30743759ec142f7495b7e935e213cc29a8/) | ⚠️ Unaudited |
| NFTExchange | unknown | ethereum | n/a | 2 deployments: ethereum [`0x200057...d903a2`](./contracts/ethereum-1/0x200057a0a4a97149b0924c5dbba868f283d903a2/); ethereum `0x6494c1...a41042` | ⚠️ Unaudited |
| NodeOperatorManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd5edf7...54e35e`](./contracts/ethereum-1/0xd5edf7730abad812247f6f54d7bd31a52554e35e/); ethereum `0xfcc674...ee2caf` | ⚠️ Unaudited |
| OneInchAdaptor | unknown | ethereum | n/a | [`0x5f7de9...c58d43`](./contracts/ethereum-1/0x5f7de90fb222d37225dd8929672e427699c58d43/) | ⚠️ Unaudited |
| OriginWithdrawalLib | unknown | ethereum | n/a | 2 deployments: ethereum [`0x24c870...d48061`](./contracts/ethereum-1/0x24c8706ee3ef603929cb0d4467268b83c2d48061/); ethereum `0xa68479...4783a4` | ⚠️ Unaudited |
| PitchFXSToken | token | ethereum | n/a | [`0x11ebe2...e88f0b`](./contracts/ethereum-1/0x11ebe21e9d7bf541a18e1e3ac94939018ce88f0b/) | ⚠️ Unaudited |
| PitchProxyAdmin | unknown | ethereum | n/a | [`0xd3c23b...7588ed`](./contracts/ethereum-1/0xd3c23b7b54629d58aa6e206e32e6473e067588ed/) | ⚠️ Unaudited |
| PriceProvider | unknown | ethereum | n/a | 2 deployments: ethereum [`0x28a6e7...c1f32f`](./contracts/ethereum-1/0x28a6e7ebb6aca8f64145952a9565245c3dc1f32f/); ethereum `0x2b9010...0f19e3` | ⚠️ Unaudited |
| PriceRouter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x693799...a4fff5`](./contracts/ethereum-1/0x693799805b502264f9365440b93c113d86a4fff5/); ethereum `0xab2d48...818964` | ⚠️ Unaudited |
| ProtocolFeeCollector | unknown | ethereum | n/a | [`0xdfb286...e42524`](./contracts/ethereum-1/0xdfb286d16f9cd8c5cf4d5180501c190519e42524/) | ⚠️ Unaudited |
| Provider | unknown | ethereum | n/a | 6 deployments: ethereum [`0x5a081b...38d7ff`](./contracts/ethereum-1/0x5a081b2a6094b7aaed74df2242e48f107b38d7ff/); ethereum `0x671698...a142b1`; ethereum `0x977ff7...e562d7`; ethereum `0xd5bf05...f3b01d`; ethereum `0xe141be...382d5a`; ethereum `0xeb4dbb...dac508` | ⚠️ Unaudited |
| ProxyUtils | unknown | ethereum | n/a | 5 deployments: ethereum [`0x08d8bc...23db89`](./contracts/ethereum-1/0x08d8bc0910e59ce30e2af151a67369cbbc23db89/); ethereum `0x39300e...3bf326`; ethereum `0x7b3922...a95ab9`; ethereum `0xc32ff5...217a63`; ethereum `0xe96221...504903` | ⚠️ Unaudited |
| Puff | unknown | mantle | n/a | [`0x26a6b0...3be140`](./contracts/mantle-5000/0x26a6b0dcdcfb981362afa56d581e4a7dba3be140/) | ⚠️ Unaudited |
| RecoveryController | governance | base | n/a | [`0x388925...78176a`](./contracts/base-8453/0x3889255c5a9a55137dfdf870a0c30a285978176a/) | ⚠️ Unaudited |
| Redeemer | unknown | base | n/a | [`0x812785...250773`](./contracts/base-8453/0x812785c39a794a9518ee72dd0ce0bdd3f6250773/) | ⚠️ Unaudited |
| RedemptionAssetsVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x73bc33...88d55e`](./contracts/ethereum-1/0x73bc33999c34a5126ca19dc900f22690c288d55e/); ethereum `0x9892a4...a6f14a` | ⚠️ Unaudited |
| RedstoneEthPriceFeedExtension | unknown | ethereum | n/a | [`0xdb4b77...63ae84`](./contracts/ethereum-1/0xdb4b778085ed412518cb64207259a746f363ae84/) | ⚠️ Unaudited |
| ReferralDepositAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x41e60c...21c3d7`](./contracts/ethereum-1/0x41e60cf98075315e4d6133a9dc25a2847b21c3d7/); ethereum `0xd6bba2...68b4a1` | ⚠️ Unaudited |
| ReferralDepositAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x86149f...232e00`](./contracts/ethereum-1/0x86149f5a512c3b7ec123d081e5e6193a63232e00/); ethereum `0xe8edf9...bd8a37` | ⚠️ Unaudited |
| Registry | unknown | ethereum | n/a | 2 deployments: ethereum [`0x37912f...059bbd`](./contracts/ethereum-1/0x37912f4c0f0d916890ebd755bf6d1f0a0e059bbd/); base `0xd06905...300d5f` | ⚠️ Unaudited |
| RegulationsManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8d671a...92920c`](./contracts/ethereum-1/0x8d671a0bc6664c2ef71db4bbbacb2a455992920c/); ethereum `0xbd23ff...35f4de` | ⚠️ Unaudited |
| RewardsReceiver | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1d6b2a...95c12b`](./contracts/ethereum-1/0x1d6b2a11ffea5f9a8ed85a02581910b3d695c12b/); ethereum `0x863ba8...ff159b` | ⚠️ Unaudited |
| RewardsReceiver | unknown | ethereum | n/a | 2 deployments: ethereum [`0x4975e6...7b7dc7`](./contracts/ethereum-1/0x4975e6c808ddb8fc6a9bc48f6dfd4398bf7b7dc7/); ethereum `0x5de8c7...29762c` | ⚠️ Unaudited |
| RewardsReceiver | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa98e86...b91582`](./contracts/ethereum-1/0xa98e8652daf2407839b18f4e215d86d88eb91582/); ethereum `0xe439fe...26536e` | ⚠️ Unaudited |
| RewardsReceiver | unknown | ethereum | n/a | 2 deployments: ethereum [`0xd3e7e4...01de56`](./contracts/ethereum-1/0xd3e7e46c62b0fea4cd73920c65971b67ea01de56/); ethereum `0xd47b9c...0b17bf` | ⚠️ Unaudited |
| RewardsSweeper | unknown | ethereum | n/a | [`0xb94b57...5fbde5`](./contracts/ethereum-1/0xb94b57c8c0c3151e7a3fad815e10e358215fbde5/) | ⚠️ Unaudited |
| RouterTrampoline | adapter | base | n/a | [`0x354dbb...590667`](./contracts/base-8453/0x354dbba1348985cc952c467b8ddaf5dd07590667/) | ⚠️ Unaudited |
| SaddleVoterProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2cba8a...37e0ee`](./contracts/ethereum-1/0x2cba8a85f44dd1da10a093cc0f96d93b3c37e0ee/); ethereum `0x92812d...8586ed` | ⚠️ Unaudited |
| SaddleVoterProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc0a668...23d254`](./contracts/ethereum-1/0xc0a668d27f344dc723abc87f88792722e623d254/); ethereum `0xf942f2...d62dd9` | ⚠️ Unaudited |
| SDLDepositor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x17a67b...8813bc`](./contracts/ethereum-1/0x17a67bdb5cfb7a21781240997505d69a398813bc/); ethereum `0x7c06f6...407653` | ⚠️ Unaudited |
| SDLDepositor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x6f5591...639d78`](./contracts/ethereum-1/0x6f559192134709585780e953013b864e00639d78/); ethereum `0xbdb83b...160888` | ⚠️ Unaudited |
| SlipstreamAM | adapter | base | n/a | 2 deployments: base [`0x3ade1f...1eb73b`](./contracts/base-8453/0x3ade1f1fdc666b1bfad376345ea878d1c11eb73b/); base `0xcaf416...527189` | ⚠️ Unaudited |
| StakedSlipstreamAM | adapter | base | n/a | 3 deployments: base [`0x1dc7a0...d67bf1`](./contracts/base-8453/0x1dc7a0f5336f52724b650e39174cfcbbedd67bf1/); base `0xbed6c3...0fdd4c`; base `0xe0f20b...d8ca7b` | ⚠️ Unaudited |
| StakingManager | unknown | ethereum | n/a | 3 deployments: ethereum [`0x4ad639...72fa1e`](./contracts/ethereum-1/0x4ad639fc9c73f547bfff8b28d091d86d2472fa1e/); ethereum `0xb27d4e...d5868f`; ethereum `0xe55eac...008c69` | ⚠️ Unaudited |
| StakingNodesManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x21e86b...0ea06d`](./contracts/ethereum-1/0x21e86b28b0afec2c3f570a924a8ec969fc0ea06d/); ethereum `0x540af4...43d5c8` | ⚠️ Unaudited |
| StakingNodesManager | unknown | ethereum | n/a | 8 deployments: ethereum [`0x33ffb7...100626`](./contracts/ethereum-1/0x33ffb713c73cdf668b11296bb9b1c9a0c3100626/); ethereum `0x4b3fb7...40cdb7`; ethereum `0x6de59b...ea224b`; ethereum `0x7e020a...65b4cd`; ethereum `0x956b96...6967e5`; ethereum `0x98d664...a400d5`; ethereum `0xabd3a7...4cc811`; ethereum `0xdbf332...225040` | ⚠️ Unaudited |
| StakingNodesManager | unknown | ethereum | n/a | [`0x8c33a1...59cd7d`](./contracts/ethereum-1/0x8c33a1d6d062db7b51f79702355771d44359cd7d/) | ⚠️ Unaudited |
| TellerWithMultiAssetSupport | unknown | ethereum | n/a | [`0xbbe07e...a6c125`](./contracts/ethereum-1/0xbbe07e335235b5be21d9ef413fc52aa250a6c125/) | ⚠️ Unaudited |
| TimelockController | unknown | ethereum | n/a | 15 deployments: ethereum [`0x097162...5158f1`](./contracts/ethereum-1/0x0971628c7d3c6009d309165fedcc47a12e5158f1/); ethereum `0x24590b...65af94`; ethereum `0x3e469b...2edafe`; ethereum `0x4e1ba8...81a8a4`; ethereum `0x55148d...13924c`; ethereum `0x5671ae...b772c3`; ethereum `0x617ecc...4b2f70`; ethereum `0x67f1fc...5fcb9d`; ethereum `0x73e85a...4e629d`; ethereum `0x8735dd...96566b`; ethereum `0x8b25ae...deee73`; ethereum `0xbb73f8...1d017a`; ethereum `0xc6ca36...42d46b`; ethereum `0xfec7e2...62c2bf`; mantle `0x91a194...ec65e5` | ⚠️ Unaudited |
| TNFT | unknown | ethereum | n/a | 3 deployments: ethereum [`0x9c377a...f11708`](./contracts/ethereum-1/0x9c377a56c4a5eee3fa4c7a8de0440168e4f11708/); ethereum `0xafb82c...1afea7`; ethereum `0xd60ec8...0277c7` | ⚠️ Unaudited |
| TokenStakingNodesManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x17e77f...8206da`](./contracts/ethereum-1/0x17e77f964538fed3adec3e8dbb6147da258206da/); ethereum `0x81f34d...801b1f` | ⚠️ Unaudited |
| TokenStakingNodesManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x22417e...006310`](./contracts/ethereum-1/0x22417e36dd2290f5a36d50112790bf6b61006310/); ethereum `0x592d1e...4ec647` | ⚠️ Unaudited |
| TokenStakingNodesManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x40edd9...46def4`](./contracts/ethereum-1/0x40edd919c65373eed356d26c6d7561569346def4/); ethereum `0xb03146...88243f` | ⚠️ Unaudited |
| TokenStakingNodesManager | unknown | ethereum | n/a | [`0x6b566c...30a0c3`](./contracts/ethereum-1/0x6b566cb6cddf7d140c59f84594756a151030a0c3/) | ⚠️ Unaudited |
| Tranche | core_logic | base | n/a | 3 deployments: base [`0x393893...2b1382`](./contracts/base-8453/0x393893caeb06b5c16728bb1e354b6c36942b1382/); base `0x9c63a4...5eec92`; base `0xefe328...218dad` | ⚠️ Unaudited |
| TrancheWrapper | core_logic | base | n/a | 3 deployments: base [`0x7cc801...34ba3a`](./contracts/base-8453/0x7cc8013e784418dc9771403dd057f55ceb34ba3a/); base `0xbc1071...2ff398`; base `0xd82bfa...7a8c60` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 7 deployments: ethereum [`0x237bc9...9a1119`](./contracts/ethereum-1/0x237bc92d4650fa44133dfe6369b5198da09a1119/); ethereum `0x686620...405dc2`; ethereum `0x8059c1...4d726e`; ethereum `0x97790d...98d0be`; ethereum `0xe7c675...9691b7`; ethereum `0xe7d43a...78a6fa`; ethereum `0xeafbb3...2ddf02` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x514d0a...52f365`](./contracts/ethereum-1/0x514d0ac9bfaf631ac7b303564ba1c822bc52f365/); ethereum `0xcb45da...93cfce` | ⚠️ Unaudited |
| TransparentUpgradeableProxy | unknown | ethereum | n/a | 2 deployments: ethereum [`0x9633ff...15ee84`](./contracts/ethereum-1/0x9633ff38878a2dfe853cfc6067dd1a241015ee84/); ethereum `0xd56c14...56a4dd` | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | [`0x01ba69...4c15d8`](./contracts/ethereum-1/0x01ba69727e2860b37bc1a2bd56999c1afb4c15d8/) | ⚠️ Unaudited |
| Vault | core_logic | ethereum | n/a | [`0x657d9a...c96dcb`](./contracts/ethereum-1/0x657d9aba1dbb59e53f9f3ecaa878447dcfc96dcb/) | ⚠️ Unaudited |
| Vault | unknown | ethereum | n/a | 2 deployments: ethereum [`0xc1c5b1...bc62c8`](./contracts/ethereum-1/0xc1c5b18774d0282949331b719b5ea4a21cbc62c8/); ethereum `0xd91fe1...4e0402` | ⚠️ Unaudited |
| VaultLib | unknown | ethereum | n/a | 7 deployments: ethereum [`0x1894d6...ea9e11`](./contracts/ethereum-1/0x1894d6f986fcc8564b12f2fb2b8296531fea9e11/); ethereum `0x24024c...5b70f9`; ethereum `0x64096a...82c58b`; ethereum `0xb59f18...25c300`; ethereum `0xc6d480...0098d6`; ethereum `0xc89de4...35d8c6`; ethereum `0xe46adc...26a6b6` | ⚠️ Unaudited |
| VeRevenueConverter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x512f50...19cc94`](./contracts/ethereum-1/0x512f50a1dc5ac087cd76195fe6388c7b2919cc94/); ethereum `0x918062...c5ce86` | ⚠️ Unaudited |
| WeETH | unknown | ethereum | n/a | [`0xcd5fe2...59b7ee`](./contracts/ethereum-1/0xcd5fe23c85820f7b72d0926fc9b05b43e359b7ee/) | ⚠️ Unaudited |
| weEthExtension | unknown | ethereum | n/a | [`0x78e593...fd7535`](./contracts/ethereum-1/0x78e59309ba2779a5d3522e965fe9be2790fd7535/) | ⚠️ Unaudited |
| WithdrawalQueueManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0bc9bc...0aa67b`](./contracts/ethereum-1/0x0bc9bc81ad379810b36ad5cc95387112990aa67b/); ethereum `0x6ac38a...2185cd` | ⚠️ Unaudited |
| WithdrawalQueueManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x42d3ee...9360a1`](./contracts/ethereum-1/0x42d3eeb30ca4abe004ca5214b3d4177d149360a1/); ethereum `0x60d812...d9dcf3` | ⚠️ Unaudited |
| WithdrawalQueueManager | unknown | ethereum | n/a | 2 deployments: ethereum [`0x8face3...4d60b4`](./contracts/ethereum-1/0x8face3283e20b19d98a7a132274b69c1304d60b4/); ethereum `0xaac93a...0a5d64` | ⚠️ Unaudited |
| WithdrawalsProcessor | unknown | ethereum | n/a | 2 deployments: ethereum [`0x131d4f...426643`](./contracts/ethereum-1/0x131d4f89b1e0387c0d2278e8c375f4c802426643/); ethereum `0x503895...e5b340` | ⚠️ Unaudited |
| WithdrawalsProcessor | unknown | ethereum | n/a | [`0x6d052c...6c5fba`](./contracts/ethereum-1/0x6d052cded3f64aea51f6051f33b68b42016c5fba/) | ⚠️ Unaudited |
| Withdrawer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x1da2a0...b7e92b`](./contracts/ethereum-1/0x1da2a0fef0407974d00335ee623098082cb7e92b/); ethereum `0xea03aa...1e04fc` | ⚠️ Unaudited |
| Withdrawer | unknown | ethereum | n/a | [`0x2ad086...268fed`](./contracts/ethereum-1/0x2ad086e5e815bcb827336bd820bd39bf76268fed/) | ⚠️ Unaudited |
| Withdrawer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x352766...8e88d5`](./contracts/ethereum-1/0x3527663fa14f1799ffdf54fdc7e721d2fb8e88d5/); ethereum `0xe4d258...209cd7` | ⚠️ Unaudited |
| Withdrawer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3fc377...873b4a`](./contracts/ethereum-1/0x3fc3771cf29b96069644ea249f3f036069873b4a/); ethereum `0xa55dc4...9b44f7` | ⚠️ Unaudited |
| Withdrawer | unknown | ethereum | n/a | 2 deployments: ethereum [`0xb64524...3deb54`](./contracts/ethereum-1/0xb64524af495465c7586337257259b0b2503deb54/); ethereum `0xe83289...75d6c7` | ⚠️ Unaudited |
| WithdrawerConfigurator | unknown | ethereum | n/a | 2 deployments: ethereum [`0xf2c5c0...3d427a`](./contracts/ethereum-1/0xf2c5c018c983dc9455efeba22e3a0150143d427a/); ethereum `0xf8dad4...35d9d1` | ⚠️ Unaudited |
| WithdrawerConfigurer | unknown | ethereum | n/a | [`0x0a4a9c...68cf89`](./contracts/ethereum-1/0x0a4a9c17e20bed3e9fedc52f600e07f2bd68cf89/) | ⚠️ Unaudited |
| WithdrawRequestNFT | unknown | ethereum | n/a | [`0x7d5706...9d4e2c`](./contracts/ethereum-1/0x7d5706f6ef3f89b3951e23e557cdfbc3239d4e2c/) | ⚠️ Unaudited |
| WrappedAerodromeAM | adapter | base | n/a | [`0x17b582...409270`](./contracts/base-8453/0x17b5826382e3a5257b829cf0546a08bd77409270/) | ⚠️ Unaudited |
| WrappedToken | unknown | ethereum | n/a | 2 deployments: ethereum [`0x3f574f...c31e58`](./contracts/ethereum-1/0x3f574ff13a9540c3e7844704e962b1b186c31e58/); ethereum `0xda7d20...28e574` | ⚠️ Unaudited |
| WstEthExtension | unknown | ethereum | n/a | [`0xc5a3cb...c46d35`](./contracts/ethereum-1/0xc5a3cb224b799b982706008a1081073fe0c46d35/) | ⚠️ Unaudited |
| XReferralAdapter | unknown | ethereum | n/a | 2 deployments: ethereum [`0x80ff99...cb234b`](./contracts/ethereum-1/0x80ff998869294238dc2ae0b8c643a59b44cb234b/); ethereum `0xdb7aa0...8e3fc0` | ⚠️ Unaudited |
| YieldClaimer | unknown | base | n/a | [`0xc1e9b2...d551fc`](./contracts/base-8453/0xc1e9b21cc7fa970bf1983d02ec2825bdb5d551fc/) | ⚠️ Unaudited |
| YieldClaimerSlipstream | operational_periphery | base | n/a | 5 deployments: base [`0x1f75ab...d59105`](./contracts/base-8453/0x1f75abf8a24782053b351d9b4ea6d1236ed59105/); base `0x2a07d9...93d09f`; base `0x5a8278...4f18ba`; base `0x8c1fbf...291980`; base `0xc8bf4b...22871c` | ⚠️ Unaudited |
| YieldNestOracle | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa96a27...2f1038`](./contracts/ethereum-1/0xa96a2716df5133b2fdc2ff367e51c609172f1038/); ethereum `0xf592cd...d4a59b` | ⚠️ Unaudited |
| YieldNestOracle | unknown | ethereum | n/a | [`0xc0cff2...cc5187`](./contracts/ethereum-1/0xc0cff2e88446b60721891ae3327654167acc5187/) | ⚠️ Unaudited |
| ynEigen | unknown | ethereum | n/a | [`0x35ec69...42630c`](./contracts/ethereum-1/0x35ec69a77b79c255e5d47d5a3bdbefefe342630c/) | ⚠️ Unaudited |
| ynEigen | unknown | ethereum | n/a | [`0x5cc73a...05d222`](./contracts/ethereum-1/0x5cc73aaa18045cebb41d7611ac1ff6298105d222/) | ⚠️ Unaudited |
| ynEigen | unknown | ethereum | n/a | [`0xb06084...57d189`](./contracts/ethereum-1/0xb060841150adc3707e4cd37f9a7833a2a957d189/) | ⚠️ Unaudited |
| ynEigenDepositAdapter | unknown | ethereum | n/a | [`0x0027da...20f827`](./contracts/ethereum-1/0x0027da0545fe5e5d4fb80e8e6fc78091ab20f827/) | ⚠️ Unaudited |
| ynEigenDepositAdapter | unknown | ethereum | n/a | [`0x6254fa...6e30bd`](./contracts/ethereum-1/0x6254faa72a40d8c1f4051fed8b33689f8d6e30bd/) | ⚠️ Unaudited |
| ynEigenDepositAdapter | unknown | ethereum | n/a | [`0x9e7215...6753c0`](./contracts/ethereum-1/0x9e72155d301a6555dc565315be72d295c76753c0/) | ⚠️ Unaudited |
| ynEigenViewer | unknown | ethereum | n/a | [`0x9b933d...bef28f`](./contracts/ethereum-1/0x9b933d84fac0782f3b275d76b64a0dbf6fbef28f/) | ⚠️ Unaudited |
| ynEigenViewer | unknown | ethereum | n/a | [`0xc16fef...2e64da`](./contracts/ethereum-1/0xc16fef607b58bb8fa4a1433ceb09663c9c2e64da/) | ⚠️ Unaudited |
| ynEigenViewer | unknown | ethereum | n/a | [`0xc7cccf...a0ad29`](./contracts/ethereum-1/0xc7cccfebb13e1cabd716187aa6ce378d71a0ad29/) | ⚠️ Unaudited |
| ynETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x09db87...373a48`](./contracts/ethereum-1/0x09db87a538bd693e9d08544577d5ccfaa6373a48/); ethereum `0x87e2a5...43710a` | ⚠️ Unaudited |
| ynETH | unknown | ethereum | n/a | 2 deployments: ethereum [`0x0f503d...8bf0b3`](./contracts/ethereum-1/0x0f503d3b3929d421b0a1c8b1fbf38e029f8bf0b3/); ethereum `0xcebdee...fff482` | ⚠️ Unaudited |
| ynETHRedemptionAssetsVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x151d63...27a936`](./contracts/ethereum-1/0x151d63b006516b2aa09771e94775cf10ff27a936/); ethereum `0xd64b76...390451` | ⚠️ Unaudited |
| ynETHRedemptionAssetsVault | unknown | ethereum | n/a | 2 deployments: ethereum [`0x5d6e53...9c5caf`](./contracts/ethereum-1/0x5d6e53c42e3b37f82f693937bc508940769c5caf/); ethereum `0xe1a2a7...b0fed5` | ⚠️ Unaudited |
| YnETHx | unknown | ethereum | n/a | [`0xc46c1f...69299a`](./contracts/ethereum-1/0xc46c1f2d7b6c34ffd5c6cc92a071e1c7e069299a/) | ⚠️ Unaudited |
| YnETHxConfigurer | unknown | ethereum | n/a | [`0x3794d5...4ffb7b`](./contracts/ethereum-1/0x3794d53a890ee7e6b1515d7e053b2e51934ffb7b/) | ⚠️ Unaudited |
| ynLSD | unknown | ethereum | n/a | [`0x39f3a3...553263`](./contracts/ethereum-1/0x39f3a3699eb0627c2c8cd30d394cd8e36e553263/) | ⚠️ Unaudited |
| ynLSD | unknown | ethereum | n/a | 2 deployments: ethereum [`0x7fd558...e43790`](./contracts/ethereum-1/0x7fd55817a481b192ca34998624d0d8eabce43790/); ethereum `0xe42de0...d9cf03` | ⚠️ Unaudited |
| ynViewer | unknown | ethereum | n/a | 2 deployments: ethereum [`0x2cfab6...9ca36e`](./contracts/ethereum-1/0x2cfab6562507171bdc8294b156d3e1e5669ca36e/); ethereum `0x7ae221...3ed9f0` | ⚠️ Unaudited |
| ynViewer | unknown | ethereum | n/a | 2 deployments: ethereum [`0xa40565...d982f0`](./contracts/ethereum-1/0xa405650964a6cadb7b439cf9c202436fe8d982f0/); ethereum `0xc70c9b...6952e0` | ⚠️ Unaudited |
| ynViewer | unknown | ethereum | n/a | [`0xf0207f...c93ecf`](./contracts/ethereum-1/0xf0207ffa0b793e009df9df62fee95b8fc6c93ecf/) | ⚠️ Unaudited |
| ZeroXAdaptor | unknown | ethereum | n/a | [`0x497bbe...eecfc2`](./contracts/ethereum-1/0x497bbe7d974b45e2e28cfbbdedf9e67646eecfc2/) | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (26)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---|---|
| Proxy (impl: 0xc8160b38f1bfc64cd2c6cfc78288204fa00569ca) | unknown | ethereum | n/a | 2 deployments: ethereum `0x6d20bb...76aea9`; ethereum `0xc8160b...0569ca` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x0a46ca...e1333e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2b2eb9...0d4d86` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x2e346c...61085e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x309696...888b16` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x31d175...60f6bb` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x47589d...ebc4f3` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x49d9ef...cfd302` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | 2 deployments: ethereum `0x4af6c5...4d209f`; ethereum `0x8e4304...e37638` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x56ea97...2f999e` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x60ee80...394769` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x704906...394c94` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x793296...eb2cab` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x951fa1...a40949` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0x97dd1a...c37565` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xac3977...79f4d5` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xb7dd60...325912` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xc31432...25992f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xca66ed...48d304` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcee58d...7db09c` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xcf36f2...4f27a4` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xd2886c...0b864f` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xe640ed...b72a70` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xeaa59b...671d5d` | ❓ Unverified |
| UnnamedContract | unknown | ethereum | n/a | `0xf75cf7...e31953` | ❓ Unverified |
| UnnamedContract | unknown | base | n/a | `0x7110d6...2de6e6` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Matched Contracts | Extraction Confidence |
|---|---|---|---|---|---|---|---|---|
| [HourglassAudit3.pdf](https://github.com/TheArcadiaGroup/publications/blob/main/audits/HourglassAudit3.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [docs.google.com/document/d/1ems03lWoryqP5BS4JPtoXBIMFoZY8xrMXE-G1Ekea1k/edit](https://docs.google.com/document/d/1ems03lWoryqP5BS4JPtoXBIMFoZY8xrMXE-G1Ekea1k/edit?tab=t.0) | Code4rena | Contest | 2024-11 | aging | Direct | n/a | 0 | n/a |
| [Hourglass_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_Audit_Report.pdf) | unknown | Audit | 2023-06 | stale | Direct | contract_name | 4 | high |
| [Hourglass_HFXB_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_HFXB_Audit_Report.pdf) | unknown | Audit | 2023-11 | stale | Direct | n/a | 0 | n/a |
| [Hourglass_Index_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_Index_Audit_Report.pdf) | unknown | Audit | 2024-01 | stale | Direct | n/a | 0 | n/a |
| [Hourglass_TBT_Locking_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_TBT_Locking_Audit_Report.pdf) | unknown | Audit | 2024-03 | stale | Direct | contract_name | 1 | n/a |
| [Hourglass_v2_Audit_Report.pdf](https://github.com/SublimeGroupSecurity/security_audits/blob/main/Hourglass/Hourglass_v2_Audit_Report.pdf) | unknown | Audit | 2023-07 | stale | Direct | contract_name | 4 | high |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

- None

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 0 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 217 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 3
- Inherited remapped matches: 0
- Extraction confidence breakdown: high=2
- Match method counts: contract_name=2, extraction_exact=8

Zero-match audit list:

- [13257] docs.google.com/document/d/1ems03lWoryqP5BS4JPtoXBIMFoZY8xrMXE-G1Ekea1k/edit
- [16311] Hourglass_HFXB_Audit_Report.pdf
- [16312] Hourglass_Index_Audit_Report.pdf

Fork inheritance lineage and inherited audits are included when available.
