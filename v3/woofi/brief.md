# Agentic Audit Brief: WOOFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 14 across 5 audit(s)
- Eligible audit results: 20 (5 matched; 15 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `e9e09d06b414f9cd852c36a58d42ce16279465f2d9791cd2a8178f3f54b89ecd`

## Project Overview

- Project: WOOFi (`woofi`)
- Website: [https://woofi.com/](https://woofi.com/)
- Lifecycle: unknown
- Generated: 2026-07-15T18:30:00.000Z
- Pipeline run: brief-generation-scope-prod-20260715-v1
- Chains: arbitrum, avalanche, base, berachain, bsc, ethereum, fantom, hyperliquid, linea, mantle, monad, optimism, polygon, polygon-zkevm, sonic, zksync-era
- Contract surface: 1176 unique implementations (1200 raw deployments)
- Coverage basis: 8/289 confirmed own live verified implementations (2.8%); conservative 2.8% with 0 needs-review implementation(s)
- DeFi Llama TVL: $15,850,769.00
- On-chain TVL (included contracts): n/a
- TVL by chain: n/a

## Project Description

This brief describes the observed EVM deployment and audit surface for WOOFi. It intentionally limits the description to receipted repository and on-chain evidence instead of inferring a business model.

### Architecture

The pinned logic-topography run contains 299 contract row(s) across arbitrum, avalanche, base, berachain, bsc, ethereum, fantom, hyperliquid, linea, mantle, monad, optimism, polygon, polygon-zkevm, sonic, zksync-era. Structural roles: 235 unclassified, 41 core, 23 supporting. No upgradeable pattern was identified in these rows.

## Logic Topography

- Exact-run contract rows: 299
- Structural roles: unclassified (235), core (41), supporting (23)
- Contract kinds: contract (286), abstract (13)
- Detected standards: ownable (64), pausable (37), erc20 (26), erc165 (1)
- Frameworks: openzeppelin (64), uniswap (12), layerzero (4), uniswap-v3 (3)
- Upgradeable-pattern rows: 0

## Fork Analysis

0 of 274 contracts are derived from known codebases. 274 contracts have no detected origin.

### Forked Contracts

- None

### Original Contracts (no fork detected - full audit scope)

- AAVEStrategy_AVAX (`0xbd9044...135166`, chain 43114)
- AaveStrategy_ETH (`0x95360a...f2e6e9`, chain 10)
- AAVEStrategy_ETH (`0xcd1b98...e09db0`, chain 8453)
- AAVEStrategy_ETH (`0xbdb42a...044b55`, chain 42161)
- AAVEStrategy_ETH (`0x9aa935...0a963b`, chain 59144)
- AAVEStrategy_USDC (`0x78aa58...0705de`, chain 137)
- AAVEStrategy_USDC (`0xbeae1b...40494b`, chain 8453)
- AAVEStrategy_USDC (`0x679b6a...32900c`, chain 42161)
- AAVEStrategy_USDC (`0x3aad22...52ace5`, chain 43114)
- AAVEStrategy_USDC (`0x913e11...11b390`, chain 59144)
- AirdropDistributor (`0x968d3b...416b22`, chain 42161)
- cmETH_LendingManager (`0x2cc993...ae2376`, chain 5000)
- cmETH_SuperChargerVaultV2 (`0x872b6f...ad7049`, chain 5000)
- cmETH_VoidStrategy (`0x46a721...6cd86a`, chain 5000)
- cmETH_WithdrawManagerV2 (`0xa14c57...f05701`, chain 5000)
- cmETH_WOOFiVaultV2 (`0xb8db69...d98f55`, chain 5000)
- CrossRouterv5 (`0xb84aef...f4757c`, chain 56)
- CrossswapRouterv5 (`0xb84aef...f4757c`, chain 5000)
- CrossswapRouterv5 (`0xb84aef...f4757c`, chain 8453)
- CrossswapRouterv5 (`0xb84aef...f4757c`, chain 59144)
- CrossswapRouterV5 (`0xb84aef...f4757c`, chain 1)
- CrossswapRouterV5 (`0xb84aef...f4757c`, chain 43114)
- CrosswapRouter v5 (`0xb84aef...f4757c`, chain 10)
- CrosswapRouterV5 (`0xb84aef...f4757c`, chain 137)
- CrosswapRouterV5 (`0xb84aef...f4757c`, chain 42161)
- FarmingVault_BNB (`0x85f161...ca07ec`, chain 56)
- farmingvault_ETH (`0x7e1996...380107`, chain 10)
- FarmingVault_ETH (`0xc5d8fc...8a770c`, chain 324)
- FarmingVault_ETH (`0x6875eb...00e98f`, chain 59144)
- farmingvault_mETH (`0xfbc49f...399560`, chain 5000)
- farmingvault_OP (`0xa8452e...161d5b`, chain 10)
- FarmingVault_S (`0xcfe6aa...bb192c`, chain 146)
- FarmingVault_USDC (`0x805b06...db502a`, chain 324)
- FarmingVault_USDC (`0xb77212...e8cb43`, chain 59144)
- farmingvault_USDT (`0xb70913...020116`, chain 5000)
- FarmingVault_USDT (`0xe897b4...adead7`, chain 56)
- FarmingVault_ZK (`0x9af29b...4875ce`, chain 324)
- FeeManager (`0xc45b55...1da54d`, chain 56)
- IntegrationHelper (token info) (`0x96329d...87e15e`, chain 10)
- IntegrationHelper (token info) (`0xaee024...c95afe`, chain 143)
- IntegrationHelper (token info) (`0xc8521e...60cd7e`, chain 146)
- IntegrationHelper (token info) (`0x636dfe...6bd935`, chain 324)
- IntegrationHelper (token info) (`0xee8318...4eea88`, chain 999)
- IntegrationHelper (token info) (`0x14b435...c3176e`, chain 80094)
- IntegrationHelper(token info) (`0x86b223...9be24c`, chain 5000)
- IntegrationHelper(token info) (`0x7e1996...380107`, chain 59144)
- LendingManager_ETH (`0x1ddd22...9c89ed`, chain 10)
- LendingManager_ETH (`0xaeed91...9686f3`, chain 324)
- LendingManager_ETH (`0x2cf870...688dce`, chain 59144)
- LendingManager_mETH (`0xd6abd5...f5686e`, chain 5000)
- LendingManager_OP (`0xd2635b...eda899`, chain 10)
- LendingManager_S (`0x4df34a...617975`, chain 146)
- LendingManager_USDC (`0x4baa5f...de7316`, chain 10)
- LendingManager_USDC (`0x17927d...ef1f6a`, chain 324)
- LendingManager_USDC (`0xc7f6fc...5028dd`, chain 59144)
- LendingManager_USDT (`0xa8701c...442257`, chain 5000)
- LendingManager_ZK (`0x2ace3a...534873`, chain 324)
- MpRewarder (`0xa74bb3...a743d7`, chain 42161)
- NFTBoosterV2 (`0x2ebca5...3ee90f`, chain 42161)
- NFTRewarder (`0x0cccb2...5a125e`, chain 42161)
- NonceCounter (`0x88a199...47b0dc`, chain 1)
- NonceCounter (`0x88a199...47b0dc`, chain 10)
- NonceCounter (`0x88a199...47b0dc`, chain 56)
- NonceCounter (`0x88a199...47b0dc`, chain 137)
- NonceCounter (`0x88a199...47b0dc`, chain 8453)
- NonceCounter (`0x88a199...47b0dc`, chain 42161)
- NonceCounter (`0x88a199...47b0dc`, chain 43114)
- NonceCounter (`0x88a199...47b0dc`, chain 59144)
- ProCrossChainRouter (`0xac8951...ad55ec`, chain 1)
- ProCrossChainRouter (`0xac8951...ad55ec`, chain 10)
- ProCrossChainRouter (`0xac8951...ad55ec`, chain 56)
- ProCrossChainRouter (`0xac8951...ad55ec`, chain 137)
- ProCrossChainRouter (`0xac8951...ad55ec`, chain 8453)
- ProCrossChainRouter (`0xac8951...ad55ec`, chain 42161)
- ProCrossChainRouter (`0xac8951...ad55ec`, chain 43114)
- ProCrossChainRouter (`0xac8951...ad55ec`, chain 59144)
- ProDepositor (`0x4e21a6...e4e50e`, chain 10)
- ProDepositor (`0x4e21a6...e4e50e`, chain 42161)
- ProxyAdmin (`0x3933ca...16ec16`, chain 1)
- ProxyAdmin (`0x3933ca...16ec16`, chain 10)
- ProxyAdmin (`0x3933ca...16ec16`, chain 56)
- ProxyAdmin (`0x3933ca...16ec16`, chain 137)
- ProxyAdmin (`0x3933ca...16ec16`, chain 8453)
- ProxyAdmin (`0x3933ca...16ec16`, chain 42161)
- ProxyAdmin (`0x3933ca...16ec16`, chain 43114)
- ProxyAdmin (`0x3933ca...16ec16`, chain 59144)
- RebateManager (`0x761661...1a6500`, chain 56)
- RewardBooster (`0xf26eb5...92747b`, chain 42161)
- RewardCampaignManager (`0x927f8c...8d4234`, chain 42161)
- RewardMasterchef (`0xc0f8c2...9926d6`, chain 10)
- RewardMasterchef (`0xc0f8c2...9926d6`, chain 56)
- RewardMasterchef (`0xc0f8c2...9926d6`, chain 137)
- RewardMasterchef (`0x0fad8f...9a02e2`, chain 146)
- RewardMasterchef (`0x82fde5...2db7a8`, chain 5000)
- RewardMasterchef (`0xc0f8c2...9926d6`, chain 42161)
- RewardMasterchef (`0xc0f8c2...9926d6`, chain 43114)
- SuperChargerVault_ETH (`0xb54e1d...8853b2`, chain 10)
- SuperChargerVault_ETH (`0x1d6862...fd99a4`, chain 324)
- SuperChargerVault_ETH (`0xe40d54...dcb0c0`, chain 59144)
- SuperChargerVault_mETH (`0x944ebc...054fca`, chain 5000)
- SuperChargerVault_OP (`0xca7184...99da26`, chain 10)
- SuperChargerVault_S (`0xf95117...0a37dd`, chain 146)
- SuperChargerVault_USDC (`0x18aa88...79753e`, chain 10)
- SuperChargerVault_USDC (`0xdca324...d57921`, chain 324)
- SuperChargerVault_USDC (`0x0fd9ce...1b3523`, chain 59144)
- SuperChargerVault_USDT (`0x657535...9ae9e3`, chain 5000)
- SuperChargerVault_ZK (`0x85167f...dfdb45`, chain 324)
- USDC_StrategyAave (`0xfd7ed9...4d7ccb`, chain 10)
- USDC_VaultV2 (`0x73504e...cb3620`, chain 10)
- Vault_USDC.e (`0x5db04b...39b4b8`, chain 146)
- Vault_WETH (`0xee8318...4eea88`, chain 146)
- VoidStrategy_ETH (`0x5dab25...a00feb`, chain 324)
- VoidStrategy_ETH (`0xb4e0bc...82caa9`, chain 59144)
- VoidStrategy_mETH (`0xdec7f7...966636`, chain 5000)
- voidstrategy_OP (`0xda4b53...4c3438`, chain 10)
- VoidStrategy_S (`0xf314fa...d0a096`, chain 146)
- VoidStrategy_USDC (`0xd5e4d9...e270ba`, chain 324)
- VoidStrategy_USDC (`0x7081a3...887d7e`, chain 59144)
- VoidStrategy_USDC.e (`0x2df393...4f5208`, chain 146)
- VoidStrategy_USDT (`0x9aed3a...629a30`, chain 5000)
- VoidStrategy_WETH (`0x64edb6...493636`, chain 146)
- VoidStrategy_ZK (`0x26fb0d...c1b6e9`, chain 324)
- WithdrawManager_ETH (`0x917418...eb58f7`, chain 10)
- WithdrawManager_ETH (`0x674db8...3abc23`, chain 324)
- WithdrawManager_ETH (`0x894edf...744158`, chain 59144)
- WithdrawManager_mETH (`0x8ea0eb...e07a5c`, chain 5000)
- WithdrawManager_OP (`0x0fad8f...9a02e2`, chain 10)
- WithdrawManager_S (`0x87bca2...0deb5c`, chain 146)
- WithdrawManager_USDC (`0x2500ad...955777`, chain 10)
- WithdrawManager_USDC (`0xf66e17...5c37ff`, chain 324)
- WithdrawManager_USDC (`0xaacf22...cd9198`, chain 59144)
- WithdrawManager_USDC.e (`0x87bca2...0deb5c`, chain 80094)
- WithdrawManager_USDT (`0xdda9ef...16c7eb`, chain 5000)
- WithdrawManager_ZK (`0xf383ae...72386a`, chain 324)
- WOO OFT (`0xf3df0a...9471b6`, chain 8453)
- WooAccessManager (`0xaf558f...cd9239`, chain 10)
- WooAccessManager (`0xaf558f...cd9239`, chain 56)
- WooAccessManager (`0x925afa...5dd965`, chain 137)
- WooAccessManager (`0xaf558f...cd9239`, chain 137)
- WooAccessManager (`0xaf558f...cd9239`, chain 143)
- WooAccessManager (`0xaf558f...cd9239`, chain 146)
- WooAccessManager (`0x35a62c...9721b5`, chain 324)
- WooAccessManager (`0xaf558f...cd9239`, chain 999)
- WooAccessManager (`0xaf558f...cd9239`, chain 5000)
- WooAccessManager (`0xaf558f...cd9239`, chain 8453)
- WooAccessManager (`0xaf558f...cd9239`, chain 42161)
- WooAccessManager (`0xd14a99...caa99e`, chain 42161)
- WooAccessManager (`0xaf558f...cd9239`, chain 43114)
- WooAccessManager (`0xaf558f...cd9239`, chain 59144)
- WooAccessManager (`0xaf558f...cd9239`, chain 80094)
- WooFeeManager (`0xc45b55...1da54d`, chain 10)
- WooFeeManager (`0xc45b55...1da54d`, chain 137)
- WooFeeManager (`0xc45b55...1da54d`, chain 143)
- WooFeeManager (`0xc45b55...1da54d`, chain 146)
- WooFeeManager (`0x01b50b...5f3de9`, chain 324)
- WooFeeManager (`0xc45b55...1da54d`, chain 999)
- WooFeeManager (`0xc45b55...1da54d`, chain 5000)
- WooFeeManager (`0xc45b55...1da54d`, chain 8453)
- WooFeeManager (`0xc45b55...1da54d`, chain 42161)
- WooFeeManager (`0xc45b55...1da54d`, chain 43114)
- WooFeeManager (`0xc45b55...1da54d`, chain 59144)
- WooFeeManager (`0xc45b55...1da54d`, chain 80094)
- WooLendingManager (`0x01e42c...63f139`, chain 137)
- WooLendingManager (`0x697c97...6ffccd`, chain 137)
- WooLendingManager (`0x9f46a7...bff18d`, chain 137)
- WooLendingManager (`0x5c7ff2...bb7bc5`, chain 42161)
- WooLendingManager (`0x6fc2c9...8f3f08`, chain 42161)
- WooLendingManager (`0x79a545...3be767`, chain 42161)
- WooLendingManager (`0xfeeced...3ac2d6`, chain 42161)
- WooLendingManager (`0x385e06...b10f73`, chain 43114)
- WooLendingManager (`0x697c97...6ffccd`, chain 43114)
- WooLendingManager (`0xc8ec7f...dd9dc7`, chain 43114)
- WooLendingManager_USDC.e (`0xcc96ba...681ee9`, chain 146)
- WooLendingManager_WETH (`0x917418...eb58f7`, chain 146)
- WooOFT (`0xf3df0a...9471b6`, chain 146)
- WooOFT (`0xf38583...00aaaf`, chain 324)
- WooOFT (`0xf3df0a...9471b6`, chain 5000)
- WooOFT (`0xf3df0a...9471b6`, chain 59144)
- WooOFTAdapter (`0xad6ca8...e87711`, chain 1)
- WooPPv2 (`0x552038...f69fa4`, chain 137)
- WooPPV2 (`0x552038...f69fa4`, chain 143)
- WooPPV2 (`0x552038...f69fa4`, chain 146)
- WooPPV2 (`0xe656d7...13d975`, chain 324)
- WooPPV2 (`0x552038...f69fa4`, chain 999)
- WooPPV2 (`0x552038...f69fa4`, chain 5000)
- WooPPV2 (`0x552038...f69fa4`, chain 59144)
- WooPPV2 (`0x552038...f69fa4`, chain 80094)
- WooPPV2.2 (`0x552038...f69fa4`, chain 10)
- WooPPV2.2 (`0x552038...f69fa4`, chain 56)
- WooPPV2.2 (`0x552038...f69fa4`, chain 8453)
- WooPPV2.2 (`0x552038...f69fa4`, chain 42161)
- WooPPV2.2 (`0x552038...f69fa4`, chain 43114)
- WooracleV2_2 (`0x2a8ede...1a8428`, chain 137)
- WooracleV2_2 (`0xcf4ea1...8934ec`, chain 42161)
- WooracleV2.1 (`0x2a3755...bfa5a6`, chain 56)
- WooracleV2.1 (`0x2a3755...bfa5a6`, chain 143)
- WooracleV2.1 (`0x2a3755...bfa5a6`, chain 146)
- WooracleV2.1 (`0xae45cb...4ea80a`, chain 324)
- WooracleV2.1 (`0x2a3755...bfa5a6`, chain 999)
- WooracleV2.1 (`0x2a3755...bfa5a6`, chain 5000)
- WooracleV2.1 (`0x2a3755...bfa5a6`, chain 8453)
- WooracleV2.1 (`0x2a3755...bfa5a6`, chain 43114)
- WooracleV2.1 (`0x2a3755...bfa5a6`, chain 59144)
- WooracleV2.1 (`0x2a3755...bfa5a6`, chain 80094)
- WooracleV2.2 (`0xa43305...a75127`, chain 10)
- WooRebateManager (`0x761661...1a6500`, chain 10)
- WooRebateManager (`0x761661...1a6500`, chain 137)
- WooRebateManager (`0x761661...1a6500`, chain 143)
- WooRebateManager (`0x761661...1a6500`, chain 146)
- WooRebateManager (`0x66c946...966014`, chain 324)
- WooRebateManager (`0x761661...1a6500`, chain 999)
- WooRebateManager (`0x761661...1a6500`, chain 5000)
- WooRebateManager (`0x761661...1a6500`, chain 8453)
- WooRebateManager (`0x761661...1a6500`, chain 42161)
- WooRebateManager (`0x761661...1a6500`, chain 43114)
- WooRebateManager (`0x761661...1a6500`, chain 59144)
- WooRebateManager (`0x761661...1a6500`, chain 80094)
- WooRouter (`0x4c4af8...2e6fb7`, chain 1)
- WooRouterV2 (`0x4c4af8...2e6fb7`, chain 10)
- WooRouterV2 (`0x4c4af8...2e6fb7`, chain 56)
- WooRouterV2 (`0x4c4af8...2e6fb7`, chain 137)
- WooRouterV2 (`0x4c4af8...2e6fb7`, chain 143)
- WooRouterV2 (`0x4c4af8...2e6fb7`, chain 146)
- WooRouterV2 (`0x09873b...a75369`, chain 324)
- WooRouterV2 (`0x4c4af8...2e6fb7`, chain 999)
- WooRouterV2 (`0x4c4af8...2e6fb7`, chain 5000)
- WooRouterV2 (`0x4c4af8...2e6fb7`, chain 8453)
- WooRouterV2 (`0x4c4af8...2e6fb7`, chain 42161)
- WooRouterV2 (`0x4c4af8...2e6fb7`, chain 43114)
- WooRouterV2 (`0x4c4af8...2e6fb7`, chain 59144)
- WooRouterV2 (`0x4c4af8...2e6fb7`, chain 80094)
- WooStakingCompounder (`0x63a015...4ea1e3`, chain 42161)
- WooStakingLocal (`0x2cfa72...b7d8e2`, chain 42161)
- WooStakingManager (`0xa9e245...2924fb`, chain 42161)
- WooStakingProxy (`0xba91ff...a89b13`, chain 1)
- WooStakingProxy (`0xba91ff...a89b13`, chain 10)
- WooStakingProxy (`0xba91ff...a89b13`, chain 137)
- WooStakingProxy (`0x3bd968...1386e3`, chain 43114)
- WOOStakingProxy (`0xba91ff...a89b13`, chain 56)
- WooStakingVault (`0x9bcf8b...9b405b`, chain 137)
- WooStakingVault (`0x932178...3dc99d`, chain 42161)
- WooStakingVault (`0xcd1b98...e09db0`, chain 43114)
- WooStakingVault 1.0 (`0x2aeab1...085076`, chain 56)
- WooSuperChargerVault (`0x5a6b07...8cad62`, chain 42161)
- WooSuperChargerVault (`0xba452b...1c2d08`, chain 42161)
- WooSuperChargerVaultV2 (`0x5cb9ba...fb3158`, chain 56)
- WooSuperChargerVaultV2 (`0x7eb8d4...be4cad`, chain 56)
- WooSuperChargerVaultV2 (`0x1109e0...3cf549`, chain 137)
- WooSuperChargerVaultV2 (`0x9dd5dd...9b0699`, chain 137)
- WooSuperChargerVaultV2 (`0xedbb74...1799ac`, chain 137)
- WooSuperChargerVaultV2 (`0x44df09...746cb8`, chain 8453)
- WooSuperChargerVaultV2 (`0x8c6030...5736e7`, chain 8453)
- WooSuperChargerVaultV2 (`0xb77212...e8cb43`, chain 8453)
- WooSuperChargerVaultV2 (`0x7f3f2a...295bb1`, chain 42161)
- WooSuperChargerVaultV2 (`0xa78043...52f7d8`, chain 42161)
- WooSuperChargerVaultV2 (`0xd2fdab...5b56b1`, chain 42161)
- WooSuperChargerVaultV2 (`0x11b29a...da836a`, chain 43114)
- WooSuperChargerVaultV2 (`0x1cd7b3...02e6c4`, chain 43114)
- WooSuperChargerVaultV2 (`0x866810...c60625`, chain 43114)
- WooSuperChargerVaultV2_USDC.e (`0x758231...355d33`, chain 146)
- WooSuperChargerVaultV2_WETH (`0x1ddd22...9c89ed`, chain 146)
- WooWithdrawManager (`0x7de3fc...bca340`, chain 42161)
- WooWithdrawManager (`0xe77adf...0ead6a`, chain 42161)
- WooWithdrawManagerV2 (`0x382a9b...150efb`, chain 137)
- WooWithdrawManagerV2 (`0x3fe2c8...48b3b9`, chain 137)
- WooWithdrawManagerV2 (`0x7f7821...87fd4c`, chain 137)
- WooWithdrawManagerV2 (`0xbfe3d2...9f09ac`, chain 42161)
- WooWithdrawManagerV2 (`0xd05b95...5d03ac`, chain 42161)
- WooWithdrawManagerV2 (`0xe76c97...53d3fe`, chain 42161)
- WooWithdrawManagerV2 (`0x1bb2eb...9602c9`, chain 43114)
- WooWithdrawManagerV2 (`0x755e4a...1b56f6`, chain 43114)
- WooWithdrawManagerV2 (`0xa429b4...a59664`, chain 43114)
- WooWithdrawManagerV2_USDC.e (`0xd5befe...a0c343`, chain 146)
- WooWithdrawManagerV2_WETH (`0xd1d3a7...0e287c`, chain 146)

## Contract Surface Quality

- Logic-topography rows: 299; live-surface rows included: 299 (290 live, 9 unknown).
- Excluded by liveness: 0 inactive, 0 uninitialized.
- Deployment units: 332/526 live.
- Detected codebases: none
- Dependencies extracted: 0; unverified dependencies: 0.

## Audit Coverage Summary

- Coverage of address-book-owned deployed-live implementations: 8/289 (2.8%)
- Coverage assessment: assessed (high confidence) — Coverage is calculated over confirmed own address-book implementations with no unresolved address-book inventory in the live verified denominator.
- Address-book implementation classification: 331 own, 190 exact-address-book context/dependencies excluded, 0 exact-address-book entries needing review
- Outside the address book: 655 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 332 of 1176 unique; 844 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 8/312
- Verified + Unaudited implementations: 304
- Verified by bytecode match: 0
- Unverified implementations: 864
- Unique implementations: 1176
- Raw deployments: 1200
- Audits discovered: 20 (20 direct, 0 inherited from forked code)
- Scoreable audits (matched contracts): 5
- Active bug bounty: Immunefi ([program](https://immunefi.com/bug-bounty/woofi/information))
- ASD (verified + unaudited TVL): n/a
- Latest audit: 2025-05 (aging)
- Audit staleness (calendar age): 0 fresh, 5 aging, 12 stale, 2 unknown
- Coverage code basis (deployed vs audited code): 0 code-matched, 0 diverged (deployed code modified beyond the audited fork baseline), 8 match-unverified
- Tier 1 coverage: No Tier 1 coverage

### Auditor Coverage

| Auditor | Tier | Contracts Covered | Coverage % | Latest Audit |
|---|---|---:|---:|---|
| Zellic | Tier 2 | 5 | 1.6% | 2024-08 |
| CertiK | Tier 2 | 2 | 0.6% | 2025-05 |
| Unknown | Tier 2 | 1 | 0.3% | 2021-12 |
| Verilog | Tier 2 | 1 | 0.3% | 2021-10 |

## Contract Surface

### ✅ Verified + Audited (8)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| MpRewarder | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397894 | `0xa74bb3...a743d7` | ✅ Audited |
| RewardBooster | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397917 | `0xf26eb5...92747b` | ✅ Audited |
| WooRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397655 | `0x4c4af8...2e6fb7` | ✅ Audited |
| WooStakingCompounder | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397876 | `0x63a015...4ea1e3` | ✅ Audited |
| WooStakingController | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397887 | `0x93e63f...ad5a04` | ✅ Audited |
| WooStakingLocal | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397859 | `0x2cfa72...b7d8e2` | ✅ Audited |
| WooStakingManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-397896 | `0xa9e245...2924fb` | ✅ Audited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | base | unit-398154 | `0x8c6030...5736e7` | ✅ Audited |

### ⚠️ Verified + Unaudited (304)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AAVEStrategy_AVAX | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397979 | `0xbd9044...135166` | ⚠️ Unaudited |
| AaveStrategy_ETH | unknown | project_anchor | own_supporting | 0 | optimism | unit-397682 | `0x95360a...f2e6e9` | ⚠️ Unaudited |
| AAVEStrategy_ETH | unknown | project_anchor | own_supporting | 0 | base | unit-398168 | `0xcd1b98...e09db0` | ⚠️ Unaudited |
| AAVEStrategy_ETH | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397901 | `0xbdb42a...044b55` | ⚠️ Unaudited |
| AAVEStrategy_ETH | unknown | project_anchor | own_supporting | 0 | linea | unit-398119 | `0x9aa935...0a963b` | ⚠️ Unaudited |
| AAVEStrategy_USDC | unknown | project_anchor | own_supporting | 0 | polygon | unit-397728 | `0x78aa58...0705de` | ⚠️ Unaudited |
| AAVEStrategy_USDC | unknown | project_anchor | own_supporting | 0 | base | unit-398165 | `0xbeae1b...40494b` | ⚠️ Unaudited |
| AAVEStrategy_USDC | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397878 | `0x679b6a...32900c` | ⚠️ Unaudited |
| AAVEStrategy_USDC | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397942 | `0x3aad22...52ace5` | ⚠️ Unaudited |
| AAVEStrategy_USDC | unknown | project_anchor | own_supporting | 0 | linea | unit-398118 | `0x913e11...11b390` | ⚠️ Unaudited |
| AirdropDistributor | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-397888 | `0x968d3b...416b22` | ⚠️ Unaudited |
| AirdropDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xc63c64...58b9cb`; arbitrum `0xff0a28...2a86f6` | ⚠️ Unaudited |
| ARBRewarder | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397866 | `0x401ff5...aaabcb` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 19 deployments: avalanche `0x19860c...8dde98`; avalanche `0x37b608...2e4f76`; avalanche `0x3bd2b1...5b2339`; avalanche `0x49d5c2...c10bab`; avalanche `0x50b754...87b218`; avalanche `0x5947bb...3227a3`; avalanche `0x596fa4...cde0d2`; avalanche `0x63a728...d386d9`; avalanche `0x88128f...b72d42`; avalanche `0x8a0cac...e85cb9`; avalanche `0x8ebaf2...ba8580`; avalanche `0x98443b...690588`; avalanche `0x9eaac1...2f52dc`; avalanche `0xabc954...58d083`; avalanche `0xbec243...4b209b`; avalanche `0xc3048e...6e2437`; avalanche `0xc71984...b95118`; avalanche `0xd50128...28f267`; avalanche `0xd586e7...9d8d70` | ⚠️ Unaudited |
| cmETH_LendingManager | unknown | project_anchor | own_supporting | 0 | mantle | unit-398005 | `0x2cc993...ae2376` | ⚠️ Unaudited |
| cmETH_SuperChargerVaultV2 | unknown | project_anchor | own_supporting | 0 | mantle | unit-398013 | `0x872b6f...ad7049` | ⚠️ Unaudited |
| cmETH_VoidStrategy | unknown | project_anchor | own_supporting | 0 | mantle | unit-398006 | `0x46a721...6cd86a` | ⚠️ Unaudited |
| cmETH_WithdrawManagerV2 | unknown | project_anchor | own_supporting | 0 | mantle | unit-398017 | `0xa14c57...f05701` | ⚠️ Unaudited |
| cmETH_WOOFiVaultV2 | unknown | project_anchor | own_supporting | 0 | mantle | unit-398022 | `0xb8db69...d98f55` | ⚠️ Unaudited |
| CrossRouterv5 | unknown | project_anchor | own_supporting | 0 | bsc | unit-398082 | `0xb84aef...f4757c` | ⚠️ Unaudited |
| CrossswapRouterV5 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397660 | `0xb84aef...f4757c` | ⚠️ Unaudited |
| CrossswapRouterv5 | unknown | project_anchor | own_supporting | 0 | mantle | unit-398021 | `0xb84aef...f4757c` | ⚠️ Unaudited |
| CrossswapRouterv5 | unknown | project_anchor | own_supporting | 0 | base | unit-398163 | `0xb84aef...f4757c` | ⚠️ Unaudited |
| CrossswapRouterV5 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397978 | `0xb84aef...f4757c` | ⚠️ Unaudited |
| CrossswapRouterv5 | unknown | project_anchor | own_supporting | 0 | linea | unit-398125 | `0xb84aef...f4757c` | ⚠️ Unaudited |
| CrosswapRouter v5 | unknown | project_anchor | own_supporting | 0 | optimism | unit-397689 | `0xb84aef...f4757c` | ⚠️ Unaudited |
| CrosswapRouterV5 | unknown | project_anchor | own_supporting | 0 | polygon | unit-397748 | `0xb84aef...f4757c` | ⚠️ Unaudited |
| CrosswapRouterV5 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397899 | `0xb84aef...f4757c` | ⚠️ Unaudited |
| CustomBridgedToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x3aab22...05a9b4` | ⚠️ Unaudited |
| ExternalRewar_ARB | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397911 | `0xdf0006...df23e1` | ⚠️ Unaudited |
| ExternalRewar_usdc.e | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397871 | `0x4d0ec3...06ca57` | ⚠️ Unaudited |
| ExternalRewar_WBTC | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397892 | `0xa397fb...f43662` | ⚠️ Unaudited |
| ExternalReward_AVAX | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397966 | `0x919219...fa61eb` | ⚠️ Unaudited |
| ExternalReward_BNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-398100 | `0xf5d656...fa2ad1` | ⚠️ Unaudited |
| ExternalReward_BTC.b | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397971 | `0xa50258...5a9dc1` | ⚠️ Unaudited |
| ExternalReward_ETH | unknown | project_anchor | own_supporting | 0 | polygon | unit-397702 | `0x076aff...ab9bdb` | ⚠️ Unaudited |
| ExternalReward_ETH | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397919 | `0xfbbfcc...f873bf` | ⚠️ Unaudited |
| ExternalReward_MATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-397724 | `0x6de98d...6ae82d` | ⚠️ Unaudited |
| ExternalReward_USDC | unknown | project_anchor | own_supporting | 0 | polygon | unit-397736 | `0x8ec402...fec784` | ⚠️ Unaudited |
| ExternalReward_USDC | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397855 | `0x181d8e...423a60` | ⚠️ Unaudited |
| ExternalReward_USDC | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397955 | `0x65003b...dfd070` | ⚠️ Unaudited |
| ExternalReward_USDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-398093 | `0xdecc54...a8cf4b` | ⚠️ Unaudited |
| FarmingVault_ARB | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397858 | `0x2aa18a...823a31` | ⚠️ Unaudited |
| farmingvault_AVAX | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397992 | `0xda442c...091bfe` | ⚠️ Unaudited |
| FarmingVault_BNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-398067 | `0x85f161...ca07ec` | ⚠️ Unaudited |
| farmingvault_BTC.b | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397939 | `0x34c384...0ebcde` | ⚠️ Unaudited |
| FarmingVault_cbBTC | unknown | project_anchor | own_supporting | 0 | base | unit-398164 | `0xba3dd3...132a55` | ⚠️ Unaudited |
| farmingvault_ETH | unknown | project_anchor | own_supporting | 0 | optimism | unit-397677 | `0x7e1996...380107` | ⚠️ Unaudited |
| Farmingvault_ETH | unknown | project_anchor | own_supporting | 0 | polygon | unit-397738 | `0x99ad6e...a2d230` | ⚠️ Unaudited |
| FarmingVault_ETH | unknown | project_anchor | own_supporting | 0 | base | unit-398150 | `0x5a958b...3c513f` | ⚠️ Unaudited |
| farmingvault_ETH | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397868 | `0x478e7f...ef6f13` | ⚠️ Unaudited |
| FarmingVault_ETH | unknown | project_anchor | own_supporting | 0 | linea | unit-398112 | `0x6875eb...00e98f` | ⚠️ Unaudited |
| farmingvault_MATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-397753 | `0xd5befe...a0c343` | ⚠️ Unaudited |
| farmingvault_mETH | unknown | project_anchor | own_supporting | 0 | mantle | unit-398029 | `0xfbc49f...399560` | ⚠️ Unaudited |
| farmingvault_OP | unknown | project_anchor | own_supporting | 0 | optimism | unit-397685 | `0xa8452e...161d5b` | ⚠️ Unaudited |
| FarmingVault_S | unknown | project_anchor | own_supporting | 0 | sonic | unit-397784 | `0xcfe6aa...bb192c` | ⚠️ Unaudited |
| farmingvault_USDC | unknown | project_anchor | own_supporting | 0 | polygon | unit-397707 | `0x28f88a...de014c` | ⚠️ Unaudited |
| FarmingVault_USDC | unknown | project_anchor | own_supporting | 0 | base | unit-398172 | `0xf2be87...15e94e` | ⚠️ Unaudited |
| FarmingVault_USDC | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397864 | `0x38506f...503796` | ⚠️ Unaudited |
| farmingvault_USDC | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397938 | `0x305f06...66de4d` | ⚠️ Unaudited |
| FarmingVault_USDC | unknown | project_anchor | own_supporting | 0 | linea | unit-398124 | `0xb77212...e8cb43` | ⚠️ Unaudited |
| FarmingVault_usdc.e | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397909 | `0xd3d86c...850ae7` | ⚠️ Unaudited |
| FarmingVault_USDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-398097 | `0xe897b4...adead7` | ⚠️ Unaudited |
| farmingvault_USDT | unknown | project_anchor | own_supporting | 0 | mantle | unit-398020 | `0xb70913...020116` | ⚠️ Unaudited |
| FarmingVault_WBTC | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397915 | `0xea6790...28554a` | ⚠️ Unaudited |
| FeeManager | unknown | project_anchor | own_supporting | 0 | bsc | unit-398087 | `0xc45b55...1da54d` | ⚠️ Unaudited |
| IntegrationHelper (token info) | unknown | project_anchor | own_supporting | 0 | optimism | unit-397683 | `0x96329d...87e15e` | ⚠️ Unaudited |
| IntegrationHelper (token info) | unknown | project_anchor | own_supporting | 0 | bsc | unit-398076 | `0xaa9c15...bcc173` | ⚠️ Unaudited |
| IntegrationHelper (token info) | unknown | project_anchor | own_supporting | 0 | polygon | unit-397730 | `0x7ba560...81850d` | ⚠️ Unaudited |
| IntegrationHelper (token info) | unknown | project_anchor | own_supporting | 0 | monad | unit-397764 | `0xaee024...c95afe` | ⚠️ Unaudited |
| IntegrationHelper (token info) | unknown | project_anchor | own_supporting | 0 | sonic | unit-397782 | `0xc8521e...60cd7e` | ⚠️ Unaudited |
| IntegrationHelper (token info) | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-398181 | `0xee8318...4eea88` | ⚠️ Unaudited |
| IntegrationHelper (token info) | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397856 | `0x28d2b9...148e40` | ⚠️ Unaudited |
| IntegrationHelper (token info) | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397922 | `0x020630...2b6ad1` | ⚠️ Unaudited |
| IntegrationHelper(token info) | unknown | project_anchor | own_supporting | 0 | mantle | unit-398012 | `0x86b223...9be24c` | ⚠️ Unaudited |
| IntegrationHelper(token info) | unknown | project_anchor | own_supporting | 0 | base | unit-398167 | `0xc4e9b6...6f31b8` | ⚠️ Unaudited |
| IntegrationHelper(token info) | unknown | project_anchor | own_supporting | 0 | linea | unit-398115 | `0x7e1996...380107` | ⚠️ Unaudited |
| L2StandardERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x871f2f...a5e527` | ⚠️ Unaudited |
| LendingManager_BNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-398045 | `0x438baa...84463a` | ⚠️ Unaudited |
| LendingManager_cbBTC | unknown | project_anchor | own_supporting | 0 | base | unit-398160 | `0xb29de0...ad747b` | ⚠️ Unaudited |
| LendingManager_ETH | unknown | project_anchor | own_supporting | 0 | optimism | unit-397665 | `0x1ddd22...9c89ed` | ⚠️ Unaudited |
| LendingManager_ETH | unknown | project_anchor | own_supporting | 0 | base | unit-398155 | `0x913e11...11b390` | ⚠️ Unaudited |
| LendingManager_ETH | unknown | project_anchor | own_supporting | 0 | linea | unit-398106 | `0x2cf870...688dce` | ⚠️ Unaudited |
| LendingManager_mETH | unknown | project_anchor | own_supporting | 0 | mantle | unit-398025 | `0xd6abd5...f5686e` | ⚠️ Unaudited |
| LendingManager_OP | unknown | project_anchor | own_supporting | 0 | optimism | unit-397695 | `0xd2635b...eda899` | ⚠️ Unaudited |
| LendingManager_S | unknown | project_anchor | own_supporting | 0 | sonic | unit-397772 | `0x4df34a...617975` | ⚠️ Unaudited |
| LendingManager_USDC | unknown | project_anchor | own_supporting | 0 | optimism | unit-397669 | `0x4baa5f...de7316` | ⚠️ Unaudited |
| LendingManager_USDC | unknown | project_anchor | own_supporting | 0 | base | unit-398151 | `0x73bd3c...1aca15` | ⚠️ Unaudited |
| LendingManager_USDC | unknown | project_anchor | own_supporting | 0 | linea | unit-398127 | `0xc7f6fc...5028dd` | ⚠️ Unaudited |
| LendingManager_usdc.e | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397862 | `0x371a25...5d6f91` | ⚠️ Unaudited |
| LendingManager_USDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-398031 | `0x0510e5...fcc53b` | ⚠️ Unaudited |
| LendingManager_USDT | unknown | project_anchor | own_supporting | 0 | mantle | unit-398018 | `0xa8701c...442257` | ⚠️ Unaudited |
| MintedERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x50c42d...f2634b` | ⚠️ Unaudited |
| MysteryBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d9200...90715e` | ⚠️ Unaudited |
| NFTBoosterV2 | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397860 | `0x2ebca5...3ee90f` | ⚠️ Unaudited |
| NFTRewarder | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397854 | `0x0cccb2...5a125e` | ⚠️ Unaudited |
| NonceCounter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397656 | `0x88a199...47b0dc` | ⚠️ Unaudited |
| NonceCounter | unknown | project_anchor | own_supporting | 0 | optimism | unit-397680 | `0x88a199...47b0dc` | ⚠️ Unaudited |
| NonceCounter | unknown | project_anchor | own_supporting | 0 | bsc | unit-398068 | `0x88a199...47b0dc` | ⚠️ Unaudited |
| NonceCounter | unknown | project_anchor | own_supporting | 0 | polygon | unit-397733 | `0x88a199...47b0dc` | ⚠️ Unaudited |
| NonceCounter | unknown | project_anchor | own_supporting | 0 | base | unit-398153 | `0x88a199...47b0dc` | ⚠️ Unaudited |
| NonceCounter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397884 | `0x88a199...47b0dc` | ⚠️ Unaudited |
| NonceCounter | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397965 | `0x88a199...47b0dc` | ⚠️ Unaudited |
| NonceCounter | unknown | project_anchor | own_supporting | 0 | linea | unit-398116 | `0x88a199...47b0dc` | ⚠️ Unaudited |
| ProCrossChainRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397658 | `0xac8951...ad55ec` | ⚠️ Unaudited |
| ProCrossChainRouter | unknown | project_anchor | own_supporting | 0 | optimism | unit-397686 | `0xac8951...ad55ec` | ⚠️ Unaudited |
| ProCrossChainRouter | unknown | project_anchor | own_supporting | 0 | bsc | unit-398078 | `0xac8951...ad55ec` | ⚠️ Unaudited |
| ProCrossChainRouter | unknown | project_anchor | own_supporting | 0 | polygon | unit-397745 | `0xac8951...ad55ec` | ⚠️ Unaudited |
| ProCrossChainRouter | unknown | project_anchor | own_supporting | 0 | base | unit-398158 | `0xac8951...ad55ec` | ⚠️ Unaudited |
| ProCrossChainRouter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397897 | `0xac8951...ad55ec` | ⚠️ Unaudited |
| ProCrossChainRouter | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397973 | `0xac8951...ad55ec` | ⚠️ Unaudited |
| ProCrossChainRouter | unknown | project_anchor | own_supporting | 0 | linea | unit-398121 | `0xac8951...ad55ec` | ⚠️ Unaudited |
| ProDepositor | unknown | project_anchor | own_supporting | 0 | optimism | unit-397671 | `0x4e21a6...e4e50e` | ⚠️ Unaudited |
| ProDepositor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397872 | `0x4e21a6...e4e50e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397654 | `0x3933ca...16ec16` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | optimism | unit-397667 | `0x3933ca...16ec16` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | bsc | unit-398042 | `0x3933ca...16ec16` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | polygon | unit-397714 | `0x3933ca...16ec16` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | base | unit-398145 | `0x3933ca...16ec16` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397865 | `0x3933ca...16ec16` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397941 | `0x3933ca...16ec16` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | linea | unit-398108 | `0x3933ca...16ec16` | ⚠️ Unaudited |
| QuestTokenRewardManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca8edc...c00b72` | ⚠️ Unaudited |
| RebateManager | unknown | project_anchor | own_supporting | 0 | bsc | unit-398063 | `0x761661...1a6500` | ⚠️ Unaudited |
| RewardCampaignManager | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397885 | `0x927f8c...8d4234` | ⚠️ Unaudited |
| RewardMasterchef | unknown | project_anchor | own_supporting | 0 | optimism | unit-397692 | `0xc0f8c2...9926d6` | ⚠️ Unaudited |
| RewardMasterchef | unknown | project_anchor | own_supporting | 0 | bsc | unit-398086 | `0xc0f8c2...9926d6` | ⚠️ Unaudited |
| RewardMasterchef | unknown | project_anchor | own_supporting | 0 | polygon | unit-397750 | `0xc0f8c2...9926d6` | ⚠️ Unaudited |
| RewardMasterchef | unknown | project_anchor | own_supporting | 0 | sonic | unit-397767 | `0x0fad8f...9a02e2` | ⚠️ Unaudited |
| RewardMasterchef | unknown | project_anchor | own_supporting | 0 | mantle | unit-398011 | `0x82fde5...2db7a8` | ⚠️ Unaudited |
| RewardMasterchef | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397903 | `0xc0f8c2...9926d6` | ⚠️ Unaudited |
| RewardMasterchef | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397983 | `0xc0f8c2...9926d6` | ⚠️ Unaudited |
| SimpleRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6000b...e65bd3` | ⚠️ Unaudited |
| StandardArbERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xcafcd8...efd07b` | ⚠️ Unaudited |
| SuperChargerVault_ETH | unknown | project_anchor | own_supporting | 0 | optimism | unit-397688 | `0xb54e1d...8853b2` | ⚠️ Unaudited |
| SuperChargerVault_ETH | unknown | project_anchor | own_supporting | 0 | linea | unit-398128 | `0xe40d54...dcb0c0` | ⚠️ Unaudited |
| SuperChargerVault_mETH | unknown | project_anchor | own_supporting | 0 | mantle | unit-398015 | `0x944ebc...054fca` | ⚠️ Unaudited |
| SuperChargerVault_OP | unknown | project_anchor | own_supporting | 0 | optimism | unit-397694 | `0xca7184...99da26` | ⚠️ Unaudited |
| SuperChargerVault_S | unknown | project_anchor | own_supporting | 0 | sonic | unit-397790 | `0xf95117...0a37dd` | ⚠️ Unaudited |
| SuperChargerVault_USDC | unknown | project_anchor | own_supporting | 0 | optimism | unit-397664 | `0x18aa88...79753e` | ⚠️ Unaudited |
| SuperChargerVault_USDC | unknown | project_anchor | own_supporting | 0 | linea | unit-398104 | `0x0fd9ce...1b3523` | ⚠️ Unaudited |
| SuperChargerVault_USDT | unknown | project_anchor | own_supporting | 0 | mantle | unit-398009 | `0x657535...9ae9e3` | ⚠️ Unaudited |
| UChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x1b815d...a8c603` | ⚠️ Unaudited |
| USDC_StrategyAave | unknown | project_anchor | own_supporting | 0 | optimism | unit-397700 | `0xfd7ed9...4d7ccb` | ⚠️ Unaudited |
| USDC_VaultV2 | unknown | project_anchor | own_supporting | 0 | optimism | unit-397675 | `0x73504e...cb3620` | ⚠️ Unaudited |
| USDC.eRewarder | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397877 | `0x666e11...39d04c` | ⚠️ Unaudited |
| Vault_USDC.e | unknown | project_anchor | own_supporting | 0 | sonic | unit-397774 | `0x5db04b...39b4b8` | ⚠️ Unaudited |
| Vault_WETH | unknown | project_anchor | own_supporting | 0 | sonic | unit-397787 | `0xee8318...4eea88` | ⚠️ Unaudited |
| VoidStrategy_ARB | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397918 | `0xf80475...476f02` | ⚠️ Unaudited |
| VoidStrategy_BNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-398058 | `0x624b31...f337c9` | ⚠️ Unaudited |
| VoidStrategy_BTC.b | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397972 | `0xa5e994...8a4af3` | ⚠️ Unaudited |
| VoidStrategy_cbBTC | unknown | project_anchor | own_supporting | 0 | base | unit-398149 | `0x5994fa...c712a5` | ⚠️ Unaudited |
| VoidStrategy_cbBTC | unknown | project_anchor | own_supporting | 0 | base | unit-398157 | `0xa79e2c...2c97bb` | ⚠️ Unaudited |
| VoidStrategy_ETH | unknown | project_anchor | own_supporting | 0 | polygon | unit-397711 | `0x337060...e77d5b` | ⚠️ Unaudited |
| VoidStrategy_ETH | unknown | project_anchor | own_supporting | 0 | linea | unit-398123 | `0xb4e0bc...82caa9` | ⚠️ Unaudited |
| VoidStrategy_MATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-397757 | `0xee8402...e03f20` | ⚠️ Unaudited |
| VoidStrategy_mETH | unknown | project_anchor | own_supporting | 0 | mantle | unit-398027 | `0xdec7f7...966636` | ⚠️ Unaudited |
| voidstrategy_OP | unknown | project_anchor | own_supporting | 0 | optimism | unit-397696 | `0xda4b53...4c3438` | ⚠️ Unaudited |
| VoidStrategy_S | unknown | project_anchor | own_supporting | 0 | sonic | unit-397788 | `0xf314fa...d0a096` | ⚠️ Unaudited |
| VoidStrategy_USDC | unknown | project_anchor | own_supporting | 0 | base | unit-398161 | `0xb4e0bc...82caa9` | ⚠️ Unaudited |
| VoidStrategy_USDC | unknown | project_anchor | own_supporting | 0 | linea | unit-398113 | `0x7081a3...887d7e` | ⚠️ Unaudited |
| VoidStrategy_USDC.e | unknown | project_anchor | own_supporting | 0 | sonic | unit-397770 | `0x2df393...4f5208` | ⚠️ Unaudited |
| VoidStrategy_usdc.e | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397916 | `0xec0417...f13bb8` | ⚠️ Unaudited |
| VoidStrategy_USDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-398048 | `0x497abd...f3c60f` | ⚠️ Unaudited |
| VoidStrategy_USDT | unknown | project_anchor | own_supporting | 0 | mantle | unit-398016 | `0x9aed3a...629a30` | ⚠️ Unaudited |
| VoidStrategy_WBTC | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397890 | `0x9d71a7...3abe15` | ⚠️ Unaudited |
| VoidStrategy_WETH | unknown | project_anchor | own_supporting | 0 | sonic | unit-397775 | `0x64edb6...493636` | ⚠️ Unaudited |
| WithdrawManager_BNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-398035 | `0x269894...a31bb4` | ⚠️ Unaudited |
| WithdrawManager_cbBTC | unknown | project_anchor | own_supporting | 0 | base | unit-398171 | `0xec0541...cb2b90` | ⚠️ Unaudited |
| WithdrawManager_ETH | unknown | project_anchor | own_supporting | 0 | optimism | unit-397681 | `0x917418...eb58f7` | ⚠️ Unaudited |
| WithdrawManager_ETH | unknown | project_anchor | own_supporting | 0 | base | unit-398170 | `0xe61acb...de4ed0` | ⚠️ Unaudited |
| WithdrawManager_ETH | unknown | project_anchor | own_supporting | 0 | linea | unit-398117 | `0x894edf...744158` | ⚠️ Unaudited |
| WithdrawManager_mETH | unknown | project_anchor | own_supporting | 0 | mantle | unit-398014 | `0x8ea0eb...e07a5c` | ⚠️ Unaudited |
| WithdrawManager_OP | unknown | project_anchor | own_supporting | 0 | optimism | unit-397663 | `0x0fad8f...9a02e2` | ⚠️ Unaudited |
| WithdrawManager_S | unknown | project_anchor | own_supporting | 0 | sonic | unit-397778 | `0x87bca2...0deb5c` | ⚠️ Unaudited |
| WithdrawManager_USDC | unknown | project_anchor | own_supporting | 0 | optimism | unit-397666 | `0x2500ad...955777` | ⚠️ Unaudited |
| WithdrawManager_USDC | unknown | project_anchor | own_supporting | 0 | base | unit-398156 | `0xa1bb8a...8e34e5` | ⚠️ Unaudited |
| WithdrawManager_USDC | unknown | project_anchor | own_supporting | 0 | linea | unit-398120 | `0xaacf22...cd9198` | ⚠️ Unaudited |
| WithdrawManager_USDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-398044 | `0x3cbb7f...872deb` | ⚠️ Unaudited |
| WithdrawManager_USDT | unknown | project_anchor | own_supporting | 0 | mantle | unit-398026 | `0xdda9ef...16c7eb` | ⚠️ Unaudited |
| WOO OFT | unknown | project_anchor | own_supporting | 0 | base | unit-398174 | `0xf3df0a...9471b6` | ⚠️ Unaudited |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | optimism | unit-397687 | `0xaf558f...cd9239` | ⚠️ Unaudited |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | bsc | unit-398079 | `0xaf558f...cd9239` | ⚠️ Unaudited |
| WooAccessManager | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397737 | `0x925afa...5dd965` | ⚠️ Unaudited |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | polygon | unit-397746 | `0xaf558f...cd9239` | ⚠️ Unaudited |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | sonic | unit-397780 | `0xaf558f...cd9239` | ⚠️ Unaudited |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | mantle | unit-398019 | `0xaf558f...cd9239` | ⚠️ Unaudited |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | base | unit-398159 | `0xaf558f...cd9239` | ⚠️ Unaudited |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397898 | `0xaf558f...cd9239` | ⚠️ Unaudited |
| WooAccessManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-397907 | `0xd14a99...caa99e` | ⚠️ Unaudited |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | linea | unit-398122 | `0xaf558f...cd9239` | ⚠️ Unaudited |
| WooBuyBackSwap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397891 | `0xa18655...7ae24a` | ⚠️ Unaudited |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | optimism | unit-397693 | `0xc45b55...1da54d` | ⚠️ Unaudited |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | polygon | unit-397751 | `0xc45b55...1da54d` | ⚠️ Unaudited |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | sonic | unit-397781 | `0xc45b55...1da54d` | ⚠️ Unaudited |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | mantle | unit-398023 | `0xc45b55...1da54d` | ⚠️ Unaudited |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | base | unit-398166 | `0xc45b55...1da54d` | ⚠️ Unaudited |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397904 | `0xc45b55...1da54d` | ⚠️ Unaudited |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | linea | unit-398126 | `0xc45b55...1da54d` | ⚠️ Unaudited |
| WOOFiVaultV2 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397923 | `0x0c9044...4be49e` | ⚠️ Unaudited |
| WOOFiVaultV2 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397987 | `0xc48ab7...e2e112` | ⚠️ Unaudited |
| WooLendingManager | core_logic | project_anchor | own_supporting | 0 | polygon | unit-397701 | `0x01e42c...63f139` | ⚠️ Unaudited |
| WooLendingManager | core_logic | project_anchor | own_supporting | 0 | polygon | unit-397723 | `0x697c97...6ffccd` | ⚠️ Unaudited |
| WooLendingManager | core_logic | project_anchor | own_supporting | 0 | polygon | unit-397742 | `0x9f46a7...bff18d` | ⚠️ Unaudited |
| WooLendingManager | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397875 | `0x5c7ff2...bb7bc5` | ⚠️ Unaudited |
| WooLendingManager | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397879 | `0x6fc2c9...8f3f08` | ⚠️ Unaudited |
| WooLendingManager | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397881 | `0x79a545...3be767` | ⚠️ Unaudited |
| WooLendingManager | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397920 | `0xfeeced...3ac2d6` | ⚠️ Unaudited |
| WooLendingManager | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-397940 | `0x385e06...b10f73` | ⚠️ Unaudited |
| WooLendingManager | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-397956 | `0x697c97...6ffccd` | ⚠️ Unaudited |
| WooLendingManager | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-397989 | `0xc8ec7f...dd9dc7` | ⚠️ Unaudited |
| WooLendingManager_USDC.e | unknown | project_anchor | own_supporting | 0 | sonic | unit-397783 | `0xcc96ba...681ee9` | ⚠️ Unaudited |
| WooLendingManager_WETH | unknown | project_anchor | own_supporting | 0 | sonic | unit-397779 | `0x917418...eb58f7` | ⚠️ Unaudited |
| WooOFT | unknown | project_anchor | own_supporting | 0 | sonic | unit-397789 | `0xf3df0a...9471b6` | ⚠️ Unaudited |
| WooOFT | unknown | project_anchor | own_supporting | 0 | mantle | unit-398028 | `0xf3df0a...9471b6` | ⚠️ Unaudited |
| WooOFT | unknown | project_anchor | own_supporting | 0 | linea | unit-398130 | `0xf3df0a...9471b6` | ⚠️ Unaudited |
| WooOFTAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397659 | `0xad6ca8...e87711` | ⚠️ Unaudited |
| WooPPv2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-397721 | `0x552038...f69fa4` | ⚠️ Unaudited |
| WooPPV2 | unknown | project_anchor | own_supporting | 0 | monad | unit-397762 | `0x552038...f69fa4` | ⚠️ Unaudited |
| WooPPV2 | unknown | project_anchor | own_supporting | 0 | sonic | unit-397773 | `0x552038...f69fa4` | ⚠️ Unaudited |
| WooPPV2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-398177 | `0x552038...f69fa4` | ⚠️ Unaudited |
| WooPPV2 | unknown | project_anchor | own_supporting | 0 | mantle | unit-398008 | `0x552038...f69fa4` | ⚠️ Unaudited |
| WooPPV2 | unknown | project_anchor | own_supporting | 0 | linea | unit-398111 | `0x552038...f69fa4` | ⚠️ Unaudited |
| WooPPV2 | unknown | project_anchor | own_supporting | 0 | berachain | unit-398135 | `0x552038...f69fa4` | ⚠️ Unaudited |
| WooPPV2.2 | unknown | project_anchor | own_supporting | 0 | optimism | unit-397672 | `0x552038...f69fa4` | ⚠️ Unaudited |
| WooPPV2.2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-398054 | `0x552038...f69fa4` | ⚠️ Unaudited |
| WooPPV2.2 | unknown | project_anchor | own_supporting | 0 | base | unit-398148 | `0x552038...f69fa4` | ⚠️ Unaudited |
| WooPPV2.2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397873 | `0x552038...f69fa4` | ⚠️ Unaudited |
| WooPPV2.2 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397951 | `0x552038...f69fa4` | ⚠️ Unaudited |
| WooracleV2_2 | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-397708 | `0x2a8ede...1a8428` | ⚠️ Unaudited |
| WooracleV2_2 | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-397905 | `0xcf4ea1...8934ec` | ⚠️ Unaudited |
| WooracleV2.1 | unknown | project_anchor | own_supporting | 0 | bsc | unit-398036 | `0x2a3755...bfa5a6` | ⚠️ Unaudited |
| WooracleV2.1 | unknown | project_anchor | own_supporting | 0 | sonic | unit-397769 | `0x2a3755...bfa5a6` | ⚠️ Unaudited |
| WooracleV2.1 | unknown | project_anchor | own_supporting | 0 | mantle | unit-398004 | `0x2a3755...bfa5a6` | ⚠️ Unaudited |
| WooracleV2.1 | unknown | project_anchor | own_supporting | 0 | base | unit-398144 | `0x2a3755...bfa5a6` | ⚠️ Unaudited |
| WooracleV2.1 | unknown | project_anchor | own_supporting | 0 | linea | unit-398105 | `0x2a3755...bfa5a6` | ⚠️ Unaudited |
| WooracleV2.2 | unknown | project_anchor | own_supporting | 0 | optimism | unit-397684 | `0xa43305...a75127` | ⚠️ Unaudited |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | optimism | unit-397676 | `0x761661...1a6500` | ⚠️ Unaudited |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | polygon | unit-397727 | `0x761661...1a6500` | ⚠️ Unaudited |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | monad | unit-397763 | `0x761661...1a6500` | ⚠️ Unaudited |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | sonic | unit-397777 | `0x761661...1a6500` | ⚠️ Unaudited |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-398178 | `0x761661...1a6500` | ⚠️ Unaudited |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | mantle | unit-398010 | `0x761661...1a6500` | ⚠️ Unaudited |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | base | unit-398152 | `0x761661...1a6500` | ⚠️ Unaudited |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397880 | `0x761661...1a6500` | ⚠️ Unaudited |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | linea | unit-398114 | `0x761661...1a6500` | ⚠️ Unaudited |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | berachain | unit-398136 | `0x761661...1a6500` | ⚠️ Unaudited |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | optimism | unit-397670 | `0x4c4af8...2e6fb7` | ⚠️ Unaudited |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-398050 | `0x4c4af8...2e6fb7` | ⚠️ Unaudited |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-397720 | `0x4c4af8...2e6fb7` | ⚠️ Unaudited |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | sonic | unit-397771 | `0x4c4af8...2e6fb7` | ⚠️ Unaudited |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | mantle | unit-398007 | `0x4c4af8...2e6fb7` | ⚠️ Unaudited |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | base | unit-398147 | `0x4c4af8...2e6fb7` | ⚠️ Unaudited |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397870 | `0x4c4af8...2e6fb7` | ⚠️ Unaudited |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | linea | unit-398110 | `0x4c4af8...2e6fb7` | ⚠️ Unaudited |
| WooStakingProxy | proxy | project_anchor | own_supporting | 0 | ethereum | unit-397661 | `0xba91ff...a89b13` | ⚠️ Unaudited |
| WooStakingProxy | proxy | project_anchor | own_supporting | 0 | optimism | unit-397690 | `0xba91ff...a89b13` | ⚠️ Unaudited |
| WOOStakingProxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-398083 | `0xba91ff...a89b13` | ⚠️ Unaudited |
| WooStakingProxy | proxy | project_anchor | own_supporting | 0 | polygon | unit-397749 | `0xba91ff...a89b13` | ⚠️ Unaudited |
| WooStakingProxy | proxy | project_anchor | own_supporting | 0 | avalanche | unit-397943 | `0x3bd968...1386e3` | ⚠️ Unaudited |
| WooStakingVault | core_logic | project_anchor | own_supporting | 0 | polygon | unit-397739 | `0x9bcf8b...9b405b` | ⚠️ Unaudited |
| WooStakingVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397886 | `0x932178...3dc99d` | ⚠️ Unaudited |
| WooStakingVault | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-397990 | `0xcd1b98...e09db0` | ⚠️ Unaudited |
| WooStakingVault 1.0 | unknown | project_anchor | own_supporting | 0 | bsc | unit-398038 | `0x2aeab1...085076` | ⚠️ Unaudited |
| WooSuperChargerVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397703 | `0x0ba6c3...0ecb9e` | ⚠️ Unaudited |
| WooSuperChargerVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397719 | `0x404b18...a9d503` | ⚠️ Unaudited |
| WooSuperChargerVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397735 | `0x8ea0eb...e07a5c` | ⚠️ Unaudited |
| WooSuperChargerVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397874 | `0x5a6b07...8cad62` | ⚠️ Unaudited |
| WooSuperChargerVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397900 | `0xba452b...1c2d08` | ⚠️ Unaudited |
| WooSuperChargerVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397963 | `0x86a639...b9abc7` | ⚠️ Unaudited |
| WooSuperChargerVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-398002 | `0xfc0e57...e312af` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | bsc | unit-398055 | `0x5cb9ba...fb3158` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | bsc | unit-398065 | `0x7eb8d4...be4cad` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | polygon | unit-397704 | `0x1109e0...3cf549` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x90a2aa...abd085` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | polygon | unit-397741 | `0x9dd5dd...9b0699` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | polygon | unit-397756 | `0xedbb74...1799ac` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | base | unit-398146 | `0x44df09...746cb8` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | base | unit-398162 | `0xb77212...e8cb43` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397883 | `0x7f3f2a...295bb1` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397895 | `0xa78043...52f7d8` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397908 | `0xd2fdab...5b56b1` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-397925 | `0x11b29a...da836a` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-397927 | `0x1cd7b3...02e6c4` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-397962 | `0x866810...c60625` | ⚠️ Unaudited |
| WooSuperChargerVaultV2_USDC.e | unknown | project_anchor | own_supporting | 0 | sonic | unit-397776 | `0x758231...355d33` | ⚠️ Unaudited |
| WooSuperChargerVaultV2_WETH | unknown | project_anchor | own_supporting | 0 | sonic | unit-397768 | `0x1ddd22...9c89ed` | ⚠️ Unaudited |
| WootradeNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x469193...945d4b` | ⚠️ Unaudited |
| WooWithdrawManager | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397715 | `0x39467a...2ec735` | ⚠️ Unaudited |
| WooWithdrawManager | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397752 | `0xcf6ce5...059de5` | ⚠️ Unaudited |
| WooWithdrawManager | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-397882 | `0x7de3fc...bca340` | ⚠️ Unaudited |
| WooWithdrawManager | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-397914 | `0xe77adf...0ead6a` | ⚠️ Unaudited |
| WooWithdrawManagerV2 | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-397713 | `0x382a9b...150efb` | ⚠️ Unaudited |
| WooWithdrawManagerV2 | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-397718 | `0x3fe2c8...48b3b9` | ⚠️ Unaudited |
| WooWithdrawManagerV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f09ae...8dfc01` | ⚠️ Unaudited |
| WooWithdrawManagerV2 | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-397731 | `0x7f7821...87fd4c` | ⚠️ Unaudited |
| WooWithdrawManagerV2 | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-397902 | `0xbfe3d2...9f09ac` | ⚠️ Unaudited |
| WooWithdrawManagerV2 | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-397906 | `0xd05b95...5d03ac` | ⚠️ Unaudited |
| WooWithdrawManagerV2 | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-397913 | `0xe76c97...53d3fe` | ⚠️ Unaudited |
| WooWithdrawManagerV2 | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-397926 | `0x1bb2eb...9602c9` | ⚠️ Unaudited |
| WooWithdrawManagerV2 | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-397959 | `0x755e4a...1b56f6` | ⚠️ Unaudited |
| WooWithdrawManagerV2 | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-397970 | `0xa429b4...a59664` | ⚠️ Unaudited |
| WooWithdrawManagerV2_USDC.e | unknown | project_anchor | own_supporting | 0 | sonic | unit-397786 | `0xd5befe...a0c343` | ⚠️ Unaudited |
| WooWithdrawManagerV2_WETH | unknown | project_anchor | own_supporting | 0 | sonic | unit-397785 | `0xd1d3a7...0e287c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (864)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FarmingVault_ETH | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397846 | `0xc5d8fc...8a770c` | ❓ Unverified |
| FarmingVault_USDC | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397838 | `0x805b06...db502a` | ❓ Unverified |
| FarmingVault_ZK | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397840 | `0x9af29b...4875ce` | ❓ Unverified |
| IntegrationHelper (token info) | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397835 | `0x636dfe...6bd935` | ❓ Unverified |
| IntegrationHelper (token info) | unknown | project_anchor | own_supporting | 0 | berachain | unit-398131 | `0x14b435...c3176e` | ❓ Unverified |
| LendingManager_ETH | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397844 | `0xaeed91...9686f3` | ❓ Unverified |
| LendingManager_USDC | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397828 | `0x17927d...ef1f6a` | ❓ Unverified |
| LendingManager_ZK | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397831 | `0x2ace3a...534873` | ❓ Unverified |
| SuperChargerVault_ETH | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397829 | `0x1d6862...fd99a4` | ❓ Unverified |
| SuperChargerVault_USDC | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397848 | `0xdca324...d57921` | ❓ Unverified |
| SuperChargerVault_ZK | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397839 | `0x85167f...dfdb45` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-397653 | `0x044c08...3534e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-397657 | `0x9d1a92...ca3128` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-397662 | `0xe47fec...8ca205` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-397668 | `0x464959...d522f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-397673 | `0x5ec696...b23cfb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-397674 | `0x655e2f...386a7b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-397678 | `0x81ab34...17075d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-397679 | `0x84b76e...2b7e5f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-397691 | `0xbeae1b...40494b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-397697 | `0xe47fec...8ca205` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-397698 | `0xeaf1ac...527024` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-397699 | `0xeec602...b8ed8d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398030 | `0x0208d7...bf0563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x047073...2081ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0972a0...35aa73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398032 | `0x0ba6c3...0ecb9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c4d6a...f09a0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c6c19...209cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13afd5...d8f524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15ad43...03035b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x160020...2062ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1736b8...fcee7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17f377...9b3ef2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a8e01...fe87e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b9182...ae25a9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398033 | `0x202b57...9f13d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398034 | `0x2209a0...112361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24d48d...0c3027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x286ab1...f4f9bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398037 | `0x2a8b29...72eb05` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398039 | `0x2caa3e...4e7c7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398040 | `0x2cf117...a9e1ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2df393...4f5208` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398041 | `0x2f22c3...254d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30e9cc...f05df9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x360e41...ae0b6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36dbf0...746603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39373b...cce427` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b7efe...81c7ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3be04d...9db10a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398043 | `0x3c1fc3...aa967d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fe2c8...48b3b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4333f7...fe7fb6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398046 | `0x44ceb1...4ae316` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398047 | `0x45c3a5...f73239` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x468f46...383dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46d2c7...dc4a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x479dbc...0a7e45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4926eb...ee7e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a7bbb...56c943` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398049 | `0x4b11b9...ebfd62` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398051 | `0x4f3e0b...f4de98` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398052 | `0x4f4fd4...3e8f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50f347...d0ecc1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398053 | `0x53e255...70b59f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59de3b...ab93fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a6b07...8cad62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bf68e...36f34e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d358a...3b21c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5db04b...39b4b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398056 | `0x5edd5e...b5f4d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f0002...a38a2e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398057 | `0x5f74a3...6018a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x664195...776d9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x684b71...c409eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b1bca...c3ac72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398059 | `0x6b6fbe...17afdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70f9c8...c6b795` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398060 | `0x721986...030d7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x72dc7f...34bca9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74486b...3c7c73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398061 | `0x747f99...5c4a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x758231...355d33` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398062 | `0x758a1f...5e301e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398064 | `0x778098...437b8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79f271...509dae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b46cd...9f3c00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7be78d...6a8f22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d99d2...03e206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e5634...df4fd8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398066 | `0x81004c...9ef439` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86b223...9be24c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x872b6f...ad7049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x894edf...744158` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398069 | `0x8c6030...5736e7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398070 | `0x8fa8e3...1d8f90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398071 | `0x910723...6589b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93d879...6df74b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95360a...f2e6e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x973dbf...c79fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97456b...d25360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x981296...4a5de1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x997bc3...a4a52c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a6d88...74d4db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9aa935...0a963b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa02e9f...00a996` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398072 | `0xa1436a...14171c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1bb8a...8e34e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398073 | `0xa2f2d3...d4d673` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398074 | `0xa596af...a94a10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa94034...cdbfd7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398075 | `0xa9edb6...739fb0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398077 | `0xaab8a8...f27181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac5cf6...10a81b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac9244...d2eddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaeb948...438e73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf3492...f7c0df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb130a4...5d723f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398080 | `0xb3bd9c...25417c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398081 | `0xb4e437...73af53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8db69...d98f55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb964bb...8775bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398084 | `0xbf365c...77fd3f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398085 | `0xbfdf54...21f376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc036ba...fb09ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0969b...08705b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc36b03...308907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc51762...c9a61f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc67f09...abdb8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc68fde...f8ee78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7498b...2c0dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7f6fc...5028dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398088 | `0xc90bfe...a01294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcbdfa5...c14a3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc96ba...681ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcdfa96...2efc84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce7cdc...e31342` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcec7e5...3f9636` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398089 | `0xcef5be...30a269` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398090 | `0xd12d23...e31a67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd18d33...82d89a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1d3a7...0e287c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398091 | `0xd25650...07127c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2635b...eda899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3d86c...850ae7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5befe...a0c343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7a801...4edc3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda442c...091bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda5e1d...934d5e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398092 | `0xdb1d99...cdfbc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc1d17...277a4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdeefc0...0a5d0f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398094 | `0xe12dc1...61d879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1eb61...fc733c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398095 | `0xe24a0e...121b33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3222b...f508c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398096 | `0xe47fec...8ca205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5b3d3...2acbb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe77adf...0ead6a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398098 | `0xec0541...cb2b90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398099 | `0xee7ac4...5ea3b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeff23b...bf3062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1cf2d...d03def` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf35908...71bb79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf52ddc...0e275e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398101 | `0xf667e5...4dd69b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398102 | `0xf704ea...4d2b76` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398103 | `0xfceb41...3a4961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe1787...170ccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe5f3a...55c89c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xffd63b...46b624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x049989...c882ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x049d48...396e92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08357e...93f3fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ad1a3...b7593f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c6c19...209cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x11b29a...da836a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12e687...056592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x154e8b...66c67e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ce18a...f8bcdb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397705 | `0x1ddd22...9c89ed` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397706 | `0x27021e...4b87bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2caa3e...4e7c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2da7de...520d86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397709 | `0x2e668b...0c0383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f97e4...6a5147` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397710 | `0x2fe5e5...b0f7ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x31ae60...e2a48e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x35e3fe...e77237` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397712 | `0x376d56...5b482c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3784a4...8f95da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3b3e4b...c88524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3bb5aa...8adaa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c5379...79f890` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397716 | `0x3d605f...ca8a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3e2942...4fc382` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397717 | `0x3ec979...fcd8d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x409df2...2a1dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x44df09...746cb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x49d26a...d3614a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a7bbb...56c943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4ab421...af63b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4c51d3...128c6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4df34a...617975` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4f4abc...d27b95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4fe764...c34e66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x53b42b...d54acf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x562003...4ed968` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397722 | `0x574b9c...c008fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c1792...42f9bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5cb492...55d406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6124c9...c77903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x632626...7d603e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x63b244...b28358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6875eb...00e98f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7081a3...887d7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397725 | `0x721483...c18937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x73bd3c...1aca15` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397726 | `0x7400b6...78723d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x74486b...3c7c73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397729 | `0x7b53ae...e3c66c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e8949...627254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f2571...f950ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7fdf58...e63881` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397732 | `0x817eb4...a39b74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83b904...8d5ea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x84b76e...2b7e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x887482...07db17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x88ef2b...bfa3fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8c6030...5736e7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397734 | `0x8cd11c...14b108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x913e11...11b390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9144d5...4c51db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x91d11e...6b93cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x930fa1...c0f9c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x938021...3e0dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x96329d...87e15e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x997bc3...a4a52c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397740 | `0x9d1a92...ca3128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0d702...e898e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa1bb8a...8e34e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397743 | `0xa2f2d3...d4d673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa325dd...477bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa79e2c...2c97bb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397744 | `0xaa9c15...bcc173` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb0d84f...5432ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb29de0...ad747b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397747 | `0xb54e1d...8853b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb6f776...485354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb77212...e8cb43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb8db69...d98f55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb964bb...8775bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbae04c...e5f499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbf401e...b57c22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc22fbb...cea2f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc2c0e0...a69492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc4abb9...393cca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcb342e...a9ae21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcbe2ae...f79cee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce66ab...978bb3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397754 | `0xd7a030...74234f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xde1272...91f2da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe33a53...995646` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397755 | `0xe47fec...8ca205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe56758...b33647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xec0417...f13bb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xec0541...cb2b90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xed6e5c...a64aaf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397758 | `0xeff23b...bf3062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf0b4d1...76bd5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf13879...b465a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf2be87...15e94e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397759 | `0xf5d215...83a2d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf6be9c...9ad083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf95117...0a37dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xffd6e0...1658f3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397791 | `0x05c97e...ee6e76` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397792 | `0x0d37e7...9a68e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397793 | `0x128758...da5db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | 6 deployments: fantom `0x1416e1...0703d9`; fantom `0x286ab1...f4f9bf`; fantom `0x2fe5e5...b0f7ec`; fantom `0x6626c4...5e8d8a`; fantom `0x74b238...58c76d`; polygon-zkevm `0xf5d215...83a2d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397794 | `0x1553a0...ecacca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397795 | `0x209102...7ea7ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397796 | `0x28d2b9...148e40` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397797 | `0x2df393...4f5208` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397798 | `0x2fb089...d3a547` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397799 | `0x37b5a5...05e447` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397800 | `0x4df34a...617975` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397801 | `0x581185...65b3b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397802 | `0x58c73f...d6b3e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397803 | `0x5db04b...39b4b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397804 | `0x64edb6...493636` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397805 | `0x6deb92...d69c1e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397806 | `0x70f9c8...c6b795` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397807 | `0x71a862...d3a375` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397808 | `0x7b2e29...ba08dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397809 | `0x83b904...8d5ea0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397810 | `0x87bca2...0deb5c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397811 | `0x8840e2...3cbf04` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397812 | `0x9503e7...2546f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397813 | `0xb29de0...ad747b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397814 | `0xb6f776...485354` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397815 | `0xcc96ba...681ee9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397816 | `0xcf6ce5...059de5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397817 | `0xd5befe...a0c343` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397818 | `0xd6d6a0...87fcb8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397819 | `0xdc1d17...277a4f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397820 | `0xe1bbfe...8ac1b7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397821 | `0xec0541...cb2b90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397822 | `0xee8318...4eea88` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397823 | `0xf60d27...46115d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397824 | `0xf6be9c...9ad083` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397825 | `0xfce921...a115db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-397834 | `0x635b70...910350` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-397853 | `0xfd5057...876417` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-398024 | `0xd14a99...caa99e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03465a...6991d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x15ba47...1629c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25d734...0be1d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-398143 | `0x27425e...a322e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x27820d...d432b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b76b9...853d88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2df393...4f5208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2fe5e5...b0f7ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x39467a...2ec735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b3e4b...c88524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3c5379...79f890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3e2af6...f4a205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x409df2...2a1dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x468f46...383dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x479dbc...0a7e45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c51d3...128c6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4df34a...617975` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4e04b9...1b808b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4f3e0b...f4de98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x505ac7...3efa3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51ae61...066ac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5bf68e...36f34e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5cb492...55d406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6fc6f3...307a53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x721483...c18937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x758231...355d33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7a7a3f...781ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d8f20...52add3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7db250...ee2d8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x81d34d...024044` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82fde5...2db7a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x859cec...0cd99c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x887482...07db17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8b4aca...548a87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90a2aa...abd085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x973dbf...c79fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9aed3a...629a30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9b4196...108237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d1a92...ca3128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa02e9f...00a996` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2101f...027001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa8701c...442257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa94034...cdbfd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaa3b0d...4abf53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaf3492...f7c0df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb130a4...5d723f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb3cd4c...a06349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc2c0e0...a69492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc3d60d...195335` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc50fab...e4641c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc51762...c9a61f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc7498b...2c0dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc96ba...681ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcced0e...b78611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xda5e1d...934d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc1d17...277a4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdcd8e9...ea8265` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe33a53...995646` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-398169 | `0xe47fec...8ca205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed6e5c...a64aaf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-398173 | `0xf314fa...d0a096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf357ec...dc0182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00daaa...de8ba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01c8f6...624ca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04736d...c707cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0510e5...fcc53b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06b00f...539655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06c7e4...4e336b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x070d5c...5bdb09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0972a0...35aa73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ab13d...2bdc2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0aed81...5c6ba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ba6c3...0ecb9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0cee55...1df408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d42b2...8aa6a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0feb09...363006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x106da3...20a6a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10aeb5...550d25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10dcf5...d64c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1109e0...3cf549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x113d31...b71a73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x114c36...a77b63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x114ff6...2321af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x121135...67bc55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1349e5...c78636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x138047...f3804c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13b3c9...14c6e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13d902...ce40b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1553a0...ecacca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x15a035...1d0e74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x15b11a...65d606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x15ba47...1629c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c2998...a957df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ce18a...f8bcdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d8664...4f830b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ddd22...9c89ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e5bd7...1ea8fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f2868...422778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f79f8...2df448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21886d...636103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21becb...34b032` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x230441...f7d718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23433a...a38d09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2500ad...955777` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26f33e...1c14f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2711cc...066fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2743d7...beb7bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2839d2...626c4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x28f846...0ceb86` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-397857 | `0x28f88a...de014c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x297ad0...24d25b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29ca8b...f52407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a0fa0...1f31d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a73a5...0f60e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a8ede...1a8428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2aaf89...219050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b76b9...853d88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2cc993...ae2376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2cf870...688dce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2df393...4f5208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e14ca...0cd7c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2eeb12...d14bd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f1617...2f6e7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fe5e5...b0f7ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ff261...c303d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x308984...ef8000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31828f...729f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31a06d...b1d149` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31ae60...e2a48e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3382c5...f0ea14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3509ff...117b00` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-397861 | `0x360e41...ae0b6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x366e2f...c5aa3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x367f11...233df3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x36a106...6489d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x36dbf0...746603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x371a35...e6c347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3784a4...8f95da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-397863 | `0x37a9de...910739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37e98b...15b034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x38cb87...b63387` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39d361...fb0877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39ee28...d14577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3aad22...52ace5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b3e4b...c88524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3bb5aa...8adaa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3be04d...9db10a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3cd52e...215c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3dc662...2da2cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x409df2...2a1dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x41c790...71c16e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43054b...1ac44b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x438241...9c098f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-397867 | `0x44df09...746cb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x452c32...6eff4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x468f46...383dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48c9ee...7224b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48fd9b...ec8c9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4926eb...ee7e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x497abd...f3c60f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49e1b5...78ccdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a54e5...c1bdac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-397869 | `0x4ab421...af63b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b9736...522ef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c51d3...128c6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c7621...0e1668` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d7cb5...5d721a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ea3b7...b1262f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f052d...b9a978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f57cb...ae54d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4fbec6...d7996b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x505ac7...3efa3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50c931...332a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50f347...d0ecc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52082c...0aefd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x523752...77244e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52dda0...0a5206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x53c660...8d683b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x552f22...508a40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x572605...8e86a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58005b...3f5659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x581185...65b3b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5994fa...c712a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b4a31...feee74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b87c6...1cc807` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c2db3...d86cb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c3abb...c22c6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x604ff7...3ede52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6124c9...c77903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6317a2...527b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x632626...7d603e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x637645...ae6ed6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x640b42...d82fdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64a734...e90f4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65003b...dfd070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x651040...5f58ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x652e75...af5c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65f2d7...582172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x664195...776d9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66c883...e8c10c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6833e5...cf0bc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6838b7...537fb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69cbff...50e705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b31bc...0d61d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b4488...cb12d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b4912...f7aec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c2d14...0b09da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f09ae...8dfc01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f905b...87cd58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7081a3...887d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70ea48...226343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x728eb9...eec6c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x734738...5be0ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x73504e...cb3620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x73c364...2d8fe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x747f99...5c4a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x74e20a...8661f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x758231...355d33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7800bd...9cb8db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79afa5...8d852c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a7a3f...781ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7cd5bc...3d0981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7d8f20...52add3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e48f3...899bd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7eb8d4...be4cad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f2571...f950ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x817eb4...a39b74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81ab34...17075d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81ca6c...2e4775` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81d34d...024044` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82aee0...3fd8fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x83108a...817198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84a0bc...578ee1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8693f9...e39ae0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86b174...6abf0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x872b6f...ad7049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a532c...6ae4fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b4aca...548a87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b5da2...a68d2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8bd32c...1a0578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8cd11c...14b108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8dd7b1...d3c36b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x915ef9...ea90ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x91d11e...6b93cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x925afa...5dd965` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x934bcc...9e9bb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x994b05...68d57e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-397889 | `0x9aed3a...629a30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ca742...076799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e999f...a3d25d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f46a7...bff18d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa08782...259b08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa08fbd...0014a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa14c57...f05701` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa1a2ed...aafb50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa254ee...669e29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa27116...8d9f7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2e70f...4d02e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-397893 | `0xa43305...a75127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa4b686...aeed7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa805ed...38291f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa8452e...161d5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa8887f...7a4ae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9fecf...3554f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaacf22...cd9198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xac5cf6...10a81b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xac9244...d2eddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xadae7a...5fe4c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb130a4...5d723f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb14ec1...3a3962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb38a05...47ed80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb42a4e...b2adf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4402c...0aa957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb59b84...8d22f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6d5e7...efda36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6f776...485354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba3d62...7d215c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba91ff...a89b13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbae04c...e5f499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb1566...9be193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd9044...135166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc036ba...fb09ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc05a4d...1d5cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc21a8d...d260ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2c1e8...1d86ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3938e...b4331f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3f15d...d0848f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc410c1...eab62b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc44843...080c04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5e220...2cad88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc930e2...af7db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb256b...ac1711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcbc141...025903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc8704...757361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xccb878...148024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcd1844...4a8a28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce66ab...978bb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf4a40...ead07b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0db92...751b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0e03d...503fe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd12087...a7d815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd208b6...ff426f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd23944...dcbf17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd2635b...eda899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd68173...de8898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd6961d...275c59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd7d585...ae993a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd7efa0...f75db7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-397910 | `0xd84a36...81d6bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9b75e...f23f70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda442c...091bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda4b53...4c3438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc1d17...277a4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd3c56...8548e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde1272...91f2da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdeefc0...0a5d0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1eb61...fc733c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2e464...fbee02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe39db5...ae5ac9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-397912 | `0xe47fec...8ca205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe56758...b33647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6f03c...75d4bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe74f29...23efd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe96507...87abb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xec3d40...99214a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeccc83...731fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xed8ca3...032694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xefda56...56c8da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeff23b...bf3062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0b4d1...76bd5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0cfe8...3ccffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf1eeb7...63b875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf357ec...dc0182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf3f577...1e3629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf5242e...afde4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf52ddc...0e275e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf702c1...04ee61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf75566...9a2253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa09f1...b8dac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb59c2...980eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfba7cd...932c5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc190d...e15a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd7ed9...4d7ccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe019f...17a5c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00c47d...264165` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397921 | `0x0176a4...0d6586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0208d7...bf0563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x044c08...3534e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x06d435...d467c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0add2a...acede9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c4d6a...f09a0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x110155...a70192` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397924 | `0x113d31...b71a73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1331a0...dbdef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x160020...2062ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397928 | `0x1df300...3b8f88` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397929 | `0x1e6bb5...e31e33` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397930 | `0x1f79f8...2df448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x218864...12c538` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22d2ad...bde99c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397931 | `0x24408d...aa3eda` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397932 | `0x25a4d4...ae7d4e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397933 | `0x26c37d...6f790f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2711cc...066fa1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397936 | `0x2cc993...ae2376` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397937 | `0x2eea9a...023576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f22c3...254d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f97e4...6a5147` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ff261...c303d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3645dd...22baf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x371a35...e6c347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b3e4b...c88524` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397944 | `0x3c5379...79f890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cda15...2428ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d06b3...026661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3e2af6...f4a205` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397945 | `0x3f93ec...051365` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ff0a5...6987ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397946 | `0x40c90c...632219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x43054b...1ac44b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44d92d...57001e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x47037d...e19e71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x479dbc...0a7e45` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397947 | `0x48419c...107f85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x49d26a...d3614a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a4f63...f98a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ab421...af63b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c1987...1b634f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4df8d3...cd0cfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ea3b7...b1262f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f16a1...cea69d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f4abc...d27b95` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397949 | `0x505ac7...3efa3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x518f6a...e79066` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397950 | `0x51af49...18dae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x523ca9...9edc2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x53b42b...d54acf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x542fd4...9df49d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397952 | `0x568946...00fafc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397953 | `0x58c73f...d6b3e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397954 | `0x5aa6a4...af7854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5db04b...39b4b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5fca0c...3885b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x615571...2ff09d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x636230...82f4f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x68ece3...737267` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x68f1ec...cf9700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6ba5b4...a23f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6cb1bc...70f169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6dbef5...17b4b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6de98d...6ae82d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397957 | `0x6eeb59...b6a65a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6f7e84...6814e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397958 | `0x7081a3...887d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x71a862...d3a375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x734738...5be0ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x73c364...2d8fe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7400b6...78723d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x758231...355d33` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397960 | `0x758640...6307b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x764f5d...682744` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76e177...df5d05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x778098...437b8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7b2e29...ba08dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7bcb0c...9855c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7de3fc...bca340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e8949...627254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8116b1...96ae34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x845952...5b1d89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x84b76e...2b7e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x860746...c417dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86b174...6abf0a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397964 | `0x872b6f...ad7049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8840e2...3cbf04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x891aae...5e8b5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x927f8c...8d4234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x928e11...6a9487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x930fa1...c0f9c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x932178...3dc99d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397967 | `0x938021...3e0dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x947e89...cd0499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x95414f...1f4417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a6d88...74d4db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397968 | `0x9aca55...bf8000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b4196...108237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e999f...a3d25d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397969 | `0xa02e9f...00a996` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa2101f...027001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa71f67...a158d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa94034...cdbfd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaaa945...bdf74b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab014a...9d5cf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab7c09...ee65c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xabea7e...11431c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397974 | `0xac9244...d2eddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xacdf57...11dcf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb07683...07e927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb0e923...3b5007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb19093...ab1e73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397976 | `0xb2280f...81a073` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397977 | `0xb29de0...ad747b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb4e0bc...82caa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5b3c7...ab2f2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb9ff58...bdf8d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba91ff...a89b13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb6b08...4f2695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbdeea8...f580a4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397980 | `0xbf401e...b57c22` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397981 | `0xc004e2...75c639` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397982 | `0xc05a4d...1d5cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc13843...173d19` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397984 | `0xc22fbb...cea2f9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397985 | `0xc2d59f...79c2c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc44843...080c04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc4abb9...393cca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc57b3e...f745b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397988 | `0xc7498b...2c0dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbc141...025903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbe2ae...f79cee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc96ba...681ee9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397991 | `0xcdc155...f20578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf4a40...ead07b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd14a99...caa99e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd18d33...82d89a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd293d5...126650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6961d...275c59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7efa0...f75db7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397993 | `0xda4b53...4c3438` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397994 | `0xdd7f14...bd79cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397995 | `0xde162c...668a93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde87b5...ea92e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdecc54...a8cf4b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397996 | `0xdf37f7...669b7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe3222b...f508c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397997 | `0xe47fec...8ca205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe56758...b33647` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397998 | `0xec0417...f13bb8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397999 | `0xec0541...cb2b90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-398000 | `0xeccc83...731fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xee4338...1c44ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xee5134...a66749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeed179...ca7790` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf13879...b465a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf2be87...15e94e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf357ec...dc0182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf5d215...83a2d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf5d656...fa2ad1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-398001 | `0xf60d27...46115d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf702c1...04ee61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf8ad4e...6ac63a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf8ee71...ba81a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfba7cd...932c5c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-398003 | `0xfc659f...984b08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd7ed9...4d7ccb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-398107 | `0x376d56...5b482c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-398109 | `0x39d361...fb0877` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-398129 | `0xe47fec...8ca205` | ❓ Unverified |
| VoidStrategy_ETH | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397833 | `0x5dab25...a00feb` | ❓ Unverified |
| VoidStrategy_USDC | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397847 | `0xd5e4d9...e270ba` | ❓ Unverified |
| VoidStrategy_ZK | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397830 | `0x26fb0d...c1b6e9` | ❓ Unverified |
| WithdrawManager_ETH | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397837 | `0x674db8...3abc23` | ❓ Unverified |
| WithdrawManager_USDC | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397852 | `0xf66e17...5c37ff` | ❓ Unverified |
| WithdrawManager_USDC.e | unknown | project_anchor | own_supporting | 0 | berachain | unit-398137 | `0x87bca2...0deb5c` | ❓ Unverified |
| WithdrawManager_ZK | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397850 | `0xf383ae...72386a` | ❓ Unverified |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | monad | unit-397765 | `0xaf558f...cd9239` | ❓ Unverified |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397832 | `0x35a62c...9721b5` | ❓ Unverified |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-398179 | `0xaf558f...cd9239` | ❓ Unverified |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397975 | `0xaf558f...cd9239` | ❓ Unverified |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | berachain | unit-398138 | `0xaf558f...cd9239` | ❓ Unverified |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | monad | unit-397766 | `0xc45b55...1da54d` | ❓ Unverified |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397826 | `0x01b50b...5f3de9` | ❓ Unverified |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-398180 | `0xc45b55...1da54d` | ❓ Unverified |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397986 | `0xc45b55...1da54d` | ❓ Unverified |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | berachain | unit-398139 | `0xc45b55...1da54d` | ❓ Unverified |
| WooOFT | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397851 | `0xf38583...00aaaf` | ❓ Unverified |
| WooPPV2 | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397849 | `0xe656d7...13d975` | ❓ Unverified |
| WooracleV2.1 | unknown | project_anchor | own_supporting | 0 | monad | unit-397760 | `0x2a3755...bfa5a6` | ❓ Unverified |
| WooracleV2.1 | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397842 | `0xae45cb...4ea80a` | ❓ Unverified |
| WooracleV2.1 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-398175 | `0x2a3755...bfa5a6` | ❓ Unverified |
| WooracleV2.1 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397934 | `0x2a3755...bfa5a6` | ❓ Unverified |
| WooracleV2.1 | unknown | project_anchor | own_supporting | 0 | berachain | unit-398132 | `0x2a3755...bfa5a6` | ❓ Unverified |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397836 | `0x66c946...966014` | ❓ Unverified |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397961 | `0x761661...1a6500` | ❓ Unverified |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | monad | unit-397761 | `0x4c4af8...2e6fb7` | ❓ Unverified |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397827 | `0x09873b...a75369` | ❓ Unverified |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-398176 | `0x4c4af8...2e6fb7` | ❓ Unverified |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397948 | `0x4c4af8...2e6fb7` | ❓ Unverified |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | berachain | unit-398133 | `0x4c4af8...2e6fb7` | ❓ Unverified |

## Audit Inventory

| Audit | Auditor | Audit Type | Date | Freshness | Inheritance | Scope Format | Scope Result | Own Matches | Proxy Refs | Excluded/Context | Unresolved | Extraction Confidence |
|---|---|---|---|---|---|---|---|---:|---:|---:|---:|---|
| [audits.sherlock.xyz/dashboard/85617a9a7bf6d34c43b0be845160efa2/fix_review_hashes](https://audits.sherlock.xyz/dashboard/85617a9a7bf6d34c43b0be845160efa2/fix_review_hashes) | Sherlock | Contest | 2024-09 | aging | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [audits.sherlock.xyz/contests/277](https://audits.sherlock.xyz/contests/277) | Sherlock | Contest | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [skynet.certik.com/projects/woofiswap](https://skynet.certik.com/projects/woofiswap) | CertiK | Audit | 2025-05 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [hackmd.io/@verilog/woofi-swap](https://hackmd.io/@verilog/woofi-swap) | Verilog | Audit | 2021-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 3 | high |
| [WOOFI Stake - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/WOOFI%20Stake%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-08 | aging | Direct | contract_name | matched | 5 | 0 | 0 | 6 | high |
| [WOOFi Swap - Zellic Audit Report.pdf](https://github.com/Zellic/publications/blob/master/WOOFi%20Swap%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [immunefi.com/bug-bounty/woofi/information](https://immunefi.com/bug-bounty/woofi/information) | Immunefi | Bug Bounty | Ongoing | n/a | Direct | n/a | n/a | n/a | n/a | n/a | n/a | n/a |
| [publications (GitHub directory)](https://github.com/Zellic/publications) | Zellic | Audit | n/a | unknown | Direct | n/a | no match | 0 | 0 | 0 | 0 | low |
| [PeckShield-Audit-Report-WooFiEarn-v1.0.pdf](https://github.com/peckshield/publications/blob/master/audit_reports/PeckShield-Audit-Report-WooFiEarn-v1.0.pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [woofi-swap-on-solana-audit-report-1729681693.pdf](https://2563590922-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqxL8pa5qcyp6gpHL7o0j%2Fuploads%2FAZsMj3WGxRh3iPgW8j9c%2Fwoofi-swap-on-solana-audit-report-1729681693.pdf) | Sherlock | Contest | 2024-10 | aging | Direct | contract_name | no match | 0 | 0 | 0 | 11 | high |
| [WOOFI Stake - Zellic Audit Report.pdf](https://2563590922-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqxL8pa5qcyp6gpHL7o0j%2Fuploads%2FovDjWesvfZxK75yIGIXO%2FWOOFI%20Stake%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-08 | aging | Direct | contract_name | matched | 5 | 0 | 0 | 6 | high |
| [WOOFi Swap - Zellic Audit Report.pdf](https://2563590922-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqxL8pa5qcyp6gpHL7o0j%2Fuploads%2F2WY9iiASaJNI7VCEouwd%2FWOOFi%20Swap%20-%20Zellic%20Audit%20Report.pdf) | Zellic | Audit | 2024-04 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [WOOFI_Swap_Audit_Report.pdf](https://2563590922-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqxL8pa5qcyp6gpHL7o0j%2Fuploads%2F2tPeeEzdPrMMRklWtqcF%2FWOOFI_Swap_Audit_Report.pdf) | Sherlock | Contest | 2024-05 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [REP-Woofi--Addendum__final-20230508T165040Z (1).pdf](https://2563590922-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqxL8pa5qcyp6gpHL7o0j%2Fuploads%2FHZYjX4CjgBt2o7pTgmoP%2FREP-Woofi--Addendum__final-20230508T165040Z%20(1).pdf) | Certik | Audit | 2023-05 | stale | Direct | contract_name | matched | 2 | 0 | 0 | 1 | high |
| [REP-WOOFi--__final-20221012T162347Z (1).pdf](https://2563590922-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqxL8pa5qcyp6gpHL7o0j%2Fuploads%2FBJ8zsFHgLSsIr2N7FJuC%2FREP-WOOFi--__final-20221012T162347Z%20(1).pdf) | Certik | Audit | 2022-10 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [REP-WOOFi__final-20220705T091805Z (1).pdf](https://2563590922-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqxL8pa5qcyp6gpHL7o0j%2Fuploads%2FJW5NfRCJ0is2hjt2EKmi%2FREP-WOOFi__final-20220705T091805Z%20(1).pdf) | Certik | Audit | 2022-07 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [PeckShield-Audit-Report-WooFiEarn-v1.0 (1).pdf](https://2563590922-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqxL8pa5qcyp6gpHL7o0j%2Fuploads%2F7r5sv6ISaQhp9790oHKR%2FPeckShield-Audit-Report-WooFiEarn-v1.0%20(1).pdf) | PeckShield | Audit | 2022-08 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 2 | high |
| [REP-WOOFi-2022-02-07 (1).pdf](https://2563590922-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqxL8pa5qcyp6gpHL7o0j%2Fuploads%2FzZmd4IDV1epPPAU7Pik1%2FREP-WOOFi-2022-02-07%20(1).pdf) | Certik | Audit | 2022-02 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 4 | high |
| [REP-WOOFi-2021-12-16 (1).pdf](https://2563590922-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqxL8pa5qcyp6gpHL7o0j%2Fuploads%2FioSo13FofoEtS4dyegXd%2FREP-WOOFi-2021-12-16%20(1).pdf) | Unknown | Audit | 2021-12 | stale | Direct | contract_name | no match | 0 | 0 | 0 | 3 | high |
| [REP-WOOFi-Swap-2021-10-25 (1).pdf](https://2563590922-files.gitbook.io/~/files/v0/b/gitbook-x-prod.appspot.com/o/spaces%2FqxL8pa5qcyp6gpHL7o0j%2Fuploads%2FvV3a4dSefHPbcV9M4Rbw%2FREP-WOOFi-Swap-2021-10-25%20(1).pdf) | Unknown | Audit | 2021-10 | stale | Direct | contract_name | matched | 1 | 0 | 0 | 2 | high |

### Scope Outcome Records

These are completed scope-analysis outcomes, not missing matcher runs. Explicit-zero results retain their unresolved/context references below.

- [3828] audits.sherlock.xyz/dashboard/85617a9a7bf6d34c43b0be845160efa2/fix_review_hashes — no match: The provided text is a contest overview page, not a full audit report. No contracts or scope section are present.
- [3830] audits.sherlock.xyz/contests/277 — no match: The provided text is a header snippet from a contest page, not a full audit report. No contract names, file paths, or audit date are identifiable.
- [3831] skynet.certik.com/projects/woofiswap — no match: Extracted from 'Audited Files/SHA256' section listing WooPPV2.sol and WooracleV2.sol. Audit date from 'Last Audit was delivered on 5/12/2025'.
- [3832] hackmd.io/@verilog/woofi-swap — matched: Four main contracts identified from architecture section; audit date from cover page.
- [3833] WOOFI Stake - Zellic Audit Report.pdf — matched: All contracts listed in the scope table on page 9. Audit date from cover page and header.
- [3834] WOOFi Swap - Zellic Audit Report.pdf — no match: Scope section lists four contracts: WooPPV2, WooRouterV2, WooCrossChainRouterV4, WooracleV2_2. Audit date is April 16, 2024 from cover page.
- [15002] immunefi.com/bug-bounty/woofi/information — no match: The document is a bug bounty program page, not an audit report. It does not list specific contracts in scope; only general categories like 'Smart Contract' are mentioned. No contract names or file paths are provided.
- [15004] publications (GitHub directory) — no match: The provided text is a GitHub repository listing of audit report PDFs, not the actual audit report content. No contract names or audit date could be extracted.
- [15010] PeckShield-Audit-Report-WooFiEarn-v1.0.pdf — no match: Scope explicitly states only WooLendingManager.sol and WooSuperChargerVault.sol are covered. Audit date from cover page and version history.
- [28449] woofi-swap-on-solana-audit-report-1729681693.pdf — no match: Extracted contract names from findings and code snippets. Audit date from 'Prepared on:October 23, 2024'.
- [28450] WOOFI Stake - Zellic Audit Report.pdf — matched: All contracts listed in scope table on page 9 and threat model sections 5.1-5.11. Audit date from cover page and header.
- [28451] WOOFi Swap - Zellic Audit Report.pdf — no match: Scope section lists four contracts: WooPPV2, WooRouterV2, WooCrossChainRouterV4, WooracleV2_2. Audit date is April 16, 2024 from cover page.
- [28452] WOOFI_Swap_Audit_Report.pdf — no match: Scope section mentions repository and branch; contracts explicitly referenced in findings are WooPPV2, WooracleV2_2, WooCrossChainRouterV4, and WooRouterV2.
- [28453] REP-Woofi--Addendum__final-20230508T165040Z (1).pdf — matched: Three contracts explicitly listed in the Audit Scope table: MpRewarder, RewardBooster, SimpleRewarder. Audit date from cover page: 'CertiK Verified on May 8th, 2023'.
- [28454] REP-WOOFi--__final-20221012T162347Z (1).pdf — no match: Two contracts explicitly listed in Audit Scope section with SHA256 checksums.
- [28455] REP-WOOFi__final-20220705T091805Z (1).pdf — no match: Three contracts explicitly listed in Audit Scope table. Date from 'Delivery Date Jul 05, 2022 UTC'.
- [28456] PeckShield-Audit-Report-WooFiEarn-v1.0 (1).pdf — no match: Scope explicitly states only WooLendingManager.sol and WooSuperChargerVault.sol are audited. Audit date is August 20, 2022 from cover page.
- [28457] REP-WOOFi-2022-02-07 (1).pdf — no match: Audit scope table lists four Solidity files: BaseStrategy.sol, StrategyCake.sol, StrategyLP.sol, Vault.sol. Delivery date is Feb 07, 2022.
- [28458] REP-WOOFi-2021-12-16 (1).pdf — no match: Three contracts explicitly listed in Audit Scope table: WooRebateManager, WooStakingVault, WooVaultManager. Audit date from Delivery Date: Dec 16, 2021.
- [28459] REP-WOOFi-Swap-2021-10-25 (1).pdf — matched: Three contracts in scope: RewardManager, WooPP (WooPP_newmath.sol), WooRouter. Audit date from delivery date.

### Extracted Scope Disposition

Only unambiguous, explicitly eligible project-anchor matches count as coverage. All other address-book references remain visible below.

| Audit | Extracted Reference | Disposition | Candidate(s) | Reason | Counted |
|---|---|---|---|---|---|
| skynet.certik.com/projects/woofiswap | WooPPV2 | ambiguous — not counted | WooPPV2 (alternative) `0xe656d7...13d975` — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (code_present_context)<br>WooPPv2 (alternative) `0x552038...f69fa4` — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| skynet.certik.com/projects/woofiswap | WooracleV2 | unmatched — not counted | — | Audited Files/SHA256 listing | no |
| hackmd.io/@verilog/woofi-swap | Wooracle | unmatched — not counted | — | listed in architecture section | no |
| hackmd.io/@verilog/woofi-swap | WooPP | unmatched — not counted | — | listed in architecture section | no |
| hackmd.io/@verilog/woofi-swap | WooRouter | own contract | WooRouter (selected) `0x4c4af8...2e6fb7` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hackmd.io/@verilog/woofi-swap | WooGuardian | unmatched — not counted | — | listed in architecture section | no |
| WOOFI Stake - Zellic Audit Report.pdf | VaultV2 | unmatched — not counted | — | listed in scope table | no |
| WOOFI Stake - Zellic Audit Report.pdf | WooLendingManager | ambiguous — not counted | WooLendingManager (alternative) `0xc8ec7f...dd9dc7` — deployed 2023-01-09 13:49:29+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0xfeeced...3ac2d6` — deployed 2023-11-08 11:11:51+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x5c7ff2...bb7bc5` — deployed 2022-11-08 09:43:55+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x385e06...b10f73` — deployed 2023-01-09 13:43:51+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x79a545...3be767` — deployed 2024-04-03 11:45:17+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x6fc2c9...8f3f08` — deployed 2023-03-23 10:41:38+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x01e42c...63f139` — deployed 2023-01-09 13:41:44+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x9f46a7...bff18d` — deployed 2023-01-09 13:31:48+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x697c97...6ffccd` — deployed 2023-01-09 13:53:21+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x697c97...6ffccd` — deployed 2024-04-22 13:09:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFI Stake - Zellic Audit Report.pdf | WooSuperChargerVaultV2 | own contract | WooSuperChargerVaultV2 (alternative) `0xa78043...52f7d8` — deployed 2024-04-03 11:45:09+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x866810...c60625` — deployed 2023-01-06 08:48:20+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x11b29a...da836a` — deployed 2023-01-06 08:58:16+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x5cb9ba...fb3158` — deployed 2023-04-04 09:37:42+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0xedbb74...1799ac` — deployed 2023-01-04 14:08:25+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x44df09...746cb8` — deployed 2024-04-25 10:23:21+03 — liveness: live (current_address_book_code)<br>WooSuperChargerVaultV2 (alternative) `0x7f3f2a...295bb1` — deployed 2023-03-23 10:41:19+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0xd2fdab...5b56b1` — deployed 2023-11-08 11:11:41+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x1cd7b3...02e6c4` — deployed 2023-01-06 09:08:57+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0xb77212...e8cb43` — deployed 2024-04-25 10:17:11+03 — liveness: live (current_address_book_code)<br>WooSuperChargerVaultV2 (alternative) `0x7eb8d4...be4cad` — deployed 2023-01-05 10:31:26+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x1109e0...3cf549` — deployed 2024-04-22 13:09:10+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (selected) `0x8c6030...5736e7` — deployed 2024-09-23 10:02:51+03 — liveness: live (current_address_book_code)<br>WooSuperChargerVaultV2 (alternative) `0x9dd5dd...9b0699` — deployed 2023-01-04 12:28:02+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-09-23 was 38d from audit; next candidate 113d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WOOFI Stake - Zellic Audit Report.pdf | WooWithdrawManagerV2 | ambiguous — not counted | WooWithdrawManagerV2 (alternative) `0x3fe2c8...48b3b9` — deployed 2024-04-22 13:09:34+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0x1bb2eb...9602c9` — deployed 2023-01-06 08:58:45+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0x382a9b...150efb` — deployed 2023-01-04 12:34:00+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0xbfe3d2...9f09ac` — deployed 2023-03-23 10:42:02+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0xd05b95...5d03ac` — deployed 2023-11-08 11:12:00+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0xe76c97...53d3fe` — deployed 2024-04-03 11:45:24+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0x7f7821...87fd4c` — deployed 2023-01-04 14:09:05+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0x755e4a...1b56f6` — deployed 2023-01-06 08:48:50+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0xa429b4...a59664` — deployed 2023-01-06 09:09:32+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFI Stake - Zellic Audit Report.pdf | StrategyAave | unmatched — not counted | — | listed in scope table | no |
| WOOFI Stake - Zellic Audit Report.pdf | BaseStrategy | unmatched — not counted | — | listed in scope table | no |
| WOOFI Stake - Zellic Audit Report.pdf | WooStakingLocal | own contract | WooStakingLocal (selected) `0x2cfa72...b7d8e2` — deployed 2023-05-20 03:44:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WOOFI Stake - Zellic Audit Report.pdf | WooStakingController | own contract | WooStakingController (selected) `0x93e63f...ad5a04` — deployed 2023-05-20 03:44:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WOOFI Stake - Zellic Audit Report.pdf | WooStakingProxy | ambiguous — not counted | WOOStakingProxy (alternative) `0xba91ff...a89b13` — liveness: live (current_address_book_code)<br>WooStakingProxy (alternative) `0xba91ff...a89b13` — deployed 2023-05-11 17:13:28+03 — liveness: live (current_address_book_code)<br>WooStakingProxy (alternative) `0xba91ff...a89b13` — deployed 2023-05-11 17:26:00+03 — liveness: live (current_address_book_code)<br>WooStakingProxy (alternative) `0x3bd968...1386e3` — deployed 2023-05-11 17:11:43+03 — liveness: live (current_address_book_code)<br>WooStakingProxy (alternative) `0xba91ff...a89b13` — deployed 2023-05-15 08:00:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFI Stake - Zellic Audit Report.pdf | WooStakingManager | own contract | WooStakingManager (selected) `0xa9e245...2924fb` — deployed 2023-05-20 03:43:45+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WOOFI Stake - Zellic Audit Report.pdf | WooStakingCompounder | own contract | WooStakingCompounder (selected) `0x63a015...4ea1e3` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WOOFi Swap - Zellic Audit Report.pdf | WooPPV2 | ambiguous — not counted | WooPPV2 (alternative) `0xe656d7...13d975` — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (code_present_context)<br>WooPPv2 (alternative) `0x552038...f69fa4` — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFi Swap - Zellic Audit Report.pdf | WooRouterV2 | ambiguous — not counted | WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x09873b...a75369` — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFi Swap - Zellic Audit Report.pdf | WooCrossChainRouterV4 | unmatched — not counted | — | listed in scope table | no |
| WOOFi Swap - Zellic Audit Report.pdf | WooracleV2_2 | ambiguous — not counted | WooracleV2_2 (alternative) `0x2a8ede...1a8428` — deployed 2024-04-22 11:04:17+03 — liveness: live (current_address_book_code)<br>WooracleV2_2 (alternative) `0xcf4ea1...8934ec` — deployed 2024-04-10 19:50:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-WooFiEarn-v1.0.pdf | WooLendingManager | ambiguous — not counted | WooLendingManager (alternative) `0xc8ec7f...dd9dc7` — deployed 2023-01-09 13:49:29+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0xfeeced...3ac2d6` — deployed 2023-11-08 11:11:51+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x5c7ff2...bb7bc5` — deployed 2022-11-08 09:43:55+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x385e06...b10f73` — deployed 2023-01-09 13:43:51+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x79a545...3be767` — deployed 2024-04-03 11:45:17+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x6fc2c9...8f3f08` — deployed 2023-03-23 10:41:38+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x01e42c...63f139` — deployed 2023-01-09 13:41:44+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x9f46a7...bff18d` — deployed 2023-01-09 13:31:48+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x697c97...6ffccd` — deployed 2023-01-09 13:53:21+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x697c97...6ffccd` — deployed 2024-04-22 13:09:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-WooFiEarn-v1.0.pdf | WooSuperChargerVault | ambiguous — not counted | WooSuperChargerVault (alternative) `0xba452b...1c2d08` — deployed 2022-11-08 09:43:40+03 — liveness: live (code_present_context)<br>WooSuperChargerVault (alternative) `0x5a6b07...8cad62` — deployed 2022-11-08 09:48:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| woofi-swap-on-solana-audit-report-1729681693.pdf | RebateManager | unmatched — not counted | — | mentioned in H-1 root cause and mitigation | no |
| woofi-swap-on-solana-audit-report-1729681693.pdf | RebateInfo | unmatched — not counted | — | mentioned in H-1 root cause and mitigation | no |
| woofi-swap-on-solana-audit-report-1729681693.pdf | WooConfig | unmatched — not counted | — | mentioned in M-2 code snippet | no |
| woofi-swap-on-solana-audit-report-1729681693.pdf | Wooracle | unmatched — not counted | — | mentioned in M-2 code snippet | no |
| woofi-swap-on-solana-audit-report-1729681693.pdf | WooPool | unmatched — not counted | — | mentioned in M-2 code snippet | no |
| woofi-swap-on-solana-audit-report-1729681693.pdf | CreateRebateManager | unmatched — not counted | — | mentioned in H-1 mitigation | no |
| woofi-swap-on-solana-audit-report-1729681693.pdf | CreateRebateInfo | unmatched — not counted | — | mentioned in M-1 root cause | no |
| woofi-swap-on-solana-audit-report-1729681693.pdf | CreateWooracle | unmatched — not counted | — | mentioned in M-2 vulnerability detail | no |
| woofi-swap-on-solana-audit-report-1729681693.pdf | CreatePool | unmatched — not counted | — | mentioned in M-2 vulnerability detail | no |
| woofi-swap-on-solana-audit-report-1729681693.pdf | ClaimRebateFee | unmatched — not counted | — | mentioned in M-1 root cause | no |
| woofi-swap-on-solana-audit-report-1729681693.pdf | Swap | unmatched — not counted | — | mentioned in H-2 and M-3 root cause | no |
| WOOFI Stake - Zellic Audit Report.pdf | BaseStrategy | unmatched — not counted | — | listed in scope table and threat model section 5.1 | no |
| WOOFI Stake - Zellic Audit Report.pdf | StrategyAave | unmatched — not counted | — | listed in scope table and threat model section 5.2 | no |
| WOOFI Stake - Zellic Audit Report.pdf | VaultV2 | unmatched — not counted | — | listed in scope table and threat model section 5.3 | no |
| WOOFI Stake - Zellic Audit Report.pdf | WooLendingManager | ambiguous — not counted | WooLendingManager (alternative) `0xc8ec7f...dd9dc7` — deployed 2023-01-09 13:49:29+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0xfeeced...3ac2d6` — deployed 2023-11-08 11:11:51+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x5c7ff2...bb7bc5` — deployed 2022-11-08 09:43:55+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x385e06...b10f73` — deployed 2023-01-09 13:43:51+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x79a545...3be767` — deployed 2024-04-03 11:45:17+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x6fc2c9...8f3f08` — deployed 2023-03-23 10:41:38+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x01e42c...63f139` — deployed 2023-01-09 13:41:44+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x9f46a7...bff18d` — deployed 2023-01-09 13:31:48+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x697c97...6ffccd` — deployed 2023-01-09 13:53:21+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x697c97...6ffccd` — deployed 2024-04-22 13:09:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFI Stake - Zellic Audit Report.pdf | WooStakingCompounder | own contract | WooStakingCompounder (selected) `0x63a015...4ea1e3` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WOOFI Stake - Zellic Audit Report.pdf | WooStakingController | own contract | WooStakingController (selected) `0x93e63f...ad5a04` — deployed 2023-05-20 03:44:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WOOFI Stake - Zellic Audit Report.pdf | WooStakingLocal | own contract | WooStakingLocal (selected) `0x2cfa72...b7d8e2` — deployed 2023-05-20 03:44:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WOOFI Stake - Zellic Audit Report.pdf | WooStakingManager | own contract | WooStakingManager (selected) `0xa9e245...2924fb` — deployed 2023-05-20 03:43:45+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WOOFI Stake - Zellic Audit Report.pdf | WooStakingProxy | ambiguous — not counted | WOOStakingProxy (alternative) `0xba91ff...a89b13` — liveness: live (current_address_book_code)<br>WooStakingProxy (alternative) `0xba91ff...a89b13` — deployed 2023-05-11 17:13:28+03 — liveness: live (current_address_book_code)<br>WooStakingProxy (alternative) `0xba91ff...a89b13` — deployed 2023-05-11 17:26:00+03 — liveness: live (current_address_book_code)<br>WooStakingProxy (alternative) `0x3bd968...1386e3` — deployed 2023-05-11 17:11:43+03 — liveness: live (current_address_book_code)<br>WooStakingProxy (alternative) `0xba91ff...a89b13` — deployed 2023-05-15 08:00:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFI Stake - Zellic Audit Report.pdf | WooSuperChargerVaultV2 | own contract | WooSuperChargerVaultV2 (alternative) `0xa78043...52f7d8` — deployed 2024-04-03 11:45:09+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x866810...c60625` — deployed 2023-01-06 08:48:20+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x11b29a...da836a` — deployed 2023-01-06 08:58:16+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x5cb9ba...fb3158` — deployed 2023-04-04 09:37:42+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0xedbb74...1799ac` — deployed 2023-01-04 14:08:25+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x44df09...746cb8` — deployed 2024-04-25 10:23:21+03 — liveness: live (current_address_book_code)<br>WooSuperChargerVaultV2 (alternative) `0x7f3f2a...295bb1` — deployed 2023-03-23 10:41:19+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0xd2fdab...5b56b1` — deployed 2023-11-08 11:11:41+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x1cd7b3...02e6c4` — deployed 2023-01-06 09:08:57+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0xb77212...e8cb43` — deployed 2024-04-25 10:17:11+03 — liveness: live (current_address_book_code)<br>WooSuperChargerVaultV2 (alternative) `0x7eb8d4...be4cad` — deployed 2023-01-05 10:31:26+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x1109e0...3cf549` — deployed 2024-04-22 13:09:10+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (selected) `0x8c6030...5736e7` — deployed 2024-09-23 10:02:51+03 — liveness: live (current_address_book_code)<br>WooSuperChargerVaultV2 (alternative) `0x9dd5dd...9b0699` — deployed 2023-01-04 12:28:02+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-09-23 was 38d from audit; next candidate 113d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WOOFI Stake - Zellic Audit Report.pdf | WooWithdrawManagerV2 | ambiguous — not counted | WooWithdrawManagerV2 (alternative) `0x3fe2c8...48b3b9` — deployed 2024-04-22 13:09:34+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0x1bb2eb...9602c9` — deployed 2023-01-06 08:58:45+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0x382a9b...150efb` — deployed 2023-01-04 12:34:00+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0xbfe3d2...9f09ac` — deployed 2023-03-23 10:42:02+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0xd05b95...5d03ac` — deployed 2023-11-08 11:12:00+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0xe76c97...53d3fe` — deployed 2024-04-03 11:45:24+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0x7f7821...87fd4c` — deployed 2023-01-04 14:09:05+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0x755e4a...1b56f6` — deployed 2023-01-06 08:48:50+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0xa429b4...a59664` — deployed 2023-01-06 09:09:32+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFi Swap - Zellic Audit Report.pdf | WooPPV2 | ambiguous — not counted | WooPPV2 (alternative) `0xe656d7...13d975` — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (code_present_context)<br>WooPPv2 (alternative) `0x552038...f69fa4` — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFi Swap - Zellic Audit Report.pdf | WooRouterV2 | ambiguous — not counted | WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x09873b...a75369` — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFi Swap - Zellic Audit Report.pdf | WooCrossChainRouterV4 | unmatched — not counted | — | listed in scope table | no |
| WOOFi Swap - Zellic Audit Report.pdf | WooracleV2_2 | ambiguous — not counted | WooracleV2_2 (alternative) `0x2a8ede...1a8428` — deployed 2024-04-22 11:04:17+03 — liveness: live (current_address_book_code)<br>WooracleV2_2 (alternative) `0xcf4ea1...8934ec` — deployed 2024-04-10 19:50:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFI_Swap_Audit_Report.pdf | WooPPV2 | ambiguous — not counted | WooPPV2 (alternative) `0xe656d7...13d975` — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (code_present_context)<br>WooPPv2 (alternative) `0x552038...f69fa4` — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFI_Swap_Audit_Report.pdf | WooracleV2_2 | ambiguous — not counted | WooracleV2_2 (alternative) `0x2a8ede...1a8428` — deployed 2024-04-22 11:04:17+03 — liveness: live (current_address_book_code)<br>WooracleV2_2 (alternative) `0xcf4ea1...8934ec` — deployed 2024-04-10 19:50:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFI_Swap_Audit_Report.pdf | WooCrossChainRouterV4 | unmatched — not counted | — | Referenced in findings M-6, M-7, M-8. | no |
| WOOFI_Swap_Audit_Report.pdf | WooRouterV2 | ambiguous — not counted | WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x09873b...a75369` — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8...2e6fb7` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| REP-Woofi--Addendum__final-20230508T165040Z (1).pdf | MpRewarder | own contract | MpRewarder (selected) `0xa74bb3...a743d7` — deployed 2023-05-23 18:13:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| REP-Woofi--Addendum__final-20230508T165040Z (1).pdf | RewardBooster | own contract | RewardBooster (selected) `0xf26eb5...92747b` — deployed 2024-07-09 11:15:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| REP-Woofi--Addendum__final-20230508T165040Z (1).pdf | SimpleRewarder | unmatched — not counted | — | listed in scope table | no |
| REP-WOOFi--__final-20221012T162347Z (1).pdf | WooPPV2 | ambiguous — not counted | WooPPV2 (alternative) `0xe656d7...13d975` — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (code_present_context)<br>WooPPv2 (alternative) `0x552038...f69fa4` — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x552038...f69fa4` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| REP-WOOFi--__final-20221012T162347Z (1).pdf | WooracleV2 | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-WOOFi__final-20220705T091805Z (1).pdf | WooLendingManager | ambiguous — not counted | WooLendingManager (alternative) `0xc8ec7f...dd9dc7` — deployed 2023-01-09 13:49:29+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0xfeeced...3ac2d6` — deployed 2023-11-08 11:11:51+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x5c7ff2...bb7bc5` — deployed 2022-11-08 09:43:55+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x385e06...b10f73` — deployed 2023-01-09 13:43:51+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x79a545...3be767` — deployed 2024-04-03 11:45:17+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x6fc2c9...8f3f08` — deployed 2023-03-23 10:41:38+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x01e42c...63f139` — deployed 2023-01-09 13:41:44+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x9f46a7...bff18d` — deployed 2023-01-09 13:31:48+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x697c97...6ffccd` — deployed 2023-01-09 13:53:21+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x697c97...6ffccd` — deployed 2024-04-22 13:09:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| REP-WOOFi__final-20220705T091805Z (1).pdf | WooSuperChargerVault | ambiguous — not counted | WooSuperChargerVault (alternative) `0xba452b...1c2d08` — deployed 2022-11-08 09:43:40+03 — liveness: live (code_present_context)<br>WooSuperChargerVault (alternative) `0x5a6b07...8cad62` — deployed 2022-11-08 09:48:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| REP-WOOFi__final-20220705T091805Z (1).pdf | WooWithdrawManager | ambiguous — not counted | WooWithdrawManager (alternative) `0xe77adf...0ead6a` — deployed 2022-11-08 09:44:09+03 — liveness: live (code_present_context)<br>WooWithdrawManager (alternative) `0x7de3fc...bca340` — deployed 2022-11-08 09:48:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-WooFiEarn-v1.0 (1).pdf | WooLendingManager | ambiguous — not counted | WooLendingManager (alternative) `0xc8ec7f...dd9dc7` — deployed 2023-01-09 13:49:29+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0xfeeced...3ac2d6` — deployed 2023-11-08 11:11:51+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x5c7ff2...bb7bc5` — deployed 2022-11-08 09:43:55+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x385e06...b10f73` — deployed 2023-01-09 13:43:51+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x79a545...3be767` — deployed 2024-04-03 11:45:17+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x6fc2c9...8f3f08` — deployed 2023-03-23 10:41:38+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x01e42c...63f139` — deployed 2023-01-09 13:41:44+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x9f46a7...bff18d` — deployed 2023-01-09 13:31:48+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x697c97...6ffccd` — deployed 2023-01-09 13:53:21+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x697c97...6ffccd` — deployed 2024-04-22 13:09:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-WooFiEarn-v1.0 (1).pdf | WooSuperChargerVault | ambiguous — not counted | WooSuperChargerVault (alternative) `0xba452b...1c2d08` — deployed 2022-11-08 09:43:40+03 — liveness: live (code_present_context)<br>WooSuperChargerVault (alternative) `0x5a6b07...8cad62` — deployed 2022-11-08 09:48:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| REP-WOOFi-2022-02-07 (1).pdf | BaseStrategy | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-WOOFi-2022-02-07 (1).pdf | StrategyCake | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-WOOFi-2022-02-07 (1).pdf | StrategyLP | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-WOOFi-2022-02-07 (1).pdf | Vault | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-WOOFi-2021-12-16 (1).pdf | WooRebateManager | ambiguous — not counted | WooRebateManager (alternative) `0x761661...1a6500` — liveness: live (code_present_context)<br>WooRebateManager (alternative) `0x761661...1a6500` — liveness: live (current_address_book_code)<br>WooRebateManager (alternative) `0x761661...1a6500` — liveness: live (code_present_context)<br>WooRebateManager (alternative) `0x761661...1a6500` — liveness: live (current_address_book_code)<br>WooRebateManager (alternative) `0x761661...1a6500` — liveness: live (code_present_context)<br>WooRebateManager (alternative) `0x66c946...966014` — liveness: live (current_address_book_code)<br>WooRebateManager (alternative) `0x761661...1a6500` — liveness: live (code_present_context)<br>WooRebateManager (alternative) `0x761661...1a6500` — liveness: live (code_present_context)<br>WooRebateManager (alternative) `0x761661...1a6500` — liveness: live (current_address_book_code)<br>WooRebateManager (alternative) `0x761661...1a6500` — liveness: live (current_address_book_code)<br>WooRebateManager (alternative) `0x761661...1a6500` — liveness: live (code_present_context)<br>WooRebateManager (alternative) `0x761661...1a6500` — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| REP-WOOFi-2021-12-16 (1).pdf | WooStakingVault | ambiguous — not counted | WooStakingVault (alternative) `0xcd1b98...e09db0` — deployed 2022-03-03 10:32:03+03 — liveness: live (code_present_context)<br>WooStakingVault (alternative) `0x932178...3dc99d` — deployed 2022-10-17 11:07:10+03 — liveness: live (code_present_context)<br>WooStakingVault (alternative) `0x9bcf8b...9b405b` — deployed 2022-06-22 11:22:32+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| REP-WOOFi-2021-12-16 (1).pdf | WooVaultManager | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-WOOFi-Swap-2021-10-25 (1).pdf | RewardManager | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-WOOFi-Swap-2021-10-25 (1).pdf | WooPP | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-WOOFi-Swap-2021-10-25 (1).pdf | WooRouter | own contract | WooRouter (selected) `0x4c4af8...2e6fb7` — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x968d3b...416b22` | AirdropDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2ebca5...3ee90f` | NFTBoosterV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x927f8c...8d4234` | RewardCampaignManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd14a99...caa99e` | WooAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x01e42c...63f139` | WooLendingManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x697c97...6ffccd` | WooLendingManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x9f46a7...bff18d` | WooLendingManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5c7ff2...bb7bc5` | WooLendingManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6fc2c9...8f3f08` | WooLendingManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x79a545...3be767` | WooLendingManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xfeeced...3ac2d6` | WooLendingManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x385e06...b10f73` | WooLendingManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x697c97...6ffccd` | WooLendingManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xc8ec7f...dd9dc7` | WooLendingManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x2a8ede...1a8428` | WooracleV2_2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcf4ea1...8934ec` | WooracleV2_2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xba91ff...a89b13` | WooStakingProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xba91ff...a89b13` | WooStakingProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xba91ff...a89b13` | WooStakingProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x3bd968...1386e3` | WooStakingProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x9bcf8b...9b405b` | WooStakingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x932178...3dc99d` | WooStakingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xcd1b98...e09db0` | WooStakingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5a6b07...8cad62` | WooSuperChargerVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xba452b...1c2d08` | WooSuperChargerVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5cb9ba...fb3158` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x7eb8d4...be4cad` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x1109e0...3cf549` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x9dd5dd...9b0699` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xedbb74...1799ac` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x44df09...746cb8` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb77212...e8cb43` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7f3f2a...295bb1` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa78043...52f7d8` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd2fdab...5b56b1` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x11b29a...da836a` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x1cd7b3...02e6c4` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x866810...c60625` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7de3fc...bca340` | WooWithdrawManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe77adf...0ead6a` | WooWithdrawManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x382a9b...150efb` | WooWithdrawManagerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3fe2c8...48b3b9` | WooWithdrawManagerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7f7821...87fd4c` | WooWithdrawManagerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbfe3d2...9f09ac` | WooWithdrawManagerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd05b95...5d03ac` | WooWithdrawManagerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe76c97...53d3fe` | WooWithdrawManagerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x1bb2eb...9602c9` | WooWithdrawManagerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x755e4a...1b56f6` | WooWithdrawManagerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xa429b4...a59664` | WooWithdrawManagerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 77 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1099 |

## Scope Matching Notes

- Repo-reference audits: 0
- Not-audit entries: 0
- Audits with zero matched contracts: 14
- Inherited remapped matches: 0
- Address-book scope dispositions: 14 own (0 proxy reference(s)), 0 third-party/infra, 0 historical/testnet/deprecated, 0 unclassified context, 26 ambiguous, 33 unmatched
- Matched-own operational status: 14 live, 0 inactive, 0 uninitialized, 0 unknown/not assessed
- Extraction confidence breakdown: high=16, low=4
- Match method counts: temporal_name=2, unique_name=12

Zero-match audit list:

- [3828] audits.sherlock.xyz/dashboard/85617a9a7bf6d34c43b0be845160efa2/fix_review_hashes
- [3830] audits.sherlock.xyz/contests/277
- [3831] skynet.certik.com/projects/woofiswap
- [3834] WOOFi Swap - Zellic Audit Report.pdf
- [15004] publications (GitHub directory)
- [15010] PeckShield-Audit-Report-WooFiEarn-v1.0.pdf
- [28449] woofi-swap-on-solana-audit-report-1729681693.pdf
- [28451] WOOFi Swap - Zellic Audit Report.pdf
- [28452] WOOFI_Swap_Audit_Report.pdf
- [28454] REP-WOOFi--__final-20221012T162347Z (1).pdf
- [28455] REP-WOOFi__final-20220705T091805Z (1).pdf
- [28456] PeckShield-Audit-Report-WooFiEarn-v1.0 (1).pdf
- [28457] REP-WOOFi-2022-02-07 (1).pdf
- [28458] REP-WOOFi-2021-12-16 (1).pdf

Fork inheritance lineage and inherited audits are included when available.
