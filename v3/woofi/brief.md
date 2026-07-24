# Agentic Audit Brief: WOOFi

## Export Authority

- Production state: **published scope**
- Raw selected rows: 14 across 5 audit(s)
- Eligible audit results: 20 (5 matched; 15 no match)
- Activation: `scope-prod-20260715-v1`
- Match closure: `8e14ccbd1277ca469b97d9c62a441d5a9e6fdf26981a05698375b7e2b1bffaa6`
- Logic topography: `logic-topography-normalized-candidate-20260715-v1`
- Liveness: `operational-liveness-topology-full-reviewed-20260715-v2/operational_liveness/1`
- Export-input receipt: `f59b0c07e38ecec2d34eb2896e4262470519ed280e5a0a28b0f46fc69c79a374`

## Project Overview

- Project: WOOFi (`woofi`)
- Website: [https://woofi.com/](https://woofi.com/)
- Lifecycle: unknown
- Generated: 2026-07-24T14:10:00.000Z
- Pipeline run: brief-deployer-expansion-all-20260724-v1
- Chains: arbitrum, avalanche, base, berachain, bsc, ethereum, fantom, hyperliquid, linea, mantle, monad, optimism, polygon, polygon-zkevm, sonic, zksync-era
- Contract surface: 1712 unique implementations (1736 raw deployments)
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

- AAVEStrategy_AVAX (`0xbd904400a17eae621c4b799bab7217d155135166`, chain 43114)
- AaveStrategy_ETH (`0x95360a64447ca746b82abd1d0ed49f3e34f2e6e9`, chain 10)
- AAVEStrategy_ETH (`0xcd1b9810872aec66d450c761e93638fb9fe09db0`, chain 8453)
- AAVEStrategy_ETH (`0xbdb42aad4a2056e33cb365f923c175a1ed044b55`, chain 42161)
- AAVEStrategy_ETH (`0x9aa935113184b06109c62e8f55a76e8c8c0a963b`, chain 59144)
- AAVEStrategy_USDC (`0x78aa58e5d61b525eaba8243d42451027a40705de`, chain 137)
- AAVEStrategy_USDC (`0xbeae1b06949d033da628ba3e5af267c3e740494b`, chain 8453)
- AAVEStrategy_USDC (`0x679b6abd385b60db0efb99ad3ce6debdf832900c`, chain 42161)
- AAVEStrategy_USDC (`0x3aad22346b5721a7ddf504c19fe3349abc52ace5`, chain 43114)
- AAVEStrategy_USDC (`0x913e116cd0e279763b0419798c0ba18f9311b390`, chain 59144)
- AirdropDistributor (`0x968d3b4faa87864ab19cf2982510b60c2d416b22`, chain 42161)
- cmETH_LendingManager (`0x2cc9938584efa3bdf0fd19ddbb1828a672ae2376`, chain 5000)
- cmETH_SuperChargerVaultV2 (`0x872b6ff825da431c941d12630754036278ad7049`, chain 5000)
- cmETH_VoidStrategy (`0x46a7213343e68809d04cd1c88e7fd1dd606cd86a`, chain 5000)
- cmETH_WithdrawManagerV2 (`0xa14c57b073e6da6bcc23fc0e6934665118f05701`, chain 5000)
- cmETH_WOOFiVaultV2 (`0xb8db696e67553030f3b5c5ee6e297b7bbcd98f55`, chain 5000)
- CrossRouterv5 (`0xb84aefef2ddde628d5c7f1fba320de63e3f4757c`, chain 56)
- CrossswapRouterv5 (`0xb84aefef2ddde628d5c7f1fba320de63e3f4757c`, chain 5000)
- CrossswapRouterv5 (`0xb84aefef2ddde628d5c7f1fba320de63e3f4757c`, chain 8453)
- CrossswapRouterv5 (`0xb84aefef2ddde628d5c7f1fba320de63e3f4757c`, chain 59144)
- CrossswapRouterV5 (`0xb84aefef2ddde628d5c7f1fba320de63e3f4757c`, chain 1)
- CrossswapRouterV5 (`0xb84aefef2ddde628d5c7f1fba320de63e3f4757c`, chain 43114)
- CrosswapRouter v5 (`0xb84aefef2ddde628d5c7f1fba320de63e3f4757c`, chain 10)
- CrosswapRouterV5 (`0xb84aefef2ddde628d5c7f1fba320de63e3f4757c`, chain 137)
- CrosswapRouterV5 (`0xb84aefef2ddde628d5c7f1fba320de63e3f4757c`, chain 42161)
- FarmingVault_BNB (`0x85f16155c6c7da460969ddb33dbd2c7e90ca07ec`, chain 56)
- farmingvault_ETH (`0x7e1996945ea8866de873179dc1677e93a4380107`, chain 10)
- FarmingVault_ETH (`0xc5d8fc6a7e72ca1e5041d528feef42d7bd8a770c`, chain 324)
- FarmingVault_ETH (`0x6875eb0496b6baa0527c5915d78b9bcdc800e98f`, chain 59144)
- farmingvault_mETH (`0xfbc49f33cb59daad850861d5e4d02df923399560`, chain 5000)
- farmingvault_OP (`0xa8452e2d63b29783ed2e5ca0d8d4fe0cc2161d5b`, chain 10)
- FarmingVault_S (`0xcfe6aa6224efacee636bf6defa281d86dcbb192c`, chain 146)
- FarmingVault_USDC (`0x805b06c952e824ef7f818893ff37c8b0c2db502a`, chain 324)
- FarmingVault_USDC (`0xb772122c4a37fe1754b46ab1799b909351e8cb43`, chain 59144)
- farmingvault_USDT (`0xb709131900de02177f8b195cff6c37ff5f020116`, chain 5000)
- FarmingVault_USDT (`0xe897b4200e3b2380469e8dd3f987dc62a7adead7`, chain 56)
- FarmingVault_ZK (`0x9af29b3e849e187e30d622058417c094f94875ce`, chain 324)
- FeeManager (`0xc45b55032cafeaff3b8057d52758d8f8211da54d`, chain 56)
- IntegrationHelper (token info) (`0x96329d66074eb8386ae8bfd6698b2e3fda87e15e`, chain 10)
- IntegrationHelper (token info) (`0xaee024faa57c4db20ac0666a1d5297d5f1c95afe`, chain 143)
- IntegrationHelper (token info) (`0xc8521e41de46036a61c562062862681f0060cd7e`, chain 146)
- IntegrationHelper (token info) (`0x636dfeb023463f176f87d61e3b604231986bd935`, chain 324)
- IntegrationHelper (token info) (`0xee8318e9d597bf9df6148e86d4e35a8bc14eea88`, chain 999)
- IntegrationHelper (token info) (`0x14b435b68e031226acc4d328a69e294686c3176e`, chain 80094)
- IntegrationHelper(token info) (`0x86b223e83d2fa43456b433687c8f47a35a9be24c`, chain 5000)
- IntegrationHelper(token info) (`0x7e1996945ea8866de873179dc1677e93a4380107`, chain 59144)
- LendingManager_ETH (`0x1ddd225ef26714bb8055ddceaee2589ba09c89ed`, chain 10)
- LendingManager_ETH (`0xaeed9101c760a2a306b6b9ed774a775ecc9686f3`, chain 324)
- LendingManager_ETH (`0x2cf870854469e77191b65d990418559b66688dce`, chain 59144)
- LendingManager_mETH (`0xd6abd5fd165fd9127b37b63ac1ab86574bf5686e`, chain 5000)
- LendingManager_OP (`0xd2635bc7e4e4f63b2892ed80d0b0f9dff7eda899`, chain 10)
- LendingManager_S (`0x4df34a29aabd0694a62cbf65a844e12a44617975`, chain 146)
- LendingManager_USDC (`0x4baa5fd82a455f2bfeff4fbb91969288d7de7316`, chain 10)
- LendingManager_USDC (`0x17927d09b8033e2f6e37c488ea6dc4c339ef1f6a`, chain 324)
- LendingManager_USDC (`0xc7f6fc03539fbf6fa79270eda7d79375c65028dd`, chain 59144)
- LendingManager_USDT (`0xa8701c6a659ebddfbb399b2df6eeda853e442257`, chain 5000)
- LendingManager_ZK (`0x2ace3a5f4c7384e0c7a95333e81f708b6b534873`, chain 324)
- MpRewarder (`0xa74bb3643da439e89010743909d0493abca743d7`, chain 42161)
- NFTBoosterV2 (`0x2ebca56e00e11a4b1f08da6eb9bc97c4bf3ee90f`, chain 42161)
- NFTRewarder (`0x0cccb28b1c47b2548cfaf1ccf27f1152f65a125e`, chain 42161)
- NonceCounter (`0x88a19967013ca274c296bfa433eb1bac4d47b0dc`, chain 1)
- NonceCounter (`0x88a19967013ca274c296bfa433eb1bac4d47b0dc`, chain 10)
- NonceCounter (`0x88a19967013ca274c296bfa433eb1bac4d47b0dc`, chain 56)
- NonceCounter (`0x88a19967013ca274c296bfa433eb1bac4d47b0dc`, chain 137)
- NonceCounter (`0x88a19967013ca274c296bfa433eb1bac4d47b0dc`, chain 8453)
- NonceCounter (`0x88a19967013ca274c296bfa433eb1bac4d47b0dc`, chain 42161)
- NonceCounter (`0x88a19967013ca274c296bfa433eb1bac4d47b0dc`, chain 43114)
- NonceCounter (`0x88a19967013ca274c296bfa433eb1bac4d47b0dc`, chain 59144)
- ProCrossChainRouter (`0xac8951a442fe70342f9597044b7b7657d5ad55ec`, chain 1)
- ProCrossChainRouter (`0xac8951a442fe70342f9597044b7b7657d5ad55ec`, chain 10)
- ProCrossChainRouter (`0xac8951a442fe70342f9597044b7b7657d5ad55ec`, chain 56)
- ProCrossChainRouter (`0xac8951a442fe70342f9597044b7b7657d5ad55ec`, chain 137)
- ProCrossChainRouter (`0xac8951a442fe70342f9597044b7b7657d5ad55ec`, chain 8453)
- ProCrossChainRouter (`0xac8951a442fe70342f9597044b7b7657d5ad55ec`, chain 42161)
- ProCrossChainRouter (`0xac8951a442fe70342f9597044b7b7657d5ad55ec`, chain 43114)
- ProCrossChainRouter (`0xac8951a442fe70342f9597044b7b7657d5ad55ec`, chain 59144)
- ProDepositor (`0x4e21a65a9f4672ef2cdfb7fa6b0f1e39d6e4e50e`, chain 10)
- ProDepositor (`0x4e21a65a9f4672ef2cdfb7fa6b0f1e39d6e4e50e`, chain 42161)
- ProxyAdmin (`0x3933ca6058e3549bbf25ba71901b82c11916ec16`, chain 1)
- ProxyAdmin (`0x3933ca6058e3549bbf25ba71901b82c11916ec16`, chain 10)
- ProxyAdmin (`0x3933ca6058e3549bbf25ba71901b82c11916ec16`, chain 56)
- ProxyAdmin (`0x3933ca6058e3549bbf25ba71901b82c11916ec16`, chain 137)
- ProxyAdmin (`0x3933ca6058e3549bbf25ba71901b82c11916ec16`, chain 8453)
- ProxyAdmin (`0x3933ca6058e3549bbf25ba71901b82c11916ec16`, chain 42161)
- ProxyAdmin (`0x3933ca6058e3549bbf25ba71901b82c11916ec16`, chain 43114)
- ProxyAdmin (`0x3933ca6058e3549bbf25ba71901b82c11916ec16`, chain 59144)
- RebateManager (`0x7616614084e040028d6a61c0f3a9699c121a6500`, chain 56)
- RewardBooster (`0xf26eb53367066cde380cd06a5d1469985b92747b`, chain 42161)
- RewardCampaignManager (`0x927f8c16c9e802cb3012989fab79eb8c098d4234`, chain 42161)
- RewardMasterchef (`0xc0f8c29e3a9a7650a3f642e467d70087819926d6`, chain 10)
- RewardMasterchef (`0xc0f8c29e3a9a7650a3f642e467d70087819926d6`, chain 56)
- RewardMasterchef (`0xc0f8c29e3a9a7650a3f642e467d70087819926d6`, chain 137)
- RewardMasterchef (`0x0fad8f10746171c0616ce4b7b4e2e9439a9a02e2`, chain 146)
- RewardMasterchef (`0x82fde5086784e348aed03eb7b19ded97652db7a8`, chain 5000)
- RewardMasterchef (`0xc0f8c29e3a9a7650a3f642e467d70087819926d6`, chain 42161)
- RewardMasterchef (`0xc0f8c29e3a9a7650a3f642e467d70087819926d6`, chain 43114)
- SuperChargerVault_ETH (`0xb54e1d90d845d888d39dcacbd54a3eec0d8853b2`, chain 10)
- SuperChargerVault_ETH (`0x1d686250bbffa9fe120b591f5992dd7fc0fd99a4`, chain 324)
- SuperChargerVault_ETH (`0xe40d544b21b0835e09fd2642c54651499ddcb0c0`, chain 59144)
- SuperChargerVault_mETH (`0x944ebcd21dea579b5091d141c75ec28bfe054fca`, chain 5000)
- SuperChargerVault_OP (`0xca7184ea1cb4cf04d49bf219c49a39231299da26`, chain 10)
- SuperChargerVault_S (`0xf951175d04c94bc908cab79fd846d3be7d0a37dd`, chain 146)
- SuperChargerVault_USDC (`0x18aa88bb25b8f15fdbe329f789dd000bf679753e`, chain 10)
- SuperChargerVault_USDC (`0xdca324bdd4ebb6b8a1802959324ce125b5d57921`, chain 324)
- SuperChargerVault_USDC (`0x0fd9ce310903d3750ade5cb634860fc7d11b3523`, chain 59144)
- SuperChargerVault_USDT (`0x65753506657de6d6512df80bcbf437b7e39ae9e3`, chain 5000)
- SuperChargerVault_ZK (`0x85167f7f3f367e0be7b4d3a8c2b1648f56dfdb45`, chain 324)
- USDC_StrategyAave (`0xfd7ed9d3d4fd88595af6a87f798ffdb42b4d7ccb`, chain 10)
- USDC_VaultV2 (`0x73504eacb100c7576146618dc306c97454cb3620`, chain 10)
- Vault_USDC.e (`0x5db04b6335c26ee147afbec161aff6e90239b4b8`, chain 146)
- Vault_WETH (`0xee8318e9d597bf9df6148e86d4e35a8bc14eea88`, chain 146)
- VoidStrategy_ETH (`0x5dab2541175fbb2cad3dc624ee41917284a00feb`, chain 324)
- VoidStrategy_ETH (`0xb4e0bcda51b29d9c7bdd671f169877cc5f82caa9`, chain 59144)
- VoidStrategy_mETH (`0xdec7f784f655e9e505ee137492e256685b966636`, chain 5000)
- voidstrategy_OP (`0xda4b53f75921c109fed0ffd8ad9f22430b4c3438`, chain 10)
- VoidStrategy_S (`0xf314fa27066bdde92e6122059b103e8899d0a096`, chain 146)
- VoidStrategy_USDC (`0xd5e4d961fd8a998dd62826e14251cc2628e270ba`, chain 324)
- VoidStrategy_USDC (`0x7081a38158bd050ae4a86e38e0225bc281887d7e`, chain 59144)
- VoidStrategy_USDC.e (`0x2df39335b79783b7e02afcf552303602c14f5208`, chain 146)
- VoidStrategy_USDT (`0x9aed3a8896a85fe9a8cac52c9b402d092b629a30`, chain 5000)
- VoidStrategy_WETH (`0x64edb6450f5a1c6158d76c1e30900fd7d8493636`, chain 146)
- VoidStrategy_ZK (`0x26fb0dbe790659e5e69e3d89cac0f5967dc1b6e9`, chain 324)
- WithdrawManager_ETH (`0x91741863a48f0b29fc0b6d10b3cde2122feb58f7`, chain 10)
- WithdrawManager_ETH (`0x674db8f08620726dac5ef787d5e1f4784a3abc23`, chain 324)
- WithdrawManager_ETH (`0x894edf346f121bd406442cfaee29a43c80744158`, chain 59144)
- WithdrawManager_mETH (`0x8ea0eb2cebda4d7c88183ac8fbf3a9ae6ae07a5c`, chain 5000)
- WithdrawManager_OP (`0x0fad8f10746171c0616ce4b7b4e2e9439a9a02e2`, chain 10)
- WithdrawManager_S (`0x87bca268e282dbc00477a24883542f87d40deb5c`, chain 146)
- WithdrawManager_USDC (`0x2500ad59b46ff4b96f8e1eac3fe1f78eaf955777`, chain 10)
- WithdrawManager_USDC (`0xf66e17fcd5914f57adf584457a527b1a8e5c37ff`, chain 324)
- WithdrawManager_USDC (`0xaacf2201198c8bf5f2dcd5a187754b4cb9cd9198`, chain 59144)
- WithdrawManager_USDC.e (`0x87bca268e282dbc00477a24883542f87d40deb5c`, chain 80094)
- WithdrawManager_USDT (`0xdda9ef09f4d271715e2d337f71d0fc34b316c7eb`, chain 5000)
- WithdrawManager_ZK (`0xf383ae33651a79290246472a0603e4c32c72386a`, chain 324)
- WOO OFT (`0xf3df0a31ec5ea438150987805e841f960b9471b6`, chain 8453)
- WooAccessManager (`0xaf558f888e138ca9416111ec7ae8e28354cd9239`, chain 10)
- WooAccessManager (`0xaf558f888e138ca9416111ec7ae8e28354cd9239`, chain 56)
- WooAccessManager (`0x925afa2318825fcac673ef4ef551208b125dd965`, chain 137)
- WooAccessManager (`0xaf558f888e138ca9416111ec7ae8e28354cd9239`, chain 137)
- WooAccessManager (`0xaf558f888e138ca9416111ec7ae8e28354cd9239`, chain 143)
- WooAccessManager (`0xaf558f888e138ca9416111ec7ae8e28354cd9239`, chain 146)
- WooAccessManager (`0x35a62c09427be1bae622d4492b851338969721b5`, chain 324)
- WooAccessManager (`0xaf558f888e138ca9416111ec7ae8e28354cd9239`, chain 999)
- WooAccessManager (`0xaf558f888e138ca9416111ec7ae8e28354cd9239`, chain 5000)
- WooAccessManager (`0xaf558f888e138ca9416111ec7ae8e28354cd9239`, chain 8453)
- WooAccessManager (`0xaf558f888e138ca9416111ec7ae8e28354cd9239`, chain 42161)
- WooAccessManager (`0xd14a997308f9e7514a8fea835064d596cdcaa99e`, chain 42161)
- WooAccessManager (`0xaf558f888e138ca9416111ec7ae8e28354cd9239`, chain 43114)
- WooAccessManager (`0xaf558f888e138ca9416111ec7ae8e28354cd9239`, chain 59144)
- WooAccessManager (`0xaf558f888e138ca9416111ec7ae8e28354cd9239`, chain 80094)
- WooFeeManager (`0xc45b55032cafeaff3b8057d52758d8f8211da54d`, chain 10)
- WooFeeManager (`0xc45b55032cafeaff3b8057d52758d8f8211da54d`, chain 137)
- WooFeeManager (`0xc45b55032cafeaff3b8057d52758d8f8211da54d`, chain 143)
- WooFeeManager (`0xc45b55032cafeaff3b8057d52758d8f8211da54d`, chain 146)
- WooFeeManager (`0x01b50b57a3d3c1a54433813585e60713e75f3de9`, chain 324)
- WooFeeManager (`0xc45b55032cafeaff3b8057d52758d8f8211da54d`, chain 999)
- WooFeeManager (`0xc45b55032cafeaff3b8057d52758d8f8211da54d`, chain 5000)
- WooFeeManager (`0xc45b55032cafeaff3b8057d52758d8f8211da54d`, chain 8453)
- WooFeeManager (`0xc45b55032cafeaff3b8057d52758d8f8211da54d`, chain 42161)
- WooFeeManager (`0xc45b55032cafeaff3b8057d52758d8f8211da54d`, chain 43114)
- WooFeeManager (`0xc45b55032cafeaff3b8057d52758d8f8211da54d`, chain 59144)
- WooFeeManager (`0xc45b55032cafeaff3b8057d52758d8f8211da54d`, chain 80094)
- WooLendingManager (`0x01e42ce7cdcb7a2eaae0bb8bdce52f0bbb63f139`, chain 137)
- WooLendingManager (`0x697c97a37bc00c2306f2b08ca14f3d55db6ffccd`, chain 137)
- WooLendingManager (`0x9f46a7f7afd5a595c782e57b5dae1fcc01bff18d`, chain 137)
- WooLendingManager (`0x5c7ff24fa7af62bc25ad6747a6193183b4bb7bc5`, chain 42161)
- WooLendingManager (`0x6fc2c9f904a98caeeef6aaba6de625b5698f3f08`, chain 42161)
- WooLendingManager (`0x79a5453865a39f67d3ffc7964cd760f1763be767`, chain 42161)
- WooLendingManager (`0xfeecedbc3c292db79347473a2b976a463c3ac2d6`, chain 42161)
- WooLendingManager (`0x385e063dea8908d06be024de85da5b8da4b10f73`, chain 43114)
- WooLendingManager (`0x697c97a37bc00c2306f2b08ca14f3d55db6ffccd`, chain 43114)
- WooLendingManager (`0xc8ec7f48a82a07d95110ff26faacde9757dd9dc7`, chain 43114)
- WooLendingManager_USDC.e (`0xcc96ba33eae1147ba8b0c73d3dd4cee40d681ee9`, chain 146)
- WooLendingManager_WETH (`0x91741863a48f0b29fc0b6d10b3cde2122feb58f7`, chain 146)
- WooOFT (`0xf3df0a31ec5ea438150987805e841f960b9471b6`, chain 146)
- WooOFT (`0xf38583e662d3dc8bbe9ce791f06e1dd46800aaaf`, chain 324)
- WooOFT (`0xf3df0a31ec5ea438150987805e841f960b9471b6`, chain 5000)
- WooOFT (`0xf3df0a31ec5ea438150987805e841f960b9471b6`, chain 59144)
- WooOFTAdapter (`0xad6ca80fe4d3c54f6433ff725d744772aae87711`, chain 1)
- WooPPv2 (`0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4`, chain 137)
- WooPPV2 (`0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4`, chain 143)
- WooPPV2 (`0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4`, chain 146)
- WooPPV2 (`0xe656d70bc3550e3eee9de7dc79367a44fd13d975`, chain 324)
- WooPPV2 (`0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4`, chain 999)
- WooPPV2 (`0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4`, chain 5000)
- WooPPV2 (`0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4`, chain 59144)
- WooPPV2 (`0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4`, chain 80094)
- WooPPV2.2 (`0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4`, chain 10)
- WooPPV2.2 (`0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4`, chain 56)
- WooPPV2.2 (`0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4`, chain 8453)
- WooPPV2.2 (`0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4`, chain 42161)
- WooPPV2.2 (`0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4`, chain 43114)
- WooracleV2_2 (`0x2a8ede62d0717c8c92b88639ecf603fdf31a8428`, chain 137)
- WooracleV2_2 (`0xcf4ea1688bc23dd93d933eda535f8b72fc8934ec`, chain 42161)
- WooracleV2.1 (`0x2a375567f5e13f6bd74fda7627df3b1af6bfa5a6`, chain 56)
- WooracleV2.1 (`0x2a375567f5e13f6bd74fda7627df3b1af6bfa5a6`, chain 143)
- WooracleV2.1 (`0x2a375567f5e13f6bd74fda7627df3b1af6bfa5a6`, chain 146)
- WooracleV2.1 (`0xae45cbe2d1e90358cbd216bc16f2c9267a4ea80a`, chain 324)
- WooracleV2.1 (`0x2a375567f5e13f6bd74fda7627df3b1af6bfa5a6`, chain 999)
- WooracleV2.1 (`0x2a375567f5e13f6bd74fda7627df3b1af6bfa5a6`, chain 5000)
- WooracleV2.1 (`0x2a375567f5e13f6bd74fda7627df3b1af6bfa5a6`, chain 8453)
- WooracleV2.1 (`0x2a375567f5e13f6bd74fda7627df3b1af6bfa5a6`, chain 43114)
- WooracleV2.1 (`0x2a375567f5e13f6bd74fda7627df3b1af6bfa5a6`, chain 59144)
- WooracleV2.1 (`0x2a375567f5e13f6bd74fda7627df3b1af6bfa5a6`, chain 80094)
- WooracleV2.2 (`0xa43305ce0164d87d7b2368f91a1dcc4ebda75127`, chain 10)
- WooRebateManager (`0x7616614084e040028d6a61c0f3a9699c121a6500`, chain 10)
- WooRebateManager (`0x7616614084e040028d6a61c0f3a9699c121a6500`, chain 137)
- WooRebateManager (`0x7616614084e040028d6a61c0f3a9699c121a6500`, chain 143)
- WooRebateManager (`0x7616614084e040028d6a61c0f3a9699c121a6500`, chain 146)
- WooRebateManager (`0x66c9467ec052fb258e24dcce87e93a0002966014`, chain 324)
- WooRebateManager (`0x7616614084e040028d6a61c0f3a9699c121a6500`, chain 999)
- WooRebateManager (`0x7616614084e040028d6a61c0f3a9699c121a6500`, chain 5000)
- WooRebateManager (`0x7616614084e040028d6a61c0f3a9699c121a6500`, chain 8453)
- WooRebateManager (`0x7616614084e040028d6a61c0f3a9699c121a6500`, chain 42161)
- WooRebateManager (`0x7616614084e040028d6a61c0f3a9699c121a6500`, chain 43114)
- WooRebateManager (`0x7616614084e040028d6a61c0f3a9699c121a6500`, chain 59144)
- WooRebateManager (`0x7616614084e040028d6a61c0f3a9699c121a6500`, chain 80094)
- WooRouter (`0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7`, chain 1)
- WooRouterV2 (`0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7`, chain 10)
- WooRouterV2 (`0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7`, chain 56)
- WooRouterV2 (`0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7`, chain 137)
- WooRouterV2 (`0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7`, chain 143)
- WooRouterV2 (`0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7`, chain 146)
- WooRouterV2 (`0x09873bfeca34f1acd0a7e55cda591f05d8a75369`, chain 324)
- WooRouterV2 (`0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7`, chain 999)
- WooRouterV2 (`0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7`, chain 5000)
- WooRouterV2 (`0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7`, chain 8453)
- WooRouterV2 (`0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7`, chain 42161)
- WooRouterV2 (`0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7`, chain 43114)
- WooRouterV2 (`0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7`, chain 59144)
- WooRouterV2 (`0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7`, chain 80094)
- WooStakingCompounder (`0x63a015b5e305edca94b9b0c27461547b3f4ea1e3`, chain 42161)
- WooStakingLocal (`0x2cfa72e7f58dc82b990529450ffa83791db7d8e2`, chain 42161)
- WooStakingManager (`0xa9e245c1fa7e17263cc7c896488a3da8072924fb`, chain 42161)
- WooStakingProxy (`0xba91ffd8a2b9f68231eca6af51623b3433a89b13`, chain 1)
- WooStakingProxy (`0xba91ffd8a2b9f68231eca6af51623b3433a89b13`, chain 10)
- WooStakingProxy (`0xba91ffd8a2b9f68231eca6af51623b3433a89b13`, chain 137)
- WooStakingProxy (`0x3bd96847c40de8b0f20da32568bd15462c1386e3`, chain 43114)
- WOOStakingProxy (`0xba91ffd8a2b9f68231eca6af51623b3433a89b13`, chain 56)
- WooStakingVault (`0x9bcf8b0b62f220f3900e2dc42deb85c3f79b405b`, chain 137)
- WooStakingVault (`0x9321785d257b3f0ef7ff75436a87141c683dc99d`, chain 42161)
- WooStakingVault (`0xcd1b9810872aec66d450c761e93638fb9fe09db0`, chain 43114)
- WooStakingVault 1.0 (`0x2aeab1a338bcb1758f71bd5af40637cee2085076`, chain 56)
- WooSuperChargerVault (`0x5a6b073e090388c909b9f3bf9d9323be908cad62`, chain 42161)
- WooSuperChargerVault (`0xba452bcc4bc52af2fe1190e7e1dbe267ad1c2d08`, chain 42161)
- WooSuperChargerVaultV2 (`0x5cb9ba4a6f05c4125d61172e1b2c1dbe3afb3158`, chain 56)
- WooSuperChargerVaultV2 (`0x7eb8d4ccfdbd9df8d3520e9c5b5edf6a5cbe4cad`, chain 56)
- WooSuperChargerVaultV2 (`0x1109e03516eb25eab2150d0b274b8d4f5f3cf549`, chain 137)
- WooSuperChargerVaultV2 (`0x9dd5dd86b978f17628f01307a83347d9ec9b0699`, chain 137)
- WooSuperChargerVaultV2 (`0xedbb74da05d58b22f07184bb79ed9124791799ac`, chain 137)
- WooSuperChargerVaultV2 (`0x44df096d2600c6a6db77899db3de3aecff746cb8`, chain 8453)
- WooSuperChargerVaultV2 (`0x8c603050d7a913b6f63836e07ebf385a4a5736e7`, chain 8453)
- WooSuperChargerVaultV2 (`0xb772122c4a37fe1754b46ab1799b909351e8cb43`, chain 8453)
- WooSuperChargerVaultV2 (`0x7f3f2a499c00c2d7018300f99a232896fd295bb1`, chain 42161)
- WooSuperChargerVaultV2 (`0xa780432f495e5c6851fd7903fe49ad77c952f7d8`, chain 42161)
- WooSuperChargerVaultV2 (`0xd2fdab19b94b59c5f0e75dd9813365df815b56b1`, chain 42161)
- WooSuperChargerVaultV2 (`0x11b29ae3037f4526e4aa56952318e0d01ada836a`, chain 43114)
- WooSuperChargerVaultV2 (`0x1cd7b33faf4f172146bcbb841c7addc96802e6c4`, chain 43114)
- WooSuperChargerVaultV2 (`0x866810349b2e28e411669911bb0babb06cc60625`, chain 43114)
- WooSuperChargerVaultV2_USDC.e (`0x758231b7d5204d08634dd3f9fcdf49fc17355d33`, chain 146)
- WooSuperChargerVaultV2_WETH (`0x1ddd225ef26714bb8055ddceaee2589ba09c89ed`, chain 146)
- WooWithdrawManager (`0x7de3fce3de3cdc34595eed74773cd47b84bca340`, chain 42161)
- WooWithdrawManager (`0xe77adf3936f70a2ed44f26ced01d26c1430ead6a`, chain 42161)
- WooWithdrawManagerV2 (`0x382a9b0bc5d29e96c3a0b81ce9c64d6c8f150efb`, chain 137)
- WooWithdrawManagerV2 (`0x3fe2c827ff572b8fe03b7d16695c88f21448b3b9`, chain 137)
- WooWithdrawManagerV2 (`0x7f78213da92552d00bd676466ab2ef8a9287fd4c`, chain 137)
- WooWithdrawManagerV2 (`0xbfe3d22b223909a06469854e7af374ab449f09ac`, chain 42161)
- WooWithdrawManagerV2 (`0xd05b953cfd75426711a904f76eb3241bad5d03ac`, chain 42161)
- WooWithdrawManagerV2 (`0xe76c97897a9c3f8aaafc3fe86457fe460553d3fe`, chain 42161)
- WooWithdrawManagerV2 (`0x1bb2ebecfbb4f78d83fb0a21cb415383779602c9`, chain 43114)
- WooWithdrawManagerV2 (`0x755e4af9e77a91999693947b02975c584d1b56f6`, chain 43114)
- WooWithdrawManagerV2 (`0xa429b468d222bb31ff256f3d08ddc0a2d8a59664`, chain 43114)
- WooWithdrawManagerV2_USDC.e (`0xd5befe3fecdf1c941c58119a4e395806eea0c343`, chain 146)
- WooWithdrawManagerV2_WETH (`0xd1d3a7d0ca508998de5cbfb86cecd0546f0e287c`, chain 146)

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
- Outside the address book: 1191 discovered implementations shown in the inventory but excluded from coverage (1 third-party/infra; 0 standard proxy/library)
- Proxy deployments represented within implementation groups: 4
- Confirmed-live implementations: 332 of 1712 unique; 1380 retained implementation(s) lack confirmed-live status
- All block-explorer-verified implementations audited (incl. non-live): 8/312
- Verified + Unaudited implementations: 304
- Verified by bytecode match: 0
- Unverified implementations: 1400
- Unique implementations: 1712
- Raw deployments: 1736
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
| MpRewarder | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397894 | `0xa74bb3643da439e89010743909d0493abca743d7` | ✅ Audited |
| RewardBooster | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397917 | `0xf26eb53367066cde380cd06a5d1469985b92747b` | ✅ Audited |
| WooRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397655 | `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` | ✅ Audited |
| WooStakingCompounder | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397876 | `0x63a015b5e305edca94b9b0c27461547b3f4ea1e3` | ✅ Audited |
| WooStakingController | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397887 | `0x93e63fc2146d596afe4583d03cfe496ffcad5a04` | ✅ Audited |
| WooStakingLocal | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397859 | `0x2cfa72e7f58dc82b990529450ffa83791db7d8e2` | ✅ Audited |
| WooStakingManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-397896 | `0xa9e245c1fa7e17263cc7c896488a3da8072924fb` | ✅ Audited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | base | unit-398154 | `0x8c603050d7a913b6f63836e07ebf385a4a5736e7` | ✅ Audited |

### ⚠️ Verified + Unaudited (304)

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| AAVEStrategy_AVAX | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397979 | `0xbd904400a17eae621c4b799bab7217d155135166` | ⚠️ Unaudited |
| AaveStrategy_ETH | unknown | project_anchor | own_supporting | 0 | optimism | unit-397682 | `0x95360a64447ca746b82abd1d0ed49f3e34f2e6e9` | ⚠️ Unaudited |
| AAVEStrategy_ETH | unknown | project_anchor | own_supporting | 0 | base | unit-398168 | `0xcd1b9810872aec66d450c761e93638fb9fe09db0` | ⚠️ Unaudited |
| AAVEStrategy_ETH | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397901 | `0xbdb42aad4a2056e33cb365f923c175a1ed044b55` | ⚠️ Unaudited |
| AAVEStrategy_ETH | unknown | project_anchor | own_supporting | 0 | linea | unit-398119 | `0x9aa935113184b06109c62e8f55a76e8c8c0a963b` | ⚠️ Unaudited |
| AAVEStrategy_USDC | unknown | project_anchor | own_supporting | 0 | polygon | unit-397728 | `0x78aa58e5d61b525eaba8243d42451027a40705de` | ⚠️ Unaudited |
| AAVEStrategy_USDC | unknown | project_anchor | own_supporting | 0 | base | unit-398165 | `0xbeae1b06949d033da628ba3e5af267c3e740494b` | ⚠️ Unaudited |
| AAVEStrategy_USDC | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397878 | `0x679b6abd385b60db0efb99ad3ce6debdf832900c` | ⚠️ Unaudited |
| AAVEStrategy_USDC | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397942 | `0x3aad22346b5721a7ddf504c19fe3349abc52ace5` | ⚠️ Unaudited |
| AAVEStrategy_USDC | unknown | project_anchor | own_supporting | 0 | linea | unit-398118 | `0x913e116cd0e279763b0419798c0ba18f9311b390` | ⚠️ Unaudited |
| AirdropDistributor | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-397888 | `0x968d3b4faa87864ab19cf2982510b60c2d416b22` | ⚠️ Unaudited |
| AirdropDistributor | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | 2 deployments: arbitrum `0xc63c640b640038fb6ca3672def7494deea58b9cb`; arbitrum `0xff0a280e19e67e7d383a1c2de9e8f402702a86f6` | ⚠️ Unaudited |
| ARBRewarder | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397866 | `0x401ff5f78b52edb57ab019c8988e0be933aaabcb` | ⚠️ Unaudited |
| BridgeToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | 19 deployments: avalanche `0x19860ccb0a68fd4213ab9d8266f7bbf05a8dde98`; avalanche `0x37b608519f91f70f2eeb0e5ed9af4061722e4f76`; avalanche `0x3bd2b1c7ed8d396dbb98ded3aebb41350a5b2339`; avalanche `0x49d5c2bdffac6ce2bfdb6640f4f80f226bc10bab`; avalanche `0x50b7545627a5162f82a992c33b87adc75187b218`; avalanche `0x5947bb275c521040051d82396192181b413227a3`; avalanche `0x596fa47043f99a4e0f122243b841e55375cde0d2`; avalanche `0x63a72806098bd3d9520cc43356dd78afe5d386d9`; avalanche `0x88128fd4b259552a9a1d457f435a6527aab72d42`; avalanche `0x8a0cac13c7da965a312f08ea4229c37869e85cb9`; avalanche `0x8ebaf22b6f053dffeaf46f4dd9efa95d89ba8580`; avalanche `0x98443b96ea4b0858fdf3219cd13e98c7a4690588`; avalanche `0x9eaac1b23d935365bd7b542fe22ceee2922f52dc`; avalanche `0xabc9547b534519ff73921b1fba6e672b5f58d083`; avalanche `0xbec243c995409e6520d7c41e404da5deba4b209b`; avalanche `0xc3048e19e76cb9a3aa9d77d8c03c29fc906e2437`; avalanche `0xc7198437980c041c805a1edcba50c1ce5db95118`; avalanche `0xd501281565bf7789224523144fe5d98e8b28f267`; avalanche `0xd586e7f844cea2f87f50152665bcbc2c279d8d70` | ⚠️ Unaudited |
| cmETH_LendingManager | unknown | project_anchor | own_supporting | 0 | mantle | unit-398005 | `0x2cc9938584efa3bdf0fd19ddbb1828a672ae2376` | ⚠️ Unaudited |
| cmETH_SuperChargerVaultV2 | unknown | project_anchor | own_supporting | 0 | mantle | unit-398013 | `0x872b6ff825da431c941d12630754036278ad7049` | ⚠️ Unaudited |
| cmETH_VoidStrategy | unknown | project_anchor | own_supporting | 0 | mantle | unit-398006 | `0x46a7213343e68809d04cd1c88e7fd1dd606cd86a` | ⚠️ Unaudited |
| cmETH_WithdrawManagerV2 | unknown | project_anchor | own_supporting | 0 | mantle | unit-398017 | `0xa14c57b073e6da6bcc23fc0e6934665118f05701` | ⚠️ Unaudited |
| cmETH_WOOFiVaultV2 | unknown | project_anchor | own_supporting | 0 | mantle | unit-398022 | `0xb8db696e67553030f3b5c5ee6e297b7bbcd98f55` | ⚠️ Unaudited |
| CrossRouterv5 | unknown | project_anchor | own_supporting | 0 | bsc | unit-398082 | `0xb84aefef2ddde628d5c7f1fba320de63e3f4757c` | ⚠️ Unaudited |
| CrossswapRouterV5 | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397660 | `0xb84aefef2ddde628d5c7f1fba320de63e3f4757c` | ⚠️ Unaudited |
| CrossswapRouterv5 | unknown | project_anchor | own_supporting | 0 | mantle | unit-398021 | `0xb84aefef2ddde628d5c7f1fba320de63e3f4757c` | ⚠️ Unaudited |
| CrossswapRouterv5 | unknown | project_anchor | own_supporting | 0 | base | unit-398163 | `0xb84aefef2ddde628d5c7f1fba320de63e3f4757c` | ⚠️ Unaudited |
| CrossswapRouterV5 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397978 | `0xb84aefef2ddde628d5c7f1fba320de63e3f4757c` | ⚠️ Unaudited |
| CrossswapRouterv5 | unknown | project_anchor | own_supporting | 0 | linea | unit-398125 | `0xb84aefef2ddde628d5c7f1fba320de63e3f4757c` | ⚠️ Unaudited |
| CrosswapRouter v5 | unknown | project_anchor | own_supporting | 0 | optimism | unit-397689 | `0xb84aefef2ddde628d5c7f1fba320de63e3f4757c` | ⚠️ Unaudited |
| CrosswapRouterV5 | unknown | project_anchor | own_supporting | 0 | polygon | unit-397748 | `0xb84aefef2ddde628d5c7f1fba320de63e3f4757c` | ⚠️ Unaudited |
| CrosswapRouterV5 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397899 | `0xb84aefef2ddde628d5c7f1fba320de63e3f4757c` | ⚠️ Unaudited |
| CustomBridgedToken | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 1 | linea | n/a | `0x3aab2285ddcddad8edf438c1bab47e1a9d05a9b4` | ⚠️ Unaudited |
| ExternalRewar_ARB | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397911 | `0xdf0006994c46f4d006ecb2b5af3e212d94df23e1` | ⚠️ Unaudited |
| ExternalRewar_usdc.e | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397871 | `0x4d0ec3bef43d72d17c3718c873a75f878a06ca57` | ⚠️ Unaudited |
| ExternalRewar_WBTC | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397892 | `0xa397fba8c5c1aef9137601c185f6ab0e9cf43662` | ⚠️ Unaudited |
| ExternalReward_AVAX | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397966 | `0x91921908259559d19da415e8e407dc533bfa61eb` | ⚠️ Unaudited |
| ExternalReward_BNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-398100 | `0xf5d6560356cc5d7fcbf4ca20736af88b7cfa2ad1` | ⚠️ Unaudited |
| ExternalReward_BTC.b | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397971 | `0xa5025842791224238f5606db1f8863c87a5a9dc1` | ⚠️ Unaudited |
| ExternalReward_ETH | unknown | project_anchor | own_supporting | 0 | polygon | unit-397702 | `0x076aff456b04a84adb3eb207cb1e28ea3bab9bdb` | ⚠️ Unaudited |
| ExternalReward_ETH | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397919 | `0xfbbfccae3f76afc0979f20920b4d04d608f873bf` | ⚠️ Unaudited |
| ExternalReward_MATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-397724 | `0x6de98df2005efd6793fc615bf0231de2086ae82d` | ⚠️ Unaudited |
| ExternalReward_USDC | unknown | project_anchor | own_supporting | 0 | polygon | unit-397736 | `0x8ec402bd731ab88928104ccf8ee5bb41d5fec784` | ⚠️ Unaudited |
| ExternalReward_USDC | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397855 | `0x181d8eb2eeff20c647073c4798111cbd1b423a60` | ⚠️ Unaudited |
| ExternalReward_USDC | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397955 | `0x65003ba7c8e30e7b15903f70b36924057adfd070` | ⚠️ Unaudited |
| ExternalReward_USDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-398093 | `0xdecc5458a0fde482ae04ab13bd6866cfcfa8cf4b` | ⚠️ Unaudited |
| FarmingVault_ARB | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397858 | `0x2aa18ab5d65449892519057d965706f051823a31` | ⚠️ Unaudited |
| farmingvault_AVAX | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397992 | `0xda442c468f77f4f90032ae8ca99850eea2091bfe` | ⚠️ Unaudited |
| FarmingVault_BNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-398067 | `0x85f16155c6c7da460969ddb33dbd2c7e90ca07ec` | ⚠️ Unaudited |
| farmingvault_BTC.b | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397939 | `0x34c3847a9d8ff02cb50ce76d9ab6b51c610ebcde` | ⚠️ Unaudited |
| FarmingVault_cbBTC | unknown | project_anchor | own_supporting | 0 | base | unit-398164 | `0xba3dd3e9109dceae62b7192c25976cc98e132a55` | ⚠️ Unaudited |
| farmingvault_ETH | unknown | project_anchor | own_supporting | 0 | optimism | unit-397677 | `0x7e1996945ea8866de873179dc1677e93a4380107` | ⚠️ Unaudited |
| Farmingvault_ETH | unknown | project_anchor | own_supporting | 0 | polygon | unit-397738 | `0x99ad6e3c00dfbcd80b7593b1cd8fb8a9f1a2d230` | ⚠️ Unaudited |
| FarmingVault_ETH | unknown | project_anchor | own_supporting | 0 | base | unit-398150 | `0x5a958b9e4370da91498f494105bbe4c4123c513f` | ⚠️ Unaudited |
| farmingvault_ETH | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397868 | `0x478e7f3fe49931c601e2399ddaee8eef2eef6f13` | ⚠️ Unaudited |
| FarmingVault_ETH | unknown | project_anchor | own_supporting | 0 | linea | unit-398112 | `0x6875eb0496b6baa0527c5915d78b9bcdc800e98f` | ⚠️ Unaudited |
| farmingvault_MATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-397753 | `0xd5befe3fecdf1c941c58119a4e395806eea0c343` | ⚠️ Unaudited |
| farmingvault_mETH | unknown | project_anchor | own_supporting | 0 | mantle | unit-398029 | `0xfbc49f33cb59daad850861d5e4d02df923399560` | ⚠️ Unaudited |
| farmingvault_OP | unknown | project_anchor | own_supporting | 0 | optimism | unit-397685 | `0xa8452e2d63b29783ed2e5ca0d8d4fe0cc2161d5b` | ⚠️ Unaudited |
| FarmingVault_S | unknown | project_anchor | own_supporting | 0 | sonic | unit-397784 | `0xcfe6aa6224efacee636bf6defa281d86dcbb192c` | ⚠️ Unaudited |
| farmingvault_USDC | unknown | project_anchor | own_supporting | 0 | polygon | unit-397707 | `0x28f88a809ccc085956ab9f978067698d25de014c` | ⚠️ Unaudited |
| FarmingVault_USDC | unknown | project_anchor | own_supporting | 0 | base | unit-398172 | `0xf2be87391e2040d4cb1f646fbb023c074315e94e` | ⚠️ Unaudited |
| FarmingVault_USDC | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397864 | `0x38506fbb751ebffcf887cf5d4c7390ec0c503796` | ⚠️ Unaudited |
| farmingvault_USDC | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397938 | `0x305f06749b98d5aa5ae48b08395615ae9466de4d` | ⚠️ Unaudited |
| FarmingVault_USDC | unknown | project_anchor | own_supporting | 0 | linea | unit-398124 | `0xb772122c4a37fe1754b46ab1799b909351e8cb43` | ⚠️ Unaudited |
| FarmingVault_usdc.e | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397909 | `0xd3d86c94a8d468bd1328e6491ed8aca58d850ae7` | ⚠️ Unaudited |
| FarmingVault_USDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-398097 | `0xe897b4200e3b2380469e8dd3f987dc62a7adead7` | ⚠️ Unaudited |
| farmingvault_USDT | unknown | project_anchor | own_supporting | 0 | mantle | unit-398020 | `0xb709131900de02177f8b195cff6c37ff5f020116` | ⚠️ Unaudited |
| FarmingVault_WBTC | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397915 | `0xea6790425afa71d802e017ef5b6257e42c28554a` | ⚠️ Unaudited |
| FeeManager | unknown | project_anchor | own_supporting | 0 | bsc | unit-398087 | `0xc45b55032cafeaff3b8057d52758d8f8211da54d` | ⚠️ Unaudited |
| IntegrationHelper (token info) | unknown | project_anchor | own_supporting | 0 | optimism | unit-397683 | `0x96329d66074eb8386ae8bfd6698b2e3fda87e15e` | ⚠️ Unaudited |
| IntegrationHelper (token info) | unknown | project_anchor | own_supporting | 0 | bsc | unit-398076 | `0xaa9c15cd603428ca8ddd45e933f8efe3afbcc173` | ⚠️ Unaudited |
| IntegrationHelper (token info) | unknown | project_anchor | own_supporting | 0 | polygon | unit-397730 | `0x7ba560eb735abdcf9a3a5692272652a0cc81850d` | ⚠️ Unaudited |
| IntegrationHelper (token info) | unknown | project_anchor | own_supporting | 0 | monad | unit-397764 | `0xaee024faa57c4db20ac0666a1d5297d5f1c95afe` | ⚠️ Unaudited |
| IntegrationHelper (token info) | unknown | project_anchor | own_supporting | 0 | sonic | unit-397782 | `0xc8521e41de46036a61c562062862681f0060cd7e` | ⚠️ Unaudited |
| IntegrationHelper (token info) | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-398181 | `0xee8318e9d597bf9df6148e86d4e35a8bc14eea88` | ⚠️ Unaudited |
| IntegrationHelper (token info) | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397856 | `0x28d2b949024fe50627f1ebc5f0ca3ca721148e40` | ⚠️ Unaudited |
| IntegrationHelper (token info) | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397922 | `0x020630613e296c3e9b06186f630d1bf97a2b6ad1` | ⚠️ Unaudited |
| IntegrationHelper(token info) | unknown | project_anchor | own_supporting | 0 | mantle | unit-398012 | `0x86b223e83d2fa43456b433687c8f47a35a9be24c` | ⚠️ Unaudited |
| IntegrationHelper(token info) | unknown | project_anchor | own_supporting | 0 | base | unit-398167 | `0xc4e9b633685461e7b7a807d12a246c81f96f31b8` | ⚠️ Unaudited |
| IntegrationHelper(token info) | unknown | project_anchor | own_supporting | 0 | linea | unit-398115 | `0x7e1996945ea8866de873179dc1677e93a4380107` | ⚠️ Unaudited |
| L2StandardERC20 | token | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x871f2f2ff935fd1ed867842ff2a7bfd051a5e527` | ⚠️ Unaudited |
| LendingManager_BNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-398045 | `0x438baaff63af83549020fead36c7de167384463a` | ⚠️ Unaudited |
| LendingManager_cbBTC | unknown | project_anchor | own_supporting | 0 | base | unit-398160 | `0xb29de0c2a884af396272086f4aa3f0ad2dad747b` | ⚠️ Unaudited |
| LendingManager_ETH | unknown | project_anchor | own_supporting | 0 | optimism | unit-397665 | `0x1ddd225ef26714bb8055ddceaee2589ba09c89ed` | ⚠️ Unaudited |
| LendingManager_ETH | unknown | project_anchor | own_supporting | 0 | base | unit-398155 | `0x913e116cd0e279763b0419798c0ba18f9311b390` | ⚠️ Unaudited |
| LendingManager_ETH | unknown | project_anchor | own_supporting | 0 | linea | unit-398106 | `0x2cf870854469e77191b65d990418559b66688dce` | ⚠️ Unaudited |
| LendingManager_mETH | unknown | project_anchor | own_supporting | 0 | mantle | unit-398025 | `0xd6abd5fd165fd9127b37b63ac1ab86574bf5686e` | ⚠️ Unaudited |
| LendingManager_OP | unknown | project_anchor | own_supporting | 0 | optimism | unit-397695 | `0xd2635bc7e4e4f63b2892ed80d0b0f9dff7eda899` | ⚠️ Unaudited |
| LendingManager_S | unknown | project_anchor | own_supporting | 0 | sonic | unit-397772 | `0x4df34a29aabd0694a62cbf65a844e12a44617975` | ⚠️ Unaudited |
| LendingManager_USDC | unknown | project_anchor | own_supporting | 0 | optimism | unit-397669 | `0x4baa5fd82a455f2bfeff4fbb91969288d7de7316` | ⚠️ Unaudited |
| LendingManager_USDC | unknown | project_anchor | own_supporting | 0 | base | unit-398151 | `0x73bd3c7e44e1c228713a24448e9b7250391aca15` | ⚠️ Unaudited |
| LendingManager_USDC | unknown | project_anchor | own_supporting | 0 | linea | unit-398127 | `0xc7f6fc03539fbf6fa79270eda7d79375c65028dd` | ⚠️ Unaudited |
| LendingManager_usdc.e | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397862 | `0x371a2528dcc40c77d6aaac255fa9f796de5d6f91` | ⚠️ Unaudited |
| LendingManager_USDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-398031 | `0x0510e56edb651fa39c3330d2f5bf8fbecdfcc53b` | ⚠️ Unaudited |
| LendingManager_USDT | unknown | project_anchor | own_supporting | 0 | mantle | unit-398018 | `0xa8701c6a659ebddfbb399b2df6eeda853e442257` | ⚠️ Unaudited |
| MintedERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | sonic | n/a | `0x50c42deacd8fc9773493ed674b675be577f2634b` | ⚠️ Unaudited |
| MysteryBox | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9d9200aabc72c681eec86bb8494ab495ca90715e` | ⚠️ Unaudited |
| NFTBoosterV2 | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397860 | `0x2ebca56e00e11a4b1f08da6eb9bc97c4bf3ee90f` | ⚠️ Unaudited |
| NFTRewarder | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397854 | `0x0cccb28b1c47b2548cfaf1ccf27f1152f65a125e` | ⚠️ Unaudited |
| NonceCounter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397656 | `0x88a19967013ca274c296bfa433eb1bac4d47b0dc` | ⚠️ Unaudited |
| NonceCounter | unknown | project_anchor | own_supporting | 0 | optimism | unit-397680 | `0x88a19967013ca274c296bfa433eb1bac4d47b0dc` | ⚠️ Unaudited |
| NonceCounter | unknown | project_anchor | own_supporting | 0 | bsc | unit-398068 | `0x88a19967013ca274c296bfa433eb1bac4d47b0dc` | ⚠️ Unaudited |
| NonceCounter | unknown | project_anchor | own_supporting | 0 | polygon | unit-397733 | `0x88a19967013ca274c296bfa433eb1bac4d47b0dc` | ⚠️ Unaudited |
| NonceCounter | unknown | project_anchor | own_supporting | 0 | base | unit-398153 | `0x88a19967013ca274c296bfa433eb1bac4d47b0dc` | ⚠️ Unaudited |
| NonceCounter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397884 | `0x88a19967013ca274c296bfa433eb1bac4d47b0dc` | ⚠️ Unaudited |
| NonceCounter | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397965 | `0x88a19967013ca274c296bfa433eb1bac4d47b0dc` | ⚠️ Unaudited |
| NonceCounter | unknown | project_anchor | own_supporting | 0 | linea | unit-398116 | `0x88a19967013ca274c296bfa433eb1bac4d47b0dc` | ⚠️ Unaudited |
| ProCrossChainRouter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397658 | `0xac8951a442fe70342f9597044b7b7657d5ad55ec` | ⚠️ Unaudited |
| ProCrossChainRouter | unknown | project_anchor | own_supporting | 0 | optimism | unit-397686 | `0xac8951a442fe70342f9597044b7b7657d5ad55ec` | ⚠️ Unaudited |
| ProCrossChainRouter | unknown | project_anchor | own_supporting | 0 | bsc | unit-398078 | `0xac8951a442fe70342f9597044b7b7657d5ad55ec` | ⚠️ Unaudited |
| ProCrossChainRouter | unknown | project_anchor | own_supporting | 0 | polygon | unit-397745 | `0xac8951a442fe70342f9597044b7b7657d5ad55ec` | ⚠️ Unaudited |
| ProCrossChainRouter | unknown | project_anchor | own_supporting | 0 | base | unit-398158 | `0xac8951a442fe70342f9597044b7b7657d5ad55ec` | ⚠️ Unaudited |
| ProCrossChainRouter | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397897 | `0xac8951a442fe70342f9597044b7b7657d5ad55ec` | ⚠️ Unaudited |
| ProCrossChainRouter | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397973 | `0xac8951a442fe70342f9597044b7b7657d5ad55ec` | ⚠️ Unaudited |
| ProCrossChainRouter | unknown | project_anchor | own_supporting | 0 | linea | unit-398121 | `0xac8951a442fe70342f9597044b7b7657d5ad55ec` | ⚠️ Unaudited |
| ProDepositor | unknown | project_anchor | own_supporting | 0 | optimism | unit-397671 | `0x4e21a65a9f4672ef2cdfb7fa6b0f1e39d6e4e50e` | ⚠️ Unaudited |
| ProDepositor | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397872 | `0x4e21a65a9f4672ef2cdfb7fa6b0f1e39d6e4e50e` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397654 | `0x3933ca6058e3549bbf25ba71901b82c11916ec16` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | optimism | unit-397667 | `0x3933ca6058e3549bbf25ba71901b82c11916ec16` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | bsc | unit-398042 | `0x3933ca6058e3549bbf25ba71901b82c11916ec16` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | polygon | unit-397714 | `0x3933ca6058e3549bbf25ba71901b82c11916ec16` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | base | unit-398145 | `0x3933ca6058e3549bbf25ba71901b82c11916ec16` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397865 | `0x3933ca6058e3549bbf25ba71901b82c11916ec16` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397941 | `0x3933ca6058e3549bbf25ba71901b82c11916ec16` | ⚠️ Unaudited |
| ProxyAdmin | unknown | project_anchor | own_supporting | 0 | linea | unit-398108 | `0x3933ca6058e3549bbf25ba71901b82c11916ec16` | ⚠️ Unaudited |
| QuestTokenRewardManager | governance | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca8edccf471a213cfd70d73117ac7f49bfc00b72` | ⚠️ Unaudited |
| RebateManager | unknown | project_anchor | own_supporting | 0 | bsc | unit-398063 | `0x7616614084e040028d6a61c0f3a9699c121a6500` | ⚠️ Unaudited |
| RewardCampaignManager | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397885 | `0x927f8c16c9e802cb3012989fab79eb8c098d4234` | ⚠️ Unaudited |
| RewardMasterchef | unknown | project_anchor | own_supporting | 0 | optimism | unit-397692 | `0xc0f8c29e3a9a7650a3f642e467d70087819926d6` | ⚠️ Unaudited |
| RewardMasterchef | unknown | project_anchor | own_supporting | 0 | bsc | unit-398086 | `0xc0f8c29e3a9a7650a3f642e467d70087819926d6` | ⚠️ Unaudited |
| RewardMasterchef | unknown | project_anchor | own_supporting | 0 | polygon | unit-397750 | `0xc0f8c29e3a9a7650a3f642e467d70087819926d6` | ⚠️ Unaudited |
| RewardMasterchef | unknown | project_anchor | own_supporting | 0 | sonic | unit-397767 | `0x0fad8f10746171c0616ce4b7b4e2e9439a9a02e2` | ⚠️ Unaudited |
| RewardMasterchef | unknown | project_anchor | own_supporting | 0 | mantle | unit-398011 | `0x82fde5086784e348aed03eb7b19ded97652db7a8` | ⚠️ Unaudited |
| RewardMasterchef | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397903 | `0xc0f8c29e3a9a7650a3f642e467d70087819926d6` | ⚠️ Unaudited |
| RewardMasterchef | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397983 | `0xc0f8c29e3a9a7650a3f642e467d70087819926d6` | ⚠️ Unaudited |
| SimpleRewarder | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa6000b7d3634534266a2ecc4d478f5cdc1e65bd3` | ⚠️ Unaudited |
| StandardArbERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | arbitrum | n/a | `0xcafcd85d8ca7ad1e1c6f82f651fa15e33aefd07b` | ⚠️ Unaudited |
| SuperChargerVault_ETH | unknown | project_anchor | own_supporting | 0 | optimism | unit-397688 | `0xb54e1d90d845d888d39dcacbd54a3eec0d8853b2` | ⚠️ Unaudited |
| SuperChargerVault_ETH | unknown | project_anchor | own_supporting | 0 | linea | unit-398128 | `0xe40d544b21b0835e09fd2642c54651499ddcb0c0` | ⚠️ Unaudited |
| SuperChargerVault_mETH | unknown | project_anchor | own_supporting | 0 | mantle | unit-398015 | `0x944ebcd21dea579b5091d141c75ec28bfe054fca` | ⚠️ Unaudited |
| SuperChargerVault_OP | unknown | project_anchor | own_supporting | 0 | optimism | unit-397694 | `0xca7184ea1cb4cf04d49bf219c49a39231299da26` | ⚠️ Unaudited |
| SuperChargerVault_S | unknown | project_anchor | own_supporting | 0 | sonic | unit-397790 | `0xf951175d04c94bc908cab79fd846d3be7d0a37dd` | ⚠️ Unaudited |
| SuperChargerVault_USDC | unknown | project_anchor | own_supporting | 0 | optimism | unit-397664 | `0x18aa88bb25b8f15fdbe329f789dd000bf679753e` | ⚠️ Unaudited |
| SuperChargerVault_USDC | unknown | project_anchor | own_supporting | 0 | linea | unit-398104 | `0x0fd9ce310903d3750ade5cb634860fc7d11b3523` | ⚠️ Unaudited |
| SuperChargerVault_USDT | unknown | project_anchor | own_supporting | 0 | mantle | unit-398009 | `0x65753506657de6d6512df80bcbf437b7e39ae9e3` | ⚠️ Unaudited |
| UChildERC20 | token | non_address_book | non_address_book_inventory (excluded) | 1 | polygon | n/a | `0x1b815d120b3ef02039ee11dc2d33de7aa4a8c603` | ⚠️ Unaudited |
| USDC_StrategyAave | unknown | project_anchor | own_supporting | 0 | optimism | unit-397700 | `0xfd7ed9d3d4fd88595af6a87f798ffdb42b4d7ccb` | ⚠️ Unaudited |
| USDC_VaultV2 | unknown | project_anchor | own_supporting | 0 | optimism | unit-397675 | `0x73504eacb100c7576146618dc306c97454cb3620` | ⚠️ Unaudited |
| USDC.eRewarder | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397877 | `0x666e11ece9e03640d5df20f0bd0518e2c839d04c` | ⚠️ Unaudited |
| Vault_USDC.e | unknown | project_anchor | own_supporting | 0 | sonic | unit-397774 | `0x5db04b6335c26ee147afbec161aff6e90239b4b8` | ⚠️ Unaudited |
| Vault_WETH | unknown | project_anchor | own_supporting | 0 | sonic | unit-397787 | `0xee8318e9d597bf9df6148e86d4e35a8bc14eea88` | ⚠️ Unaudited |
| VoidStrategy_ARB | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397918 | `0xf80475ef92df49527fc63a53b967d8064d476f02` | ⚠️ Unaudited |
| VoidStrategy_BNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-398058 | `0x624b31119f2cc85a7ea778f39e4398b7f3f337c9` | ⚠️ Unaudited |
| VoidStrategy_BTC.b | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397972 | `0xa5e994315157e776fe0c310e48e70eb7fe8a4af3` | ⚠️ Unaudited |
| VoidStrategy_cbBTC | unknown | project_anchor | own_supporting | 0 | base | unit-398149 | `0x5994fa96660dd9c29074f30337cb7fa609c712a5` | ⚠️ Unaudited |
| VoidStrategy_cbBTC | unknown | project_anchor | own_supporting | 0 | base | unit-398157 | `0xa79e2c96db89ceee07784c36ee2c61468d2c97bb` | ⚠️ Unaudited |
| VoidStrategy_ETH | unknown | project_anchor | own_supporting | 0 | polygon | unit-397711 | `0x33706009ce9fb3b96c0f6bd88126b44445e77d5b` | ⚠️ Unaudited |
| VoidStrategy_ETH | unknown | project_anchor | own_supporting | 0 | linea | unit-398123 | `0xb4e0bcda51b29d9c7bdd671f169877cc5f82caa9` | ⚠️ Unaudited |
| VoidStrategy_MATIC | unknown | project_anchor | own_supporting | 0 | polygon | unit-397757 | `0xee840247598726a71c234f6ed9b770dbb8e03f20` | ⚠️ Unaudited |
| VoidStrategy_mETH | unknown | project_anchor | own_supporting | 0 | mantle | unit-398027 | `0xdec7f784f655e9e505ee137492e256685b966636` | ⚠️ Unaudited |
| voidstrategy_OP | unknown | project_anchor | own_supporting | 0 | optimism | unit-397696 | `0xda4b53f75921c109fed0ffd8ad9f22430b4c3438` | ⚠️ Unaudited |
| VoidStrategy_S | unknown | project_anchor | own_supporting | 0 | sonic | unit-397788 | `0xf314fa27066bdde92e6122059b103e8899d0a096` | ⚠️ Unaudited |
| VoidStrategy_USDC | unknown | project_anchor | own_supporting | 0 | base | unit-398161 | `0xb4e0bcda51b29d9c7bdd671f169877cc5f82caa9` | ⚠️ Unaudited |
| VoidStrategy_USDC | unknown | project_anchor | own_supporting | 0 | linea | unit-398113 | `0x7081a38158bd050ae4a86e38e0225bc281887d7e` | ⚠️ Unaudited |
| VoidStrategy_USDC.e | unknown | project_anchor | own_supporting | 0 | sonic | unit-397770 | `0x2df39335b79783b7e02afcf552303602c14f5208` | ⚠️ Unaudited |
| VoidStrategy_usdc.e | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397916 | `0xec041744884b7ff4179e4b046f472dec9ef13bb8` | ⚠️ Unaudited |
| VoidStrategy_USDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-398048 | `0x497abdf1438c673e6a74033098d4eb14a7f3c60f` | ⚠️ Unaudited |
| VoidStrategy_USDT | unknown | project_anchor | own_supporting | 0 | mantle | unit-398016 | `0x9aed3a8896a85fe9a8cac52c9b402d092b629a30` | ⚠️ Unaudited |
| VoidStrategy_WBTC | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397890 | `0x9d71a7b0022b0c402f15808d781f0f31a63abe15` | ⚠️ Unaudited |
| VoidStrategy_WETH | unknown | project_anchor | own_supporting | 0 | sonic | unit-397775 | `0x64edb6450f5a1c6158d76c1e30900fd7d8493636` | ⚠️ Unaudited |
| WithdrawManager_BNB | unknown | project_anchor | own_supporting | 0 | bsc | unit-398035 | `0x2698946ad5988759fa29093e9af99eea12a31bb4` | ⚠️ Unaudited |
| WithdrawManager_cbBTC | unknown | project_anchor | own_supporting | 0 | base | unit-398171 | `0xec054126922a9a1918435c9072c32f1b60cb2b90` | ⚠️ Unaudited |
| WithdrawManager_ETH | unknown | project_anchor | own_supporting | 0 | optimism | unit-397681 | `0x91741863a48f0b29fc0b6d10b3cde2122feb58f7` | ⚠️ Unaudited |
| WithdrawManager_ETH | unknown | project_anchor | own_supporting | 0 | base | unit-398170 | `0xe61acb121a2b538df495a85c4e50dd8581de4ed0` | ⚠️ Unaudited |
| WithdrawManager_ETH | unknown | project_anchor | own_supporting | 0 | linea | unit-398117 | `0x894edf346f121bd406442cfaee29a43c80744158` | ⚠️ Unaudited |
| WithdrawManager_mETH | unknown | project_anchor | own_supporting | 0 | mantle | unit-398014 | `0x8ea0eb2cebda4d7c88183ac8fbf3a9ae6ae07a5c` | ⚠️ Unaudited |
| WithdrawManager_OP | unknown | project_anchor | own_supporting | 0 | optimism | unit-397663 | `0x0fad8f10746171c0616ce4b7b4e2e9439a9a02e2` | ⚠️ Unaudited |
| WithdrawManager_S | unknown | project_anchor | own_supporting | 0 | sonic | unit-397778 | `0x87bca268e282dbc00477a24883542f87d40deb5c` | ⚠️ Unaudited |
| WithdrawManager_USDC | unknown | project_anchor | own_supporting | 0 | optimism | unit-397666 | `0x2500ad59b46ff4b96f8e1eac3fe1f78eaf955777` | ⚠️ Unaudited |
| WithdrawManager_USDC | unknown | project_anchor | own_supporting | 0 | base | unit-398156 | `0xa1bb8a8ed84a37a8c93a10df5153e612f58e34e5` | ⚠️ Unaudited |
| WithdrawManager_USDC | unknown | project_anchor | own_supporting | 0 | linea | unit-398120 | `0xaacf2201198c8bf5f2dcd5a187754b4cb9cd9198` | ⚠️ Unaudited |
| WithdrawManager_USDT | unknown | project_anchor | own_supporting | 0 | bsc | unit-398044 | `0x3cbb7f9a4e1e8a8430f1d400df269b80b6872deb` | ⚠️ Unaudited |
| WithdrawManager_USDT | unknown | project_anchor | own_supporting | 0 | mantle | unit-398026 | `0xdda9ef09f4d271715e2d337f71d0fc34b316c7eb` | ⚠️ Unaudited |
| WOO OFT | unknown | project_anchor | own_supporting | 0 | base | unit-398174 | `0xf3df0a31ec5ea438150987805e841f960b9471b6` | ⚠️ Unaudited |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | optimism | unit-397687 | `0xaf558f888e138ca9416111ec7ae8e28354cd9239` | ⚠️ Unaudited |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | bsc | unit-398079 | `0xaf558f888e138ca9416111ec7ae8e28354cd9239` | ⚠️ Unaudited |
| WooAccessManager | governance | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397737 | `0x925afa2318825fcac673ef4ef551208b125dd965` | ⚠️ Unaudited |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | polygon | unit-397746 | `0xaf558f888e138ca9416111ec7ae8e28354cd9239` | ⚠️ Unaudited |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | sonic | unit-397780 | `0xaf558f888e138ca9416111ec7ae8e28354cd9239` | ⚠️ Unaudited |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | mantle | unit-398019 | `0xaf558f888e138ca9416111ec7ae8e28354cd9239` | ⚠️ Unaudited |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | base | unit-398159 | `0xaf558f888e138ca9416111ec7ae8e28354cd9239` | ⚠️ Unaudited |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397898 | `0xaf558f888e138ca9416111ec7ae8e28354cd9239` | ⚠️ Unaudited |
| WooAccessManager | governance | project_anchor | own_supporting | 0 | arbitrum | unit-397907 | `0xd14a997308f9e7514a8fea835064d596cdcaa99e` | ⚠️ Unaudited |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | linea | unit-398122 | `0xaf558f888e138ca9416111ec7ae8e28354cd9239` | ⚠️ Unaudited |
| WooBuyBackSwap | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397891 | `0xa186555f7b5a60c0d103c84f0bcb98fbd27ae24a` | ⚠️ Unaudited |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | optimism | unit-397693 | `0xc45b55032cafeaff3b8057d52758d8f8211da54d` | ⚠️ Unaudited |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | polygon | unit-397751 | `0xc45b55032cafeaff3b8057d52758d8f8211da54d` | ⚠️ Unaudited |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | sonic | unit-397781 | `0xc45b55032cafeaff3b8057d52758d8f8211da54d` | ⚠️ Unaudited |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | mantle | unit-398023 | `0xc45b55032cafeaff3b8057d52758d8f8211da54d` | ⚠️ Unaudited |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | base | unit-398166 | `0xc45b55032cafeaff3b8057d52758d8f8211da54d` | ⚠️ Unaudited |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397904 | `0xc45b55032cafeaff3b8057d52758d8f8211da54d` | ⚠️ Unaudited |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | linea | unit-398126 | `0xc45b55032cafeaff3b8057d52758d8f8211da54d` | ⚠️ Unaudited |
| WOOFiVaultV2 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397923 | `0x0c90447b662c2fcb62dc104dfc4563d0dd4be49e` | ⚠️ Unaudited |
| WOOFiVaultV2 | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397987 | `0xc48ab731967a704e85a406dd619d29d62de2e112` | ⚠️ Unaudited |
| WooLendingManager | core_logic | project_anchor | own_supporting | 0 | polygon | unit-397701 | `0x01e42ce7cdcb7a2eaae0bb8bdce52f0bbb63f139` | ⚠️ Unaudited |
| WooLendingManager | core_logic | project_anchor | own_supporting | 0 | polygon | unit-397723 | `0x697c97a37bc00c2306f2b08ca14f3d55db6ffccd` | ⚠️ Unaudited |
| WooLendingManager | core_logic | project_anchor | own_supporting | 0 | polygon | unit-397742 | `0x9f46a7f7afd5a595c782e57b5dae1fcc01bff18d` | ⚠️ Unaudited |
| WooLendingManager | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397875 | `0x5c7ff24fa7af62bc25ad6747a6193183b4bb7bc5` | ⚠️ Unaudited |
| WooLendingManager | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397879 | `0x6fc2c9f904a98caeeef6aaba6de625b5698f3f08` | ⚠️ Unaudited |
| WooLendingManager | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397881 | `0x79a5453865a39f67d3ffc7964cd760f1763be767` | ⚠️ Unaudited |
| WooLendingManager | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397920 | `0xfeecedbc3c292db79347473a2b976a463c3ac2d6` | ⚠️ Unaudited |
| WooLendingManager | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-397940 | `0x385e063dea8908d06be024de85da5b8da4b10f73` | ⚠️ Unaudited |
| WooLendingManager | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-397956 | `0x697c97a37bc00c2306f2b08ca14f3d55db6ffccd` | ⚠️ Unaudited |
| WooLendingManager | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-397989 | `0xc8ec7f48a82a07d95110ff26faacde9757dd9dc7` | ⚠️ Unaudited |
| WooLendingManager_USDC.e | unknown | project_anchor | own_supporting | 0 | sonic | unit-397783 | `0xcc96ba33eae1147ba8b0c73d3dd4cee40d681ee9` | ⚠️ Unaudited |
| WooLendingManager_WETH | unknown | project_anchor | own_supporting | 0 | sonic | unit-397779 | `0x91741863a48f0b29fc0b6d10b3cde2122feb58f7` | ⚠️ Unaudited |
| WooOFT | unknown | project_anchor | own_supporting | 0 | sonic | unit-397789 | `0xf3df0a31ec5ea438150987805e841f960b9471b6` | ⚠️ Unaudited |
| WooOFT | unknown | project_anchor | own_supporting | 0 | mantle | unit-398028 | `0xf3df0a31ec5ea438150987805e841f960b9471b6` | ⚠️ Unaudited |
| WooOFT | unknown | project_anchor | own_supporting | 0 | linea | unit-398130 | `0xf3df0a31ec5ea438150987805e841f960b9471b6` | ⚠️ Unaudited |
| WooOFTAdapter | unknown | project_anchor | own_supporting | 0 | ethereum | unit-397659 | `0xad6ca80fe4d3c54f6433ff725d744772aae87711` | ⚠️ Unaudited |
| WooPPv2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-397721 | `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` | ⚠️ Unaudited |
| WooPPV2 | unknown | project_anchor | own_supporting | 0 | monad | unit-397762 | `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` | ⚠️ Unaudited |
| WooPPV2 | unknown | project_anchor | own_supporting | 0 | sonic | unit-397773 | `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` | ⚠️ Unaudited |
| WooPPV2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-398177 | `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` | ⚠️ Unaudited |
| WooPPV2 | unknown | project_anchor | own_supporting | 0 | mantle | unit-398008 | `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` | ⚠️ Unaudited |
| WooPPV2 | unknown | project_anchor | own_supporting | 0 | linea | unit-398111 | `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` | ⚠️ Unaudited |
| WooPPV2 | unknown | project_anchor | own_supporting | 0 | berachain | unit-398135 | `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` | ⚠️ Unaudited |
| WooPPV2.2 | unknown | project_anchor | own_supporting | 0 | optimism | unit-397672 | `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` | ⚠️ Unaudited |
| WooPPV2.2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-398054 | `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` | ⚠️ Unaudited |
| WooPPV2.2 | unknown | project_anchor | own_supporting | 0 | base | unit-398148 | `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` | ⚠️ Unaudited |
| WooPPV2.2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397873 | `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` | ⚠️ Unaudited |
| WooPPV2.2 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397951 | `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` | ⚠️ Unaudited |
| WooracleV2_2 | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-397708 | `0x2a8ede62d0717c8c92b88639ecf603fdf31a8428` | ⚠️ Unaudited |
| WooracleV2_2 | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-397905 | `0xcf4ea1688bc23dd93d933eda535f8b72fc8934ec` | ⚠️ Unaudited |
| WooracleV2.1 | unknown | project_anchor | own_supporting | 0 | bsc | unit-398036 | `0x2a375567f5e13f6bd74fda7627df3b1af6bfa5a6` | ⚠️ Unaudited |
| WooracleV2.1 | unknown | project_anchor | own_supporting | 0 | sonic | unit-397769 | `0x2a375567f5e13f6bd74fda7627df3b1af6bfa5a6` | ⚠️ Unaudited |
| WooracleV2.1 | unknown | project_anchor | own_supporting | 0 | mantle | unit-398004 | `0x2a375567f5e13f6bd74fda7627df3b1af6bfa5a6` | ⚠️ Unaudited |
| WooracleV2.1 | unknown | project_anchor | own_supporting | 0 | base | unit-398144 | `0x2a375567f5e13f6bd74fda7627df3b1af6bfa5a6` | ⚠️ Unaudited |
| WooracleV2.1 | unknown | project_anchor | own_supporting | 0 | linea | unit-398105 | `0x2a375567f5e13f6bd74fda7627df3b1af6bfa5a6` | ⚠️ Unaudited |
| WooracleV2.2 | unknown | project_anchor | own_supporting | 0 | optimism | unit-397684 | `0xa43305ce0164d87d7b2368f91a1dcc4ebda75127` | ⚠️ Unaudited |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | optimism | unit-397676 | `0x7616614084e040028d6a61c0f3a9699c121a6500` | ⚠️ Unaudited |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | polygon | unit-397727 | `0x7616614084e040028d6a61c0f3a9699c121a6500` | ⚠️ Unaudited |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | monad | unit-397763 | `0x7616614084e040028d6a61c0f3a9699c121a6500` | ⚠️ Unaudited |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | sonic | unit-397777 | `0x7616614084e040028d6a61c0f3a9699c121a6500` | ⚠️ Unaudited |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-398178 | `0x7616614084e040028d6a61c0f3a9699c121a6500` | ⚠️ Unaudited |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | mantle | unit-398010 | `0x7616614084e040028d6a61c0f3a9699c121a6500` | ⚠️ Unaudited |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | base | unit-398152 | `0x7616614084e040028d6a61c0f3a9699c121a6500` | ⚠️ Unaudited |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397880 | `0x7616614084e040028d6a61c0f3a9699c121a6500` | ⚠️ Unaudited |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | linea | unit-398114 | `0x7616614084e040028d6a61c0f3a9699c121a6500` | ⚠️ Unaudited |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | berachain | unit-398136 | `0x7616614084e040028d6a61c0f3a9699c121a6500` | ⚠️ Unaudited |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | optimism | unit-397670 | `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` | ⚠️ Unaudited |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | bsc | unit-398050 | `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` | ⚠️ Unaudited |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | polygon | unit-397720 | `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` | ⚠️ Unaudited |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | sonic | unit-397771 | `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` | ⚠️ Unaudited |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | mantle | unit-398007 | `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` | ⚠️ Unaudited |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | base | unit-398147 | `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` | ⚠️ Unaudited |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | arbitrum | unit-397870 | `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` | ⚠️ Unaudited |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | linea | unit-398110 | `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` | ⚠️ Unaudited |
| WooStakingProxy | proxy | project_anchor | own_supporting | 0 | ethereum | unit-397661 | `0xba91ffd8a2b9f68231eca6af51623b3433a89b13` | ⚠️ Unaudited |
| WooStakingProxy | proxy | project_anchor | own_supporting | 0 | optimism | unit-397690 | `0xba91ffd8a2b9f68231eca6af51623b3433a89b13` | ⚠️ Unaudited |
| WOOStakingProxy | unknown | project_anchor | own_supporting | 0 | bsc | unit-398083 | `0xba91ffd8a2b9f68231eca6af51623b3433a89b13` | ⚠️ Unaudited |
| WooStakingProxy | proxy | project_anchor | own_supporting | 0 | polygon | unit-397749 | `0xba91ffd8a2b9f68231eca6af51623b3433a89b13` | ⚠️ Unaudited |
| WooStakingProxy | proxy | project_anchor | own_supporting | 0 | avalanche | unit-397943 | `0x3bd96847c40de8b0f20da32568bd15462c1386e3` | ⚠️ Unaudited |
| WooStakingVault | core_logic | project_anchor | own_supporting | 0 | polygon | unit-397739 | `0x9bcf8b0b62f220f3900e2dc42deb85c3f79b405b` | ⚠️ Unaudited |
| WooStakingVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397886 | `0x9321785d257b3f0ef7ff75436a87141c683dc99d` | ⚠️ Unaudited |
| WooStakingVault | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-397990 | `0xcd1b9810872aec66d450c761e93638fb9fe09db0` | ⚠️ Unaudited |
| WooStakingVault 1.0 | unknown | project_anchor | own_supporting | 0 | bsc | unit-398038 | `0x2aeab1a338bcb1758f71bd5af40637cee2085076` | ⚠️ Unaudited |
| WooSuperChargerVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397703 | `0x0ba6c34af9713d15141dcc91d2788c3f370ecb9e` | ⚠️ Unaudited |
| WooSuperChargerVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397719 | `0x404b181eca20519b68f3a7ee68ab65f6aba9d503` | ⚠️ Unaudited |
| WooSuperChargerVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397735 | `0x8ea0eb2cebda4d7c88183ac8fbf3a9ae6ae07a5c` | ⚠️ Unaudited |
| WooSuperChargerVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397874 | `0x5a6b073e090388c909b9f3bf9d9323be908cad62` | ⚠️ Unaudited |
| WooSuperChargerVault | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397900 | `0xba452bcc4bc52af2fe1190e7e1dbe267ad1c2d08` | ⚠️ Unaudited |
| WooSuperChargerVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397963 | `0x86a6391d5d7c02245927e2dc0cbfa3e5f1b9abc7` | ⚠️ Unaudited |
| WooSuperChargerVault | core_logic | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-398002 | `0xfc0e57b5f8adcadc5e6e37578bb9aa30cee312af` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | bsc | unit-398055 | `0x5cb9ba4a6f05c4125d61172e1b2c1dbe3afb3158` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | bsc | unit-398065 | `0x7eb8d4ccfdbd9df8d3520e9c5b5edf6a5cbe4cad` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | polygon | unit-397704 | `0x1109e03516eb25eab2150d0b274b8d4f5f3cf549` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x90a2aadba560040e604ca57ca75760ab89abd085` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | polygon | unit-397741 | `0x9dd5dd86b978f17628f01307a83347d9ec9b0699` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | polygon | unit-397756 | `0xedbb74da05d58b22f07184bb79ed9124791799ac` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | base | unit-398146 | `0x44df096d2600c6a6db77899db3de3aecff746cb8` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | base | unit-398162 | `0xb772122c4a37fe1754b46ab1799b909351e8cb43` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397883 | `0x7f3f2a499c00c2d7018300f99a232896fd295bb1` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397895 | `0xa780432f495e5c6851fd7903fe49ad77c952f7d8` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | arbitrum | unit-397908 | `0xd2fdab19b94b59c5f0e75dd9813365df815b56b1` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-397925 | `0x11b29ae3037f4526e4aa56952318e0d01ada836a` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-397927 | `0x1cd7b33faf4f172146bcbb841c7addc96802e6c4` | ⚠️ Unaudited |
| WooSuperChargerVaultV2 | core_logic | project_anchor | own_supporting | 0 | avalanche | unit-397962 | `0x866810349b2e28e411669911bb0babb06cc60625` | ⚠️ Unaudited |
| WooSuperChargerVaultV2_USDC.e | unknown | project_anchor | own_supporting | 0 | sonic | unit-397776 | `0x758231b7d5204d08634dd3f9fcdf49fc17355d33` | ⚠️ Unaudited |
| WooSuperChargerVaultV2_WETH | unknown | project_anchor | own_supporting | 0 | sonic | unit-397768 | `0x1ddd225ef26714bb8055ddceaee2589ba09c89ed` | ⚠️ Unaudited |
| WootradeNetwork | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x4691937a7508860f876c9c0a2a617e7d9e945d4b` | ⚠️ Unaudited |
| WooWithdrawManager | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397715 | `0x39467a0debf360a82f83880f13ebdf7f0c2ec735` | ⚠️ Unaudited |
| WooWithdrawManager | operational_periphery | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397752 | `0xcf6ce5fd6bf28bb1aeac88a55251f6c840059de5` | ⚠️ Unaudited |
| WooWithdrawManager | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-397882 | `0x7de3fce3de3cdc34595eed74773cd47b84bca340` | ⚠️ Unaudited |
| WooWithdrawManager | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-397914 | `0xe77adf3936f70a2ed44f26ced01d26c1430ead6a` | ⚠️ Unaudited |
| WooWithdrawManagerV2 | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-397713 | `0x382a9b0bc5d29e96c3a0b81ce9c64d6c8f150efb` | ⚠️ Unaudited |
| WooWithdrawManagerV2 | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-397718 | `0x3fe2c827ff572b8fe03b7d16695c88f21448b3b9` | ⚠️ Unaudited |
| WooWithdrawManagerV2 | operational_periphery | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6f09ae4925739453d7c8c9a22fd07585148dfc01` | ⚠️ Unaudited |
| WooWithdrawManagerV2 | operational_periphery | project_anchor | own_supporting | 0 | polygon | unit-397731 | `0x7f78213da92552d00bd676466ab2ef8a9287fd4c` | ⚠️ Unaudited |
| WooWithdrawManagerV2 | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-397902 | `0xbfe3d22b223909a06469854e7af374ab449f09ac` | ⚠️ Unaudited |
| WooWithdrawManagerV2 | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-397906 | `0xd05b953cfd75426711a904f76eb3241bad5d03ac` | ⚠️ Unaudited |
| WooWithdrawManagerV2 | operational_periphery | project_anchor | own_supporting | 0 | arbitrum | unit-397913 | `0xe76c97897a9c3f8aaafc3fe86457fe460553d3fe` | ⚠️ Unaudited |
| WooWithdrawManagerV2 | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-397926 | `0x1bb2ebecfbb4f78d83fb0a21cb415383779602c9` | ⚠️ Unaudited |
| WooWithdrawManagerV2 | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-397959 | `0x755e4af9e77a91999693947b02975c584d1b56f6` | ⚠️ Unaudited |
| WooWithdrawManagerV2 | operational_periphery | project_anchor | own_supporting | 0 | avalanche | unit-397970 | `0xa429b468d222bb31ff256f3d08ddc0a2d8a59664` | ⚠️ Unaudited |
| WooWithdrawManagerV2_USDC.e | unknown | project_anchor | own_supporting | 0 | sonic | unit-397786 | `0xd5befe3fecdf1c941c58119a4e395806eea0c343` | ⚠️ Unaudited |
| WooWithdrawManagerV2_WETH | unknown | project_anchor | own_supporting | 0 | sonic | unit-397785 | `0xd1d3a7d0ca508998de5cbfb86cecd0546f0e287c` | ⚠️ Unaudited |

### ✅ Verified by Bytecode + Audited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ⚠️ Verified by Bytecode + Unaudited (0)

Source not verified, but runtime bytecode matches a verified implementation (bytecode match).

- None

### ❓ Unverified (1400)

Source code not publicly verified. These contracts cannot be audited without decompilation or project cooperation.

| Contract Name | Role | Address-Book Class | Surface | Proxy Deployments | Chain | Deployment Unit | Deployments | Audit Status |
|---|---|---|---|---:|---|---|---|---|
| FarmingVault_ETH | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397846 | `0xc5d8fc6a7e72ca1e5041d528feef42d7bd8a770c` | ❓ Unverified |
| FarmingVault_USDC | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397838 | `0x805b06c952e824ef7f818893ff37c8b0c2db502a` | ❓ Unverified |
| FarmingVault_ZK | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397840 | `0x9af29b3e849e187e30d622058417c094f94875ce` | ❓ Unverified |
| IntegrationHelper (token info) | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397835 | `0x636dfeb023463f176f87d61e3b604231986bd935` | ❓ Unverified |
| IntegrationHelper (token info) | unknown | project_anchor | own_supporting | 0 | berachain | unit-398131 | `0x14b435b68e031226acc4d328a69e294686c3176e` | ❓ Unverified |
| LendingManager_ETH | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397844 | `0xaeed9101c760a2a306b6b9ed774a775ecc9686f3` | ❓ Unverified |
| LendingManager_USDC | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397828 | `0x17927d09b8033e2f6e37c488ea6dc4c339ef1f6a` | ❓ Unverified |
| LendingManager_ZK | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397831 | `0x2ace3a5f4c7384e0c7a95333e81f708b6b534873` | ❓ Unverified |
| SuperChargerVault_ETH | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397829 | `0x1d686250bbffa9fe120b591f5992dd7fc0fd99a4` | ❓ Unverified |
| SuperChargerVault_USDC | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397848 | `0xdca324bdd4ebb6b8a1802959324ce125b5d57921` | ❓ Unverified |
| SuperChargerVault_ZK | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397839 | `0x85167f7f3f367e0be7b4d3a8c2b1648f56dfdb45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0127ee938473d0fbfb78525bd59608a5fdbc0416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x0213b4dac5333049e82c960668033b6f5177e856` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-397653 | `0x044c08639bd59beb4f6ec52c0da6cd47283534e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x245e633b3fddd61e4a0a4282767bdacfa84a0b14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x2feddec88186f58b0573bd8de38aac1b6cb884bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0x86ac13bec3494409169140e43e3505dc1418fadb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-397657 | `0x9d1a92e601db0901e69bd810029f2c14bcca3128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xbe07e5eb5e4b6ca700586b41e4ecab614ad3a05b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xc349fa08a192050bc6ac3b4d0fca0fb80c8df712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xca10e8825fa9f1db0651cd48a9097997dbf7615d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | ethereum | n/a | `0xd4dcc2a9838282094b3c1a2c92245eb2cf15d5bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | ethereum | unit-397662 | `0xe47fec1c72850d867a1655c4c5902de7728ca205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0127ee938473d0fbfb78525bd59608a5fdbc0416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x01a6f15b030ed349dc5395239c7d37bb91121c84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0213b4dac5333049e82c960668033b6f5177e856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x0ad1a337536ad14734a3ccbca8f6fd22e6b7593f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x149bc8358c102e339d813a163fbd02cbe800fe3d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x1553a071c135137610699f93c9834e8165ecacca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x15ba47e540e1b197e30d16a93b0c568b251629c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x17e147c0b7e828e3a1fdb9ebc6e3f0a6502cef27` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x22d2adf60bf872ae2c615fef67486351f3bde99c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x23044115a7cb387052c73f65c6f2f7f575f7d718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x245e633b3fddd61e4a0a4282767bdacfa84a0b14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x27021e71ef9dd52c82193294ce50e2fafc4b87bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2a375567f5e13f6bd74fda7627df3b1af6bfa5a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2cc9938584efa3bdf0fd19ddbb1828a672ae2376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2fe5e5d341cffa606a5d9da1b6b646a381b0f7ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x2feddec88186f58b0573bd8de38aac1b6cb884bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x35e3fe4932f19d9195b059118235d34e47e77237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x3645e9236736f132c8714a5c1e63a9869180f755` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x36b680fb76dad86bcb2cefc83fae05e3fe147706` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x40b3407bd9d85b8e6442c8eded63cbb78f1c99e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x44df096d2600c6a6db77899db3de3aecff746cb8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-397668 | `0x464959ad46e64046b891f562cff202a465d522f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x46a7213343e68809d04cd1c88e7fd1dd606cd86a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x46d2c7f5c857c7f7bfe6f65b7b40f3678edc4a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4925329fac528987b50685429666e0c2e0b21d73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x4bea23fc541c5bf0909d792a60e9bd0740657a99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x503a3087bf5a77be3fc0006beda7c65868d71f59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x505ac728645d2ef84380961f72baea500b3efa3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5a988a59beb132594ac22d5eab6fd2d0143d4f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x5c551a0a8df97fda29da9cc2194f5a913ac6d62e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-397673 | `0x5ec696ecf3fd139ec5b2c6d85bd87ac5cdb23cfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x622a78c570b0ec091d0f5e1383528aef5e153291` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x64edb6450f5a1c6158d76c1e30900fd7d8493636` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-397674 | `0x655e2fe03fe19327239b5294a556965192386a7b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6aebc663dd6b8de86129e671baf68586fb0c8fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x6d3693269e6d6db41421322c75b22a7c5b5d563b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x73bd3c7e44e1c228713a24448e9b7250391aca15` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x755e4af9e77a91999693947b02975c584d1b56f6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x758231b7d5204d08634dd3f9fcdf49fc17355d33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7b46cd2e35171fbcb2e55024b4430ec47f9f3c00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7b53aedf58d2ed087a3dd690201245a61de3c66c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7b5fdb8c89a616d319202704b0ea18b168654281` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7d8f2090f2cfd083af800712fe2d04289252add3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x7f25714de36da23c96593e24261c859da4f950ac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-397678 | `0x81ab3492bacfff639dde60763ccf9e348117075d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x83b9047c18e55a0cda6027fb0582c4de658d5ea0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-397679 | `0x84b76efe02a8a151af697a62f7ba59fb082b7e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8693f9701d6db361fe9cc15bc455ef4366e39ae0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x86ac13bec3494409169140e43e3505dc1418fadb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x87bca268e282dbc00477a24883542f87d40deb5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x894edf346f121bd406442cfaee29a43c80744158` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8a68849c8a61225964d2cae170fdd19ec46bf246` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8c603050d7a913b6f63836e07ebf385a4a5736e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8d7eaa4f6deb560b67a134cc0be191031cdf3804` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x8e5ddc0106059e6a31ed802aaef91e4600e103d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9160435be009bab2ec23ebe3ef274d97ae0985b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x94420f8f87f6eead3d21117ba2ba327c765583fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x9812968f702b4870800508980e39ce7fe74a5de1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0x99110693cc2cb10552ad69c41786c9046efadf74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa058798cd293f5acb4e7757b08c960a79f527699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa1bb8a8ed84a37a8c93a10df5153e612f58e34e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xa397fba8c5c1aef9137601c185f6ab0e9cf43662` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xac78b38869f0f3b4ecb25d5c3a017147ec6ae7d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xae290a17745789d785d38b60a43a18ce68050772` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb190933417f3921b95e7fe9f8c1335091eab1e73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xb3cd4c2f1791c0d17bfa061c932224337ea06349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbbdd3228246dcb05c8f0c154adc1d871034c6ea2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbe07e5eb5e4b6ca700586b41e4ecab614ad3a05b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-397691 | `0xbeae1b06949d033da628ba3e5af267c3e740494b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xbfe3d22b223909a06469854e7af374ab449f09ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc2c0e0ab54ef5e88bb39b890e69ddba31fa69492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc349fa08a192050bc6ac3b4d0fca0fb80c8df712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc3f15dafd6ba1becbbc7eaa0f733065065d0848f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc4abb9aef545bd01f6e7a915fa99e62a65393cca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc67f0944cce4da3030af3d6f4dac851551abdb8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xc7f6fc03539fbf6fa79270eda7d79375c65028dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xca10e8825fa9f1db0651cd48a9097997dbf7615d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcb2d605a252707a6322a34b8dc6cf0ae1db48012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcc96ba33eae1147ba8b0c73d3dd4cee40d681ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcdc155227339cb436f3777877d102b4561f20578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcec7e58cf02749b2592bb3c0c392737eec3f9636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcf8b7020c89795eab2b82889ef128fc5d55e457d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xcfe82450b4cd92023a8e184ac75b2ebb24cedb10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd0da7f6b35441693dce48b06339c0daa22593bd9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd1778f9df3eee5473a9640f13682e3846f61febc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd4dcc2a9838282094b3c1a2c92245eb2cf15d5bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd589484d3a27b7ce5c2c7f829eb2e1d163f95817` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xd871a0d07422791abccf57a20e8cfa59bb36dbfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xde87b5db1f82d8076fabb35f19ca83dabaea92e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe04b4045fad886272bcdc3b1c37f04d49915e8a0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe33a533d57ef84fc39be01bf3c3776a33e995646` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe40d544b21b0835e09fd2642c54651499ddcb0c0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-397697 | `0xe47fec1c72850d867a1655c4c5902de7728ca205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xe5d0ef9d462abb91bf88cb1d5225490a5d322003` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-397698 | `0xeaf1ac8e89ea0ae13e0f03634a4ff23502527024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xecfd979cb06f877523e8f9107acd1c45c12f61c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xed9e3f98bbed560e66b89aac922e29d4596a9642` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | optimism | unit-397699 | `0xeec6025fc35af612f6028bb454f875085db8ed8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf048fb8e3b42105a5eda5dba79c94a7ec18b4ec2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xf9010da2e667f666cc3d18282ba47e41aa1d456f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | optimism | n/a | `0xfeecedbc3c292db79347473a2b976a463c3ac2d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0121029625e0d90259f700d10f41d064b887665b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0127ee938473d0fbfb78525bd59608a5fdbc0416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x01bfe1b6ec059806d31d97c00ae6cd5b27179045` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398030 | `0x0208d735576b3d974024237393f4617285bf0563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0213b4dac5333049e82c960668033b6f5177e856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0217e0b96a65261be5a559083409980b2323dd31` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x02aa89f2f7483a0832ffeeb0367671f55feb082b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x04577da9e61a61d931ac8c8a6fedc8f604121b2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0470730396f086963e09f85c293e439a1d2081ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x089b07a5a5373a8c86bcfa111baa1ff010d98d55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0972a0fa37984e7ff2aefa53a0bb10dce535aa73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398032 | `0x0ba6c34af9713d15141dcc91d2788c3f370ecb9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c4d6a83bd88e603115b01e6a0258915a9f09a0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c6020b16f98b1dfc65dbae24a022af08ba0c3a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x0c6c191c14f91dee8bc6390e3f33bc81e7209cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x10c24658815585851a8888f059cb4338790023f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x114f84658c99aa6ea62e3160a87a16deaf7efe83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x13afd5e3915096b4a53d23ece1a9b4bf1ad8f524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15ad43c8217e01c9ad1625a3f8340e804903035b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x15e38afe987430eaa3182bda846df3e67b22ed7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x160020b09ded3d862f7f851b5c50632bcf2062ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1736b8f6a110a435c23c3d06520c17566dfcee7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x17f377a82ea2bf2e957a2d74ef3b3a815d9b3ef2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1919acffa688a4c2b7afdb7cdd8421dd1d27e262` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1a8e012ef190c8412048a916d042eb62cbfe87e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1ae7a52b874576951ae5bf3f35c878a4422a1df2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b67b9e4626ef68ad9c1eb8b19af82bdd4990168` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1b918213de5cd6bf57ef2db09487e622f8ae25a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d32f4993fbad1ff57861869f3c93c9978ab43f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x1d464ce9d44e82860da89eaa1e3075dea95b0e06` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398033 | `0x202b5799d0d81244657833f70ccee053bc9f13d9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398034 | `0x2209a02638a71cde360e1febd704badaca112361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2217c57c91e3c6c55a90b4ca280f532d65590559` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x245e633b3fddd61e4a0a4282767bdacfa84a0b14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x246174da98cca6c562b3e0fa23982846ff892054` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x24d48d046ce95db2f55c3bdd75e572788f0c3027` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25859434652e901ac2fb207f298a91c7e9576bff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x258e37c89085a9393b4bb38fa0a2a1f007283c29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x25956044904ed8913f1d8da26c1e1df6ddcf8ace` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x267accd0c2e8b2c59dad81e6a80dcd4ae5484686` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x286ab107c5e9083dbed35a2b5fb0242538f4f9bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2a74fc2b8258cbc9d405af087ff50d828d672570` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398037 | `0x2a8b29301c910ae1ae17156e4f7b01eb8f72eb05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2addb6a5a38714f8ccc7e0fd0405877856bd6b25` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398039 | `0x2caa3e79bc0e23abf31dfbcebae992bcad4e7c7a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398040 | `0x2cf1173a0000c9cea2fd0ec3bfe666abd9a9e1ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2d3d9eae8c8b7211b176c28ec7f37524ca17ca18` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2df39335b79783b7e02afcf552303602c14f5208` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398041 | `0x2f22c381a20e228306085aa3dea15c6992254d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x2feddec88186f58b0573bd8de38aac1b6cb884bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3009e81e6ceb4c882079c6256bc2c85a738c9e7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x30e9ccec2ac79be0d8da59ab3fd075507cf05df9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31b75d2797294c4b675ff827dba261e12cec8383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x31fb92bd8d8fa8851ef6081c1956ae3eadde956d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x360e41201597a82007046329c021abc9d4ae0b6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36379aed344a582628b1377c219a4d0e73f2cee4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36dbf060dddedb1aaebd9553cf27df03a5746603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x36ee570a823cca8fcb5797edc7397de71b4a138f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x39373bd5a3cdcc2c59657d9a9fbb9afe54cce427` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b5e13348b8c0176e19b94cef13716e61075fef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3b7efe99fde8a18a74d227ed8fa1780bfe81c7ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3be04d858a1d39772c5256e79413e8a6f59db10a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398043 | `0x3c1fc3ca2f20ebbc59f528bbcaabbc7690aa967d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x3fe2c827ff572b8fe03b7d16695c88f21448b3b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4333f7301bf02a426e72c6e76663346923fe7fb6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398046 | `0x44ceb176612e0b536666a1ede91ccca93d4ae316` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x45c2ad75065d3753bf1a20876e1927ce91cc772a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398047 | `0x45c3a5cb452e5468e47c53a8c71e30fdacf73239` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x468f46137c1d1c5eb1414c2f9595732c2e383dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x46d2c7f5c857c7f7bfe6f65b7b40f3678edc4a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x471d7515fa3ff681acac5a75ea2aa2543a2b7949` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x479dbcb9421fa23a8df33762e9c356f0e30a7e45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4926eb102d0e5ff65aac336ba028fb77c1ee7e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4944e321c956d29fdcbab58596a82433de83fe07` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x499614299c1e6b104774ff161fb3044eb1c1cd0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4a7bbb596552f823f4e00cd88867fcf30a56c943` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398049 | `0x4b11b9bfaafa840c436a1dddc13d3738c8ebfd62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4b5522b611c8cc5d186f3e1b64682add0308b51a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4e0f6da18348dc4cb0a7bc02fa3efe479d7d0ebd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f307d6daccd4b03b134d5f29af0eec64985b3af` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398051 | `0x4f3e0b02f50937bc21f523f1dd430a34caf4de98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x4f3f2066e6e849b9fdc5b80dbc94c6127b679e04` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398052 | `0x4f4fd4290c9bb49764701803af6445c5b03e8f06` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50a2568855516714bc6cf393a19e90984872d939` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x50f347d0c33e5b12cb76daa64ebc0f09d0d0ecc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x51451cced34f89916853165915c5b586c700e3db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x53d2728a6cceb9f025eb22c41c1d6406fa04d8de` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398053 | `0x53e255e8bbf4edf16797f9885291b3ca0c70b59f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x59de3b49314bf5067719364a2cb43e8525ab93fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a6b073e090388c909b9f3bf9d9323be908cad62` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5a988a59beb132594ac22d5eab6fd2d0143d4f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5bf68e0cc21f2cd6277d13c4ce51520be236f34e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5cefdab6d57100564687ba6f2dc5b9f797382fd3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5d358aa2728e032e42222239da19777c893b21c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5db04b6335c26ee147afbec161aff6e90239b4b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398056 | `0x5edd5ebf88875e508f908113d15c2d1f54b5f4d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f000297bc33775f8d23ccdab8786138a2a38a2e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x5f0a9d4d8976bec9cc994c877e8dc3cc202353ad` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398057 | `0x5f74a311393e45cfc1ba1a11ee60d76c9e6018a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x616289a04bbdb5d491e1bdf549241149eac97b19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6579cf0e92a191ec81bca73ef59b1996e6591a1d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6641959fe5eed7166f2254cf04b0d20c96776d9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x679c182e4a82aae03dd9d24418d361b4d8a726e6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x684b7137fb412b5e82b4c0cfe72faba8e1c409eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6947ccd740f3cc776c98923a0954fe04e1f78e37` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6aebc663dd6b8de86129e671baf68586fb0c8fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6b1bca632fec2f32615688cf18ac391cbdc3ac72` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398059 | `0x6b6fbec7934b104e81b2046d24a990e03e17afdc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x6c6ff958e31eef3b81d62faf15f80ff2f1dc400f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70dd6dbfe0477dc2034f6141fb0168b47f48df56` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x70f9c8885f03e68cae7a48ee86cd6089ccc6b795` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398060 | `0x721986200aca84ea1c69e009e384ba5544030d7c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x72dc7fa5eeb901a34173c874a7333c8d1b34bca9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x74486b10a8e512169706a899929b2142293c7c73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398061 | `0x747f99d619d5612399010ec5706f13e3345c4a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x758231b7d5204d08634dd3f9fcdf49fc17355d33` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398062 | `0x758a1f62fb4f828ef6e1b7766eb0febbea5e301e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x76885f46e24399b7687fdb26169d64bc0788ad0b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398064 | `0x778098cd30d96de369af1cd726a3079fcf437b8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7868922e24191f83ce2f588f5175510c1343439b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x78eed8cd24da7f718626f45f27b20ad45d90a819` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x79f271a35824e83518fa9522d15612392c509dae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a1285938b1e5bba62a1c84be0a9ea78c4882445` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7a7c4bead85e552337c913031fdc8c1eabd33f38` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7b46cd2e35171fbcb2e55024b4430ec47f9f3c00` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7be78d0605f8ff7c1e52d9cb69dc03f1386a8f22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d2881ff355e246d05f126e4e9c45e9f096cc33c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7d99d2e48273c2f09c33832412bc872afc03e206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x7e56341ac9fc5687e0801371153d9e357ddf4fd8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398066 | `0x81004c9b697857fd54e137075b51506c739ef439` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8114395e2a239da2c3f5d3bf6801bbb0b73fd2eb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x84639b27333eee70f080a1b66aff1d60f57cc3cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x855e0e06a2879a5ab8747e3be633e68df9b161d9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86ac13bec3494409169140e43e3505dc1418fadb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x86b223e83d2fa43456b433687c8f47a35a9be24c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x872b6ff825da431c941d12630754036278ad7049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x886d26ed6d7f6886437621c3d25f774649f2ebfb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x894edf346f121bd406442cfaee29a43c80744158` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x89df7b3216e5da641b643c088817a6e574dbc2ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8c15688dee6c83c4a9778ca34422e9265d3abf59` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398069 | `0x8c603050d7a913b6f63836e07ebf385a4a5736e7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x8f0ac41d25efca1a028c6161096661af31c2c127` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398070 | `0x8fa8e3dd9e84094a1d2511acf1353d7e011d8f90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398071 | `0x910723e3c6a68276687b50613a1a9e42cc6589b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x93d8790aea8c24b290de1860b39e2fd9836df74b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x95360a64447ca746b82abd1d0ed49f3e34f2e6e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x96eae97de300b88875db94d6cadc053eaf02cb69` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x970038bd172b5ebbc79c6b6b2a87d694f049d248` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x973dbf8832e93462e1bcc4a87048438514c79fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x97456b496eab574f545f56a2f24c235f83d25360` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9812968f702b4870800508980e39ce7fe74a5de1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x997bc382502dfd2a6db79bb4243e1a6cdda4a52c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a6bc92c11af9866266eef39a88342735bac7948` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9a6d881b23ecb6c8d4abc089dcb44e7d6374d4db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9aa935113184b06109c62e8f55a76e8c8c0a963b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9c84c3f2a201bfed334017e8f589c0f8fd6ed0cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9ca5214da74af12b251f91b35407dbdb95d3515c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9e63186fccbdc67db5723f85fa32e90803436a85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0x9f4fae441494ae8ff636545fd675c25d7eba672c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa02e9fb38be9363de9aabb362cca50a28e00a996` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398072 | `0xa1436ada35e593d2376dde8e2678d3e88714171c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa1bb8a8ed84a37a8c93a10df5153e612f58e34e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398073 | `0xa2f2d3a7d6c9d20b988978a01214e89bcdd4d673` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398074 | `0xa596af34ff090083ed5a39189928d49039a94a10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa94034018a7c85c5c7342b8e712603fddccdbfd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xa957cb9188f34a853f14a786fc3a4f13f98b6218` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398075 | `0xa9edb6f411e49358b515de26543815770a739fb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaa6c60d638d34261b764fedb551e50ab02c34c90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398077 | `0xaab8a82fc1cd5f7d2bae5aa39663248b3ff27181` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac2fd627f91b122982a4754eb85b13c131deb56c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac5cf659e142b1c4ee557850842505d70a10a81b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xac9244551807a82207c9ff86ce16492091d2eddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xad661bf466beb0e8dff4a51a49efb0fd1bd10823` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaeb9482dbe5d2429d3ba93bf09fbbe7ae3438e73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xaf34929185811273fa8913b5e903b7ed1df7c0df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb130a49065178465931d4f887056328cea5d723f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb2f47f6d3f6f1e1f6931bd6da44f58b0ec13da8f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398080 | `0xb3bd9c851bd8330d5c4cf4565fae4f175e25417c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398081 | `0xb4e4378c3d0b0b8e49682db38912080e5873af53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb5e42039d1917261560c7a607d58e4a04c7df14d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb8db696e67553030f3b5c5ee6e297b7bbcd98f55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb94dfb0383f8a213243e0b2165351ef07aa62eb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb964bb1db1cdefc93e410fc9595b3325d38775bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb97edb4b794e1e594afeca626d78187206aee07a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9abf4b6f6a0a8d55276de214762639e96e72714` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xb9d2cfa544f37e0c8f02e39f6dd070bc35e1e924` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba0083ef02eb3c49cae36f1ba7ae8f433a38e365` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xba5a1034723b1daa099c462f516772df2ab380e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbc27e0b5aafb9dd7481bea15d579c4fd023718ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbddc3cfb56e3327e191c3268278f3b7f84dbcd8b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbe07e5eb5e4b6ca700586b41e4ecab614ad3a05b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398084 | `0xbf365ce9cfcb2d5855521985e351ba3bcf77fd3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xbf4ecd035c82e28eac9cab7f25e2798845f0f20a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398085 | `0xbfdf544f1444e61ee04cafdaba2b6a68c921f376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0310f7222080f31bed8af700d8aecd5572598e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc036bac980d5a379ff1db249f2e99d1bd3fb09ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc0969b0de459f29ac100a3ce7933511b4a08705b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc349fa08a192050bc6ac3b4d0fca0fb80c8df712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc36b03cffdbd102b4698c2edfe4d542177308907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc517621e3e77c957a0a18e172f763d8c58c9a61f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc51e8f4af6eabf35bc03d62a80f1c9fef29be632` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc67f0944cce4da3030af3d6f4dac851551abdb8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc68fde0ebd745217ca0cd920383f2993f3f8ee78` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7498b7e7c9845b4b2556f2a4b7cad2b7f2c0dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc7f6fc03539fbf6fa79270eda7d79375c65028dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xc8b00aa23c925aa075c7f97015272693a958feac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398088 | `0xc90bfe9951a4efbf20aca5ecd9966b2bf8a01294` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca10e8825fa9f1db0651cd48a9097997dbf7615d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca1f5513fec365d7666dbf7e221b535e16eced0e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xca2c3c74877116406f4956042f097f9bc2b332ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcad66a1c389fa824b759aaeffcb3b74fca4723e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcb833bd1ffe87c47051f73010effdd8e4d2a46e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcbdfa51a1d4cf45c715c1ea80b74bb3d70c14a3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc04abb8894562a8a960dd37b4d169ced04005ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcc96ba33eae1147ba8b0c73d3dd4cee40d681ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcdfa9610ab42458cdda0061d9a10b7bbd82efc84` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xce7cdc8e5c00796392e611d95c713420a6e31342` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcec7e58cf02749b2592bb3c0c392737eec3f9636` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398089 | `0xcef5be73ae943b77f9bc08859367d923c030a269` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf8b7020c89795eab2b82889ef128fc5d55e457d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcf9d00f5200e58360025f94fff32b5521f77c77f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xcfe82450b4cd92023a8e184ac75b2ebb24cedb10` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398090 | `0xd12d239b781e34e0aaa106159940803a07e31a67` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd18d33f1db9f5ec439748b4d5be9cc347282d89a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd1d3a7d0ca508998de5cbfb86cecd0546f0e287c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd200530f004ecb9405f4050462801f755918c117` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398091 | `0xd2565058287aee9c3c8297d2bc9ec11cd507127c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd2635bc7e4e4f63b2892ed80d0b0f9dff7eda899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd3d86c94a8d468bd1328e6491ed8aca58d850ae7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd4dcc2a9838282094b3c1a2c92245eb2cf15d5bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd5befe3fecdf1c941c58119a4e395806eea0c343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xd7a801aa8cd28ced2ef0c418e71d44d7744edc3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda442c468f77f4f90032ae8ca99850eea2091bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xda5e1d3aaa93e8716f87b5ee39e5f514cc934d5e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398092 | `0xdb1d990f48328ff71197336900057026edcdfbc2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdbb7fa533d76f0085e7d213f9b5eb9af9ee7865d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdc1d17c5413d1a6457ea2f4a991a24eb85277a4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdeefc0449d7e8162f1c007aebbb7ee92d50a5d0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xdef8576848c2ecd97803acb807dfde9b5b3ffbf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe052fa6f4a60dd11c081bf79477cd55c2b1bd50c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398094 | `0xe12dc1f01ccb71ef00add1d8a5116b905261d879` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe1eb61d87b94ddc860ddd5923ef3c59b4bfc733c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398095 | `0xe24a0e4b6ba77aa55be58ac4d84aa14b95121b33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe3222bdc841ecdfdca1cd528045e7c3ab9f508c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398096 | `0xe47fec1c72850d867a1655c4c5902de7728ca205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe5b3d39c753dff90f2504ac87a511251422acbb5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe77adf3936f70a2ed44f26ced01d26c1430ead6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xe8bb0c2d066b35f789cbdec3198ce4f260df6f51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xea4edfeff60b375556459e106ab57b696c202a29` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398098 | `0xec054126922a9a1918435c9072c32f1b60cb2b90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xed9e3f98bbed560e66b89aac922e29d4596a9642` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398099 | `0xee7ac4d3d3a51de966078809fc7a91834f5ea3b9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeee88209308cc7bb0668af005c09fea3f5e8040f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xeff23b4be1091b53205e35f3afcd9c7182bf3062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf1cf2d0dc1da72566cf7a67f6b4cf88058d03def` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf31628e0a6efd338bd215ca2f00dd81c21363448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf3590865741632700434a164000c743f3471bb79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xf52ddc881107eb04e05bc105a9e244557f0e275e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398101 | `0xf667e52e87ff3411c2d5e311191072543b4dd69b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398102 | `0xf704eaf4a68ac424c809f7c4595451b9414d2b76` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfa979809979341032818e0f4aedaf7e6fae0fd63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfb37670aded56ffc36aa4fbaa132de5b093b60d5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | bsc | unit-398103 | `0xfceb41a029c31a2a449b7406398b65d1093a4961` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe178714df395fbe0fe80753cc56f8465e170ccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xfe5f3a946db9fb9e3ffc2d51bcb8235eeb55c89c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | bsc | n/a | `0xffd63b06985d1e95a53c56993312dcca2446b624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0127ee938473d0fbfb78525bd59608a5fdbc0416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0213b4dac5333049e82c960668033b6f5177e856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0499892866c986027149f28721ac8fd630c882ee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x049d48e1503e8cb5c90305a07456d5986a396e92` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x08357edec2a033257ceb6029622e0921e093f3fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0ad1a337536ad14734a3ccbca8f6fd22e6b7593f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x0c6c191c14f91dee8bc6390e3f33bc81e7209cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x11b29ae3037f4526e4aa56952318e0d01ada836a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x12e6875037958f26cbc0f7e8c394c49d6c056592` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x154e8b16e5e03297001cd2199eab77d9ec66c67e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x1ce18ae6886940be8c04ed954c747c4082f8bcdb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397705 | `0x1ddd225ef26714bb8055ddceaee2589ba09c89ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x245e633b3fddd61e4a0a4282767bdacfa84a0b14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397706 | `0x27021e71ef9dd52c82193294ce50e2fafc4b87bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2a375567f5e13f6bd74fda7627df3b1af6bfa5a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2caa3e79bc0e23abf31dfbcebae992bcad4e7c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2da7dec5ab9f2549f88c9a1f3bb3db8f5b520d86` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397709 | `0x2e668bb88287675e34c8df82686dfd0b7f0c0383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2f97e40d827b7b5a1421f3c75e8bf9639c6a5147` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397710 | `0x2fe5e5d341cffa606a5d9da1b6b646a381b0f7ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x2feddec88186f58b0573bd8de38aac1b6cb884bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x31ae608cbadd1214d6a3d5dcf49e45fb18e2a48e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x35e3fe4932f19d9195b059118235d34e47e77237` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397712 | `0x376d567c5794cfc64c74852a9db2105e0b5b482c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3784a47d47593542903e3a319332e4719b8f95da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3b3e4b4741e91af52d0e9ad8660573e951c88524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3bb5aa84db3e1b7596c3605761252b5a018adaa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3c53790198dde8603f78ec0250ee4066e179f890` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397716 | `0x3d605fa64595dba86f7780e128816adaaeca8a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x3e294283347d555d8f75d2e7c0387548064fc382` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397717 | `0x3ec979b97db308b9489d42f2fffa84033efcd8d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x409df205ac3da3462bd29b562dbe21b1ac2a1dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x44df096d2600c6a6db77899db3de3aecff746cb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x49d26a6eeeb49e79a0c73b95fd99d23698d3614a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4a7bbb596552f823f4e00cd88867fcf30a56c943` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4ab421de52b3112d02442b040dd3dc73e8af63b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4c51d38bd6667c3d5d2a9da6a580231b26128c6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4df34a29aabd0694a62cbf65a844e12a44617975` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4e21a65a9f4672ef2cdfb7fa6b0f1e39d6e4e50e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4f4abc969718982ed86c62b214607b31cfd27b95` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x4fe7644359d9aad12d4794d59304707fa0c34e66` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x53b42b075354dbf47f6b89a3a9fbd97becd54acf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5620035b2053cbae26106a1cc8d49d051b4ed968` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397722 | `0x574b9cec19553435b360803d8b4de2a5b2c008fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5a988a59beb132594ac22d5eab6fd2d0143d4f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5c1792205304ef7704de943139b557f15c42f9bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x5cb4927dbcdbdeee7430f3d156e2d2d92b55d406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6124c960dc4d19023d3bb11b5619782ff4c77903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x632626840c40942dff36bfb68a6eb8064f7d603e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x63b244cf71f16900184d4c0e4e1cb17d4fb28358` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6875eb0496b6baa0527c5915d78b9bcdc800e98f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x6aebc663dd6b8de86129e671baf68586fb0c8fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7081a38158bd050ae4a86e38e0225bc281887d7e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397725 | `0x7214833be05ce39f6dcd97668e521162e6c18937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x73bd3c7e44e1c228713a24448e9b7250391aca15` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397726 | `0x7400b665c8f4f3a951a99f1ee9872efb8778723d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x74486b10a8e512169706a899929b2142293c7c73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397729 | `0x7b53aedf58d2ed087a3dd690201245a61de3c66c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7e894935ed739cd5681240fbbaea1f8341627254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7f25714de36da23c96593e24261c859da4f950ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x7fdf58b6855199519cde3ed157d53db5d3e63881` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397732 | `0x817eb46d60762442da3d931ff51a30334ca39b74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x83b9047c18e55a0cda6027fb0582c4de658d5ea0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x84b76efe02a8a151af697a62f7ba59fb082b7e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x86ac13bec3494409169140e43e3505dc1418fadb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x88748243de01c4f3c103f2de2833f39f6807db17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x88ef2b1d328ad8cd5ebc6653e74da75ecabfa3fa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x8c603050d7a913b6f63836e07ebf385a4a5736e7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397734 | `0x8cd11c6f710e8bf65b5078e92dc8529cff14b108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x913e116cd0e279763b0419798c0ba18f9311b390` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9144d57c8336b952afb02587154da527424c51db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x9160435be009bab2ec23ebe3ef274d97ae0985b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x91d11ef6b31e8e2d5258c21c33d26c9e746b93cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x930fa1367cc88a3fa87fff8c272fafec0cc0f9c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x938021351425dbfa606ed2b81fc66952283e0dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x96329d66074eb8386ae8bfd6698b2e3fda87e15e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0x997bc382502dfd2a6db79bb4243e1a6cdda4a52c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397740 | `0x9d1a92e601db0901e69bd810029f2c14bcca3128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa0d702c9c0316e9c26fc39effc9d2e4652e898e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa1bb8a8ed84a37a8c93a10df5153e612f58e34e5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397743 | `0xa2f2d3a7d6c9d20b988978a01214e89bcdd4d673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa325ddf2bb2d2c8e199e4bbbe5963048e5477bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xa79e2c96db89ceee07784c36ee2c61468d2c97bb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397744 | `0xaa9c15cd603428ca8ddd45e933f8efe3afbcc173` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb0d84fff607dca65a047b2493eba3e55855432ad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb29de0c2a884af396272086f4aa3f0ad2dad747b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397747 | `0xb54e1d90d845d888d39dcacbd54a3eec0d8853b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb6f776718f2e4c16a9a7161db2018b5261485354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb772122c4a37fe1754b46ab1799b909351e8cb43` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb8db696e67553030f3b5c5ee6e297b7bbcd98f55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xb964bb1db1cdefc93e410fc9595b3325d38775bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbae04cc8acb81ca74b8beae7b8787eaeade5f499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbe07e5eb5e4b6ca700586b41e4ecab614ad3a05b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xbf401edbb0265d037bfc89dffeb7dbda10b57c22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc22fbb3133df781e6c25ea6acebe2d2bb8cea2f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc2c0e0ab54ef5e88bb39b890e69ddba31fa69492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc349fa08a192050bc6ac3b4d0fca0fb80c8df712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xc4abb9aef545bd01f6e7a915fa99e62a65393cca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xca10e8825fa9f1db0651cd48a9097997dbf7615d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcb342ea211ae3234cbf185ca12f3a6fc03a9ae21` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcbe2ae31d6f95e844cde6d0539f8e2d0fef79cee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xce66ab84d3e7cea875154673d6ec18ac49978bb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcf8b7020c89795eab2b82889ef128fc5d55e457d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xcfe82450b4cd92023a8e184ac75b2ebb24cedb10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xd4dcc2a9838282094b3c1a2c92245eb2cf15d5bf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397754 | `0xd7a03024c9cab9ca9e85e649acb598b51774234f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xde12723b2a478d4a1d347d49fe15ac0c2691f2da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe33a533d57ef84fc39be01bf3c3776a33e995646` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397755 | `0xe47fec1c72850d867a1655c4c5902de7728ca205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xe56758b70d5c99743e448bc846deeed66ab33647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xec041744884b7ff4179e4b046f472dec9ef13bb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xec054126922a9a1918435c9072c32f1b60cb2b90` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xed6e5c5c1b5b072f825b29c262e56eab39a64aaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xed9e3f98bbed560e66b89aac922e29d4596a9642` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397758 | `0xeff23b4be1091b53205e35f3afcd9c7182bf3062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf0b4d1f8ffebd0d68f9575c6ae5440959f76bd5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf138797d27748b7fd052c04a204c7f4f5eb465a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf2be87391e2040d4cb1f646fbb023c074315e94e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | polygon | unit-397759 | `0xf5d215d9c84778f85746d15762daf39b9e83a2d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf6be9c2627b89d15fefd7bab69e627282e9ad083` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xf951175d04c94bc908cab79fd846d3be7d0a37dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | polygon | n/a | `0xffd6e07c5bc5959ccb4d066c80b822f4021658f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0x6aebc663dd6b8de86129e671baf68586fb0c8fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | monad | n/a | `0xa4509af05ad371b71078e6890ccea9ab33e6045b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x08c8b805685c01e8f7d24d964adab04cea27c6aa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x17ccef8785cc6d95b3afa5bc1b8d85a4af6c7f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x478e7f3fe49931c601e2399ddaee8eef2eef6f13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x5a988a59beb132594ac22d5eab6fd2d0143d4f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6aebc663dd6b8de86129e671baf68586fb0c8fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x6fc6f3fa67d84f8ea8ecb8e93bf2f5a489307a53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8cd11c6f710e8bf65b5078e92dc8529cff14b108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x8ea0eb2cebda4d7c88183ac8fbf3a9ae6ae07a5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0x9321785d257b3f0ef7ff75436a87141c683dc99d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xa8452e2d63b29783ed2e5ca0d8d4fe0cc2161d5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xca941f1b43cd2d7882fc6fc0457e9d76aff377e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcf8b7020c89795eab2b82889ef128fc5d55e457d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xcfe82450b4cd92023a8e184ac75b2ebb24cedb10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd14a997308f9e7514a8fea835064d596cdcaa99e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd2565058287aee9c3c8297d2bc9ec11cd507127c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd2635bc7e4e4f63b2892ed80d0b0f9dff7eda899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xd6abd5fd165fd9127b37b63ac1ab86574bf5686e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xecfd979cb06f877523e8f9107acd1c45c12f61c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xed9e3f98bbed560e66b89aac922e29d4596a9642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xeec6025fc35af612f6028bb454f875085db8ed8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | sonic | n/a | `0xf357ec5a6c82766aeb97d6da7488e2efc3dc0182` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397791 | `0x05c97e74ad8d84ef457994b9b394d0cc46ee6e76` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397792 | `0x0d37e768c3ed8a3fa494d03af69605c5be9a68e4` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397793 | `0x128758d0e909624841ab29d53919646bfbda5db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | fantom | n/a | 6 deployments: fantom `0x1416e1378682b5ca53f76656549f7570ad0703d9`; fantom `0x286ab107c5e9083dbed35a2b5fb0242538f4f9bf`; fantom `0x2fe5e5d341cffa606a5d9da1b6b646a381b0f7ec`; fantom `0x6626c47c00f1d87902fc13eecfac3ed06d5e8d8a`; fantom `0x74b23882a30290451a17c44f4f05243b6b58c76d`; polygon-zkevm `0xf5d215d9c84778f85746d15762daf39b9e83a2d6` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397794 | `0x1553a071c135137610699f93c9834e8165ecacca` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397795 | `0x209102c0d2e34282494114ea76d5251c8e7ea7ab` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397796 | `0x28d2b949024fe50627f1ebc5f0ca3ca721148e40` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397797 | `0x2df39335b79783b7e02afcf552303602c14f5208` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397798 | `0x2fb089be0df198c1b1eac88500a09a1175d3a547` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397799 | `0x37b5a5a730dad670874f26cc5507bb1b9705e447` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397800 | `0x4df34a29aabd0694a62cbf65a844e12a44617975` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397801 | `0x5811850b72787b8beb402fdb1f78df455b65b3b2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397802 | `0x58c73f7e102bc6bcdc6b092ef0399b3e06d6b3e3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397803 | `0x5db04b6335c26ee147afbec161aff6e90239b4b8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397804 | `0x64edb6450f5a1c6158d76c1e30900fd7d8493636` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397805 | `0x6deb92d1ed4f3e5136303556dd1810f761d69c1e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397806 | `0x70f9c8885f03e68cae7a48ee86cd6089ccc6b795` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397807 | `0x71a862683f158517b39bdc4a2ca0fce657d3a375` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397808 | `0x7b2e29f5b79965a1fb4dc15b635ee18edfba08dd` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397809 | `0x83b9047c18e55a0cda6027fb0582c4de658d5ea0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397810 | `0x87bca268e282dbc00477a24883542f87d40deb5c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397811 | `0x8840e26e0ebf7d100a0644dd8576dc62b03cbf04` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397812 | `0x9503e7517d3c5bc4f9e4a1c6ae4f8b33ac2546f2` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397813 | `0xb29de0c2a884af396272086f4aa3f0ad2dad747b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397814 | `0xb6f776718f2e4c16a9a7161db2018b5261485354` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397815 | `0xcc96ba33eae1147ba8b0c73d3dd4cee40d681ee9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397816 | `0xcf6ce5fd6bf28bb1aeac88a55251f6c840059de5` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397817 | `0xd5befe3fecdf1c941c58119a4e395806eea0c343` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397818 | `0xd6d6a0828a80e1832cd4c3585aded8971087fcb8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397819 | `0xdc1d17c5413d1a6457ea2f4a991a24eb85277a4f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397820 | `0xe1bbfec2b76d2c5b899407bb9ad3cc501a8ac1b7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397821 | `0xec054126922a9a1918435c9072c32f1b60cb2b90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397822 | `0xee8318e9d597bf9df6148e86d4e35a8bc14eea88` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397823 | `0xf60d272945c870e8dbfd02bf0339d5650646115d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397824 | `0xf6be9c2627b89d15fefd7bab69e627282e9ad083` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | fantom | unit-397825 | `0xfce921ac02999e701bde7e697b0ef64f2da115db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-397834 | `0x635b7045f1306dfc58536348ccb863e756910350` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | zksync-era | unit-397853 | `0xfd505702b37ae9b626952eb2dd736d9045876417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x0208d735576b3d974024237393f4617285bf0563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x15ba47e540e1b197e30d16a93b0c568b251629c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x17ccef8785cc6d95b3afa5bc1b8d85a4af6c7f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x2e668bb88287675e34c8df82686dfd0b7f0c0383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x3d605fa64595dba86f7780e128816adaaeca8a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x44a6d5c2ec587e07100b7c478a3641e24e4a544d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x6aebc663dd6b8de86129e671baf68586fb0c8fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x7214833be05ce39f6dcd97668e521162e6c18937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0x808dd913f43eaca71f307d1ca760512e59c581a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | hyperliquid | n/a | `0xa325ddf2bb2d2c8e199e4bbbe5963048e5477bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0213b4dac5333049e82c960668033b6f5177e856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x03465a65b824c158698fa037ee6fc182a86991d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x0c6c191c14f91dee8bc6390e3f33bc81e7209cd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x245e633b3fddd61e4a0a4282767bdacfa84a0b14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2cf870854469e77191b65d990418559b66688dce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2e668bb88287675e34c8df82686dfd0b7f0c0383` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2fe5e5d341cffa606a5d9da1b6b646a381b0f7ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x2feddec88186f58b0573bd8de38aac1b6cb884bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3708d5ee0dce068022f11dbb35b0cc2062f3afbb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x39467a0debf360a82f83880f13ebdf7f0c2ec735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x3d605fa64595dba86f7780e128816adaaeca8a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x404b181eca20519b68f3a7ee68ab65f6aba9d503` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x464959ad46e64046b891f562cff202a465d522f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x480c8bff72148e0934429a51e5bf9c122f30e1b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x4f052db542472a98c00ea568f44bfced57b9a978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x523f88992580afbf970d725feeff0eb482ce47b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x542fd4eb0dbbaed318059dfbecea0ddf249df49d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x574b9cec19553435b360803d8b4de2a5b2c008fd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x5a988a59beb132594ac22d5eab6fd2d0143d4f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6aebc663dd6b8de86129e671baf68586fb0c8fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x6eeb59d15955d99aae8469243d25648719b6a65a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x86b1742a1d7c963d3e8985829d722725316abf0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0x9d1a92e601db0901e69bd810029f2c14bcca3128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xa1bb8a8ed84a37a8c93a10df5153e612f58e34e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xb130a49065178465931d4f887056328cea5d723f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc349fa08a192050bc6ac3b4d0fca0fb80c8df712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xc36b03cffdbd102b4698c2edfe4d542177308907` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xca941f1b43cd2d7882fc6fc0457e9d76aff377e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcced0e6b0850b1d62c53312f2a312c3caeb78611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcf8b7020c89795eab2b82889ef128fc5d55e457d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xcfe82450b4cd92023a8e184ac75b2ebb24cedb10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd0da7f6b35441693dce48b06339c0daa22593bd9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | mantle | unit-398024 | `0xd14a997308f9e7514a8fea835064d596cdcaa99e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd4dcc2a9838282094b3c1a2c92245eb2cf15d5bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xd7a801aa8cd28ced2ef0c418e71d44d7744edc3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xe40d544b21b0835e09fd2642c54651499ddcb0c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xed9e3f98bbed560e66b89aac922e29d4596a9642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | mantle | n/a | `0xf5d215d9c84778f85746d15762daf39b9e83a2d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0127ee938473d0fbfb78525bd59608a5fdbc0416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x0213b4dac5333049e82c960668033b6f5177e856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x03465a65b824c158698fa037ee6fc182a86991d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x10029e315ce255116d3fd491c4ea90a2c213d273` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x15ba47e540e1b197e30d16a93b0c568b251629c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x17ccef8785cc6d95b3afa5bc1b8d85a4af6c7f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x245e633b3fddd61e4a0a4282767bdacfa84a0b14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x25d73493e061f1209e948c4cac9c385d350be1d3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-398143 | `0x27425e9fb6a9a625e8484cfd9620851d1fa322e5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x27820dcd5967c115480f671e1afcca21fad432b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2a43117b10008a520fcf25c45d3859beb5e46f83` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2b76b9a6111a2fb57ca2933c047498b31f853d88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2df39335b79783b7e02afcf552303602c14f5208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2fe5e5d341cffa606a5d9da1b6b646a381b0f7ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x2feddec88186f58b0573bd8de38aac1b6cb884bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x39467a0debf360a82f83880f13ebdf7f0c2ec735` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3b3e4b4741e91af52d0e9ad8660573e951c88524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3c53790198dde8603f78ec0250ee4066e179f890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x3e2af6de241af5481fe3facc9a56c95ebef4a205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x409df205ac3da3462bd29b562dbe21b1ac2a1dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x44a6d5c2ec587e07100b7c478a3641e24e4a544d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x456521dd8c1d4f2bf7db371fa551d7ea874f690e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x468f46137c1d1c5eb1414c2f9595732c2e383dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x479dbcb9421fa23a8df33762e9c356f0e30a7e45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x49f023ff7fd51b5793f5976c6bd0d1039d0575b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4c51d38bd6667c3d5d2a9da6a580231b26128c6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4df34a29aabd0694a62cbf65a844e12a44617975` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4e04b9f62cdc4a2e387cbdcbccdde2126e1b808b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4e21a65a9f4672ef2cdfb7fa6b0f1e39d6e4e50e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x4f3e0b02f50937bc21f523f1dd430a34caf4de98` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x505ac728645d2ef84380961f72baea500b3efa3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x51ae61c2ed9497eb48c9ad62e5b0b20817066ac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x584739d8131e2e04235fea9cd91f60f86104f99f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5a988a59beb132594ac22d5eab6fd2d0143d4f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5bf68e0cc21f2cd6277d13c4ce51520be236f34e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5cb4927dbcdbdeee7430f3d156e2d2d92b55d406` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x5cfec923b2173696cd5be84e980231ad50178a65` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6aebc663dd6b8de86129e671baf68586fb0c8fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x6fc6f3fa67d84f8ea8ecb8e93bf2f5a489307a53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7214833be05ce39f6dcd97668e521162e6c18937` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x758231b7d5204d08634dd3f9fcdf49fc17355d33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7a7a3f4df7429a359cfc4da3940280539c781ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7b5fdb8c89a616d319202704b0ea18b168654281` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7d8f2090f2cfd083af800712fe2d04289252add3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x7db2506a8efb9a2c334b19d3fc83b55b44ee2d8a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x81d34d64321fce8b405a2f0f21c4b09d47024044` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x82fde5086784e348aed03eb7b19ded97652db7a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x83622a8b286cfa3d1c76ba9f95ca9b99e2595bf5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x859cec5e8998e2abd4fe36122efe292d1c0cd99c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x86ac13bec3494409169140e43e3505dc1418fadb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x88748243de01c4f3c103f2de2833f39f6807db17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x8b4acac4187717398bac4495c0a97a0abd548a87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x90a2aadba560040e604ca57ca75760ab89abd085` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9160435be009bab2ec23ebe3ef274d97ae0985b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x973dbf8832e93462e1bcc4a87048438514c79fbc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9aed3a8896a85fe9a8cac52c9b402d092b629a30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9b4196e59739a0949cfd6c56b6f3c18e8a108237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0x9d1a92e601db0901e69bd810029f2c14bcca3128` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa02e9fb38be9363de9aabb362cca50a28e00a996` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa2101fd320d06e0a744e4fe90ef8a20ecd027001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa8701c6a659ebddfbb399b2df6eeda853e442257` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xa94034018a7c85c5c7342b8e712603fddccdbfd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaa3b0da326beb4f7c33bace7179b18f7404abf53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xaf34929185811273fa8913b5e903b7ed1df7c0df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb130a49065178465931d4f887056328cea5d723f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xb3cd4c2f1791c0d17bfa061c932224337ea06349` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xbe07e5eb5e4b6ca700586b41e4ecab614ad3a05b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc2c0e0ab54ef5e88bb39b890e69ddba31fa69492` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc349fa08a192050bc6ac3b4d0fca0fb80c8df712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc3d60dd6436f3c40278f1158be82acedb4195335` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc50fab8119a1007f8244ceaa5d656c315ee4641c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc517621e3e77c957a0a18e172f763d8c58c9a61f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xc7498b7e7c9845b4b2556f2a4b7cad2b7f2c0dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xca10e8825fa9f1db0651cd48a9097997dbf7615d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcc96ba33eae1147ba8b0c73d3dd4cee40d681ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcced0e6b0850b1d62c53312f2a312c3caeb78611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcf8b7020c89795eab2b82889ef128fc5d55e457d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xcfe82450b4cd92023a8e184ac75b2ebb24cedb10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd4dcc2a9838282094b3c1a2c92245eb2cf15d5bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xd5aba6772c3fa57228587f433fadd58e5c32ba0b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xda5e1d3aaa93e8716f87b5ee39e5f514cc934d5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdc1d17c5413d1a6457ea2f4a991a24eb85277a4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xdcd8e9384a1def77bfb762e952ac3d1b6bea8265` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xe33a533d57ef84fc39be01bf3c3776a33e995646` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-398169 | `0xe47fec1c72850d867a1655c4c5902de7728ca205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed6e5c5c1b5b072f825b29c262e56eab39a64aaf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xed9e3f98bbed560e66b89aac922e29d4596a9642` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | base | unit-398173 | `0xf314fa27066bdde92e6122059b103e8899d0a096` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xf357ec5a6c82766aeb97d6da7488e2efc3dc0182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | base | n/a | `0xff49dc7545287dd58dbd11369fea1f97ddce9d54` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x00daaab002049a6ac2d7d58c2ee5b5f363de8ba1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0127ee938473d0fbfb78525bd59608a5fdbc0416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x01c8f686459ed8e78a0dcc0408d4d4a1ee624ca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0213b4dac5333049e82c960668033b6f5177e856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x04736de676a0679356cbf0576beb858c5cc707cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0510e56edb651fa39c3330d2f5bf8fbecdfcc53b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06b00fceebc13caa49de8037609e7e6a97539655` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x06c7e4cdd71a9fd637b92ca23f57ab6f924e336b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x070d5c603b5c7bb451916dca718d3e800f5bdb09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0972a0fa37984e7ff2aefa53a0bb10dce535aa73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ab13d6d5f42f595f86f193ab90112894a2bdc2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0aed81991783530892d956c647a995680b5c6ba2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0ba6c34af9713d15141dcc91d2788c3f370ecb9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0cee55724b55202b14f48160754bee2cce1df408` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0d42b27153c185b2b60b8ab6d77af9c4668aa6a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x0feb09120fd725961cfdebf49140f73d98363006` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x106da37e556e77f02d47743e92fc317bd320a6a1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10aeb50fc074afd6981582d1ed96cc20b5550d25` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x10dcf57cca73246a81bf5e0a4b0496d91ed64c8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1109e03516eb25eab2150d0b274b8d4f5f3cf549` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x113d31a32734a8526572e77a0779bd242cb71a73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x114c36cb93fbb1b08a653f2f08167e4d5ea77b63` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x114ff67d46f04be8e00cb0809e83ce4a4d2321af` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x12113502b72fadffca0bcad21b8ab73cb067bc55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1349e570f9bece96cb9af17627339def23c78636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x138047d643d68c5ffe770bc554b61fdd01f3804c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13b3c94022bb30fff306a866c6c385e2ef14c6e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x13d9027a5060e6728240de075055f0b9bcce40b3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1553a071c135137610699f93c9834e8165ecacca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x15a0358cf225f8ec884e353a8acc081d3b1d0e74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x15b11a8c2b9d7b439fdbebdcfb633b8f6665d606` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x15ba47e540e1b197e30d16a93b0c568b251629c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1c29986ff01c65665393e55c73ade2aa6da957df` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ce18ae6886940be8c04ed954c747c4082f8bcdb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1d8664d884ebfb03f3cff978fdd205ce244f830b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1ddd225ef26714bb8055ddceaee2589ba09c89ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1e5bd731e88c719108c16aaf1f3fa7b59a1ea8fb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f2868d1dc715b8503973367b82dd4bfed422778` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x1f79f8a65e02f8a137ce7f79c038cc44332df448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21886db0657700ae32821b824098bd06a5636103` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x21becba18fc08376fd33f1b9c7deb5709d34b032` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23044115a7cb387052c73f65c6f2f7f575f7d718` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x23433a093a09965e872df30b0d4c33d6d8a38d09` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x245e633b3fddd61e4a0a4282767bdacfa84a0b14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2500ad59b46ff4b96f8e1eac3fe1f78eaf955777` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x26f33ea1e476ad8a016834107f9889b6c31c14f5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2711ccebc7207c2ccb368d87d7fb3745aa066fa1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2743d776eb222d10bb45ca0d847a83b82cbeb7bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2839d28b115e14a38962981d88a8eaff7c626c4a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x28f846b8ae0fe430789a613411e723c7190ceb86` | ❓ Unverified |
| UnnamedContract | unknown | external_dependency_or_infra | third_party_dependency (excluded) | 0 | arbitrum | unit-397857 | `0x28f88a809ccc085956ab9f978067698d25de014c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x297ad025479bb63e48928b4ab2bd3696fd24d25b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x29ca8bf20841ca39a693c83e3a85dbf4bef52407` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a0fa08cf46a0c0076cd7a857ee8bb5fe71f31d3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a375567f5e13f6bd74fda7627df3b1af6bfa5a6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a73a50077713be126f66ec8474186382d0f60e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2a8ede62d0717c8c92b88639ecf603fdf31a8428` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2aaf89c574cf39f2e370b6d6f50e792738219050` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2b76b9a6111a2fb57ca2933c047498b31f853d88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2cc9938584efa3bdf0fd19ddbb1828a672ae2376` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2cf870854469e77191b65d990418559b66688dce` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2df39335b79783b7e02afcf552303602c14f5208` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2e14caa1f8cefdbf49a3da8c1c4cb0aa020cd7c9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2eeb120bf9658e81e55d092e5769c971d2d14bd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2f1617ecd1cee8892c54fbde11d2cc751e2f6e7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2fe5e5d341cffa606a5d9da1b6b646a381b0f7ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2feddec88186f58b0573bd8de38aac1b6cb884bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x2ff261773899f8a124c61804cafa579b23c303d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x308984cee30cec74628a931383c09965feef8000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31828f0519ece5f3eaa0a7792d31374148729f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31a06d735f5adcf5ce1b9522a8b21bc989b1d149` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x31ae608cbadd1214d6a3d5dcf49e45fb18e2a48e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3382c567ad7026731545bdd765166607faf0ea14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3509ffeeda661d922eaaeefb26a92b996d117b00` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-397861 | `0x360e41201597a82007046329c021abc9d4ae0b6e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x366e2fda969649980dbc0d10c7fc959f0ac5aa3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x367f11b512883f3ac68924ae1286b997f8233df3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x36a106dff9c2d9beafba3db965044204d36489d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x36dbf060dddedb1aaebd9553cf27df03a5746603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x371a353a6dbcca51a7c45b828992c4dcace6c347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3784a47d47593542903e3a319332e4719b8f95da` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-397863 | `0x37a9de70b6734dfca54395d8061d9411d9910739` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x37e98be6faf04f683494f1d395aeabf6f115b034` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x38cb8753f6b10b8d36e54ed9f73b967177b63387` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39d361e66798155813b907a70d6c2e3fdafb0877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x39ee2867d842d728bd4e6248a41c50d63ed14577` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3aad22346b5721a7ddf504c19fe3349abc52ace5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3b3e4b4741e91af52d0e9ad8660573e951c88524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3bb5aa84db3e1b7596c3605761252b5a018adaa8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3be04d858a1d39772c5256e79413e8a6f59db10a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3cd52e0891d635d905e57da0d2d26a05bf215c26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x3dc6625ce7a4ad2387a80304b7e57f3f722da2cb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x409df205ac3da3462bd29b562dbe21b1ac2a1dcf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x41c790013d303db174b7d6b32bc6f06eaf71c16e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x43054b7588b98e49843275b687f52cd0441ac44b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4382417d3e9ca0af608f120203464c71739c098f` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-397867 | `0x44df096d2600c6a6db77899db3de3aecff746cb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x452c32c03196876d7ae4834d700aa20b706eff4d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x468f46137c1d1c5eb1414c2f9595732c2e383dd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48c9ee9ecc2b9645a55aef9f112dbfca877224b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x48fd9b3443b0948c320da16bd9b1217f51ec8c9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4926eb102d0e5ff65aac336ba028fb77c1ee7e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x497abdf1438c673e6a74033098d4eb14a7f3c60f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49e1b52bc4e4458bcfdba3f8f71134ca5a78ccdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x49f023ff7fd51b5793f5976c6bd0d1039d0575b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4a54e53b90c91ab50c31a51298c1348982c1bdac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-397869 | `0x4ab421de52b3112d02442b040dd3dc73e8af63b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4b9736f4c54773e04003f80fb9c6da6784522ef9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c51d38bd6667c3d5d2a9da6a580231b26128c6a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4c76216e3664b669876ecb408dfceb8ab00e1668` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4d7cb59ee4629cddd0467da25205b1ed1e5d721a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4ea3b7cc1efcdb92a9fe67d2e45d5c46afb1262f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f052db542472a98c00ea568f44bfced57b9a978` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4f57cb44d103ee21b3198351007243354aae54d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x4fbec6f0b2c0250c1da65bd45b24a62085d7996b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x505ac728645d2ef84380961f72baea500b3efa3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50c931b35e4f65985357c320b4c2185485332a8d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x50f347d0c33e5b12cb76daa64ebc0f09d0d0ecc1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52082ced545857faa129ba40ee051e0a5c0aefd4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x523752f2df0fc29fa003f709315374ab4b77244e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x52dda083ba5e0c5aa28909fce08a74b99c0a5206` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x53c660e1d8854908709f370ab9b0719e668d683b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x552f22cf8d5b333f96f5002ce9882897af508a40` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5726051f190a7717b57f96d220da0a59ad8e86a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x58005ba75794e38541a478d9c5355a4e463f5659` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5811850b72787b8beb402fdb1f78df455b65b3b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x584739d8131e2e04235fea9cd91f60f86104f99f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5994fa96660dd9c29074f30337cb7fa609c712a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5a988a59beb132594ac22d5eab6fd2d0143d4f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b4a310bb6096eae195d133834e66882a8feee74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5b87c631308c6fb0ead5aa89b6fb8c78421cc807` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c2db333cdbc8a797b582c37a2d404e579d86cb0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x5c3abbb9eb492ffb268b8f6f68637157f2c22c6c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x604ff7cd543e51cda817e5cb8747d7f0bf3ede52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6124c960dc4d19023d3bb11b5619782ff4c77903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6317a2cadd9270cd4421c808207eb30715527b55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x632626840c40942dff36bfb68a6eb8064f7d603e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6376455d81fbaec23952702dd502bde87eae6ed6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x640b42a4f2210de90f53f6d8068ad8bdbbd82fdf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x64a734ded51312b4b0ee96811b725f2354e90f4b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65003ba7c8e30e7b15903f70b36924057adfd070` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65104007e3c564a72492138b315e54e4ba5f58ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x652e7538084105f146b125b46036448dacaf5c7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x65f2d765aa70c03caa35b106f8b9181e89582172` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6641959fe5eed7166f2254cf04b0d20c96776d9a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x66c88364bff2ece7e7cbbb80822f3c1dc0e8c10c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6833e58a8c5dfd94ca0e573240ee22524dcf0bc5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6838b76d054b29c2d1c203364d72c96095537fb1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x69cbffd1f4c4c65d55cad8031de2b5637550e705` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6aebc663dd6b8de86129e671baf68586fb0c8fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b31bcff959c463af8f1637a8c7af1c8170d61d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b4488c208b0a74e7ff90184f433da9637cb12d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6b4912364231c41a848d0f81703501701ef7aec7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6c2d141309d4e00c8cdbf277ab282d9cf60b09da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f09ae4925739453d7c8c9a22fd07585148dfc01` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x6f905b734ea4f7432ef669e64698673d1887cd58` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7081a38158bd050ae4a86e38e0225bc281887d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x70ea4899a29e481ddad7afb162c653cb99226343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x728eb9e039e926107d857f2e9df111db20eec6c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7347383c4d258f3c64987acaf0e7c3c2bf5be0ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x73504eacb100c7576146618dc306c97454cb3620` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x73c364458e2fb9fa72c093e429f85eb4eb2d8fe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x747f99d619d5612399010ec5706f13e3345c4a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x74e20a4596773094741d5705e1f222fb678661f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x758231b7d5204d08634dd3f9fcdf49fc17355d33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7800bd3e8d5f3b5ae80839119dcd9809c19cb8db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x79afa5445169bdaed2c0cf85857d84f66b8d852c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7a7a3f4df7429a359cfc4da3940280539c781ee0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7b5fdb8c89a616d319202704b0ea18b168654281` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7cd5bc903b4385ea4b37e07dd1e0c8332d3d0981` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7d8f2090f2cfd083af800712fe2d04289252add3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7e48f3b17e6a3e50a39195b60726163b68899bd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7eb8d4ccfdbd9df8d3520e9c5b5edf6a5cbe4cad` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x7f25714de36da23c96593e24261c859da4f950ac` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x817eb46d60762442da3d931ff51a30334ca39b74` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81ab3492bacfff639dde60763ccf9e348117075d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81ca6c880ba1a6833a03c0684ce0fa8bb02e4775` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x81d34d64321fce8b405a2f0f21c4b09d47024044` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x82aee03624625a9382d4ed4b07afd053143fd8fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x83108a6422ad3a463a7fbb13d985d18d1f817198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x84a0bc5302f07a9743a19ddd7d57da11a2578ee1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8693f9701d6db361fe9cc15bc455ef4366e39ae0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86ac13bec3494409169140e43e3505dc1418fadb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x86b1742a1d7c963d3e8985829d722725316abf0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x872b6ff825da431c941d12630754036278ad7049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8a532c0a640ece9d4c3b3113d59c7ba5766ae4fc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b4acac4187717398bac4495c0a97a0abd548a87` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8b5da2e760c690968b987d34837dd1fb8ba68d2f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8bd32c8cbb30626273fbe3b26147155a391a0578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8cd11c6f710e8bf65b5078e92dc8529cff14b108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x8dd7b114c976437b5aff66b78aa1ce23d0d3c36b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x915ef90e1bc9ec231d5274b273f8ee251eea90ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9160435be009bab2ec23ebe3ef274d97ae0985b6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x91d11ef6b31e8e2d5258c21c33d26c9e746b93cd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x925afa2318825fcac673ef4ef551208b125dd965` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x934bccc16c02c40b08484ae33806bb4bd59e9bb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x994b055031ade69701cea3056fd7c4a4b368d57e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-397889 | `0x9aed3a8896a85fe9a8cac52c9b402d092b629a30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9ca74264984a9f6882a537832b1bae962e076799` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9e999fc759d6a6fa3342ff39113d98a7b7a3d25d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0x9f46a7f7afd5a595c782e57b5dae1fcc01bff18d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa08782c66031f37a10614528370c626def259b08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa08fbd1c49a115ae735e522d07c9c398580014a3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa14c57b073e6da6bcc23fc0e6934665118f05701` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa1a2ed8a06fc1bc4be981b8556910a4352aafb50` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa254ee4b3f173696654ce29686b112ba8d669e29` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa27116a66987772d93983e27e621b408108d9f7f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa2e70fadce360d2736e313f1486faf98b14d02e0` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-397893 | `0xa43305ce0164d87d7b2368f91a1dcc4ebda75127` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa4b686b11cb6dd7e69a723f892409d5e83aeed7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa805ed8d3360c5b9e1013954e559f39f7338291f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa8452e2d63b29783ed2e5ca0d8d4fe0cc2161d5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa8887fdcbd4c7b57b520d4af7c35a9ff0f7a4ae5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xa9fecf1b8c4c44280c8521efb3696a2b1f3554f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xaacf2201198c8bf5f2dcd5a187754b4cb9cd9198` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xac5cf659e142b1c4ee557850842505d70a10a81b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xac9244551807a82207c9ff86ce16492091d2eddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xadae7adc476d917c5e51f231973e0fdabe5fe4c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb130a49065178465931d4f887056328cea5d723f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb14ec1b09e2129c5ea5ed6747eda6ab4d23a3962` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb38a0553a23dedd08469405ed1080fde6947ed80` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb42a4e437cf407056a5e7998da5da1d280b2adf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb4402c37cdc6e40a8039661a226cfbf7540aa957` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb59b849ad0a7546594ae605e1cc8b052fe8d22f9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6d5e7f4835a3e9d48dbee5a9579a9d292efda36` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb6f776718f2e4c16a9a7161db2018b5261485354` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xb89a33227876aef02a7ebd594af9973aece2f521` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba3d62a074271517b8dd5b36254b829cc37d215c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xba91ffd8a2b9f68231eca6af51623b3433a89b13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbae04cc8acb81ca74b8beae7b8787eaeade5f499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbb156677d53dfdbc2b98c37a3832fbc7879be193` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbd904400a17eae621c4b799bab7217d155135166` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xbe07e5eb5e4b6ca700586b41e4ecab614ad3a05b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc036bac980d5a379ff1db249f2e99d1bd3fb09ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc05a4d0bf81215de05e8a3c50167d7c2ba1d5cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc21a8d5b55eac4973a02f944334e243f09d260ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc2c1e8ce01f589e827a339ff417606da3e1d86ff` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc349fa08a192050bc6ac3b4d0fca0fb80c8df712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3938e6dbb862d8c2d6e18e6ad139f309eb4331f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc3f15dafd6ba1becbbc7eaa0f733065065d0848f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc410c1e255e76b89e746ea83219d42e335eab62b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc448438a6f141ebc5ecc325dc92e52de3e080c04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc5e2200cba2582fa1fb0b7c4d8731abcf62cad88` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xc930e2836ac99c8d4b895e111f1344e5ecaf7db2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xca10e8825fa9f1db0651cd48a9097997dbf7615d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcb256b7112de5045685174291a004cbaa8ac1711` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcbc1413c8758936786757fcff2d1a96594025903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcc870428df2ac533877a7c9dde067bc911757361` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xccb8782342b500444e08b8011047d08986148024` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcd18447b604014638927560e68dd2de4074a8a28` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcdfd61a8303beb5c8dd2a6d02df8d228ce15b9f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xce66ab84d3e7cea875154673d6ec18ac49978bb3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf4a40809f19e1b60b9946b7e3ba290788ead07b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcf8b7020c89795eab2b82889ef128fc5d55e457d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xcfe82450b4cd92023a8e184ac75b2ebb24cedb10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0db92069e7faeb5c8e55c424443451391751b51` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd0e03dd57a5486387d5f625440619535ab503fe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd1208739ff10a1727d0189202dfe34521aa7d815` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd208b6d0a8d625703300af30eac7ede2daff426f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd23944e6e905fd4769db15a31c3407734adcbf17` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd2635bc7e4e4f63b2892ed80d0b0f9dff7eda899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd4bbbc055b80c2a3dbe581a24224de976d062d13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd4dcc2a9838282094b3c1a2c92245eb2cf15d5bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd68173ed5390ac42baf031c894f196f00cde8898` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd6961dc232e3acf54ccf435791985bb514275c59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd7d585869df3c5f7b82cb6a6bf3941e057ae993a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd7efa09b7f16c6237ecf01f735fa31b541f75db7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-397910 | `0xd84a36394cbd4e3c4102697d8ba880b4b181d6bb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xd9b75e820e2d39a4341172d5a4351259c0f23f70` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda442c468f77f4f90032ae8ca99850eea2091bfe` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xda4b53f75921c109fed0ffd8ad9f22430b4c3438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdc1d17c5413d1a6457ea2f4a991a24eb85277a4f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdd3c5646ace06401cf2c56deda0bb8f2658548e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xde12723b2a478d4a1d347d49fe15ac0c2691f2da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xdeefc0449d7e8162f1c007aebbb7ee92d50a5d0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe1eb61d87b94ddc860ddd5923ef3c59b4bfc733c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe2e464fafe7b0e6d1ebfcebe56895be8bafbee02` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe39db55d7e69d0bae8801a7dee01d2e2a8ae5ac9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | arbitrum | unit-397912 | `0xe47fec1c72850d867a1655c4c5902de7728ca205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe56758b70d5c99743e448bc846deeed66ab33647` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe6f03c5626bca2edd4140a303b495fb58075d4bc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe74f29be1e92776377c65982b46c24216423efd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xe96507ef8a2aa52ca72c8f94f98dc77e3387abb2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xec3d404b8b193233ccfbd01f18cc65596d99214a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeccc8316ff1d48d0780ae387b8d240c1df731fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xed8ca3b047e78a41bf61f12e1c1ca6cc46032694` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xed9e3f98bbed560e66b89aac922e29d4596a9642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xefda56b3b161686fc6bc13644bb26625e056c8da` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xeff23b4be1091b53205e35f3afcd9c7182bf3062` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0b4d1f8ffebd0d68f9575c6ae5440959f76bd5e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf0cfe8c913747a629100cc0242d27191c33ccffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf1eeb72b63b7f8fd02fde8103e635f095963b875` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf357ec5a6c82766aeb97d6da7488e2efc3dc0182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf3f577861d331682c520f2093b029a0edb1e3629` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf5242e76fda17fc6e2969d99f4caa0101aafde4e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf52ddc881107eb04e05bc105a9e244557f0e275e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf702c1ed55690fc16d28e0229e67ed1da804ee61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xf75566926397a4683eb6c977d7acae16459a2253` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfa09f1ab45e5ea2f44b3963d7681bce2c1b8dac2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfb59c23296b9862d3c1a3e8ce7ac1c4112980eaa` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfba7cd036788e5ad0b13593d3be7fbda37932c5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfc190d28231e3ccea7ea64b2f2c4b6ec48e15a14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfd7ed9d3d4fd88595af6a87f798ffdb42b4d7ccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | arbitrum | n/a | `0xfe019f6cd6ef0a1e12b63609f8ee5b0d3617a5c8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x00c47dd23ffc1de5ef52a840018fc600de264165` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0127ee938473d0fbfb78525bd59608a5fdbc0416` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397921 | `0x0176a42a277e6e466cf62eb37e62dda5400d6586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0208d735576b3d974024237393f4617285bf0563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0213b4dac5333049e82c960668033b6f5177e856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x044c08639bd59beb4f6ec52c0da6cd47283534e8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x06d435f7dfa89adb1efd03f6d2b9c3233dd467c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0add2ad63a70f5e009c36070421a63c96facede9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x0c4d6a83bd88e603115b01e6a0258915a9f09a0f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1101558a4df3f70525db9b6106fee53f7aa70192` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397924 | `0x113d31a32734a8526572e77a0779bd242cb71a73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x117b362cba3d20b38332f0aa119e396ec90d75d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x1331a0e73bc81234e93c41776fd1d94445dbdef4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x15b30e7b2da2cdc58d10b06a163343a95f2210e1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x160020b09ded3d862f7f851b5c50632bcf2062ff` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397928 | `0x1df3009c57a8b143c6246149f00b090bce3b8f88` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397929 | `0x1e6bb552ac038c6afb6ec5db6b06fdd106e31e33` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397930 | `0x1f79f8a65e02f8a137ce7f79c038cc44332df448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x209102c0d2e34282494114ea76d5251c8e7ea7ab` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x218864af1135eaae874c4e219601dda5ab12c538` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x22d2adf60bf872ae2c615fef67486351f3bde99c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397931 | `0x24408deec3d54a7abcf6ff09682e0d5047aa3eda` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x245e633b3fddd61e4a0a4282767bdacfa84a0b14` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397932 | `0x25a4d4a094a084c7ad45ac273cf7d6b6bfae7d4e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397933 | `0x26c37d0917f73916ea35861cd00f2105086f790f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2711ccebc7207c2ccb368d87d7fb3745aa066fa1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397936 | `0x2cc9938584efa3bdf0fd19ddbb1828a672ae2376` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397937 | `0x2eea9a5f8c77125bc1712ac751f04506c7023576` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f22c381a20e228306085aa3dea15c6992254d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2f97e40d827b7b5a1421f3c75e8bf9639c6a5147` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2feddec88186f58b0573bd8de38aac1b6cb884bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x2ff261773899f8a124c61804cafa579b23c303d8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3645dd00c50cc7348d473912d39d57e2cd22baf0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x371a353a6dbcca51a7c45b828992c4dcace6c347` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3b3e4b4741e91af52d0e9ad8660573e951c88524` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3bd097fac5a948a317989436691f4e4d0975a5ac` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397944 | `0x3c53790198dde8603f78ec0250ee4066e179f890` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3cda15aa5493048f414f6e769557eec3b92428ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3d06b360434d3eb72224e7eac3857eecc3026661` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3e2af6de241af5481fe3facc9a56c95ebef4a205` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397945 | `0x3f93eced5ad8185f1c197acd17f8a2eb06051365` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x3ff0a5e6689977a1c3d56c83edc2021d626987ea` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397946 | `0x40c90c067868e68067db7359f67ef69e60632219` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4119386ac2bd48f5c0781c39f71d9002ee2f0d0d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x43054b7588b98e49843275b687f52cd0441ac44b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x44d92d9336bf65b0f103243d2434bfbe1557001e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x47037d1d5b44ccf5b2c7ec31b3191bd040e19e71` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x479dbcb9421fa23a8df33762e9c356f0e30a7e45` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397947 | `0x48419c93d0d3b2428cd02bbcdeabd3aafc107f85` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x49d26a6eeeb49e79a0c73b95fd99d23698d3614a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4a4f63a7ff918af58a94d58c075b3da29df98a9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ab421de52b3112d02442b040dd3dc73e8af63b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4c198765ccf4fb5866867c70e05e8c41c11b634f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4df8d3e7943f720eb012bb007a3dc066c5cd0cfc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4ea3b7cc1efcdb92a9fe67d2e45d5c46afb1262f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f16a1f3ba688643522177f0f85936e9afcea69d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x4f4abc969718982ed86c62b214607b31cfd27b95` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397949 | `0x505ac728645d2ef84380961f72baea500b3efa3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x518f6a037464be051fd3613f9599ab7467e79066` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397950 | `0x51af494f1b4d3f77835951fa827d66fc4a18dae8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x523ca9b16a99b00a8eda963054fdb5a1f49edc2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x524ba504799d60ce5e6bc14111d3f920c1a0774b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x53b42b075354dbf47f6b89a3a9fbd97becd54acf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x542fd4eb0dbbaed318059dfbecea0ddf249df49d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397952 | `0x56894633ec6d62f6ecc334c008d922df0d00fafc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397953 | `0x58c73f7e102bc6bcdc6b092ef0399b3e06d6b3e3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x59acb2966ba764e3c784a7165084ee2a9418c259` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5a988a59beb132594ac22d5eab6fd2d0143d4f99` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397954 | `0x5aa6a4e96a9129562e2fc06660d07feddaaf7854` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5db04b6335c26ee147afbec161aff6e90239b4b8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x5fca0cc8b0bb94ee4ec47003d209f4d0e13885b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6155719d35eae023d87626c391c425be6c2ff09d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x636230c0477463f5ad33134603e693879282f4f1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x68ece31efd085af0d9c8c75d86787f50eb737267` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x68f1ecf7a863ebff6b6c48420044ef960bcf9700` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6aebc663dd6b8de86129e671baf68586fb0c8fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6ba5b4cb0c157e07d4209dda307342698ea23f9f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6cb1bc6c8aabdae822a2bf8d83b36291cb70f169` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6dbef52768dcbdaa86abff2c926596884417b4b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6de98df2005efd6793fc615bf0231de2086ae82d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397957 | `0x6eeb59d15955d99aae8469243d25648719b6a65a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x6f7e8456853c676397718144fcefe89b7a6814e8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397958 | `0x7081a38158bd050ae4a86e38e0225bc281887d7e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x71a862683f158517b39bdc4a2ca0fce657d3a375` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7347383c4d258f3c64987acaf0e7c3c2bf5be0ba` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x73c364458e2fb9fa72c093e429f85eb4eb2d8fe2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7400b665c8f4f3a951a99f1ee9872efb8778723d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x74314006a809a93c532ca54971ddba025085de19` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x758231b7d5204d08634dd3f9fcdf49fc17355d33` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397960 | `0x7586406064a3f9c061b82e1902599526986307b5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x764f5d857db9851fc791fe584bdaca4c59682744` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x76e1775b5207d616506462abb7292baa2bdf5d05` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x778098cd30d96de369af1cd726a3079fcf437b8f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7b2e29f5b79965a1fb4dc15b635ee18edfba08dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7bcb0cc7ee1158827a1e29254e83bd55799855c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7de3fce3de3cdc34595eed74773cd47b84bca340` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x7e894935ed739cd5681240fbbaea1f8341627254` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x800b997d446c376380759f6c0a4f2a14ee56a51b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8116b1839dcd8966e1e74b2150635d35ae96ae34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x845952d4b0b920b3144fae60cd94d470285b1d89` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x84b76efe02a8a151af697a62f7ba59fb082b7e5f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x860746d05671c94562c73c176b10b9a824c417dd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86ac13bec3494409169140e43e3505dc1418fadb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x86b1742a1d7c963d3e8985829d722725316abf0a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397964 | `0x872b6ff825da431c941d12630754036278ad7049` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8840e26e0ebf7d100a0644dd8576dc62b03cbf04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x891aae661e605d410ea3c743d695f0c71e5e8b5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x8ace16293bc141db7f152c8eb3da86691c62a0e0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x90d8ed9ebb4e3579eeeb0be283767a4a690cd60d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x927f8c16c9e802cb3012989fab79eb8c098d4234` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x928e114d4caf88a4c297e1a748eabe7b8c6a9487` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x930fa1367cc88a3fa87fff8c272fafec0cc0f9c0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9321785d257b3f0ef7ff75436a87141c683dc99d` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397967 | `0x938021351425dbfa606ed2b81fc66952283e0dd5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x947e89024f6eb78664f7f28bae59236fc7cd0499` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x95414f6bc3dc31c0081582002408fed3ab1f4417` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9a6d881b23ecb6c8d4abc089dcb44e7d6374d4db` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397968 | `0x9aca557590f5020bda4ba63065fc3a1253bf8000` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9b4196e59739a0949cfd6c56b6f3c18e8a108237` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0x9e999fc759d6a6fa3342ff39113d98a7b7a3d25d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa02068f8e2cbcd2519dc03db2947ee9f53ca3fb8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397969 | `0xa02e9fb38be9363de9aabb362cca50a28e00a996` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa2101fd320d06e0a744e4fe90ef8a20ecd027001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa2afff5c84afbbfc2084b87ed79d63a366c74ca6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa4b13ebd7bb26a09408630524f8ffd901aee8025` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa71f674a76524e85818df373d21101c718a158d0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xa94034018a7c85c5c7342b8e712603fddccdbfd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaaa94535609e6152df1983b8b569123c55bdf74b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab014a1cedbf97aa662f1f6d0b7e224c809d5cf6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xab7c09927e922e216818f7273e4c09124aee65c4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xabea7eaa2f15fedad9fcbe2c4607c388c911431c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397974 | `0xac9244551807a82207c9ff86ce16492091d2eddb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xacdf571267e6cd05f62d0b2e86558b3a1111dcf8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xaebb6b4bf22f9848c977440ab4bc90928f6b79d7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb07683991711b10ffd6a8c9625875276fb07e927` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb0e9238e491b0e052d25e6fd0dfd5c5f0e3b5007` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb190933417f3921b95e7fe9f8c1335091eab1e73` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397976 | `0xb2280fd71b64791b0b145b289a72473bcd81a073` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb29d2ba19bd09349d9636ae6c68af001374ab69e` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397977 | `0xb29de0c2a884af396272086f4aa3f0ad2dad747b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb4e0bcda51b29d9c7bdd671f169877cc5f82caa9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb5b3c7a642953524088c97b6d4870557aaab2f2d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb6fa34bc4dbfe991a4a59fdd18180b28bb7cee3a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb97851fa559c2596e26038a1d531bb846050cdf7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xb9ff585cb18150f1c5f769fcc04559d0fbbdf8d5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xba91ffd8a2b9f68231eca6af51623b3433a89b13` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbb6b082ccb5fac655008392221352a02244f2695` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbdeea81aa21004e8dd8b5d2afc2c83b999f580a4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbe07e5eb5e4b6ca700586b41e4ecab614ad3a05b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397980 | `0xbf401edbb0265d037bfc89dffeb7dbda10b57c22` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xbf4ecd035c82e28eac9cab7f25e2798845f0f20a` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397981 | `0xc004e26bae20f8af5846c29419dc652feb75c639` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397982 | `0xc05a4d0bf81215de05e8a3c50167d7c2ba1d5cf9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc13843ae0d2c5ca9e0efb93a78828446d8173d19` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397984 | `0xc22fbb3133df781e6c25ea6acebe2d2bb8cea2f9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397985 | `0xc2d59fe9bc5f57b2409afe3714aea40b4279c2c6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc349fa08a192050bc6ac3b4d0fca0fb80c8df712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc448438a6f141ebc5ecc325dc92e52de3e080c04` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc4abb9aef545bd01f6e7a915fa99e62a65393cca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc5323cd3c557b14b52b3cc11a80e3482e58d997a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc57b3eeb3bac176eed4bad649890e3c217f745b3` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397988 | `0xc7498b7e7c9845b4b2556f2a4b7cad2b7f2c0dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xc90e8074979ea310fad81ef450bdbba7b4d56c52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xca10e8825fa9f1db0651cd48a9097997dbf7615d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbc1413c8758936786757fcff2d1a96594025903` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcbe2ae31d6f95e844cde6d0539f8e2d0fef79cee` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcc96ba33eae1147ba8b0c73d3dd4cee40d681ee9` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397991 | `0xcdc155227339cb436f3777877d102b4561f20578` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf4a40809f19e1b60b9946b7e3ba290788ead07b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcf8b7020c89795eab2b82889ef128fc5d55e457d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xcfe82450b4cd92023a8e184ac75b2ebb24cedb10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd10fdf40f0b21722d3d92cd4672dd72448f185c5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd14a997308f9e7514a8fea835064d596cdcaa99e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd18d33f1db9f5ec439748b4d5be9cc347282d89a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd293d533a48dd4f6782805ebed4c557035126650` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd2e1f051de9383d7c97d72ec17f75caf5c2e042a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd4dcc2a9838282094b3c1a2c92245eb2cf15d5bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6961dc232e3acf54ccf435791985bb514275c59` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd6d6a0828a80e1832cd4c3585aded8971087fcb8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xd7efa09b7f16c6237ecf01f735fa31b541f75db7` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397993 | `0xda4b53f75921c109fed0ffd8ad9f22430b4c3438` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdd037e0a968b7b0bd2bc05b43bdd5c9d8fc46dbc` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397994 | `0xdd7f14ee69df57fd78791c4b1f697395b9bd79cf` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397995 | `0xde162c2d7c0587c51a739a3ebb8def8df3668a93` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xde87b5db1f82d8076fabb35f19ca83dabaea92e9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xdecc5458a0fde482ae04ab13bd6866cfcfa8cf4b` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397996 | `0xdf37f7a85d4563f39a78494568824b4df8669b7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe3222bdc841ecdfdca1cd528045e7c3ab9f508c1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397997 | `0xe47fec1c72850d867a1655c4c5902de7728ca205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xe56758b70d5c99743e448bc846deeed66ab33647` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397998 | `0xec041744884b7ff4179e4b046f472dec9ef13bb8` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-397999 | `0xec054126922a9a1918435c9072c32f1b60cb2b90` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-398000 | `0xeccc8316ff1d48d0780ae387b8d240c1df731fd8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xed9e3f98bbed560e66b89aac922e29d4596a9642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xee4338844767a225d57f17dc1a6230931f1c44ae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xee5134bdb30a76af0b60f95bfbade8ba7ea66749` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xeed179de61a38fe99741fa82f2d6235db1ca7790` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf138797d27748b7fd052c04a204c7f4f5eb465a9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf2be87391e2040d4cb1f646fbb023c074315e94e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf357ec5a6c82766aeb97d6da7488e2efc3dc0182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf551010868773e66c9a235dc92f148464680af34` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf5d215d9c84778f85746d15762daf39b9e83a2d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf5d6560356cc5d7fcbf4ca20736af88b7cfa2ad1` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-398001 | `0xf60d272945c870e8dbfd02bf0339d5650646115d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf702c1ed55690fc16d28e0229e67ed1da804ee61` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf8ad4e43a3e5eed0f487c787f155c624a76ac63a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf8ce0d043891b62c55380fb1efbfb4f186153d96` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xf8ee71314e4bbb6b7fa71f11a943e43c38ba81a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfb18b5ce53d86a7c3ef00ab1b551c04975e3387b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfba7cd036788e5ad0b13593d3be7fbda37932c5c` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | avalanche | unit-398003 | `0xfc659f700a3c3cdb461dc4434336bc15b6984b08` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | avalanche | n/a | `0xfd7ed9d3d4fd88595af6a87f798ffdb42b4d7ccb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x001f67f6e66b7fca247cc5ea0b34be2569e87012` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0127ee938473d0fbfb78525bd59608a5fdbc0416` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0176a42a277e6e466cf62eb37e62dda5400d6586` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0208d735576b3d974024237393f4617285bf0563` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0213b4dac5333049e82c960668033b6f5177e856` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x03465a65b824c158698fa037ee6fc182a86991d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x04dd3811d289163dfa20c6e45327397f7ffc7109` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0972a0fa37984e7ff2aefa53a0bb10dce535aa73` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0ba6c34af9713d15141dcc91d2788c3f370ecb9e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0d37e768c3ed8a3fa494d03af69605c5be9a68e4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x0fad8f10746171c0616ce4b7b4e2e9439a9a02e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x15ba47e540e1b197e30d16a93b0c568b251629c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1736b8f6a110a435c23c3d06520c17566dfcee7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1ddd225ef26714bb8055ddceaee2589ba09c89ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x1f79f8a65e02f8a137ce7f79c038cc44332df448` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x245e633b3fddd61e4a0a4282767bdacfa84a0b14` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2860406fd8adb4c3e1dee35b96d9a66e06e186bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2f1617ecd1cee8892c54fbde11d2cc751e2f6e7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2fb089be0df198c1b1eac88500a09a1175d3a547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2fe5e5d341cffa606a5d9da1b6b646a381b0f7ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x2feddec88186f58b0573bd8de38aac1b6cb884bd` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x36dbf060dddedb1aaebd9553cf27df03a5746603` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3708d5ee0dce068022f11dbb35b0cc2062f3afbb` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-398107 | `0x376d567c5794cfc64c74852a9db2105e0b5b482c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x39467a0debf360a82f83880f13ebdf7f0c2ec735` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-398109 | `0x39d361e66798155813b907a70d6c2e3fdafb0877` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x3ec979b97db308b9489d42f2fffa84033efcd8d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x46d2c7f5c857c7f7bfe6f65b7b40f3678edc4a5a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x46e8c9e8a7c51b0993d93f747aee99c5718b037c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x479dbcb9421fa23a8df33762e9c356f0e30a7e45` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4bea23fc541c5bf0909d792a60e9bd0740657a99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x4c065d1c208cca70ed9ca967a8e8b952de347e79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x505ac728645d2ef84380961f72baea500b3efa3f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x542fd4eb0dbbaed318059dfbecea0ddf249df49d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5994fa96660dd9c29074f30337cb7fa609c712a5` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x5a988a59beb132594ac22d5eab6fd2d0143d4f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x604ff7cd543e51cda817e5cb8747d7f0bf3ede52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x616403be57ae887e3a1d944ceb0ab58a9ee5e3cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6aebc663dd6b8de86129e671baf68586fb0c8fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6eeb59d15955d99aae8469243d25648719b6a65a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x6fc6f3fa67d84f8ea8ecb8e93bf2f5a489307a53` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x70f9c8885f03e68cae7a48ee86cd6089ccc6b795` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x758231b7d5204d08634dd3f9fcdf49fc17355d33` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x79f271a35824e83518fa9522d15612392c509dae` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x7b53aedf58d2ed087a3dd690201245a61de3c66c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x82fde5086784e348aed03eb7b19ded97652db7a8` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8693f9701d6db361fe9cc15bc455ef4366e39ae0` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x86ac13bec3494409169140e43e3505dc1418fadb` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x86b1742a1d7c963d3e8985829d722725316abf0a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x87bca268e282dbc00477a24883542f87d40deb5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8cd11c6f710e8bf65b5078e92dc8529cff14b108` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x8ea0eb2cebda4d7c88183ac8fbf3a9ae6ae07a5c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x91741863a48f0b29fc0b6d10b3cde2122feb58f7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x944ebcd21dea579b5091d141c75ec28bfe054fca` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x99ad6e3c00dfbcd80b7593b1cd8fb8a9f1a2d230` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9aed3a8896a85fe9a8cac52c9b402d092b629a30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9d5abc3970e44f595deff7de68beff9d38166910` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0x9e999fc759d6a6fa3342ff39113d98a7b7a3d25d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa058798cd293f5acb4e7757b08c960a79f527699` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa2101fd320d06e0a744e4fe90ef8a20ecd027001` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa2f2d3a7d6c9d20b988978a01214e89bcdd4d673` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa4b686b11cb6dd7e69a723f892409d5e83aeed7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa5e596ab4227b5a098dd5a4935137085cb83fbd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa8452e2d63b29783ed2e5ca0d8d4fe0cc2161d5b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xa94034018a7c85c5c7342b8e712603fddccdbfd7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xab32f93fe6aa6a8989e7db6f743dcb66a4209b68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xadae7adc476d917c5e51f231973e0fdabe5fe4c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb130a49065178465931d4f887056328cea5d723f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb54e1d90d845d888d39dcacbd54a3eec0d8853b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb709131900de02177f8b195cff6c37ff5f020116` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xb83e58090cda34160366e36e41ea7acd609b3fe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xba3dd3e9109dceae62b7192c25976cc98e132a55` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xbe07e5eb5e4b6ca700586b41e4ecab614ad3a05b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc036bac980d5a379ff1db249f2e99d1bd3fb09ef` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc349fa08a192050bc6ac3b4d0fca0fb80c8df712` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc67f0944cce4da3030af3d6f4dac851551abdb8c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xc7498b7e7c9845b4b2556f2a4b7cad2b7f2c0dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xca10e8825fa9f1db0651cd48a9097997dbf7615d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xca7184ea1cb4cf04d49bf219c49a39231299da26` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcc96ba33eae1147ba8b0c73d3dd4cee40d681ee9` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcf4a40809f19e1b60b9946b7e3ba290788ead07b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcf8b7020c89795eab2b82889ef128fc5d55e457d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xcfe82450b4cd92023a8e184ac75b2ebb24cedb10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd1d3a7d0ca508998de5cbfb86cecd0546f0e287c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd2565058287aee9c3c8297d2bc9ec11cd507127c` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd2635bc7e4e4f63b2892ed80d0b0f9dff7eda899` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd4dcc2a9838282094b3c1a2c92245eb2cf15d5bf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd5befe3fecdf1c941c58119a4e395806eea0c343` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd6abd5fd165fd9127b37b63ac1ab86574bf5686e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xd7a03024c9cab9ca9e85e649acb598b51774234f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xdec7f784f655e9e505ee137492e256685b966636` | ❓ Unverified |
| UnnamedContract | unknown | retained_scope_excluded_inventory | address_book_excluded_inventory (excluded) | 0 | linea | unit-398129 | `0xe47fec1c72850d867a1655c4c5902de7728ca205` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xeb6d0f12897b970f93794152c557c99f31ff3589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xed9e3f98bbed560e66b89aac922e29d4596a9642` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf0cfe8c913747a629100cc0242d27191c33ccffc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf357ec5a6c82766aeb97d6da7488e2efc3dc0182` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf3590865741632700434a164000c743f3471bb79` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf5d215d9c84778f85746d15762daf39b9e83a2d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xf60d272945c870e8dbfd02bf0339d5650646115d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfb9311af76c4fb11e0e91fe00b7652c0f17a4774` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xfbc49f33cb59daad850861d5e4d02df923399560` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | linea | n/a | `0xffd63b06985d1e95a53c56993312dcca2446b624` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x03465a65b824c158698fa037ee6fc182a86991d6` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x15ba47e540e1b197e30d16a93b0c568b251629c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1736b8f6a110a435c23c3d06520c17566dfcee7d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x1ddd225ef26714bb8055ddceaee2589ba09c89ed` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2fb089be0df198c1b1eac88500a09a1175d3a547` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x2fe5e5d341cffa606a5d9da1b6b646a381b0f7ec` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3d605fa64595dba86f7780e128816adaaeca8a2b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x3ec979b97db308b9489d42f2fffa84033efcd8d4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x464959ad46e64046b891f562cff202a465d522f3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x480c8bff72148e0934429a51e5bf9c122f30e1b4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x53e255e8bbf4edf16797f9885291b3ca0c70b59f` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5a988a59beb132594ac22d5eab6fd2d0143d4f99` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x5bf68e0cc21f2cd6277d13c4ce51520be236f34e` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x604ff7cd543e51cda817e5cb8747d7f0bf3ede52` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x616403be57ae887e3a1d944ceb0ab58a9ee5e3cf` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x6aebc663dd6b8de86129e671baf68586fb0c8fcc` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9144d57c8336b952afb02587154da527424c51db` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x925afa2318825fcac673ef4ef551208b125dd965` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9aed3a8896a85fe9a8cac52c9b402d092b629a30` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0x9e999fc759d6a6fa3342ff39113d98a7b7a3d25d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa325ddf2bb2d2c8e199e4bbbe5963048e5477bf1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa4b686b11cb6dd7e69a723f892409d5e83aeed7a` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa5e596ab4227b5a098dd5a4935137085cb83fbd1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xa5f6b7d4863439ebeda88344966c756287b9677b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xab32f93fe6aa6a8989e7db6f743dcb66a4209b68` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xadae7adc476d917c5e51f231973e0fdabe5fe4c1` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb54e1d90d845d888d39dcacbd54a3eec0d8853b2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xb83e58090cda34160366e36e41ea7acd609b3fe3` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xc7498b7e7c9845b4b2556f2a4b7cad2b7f2c0dc4` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xca941f1b43cd2d7882fc6fc0457e9d76aff377e2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcac814009f57c86c2002b519f79a2d7fd2fda8c2` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcced0e6b0850b1d62c53312f2a312c3caeb78611` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcf4a40809f19e1b60b9946b7e3ba290788ead07b` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcf8b7020c89795eab2b82889ef128fc5d55e457d` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xcfe82450b4cd92023a8e184ac75b2ebb24cedb10` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xdec7f784f655e9e505ee137492e256685b966636` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xeb6d0f12897b970f93794152c557c99f31ff3589` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xecfd979cb06f877523e8f9107acd1c45c12f61c7` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xfb9311af76c4fb11e0e91fe00b7652c0f17a4774` | ❓ Unverified |
| UnnamedContract | unknown | non_address_book | non_address_book_inventory (excluded) | 0 | berachain | n/a | `0xfbc49f33cb59daad850861d5e4d02df923399560` | ❓ Unverified |
| VoidStrategy_ETH | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397833 | `0x5dab2541175fbb2cad3dc624ee41917284a00feb` | ❓ Unverified |
| VoidStrategy_USDC | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397847 | `0xd5e4d961fd8a998dd62826e14251cc2628e270ba` | ❓ Unverified |
| VoidStrategy_ZK | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397830 | `0x26fb0dbe790659e5e69e3d89cac0f5967dc1b6e9` | ❓ Unverified |
| WithdrawManager_ETH | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397837 | `0x674db8f08620726dac5ef787d5e1f4784a3abc23` | ❓ Unverified |
| WithdrawManager_USDC | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397852 | `0xf66e17fcd5914f57adf584457a527b1a8e5c37ff` | ❓ Unverified |
| WithdrawManager_USDC.e | unknown | project_anchor | own_supporting | 0 | berachain | unit-398137 | `0x87bca268e282dbc00477a24883542f87d40deb5c` | ❓ Unverified |
| WithdrawManager_ZK | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397850 | `0xf383ae33651a79290246472a0603e4c32c72386a` | ❓ Unverified |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | monad | unit-397765 | `0xaf558f888e138ca9416111ec7ae8e28354cd9239` | ❓ Unverified |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397832 | `0x35a62c09427be1bae622d4492b851338969721b5` | ❓ Unverified |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-398179 | `0xaf558f888e138ca9416111ec7ae8e28354cd9239` | ❓ Unverified |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397975 | `0xaf558f888e138ca9416111ec7ae8e28354cd9239` | ❓ Unverified |
| WooAccessManager | unknown | project_anchor | own_supporting | 0 | berachain | unit-398138 | `0xaf558f888e138ca9416111ec7ae8e28354cd9239` | ❓ Unverified |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | monad | unit-397766 | `0xc45b55032cafeaff3b8057d52758d8f8211da54d` | ❓ Unverified |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397826 | `0x01b50b57a3d3c1a54433813585e60713e75f3de9` | ❓ Unverified |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-398180 | `0xc45b55032cafeaff3b8057d52758d8f8211da54d` | ❓ Unverified |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397986 | `0xc45b55032cafeaff3b8057d52758d8f8211da54d` | ❓ Unverified |
| WooFeeManager | unknown | project_anchor | own_supporting | 0 | berachain | unit-398139 | `0xc45b55032cafeaff3b8057d52758d8f8211da54d` | ❓ Unverified |
| WooOFT | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397851 | `0xf38583e662d3dc8bbe9ce791f06e1dd46800aaaf` | ❓ Unverified |
| WooPPV2 | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397849 | `0xe656d70bc3550e3eee9de7dc79367a44fd13d975` | ❓ Unverified |
| WooracleV2.1 | unknown | project_anchor | own_supporting | 0 | monad | unit-397760 | `0x2a375567f5e13f6bd74fda7627df3b1af6bfa5a6` | ❓ Unverified |
| WooracleV2.1 | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397842 | `0xae45cbe2d1e90358cbd216bc16f2c9267a4ea80a` | ❓ Unverified |
| WooracleV2.1 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-398175 | `0x2a375567f5e13f6bd74fda7627df3b1af6bfa5a6` | ❓ Unverified |
| WooracleV2.1 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397934 | `0x2a375567f5e13f6bd74fda7627df3b1af6bfa5a6` | ❓ Unverified |
| WooracleV2.1 | unknown | project_anchor | own_supporting | 0 | berachain | unit-398132 | `0x2a375567f5e13f6bd74fda7627df3b1af6bfa5a6` | ❓ Unverified |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397836 | `0x66c9467ec052fb258e24dcce87e93a0002966014` | ❓ Unverified |
| WooRebateManager | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397961 | `0x7616614084e040028d6a61c0f3a9699c121a6500` | ❓ Unverified |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | monad | unit-397761 | `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` | ❓ Unverified |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | zksync-era | unit-397827 | `0x09873bfeca34f1acd0a7e55cda591f05d8a75369` | ❓ Unverified |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | hyperliquid | unit-398176 | `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` | ❓ Unverified |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | avalanche | unit-397948 | `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` | ❓ Unverified |
| WooRouterV2 | unknown | project_anchor | own_supporting | 0 | berachain | unit-398133 | `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` | ❓ Unverified |

## Deployer Expansion Inventory

These rows are additive inventory from `project_contracts.discovery_source=deployer_expansion`; they do not change scope matching, coverage, or logic topography in this brief.

- Source: `project_contracts.discovery_source=deployer_expansion`
- Decision run: `deployer-candidate-production-20260712`
- Total contracts: 1297
- Live contracts: 58
- Unknown liveness contracts: 1239
- Source-verified contracts: 58
- Currently scope-matched contracts retained as-is: 1
- Contract rows sorted by chain, deployer, classification, contract name, then address.
- Classification counts: currently scope matched=1, candidate review=57, third party or infra=1, exact address book overlap=75, unverified unclassified=1163

Showing first 200 of 1297 contracts. The complete deployer expansion list is in `brief.json`.

| Chain | Classification | Contract | Address-Book Class | Role | Liveness | Source | Decision | Deployer |
|---|---|---|---|---|---|---|---|---|
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbe07e5eb5e4b6ca700586b41e4ecab614ad3a05b` | non_address_book | unknown | unknown | unverified | n/a | `0x044764c4e03bd080f7400e255654002e2d751d45` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xca10e8825fa9f1db0651cd48a9097997dbf7615d` | non_address_book | unknown | unknown | unverified | n/a | `0x044764c4e03bd080f7400e255654002e2d751d45` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2a375567f5e13f6bd74fda7627df3b1af6bfa5a6` | non_address_book | unknown | unknown | unverified | n/a | `0x21380f2d8cef342f07b043327581815a0cf670c8` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xed9e3f98bbed560e66b89aac922e29d4596a9642` | non_address_book | unknown | unknown | unverified | n/a | `0x21380f2d8cef342f07b043327581815a0cf670c8` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb89a33227876aef02a7ebd594af9973aece2f521` | non_address_book | unknown | unknown | unverified | n/a | `0x3e9a9c07bd4e1ba1f8ba44a7f73249d3153262aa` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcdfd61a8303beb5c8dd2a6d02df8d228ce15b9f3` | non_address_book | unknown | unknown | unverified | n/a | `0x3e9a9c07bd4e1ba1f8ba44a7f73249d3153262aa` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0127ee938473d0fbfb78525bd59608a5fdbc0416` | non_address_book | unknown | unknown | unverified | n/a | `0x7296fd0d4ea0492429c8d63c8ac33e5c87bde4a2` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x86ac13bec3494409169140e43e3505dc1418fadb` | non_address_book | unknown | unknown | unverified | n/a | `0x7296fd0d4ea0492429c8d63c8ac33e5c87bde4a2` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9160435be009bab2ec23ebe3ef274d97ae0985b6` | non_address_book | unknown | unknown | unverified | n/a | `0x7296fd0d4ea0492429c8d63c8ac33e5c87bde4a2` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd4bbbc055b80c2a3dbe581a24224de976d062d13` | non_address_book | unknown | unknown | unverified | n/a | `0x7296fd0d4ea0492429c8d63c8ac33e5c87bde4a2` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0213b4dac5333049e82c960668033b6f5177e856` | non_address_book | unknown | unknown | unverified | n/a | `0x935b29676114376513d0793cec8b643e52b43dc4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x245e633b3fddd61e4a0a4282767bdacfa84a0b14` | non_address_book | unknown | unknown | unverified | n/a | `0x935b29676114376513d0793cec8b643e52b43dc4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2feddec88186f58b0573bd8de38aac1b6cb884bd` | non_address_book | unknown | unknown | unverified | n/a | `0x935b29676114376513d0793cec8b643e52b43dc4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x49f023ff7fd51b5793f5976c6bd0d1039d0575b6` | non_address_book | unknown | unknown | unverified | n/a | `0x935b29676114376513d0793cec8b643e52b43dc4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x584739d8131e2e04235fea9cd91f60f86104f99f` | non_address_book | unknown | unknown | unverified | n/a | `0x935b29676114376513d0793cec8b643e52b43dc4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc349fa08a192050bc6ac3b4d0fca0fb80c8df712` | non_address_book | unknown | unknown | unverified | n/a | `0x935b29676114376513d0793cec8b643e52b43dc4` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xd4dcc2a9838282094b3c1a2c92245eb2cf15d5bf` | non_address_book | unknown | unknown | unverified | n/a | `0x935b29676114376513d0793cec8b643e52b43dc4` |
| arbitrum | candidate review | ExternalRewar_ARB<br>`0xdf0006994c46f4d006ecb2b5af3e212d94df23e1` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | candidate review | ExternalRewar_usdc.e<br>`0x4d0ec3bef43d72d17c3718c873a75f878a06ca57` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | candidate review | ExternalRewar_WBTC<br>`0xa397fba8c5c1aef9137601c185f6ab0e9cf43662` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | candidate review | ExternalReward_ETH<br>`0xfbbfccae3f76afc0979f20920b4d04d608f873bf` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | candidate review | ExternalReward_USDC<br>`0x181d8eb2eeff20c647073c4798111cbd1b423a60` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | candidate review | FarmingVault_ARB<br>`0x2aa18ab5d65449892519057d965706f051823a31` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | candidate review | farmingvault_ETH<br>`0x478e7f3fe49931c601e2399ddaee8eef2eef6f13` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | candidate review | FarmingVault_USDC<br>`0x38506fbb751ebffcf887cf5d4c7390ec0c503796` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | candidate review | FarmingVault_usdc.e<br>`0xd3d86c94a8d468bd1328e6491ed8aca58d850ae7` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | candidate review | FarmingVault_WBTC<br>`0xea6790425afa71d802e017ef5b6257e42c28554a` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | candidate review | IntegrationHelper (token info)<br>`0x28d2b949024fe50627f1ebc5f0ca3ca721148e40` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | candidate review | LendingManager_usdc.e<br>`0x371a2528dcc40c77d6aaac255fa9f796de5d6f91` | project_anchor | unknown | live | verified | review: missing_independent_ownership_evidence | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | candidate review | VoidStrategy_ARB<br>`0xf80475ef92df49527fc63a53b967d8064d476f02` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | candidate review | VoidStrategy_usdc.e<br>`0xec041744884b7ff4179e4b046f472dec9ef13bb8` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | candidate review | VoidStrategy_WBTC<br>`0x9d71a7b0022b0c402f15808d781f0f31a63abe15` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | candidate review | WooBuyBackSwap<br>`0xa186555f7b5a60c0d103c84f0bcb98fbd27ae24a` | project_anchor | unknown | live | verified | review: no_fresh_structural_match | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | third party or infra | UnnamedContract<br>`0x28f88a809ccc085956ab9f978067698d25de014c` | external_dependency_or_infra | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | exact address book overlap | UnnamedContract<br>`0x44df096d2600c6a6db77899db3de3aecff746cb8` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | exact address book overlap | UnnamedContract<br>`0x4ab421de52b3112d02442b040dd3dc73e8af63b5` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | exact address book overlap | UnnamedContract<br>`0x9aed3a8896a85fe9a8cac52c9b402d092b629a30` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | exact address book overlap | UnnamedContract<br>`0xa43305ce0164d87d7b2368f91a1dcc4ebda75127` | retained_scope_excluded_inventory | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x00daaab002049a6ac2d7d58c2ee5b5f363de8ba1` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x04736de676a0679356cbf0576beb858c5cc707cb` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0510e56edb651fa39c3330d2f5bf8fbecdfcc53b` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x070d5c603b5c7bb451916dca718d3e800f5bdb09` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0972a0fa37984e7ff2aefa53a0bb10dce535aa73` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0ab13d6d5f42f595f86f193ab90112894a2bdc2b` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x0ba6c34af9713d15141dcc91d2788c3f370ecb9e` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x10aeb50fc074afd6981582d1ed96cc20b5550d25` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1109e03516eb25eab2150d0b274b8d4f5f3cf549` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x113d31a32734a8526572e77a0779bd242cb71a73` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1349e570f9bece96cb9af17627339def23c78636` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x138047d643d68c5ffe770bc554b61fdd01f3804c` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x13b3c94022bb30fff306a866c6c385e2ef14c6e1` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1553a071c135137610699f93c9834e8165ecacca` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x15a0358cf225f8ec884e353a8acc081d3b1d0e74` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x15b11a8c2b9d7b439fdbebdcfb633b8f6665d606` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x15ba47e540e1b197e30d16a93b0c568b251629c2` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1ce18ae6886940be8c04ed954c747c4082f8bcdb` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1ddd225ef26714bb8055ddceaee2589ba09c89ed` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1f2868d1dc715b8503973367b82dd4bfed422778` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x1f79f8a65e02f8a137ce7f79c038cc44332df448` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x21886db0657700ae32821b824098bd06a5636103` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x21becba18fc08376fd33f1b9c7deb5709d34b032` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x23044115a7cb387052c73f65c6f2f7f575f7d718` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x23433a093a09965e872df30b0d4c33d6d8a38d09` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2500ad59b46ff4b96f8e1eac3fe1f78eaf955777` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x26f33ea1e476ad8a016834107f9889b6c31c14f5` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2711ccebc7207c2ccb368d87d7fb3745aa066fa1` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2743d776eb222d10bb45ca0d847a83b82cbeb7bd` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x29ca8bf20841ca39a693c83e3a85dbf4bef52407` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2a73a50077713be126f66ec8474186382d0f60e3` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2a8ede62d0717c8c92b88639ecf603fdf31a8428` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2aaf89c574cf39f2e370b6d6f50e792738219050` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2b76b9a6111a2fb57ca2933c047498b31f853d88` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2cc9938584efa3bdf0fd19ddbb1828a672ae2376` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2cf870854469e77191b65d990418559b66688dce` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2df39335b79783b7e02afcf552303602c14f5208` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2eeb120bf9658e81e55d092e5769c971d2d14bd4` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2f1617ecd1cee8892c54fbde11d2cc751e2f6e7d` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2fe5e5d341cffa606a5d9da1b6b646a381b0f7ec` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x2ff261773899f8a124c61804cafa579b23c303d8` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x308984cee30cec74628a931383c09965feef8000` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x31a06d735f5adcf5ce1b9522a8b21bc989b1d149` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x31ae608cbadd1214d6a3d5dcf49e45fb18e2a48e` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x366e2fda969649980dbc0d10c7fc959f0ac5aa3f` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x367f11b512883f3ac68924ae1286b997f8233df3` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x36a106dff9c2d9beafba3db965044204d36489d4` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x36dbf060dddedb1aaebd9553cf27df03a5746603` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x371a353a6dbcca51a7c45b828992c4dcace6c347` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x39d361e66798155813b907a70d6c2e3fdafb0877` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x39ee2867d842d728bd4e6248a41c50d63ed14577` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3aad22346b5721a7ddf504c19fe3349abc52ace5` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3b3e4b4741e91af52d0e9ad8660573e951c88524` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3bb5aa84db3e1b7596c3605761252b5a018adaa8` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3be04d858a1d39772c5256e79413e8a6f59db10a` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x3dc6625ce7a4ad2387a80304b7e57f3f722da2cb` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x409df205ac3da3462bd29b562dbe21b1ac2a1dcf` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x41c790013d303db174b7d6b32bc6f06eaf71c16e` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x43054b7588b98e49843275b687f52cd0441ac44b` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4382417d3e9ca0af608f120203464c71739c098f` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x452c32c03196876d7ae4834d700aa20b706eff4d` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x468f46137c1d1c5eb1414c2f9595732c2e383dd8` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x48c9ee9ecc2b9645a55aef9f112dbfca877224b2` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x48fd9b3443b0948c320da16bd9b1217f51ec8c9e` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4926eb102d0e5ff65aac336ba028fb77c1ee7e79` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x497abdf1438c673e6a74033098d4eb14a7f3c60f` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4a54e53b90c91ab50c31a51298c1348982c1bdac` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4b9736f4c54773e04003f80fb9c6da6784522ef9` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4c51d38bd6667c3d5d2a9da6a580231b26128c6a` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4c76216e3664b669876ecb408dfceb8ab00e1668` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4d7cb59ee4629cddd0467da25205b1ed1e5d721a` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4ea3b7cc1efcdb92a9fe67d2e45d5c46afb1262f` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4f052db542472a98c00ea568f44bfced57b9a978` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x4fbec6f0b2c0250c1da65bd45b24a62085d7996b` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x505ac728645d2ef84380961f72baea500b3efa3f` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x50f347d0c33e5b12cb76daa64ebc0f09d0d0ecc1` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x52082ced545857faa129ba40ee051e0a5c0aefd4` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x53c660e1d8854908709f370ab9b0719e668d683b` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x552f22cf8d5b333f96f5002ce9882897af508a40` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5726051f190a7717b57f96d220da0a59ad8e86a3` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5811850b72787b8beb402fdb1f78df455b65b3b2` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5994fa96660dd9c29074f30337cb7fa609c712a5` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x5b87c631308c6fb0ead5aa89b6fb8c78421cc807` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x604ff7cd543e51cda817e5cb8747d7f0bf3ede52` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6124c960dc4d19023d3bb11b5619782ff4c77903` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x632626840c40942dff36bfb68a6eb8064f7d603e` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6376455d81fbaec23952702dd502bde87eae6ed6` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x640b42a4f2210de90f53f6d8068ad8bdbbd82fdf` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x64a734ded51312b4b0ee96811b725f2354e90f4b` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x65003ba7c8e30e7b15903f70b36924057adfd070` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x65104007e3c564a72492138b315e54e4ba5f58ef` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6641959fe5eed7166f2254cf04b0d20c96776d9a` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x66c88364bff2ece7e7cbbb80822f3c1dc0e8c10c` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6838b76d054b29c2d1c203364d72c96095537fb1` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x69cbffd1f4c4c65d55cad8031de2b5637550e705` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6b4488c208b0a74e7ff90184f433da9637cb12d4` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6b4912364231c41a848d0f81703501701ef7aec7` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6c2d141309d4e00c8cdbf277ab282d9cf60b09da` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x6f09ae4925739453d7c8c9a22fd07585148dfc01` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7081a38158bd050ae4a86e38e0225bc281887d7e` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x728eb9e039e926107d857f2e9df111db20eec6c2` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7347383c4d258f3c64987acaf0e7c3c2bf5be0ba` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x73504eacb100c7576146618dc306c97454cb3620` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x73c364458e2fb9fa72c093e429f85eb4eb2d8fe2` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x747f99d619d5612399010ec5706f13e3345c4a9e` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x758231b7d5204d08634dd3f9fcdf49fc17355d33` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x79afa5445169bdaed2c0cf85857d84f66b8d852c` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7a7a3f4df7429a359cfc4da3940280539c781ee0` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7cd5bc903b4385ea4b37e07dd1e0c8332d3d0981` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7d8f2090f2cfd083af800712fe2d04289252add3` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7eb8d4ccfdbd9df8d3520e9c5b5edf6a5cbe4cad` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x7f25714de36da23c96593e24261c859da4f950ac` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x817eb46d60762442da3d931ff51a30334ca39b74` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x81ab3492bacfff639dde60763ccf9e348117075d` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x81d34d64321fce8b405a2f0f21c4b09d47024044` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x84a0bc5302f07a9743a19ddd7d57da11a2578ee1` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8693f9701d6db361fe9cc15bc455ef4366e39ae0` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x86b1742a1d7c963d3e8985829d722725316abf0a` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x872b6ff825da431c941d12630754036278ad7049` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8a532c0a640ece9d4c3b3113d59c7ba5766ae4fc` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8b4acac4187717398bac4495c0a97a0abd548a87` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8b5da2e760c690968b987d34837dd1fb8ba68d2f` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8bd32c8cbb30626273fbe3b26147155a391a0578` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x8cd11c6f710e8bf65b5078e92dc8529cff14b108` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x915ef90e1bc9ec231d5274b273f8ee251eea90ec` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x91d11ef6b31e8e2d5258c21c33d26c9e746b93cd` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x925afa2318825fcac673ef4ef551208b125dd965` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x934bccc16c02c40b08484ae33806bb4bd59e9bb8` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x994b055031ade69701cea3056fd7c4a4b368d57e` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9ca74264984a9f6882a537832b1bae962e076799` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9e999fc759d6a6fa3342ff39113d98a7b7a3d25d` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0x9f46a7f7afd5a595c782e57b5dae1fcc01bff18d` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa14c57b073e6da6bcc23fc0e6934665118f05701` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa1a2ed8a06fc1bc4be981b8556910a4352aafb50` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa2e70fadce360d2736e313f1486faf98b14d02e0` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa4b686b11cb6dd7e69a723f892409d5e83aeed7a` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xa8452e2d63b29783ed2e5ca0d8d4fe0cc2161d5b` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xaacf2201198c8bf5f2dcd5a187754b4cb9cd9198` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xac5cf659e142b1c4ee557850842505d70a10a81b` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xac9244551807a82207c9ff86ce16492091d2eddb` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xadae7adc476d917c5e51f231973e0fdabe5fe4c1` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb130a49065178465931d4f887056328cea5d723f` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb14ec1b09e2129c5ea5ed6747eda6ab4d23a3962` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb4402c37cdc6e40a8039661a226cfbf7540aa957` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xb6f776718f2e4c16a9a7161db2018b5261485354` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xba3d62a074271517b8dd5b36254b829cc37d215c` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbae04cc8acb81ca74b8beae7b8787eaeade5f499` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xbd904400a17eae621c4b799bab7217d155135166` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc036bac980d5a379ff1db249f2e99d1bd3fb09ef` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc05a4d0bf81215de05e8a3c50167d7c2ba1d5cf9` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc21a8d5b55eac4973a02f944334e243f09d260ff` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc2c1e8ce01f589e827a339ff417606da3e1d86ff` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc3938e6dbb862d8c2d6e18e6ad139f309eb4331f` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc3f15dafd6ba1becbbc7eaa0f733065065d0848f` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc448438a6f141ebc5ecc325dc92e52de3e080c04` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xc930e2836ac99c8d4b895e111f1344e5ecaf7db2` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcb256b7112de5045685174291a004cbaa8ac1711` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcbc1413c8758936786757fcff2d1a96594025903` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcc870428df2ac533877a7c9dde067bc911757361` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xccb8782342b500444e08b8011047d08986148024` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xce66ab84d3e7cea875154673d6ec18ac49978bb3` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |
| arbitrum | unverified unclassified | UnnamedContract<br>`0xcf4a40809f19e1b60b9946b7e3ba290788ead07b` | non_address_book | unknown | unknown | unverified | n/a | `0x97471c0fdddb5e5cc34cb08cb17961bd3a53f38f` |

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
| skynet.certik.com/projects/woofiswap | WooPPV2 | ambiguous — not counted | WooPPV2 (alternative) `0xe656d70bc3550e3eee9de7dc79367a44fd13d975` — deployed 2024-05-08 18:03:23+03 — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-20 07:59:29+03 — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-07-01 16:34:00+03 — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-19 18:22:49+03 — liveness: live (code_present_context)<br>WooPPv2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-20 06:36:53+03 — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-11-27 13:38:37+03 — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-20 08:05:16+03 — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-18 10:16:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| skynet.certik.com/projects/woofiswap | WooracleV2 | unmatched — not counted | — | Audited Files/SHA256 listing | no |
| hackmd.io/@verilog/woofi-swap | Wooracle | unmatched — not counted | — | listed in architecture section | no |
| hackmd.io/@verilog/woofi-swap | WooPP | unmatched — not counted | — | listed in architecture section | no |
| hackmd.io/@verilog/woofi-swap | WooRouter | own contract | WooRouter (selected) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| hackmd.io/@verilog/woofi-swap | WooGuardian | unmatched — not counted | — | listed in architecture section | no |
| WOOFI Stake - Zellic Audit Report.pdf | VaultV2 | unmatched — not counted | — | listed in scope table | no |
| WOOFI Stake - Zellic Audit Report.pdf | WooLendingManager | ambiguous — not counted | WooLendingManager (alternative) `0xc8ec7f48a82a07d95110ff26faacde9757dd9dc7` — deployed 2023-01-09 13:49:29+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0xfeecedbc3c292db79347473a2b976a463c3ac2d6` — deployed 2023-11-08 11:11:51+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x5c7ff24fa7af62bc25ad6747a6193183b4bb7bc5` — deployed 2022-11-08 09:43:55+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x385e063dea8908d06be024de85da5b8da4b10f73` — deployed 2023-01-09 13:43:51+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x79a5453865a39f67d3ffc7964cd760f1763be767` — deployed 2024-04-03 11:45:17+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x6fc2c9f904a98caeeef6aaba6de625b5698f3f08` — deployed 2023-03-23 10:41:38+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x01e42ce7cdcb7a2eaae0bb8bdce52f0bbb63f139` — deployed 2023-01-09 13:41:44+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x9f46a7f7afd5a595c782e57b5dae1fcc01bff18d` — deployed 2023-01-09 13:31:48+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x697c97a37bc00c2306f2b08ca14f3d55db6ffccd` — deployed 2023-01-09 13:53:21+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x697c97a37bc00c2306f2b08ca14f3d55db6ffccd` — deployed 2024-04-22 13:09:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFI Stake - Zellic Audit Report.pdf | WooSuperChargerVaultV2 | own contract | WooSuperChargerVaultV2 (alternative) `0xa780432f495e5c6851fd7903fe49ad77c952f7d8` — deployed 2024-04-03 11:45:09+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x866810349b2e28e411669911bb0babb06cc60625` — deployed 2023-01-06 08:48:20+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x11b29ae3037f4526e4aa56952318e0d01ada836a` — deployed 2023-01-06 08:58:16+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x5cb9ba4a6f05c4125d61172e1b2c1dbe3afb3158` — deployed 2023-04-04 09:37:42+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0xedbb74da05d58b22f07184bb79ed9124791799ac` — deployed 2023-01-04 14:08:25+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x44df096d2600c6a6db77899db3de3aecff746cb8` — deployed 2024-04-25 10:23:21+03 — liveness: live (current_address_book_code)<br>WooSuperChargerVaultV2 (alternative) `0x7f3f2a499c00c2d7018300f99a232896fd295bb1` — deployed 2023-03-23 10:41:19+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0xd2fdab19b94b59c5f0e75dd9813365df815b56b1` — deployed 2023-11-08 11:11:41+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x1cd7b33faf4f172146bcbb841c7addc96802e6c4` — deployed 2023-01-06 09:08:57+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0xb772122c4a37fe1754b46ab1799b909351e8cb43` — deployed 2024-04-25 10:17:11+03 — liveness: live (current_address_book_code)<br>WooSuperChargerVaultV2 (alternative) `0x7eb8d4ccfdbd9df8d3520e9c5b5edf6a5cbe4cad` — deployed 2023-01-05 10:31:26+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x1109e03516eb25eab2150d0b274b8d4f5f3cf549` — deployed 2024-04-22 13:09:10+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (selected) `0x8c603050d7a913b6f63836e07ebf385a4a5736e7` — deployed 2024-09-23 10:02:51+03 — liveness: live (current_address_book_code)<br>WooSuperChargerVaultV2 (alternative) `0x9dd5dd86b978f17628f01307a83347d9ec9b0699` — deployed 2023-01-04 12:28:02+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-09-23 was 38d from audit; next candidate 113d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WOOFI Stake - Zellic Audit Report.pdf | WooWithdrawManagerV2 | ambiguous — not counted | WooWithdrawManagerV2 (alternative) `0x3fe2c827ff572b8fe03b7d16695c88f21448b3b9` — deployed 2024-04-22 13:09:34+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0x1bb2ebecfbb4f78d83fb0a21cb415383779602c9` — deployed 2023-01-06 08:58:45+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0x382a9b0bc5d29e96c3a0b81ce9c64d6c8f150efb` — deployed 2023-01-04 12:34:00+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0xbfe3d22b223909a06469854e7af374ab449f09ac` — deployed 2023-03-23 10:42:02+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0xd05b953cfd75426711a904f76eb3241bad5d03ac` — deployed 2023-11-08 11:12:00+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0xe76c97897a9c3f8aaafc3fe86457fe460553d3fe` — deployed 2024-04-03 11:45:24+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0x7f78213da92552d00bd676466ab2ef8a9287fd4c` — deployed 2023-01-04 14:09:05+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0x755e4af9e77a91999693947b02975c584d1b56f6` — deployed 2023-01-06 08:48:50+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0xa429b468d222bb31ff256f3d08ddc0a2d8a59664` — deployed 2023-01-06 09:09:32+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFI Stake - Zellic Audit Report.pdf | StrategyAave | unmatched — not counted | — | listed in scope table | no |
| WOOFI Stake - Zellic Audit Report.pdf | BaseStrategy | unmatched — not counted | — | listed in scope table | no |
| WOOFI Stake - Zellic Audit Report.pdf | WooStakingLocal | own contract | WooStakingLocal (selected) `0x2cfa72e7f58dc82b990529450ffa83791db7d8e2` — deployed 2023-05-20 03:44:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WOOFI Stake - Zellic Audit Report.pdf | WooStakingController | own contract | WooStakingController (selected) `0x93e63fc2146d596afe4583d03cfe496ffcad5a04` — deployed 2023-05-20 03:44:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WOOFI Stake - Zellic Audit Report.pdf | WooStakingProxy | ambiguous — not counted | WOOStakingProxy (alternative) `0xba91ffd8a2b9f68231eca6af51623b3433a89b13` — deployed 2023-05-11 17:07:56+03 — liveness: live (current_address_book_code)<br>WooStakingProxy (alternative) `0xba91ffd8a2b9f68231eca6af51623b3433a89b13` — deployed 2023-05-11 17:13:28+03 — liveness: live (current_address_book_code)<br>WooStakingProxy (alternative) `0xba91ffd8a2b9f68231eca6af51623b3433a89b13` — deployed 2023-05-11 17:26:00+03 — liveness: live (current_address_book_code)<br>WooStakingProxy (alternative) `0x3bd96847c40de8b0f20da32568bd15462c1386e3` — deployed 2023-05-11 17:11:43+03 — liveness: live (current_address_book_code)<br>WooStakingProxy (alternative) `0xba91ffd8a2b9f68231eca6af51623b3433a89b13` — deployed 2023-05-15 08:00:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFI Stake - Zellic Audit Report.pdf | WooStakingManager | own contract | WooStakingManager (selected) `0xa9e245c1fa7e17263cc7c896488a3da8072924fb` — deployed 2023-05-20 03:43:45+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WOOFI Stake - Zellic Audit Report.pdf | WooStakingCompounder | own contract | WooStakingCompounder (selected) `0x63a015b5e305edca94b9b0c27461547b3f4ea1e3` — deployed 2023-05-20 03:46:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WOOFi Swap - Zellic Audit Report.pdf | WooPPV2 | ambiguous — not counted | WooPPV2 (alternative) `0xe656d70bc3550e3eee9de7dc79367a44fd13d975` — deployed 2024-05-08 18:03:23+03 — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-20 07:59:29+03 — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-07-01 16:34:00+03 — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-19 18:22:49+03 — liveness: live (code_present_context)<br>WooPPv2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-20 06:36:53+03 — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-11-27 13:38:37+03 — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-20 08:05:16+03 — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-18 10:16:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFi Swap - Zellic Audit Report.pdf | WooRouterV2 | ambiguous — not counted | WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 14:58:03+03 — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 13:58:36+03 — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 15:21:25+03 — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 15:19:47+03 — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2025-07-02 09:13:00+03 — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 15:29:42+03 — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 13:56:44+03 — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 14:06:08+03 — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2025-03-18 10:45:49+03 — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2025-11-27 16:47:20+03 — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x09873bfeca34f1acd0a7e55cda591f05d8a75369` — deployed 2024-02-26 15:46:17+03 — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 14:10:40+03 — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-12-26 16:03:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFi Swap - Zellic Audit Report.pdf | WooCrossChainRouterV4 | unmatched — not counted | — | listed in scope table | no |
| WOOFi Swap - Zellic Audit Report.pdf | WooracleV2_2 | ambiguous — not counted | WooracleV2_2 (alternative) `0x2a8ede62d0717c8c92b88639ecf603fdf31a8428` — deployed 2024-04-22 11:04:17+03 — liveness: live (current_address_book_code)<br>WooracleV2_2 (alternative) `0xcf4ea1688bc23dd93d933eda535f8b72fc8934ec` — deployed 2024-04-10 19:50:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-WooFiEarn-v1.0.pdf | WooLendingManager | ambiguous — not counted | WooLendingManager (alternative) `0xc8ec7f48a82a07d95110ff26faacde9757dd9dc7` — deployed 2023-01-09 13:49:29+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0xfeecedbc3c292db79347473a2b976a463c3ac2d6` — deployed 2023-11-08 11:11:51+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x5c7ff24fa7af62bc25ad6747a6193183b4bb7bc5` — deployed 2022-11-08 09:43:55+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x385e063dea8908d06be024de85da5b8da4b10f73` — deployed 2023-01-09 13:43:51+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x79a5453865a39f67d3ffc7964cd760f1763be767` — deployed 2024-04-03 11:45:17+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x6fc2c9f904a98caeeef6aaba6de625b5698f3f08` — deployed 2023-03-23 10:41:38+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x01e42ce7cdcb7a2eaae0bb8bdce52f0bbb63f139` — deployed 2023-01-09 13:41:44+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x9f46a7f7afd5a595c782e57b5dae1fcc01bff18d` — deployed 2023-01-09 13:31:48+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x697c97a37bc00c2306f2b08ca14f3d55db6ffccd` — deployed 2023-01-09 13:53:21+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x697c97a37bc00c2306f2b08ca14f3d55db6ffccd` — deployed 2024-04-22 13:09:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-WooFiEarn-v1.0.pdf | WooSuperChargerVault | ambiguous — not counted | WooSuperChargerVault (alternative) `0xba452bcc4bc52af2fe1190e7e1dbe267ad1c2d08` — deployed 2022-11-08 09:43:40+03 — liveness: live (code_present_context)<br>WooSuperChargerVault (alternative) `0x5a6b073e090388c909b9f3bf9d9323be908cad62` — deployed 2022-11-08 09:48:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
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
| WOOFI Stake - Zellic Audit Report.pdf | WooLendingManager | ambiguous — not counted | WooLendingManager (alternative) `0xc8ec7f48a82a07d95110ff26faacde9757dd9dc7` — deployed 2023-01-09 13:49:29+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0xfeecedbc3c292db79347473a2b976a463c3ac2d6` — deployed 2023-11-08 11:11:51+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x5c7ff24fa7af62bc25ad6747a6193183b4bb7bc5` — deployed 2022-11-08 09:43:55+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x385e063dea8908d06be024de85da5b8da4b10f73` — deployed 2023-01-09 13:43:51+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x79a5453865a39f67d3ffc7964cd760f1763be767` — deployed 2024-04-03 11:45:17+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x6fc2c9f904a98caeeef6aaba6de625b5698f3f08` — deployed 2023-03-23 10:41:38+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x01e42ce7cdcb7a2eaae0bb8bdce52f0bbb63f139` — deployed 2023-01-09 13:41:44+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x9f46a7f7afd5a595c782e57b5dae1fcc01bff18d` — deployed 2023-01-09 13:31:48+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x697c97a37bc00c2306f2b08ca14f3d55db6ffccd` — deployed 2023-01-09 13:53:21+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x697c97a37bc00c2306f2b08ca14f3d55db6ffccd` — deployed 2024-04-22 13:09:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFI Stake - Zellic Audit Report.pdf | WooStakingCompounder | own contract | WooStakingCompounder (selected) `0x63a015b5e305edca94b9b0c27461547b3f4ea1e3` — deployed 2023-05-20 03:46:07+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WOOFI Stake - Zellic Audit Report.pdf | WooStakingController | own contract | WooStakingController (selected) `0x93e63fc2146d596afe4583d03cfe496ffcad5a04` — deployed 2023-05-20 03:44:50+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WOOFI Stake - Zellic Audit Report.pdf | WooStakingLocal | own contract | WooStakingLocal (selected) `0x2cfa72e7f58dc82b990529450ffa83791db7d8e2` — deployed 2023-05-20 03:44:15+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WOOFI Stake - Zellic Audit Report.pdf | WooStakingManager | own contract | WooStakingManager (selected) `0xa9e245c1fa7e17263cc7c896488a3da8072924fb` — deployed 2023-05-20 03:43:45+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WOOFI Stake - Zellic Audit Report.pdf | WooStakingProxy | ambiguous — not counted | WOOStakingProxy (alternative) `0xba91ffd8a2b9f68231eca6af51623b3433a89b13` — deployed 2023-05-11 17:07:56+03 — liveness: live (current_address_book_code)<br>WooStakingProxy (alternative) `0xba91ffd8a2b9f68231eca6af51623b3433a89b13` — deployed 2023-05-11 17:13:28+03 — liveness: live (current_address_book_code)<br>WooStakingProxy (alternative) `0xba91ffd8a2b9f68231eca6af51623b3433a89b13` — deployed 2023-05-11 17:26:00+03 — liveness: live (current_address_book_code)<br>WooStakingProxy (alternative) `0x3bd96847c40de8b0f20da32568bd15462c1386e3` — deployed 2023-05-11 17:11:43+03 — liveness: live (current_address_book_code)<br>WooStakingProxy (alternative) `0xba91ffd8a2b9f68231eca6af51623b3433a89b13` — deployed 2023-05-15 08:00:59+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFI Stake - Zellic Audit Report.pdf | WooSuperChargerVaultV2 | own contract | WooSuperChargerVaultV2 (alternative) `0xa780432f495e5c6851fd7903fe49ad77c952f7d8` — deployed 2024-04-03 11:45:09+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x866810349b2e28e411669911bb0babb06cc60625` — deployed 2023-01-06 08:48:20+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x11b29ae3037f4526e4aa56952318e0d01ada836a` — deployed 2023-01-06 08:58:16+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x5cb9ba4a6f05c4125d61172e1b2c1dbe3afb3158` — deployed 2023-04-04 09:37:42+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0xedbb74da05d58b22f07184bb79ed9124791799ac` — deployed 2023-01-04 14:08:25+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x44df096d2600c6a6db77899db3de3aecff746cb8` — deployed 2024-04-25 10:23:21+03 — liveness: live (current_address_book_code)<br>WooSuperChargerVaultV2 (alternative) `0x7f3f2a499c00c2d7018300f99a232896fd295bb1` — deployed 2023-03-23 10:41:19+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0xd2fdab19b94b59c5f0e75dd9813365df815b56b1` — deployed 2023-11-08 11:11:41+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x1cd7b33faf4f172146bcbb841c7addc96802e6c4` — deployed 2023-01-06 09:08:57+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0xb772122c4a37fe1754b46ab1799b909351e8cb43` — deployed 2024-04-25 10:17:11+03 — liveness: live (current_address_book_code)<br>WooSuperChargerVaultV2 (alternative) `0x7eb8d4ccfdbd9df8d3520e9c5b5edf6a5cbe4cad` — deployed 2023-01-05 10:31:26+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (alternative) `0x1109e03516eb25eab2150d0b274b8d4f5f3cf549` — deployed 2024-04-22 13:09:10+03 — liveness: live (code_present_context)<br>WooSuperChargerVaultV2 (selected) `0x8c603050d7a913b6f63836e07ebf385a4a5736e7` — deployed 2024-09-23 10:02:51+03 — liveness: live (current_address_book_code)<br>WooSuperChargerVaultV2 (alternative) `0x9dd5dd86b978f17628f01307a83347d9ec9b0699` — deployed 2023-01-04 12:28:02+03 — liveness: live (code_present_context) | deployment-date disambiguation: 2024-09-23 was 38d from audit; next candidate 113d; normalized_full_corpus:project_anchor:matcher_anchor | yes |
| WOOFI Stake - Zellic Audit Report.pdf | WooWithdrawManagerV2 | ambiguous — not counted | WooWithdrawManagerV2 (alternative) `0x3fe2c827ff572b8fe03b7d16695c88f21448b3b9` — deployed 2024-04-22 13:09:34+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0x1bb2ebecfbb4f78d83fb0a21cb415383779602c9` — deployed 2023-01-06 08:58:45+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0x382a9b0bc5d29e96c3a0b81ce9c64d6c8f150efb` — deployed 2023-01-04 12:34:00+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0xbfe3d22b223909a06469854e7af374ab449f09ac` — deployed 2023-03-23 10:42:02+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0xd05b953cfd75426711a904f76eb3241bad5d03ac` — deployed 2023-11-08 11:12:00+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0xe76c97897a9c3f8aaafc3fe86457fe460553d3fe` — deployed 2024-04-03 11:45:24+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0x7f78213da92552d00bd676466ab2ef8a9287fd4c` — deployed 2023-01-04 14:09:05+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0x755e4af9e77a91999693947b02975c584d1b56f6` — deployed 2023-01-06 08:48:50+03 — liveness: live (code_present_context)<br>WooWithdrawManagerV2 (alternative) `0xa429b468d222bb31ff256f3d08ddc0a2d8a59664` — deployed 2023-01-06 09:09:32+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFi Swap - Zellic Audit Report.pdf | WooPPV2 | ambiguous — not counted | WooPPV2 (alternative) `0xe656d70bc3550e3eee9de7dc79367a44fd13d975` — deployed 2024-05-08 18:03:23+03 — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-20 07:59:29+03 — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-07-01 16:34:00+03 — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-19 18:22:49+03 — liveness: live (code_present_context)<br>WooPPv2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-20 06:36:53+03 — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-11-27 13:38:37+03 — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-20 08:05:16+03 — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-18 10:16:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFi Swap - Zellic Audit Report.pdf | WooRouterV2 | ambiguous — not counted | WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 14:58:03+03 — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 13:58:36+03 — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 15:21:25+03 — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 15:19:47+03 — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2025-07-02 09:13:00+03 — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 15:29:42+03 — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 13:56:44+03 — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 14:06:08+03 — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2025-03-18 10:45:49+03 — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2025-11-27 16:47:20+03 — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x09873bfeca34f1acd0a7e55cda591f05d8a75369` — deployed 2024-02-26 15:46:17+03 — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 14:10:40+03 — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-12-26 16:03:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFi Swap - Zellic Audit Report.pdf | WooCrossChainRouterV4 | unmatched — not counted | — | listed in scope table | no |
| WOOFi Swap - Zellic Audit Report.pdf | WooracleV2_2 | ambiguous — not counted | WooracleV2_2 (alternative) `0x2a8ede62d0717c8c92b88639ecf603fdf31a8428` — deployed 2024-04-22 11:04:17+03 — liveness: live (current_address_book_code)<br>WooracleV2_2 (alternative) `0xcf4ea1688bc23dd93d933eda535f8b72fc8934ec` — deployed 2024-04-10 19:50:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFI_Swap_Audit_Report.pdf | WooPPV2 | ambiguous — not counted | WooPPV2 (alternative) `0xe656d70bc3550e3eee9de7dc79367a44fd13d975` — deployed 2024-05-08 18:03:23+03 — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-20 07:59:29+03 — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-07-01 16:34:00+03 — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-19 18:22:49+03 — liveness: live (code_present_context)<br>WooPPv2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-20 06:36:53+03 — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-11-27 13:38:37+03 — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-20 08:05:16+03 — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-18 10:16:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFI_Swap_Audit_Report.pdf | WooracleV2_2 | ambiguous — not counted | WooracleV2_2 (alternative) `0x2a8ede62d0717c8c92b88639ecf603fdf31a8428` — deployed 2024-04-22 11:04:17+03 — liveness: live (current_address_book_code)<br>WooracleV2_2 (alternative) `0xcf4ea1688bc23dd93d933eda535f8b72fc8934ec` — deployed 2024-04-10 19:50:21+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| WOOFI_Swap_Audit_Report.pdf | WooCrossChainRouterV4 | unmatched — not counted | — | Referenced in findings M-6, M-7, M-8. | no |
| WOOFI_Swap_Audit_Report.pdf | WooRouterV2 | ambiguous — not counted | WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 14:58:03+03 — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 13:58:36+03 — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 15:21:25+03 — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 15:19:47+03 — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2025-07-02 09:13:00+03 — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 15:29:42+03 — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 13:56:44+03 — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 14:06:08+03 — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2025-03-18 10:45:49+03 — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2025-11-27 16:47:20+03 — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x09873bfeca34f1acd0a7e55cda591f05d8a75369` — deployed 2024-02-26 15:46:17+03 — liveness: live (current_address_book_code)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 14:10:40+03 — liveness: live (code_present_context)<br>WooRouterV2 (alternative) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-12-26 16:03:09+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| REP-Woofi--Addendum__final-20230508T165040Z (1).pdf | MpRewarder | own contract | MpRewarder (selected) `0xa74bb3643da439e89010743909d0493abca743d7` — deployed 2023-05-23 18:13:35+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| REP-Woofi--Addendum__final-20230508T165040Z (1).pdf | RewardBooster | own contract | RewardBooster (selected) `0xf26eb53367066cde380cd06a5d1469985b92747b` — deployed 2024-07-09 11:15:31+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |
| REP-Woofi--Addendum__final-20230508T165040Z (1).pdf | SimpleRewarder | unmatched — not counted | — | listed in scope table | no |
| REP-WOOFi--__final-20221012T162347Z (1).pdf | WooPPV2 | ambiguous — not counted | WooPPV2 (alternative) `0xe656d70bc3550e3eee9de7dc79367a44fd13d975` — deployed 2024-05-08 18:03:23+03 — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-20 07:59:29+03 — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-07-01 16:34:00+03 — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-19 18:22:49+03 — liveness: live (code_present_context)<br>WooPPv2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-20 06:36:53+03 — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-11-27 13:38:37+03 — liveness: live (current_address_book_code)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-20 08:05:16+03 — liveness: live (code_present_context)<br>WooPPV2 (alternative) `0x5520385bfcf07ec87c4c53a7d8d65595dff69fa4` — deployed 2025-03-18 10:16:55+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| REP-WOOFi--__final-20221012T162347Z (1).pdf | WooracleV2 | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-WOOFi__final-20220705T091805Z (1).pdf | WooLendingManager | ambiguous — not counted | WooLendingManager (alternative) `0xc8ec7f48a82a07d95110ff26faacde9757dd9dc7` — deployed 2023-01-09 13:49:29+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0xfeecedbc3c292db79347473a2b976a463c3ac2d6` — deployed 2023-11-08 11:11:51+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x5c7ff24fa7af62bc25ad6747a6193183b4bb7bc5` — deployed 2022-11-08 09:43:55+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x385e063dea8908d06be024de85da5b8da4b10f73` — deployed 2023-01-09 13:43:51+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x79a5453865a39f67d3ffc7964cd760f1763be767` — deployed 2024-04-03 11:45:17+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x6fc2c9f904a98caeeef6aaba6de625b5698f3f08` — deployed 2023-03-23 10:41:38+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x01e42ce7cdcb7a2eaae0bb8bdce52f0bbb63f139` — deployed 2023-01-09 13:41:44+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x9f46a7f7afd5a595c782e57b5dae1fcc01bff18d` — deployed 2023-01-09 13:31:48+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x697c97a37bc00c2306f2b08ca14f3d55db6ffccd` — deployed 2023-01-09 13:53:21+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x697c97a37bc00c2306f2b08ca14f3d55db6ffccd` — deployed 2024-04-22 13:09:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| REP-WOOFi__final-20220705T091805Z (1).pdf | WooSuperChargerVault | ambiguous — not counted | WooSuperChargerVault (alternative) `0xba452bcc4bc52af2fe1190e7e1dbe267ad1c2d08` — deployed 2022-11-08 09:43:40+03 — liveness: live (code_present_context)<br>WooSuperChargerVault (alternative) `0x5a6b073e090388c909b9f3bf9d9323be908cad62` — deployed 2022-11-08 09:48:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| REP-WOOFi__final-20220705T091805Z (1).pdf | WooWithdrawManager | ambiguous — not counted | WooWithdrawManager (alternative) `0xe77adf3936f70a2ed44f26ced01d26c1430ead6a` — deployed 2022-11-08 09:44:09+03 — liveness: live (code_present_context)<br>WooWithdrawManager (alternative) `0x7de3fce3de3cdc34595eed74773cd47b84bca340` — deployed 2022-11-08 09:48:56+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-WooFiEarn-v1.0 (1).pdf | WooLendingManager | ambiguous — not counted | WooLendingManager (alternative) `0xc8ec7f48a82a07d95110ff26faacde9757dd9dc7` — deployed 2023-01-09 13:49:29+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0xfeecedbc3c292db79347473a2b976a463c3ac2d6` — deployed 2023-11-08 11:11:51+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x5c7ff24fa7af62bc25ad6747a6193183b4bb7bc5` — deployed 2022-11-08 09:43:55+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x385e063dea8908d06be024de85da5b8da4b10f73` — deployed 2023-01-09 13:43:51+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x79a5453865a39f67d3ffc7964cd760f1763be767` — deployed 2024-04-03 11:45:17+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x6fc2c9f904a98caeeef6aaba6de625b5698f3f08` — deployed 2023-03-23 10:41:38+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x01e42ce7cdcb7a2eaae0bb8bdce52f0bbb63f139` — deployed 2023-01-09 13:41:44+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x9f46a7f7afd5a595c782e57b5dae1fcc01bff18d` — deployed 2023-01-09 13:31:48+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x697c97a37bc00c2306f2b08ca14f3d55db6ffccd` — deployed 2023-01-09 13:53:21+03 — liveness: live (code_present_context)<br>WooLendingManager (alternative) `0x697c97a37bc00c2306f2b08ca14f3d55db6ffccd` — deployed 2024-04-22 13:09:20+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| PeckShield-Audit-Report-WooFiEarn-v1.0 (1).pdf | WooSuperChargerVault | ambiguous — not counted | WooSuperChargerVault (alternative) `0xba452bcc4bc52af2fe1190e7e1dbe267ad1c2d08` — deployed 2022-11-08 09:43:40+03 — liveness: live (code_present_context)<br>WooSuperChargerVault (alternative) `0x5a6b073e090388c909b9f3bf9d9323be908cad62` — deployed 2022-11-08 09:48:28+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| REP-WOOFi-2022-02-07 (1).pdf | BaseStrategy | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-WOOFi-2022-02-07 (1).pdf | StrategyCake | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-WOOFi-2022-02-07 (1).pdf | StrategyLP | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-WOOFi-2022-02-07 (1).pdf | Vault | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-WOOFi-2021-12-16 (1).pdf | WooRebateManager | ambiguous — not counted | WooRebateManager (alternative) `0x7616614084e040028d6a61c0f3a9699c121a6500` — deployed 2024-04-22 10:58:55+03 — liveness: live (code_present_context)<br>WooRebateManager (alternative) `0x7616614084e040028d6a61c0f3a9699c121a6500` — deployed 2024-04-28 09:06:06+03 — liveness: live (current_address_book_code)<br>WooRebateManager (alternative) `0x7616614084e040028d6a61c0f3a9699c121a6500` — deployed 2024-04-03 09:12:21+03 — liveness: live (code_present_context)<br>WooRebateManager (alternative) `0x7616614084e040028d6a61c0f3a9699c121a6500` — deployed 2025-07-01 16:54:00+03 — liveness: live (current_address_book_code)<br>WooRebateManager (alternative) `0x7616614084e040028d6a61c0f3a9699c121a6500` — deployed 2024-04-24 16:40:01+03 — liveness: live (code_present_context)<br>WooRebateManager (alternative) `0x66c9467ec052fb258e24dcce87e93a0002966014` — deployed 2024-05-08 18:09:05+03 — liveness: live (current_address_book_code)<br>WooRebateManager (alternative) `0x7616614084e040028d6a61c0f3a9699c121a6500` — deployed 2024-04-22 10:41:13+03 — liveness: live (code_present_context)<br>WooRebateManager (alternative) `0x7616614084e040028d6a61c0f3a9699c121a6500` — deployed 2024-12-18 12:07:34+03 — liveness: live (code_present_context)<br>WooRebateManager (alternative) `0x7616614084e040028d6a61c0f3a9699c121a6500` — deployed 2025-03-18 10:29:34+03 — liveness: live (current_address_book_code)<br>WooRebateManager (alternative) `0x7616614084e040028d6a61c0f3a9699c121a6500` — deployed 2025-11-27 13:17:37+03 — liveness: live (current_address_book_code)<br>WooRebateManager (alternative) `0x7616614084e040028d6a61c0f3a9699c121a6500` — deployed 2024-05-16 06:39:54+03 — liveness: live (code_present_context)<br>WooRebateManager (alternative) `0x7616614084e040028d6a61c0f3a9699c121a6500` — deployed 2024-05-08 14:17:42+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| REP-WOOFi-2021-12-16 (1).pdf | WooStakingVault | ambiguous — not counted | WooStakingVault (alternative) `0xcd1b9810872aec66d450c761e93638fb9fe09db0` — deployed 2022-03-03 10:32:03+03 — liveness: live (code_present_context)<br>WooStakingVault (alternative) `0x9321785d257b3f0ef7ff75436a87141c683dc99d` — deployed 2022-10-17 11:07:10+03 — liveness: live (code_present_context)<br>WooStakingVault (alternative) `0x9bcf8b0b62f220f3900e2dc42deb85c3f79b405b` — deployed 2022-06-22 11:22:32+03 — liveness: live (code_present_context) | normalized_full_corpus:project_anchor:matcher_anchor | no |
| REP-WOOFi-2021-12-16 (1).pdf | WooVaultManager | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-WOOFi-Swap-2021-10-25 (1).pdf | RewardManager | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-WOOFi-Swap-2021-10-25 (1).pdf | WooPP | unmatched — not counted | — | listed in Audit Scope table | no |
| REP-WOOFi-Swap-2021-10-25 (1).pdf | WooRouter | own contract | WooRouter (selected) `0x4c4af8dbc524681930a27b2f1af5bcc8062e6fb7` — deployed 2024-02-26 15:12:47+03 — liveness: live (current_address_book_code) | normalized_full_corpus:project_anchor:matcher_anchor | yes |

## Coverage Gaps

Verified + unaudited native implementations ranked by TVL:

| Chain | Address | Name | Role | TVL USD | Risk Note |
|---|---|---|---|---:|---|
| arbitrum | `0x968d3b4faa87864ab19cf2982510b60c2d416b22` | AirdropDistributor | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x2ebca56e00e11a4b1f08da6eb9bc97c4bf3ee90f` | NFTBoosterV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x927f8c16c9e802cb3012989fab79eb8c098d4234` | RewardCampaignManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd14a997308f9e7514a8fea835064d596cdcaa99e` | WooAccessManager | governance | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x01e42ce7cdcb7a2eaae0bb8bdce52f0bbb63f139` | WooLendingManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x697c97a37bc00c2306f2b08ca14f3d55db6ffccd` | WooLendingManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x9f46a7f7afd5a595c782e57b5dae1fcc01bff18d` | WooLendingManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5c7ff24fa7af62bc25ad6747a6193183b4bb7bc5` | WooLendingManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x6fc2c9f904a98caeeef6aaba6de625b5698f3f08` | WooLendingManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x79a5453865a39f67d3ffc7964cd760f1763be767` | WooLendingManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xfeecedbc3c292db79347473a2b976a463c3ac2d6` | WooLendingManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x385e063dea8908d06be024de85da5b8da4b10f73` | WooLendingManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x697c97a37bc00c2306f2b08ca14f3d55db6ffccd` | WooLendingManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xc8ec7f48a82a07d95110ff26faacde9757dd9dc7` | WooLendingManager | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x2a8ede62d0717c8c92b88639ecf603fdf31a8428` | WooracleV2_2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xcf4ea1688bc23dd93d933eda535f8b72fc8934ec` | WooracleV2_2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| ethereum | `0xba91ffd8a2b9f68231eca6af51623b3433a89b13` | WooStakingProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| optimism | `0xba91ffd8a2b9f68231eca6af51623b3433a89b13` | WooStakingProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xba91ffd8a2b9f68231eca6af51623b3433a89b13` | WooStakingProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x3bd96847c40de8b0f20da32568bd15462c1386e3` | WooStakingProxy | proxy | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x9bcf8b0b62f220f3900e2dc42deb85c3f79b405b` | WooStakingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x9321785d257b3f0ef7ff75436a87141c683dc99d` | WooStakingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xcd1b9810872aec66d450c761e93638fb9fe09db0` | WooStakingVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x5a6b073e090388c909b9f3bf9d9323be908cad62` | WooSuperChargerVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xba452bcc4bc52af2fe1190e7e1dbe267ad1c2d08` | WooSuperChargerVault | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x5cb9ba4a6f05c4125d61172e1b2c1dbe3afb3158` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| bsc | `0x7eb8d4ccfdbd9df8d3520e9c5b5edf6a5cbe4cad` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x1109e03516eb25eab2150d0b274b8d4f5f3cf549` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x9dd5dd86b978f17628f01307a83347d9ec9b0699` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0xedbb74da05d58b22f07184bb79ed9124791799ac` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0x44df096d2600c6a6db77899db3de3aecff746cb8` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| base | `0xb772122c4a37fe1754b46ab1799b909351e8cb43` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7f3f2a499c00c2d7018300f99a232896fd295bb1` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xa780432f495e5c6851fd7903fe49ad77c952f7d8` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd2fdab19b94b59c5f0e75dd9813365df815b56b1` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x11b29ae3037f4526e4aa56952318e0d01ada836a` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x1cd7b33faf4f172146bcbb841c7addc96802e6c4` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x866810349b2e28e411669911bb0babb06cc60625` | WooSuperChargerVaultV2 | core_logic | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0x7de3fce3de3cdc34595eed74773cd47b84bca340` | WooWithdrawManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe77adf3936f70a2ed44f26ced01d26c1430ead6a` | WooWithdrawManager | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x382a9b0bc5d29e96c3a0b81ce9c64d6c8f150efb` | WooWithdrawManagerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x3fe2c827ff572b8fe03b7d16695c88f21448b3b9` | WooWithdrawManagerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| polygon | `0x7f78213da92552d00bd676466ab2ef8a9287fd4c` | WooWithdrawManagerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xbfe3d22b223909a06469854e7af374ab449f09ac` | WooWithdrawManagerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xd05b953cfd75426711a904f76eb3241bad5d03ac` | WooWithdrawManagerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| arbitrum | `0xe76c97897a9c3f8aaafc3fe86457fe460553d3fe` | WooWithdrawManagerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x1bb2ebecfbb4f78d83fb0a21cb415383779602c9` | WooWithdrawManagerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0x755e4af9e77a91999693947b02975c584d1b56f6` | WooWithdrawManagerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |
| avalanche | `0xa429b468d222bb31ff256f3d08ddc0a2d8a59664` | WooWithdrawManagerV2 | operational_periphery | n/a | Verified native implementation with no TVL datapoint and no extraction_exact/inherited_name_remap audit coverage |

## Origin Classification

| Origin Kind | Contracts |
|---|---:|
| native | 77 |
| upstream | 0 |
| standard_library | 0 |
| needs_review | 1635 |

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
